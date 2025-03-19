/*
 Navicat Premium Data Transfer

 Source Server         : 3307
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3307
 Source Schema         : springboot0f6k7z1l

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 19/03/2025 18:06:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2024-04-01 11:53:57', '系统介绍', 'ABOUT US', '<p>本系统主要从事心血管流行病学及人群防治研究，主要职责为：分析我国心血管病及相关慢性病患病率及其危险因素和防治现状；建立国家重要心血管病及其环境和行为危险因素的人群监测和随访信息系统；动态监测、分析与预测我国心血管病发病和死亡、疾病负担、危险因素流行和发展趋势；探索心血管疾病成因及其相关危险因素，探寻防治最佳证据，为国民心血管健康风险评估提供流行病学数据支持。这是一款针对中国人心脑血管病发病风险进行评估和健康指导的实用工具。本工具能够根据用户输入的年龄、性别、血压等信息，准确评估个体未来发生冠心病、脑卒中等心脑血管病的风险，给出发病风险（%），并告知用户其心脑血管病危险的高低，有助于识别心脑血管病高危个体，并提早采取生活方式干预或临床治疗。</p><p>本工具适用于20岁及以上、无心脑血管病史的人群，根据用户信息，提供基本的健康指导，预防心脑血管病的发生。</p>', 'upload/1742370743839.png', 'upload/1742371011292.jpg', 'upload/1742371016049.png');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1742371054056.png', NULL);
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1742371065320.jpg', NULL);
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1742370693989.jpg', NULL);

-- ----------------------------
-- Table structure for discusskepuwenzhang
-- ----------------------------
DROP TABLE IF EXISTS `discusskepuwenzhang`;
CREATE TABLE `discusskepuwenzhang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科普文章评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusskepuwenzhang
-- ----------------------------
INSERT INTO `discusskepuwenzhang` VALUES (1, '2024-04-02 00:19:16', 98, 1711987865374, 'upload/1713536710285.JPG', 'ccc', '<p>高血压的典型症状包括头痛、疲倦或不安、心律失常、心悸耳鸣等。</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (2, '2024-04-03 00:01:13', 98, 13, 'upload/huanzhe_touxiang3.jpg', 'andy', '<p>早期高血压症状很难察觉出的，只能通过血压计测试血压</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (3, '2024-04-08 22:12:15', 91, 1711987865374, 'upload/1713536710285.JPG', 'ccc', '<p>已学习到了！</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (4, '2024-05-08 12:06:04', 98, 15, 'upload/huanzhe_touxiang5.jpg', 'ldj', '<p>已学习，打卡！！！！</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (5, '2024-05-08 12:15:31', 98, 12, 'upload/huanzhe_touxiang2.jpg', 'mali', '<p>已学习</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (6, '2024-05-08 12:15:46', 95, 12, 'upload/huanzhe_touxiang2.jpg', 'mali', '<p>已学习</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (7, '2024-05-08 12:15:57', 97, 12, 'upload/huanzhe_touxiang2.jpg', 'mali', '<p>已学习</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (8, '2024-05-08 12:19:05', 98, 13, 'upload/1713536722469.jpg', 'andy', '<p>已学习，受益匪浅!!!!!!!!!</p>', '');
INSERT INTO `discusskepuwenzhang` VALUES (9, '2024-05-08 13:00:59', 96, 1711987865374, 'upload/1713536710285.JPG', '', '<p>已学习！！！！！！</p>', '');

-- ----------------------------
-- Table structure for fengxianjieguo_copy1
-- ----------------------------
DROP TABLE IF EXISTS `fengxianjieguo_copy1`;
CREATE TABLE `fengxianjieguo_copy1`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shousuoya` double DEFAULT NULL COMMENT '收缩压',
  `shengao` double DEFAULT NULL COMMENT '身高(m)',
  `tizhong` double DEFAULT NULL COMMENT '体重(kg)',
  `bmi` double DEFAULT NULL COMMENT 'bmi',
  `xueqingdanguchun` double DEFAULT NULL COMMENT '血清胆固醇',
  `shifouxiyan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否吸烟',
  `shifouhejiu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否喝酒',
  `weixianzhi` double NOT NULL COMMENT '危险值',
  `jieguo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结果',
  `jieguoshijian` date DEFAULT NULL COMMENT '结果时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '风险结果' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fengxianjieguo_copy1
-- ----------------------------
INSERT INTO `fengxianjieguo_copy1` VALUES (142, '2024-04-01 11:53:56', '患者账号2', '患者姓名2', '性别2', 2, 2, 2, 2, 2, 2, '是否吸烟2', '是否喝酒2', 10, '低危风险', '2024-04-01', 2, 2);
INSERT INTO `fengxianjieguo_copy1` VALUES (143, '2024-04-01 11:53:56', '患者账号3', '患者姓名3', '性别3', 3, 3, 3, 3, 3, 3, '是否吸烟3', '是否喝酒3', 3, '低危风险', '2024-04-01', 3, 3);
INSERT INTO `fengxianjieguo_copy1` VALUES (144, '2024-04-01 11:53:56', '患者账号4', '患者姓名4', '性别4', 4, 4, 4, 4, 4, 4, '是否吸烟4', '是否喝酒4', 4, '低危风险', '2024-04-01', 4, 4);
INSERT INTO `fengxianjieguo_copy1` VALUES (145, '2024-04-01 11:53:56', '患者账号5', '患者姓名5', '性别5', 5, 5, 5, 5, 5, 5, '是否吸烟5', '是否喝酒5', 5, '低危风险', '2024-04-01', 5, 5);
INSERT INTO `fengxianjieguo_copy1` VALUES (146, '2024-04-01 11:53:56', '患者账号6', '患者姓名6', '性别6', 6, 6, 6, 6, 6, 6, '是否吸烟6', '是否喝酒6', 6, '低危风险', '2024-04-01', 6, 6);
INSERT INTO `fengxianjieguo_copy1` VALUES (147, '2024-04-01 11:53:56', '患者账号7', '患者姓名7', '性别7', 7, 7, 7, 7, 7, 7, '是否吸烟7', '是否喝酒7', 7, '低危风险', '2024-04-01', 7, 7);
INSERT INTO `fengxianjieguo_copy1` VALUES (148, '2024-04-01 11:53:56', '患者账号8', '患者姓名8', '性别8', 8, 8, 8, 8, 8, 8, '是否吸烟8', '是否喝酒8', 8, '低危风险', '2024-04-01', 8, 8);
INSERT INTO `fengxianjieguo_copy1` VALUES (149, '2024-04-01 23:58:14', 'ccc', '陈晨臣', '男', 23, 134, 1.72, 65, 21.97, 20, '否', '是', 9.7, '低危风险', '2024-04-01', 1, 131);
INSERT INTO `fengxianjieguo_copy1` VALUES (150, '2024-04-02 11:02:01', 'ccc', '陈晨臣', '男', 25, 135, 1.72, 66, 22.31, 50, '否', '是', 9.8, '低危风险', '2024-04-02', 1, 138);
INSERT INTO `fengxianjieguo_copy1` VALUES (151, '2024-04-18 23:56:25', 'ccc', '陈晨臣', '男', 25, 135, 1.72, 65, 21.97, 50, '否', '否', 0, '低危风险', '2024-04-18', 1, 139);
INSERT INTO `fengxianjieguo_copy1` VALUES (152, '2024-04-18 23:56:44', '患者账号2', '患者姓名2', '男', 2, 2, 2, 2, 2, 2, '是', '是', 0, '低危风险', '2024-04-18', 1, 132);

-- ----------------------------
-- Table structure for fengxianpinggu
-- ----------------------------
DROP TABLE IF EXISTS `fengxianpinggu`;
CREATE TABLE `fengxianpinggu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shousuoya` double DEFAULT NULL COMMENT '收缩压',
  `shengao` double DEFAULT NULL COMMENT '身高(m)',
  `tizhong` double DEFAULT NULL COMMENT '体重(kg)',
  `bmi` double DEFAULT NULL COMMENT 'bmi',
  `xueqingdanguchun` double DEFAULT NULL COMMENT '血清胆固醇',
  `shifouxiyan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否吸烟',
  `shifouhejiu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否喝酒',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `result` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '风险结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 146 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '风险评估' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fengxianpinggu
-- ----------------------------
INSERT INTO `fengxianpinggu` VALUES (131, '2024-04-01 11:53:56', '患者账号1', '患者姓名1', '男', 50, 134, 1.72, 65, 21.97, 20, '否', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (132, '2024-04-01 11:53:56', '患者账号2', '患者姓名2', '男', 2, 2, 2, 2, 2, 2, '是', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (133, '2024-04-01 11:53:56', '患者账号3', '患者姓名3', '男', 3, 3, 3, 3, 3, 3, '是', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (134, '2024-04-01 11:53:56', '患者账号4', '患者姓名4', '男', 4, 4, 4, 4, 4, 4, '是', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (135, '2024-04-01 11:53:56', '患者账号5', '患者姓名5', '男', 5, 5, 5, 5, 5, 5, '是', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (136, '2024-04-01 11:53:56', '患者账号6', '患者姓名6', '男', 6, 6, 6, 6, 6, 6, '是', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (137, '2024-04-01 11:53:56', '患者账号7', '患者姓名7', '男', 7, 7, 7, 7, 7, 7, '是', '是', '2024-04-01', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (138, '2024-04-02 10:58:31', 'ccc', '陈晨臣', '男', 25, 135, 1.72, 66, 22.31, 50, '否', '是', '2024-04-02', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (139, '2024-04-17 22:30:58', 'ccc', '陈晨臣', '男', 25, 135, 1.72, 65, 21.97, 50, '否', '否', '2024-04-04', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (141, '2024-05-08 12:24:18', 'andy', '安迪', '', NULL, NULL, 1.58, 48, 19.23, NULL, '否', '否', '2024-05-08', '	 低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (142, '2024-05-08 12:47:42', 'andy', '安迪', '', NULL, NULL, 1.6, 60, 23.44, NULL, '否', '否', '2024-05-08', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (143, '2024-05-08 12:58:02', 'andy', '安迪', '', NULL, NULL, 1.6, 50, 19.53, NULL, '否', '否', '2024-05-08', '	 低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (144, '2024-05-08 14:14:07', 'ccc', '陈晨臣', '', NULL, NULL, 1.72, 64, 21.63, NULL, '否', '否', '2024-05-08', '低危，10年心血管病风险0.2%');
INSERT INTO `fengxianpinggu` VALUES (145, '2024-05-08 14:53:55', 'ccc', '陈晨臣', '', NULL, NULL, 1.72, 65, 21.97, NULL, '否', '否', '2024-05-08', '低危风险');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `istop` int(11) DEFAULT 0 COMMENT '是否置顶',
  `toptime` datetime(0) DEFAULT NULL COMMENT '置顶时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '患者论坛' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (151, '2022-07-23 12:53:49', '高血压危险因素', '<p><span class=\"ql-size-large\">1）高钠、低钾膳食：中国人普遍对钠敏感，人均食盐日摄入量显著高于推荐量，高盐饮食显著增加高血压患病风险。</span></p><p><span class=\"ql-size-large\"> 2）超重和肥胖：超重和肥胖者高血压发病风险是体重正常的 1.16～1.28 倍，随着内脏脂肪指数的增加，高血压患病风险增加，此外内脏型肥胖与代谢综合征密切相关，可导致糖、脂代谢异常。 3）吸烟、过量饮酒：吸烟有害健康，限制饮酒与高血压下降显著有关。</span></p><p><span class=\"ql-size-large\"> 4）长期精神紧张：精神紧张可激活交感神经从而使血压升高。</span></p><p><span class=\"ql-size-large\"> 5）其他危险因素：年龄、高血压家族史、缺乏体力活动、糖尿病以及血脂异常。</span></p>', 0, 1, 'ccc', 'upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg', '开放', 1, '2022-07-23 12:53:49');
INSERT INTO `forum` VALUES (152, '2024-04-01 11:53:57', '高血压常见症状', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(64, 64, 64);\">听说高血压前期临床表现各异。早期有些高血压患者并无特异性症状，有些则有头痛、头晕、恶心以及夜尿多、无力、发作性软瘫等。</span></p>', 0, 2, '玛丽', 'upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg', '开放', 0, '2024-04-01 11:53:57');
INSERT INTO `forum` VALUES (153, '2023-12-22 14:53:00', '高血压如何诊断的啊？？？', '<p>家人们，谁来科普下。救命~~~~~~~~~~~~~~~~~~</p>', 0, 3, '萨利', 'upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg', '开放', 0, '2023-12-22 14:53:00');
INSERT INTO `forum` VALUES (154, '2023-02-25 07:01:57', '如何治疗高血压？', '<p>高血压治疗的根本目标是控制血压，降低与高血压相关的心、脑、肾及血管并发症的发生和死亡风险。 高血压的治疗原则为根据患者血压和总体风险水平，建议改善生活方式，长期、规律的服用降压药物，同时干预并存的其他危险因素、靶器官损害和其他疾病。 其中，生活方式干预对降低血压和心血管危险因素的作用肯定。</p>', 0, 4, '麦克', 'upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg', '开放', 0, '2023-02-25 07:01:57');
INSERT INTO `forum` VALUES (160, '2024-04-01 13:01:01', NULL, '<p>听说晚期高血压患者常伴有心、脑、肾、眼底、大血管等靶器官损害。</p>', 152, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-04-02 13:01:01');
INSERT INTO `forum` VALUES (161, '2024-04-02 13:06:32', NULL, '<p>收缩压 ≥ 140 mmHg 和舒张压 &lt; 90 mmHg 为单纯性收缩期高血压。</p><p>诊室非同日 3 次血压 ≥ 140/90 mmHg、家庭血压平均值 ＜ 135/85 mmHg 时可诊断为白大衣高血压或白大衣性未控制高血压；</p><p>诊室非同日 3 次血压 ＜ 140/90 mmHg、家庭血压平均值 ≥ 135/85 mmHg 可诊断为隐匿性未控制高血压。</p>', 153, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-04-02 13:06:32');
INSERT INTO `forum` VALUES (162, '2024-04-02 13:11:28', '小程序好用不？', '<p>家人们，小程序使用有效果吗</p>', 0, 1711987865374, 'ccc', 'upload/1713536710285.JPG', '开放', 1, '2024-05-08 12:21:13');
INSERT INTO `forum` VALUES (163, '2024-04-02 23:33:41', NULL, '<p>养成良好生活习惯、少熬夜少喝酒多运动，很简单的</p>', 154, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-04-02 23:33:41');
INSERT INTO `forum` VALUES (164, '2024-04-02 23:33:41', NULL, '<p>养成良好生活习惯、少熬夜少喝酒多运动，很简单的</p>', 154, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-04-02 23:33:41');
INSERT INTO `forum` VALUES (165, '2024-04-02 23:59:27', NULL, '<p>我使用了一段时间觉得不错！！！</p>', 162, 13, 'andy', 'upload/huanzhe_touxiang3.jpg', NULL, 0, '2024-04-02 23:59:27');
INSERT INTO `forum` VALUES (166, '2024-04-02 23:59:54', NULL, '<p>是的，健康的生活方式可以干预</p>', 159, 13, 'andy', 'upload/huanzhe_touxiang3.jpg', NULL, 0, '2024-04-02 23:59:54');
INSERT INTO `forum` VALUES (167, '2024-04-03 00:00:32', NULL, '<p>听说是需要长期药物治疗＋健康的生活方式</p>', 154, 13, 'andy', 'upload/huanzhe_touxiang3.jpg', NULL, 0, '2024-04-03 00:00:32');
INSERT INTO `forum` VALUES (168, '2024-05-08 11:52:14', '111', '<p>1111</p>', 0, 1711987865374, 'ccc', NULL, '开放', 0, '2024-05-08 11:52:14');
INSERT INTO `forum` VALUES (169, '2024-05-08 12:06:37', NULL, '<p>健康的生活方式可以干预高血压治疗</p>', 151, 15, 'ldj', 'upload/huanzhe_touxiang5.jpg', NULL, 0, '2024-05-08 12:06:37');
INSERT INTO `forum` VALUES (170, '2024-05-08 12:11:00', NULL, '<p>支持支持</p>', 159, 15, 'ldj', 'upload/huanzhe_touxiang5.jpg', NULL, 0, '2024-05-08 12:11:00');
INSERT INTO `forum` VALUES (171, '2024-05-08 12:13:57', NULL, '<p>是的，因此需要养成健康的生活方式</p>', 151, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-05-08 12:13:57');
INSERT INTO `forum` VALUES (172, '2024-05-08 12:14:05', NULL, '<p>支持！！！</p>', 169, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-05-08 12:14:05');
INSERT INTO `forum` VALUES (173, '2024-05-08 12:14:43', NULL, '<p>认可认可！！！</p>', 169, 12, 'mali', 'upload/huanzhe_touxiang2.jpg', NULL, 0, '2024-05-08 12:14:43');
INSERT INTO `forum` VALUES (174, '2024-05-08 12:14:53', NULL, '<p>大家多学习交流啊</p>', 151, 12, 'mali', 'upload/huanzhe_touxiang2.jpg', NULL, 0, '2024-05-08 12:14:53');
INSERT INTO `forum` VALUES (175, '2024-05-08 12:15:11', NULL, '<p>哥们，你在干啥</p>', 168, 12, 'mali', 'upload/huanzhe_touxiang2.jpg', NULL, 0, '2024-05-08 12:15:11');
INSERT INTO `forum` VALUES (176, '2024-05-08 12:18:19', NULL, '<p>对的</p>', 163, 12, 'mali', 'upload/huanzhe_touxiang2.jpg', NULL, 0, '2024-05-08 12:18:19');
INSERT INTO `forum` VALUES (177, '2024-05-08 12:19:52', NULL, '<p>对的，我这个月打算改善下生活习惯</p>', 169, 13, 'andy', 'upload/1713536722469.jpg', NULL, 0, '2024-05-08 12:19:52');
INSERT INTO `forum` VALUES (178, '2024-05-08 12:20:18', NULL, '<p>大家多交流啊，我感觉能从学习到很多</p>', 151, 13, 'andy', 'upload/1713536722469.jpg', NULL, 0, '2024-05-08 12:20:18');
INSERT INTO `forum` VALUES (179, '2024-05-08 12:21:38', NULL, '<p>实用性不错！！</p>', 162, 13, 'andy', 'upload/1713536722469.jpg', NULL, 0, '2024-05-08 12:21:38');
INSERT INTO `forum` VALUES (180, '2024-05-08 14:56:22', NULL, '<p>支持</p>', 169, 1711987865374, 'ccc', 'upload/1713536710285.JPG', NULL, 0, '2024-05-08 14:56:22');

-- ----------------------------
-- Table structure for huanzhe
-- ----------------------------
DROP TABLE IF EXISTS `huanzhe`;
CREATE TABLE `huanzhe`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '患者账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `huanzheshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者手机',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信openid',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信昵称',
  `avatarurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `huanzhezhanghao`(`huanzhezhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711987865375 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '患者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huanzhe
-- ----------------------------
INSERT INTO `huanzhe` VALUES (12, '2024-04-01 11:53:55', 'mali', '123456', '玛丽', '440300199202020002', '女', 35, '18100001234', 'upload/huanzhe_touxiang2.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (13, '2024-04-01 11:53:55', 'andy', '123456', '安迪', '440300199303030003', '女', 33, '15190223344', 'upload/1742370552237.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (14, '2024-04-01 11:53:55', 'make', '123456', '麦克', '440300199404040004', '男', 45, '18099123456', 'upload/huanzhe_touxiang4.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (15, '2024-04-01 11:53:55', 'ldj', '123456', '李大军', '440300199505050005', '男', 56, '13156452020', 'upload/huanzhe_touxiang5.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (16, '2024-04-01 11:53:55', '患者账号6', '123456', '患者姓名6', '440300199606060006', '男', 6, '患者手机6', 'upload/huanzhe_touxiang6.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (17, '2024-04-01 11:53:55', '患者账号7', '123456', '患者姓名7', '440300199707070007', '男', 7, '患者手机7', 'upload/huanzhe_touxiang7.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (18, '2024-04-01 11:53:55', '患者账号8', '123456', '患者姓名8', '440300199808080008', '男', 8, '患者手机8', 'upload/huanzhe_touxiang8.jpg', '', '', '');
INSERT INTO `huanzhe` VALUES (1711987865374, '2024-04-02 00:11:05', 'ccc', '123', '陈晨臣', '450000200101011010', '男', 25, '1301234567', 'upload/1742370528665.jpg', 'olBYd5WjjYMh5I_mQqfvq4CoFc24', '微信用户', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132');

-- ----------------------------
-- Table structure for jiankangzhidao
-- ----------------------------
DROP TABLE IF EXISTS `jiankangzhidao`;
CREATE TABLE `jiankangzhidao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhidaobiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指导标题',
  `zhidaoleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '指导类型',
  `zhidaofangan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '指导方案',
  `zhidaojianyi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '指导建议',
  `zhidaotupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指导图片',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `zhidaoshijian` date DEFAULT NULL COMMENT '指导时间',
  `xueyamubiaozhi` double DEFAULT NULL COMMENT '血压目标值(mmHg)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健康指导' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiankangzhidao
-- ----------------------------
INSERT INTO `jiankangzhidao` VALUES (62, '2024-04-01 11:53:55', '指导标题2', '饮食', '指导方案2', '指导建议2', 'upload/jiankangzhidao_zhidaotupian2.jpg,upload/jiankangzhidao_zhidaotupian3.jpg,upload/jiankangzhidao_zhidaotupian4.jpg', '患者账号2', '患者姓名2', '医生工号2', '医生姓名2', '2024-04-01', 130);
INSERT INTO `jiankangzhidao` VALUES (63, '2024-04-01 11:53:55', '指导标题3', '饮食', '指导方案3', '指导建议3', 'upload/jiankangzhidao_zhidaotupian3.jpg,upload/jiankangzhidao_zhidaotupian4.jpg,upload/jiankangzhidao_zhidaotupian5.jpg', '患者账号3', '患者姓名3', '医生工号3', '医生姓名3', '2024-04-01', 130);
INSERT INTO `jiankangzhidao` VALUES (64, '2024-04-01 11:53:55', '指导标题4', '饮食', '指导方案4', '指导建议4', 'upload/jiankangzhidao_zhidaotupian4.jpg,upload/jiankangzhidao_zhidaotupian5.jpg,upload/jiankangzhidao_zhidaotupian6.jpg', '患者账号4', '患者姓名4', '医生工号4', '医生姓名4', '2024-04-01', 130);
INSERT INTO `jiankangzhidao` VALUES (65, '2024-04-01 11:53:55', '指导标题5', '饮食', '指导方案5', '指导建议5', 'upload/jiankangzhidao_zhidaotupian5.jpg,upload/jiankangzhidao_zhidaotupian6.jpg,upload/jiankangzhidao_zhidaotupian7.jpg', '患者账号5', '患者姓名5', '医生工号5', '医生姓名5', '2024-04-01', 5);
INSERT INTO `jiankangzhidao` VALUES (66, '2024-04-01 11:53:55', '指导标题6', '饮食', '指导方案6', '指导建议6', 'upload/jiankangzhidao_zhidaotupian6.jpg,upload/jiankangzhidao_zhidaotupian7.jpg,upload/jiankangzhidao_zhidaotupian8.jpg', '患者账号6', '患者姓名6', '医生工号6', '医生姓名6', '2024-04-01', 6);
INSERT INTO `jiankangzhidao` VALUES (67, '2024-04-01 11:53:55', '指导标题7', '饮食', '指导方案7', '指导建议7', 'upload/jiankangzhidao_zhidaotupian7.jpg,upload/jiankangzhidao_zhidaotupian8.jpg,upload/jiankangzhidao_zhidaotupian9.jpg', '患者账号7', '患者姓名7', '医生工号7', '医生姓名7', '2024-04-01', 7);
INSERT INTO `jiankangzhidao` VALUES (68, '2024-04-01 11:53:55', '指导标题8', '饮食', '指导方案8', '指导建议8', 'upload/jiankangzhidao_zhidaotupian8.jpg,upload/jiankangzhidao_zhidaotupian9.jpg,upload/jiankangzhidao_zhidaotupian10.jpg', '患者账号8', '患者姓名8', '医生工号8', '医生姓名8', '2024-04-01', 8);
INSERT INTO `jiankangzhidao` VALUES (69, '2024-04-02 11:32:19', '山药红枣粥', '饮食', '用法：每日早、晚食用', '原料：山药100克，红枣10枚，大米50克。\n制法：\n(1)山药洗净，刮去外皮，切碎捣成糜糊状。\n(2)红枣洗净，温水浸泡片刻，去核，与淘净的大米同入砂锅，加水煎熬成稠粥，粥将成时加入山药糊，拌匀，继续煨煮10分钟即可。', 'upload/1715065754545.png', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-03-30', 145);
INSERT INTO `jiankangzhidao` VALUES (70, '2024-04-02 11:35:38', '作息调整', '作息', '作息指导（作息调整）', '一天睡眠时间最好达到八小时（晚上7.5小时中午半小时）', 'upload/1742371275918.png', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-04-02', 130);
INSERT INTO `jiankangzhidao` VALUES (71, '2024-04-02 11:45:07', '跑步', '运动', '跑步（运动指导）', '17:00慢跑10分钟间歇10分钟慢跑10分钟\n17:30拉伸肌肉\n18:00可以用泡沫滚轴或者其他按摩工具在睡前按摩。', 'upload/1715053859021.png', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-04-01', 135);
INSERT INTO `jiankangzhidao` VALUES (72, '2024-04-02 11:47:06', '情绪指导', '情绪', '放松', '每隔一小时放松10分钟出门走走，缓解内心焦躁心情', 'upload/1742371292344.png', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-04-02', 130);
INSERT INTO `jiankangzhidao` VALUES (73, '2024-05-08 14:57:24', '跑步', '运动', '运动', '每天半小时', 'upload/1742371265699.png', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-05-08', 0);

-- ----------------------------
-- Table structure for jiankangzhidaojianhu
-- ----------------------------
DROP TABLE IF EXISTS `jiankangzhidaojianhu`;
CREATE TABLE `jiankangzhidaojianhu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `yinshixiguan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '饮食习惯',
  `yundongjiankang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '运动健康',
  `zuoxixiguan` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '作息习惯',
  `qingxu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '情绪',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `zuijintupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '最近图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健康指导监护' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiankangzhidaojianhu
-- ----------------------------
INSERT INTO `jiankangzhidaojianhu` VALUES (112, '2024-04-01 11:53:56', '患者账号2', '患者姓名2', '医生工号2', '医生姓名2', '饮食习惯2', '运动健康2', '作息习惯2', '情绪2', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian2.jpg,upload/jiankangzhidaojianhu_zuijintupian3.jpg,upload/jiankangzhidaojianhu_zuijintupian4.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (113, '2024-04-01 11:53:56', '患者账号3', '患者姓名3', '医生工号3', '医生姓名3', '饮食习惯3', '运动健康3', '作息习惯3', '情绪3', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian3.jpg,upload/jiankangzhidaojianhu_zuijintupian4.jpg,upload/jiankangzhidaojianhu_zuijintupian5.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (114, '2024-04-01 11:53:56', '患者账号4', '患者姓名4', '医生工号4', '医生姓名4', '饮食习惯4', '运动健康4', '作息习惯4', '情绪4', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian4.jpg,upload/jiankangzhidaojianhu_zuijintupian5.jpg,upload/jiankangzhidaojianhu_zuijintupian6.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (115, '2024-04-01 11:53:56', '患者账号5', '患者姓名5', '医生工号5', '医生姓名5', '饮食习惯5', '运动健康5', '作息习惯5', '情绪5', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian5.jpg,upload/jiankangzhidaojianhu_zuijintupian6.jpg,upload/jiankangzhidaojianhu_zuijintupian7.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (116, '2024-04-01 11:53:56', '患者账号6', '患者姓名6', '医生工号6', '医生姓名6', '饮食习惯6', '运动健康6', '作息习惯6', '情绪6', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian6.jpg,upload/jiankangzhidaojianhu_zuijintupian7.jpg,upload/jiankangzhidaojianhu_zuijintupian8.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (117, '2024-04-01 11:53:56', '患者账号7', '患者姓名7', '医生工号7', '医生姓名7', '饮食习惯7', '运动健康7', '作息习惯7', '情绪7', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian7.jpg,upload/jiankangzhidaojianhu_zuijintupian8.jpg,upload/jiankangzhidaojianhu_zuijintupian9.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (118, '2024-04-01 11:53:56', '患者账号8', '患者姓名8', '医生工号8', '医生姓名8', '饮食习惯8', '运动健康8', '作息习惯8', '情绪8', '2024-04-01', 'upload/jiankangzhidaojianhu_zuijintupian8.jpg,upload/jiankangzhidaojianhu_zuijintupian9.jpg,upload/jiankangzhidaojianhu_zuijintupian10.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (119, '2024-04-02 00:39:38', 'ccc', '陈晨臣', '医生工号1', '陈曦', '1.适当摄入低脂肪、优质蛋白质食物\n2.饮食要清淡，不宜太成。', '每天跑步运动30分钟', '晚上:\n睡眠时间8小时23.：00-7：00\n午睡：\n睡眠时间半小时13：30-14：00', '焦躁不安、心烦意乱', '2024-03-31', 'upload/1715056639689.JPG');
INSERT INTO `jiankangzhidaojianhu` VALUES (120, '2024-04-02 12:10:36', 'ccc', '陈晨臣', '医生工号1', '陈曦', '早上：山药地瓜粥\n中午：牛肉鱼虾小白菜\n晚上：西红柿黄瓜瘦肉', '两天一跑，每次半小时', '每天充足睡眠8小时', '悠闲自在、舒适', '2024-04-01', 'upload/1715056660523.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (121, '2024-05-08 11:47:58', 'ccc', '陈晨臣', '医生工号1', '陈曦', '好', '好', '好', '好', '2024-05-08', 'upload/1715140070939.jpg');
INSERT INTO `jiankangzhidaojianhu` VALUES (122, '2024-05-08 14:54:47', 'ccc', '陈晨臣', '医生工号1', '陈曦', '好', '好', '好', '好', '2024-05-08', 'upload/1715151280709.jpg');

-- ----------------------------
-- Table structure for kepuwenzhang
-- ----------------------------
DROP TABLE IF EXISTS `kepuwenzhang`;
CREATE TABLE `kepuwenzhang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `fengmiantupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图片',
  `jianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简述',
  `wenzhangneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容',
  `fabushijian` datetime(0) DEFAULT NULL COMMENT '发布时间',
  `bianjiren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '编辑人',
  `wenzhanglaiyuan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章来源',
  `discussnum` int(11) DEFAULT 0 COMMENT '评论数',
  `storeupnum` int(11) DEFAULT 0 COMMENT '收藏数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科普文章' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kepuwenzhang
-- ----------------------------
INSERT INTO `kepuwenzhang` VALUES (91, '2024-04-01 11:53:56', '【科普中国】高血压认知误区', 'upload/1742371322170.png', '对于高血压，人们普遍存在着许多认知误区。而这些误区可能导致患者不正确地对待自己的病情，从而影响病情。', '<h3>误区一</h3><p><strong>没有不适症状，血压轻度升高，不需吃药？</strong></p><p>大多数<a href=\"https://baike.baidu.com/item/%E8%80%81%E5%B9%B4%E9%AB%98%E8%A1%80%E5%8E%8B/10183945?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">老年高血压</a>患者没有明显不适感，所以认为不需要药物治疗。然而专家表示，高血压可以是一个没有症状的疾病，但高血压所带来的风险和并发症不是由临床症状引起的。即使是轻度血压高也会增加冠心病的发病率。</p><p>根据《<a href=\"https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E9%AB%98%E8%A1%80%E5%8E%8B%E9%98%B2%E6%B2%BB%E6%8C%87%E5%8D%97/0?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">中国高血压防治指南</a>》，初诊高血压患者需要进行其它心血管危险因素的评估。“高危患者”要立即接受药物治疗；“中危患者”需要监测血压及其它危险因素1个月，再根据评估确定是否开始药物治疗；“低危患者”则需进行生活方式的干预，监测3个月之后再确定是否用药。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[2]</span></p><p><br></p><h3>误区二</h3><p><strong>误区？</strong><a href=\"https://baike.baidu.com/item/%E6%B8%85%E6%99%A8%E9%AB%98%E8%A1%80%E5%8E%8B/0?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\"><strong>清晨高血压</strong></a><strong>无关紧要？</strong></p><p>清晨血压是指清醒后1小时内、服药、早餐前的家庭血压测量结果，或动态血压记录的起床后2小时或早晨6：00~10：00间的血压。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[3]</span></p><p>很多患者常常忽视了<a href=\"https://baike.baidu.com/item/%E6%B8%85%E6%99%A8%E9%AB%98%E8%A1%80%E5%8E%8B/4109916?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">清晨高血压</a>。然而专家表示，血压在24小时内是不断变化的，清晨通常是一天中血压水平最高的时段。研究显示，<a href=\"https://baike.baidu.com/item/%E5%BF%83%E8%82%8C%E6%A2%97%E6%AD%BB/702113?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">心肌梗死</a>、脑卒中等在清晨时段的发生率最高。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[4]</span></p><p>所以，必须重视清晨血压管理。除了自身的病理、生理学原因之外，降压药的选择也十分重要。要遵从医嘱，选择使用安全可长期坚持的，能够真正有效控制24小时血压的降压药物。</p><p><br></p><h3>误区三</h3><p><strong>血压正常后再吃药，血压会越来越低？</strong></p><p>专家提醒，<a href=\"https://baike.baidu.com/item/%E5%8E%9F%E5%8F%91%E6%80%A7%E9%AB%98%E8%A1%80%E5%8E%8B%E7%97%85/9439965?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">原发性高血压病</a>是一种终身性疾病，大多数人需终生服药。血压忽高忽低地波动有损于心、脑、肾等器官，危害极大。所以即使暂时控制了血压，也不可私自停药。</p><p>有些高血压患者认为，血压已经正常了，天天服用降压药会使自己的血压越来越低，这是不科学的。药物和食物一样，每天都要进行代谢，患者服用维持剂量的降压药，就像每天吃饭维持生命一样，不会使血压越降越低。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[5]</span></p><p><br></p><h3>误区四</h3><p><strong>只用服药，不用改变</strong><a href=\"https://baike.baidu.com/item/%E4%B8%8D%E8%89%AF%E7%94%9F%E6%B4%BB%E6%96%B9%E5%BC%8F/6856612?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\"><strong>不良生活方式</strong></a><strong>？</strong></p><p>血压高，服药很重要，但只注重吃药是不够的，非药物治疗也直接影响降压效果。</p><p>专家认为，高血压是多种因素综合作用所造成的。不控制不良生活习惯，会继续损害血管，加重高血压。所以，进行药物治疗的同时也需要采取综合措施，包括减肥、限盐、合理膳食、戒烟、有氧运动等，否则就难以达到理想的治疗效果。</p><p><br></p><h3>误区五</h3><p><strong>只用吃药，不用复诊？</strong></p><p>有的患者自己按照处方买药，长期不去复诊。专家提醒，每个人的病情不是一成不变的，由于各种原因，血压会有所波动。降压需要保持长期稳定。</p><p>首先，定期测量血压，检验疗效。</p><p>其次，降压强调个体化用药，最好每天或每周定期测血压、做记录，掌握用药量与血压变化之间的关系，了解需要用多大剂量或怎样联合用药最适宜。</p><p>最后，坚持定期复诊，让医生根据变化，准确地指导用药。</p><p><br></p><h3>误区六</h3><p><strong>使用保健品降压更安全？</strong></p><p>有些患者认为西药副作用大，不愿长期服用西药，而依赖非药物治疗法。实际上，许多宣传夸大养生疗法和保健食疗的功效，说可以代替药物治疗，这都没有科学验证。</p><p>大多数保健品如天然保健食品、饮品以及降压器具（如降压枕头、降压手表、降压项链等），并不具备明确的降压作用。即使有，降压作用也很轻微，难以达到治疗目标，还会延误规范治疗的时间，最终危害健康。</p><p><br></p><h3>误区七</h3><p><strong>使用中成药降压更安全？</strong></p><p>还有人认为中药的副作用小，降压效果也更好。实际上所有药都有一定的副作用。正规厂家生产的西药使用说明书非常全面、详细，即使发生非常低的不良反应亦被详尽列出。但市面上某些中成药<a href=\"https://baike.baidu.com/item/%E8%8D%AF%E5%93%81%E8%AF%B4%E6%98%8E%E4%B9%A6/8012723?fromModule=lemma_inlink\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">药品说明书</a>很简单，副作用也可能未完全列出，患者需要仔细辨别。同时有些中成药只是短效降压药，服用不当可能引起血压波动，危害更甚，患者需谨慎使用。</p>', '2023-03-01 11:53:56', '百度百科', 'https://baike.baidu.com/item/%E9%AB%98%E8%A1%80%E5%8E%8B%E8%AE%A4%E7%9F%A5%E8%AF%AF%E5%8C%BA/18844163?fromModule=search-result_lemma-recommend', 1, 1);
INSERT INTO `kepuwenzhang` VALUES (92, '2024-04-01 11:53:56', '【知乎】高血压日常食材推荐', 'upload/1742371342672.png', '日常食材推荐', '<p><strong>山药</strong>：山药能健脾益气，保持血管壁的弹性，对防治高血压病具有重要作用。</p><p><strong>燕麦</strong>：燕麦含有极其丰富的亚油酸，可预防动脉粥样硬化和冠心病。</p><p><strong>绿豆</strong>：绿豆可以防治冠心病、心绞痛，因为其中的多糖能增强血清脂。</p><p><strong>荞麦</strong>：荞麦中含有丰富的维生素P，可以增强血管壁的弹性、韧度和致密性，有保护血管的作用。同时，荞麦中含有大量的黄酮类化合物，能促进细胞增生，防止血细胞的凝聚，有调节血脂的作用。</p><p><strong>薏米</strong>：薏米可扩张血管，有助降低血压。</p><p><strong>莲子</strong>：莲子心中含莲心碱，有强心和降压的作用。</p><p><strong>花生</strong>：花生有降压和止血的作用，是一种适合高血压患者食用的干果。</p><p><strong>黄豆</strong>：黄豆所含的卵磷脂和可溶性纤维有助于减少体内的胆固醇，对心脑血管病人有益。</p>', '2020-09-01 11:53:56', '微梦课堂', 'https://zhuanlan.zhihu.com/p/210797316', 0, 2);
INSERT INTO `kepuwenzhang` VALUES (93, '2024-04-01 11:53:56', '【知乎】高血压食疗调理方法', 'upload/1742371358000.jpg', '食疗调理', '<p><strong>1. 适当摄入低脂肪、优质蛋白质食物。</strong></p><p>每日脂肪的摄入不超过50克在限量范围内选择富含不饱和脂肪酸的油脂和肉类，它们可能会减少动脉硬化的发生，对增加微血管弹性、预防血管破裂、防止高血压并发症有一定作用。薯类食物。如淀粉、面粉、米、红薯等，少进食含单糖和双糖类食物，如蔗糖、果糖等，以防止血脂增高。</p><p><strong>2. 饮食要清淡，不宜太成。</strong></p><p>人体摄入食盐(主要成分是氯化钠)量过多会造成体内水和钠潴留，从而导致血管管腔变细、血管阻力增加，使血压上升；增加肾脏负担，造成排钠障碍使血压升高；可能对抗降压药物而影响降压效果。</p><p><strong>3. 高钙饮食。</strong></p><p>高钙饮食是防治高血压的有效措施之一。钙具有强大的“除钠”作用，从而使血压维持稳定。所以，解决高血压的关键不是限钠、限镁或其他矿物质，而是补钙。</p><p>因此，健康人群或高血压患者，都应多吃些含钙丰富的食物，如牛奶、豆类、鱼虾、芝麻等。</p><p><strong>4. 多吃含钾丰富的食物。</strong></p><p>高血压的典型特征是动脉壁增厚，但当给予足量的钾后，动脉壁便不再增厚。这主要是钾对血管有保护作用，可防止动脉壁不受血压的机械性损伤，从而降低了高血压病人中风的发病率。</p><p>含钾丰富的食品主要有瘦肉、牛肉、鱼类及其他海产品、小白菜、油菜黄瓜、西红柿、土豆、橘子、香蕉、桃、葡萄干等蔬菜与水果。</p>', '2020-09-01 11:53:56', '微梦课堂', 'https://zhuanlan.zhihu.com/p/210797316', 0, 3);
INSERT INTO `kepuwenzhang` VALUES (94, '2024-04-01 11:53:56', '【知乎】血压的正确测量方法及注意事项', 'upload/1742371368923.png', '血压测量方法', '<p class=\"ql-align-justify\">1.要求受试者安静休息至少5分钟后开始测量坐位上臂血压，上臂应置于心脏水平。</p><p class=\"ql-align-justify\">2.使用标准规格的袖带(气囊长22 ~ 26cm、宽12cm),肥胖者或臂围大者( &gt; 32cm )应使用大规格气囊袖带。</p><p class=\"ql-align-justify\">3.袖带下缘在肘窝上方2-3cm处，松紧程度能塞进两个指头。</p><p class=\"ql-align-justify\">4.听诊器放置在肱动脉搏动最强处。</p><p class=\"ql-align-justify\">5.充放气速度以每搏心跳下降2-4mmHg，不宜过快避免影响读取数据。</p><p class=\"ql-align-justify\">6.首诊时应测量两上臂血压,以血压读数较高的一侧作为测量的上臂。</p><p class=\"ql-align-justify\">7.测量血压时，应相隔1~2分钟重复测量,取2次读数的平均值记录。如果SBP或DBP的2次读数相差5mmHg以上,应再次测量,取3次读数的平均值记录。</p><p class=\"ql-align-justify\">注意:老年人、糖尿病患者及出现体位性低血压情况者,应该加测站立位血压。站立位血压在卧位改为站立位后1分钟和3分钟时测量。</p>', '2022-04-08 11:53:56', '涂涂', 'https://zhuanlan.zhihu.com/p/476339241', 0, 4);
INSERT INTO `kepuwenzhang` VALUES (95, '2024-04-01 11:53:56', '【中华医学会】教您了解高血压', 'upload/1742371382265.png', '高血压的危害', '<p class=\"ql-align-center\"><strong>高血压的危害</strong></p><p class=\"ql-align-justify\"><br></p><p>高血压的危害主要体现在两个方面。</p><p>一方面，高血压对动脉血管壁是一种机械性损伤，能使血液中的“坏”胆固醇（即低密度脂蛋白胆固醇）更容易在血管壁内沉积下来，从而产生动脉粥样硬化斑块。动脉（包括脑动脉、心脏冠状动脉、下肢动脉）一旦发生粥样硬化斑块，进一步进展就可能会发生脑卒中、心绞痛、急性心肌梗死或下肢间歇性跛行，严重者可直接导致心脏性猝死。</p><p>另一方面，高血压对心、脑、肾等靶器官有直接损害。由于血压增高，心脏排血时所遇到的阻力增加，心脏工作负荷加重，日久会导致左心室肥厚、扩大，心力衰竭、急性心肌梗死和猝死的风险将显著增加。高血压是冠心病的主要危险因素之一，据流行病学调查，高血压能使冠心病的发生风险增加5倍。</p><p><br></p><p class=\"ql-align-center\"><img src=\"https://www.cma.org.cn/picture/0/2c720bdf6fde47e7b6b018a7ea5d47b5.jpg\"></p><p><br></p><p>高血压所致的脑损害包括脑动脉硬化、脑供血不足、脑梗死、脑出血等，其中脑出血是高血压最凶险的并发症，是高血压致死、致残的主要原因。长期高血压引起脑动脉压力增加，形成脑动脉瘤，动脉瘤一旦破裂即发生脑出血。脑动脉发生粥样硬化斑块后，导致血管狭窄，出现脑供血不足，而斑块一旦破裂，血液中血小板聚集形成血栓，堵塞脑动脉，导致脑梗死。不论是脑出血还是脑梗死，临床表现都可能有口齿不清、偏瘫，严重者意识障碍甚至死亡。</p><p>长期高血压会促使肾动脉硬化、狭窄，肾素等血管紧张物质的释放会增多，能正常工作的肾脏组织越来越少，最终导致肾脏缩小甚至萎缩，出现肾功能不全甚至肾衰竭。肾脏一旦受到损害，肾素等血管紧张物质的释放又会增多，从而使血压进一步升高，并产生恶性循环。</p>', '2023-06-15 09:53:56', '中华医学会科学普及部', 'https://www.cma.org.cn/art/2023/6/15/art_4584_51335.html', 1, 5);
INSERT INTO `kepuwenzhang` VALUES (96, '2024-04-01 11:53:56', '【慢病科普库】高血压科普', 'upload/1715053945874.png,upload/1742371403165.jpg', '高血压发病因素', '<p>高血压危险因素包括遗传因素、年龄以及多种不良生活方式等多方面。人群中普遍存在危险因素的聚集，随着高血压危险因素聚集的数目和危险程度增加，血压水平呈现升高的趋势，高血压患病风险增大。</p><p>1.高钠、低钾的膳食习惯:我国人群中重要的高血压发病危险因素。</p><p>2.超重和肥胖:超重和肥胖显著增加全球人群因死亡的风险，同时也是高血压患病的重要危险因素。</p><p>3.过量饮酒:过量饮酒包括危险饮酒（男性41~60g，女性21~40g）和有害饮酒（男性60g以上，女性40g以上）。限制饮酒与血压下降显著相关。</p><p>4.长期精神紧张:长期精神紧张是高血压患病的危险因素，精神紧张可激活交感神经从而使血压升高。</p><p>5.其他危险因素:年龄、高血压家族史、缺乏体力活动，以及糖尿病、血脂异常等。</p>', '2024-02-08 16:53:56', '宋乐佳', 'https://zhuanlan.zhihu.com/p/434029115', 1, 7);
INSERT INTO `kepuwenzhang` VALUES (97, '2024-04-01 11:53:56', '【健康生活】高血压科普知识', 'upload/kepuwenzhang_fengmiantupian7.jpg', '预防高血压措施', '<p>预防高血压，从每一天做起：限盐减重多运动，戒烟戒酒心态平</p><p>1、限制钠盐摄入：钠盐摄入过多，高血压的风险增加，长期限盐可延缓血压随年龄增长而上升的速度。我国平均食盐摄入量超过9g/日，世界卫生组织推荐每人食盐摄入量不</p><p>超过5g/日。</p><p>2、减轻体重：超重和肥胖可促使血压上升，增加患高血压的风险，腹型肥胖可能与高血压有更强的相关性。建议超重和肥胖者减轻体重。</p><p>3.适量运动：运动可降低交感活性、缓解紧张情绪、减轻体重，降低高血压发生风险。建议根据自身条件适量有氧运动、进行肌肉力量练习和柔韧性练习。</p><p>4.戒烟：吸烟可增加心脑血管病风险，建议戒烟。</p><p>5、戒酒：大量饮酒使血压升高，不饮酒对健康最有益。推荐高血压患者不饮酒.目前在饮酒的高血压患者，建议戒酒。如暂时无法完全戒酒，应尽可能减少饮酒量。</p><p>6.保持心理平衡：长期精神紧张或焦虑、抑郁状态可增加高血压的患病风险。应保持积极乐观的心态，避免负面情绪。必要时积极接受心理干预。</p>', '2021-10-09 11:53:56', '潼关县人民法院', 'https://m.thepaper.cn/baijiahao_14834304', 1, 8);
INSERT INTO `kepuwenzhang` VALUES (98, '2024-04-01 11:53:56', '【世界卫生组织】高血压现状及趋势', 'upload/1742371311853.png', '我国高血压发病率呈现出年轻化趋势', '<p><span class=\"ql-font-serif\">近年来，我国高血压发病率逐渐呈现出年轻化趋势。当代年轻人饮食、作息习惯不健康，工作压.力导致精神常处于紧绷状态，交感神经容易过度激活，易产生心率加快、血压升高，会增加心血管事件(冠心病、心衰和卒中等)的发生率。按照不同人群划分，除老年高血压之外，还有儿童高血压、妊娠高血压等，所有年龄段都存在患高血压的可能性，患病率会随年龄增长而升高。远离高血压，这6件事一定要坚持:</span></p><p><span class=\"ql-font-serif\">1、科学摄入营养素，保持血压稳定:优质蛋白可保护心血管;维生素C能保护动脉血管;补充钙质加速钠排出，降低血压;补充钾元素，缓解钠伤害;镁元素可降低血压。</span></p><p><span class=\"ql-font-serif\">2、合理膳食，限制钠盐摄入降低血压</span></p><p><span class=\"ql-font-serif\">3、坚持运动，预防高血压</span></p><p><span class=\"ql-font-serif\">4、戒烟限酒，降低高血压风险</span></p><p><span class=\"ql-font-serif\">5、避免长期熬夜，降低心血管疾病风险</span></p><p><span class=\"ql-font-serif\">6、告别焦虑，减轻精神压力</span></p>', '2024-04-01 11:53:56', '国家心血管中心', 'https://m.medsci.cn/scale/show.do?id=6349233927', 5, 10);

-- ----------------------------
-- Table structure for keshi
-- ----------------------------
DROP TABLE IF EXISTS `keshi`;
CREATE TABLE `keshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科室',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keshi
-- ----------------------------
INSERT INTO `keshi` VALUES (51, '2024-04-01 11:53:55', '心血管科');
INSERT INTO `keshi` VALUES (55, '2024-04-01 11:53:55', '全科医学科');
INSERT INTO `keshi` VALUES (56, '2024-04-01 11:53:55', '肿瘤内科');
INSERT INTO `keshi` VALUES (57, '2024-04-01 11:53:55', '急诊科');
INSERT INTO `keshi` VALUES (58, '2024-04-01 11:53:55', '心血管科');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '2024-05-07 11:53:57', '[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"患者\",\"menuJump\":\"列表\",\"tableName\":\"huanzhe\",\"parentMenuName\":\"账号管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":100099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"排班\"],\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"排班\"],\"menu\":\"医生\",\"menuJump\":\"列表\",\"tableName\":\"yisheng\",\"parentMenuName\":\"账号管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"排班\"}],\"id\":200099}],\"menu\":\"账号管理\",\"id\":1000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"上传健康\",\"上传血压\",\"上传用药\",\"健康指导\",\"用药指导\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"预约医生\",\"menuJump\":\"列表\",\"tableName\":\"yuyueyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"上传健康\"},{\"menu\":\"上传血压\"},{\"menu\":\"上传用药\"},{\"menu\":\"健康指导\"},{\"menu\":\"用药指导\"}],\"id\":400099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"坐诊医生\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"预约医生\"}],\"id\":300099}],\"menu\":\"预约管理\",\"id\":4000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"健康指导\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidao\",\"parentMenuName\":\"指导建议管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":600099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"用药指导\",\"menuJump\":\"列表\",\"tableName\":\"yongyaozhidao\",\"parentMenuName\":\"指导建议管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":700099}],\"menu\":\"指导建议管理\",\"id\":6000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"健康文章\",\"menuJump\":\"列表\",\"tableName\":\"kepuwenzhang\",\"parentMenuName\":\"文章内容管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"查看评论\"}],\"id\":900099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"论坛内容\",\"tableName\":\"forum\",\"parentMenuName\":\"文章内容管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1500099}],\"menu\":\"文章内容管理\",\"id\":9000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"每日数据统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"每日血压统计\",\"每日数据统计\"],\"menu\":\"血压数据监护\",\"menuJump\":\"列表\",\"tableName\":\"xueyashujujianhu\",\"parentMenuName\":\"监护数据管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"每日数据统计\"}],\"id\":1000099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"生活习惯监护\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidaojianhu\",\"parentMenuName\":\"监护数据管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1100099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"用药情况监护\",\"menuJump\":\"列表\",\"tableName\":\"yongyaoqingkuangjianhu\",\"parentMenuName\":\"监护数据管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1200099}],\"menu\":\"监护数据管理\",\"id\":10000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"风险结果\"],\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"风险结果\"],\"menu\":\"风险评估数据\",\"menuJump\":\"列表\",\"tableName\":\"fengxianpinggu\",\"parentMenuName\":\"风险数据管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"风险结果\"}],\"id\":1300099}],\"menu\":\"风险数据管理\",\"id\":13000},{\"child\":[{\"allButtons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"编辑权限\",\"删除\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"编辑名称\"},{\"menu\":\"编辑父级\"},{\"menu\":\"编辑权限\"},{\"menu\":\"删除\"}],\"id\":1700099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"轮播图管理\",\"tableName\":\"config\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1800099},{\"allButtons\":[\"查看\",\"修改\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"关于我们\",\"tableName\":\"aboutus\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"修改\"}],\"id\":1900099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"系统通知\",\"tableName\":\"news\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":2000099},{\"allButtons\":[\"查看\",\"修改\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"系统简介\",\"tableName\":\"systemintro\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"修改\"}],\"id\":2100099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"系统通知分类\",\"tableName\":\"newstype\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":2200099},{\"allButtons\":[\"查看\",\"修改\",\"回复\",\"删除\"],\"appFrontIcon\":\"cuIcon-message\",\"buttons\":[\"查看\",\"修改\",\"回复\",\"删除\"],\"menu\":\"意见反馈\",\"tableName\":\"messages\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"回复\"},{\"menu\":\"删除\"}],\"id\":1600099}],\"menu\":\"系统管理\",\"id\":17000}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"预约医生\"],\"menu\":\"坐诊医生列表\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\"}],\"menu\":\"坐诊医生模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"上传健康\",\"上传血压\",\"上传用药\",\"健康指导\",\"用药指导\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\",\"上传健康\",\"上传血压\",\"上传用药\"],\"menu\":\"预约医生\",\"menuJump\":\"列表\",\"tableName\":\"yuyueyisheng\",\"parentMenuName\":\"预约医生管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"上传健康\"},{\"menu\":\"上传血压\"},{\"menu\":\"上传用药\"},{\"menu\":\"健康指导\"},{\"menu\":\"用药指导\"}],\"id\":100099}],\"menu\":\"预约医生管理\",\"id\":1000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"健康指导\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidao\",\"parentMenuName\":\"健康指导管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":200099}],\"menu\":\"健康指导管理\",\"id\":2000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"用药指导\",\"menuJump\":\"列表\",\"tableName\":\"yongyaozhidao\",\"parentMenuName\":\"用药指导管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":300099}],\"menu\":\"用药指导管理\",\"id\":3000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"每日数据统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"血压数据监护\",\"menuJump\":\"列表\",\"tableName\":\"xueyashujujianhu\",\"parentMenuName\":\"血压数据监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"每日数据统计\"}],\"id\":400099}],\"menu\":\"血压数据监护管理\",\"id\":4000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"生活习惯监护\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidaojianhu\",\"parentMenuName\":\"健康指导监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":500099}],\"menu\":\"健康指导监护管理\",\"id\":5000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"用药情况监护\",\"menuJump\":\"列表\",\"tableName\":\"yongyaoqingkuangjianhu\",\"parentMenuName\":\"用药情况监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":600099}],\"menu\":\"用药情况监护管理\",\"id\":6000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"风险结果\"],\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"风险评估\",\"menuJump\":\"列表\",\"tableName\":\"fengxianpinggu\",\"parentMenuName\":\"风险评估管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"风险结果\"}],\"id\":700099}],\"menu\":\"风险评估管理\",\"id\":7000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-favor\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\",\"parentMenuName\":\"我的收藏管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":900099}],\"menu\":\"我的收藏管理\",\"id\":9000}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"预约医生\"],\"menu\":\"坐诊医生列表\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\"}],\"menu\":\"坐诊医生模块\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"患者\",\"tableName\":\"huanzhe\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"上传健康\",\"上传血压\",\"上传用药\",\"健康指导\",\"用药指导\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"健康指导\",\"用药指导\"],\"menu\":\"预约医生\",\"menuJump\":\"列表\",\"tableName\":\"yuyueyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"上传健康\"},{\"menu\":\"上传血压\"},{\"menu\":\"上传用药\"},{\"menu\":\"健康指导\"},{\"menu\":\"用药指导\"}],\"id\":200099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"坐诊医生\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"预约医生\"}],\"id\":100099}],\"menu\":\"预约管理\",\"id\":2000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"健康指导\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidao\",\"parentMenuName\":\"医生建议\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":300099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"用药指导\",\"menuJump\":\"列表\",\"tableName\":\"yongyaozhidao\",\"parentMenuName\":\"医生建议\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":400099}],\"menu\":\"医生建议\",\"id\":3000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"每日数据统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"每日数据统计\"],\"menu\":\"血压数据监护\",\"menuJump\":\"列表\",\"tableName\":\"xueyashujujianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"每日数据统计\"}],\"id\":500099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"生活习惯监护\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidaojianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":600099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"用药情况监护\",\"menuJump\":\"列表\",\"tableName\":\"yongyaoqingkuangjianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":700099}],\"menu\":\"监护管理\",\"id\":5000}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"预约医生\"],\"menu\":\"坐诊医生列表\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\"}],\"menu\":\"坐诊医生模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"医生\",\"tableName\":\"yisheng\"}]');

-- ----------------------------
-- Table structure for menu_copy1
-- ----------------------------
DROP TABLE IF EXISTS `menu_copy1`;
CREATE TABLE `menu_copy1`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_copy1
-- ----------------------------
INSERT INTO `menu_copy1` VALUES (1, '2024-04-01 11:53:57', '[{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"患者\",\"menuJump\":\"列表\",\"tableName\":\"huanzhe\",\"parentMenuName\":\"账号管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":100099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"排班\"],\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"排班\"],\"menu\":\"医生\",\"menuJump\":\"列表\",\"tableName\":\"yisheng\",\"parentMenuName\":\"账号管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"排班\"}],\"id\":200099}],\"menu\":\"账号管理\",\"id\":1000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"上传健康\",\"上传血压\",\"上传用药\",\"健康指导\",\"用药指导\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"预约医生\",\"menuJump\":\"列表\",\"tableName\":\"yuyueyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"上传健康\"},{\"menu\":\"上传血压\"},{\"menu\":\"上传用药\"},{\"menu\":\"健康指导\"},{\"menu\":\"用药指导\"}],\"id\":400099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"坐诊医生\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"预约医生\"}],\"id\":300099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"科室\",\"menuJump\":\"列表\",\"tableName\":\"keshi\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":500099}],\"menu\":\"预约管理\",\"id\":4000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"健康指导\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidao\",\"parentMenuName\":\"建议管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":600099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"用药指导\",\"menuJump\":\"列表\",\"tableName\":\"yongyaozhidao\",\"parentMenuName\":\"建议管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":700099}],\"menu\":\"建议管理\",\"id\":6000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"健康文章\",\"menuJump\":\"列表\",\"tableName\":\"kepuwenzhang\",\"parentMenuName\":\"文章管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"查看评论\"}],\"id\":900099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-group\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"患者论坛\",\"tableName\":\"forum\",\"parentMenuName\":\"文章管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1500099}],\"menu\":\"文章管理\",\"id\":9000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"每日数据统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"每日血压统计\",\"每日数据统计\"],\"menu\":\"血压数据监护\",\"menuJump\":\"列表\",\"tableName\":\"xueyashujujianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"每日数据统计\"}],\"id\":1000099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"生活习惯监护\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidaojianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1100099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"用药情况监护\",\"menuJump\":\"列表\",\"tableName\":\"yongyaoqingkuangjianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1200099}],\"menu\":\"监护管理\",\"id\":10000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"风险结果\"],\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"风险结果\"],\"menu\":\"风险评估\",\"menuJump\":\"列表\",\"tableName\":\"fengxianpinggu\",\"parentMenuName\":\"风险评估管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"风险结果\"}],\"id\":1300099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"风险结果\",\"menuJump\":\"列表\",\"tableName\":\"fengxianjieguo\",\"parentMenuName\":\"风险评估管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1400099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"\",\"menuJump\":\"列表\",\"tableName\":\"pingguliangbiao\",\"parentMenuName\":\"风险评估管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":800099}],\"menu\":\"风险评估管理\",\"id\":13000},{\"child\":[{\"allButtons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"编辑权限\",\"删除\"],\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"编辑名称\",\"编辑父级\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"编辑名称\"},{\"menu\":\"编辑父级\"},{\"menu\":\"编辑权限\"},{\"menu\":\"删除\"}],\"id\":1700099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"轮播图管理\",\"tableName\":\"config\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":1800099},{\"allButtons\":[\"查看\",\"修改\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"关于我们\",\"tableName\":\"aboutus\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"修改\"}],\"id\":1900099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"系统通知\",\"tableName\":\"news\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":2000099},{\"allButtons\":[\"查看\",\"修改\"],\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"查看\",\"修改\"],\"menu\":\"系统简介\",\"tableName\":\"systemintro\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"修改\"}],\"id\":2100099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"系统通知分类\",\"tableName\":\"newstype\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":2200099},{\"allButtons\":[\"查看\",\"修改\",\"回复\",\"删除\"],\"appFrontIcon\":\"cuIcon-message\",\"buttons\":[\"查看\",\"修改\",\"回复\",\"删除\"],\"menu\":\"意见反馈\",\"tableName\":\"messages\",\"parentMenuName\":\"系统管理\",\"allbtns\":[{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"回复\"},{\"menu\":\"删除\"}],\"id\":1600099}],\"menu\":\"系统管理\",\"id\":17000}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"预约医生\"],\"menu\":\"坐诊医生列表\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\"}],\"menu\":\"坐诊医生模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"上传健康\",\"上传血压\",\"上传用药\",\"健康指导\",\"用药指导\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\",\"上传健康\",\"上传血压\",\"上传用药\"],\"menu\":\"预约医生\",\"menuJump\":\"列表\",\"tableName\":\"yuyueyisheng\",\"parentMenuName\":\"预约医生管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"上传健康\"},{\"menu\":\"上传血压\"},{\"menu\":\"上传用药\"},{\"menu\":\"健康指导\"},{\"menu\":\"用药指导\"}],\"id\":100099}],\"menu\":\"预约医生管理\",\"id\":1000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"健康指导\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidao\",\"parentMenuName\":\"健康指导管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":200099}],\"menu\":\"健康指导管理\",\"id\":2000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"用药指导\",\"menuJump\":\"列表\",\"tableName\":\"yongyaozhidao\",\"parentMenuName\":\"用药指导管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":300099}],\"menu\":\"用药指导管理\",\"id\":3000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"每日数据统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"血压数据监护\",\"menuJump\":\"列表\",\"tableName\":\"xueyashujujianhu\",\"parentMenuName\":\"血压数据监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"每日数据统计\"}],\"id\":400099}],\"menu\":\"血压数据监护管理\",\"id\":4000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"生活习惯监护\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidaojianhu\",\"parentMenuName\":\"健康指导监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":500099}],\"menu\":\"健康指导监护管理\",\"id\":5000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"用药情况监护\",\"menuJump\":\"列表\",\"tableName\":\"yongyaoqingkuangjianhu\",\"parentMenuName\":\"用药情况监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":600099}],\"menu\":\"用药情况监护管理\",\"id\":6000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"风险结果\"],\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"风险评估\",\"menuJump\":\"列表\",\"tableName\":\"fengxianpinggu\",\"parentMenuName\":\"风险评估管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"风险结果\"}],\"id\":700099}],\"menu\":\"风险评估管理\",\"id\":7000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\"],\"menu\":\"风险结果\",\"menuJump\":\"列表\",\"tableName\":\"fengxianjieguo\",\"parentMenuName\":\"风险结果管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":800099}],\"menu\":\"风险结果管理\",\"id\":8000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-favor\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\",\"parentMenuName\":\"我的收藏管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":900099}],\"menu\":\"我的收藏管理\",\"id\":9000}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"预约医生\"],\"menu\":\"坐诊医生列表\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\"}],\"menu\":\"坐诊医生模块\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"患者\",\"tableName\":\"huanzhe\"},{\"backMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"上传生活习惯\",\"上传血压\",\"上传用药\",\"健康指导\",\"用药指导\"],\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"健康指导\",\"用药指导\"],\"menu\":\"预约医生\",\"menuJump\":\"列表\",\"tableName\":\"yuyueyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"审核\"},{\"menu\":\"上传生活习惯\"},{\"menu\":\"上传血压\"},{\"menu\":\"上传用药\"},{\"menu\":\"健康指导\"},{\"menu\":\"用药指导\"}],\"id\":200099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\"],\"menu\":\"坐诊医生\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\",\"parentMenuName\":\"预约管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"预约医生\"}],\"id\":100099}],\"menu\":\"预约管理\",\"id\":2000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"健康指导\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidao\",\"parentMenuName\":\"医生建议\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":300099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"用药指导\",\"menuJump\":\"列表\",\"tableName\":\"yongyaozhidao\",\"parentMenuName\":\"医生建议\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":400099}],\"menu\":\"医生建议\",\"id\":3000},{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"每日数据统计\"],\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"每日数据统计\"],\"menu\":\"血压数据监护\",\"menuJump\":\"列表\",\"tableName\":\"xueyashujujianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"},{\"menu\":\"每日数据统计\"}],\"id\":500099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"生活习惯监护\",\"menuJump\":\"列表\",\"tableName\":\"jiankangzhidaojianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":600099},{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\"],\"menu\":\"用药情况监护\",\"menuJump\":\"列表\",\"tableName\":\"yongyaoqingkuangjianhu\",\"parentMenuName\":\"监护管理\",\"allbtns\":[{\"menu\":\"新增\"},{\"menu\":\"查看\"},{\"menu\":\"修改\"},{\"menu\":\"删除\"}],\"id\":700099}],\"menu\":\"监护管理\",\"id\":5000}],\"frontMenu\":[{\"child\":[{\"allButtons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"预约医生\"],\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"预约医生\"],\"menu\":\"坐诊医生列表\",\"menuJump\":\"列表\",\"tableName\":\"zuozhenyisheng\"}],\"menu\":\"坐诊医生模块\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"医生\",\"tableName\":\"yisheng\"}]');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 223 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '意见反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (215, '2024-04-01 11:53:57', 5, 'pegro', 'upload/messages_avatarurl5.jpg', '<p><p>血压数据可视化会更直观点</p>', '', '<p>谢谢你的建议！</p>', '');
INSERT INTO `messages` VALUES (216, '2024-04-01 11:53:57', 6, 'kangaroo', 'upload/messages_avatarurl6.jpg', '<p>监护信息上传采用打开的形式会不会边界点</p>', '', '<p>谢谢你的建议！</p>', '');
INSERT INTO `messages` VALUES (217, '2024-04-01 11:53:57', 7, 'Mary', 'upload/messages_avatarurl7.jpg', '<p>健康文章内容显得有点挤</p>', '', '<p>会改善的，谢谢你的建议！</p>', '');
INSERT INTO `messages` VALUES (218, '2024-04-01 11:53:57', 8, 'ccm', 'upload/messages_avatarurl8.jpg', '<p>系统首页内容有点多</p>', '', '<p>谢谢你的建议！</p>', '');
INSERT INTO `messages` VALUES (219, '2024-04-02 13:24:44', 1711987865374, 'ccc', 'upload/1711987864541.JPG', '<p>首页可以添加高血压分级标准内容</p>', 'upload/1742370973525.png', '<p>谢谢你的建议！</p>', NULL);
INSERT INTO `messages` VALUES (220, '2024-04-02 13:29:01', 1711987865374, 'ccc', 'upload/1711987864541.JPG', '<p>可以出个养生导航区吗</p>', 'upload/1742370962798.png', '<p>谢谢你的建议!</p>', NULL);
INSERT INTO `messages` VALUES (221, '2024-05-08 11:52:41', 1711987865374, 'ccc', 'upload/1713536710285.JPG', '小程序做的不错', '', '', NULL);
INSERT INTO `messages` VALUES (222, '2024-05-08 12:16:31', 12, 'mali', 'upload/huanzhe_touxiang2.jpg', '小程序可以再完善完善', '', '', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '简介',
  `typename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) DEFAULT 0 COMMENT '赞',
  `crazilynum` int(11) DEFAULT 0 COMMENT '踩',
  `storeupnum` int(11) DEFAULT 0 COMMENT '收藏数',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统通知' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (171, '2024-04-01 11:53:57', '趁着年轻，输得起，看得开，去经历', '我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤', '分类名称1', '发布人1', 'upload/news_headportrait1.jpg', 1, '2024-04-01 11:53:57', 1, 1, 1, 'upload/news_picture1.jpg', '<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>  首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>    我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p> 电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>  社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>   失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>');
INSERT INTO `news` VALUES (172, '2024-04-01 11:53:57', '大学就该抓住青春，用汗水实现梦想', '大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还', '分类名称2', '发布人2', 'upload/news_headportrait2.jpg', 2, '2024-04-01 11:53:57', 2, 2, 2, 'upload/news_picture2.jpg', '<p>  大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还。</p><p>  青春是属于我们的，是人生最最美好的时光。我们应该好好把握住现在象牙塔的点点滴滴。大学对于我们来说很重要，这里充满了好奇、机遇和挑战。当我懵懵懂懂的走过了两年才突然发现原来大学是这样的，每个人有不同的选择，有不同的理想，也有不同的人生。但是无论怎样都是一个博学的过程，学做人，学知识，学生活..…...春是疯狂的，是充满激情的，是奋斗的，最重要的是我们要坚定我们的梦想，为了梦想付出一切，为了梦想坚持到底，这才是真正的青春。青春的梦想就是黑夜里的灯塔在我们迷茫时给予我们方向，就是力量的源泉在我们身陷逆境时给予我们最大的动力，就是爱的港湾在我们屡次失败时给予我们受伤的心灵以安慰。因此无论何时何地，都不能忘却心里坚守的那份沉甸甸的梦想。</p><p>   青春的梦想很简单，可能是梦想成为学习的佼佼者让GPA无限趋于4.0，可能是梦想成为学生工作的杰出者当上主席为自己的从政事业奠定基础，也可能是梦想成为运动场上的超级明星拥有大量的球迷粉丝，也可能是梦想成为职场达人，面试无压力，就业有保障...….或许你觉得这些都算不上梦想，其实梦想并不分大小和轻重，不能说只有中国梦才算是梦想，梦想就是这样每个人有不同的定位，但都是值得去追逐的，去为之奋斗的。()拥有了梦想，就有了坚定的信念，海风再大海浪再大，也无法扼杀我们追逐胜利的信念。信念给我们坚持的勇气，勇气赐我们昂扬的斗志，斗志带我们摆脱厄运;拥有了梦想，就能化压力为动力，梦想会时刻在鞭策我们，鼓励我们，让我们审视自己，发现不足，奋力补救，让自己保持不懈的前进动力;拥有了梦想，我们就不会在迷茫的路上更加迷茫，我们就能在青春之歌复杂的五线谱中听到动人的旋律。</p><p>   我们是大学生，是祖国的未来，是民族复兴的脊梁，面对如此重任，怎么能不胸怀大志，坚定梦想，在青春的道路上奋斗。“恰同学少年，风华正茂，书生意气，挥斥方道。”青春是黄金时段，我们要以梦想为方向，扬帆起航，努力拼搏，给我们即将失去的青春以最好的结局。人因梦想而伟大，让我们一起奏响青春的梦想之歌，为各自的梦想努力进发吧!</p>');
INSERT INTO `news` VALUES (173, '2024-04-01 11:53:57', '留退路就没有出路', '公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了', '分类名称3', '发布人3', 'upload/news_headportrait3.jpg', 4, '2024-04-02 00:52:47', 4, 3, 3, 'upload/news_picture3.jpg', '<p>  公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了。</p><p>  很多人在处理重要问题的时候，总是喜欢把这些问题暂且搁置在一边，等以后再做。他们没有决定的勇气和魄力，总是在着手做事的时候想给自己留一条后路，以免没有出路。对于他们来说，退路就是出路。但是，事实证明，这样是不会有任何成就的。</p><p>背水一战、破釜沉舟的军队往往能获得胜利。同样，一个做事不留退路、一心向前的人，不管遇到什么困难和障碍，他都不会后退，因为他没有路可以退。而那些人在为自己准备退路的同时就是在后退，他们立志不坚，把精力和时间投入到退缩的准备上，这种人绝不会获得成功。</p><p>  一个人能否成功，关键在于他意志力的强弱。意志坚强的人不管遇到什么困难和障碍，都会百折不挠，想方设法地克服;意志薄弱的人一遇到麻烦，甚至在挫折还没有到来之前，他们就开始庸人自扰，彷徨失措，把精力都放在如何规避问题上，放在为自己铺设后路上。当困难一个接一个来时，他们就一步接一步后退，最后他们终将无路可退。</p><p>现实生活中，到处都充斥着这样的青年，他们富有上进心，希望有一番成就和作为，但是他们意志薄弱，没有必胜的决心，不敢破釜沉舟;他们始终左摇右摆，没有坚定的信念，一遇到挫折和困难，马上就缩回了进取的手和脚。这样的人，这样的心态，最后遭受失败也不足为奇。</p><p>   不给自己留后路，让自己没有回旋的余地，方能竭尽全力，锐意进取，就算遇到千万困难，也不会退缩，因为回头也没有路了，不如不顾一切地前进，还能找到一线希望。有了这样一种“拼命”和“豁出去”了的信念，才能彻彻底底地消除心中的恐惧、犹豫、胆怯。当一个人不给自己任何退路的时候，他就什么都不怕了，勇气、信心、热忱等从心底油然而生，到最后自然能“置之死地而后生”。</p><p>    面对严峻的问题和重要环节，周全而细致地考虑问题的各个方面也是应该的，但是过多地权衡，前怕狼后怕虎，一会儿这样一会儿那样，最终却还是原样，可以肯定地说，你不会有任何进展，甚至还会变得—塌糊涂。</p><p>出路和退路不是同义词，而是反义词，留退路就没有出路，因此，你应该只找出路，不留退路。大学生励志青春文章:培养积极的思维模式。</p>');
INSERT INTO `news` VALUES (174, '2024-04-01 11:53:57', '在大学给自己定个目标', '最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到', '分类名称4', '发布人4', 'upload/news_headportrait4.jpg', 5, '2024-04-10 20:29:17', 5, 4, 4, 'upload/news_picture4.jpg', '<p>  最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>   这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>  也许，这样的大学生不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大学生起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，学生们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p> 此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大学生对自己的学习、对大学生活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大学生生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>  如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导学生树立明确的奋斗目标、进而指引学生为之努力的大学，学生很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给学生们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大学生活，也许只会给很多学生带来悔过。</p><p>无论如何，混日子的大学生活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大学生，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>');
INSERT INTO `news` VALUES (175, '2024-04-01 11:53:57', '做个真正的学生', '最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点', '分类名称5', '发布人5', 'upload/news_headportrait5.jpg', 5, '2024-04-01 11:53:57', 5, 5, 5, 'upload/news_picture5.jpg', '<p>  最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点。</p><p>曾经有人特地赶赴日本，向三宅一生服装设计大师请教如何设计出独具一格的服装款式。三宅一生大师提出两个很有意思的观点:一是，设计的衣服，其实都是没有全部完成的，其余的创作空间，则是留给穿衣服的人去完成的;二是，选择布料时，会请厂商提供纺织、印染失败的布料，从这些“残次”的作品中寻找泉涌般的创作灵感，设计出最具独创性的作品。</p><p>这样一来，顾客才能穿出自己的风格，并使得同一件衣服，在不同的人身上，能有不同的效果。而且，以这样的概念设计出来的衣服，也不容易失败。正是因为这两个观点，三宅一生所设计的服装总是独一无二地能够引领世界潮流。</p><p>  在艺术家的眼中，任何事物都是创作的最好材料，不管是枯木还是残破的布料，对他们而言，都是最具生命力的事物，在他们手中都能画腐朽为神奇。</p><p>朽木也能精雕，更何况我们自己。那些看起来弯曲、盘旋、似乎毫无用处的木料，往往最终能成为艺术品的原材料，因为这种不同，才特别珍贵。花点心思，身上的缺点也能变成独特的优点，就像艺术家们一般，顺着曲折的木头，创造出与众不同、完美无缺的惊世杰作。</p><p>励志文章3:一生学习，成就一生无知的人并不是没有学问的人，而是不明了自己的人。当一个有学问的人信赖书本、知识和权威，借着它们而了解自己，那么他便是愚蠢的。了解是由自我认识而来，而自我认识乃是一个人明白他自己的整个心理过程。因此，教育的真正意义是自我了解，因为整个生活是汇聚于我们每个人的身心的最高“机密”。</p><p>   目前我们所谓的教育，只是由书本聚集见闻、知识，这是任何懂得阅读的人都办得到的。这种教育提供了一条巧妙的逃避自我之途，如同其他所有的逃避方式一样，它无可避免地制造出有增无减的苦难。冲突和混乱是由于我们和他人、事物、概念之间差错的关系而产生，除非我们了解此项关系而改变它，否则，知识的学习和堆砌，各种技能的获取，都只会将我们导向更深的混乱和毁灭。</p><p> 我们将子女送入学校，学习一些技能，并希望借此来带动整个家庭的长久繁荣，至少在家长们年老的时候有养老保险，有稳定的照顾。我们对孩子最急切的渴望，就是将他塑造成一个能在一个领域中出类拔萃之人，希望给予他一个安全的经济地位。物质的获得有时候并不难，然而，技术的训练能使我们了解自己吗?</p><p>虽然，懂得念书写字、学习土木工程或其他某种职业，是必需的，然而技术能给予我们了解生活的能力吗?技术，无疑是次要的;如果技术是我们惟一奋力以求的东西，那么我们就摒弃了生活中最主要的东西了。</p><p>    生活，是痛苦、喜悦、美、丑、爱等多种感受的综合，一旦我们将它整体地加以了解，那么这项了解在各方面都会创出它应有的技术。不过，相反的说法就不是真的了∶技术永远无法产生创造性的了解。</p><p>如果过分强调技术，我们便毁灭了人。磨练技能和效率，然而对生活却不了解，对思想、欲望的行踪不能领悟，只会使我们变得日益残暴无情，以致于触发战争，危害了我们肉体上的安全。由于我们的教育过重于单单培养技术，已经制造出许多科学家、数学家、造桥工程师、征服太空的人，但这些人了解生活的整体过程吗?一个专家能把生活本身完整地体验感受表达出来吗?或者他真的体验到生活了吗?有时候，当他不是专家时，反而更能直指生活的本质。一颗能够给予人辉煌一生的企图心，首先应当是一颗敏感的善良的热情的心，让我们对周围的一切保持孩童一样旺盛的好奇心。我们应当渴望了解新奇的事物，渴望探索未知的领域。只有在这种理念的支配下，我们才能不断地、孜孜以求地、乐此不疲地提升自己的认知和理解能力，改善自我，从而更接近成功的巅峰。</p>');
INSERT INTO `news` VALUES (176, '2024-04-01 11:53:57', '远大的目标是成功的磁石', '上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标', '分类名称6', '发布人6', 'upload/news_headportrait6.jpg', 7, '2024-05-07 12:03:04', 6, 6, 6, 'upload/news_picture6.jpg', '<p>  上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标。</p><p>    有大目标的人，生活永远是积极的，他们会朝着自己的目标不断前进;没有大目标的老实人浑浑噩噩，不思进取，最后被生活淘汰。</p><p> 从前有个叫阿巴格的人生活在内蒙古草原上。有一次，年少的阿巴格和爸爸在草原上迷了路，阿巴格又累又怕，到最后快走不动了。爸爸就从兜里掏出五枚硬币，把一枚硬币埋在草地里，把其余四枚放在阿巴格的手上，说:“人生有五枚金币，童年、少年、青年、中年、老年各有一枚，你现在才用了一枚，就是埋在草地里的那一枚，你不能把五枚都扔在草原里，你要一点点地用，每一次都用出不同来，这样才不枉人生一世。今天我们一定要走出草原，你将来也一定要走出草原。世界很大，人活着，就要多走些地方，多看看，不要让你的金币没有用就扔掉。”在父亲的鼓励下，阿巴格走出了草原。长大后，阿巴格离开了家乡，成了一名十分优秀的船长。</p><p>  目标是与一个人的愿望相联系的，是对未来的一种设想，它往往和目前的行动不直接联系。但目标又不能脱离现实的生活，现实生活中的某些现象如果符合了个人的需要，与个人的世界观一致，这些现实的因素就会以个人目标的形式表现出来。目标总是对现实生活的重新加工，舍弃其中某些成分，又对某些因素给予强调的过程，但它必须以对客观规律的认识为基础，符合客观规律。</p><p> 能实现自己目标的老实人，对他个人而言，他是一个成功者，也是个幸福者。目标是成功的必要条件，虽然仅仅拥有目标，你不一定能取得成功;但是如果没有目标，成功对你而言就无从谈起。</p><p>远大的美好目标能吸引人努力为实现它而奋斗不止。</p>');
INSERT INTO `news` VALUES (177, '2024-04-01 11:53:57', '做一个最好的自己', '自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费', '分类名称7', '发布人7', 'upload/news_headportrait7.jpg', 9, '2024-05-08 13:00:38', 7, 7, 8, 'upload/news_picture7.jpg', '<p>自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费。</p><p>我们大家都知道的人大脑拥有140亿个脑细胞，但我们思维意识只利用了脑细胞的很少部分，如能将更多的脑细胞从睡眠中激活出来，人的思维意识将更加强大。如果我们都能充满自信，就能创造人间奇迹，亦能创造一个最好的自己。</p><p> 一个人相信自己是什么，就会是什么。一个人心里怎样想，就会成为怎样的人。这从心里学上讲是有一定的道理的。我们每一个人心里都有一幅心里蓝图，或是一幅自画像，有人称它为运作结果。如果你想象的是做最好的你，那么你就会在你内心的荧光屏上看到一个踌躇满志、不断进取、勇于开拓创新的自我。同时还会经常收到我做的很好，我以后还会做的更好之类的信息，这样你注定会成为一个最好的你。美国哲学家爱默生说:“人的一生正如他一天中所想的那样，你怎么想，怎么期待，就有怎样的人生。”美国有名的钢铁大王安德鲁·卡耐基就是一个充分发挥自己创造机会的楷模。他12岁时由英格兰移居美国，先是在一家纺织厂做工人，当时他的目标是“做全厂最出色的工人。”因为他经常这样想，以这样做，最终他实现了他的目标。后来命运有安排他当邮递员，他想的是怎样成为“全美最杰出的邮递员。”结果他的这一目标也实现了。他的一生总是根据自己所处的环境和地位塑造最佳的自己，他的座右铭就是“相信自己是最棒的。“</p><p>做一个最好的自己，不一定非要当什么“家”，也不一定非要出什么“名”，更不要与别人比高低、比大小。就像人的手指，有大有小，有长有短，他们各有所长，各有所短，你能说拇指比食指好吗?决定最好的你，既不是你拥有的物质财富的多少，也不是你身份的贵贱，关键是看你是否拥有实现自己理想的强烈愿望的程度，看你身上的潜力能否充分发挥。人们熟知的一些英雄模范，就是在平凡的工作岗位上充分发挥人的创新能力，做好自己身边的每一件小事，创造了做好的自己。</p><p>“塑造一个最好的自己”，这个目标人人都可以实现。你只意识到自己是大自然的一分子，坚信自己拥有“无限的能力”与“无限的可能”，这种坚定的信心能帮助你创造和谐的心理、生理韵律，建立起自己理想的自我形象，体现自己人格行为应该具有的魅力。</p>');
INSERT INTO `news` VALUES (178, '2024-04-01 11:53:57', '有了梦想就不会感到疲惫', '“峣峣者易折，皎皎者易污”', '分类名称8', '发布人8', 'upload/news_headportrait8.jpg', 16, '2024-05-07 12:03:27', 9, 8, 8, 'upload/news_picture8.jpg', '<p>一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃。</p><p>“峣峣者易折，皎皎者易污”。能够从内地高校到香港读书的学子，都是一些很优秀的年轻人。不知道曾经高居象牙塔的书生，怎样狠下心，咬牙面对那一个天渊般的落差，以及旁人的目光和议论。</p><p>说到这里，很像一个《读者》式的励志故事。但是这种励志故事从来就不缺乏感动人的力量，因为虽然光明的尾巴不是人人都能够拥有，但是人人都有梦想，面对实现过程中的困难，其奋斗或者说挣扎，却常常和平凡如你我的人们相遇。</p><p>《当幸福来敲门》就是这样偶然被看到，又感动了我的电影。黑人克里斯是一名普普通通的医疗器械推销员，妻子忍受不了经济上的压力离开了他，留下5岁的儿子克里斯托夫和他相依为命。克里斯银行账户里只剩下21块钱，因为没钱付房租，他和儿子被撵出了公寓。费尽周折，克里斯赢得了在一家着名股票投资公司实习的机会，但是实习期间没有薪水，而且最终只有一人可以成功进入公司。</p><p>学妹曾经告诉我一个故事，让我每次想到都觉得莫名恐怖。她说，她硕士毕业去广东求职，一个中学要招几个老师，结果南来北往的硕士博士挤了快有一个礼堂。可想而知，竞争有多么残酷。看来，中外求职者都面临着同样的挑战。但是克里斯和许多“80后”的大学毕业生不同，他更加坚韧:为了节省时间，上班时候不喝水，以避免上厕所。以疯狂的速度给客户打电话，打完一个，直接按挂机键就拨下一个电话。白天，克里斯忍受着一次又一次被拒绝的失望，带着微笑在公司和客户之间穿梭。回家，则要带着儿子穿过污秽的街道，忍受房东的咆哮。</p><p>终于，交不起房租的父子俩流落街头。克里斯和儿子在午夜地铁里相对无言，儿子不能理解为什么不能回家住，爸爸却开始玩游戏:“我们通过时光机，到达古代了!”儿子立刻兴奋地配合起来，环顾左右。父子俩在“恐龙”的追杀下，逃到了一个“山洞”里，“山洞”是什么呢，其实是一间男厕所。克里斯搂着熟睡的儿子，坐靠在厕所的墙面。午夜的灯光很惨白，这个消瘦的、营养不良的父亲，默默地流下了泪水。</p><p>父子俩依旧为了幸福到来而努力。他们开始住收容所，面对有限的床位，这个奔跑起来像猎豹一样的人，有时候得把草原上的爆发力运用到打架上面来。儿子在简陋的收容所床上睡着了，父亲还在埋头修理推销的医疗器械，或者翻那本厚厚的笔试全书。</p><p>钱包磨损得厉害，而且，太瘪了，每张钱都很熟悉。老板要借5块钱，犹豫再三，摩挚着纸币，最终还是把钱送了出去。卖血。鲜血在塑料袋里面渗开，那是一个男人所能奉献的最后。拿着卖血的钱，克里斯仍然去买电子元件。一点点的希望，都要去坚持。</p><p>对于父母，最心酸的事儿是什么呢?就是子女的一点可怜的愿望得不到满足。克里斯托夫的惟一的玩偶“美国英雄”，在一次挤车的过程中掉到了地上。5岁的男孩悲伤欲绝，克里斯坚硬的表情下，读出的是面对困难的凶狠和惨痛。但是，无论多么深切的无望，都没有摧毁父子间的亲情与他们的信念，他们相信幸福总会落到自己的身上。“你是个好爸爸”，克里斯托夫跟着爸爸四处流浪，可是孩子的心灵，衡量的砝码和天使是—样的。</p><p>克里斯最终成为了投资公司的员工，看似冷漠的白人老板们，此时显出他们的些微温情。他忍住了泪水，颤抖着拿起自己的物品，走入了茫茫人海。在熙熙攘攘的人群中间，克里斯举起手，为自己鼓掌，那无声的，一下下重重的掌声，是在为自己喝彩。其实，克里斯托夫的“美国英雄”并没有失落。</p><p>这是一个非常典型的“美国梦”:一个人通过自己的努力，可以实现自己的梦想，幸福，会来敲门。很多人往往会关注对于梦想的树立，而往往忽略过程的艰辛。特别是，当面对一个看似无望的现实的时候，有多少人会坚持，多少人会放弃呢?生活总是在不断地修正，并且提醒我们，顺应大潮的人总是较有可能抵达成功的彼岸。可是，确实是有些人，愿意逆流而上。我相信，这是导演对于逆行者的一点鼓励。</p><p>那个香港的匿名毕业生后来博士毕业，找到了一份不错的工作，有了漂亮的妻子和可爱的孩子。这个强人在帖子里说，有什么坚持不下来的呢?</p>');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 169 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统通知分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES (161, '2024-04-01 11:53:57', '分类名称1');
INSERT INTO `newstype` VALUES (162, '2024-04-01 11:53:57', '分类名称2');
INSERT INTO `newstype` VALUES (163, '2024-04-01 11:53:57', '分类名称3');
INSERT INTO `newstype` VALUES (164, '2024-04-01 11:53:57', '分类名称4');
INSERT INTO `newstype` VALUES (165, '2024-04-01 11:53:57', '分类名称5');
INSERT INTO `newstype` VALUES (166, '2024-04-01 11:53:57', '分类名称6');
INSERT INTO `newstype` VALUES (167, '2024-04-01 11:53:57', '分类名称7');
INSERT INTO `newstype` VALUES (168, '2024-04-01 11:53:57', '分类名称8');

-- ----------------------------
-- Table structure for pingguliangbiao
-- ----------------------------
DROP TABLE IF EXISTS `pingguliangbiao`;
CREATE TABLE `pingguliangbiao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liangbiaomingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '量表名称',
  `liangbiaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '量表内容',
  `cankaobeizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参考备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评估量表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingguliangbiao
-- ----------------------------
INSERT INTO `pingguliangbiao` VALUES (81, '2024-04-01 11:53:56', '量表名称1', '量表内容1', '参考备注1');
INSERT INTO `pingguliangbiao` VALUES (82, '2024-04-01 11:53:56', '量表名称2', '量表内容2', '参考备注2');
INSERT INTO `pingguliangbiao` VALUES (83, '2024-04-01 11:53:56', '量表名称3', '量表内容3', '参考备注3');
INSERT INTO `pingguliangbiao` VALUES (84, '2024-04-01 11:53:56', '量表名称4', '量表内容4', '参考备注4');
INSERT INTO `pingguliangbiao` VALUES (85, '2024-04-01 11:53:56', '量表名称5', '量表内容5', '参考备注5');
INSERT INTO `pingguliangbiao` VALUES (86, '2024-04-01 11:53:56', '量表名称6', '量表内容6', '参考备注6');
INSERT INTO `pingguliangbiao` VALUES (87, '2024-04-01 11:53:56', '量表名称7', '量表内容7', '参考备注7');
INSERT INTO `pingguliangbiao` VALUES (88, '2024-04-01 11:53:56', '量表名称8', '量表内容8', '参考备注8');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1, '2024-04-02 00:52:51', 1711987865374, 173, 'news', '留退路就没有出路', 'upload/news_picture3.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (2, '2024-04-02 12:54:10', 1711987865374, 151, 'forum', '高血压危险因素', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (3, '2024-04-02 13:01:06', 1711987865374, 152, 'forum', '高血压常见症状', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (4, '2024-04-02 13:06:48', 1711987865374, 154, 'forum', '如何治疗高血压？', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (5, '2024-04-02 13:06:52', 1711987865374, 153, 'forum', '高血压如何诊断的啊？？？', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (6, '2024-04-02 23:59:30', 13, 162, 'forum', '小程序好用不？', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (7, '2024-04-03 00:00:41', 13, 98, 'kepuwenzhang', '高血压现状及趋势', 'upload/1712031907517.png', '1', NULL, NULL);
INSERT INTO `storeup` VALUES (10, '2024-04-10 20:29:20', 1711987865374, 174, 'news', '在大学给自己定个目标', 'upload/news_picture4.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (11, '2024-04-17 23:46:22', 1711987865374, 97, 'kepuwenzhang', '【健康生活】高血压科普知识', 'upload/kepuwenzhang_fengmiantupian7.jpg', '1', NULL, NULL);
INSERT INTO `storeup` VALUES (12, '2024-05-07 12:03:33', 1711987865374, 178, 'news', '有了梦想就不会感到疲惫', 'upload/news_picture8.jpg', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (13, '2024-05-08 11:51:47', 1711987865374, 98, 'kepuwenzhang', '【世界卫生组织】高血压现状及趋势', 'upload/1715053928523.png', '1', NULL, NULL);
INSERT INTO `storeup` VALUES (14, '2024-05-08 11:52:26', 1711987865374, 168, 'forum', '111', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (15, '2024-05-08 12:10:49', 15, 151, 'forum', '高血压危险因素', '', '21', NULL, NULL);
INSERT INTO `storeup` VALUES (16, '2024-05-08 13:00:42', 1711987865374, 177, 'news', '做一个最好的自己', 'upload/news_picture7.jpg', '1', NULL, NULL);
INSERT INTO `storeup` VALUES (17, '2024-05-08 13:00:49', 1711987865374, 96, 'kepuwenzhang', '【慢病科普库】高血压科普', 'upload/1715053945874.png', '1', NULL, NULL);

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统简介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES (1, '2024-04-01 11:53:57', '系统简介', 'SYSTEM INTRODUCTION', '<p>高血压是一种可控制而不可治愈的疾病，需终生治疗，一旦开始药物治疗则不可随意自行停药、换药，否则会使血压再一次升高，甚至难以控制。长期高血压可引发心脏病、卒中、肾功能衰竭、眼底病变甚至失明等严重并发症并威胁到生命安全。因此，此系统针对高血压治疗实现长期的血压监护、生活习惯监护和用药监护，并实现血压长期平稳，治疗效果好的情况下，可以像正常人一样生活、工作。</p>', 'upload/1742370923414.jpg', 'upload/1742371102192.jpg', 'upload/1742370927055.png');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', '43nho4t6yrvf965e8vleoa5ghaqi7kbs', '2024-04-01 11:59:14', '2025-03-19 17:30:38');
INSERT INTO `token` VALUES (2, 28, '医生工号8', 'yisheng', '医生', 'm9klikh57fw7cu7geh1atdvfp1ca2yu2', '2024-04-01 11:59:28', '2024-04-01 12:59:28');
INSERT INTO `token` VALUES (3, 1711987865374, 'ccc', 'huanzhe', '患者', '39z7cvhy86clxcnir8g2jf5667qwwyav', '2024-04-02 00:11:12', '2025-03-19 16:57:03');
INSERT INTO `token` VALUES (4, 21, '医生工号1', 'yisheng', '医生', '822m3oj6qctcl9alhwej2ghm5yc6wog2', '2024-04-02 00:29:35', '2024-05-08 15:56:39');
INSERT INTO `token` VALUES (5, 12, 'mali', 'huanzhe', '患者', '9nguaqc2rm9bpm8obk48bznw7oxcws2j', '2024-04-02 17:29:34', '2024-05-08 13:14:27');
INSERT INTO `token` VALUES (6, 13, 'andy', 'huanzhe', '患者', 'primxdbn58hfkjljoc15fikveylnrdo8', '2024-04-02 23:58:29', '2024-05-08 13:29:03');
INSERT INTO `token` VALUES (7, 27, '医生工号7', 'yisheng', '医生', 'rp800caekcxig77w0edue4ka0p23odlx', '2024-05-07 11:45:02', '2025-03-19 17:06:40');
INSERT INTO `token` VALUES (8, 15, 'ldj', 'huanzhe', '患者', 'zej6jzxmyoe6q008g1fv3mk1ll8gg18d', '2024-05-08 12:04:41', '2024-05-08 13:04:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', 'upload/1742370658889.png', '管理员', '2024-04-01 11:53:57');

-- ----------------------------
-- Table structure for xueyashujujianhu
-- ----------------------------
DROP TABLE IF EXISTS `xueyashujujianhu`;
CREATE TABLE `xueyashujujianhu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职称',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `huanzheshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者手机',
  `xueya` double NOT NULL COMMENT '血压(mmHg)',
  `beizhu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `shousuoya` double DEFAULT NULL COMMENT '收缩压(kpa)',
  `shuzhangya` double DEFAULT NULL COMMENT '舒张压(kpa)',
  `xinlv` int(11) DEFAULT NULL COMMENT '心率(次/分钟)',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '血压数据监护' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xueyashujujianhu
-- ----------------------------
INSERT INTO `xueyashujujianhu` VALUES (104, '2024-04-01 11:53:56', '医生工号4', '医生姓名4', '科室4', '职称4', '患者账号4', '患者姓名4', '患者手机4', 145, '备注4', 145, 68, 69, '2024-04-01');
INSERT INTO `xueyashujujianhu` VALUES (105, '2024-04-01 11:53:56', '医生工号5', '医生姓名5', '科室5', '职称5', '患者账号5', '患者姓名5', '患者手机5', 150, '备注5', 150, 80, 69, '2024-04-01');
INSERT INTO `xueyashujujianhu` VALUES (108, '2024-04-01 11:53:56', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '1301234567', 142, '目标值130/70', 142, 80, 74, '2024-03-30');
INSERT INTO `xueyashujujianhu` VALUES (109, '2024-04-02 00:33:40', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '1301234567', 145, '目标值130/70', 145, 85, 75, '2024-03-28');
INSERT INTO `xueyashujujianhu` VALUES (110, '2024-04-02 11:23:57', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '1301234567', 139, '目标值130/70', 139, 69, 70, '2024-03-29');
INSERT INTO `xueyashujujianhu` VALUES (111, '2024-04-14 17:18:32', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '1301234567', 150, '目标值130', 150, 89, 75, '2024-04-01');
INSERT INTO `xueyashujujianhu` VALUES (112, '2024-05-08 11:48:26', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '1301234567', 130, '', 130, 70, 70, '2024-05-08');
INSERT INTO `xueyashujujianhu` VALUES (113, '2024-05-08 14:55:02', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '1301234567', 130, '', 130, 70, 75, '2024-05-08');

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医龄',
  `yishengdianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生电话',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `yishengjianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '医生简介',
  `yishizigezheng` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医师资格证',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '审核回复',
  `openid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信openid',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信昵称',
  `avatarurl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yishenggonghao`(`yishenggonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1712758566190 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES (21, '2024-04-01 11:53:55', '医生工号1', '123456', '陈曦', '男', '25', '13823888881', 'upload/yisheng_touxiang1.jpg', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">陈曦，主任医师（二级专技）、教授，医学博士，硕士生、博士生导师，享受国务院政府津贴。现任福建医科大学附属第一医院心内科行政主任、心内介入支部书记、福建省高血压研究所副所长，福建省高血压防治中心副主任等。兼任中国高血压联盟副主席、国际高血压学会成员、中国医师协会心血管分会委员兼高血压学组副组长、中华医学会心血管学会高血压学组委员、中华预防医学会循证医学专业委员会委员、福建省心血管分会副主任委员兼高血压学组组长、中国中西医结合学会福建省心血管分会副主任委员等。中华心血管病杂志、中国循环杂志等编委。国家自然基金课题评审专家、国家卫生健康委课题和成果评审专家，福建省科技厅、卫生健康委课题、成果及医疗事故鉴定专家。&nbsp;</span></p>', 'upload/yisheng_touxiang1.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (22, '2024-04-01 11:53:55', '医生工号2', '123456', '曹军', '男', '20', '13823888882', 'upload/zuozhenyisheng_touxiang2.jpg', '曹军，福建医科大学附属第一医院心血管内科行政副主任，主任医师，3级教授，硕士研究生导师，担任中华高血压杂志常务编委兼编辑部副主任、中国生物工程学会体外反搏分会委员、中国心脏联盟心血管疾病预防与康复学会委员、中国心脏联盟心血管疾病预防与康复学会福建分联盟副主任委员、福建省心血管病介入质控中心副主任委员、福建省中西医结合学会高血压专业委员会副主任委员、福建省心电生理与起搏分会常委、福建医学会心血管病分会委员、福建省慢病管理高血压中心副主任、福建省心血管病高峰论坛执行主席、福建医科大学附属第一医院胸痛中心行政总监，发表论文70余篇，其中SCI论文15篇。参编专著1本，国家发明专利1项。擅长：高血压，心力衰竭，冠心病，心肌病等心血管疾病的诊治，心肺功能评估和心脏康复治疗。', 'upload/zuozhenyisheng_touxiang2.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (23, '2024-04-01 11:53:55', '医生工号3', '123456', '温元', '男', '19', '13823888883', 'upload/zuozhenyisheng_touxiang3.jpg', '温元，主任医师，医学硕士。2001年北京大学医学部临床医学系本科毕业，2004年福建医科大学心血管内科硕士研究生毕业，同年开始在福建医科大学附属第一医院心血管内科工作。2013年-2014年在阜外心血管病医院进修心律失常介入诊疗，师从中国医学科学院阜外心血管病医院著名专家姚焰教授。2017年3月—2018年3月任附一闽南医院医联体内二病区行政主任兼心内科主任。目前担任中华医学会心电生理和起搏分会、中国医师协会心律学专业委员会第一届中青年电生理工作委员会委员，福建省医学会心血管分会心电与心律学组委员，福建省起搏与心电生理学会委员，福建省海峡医药卫生交流协会心律学分会常务理事，福建省房颤中心联盟委员。 专业特长：心律失常的介入诊疗，包括阵发性室上速、特发性室早/室速、房颤/房扑等的射频/冷冻消融及起搏器的植入。', 'upload/zuozhenyisheng_touxiang3.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (24, '2024-04-01 11:53:55', '医生工号4', '123456', '林芸', '女', '9', '13823888884', 'upload/zuozhenyisheng_touxiang4.jpg', '林芸，硕士，福建医科大学附属第一医院心内科，副主任医师。福建省医学会心电生理与起搏分会青年委员，福建省医学会心电生理与起搏分会起搏学组委员，福建省医学会心血管精准医疗学组委员，福建省抗癌协会第一届肿瘤心脏病学专业委员会委员，福建省医师协会心血管内科医师分会第一届委员会肿瘤心脏病学组委员，福州市台江区人民检察院特邀专家，专业方向为心脏起搏和心律失常。长期致力于心血管的临床、教学和科研工作，在高血压、血脂代谢、冠心病、心力衰竭、肿瘤心脏病学等疾病的诊疗治疗上积累了比较丰富的临床经验。主持省级课题2项，主持厅级课题1项，发表SCI和CSCD论文10余篇，参与多项临床研究工作。', 'upload/zuozhenyisheng_touxiang4.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (25, '2024-04-01 11:53:55', '医生工号5', '123456', '彭峰', '男', '7', '13823888885', 'upload/zuozhenyisheng_touxiang5.jpg', '彭峰，主任医师，医学博士。中国高血压联盟理事，福建省心血管分会高血压学组成员兼秘书，国际著名杂志柳月刀（LANCET）、科学通报（Science report）、中华高血压杂志等杂志审稿专家，主要研究方向为高血压、冠心病、血脂代谢。以第一作者或通讯作者在SCI刊物上发表论文12篇，总影响因子达30分，主持福建省自然科学基金、福建省卫生青年骨干基金二项，参与二项国家自然基金，获第七、九届福建省优秀论文三等奖，2010年福建医药卫生科技奖三等奖。', 'upload/zuozhenyisheng_touxiang5.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (26, '2024-04-01 11:53:55', '医生工号6', '123456', '张志洲', '男', '8', '13823888886', 'upload/zuozhenyisheng_touxiang6.jpg', '张志州，主任医师。1965年出生，1987年毕业于福建医科大学，1989年从事心血管内科工作，2000年任福建医科大学附属第一医院心血管内科副主任医师，现在是中华医学会会员，福建省心脏起搏与心电生理协会委员，曾参加23届北美起搏与心电生理年会，第七届亚太心脏起搏与心电生理大会及国内重要的学术会议，发表论文10余篇。目前主要从事心血管内科之高血压、冠心病、心律失常的研究，擅长于心血管介入诊断和治疗（心导管检查和治疗），如冠状动脉造影，经皮冠状动脉球囊成形术及支架置入术，心脏起搏器的安置术，心律失常的射频消融治疗，先天性心脏病的导管治疗等。', 'upload/zuozhenyisheng_touxiang6.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (27, '2024-04-01 11:53:55', '医生工号7', '123456', '邹颖', '女', '11', '13823888887', 'upload/1742371569123.jpg', '<p>邹颖，医学博士，副主任医师。现任福建医科大学心血管病研究所副所长、中国康复医学会心血管病康复专业委员会毛发学组委员。2019年获得复旦大学皮肤病与性病学博士学位，同年作为福建省医疗引进生引进至福建工作至今。现主持多项省级课题及人才课题。</p>', 'upload/1712052329257.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (28, '2024-04-01 11:53:55', '医生工号8', '123456', '王娟英', '女', '12', '13823888888', 'upload/zuozhenyisheng_touxiang8.jpg', '王娟，副主任医师、副教授，医学博士。 现任福建医学会心血管分会心衰学组副组长，中国医师协会心衰专业委员会委员，福建省康复医学会重症康复专业委员会常委，福建省医师协会心血管病分会委员，福建省医学会心血管康复分会委员，福建省医学会脂肪肝病学分会委员，福州市医学会医疗事故技术鉴定专家库成员。 1996年毕业于上海交通大学医学部，获学士学位，2003年毕业于福建医科大学，获硕士学位，2014年毕业于福建医科大学，获博士学位。主要研究方向心力衰竭及心脏康复。作为主要成员参与多项国家自然基金及福建省科技厅重点项目课题，发表国内外论文10篇。', 'upload/zuozhenyisheng_touxiang8.jpg', '是', '', '', '', '');
INSERT INTO `yisheng` VALUES (1712758566189, '2024-04-10 22:16:06', '医生工号9', '123456', '黄群英', '女', '15', '15158911223', 'upload/1742370595108.jpg', '<p><span style=\"background-color: rgb(255, 255, 255);\">黄群英，副主任医师，硕士学位。</span><strong>擅长</strong>：高血压、冠心病、心律失常。<span style=\"background-color: rgb(255, 255, 255);\">毕业于福建医科大学，目前主要从事心血管内科之高血压病、冠心病、心律失常的研究，擅长于心血管介入诊断和治疗如心脏起搏器的安置术，心律失常的射频消融治疗等等。</span></p>', 'upload/1712758564933.jpg', '待审核', '', '', 'hqy1970', '');

-- ----------------------------
-- Table structure for yongyaoqingkuangjianhu
-- ----------------------------
DROP TABLE IF EXISTS `yongyaoqingkuangjianhu`;
CREATE TABLE `yongyaoqingkuangjianhu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职称',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `buliangfanying` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '不良反应',
  `yongyaoqingkuang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '用药情况',
  `shangchuanshijian` datetime(0) DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用药情况监护' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yongyaoqingkuangjianhu
-- ----------------------------
INSERT INTO `yongyaoqingkuangjianhu` VALUES (122, '2024-04-01 11:53:56', '医生工号1', '陈曦', '心血管科', '专家', 'mali', '玛丽', '有', '正常服药每日一剂，无反常现象', '2024-04-02 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (123, '2024-04-01 11:53:56', '医生工号1', '陈曦', '心血管科', '专家', 'andy', '安迪', '无', '正常服药每日一剂，无反常现象', '2024-03-31 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (124, '2024-04-01 11:53:56', '医生工号1', '陈曦', '心血管科', '专家', 'make', '麦克', '有', '正常服药每日一剂，无反常现象', '2024-03-28 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (125, '2024-04-01 11:53:56', '医生工号1', '陈曦', '心血管科', '专家', 'ldj', '李大军', '无', '正常服药每日一剂，无反常现象', '2024-03-27 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (126, '2024-04-01 11:53:56', '医生工号6', '医生姓名6', '科室6', '职称6', '患者账号6', '患者姓名6', '有', '用药情况6', '2024-04-01 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (127, '2024-04-01 11:53:56', '医生工号7', '医生姓名7', '科室7', '职称7', '患者账号7', '患者姓名7', '有', '用药情况7', '2024-04-01 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (128, '2024-03-29 11:53:56', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '无', '正常服药每日一剂，无反常现象', '2024-03-29 11:53:56');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (129, '2024-03-30 12:15:25', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '无', '正常服药每日一剂，头晕减弱，血压稍有改善', '2024-03-30 12:14:17');
INSERT INTO `yongyaoqingkuangjianhu` VALUES (130, '2024-05-08 14:55:24', '医生工号1', '陈曦', '心血管科', '专家', 'ccc', '陈晨臣', '有', '每日一服，头晕减弱', '2024-05-08 14:55:05');

-- ----------------------------
-- Table structure for yongyaozhidao
-- ----------------------------
DROP TABLE IF EXISTS `yongyaozhidao`;
CREATE TABLE `yongyaozhidao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaofangmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药方名称',
  `zhidaotupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '指导图片',
  `yongyaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '用药内容',
  `zhuyishixiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注意事项',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `zhidaoshijian` datetime(0) DEFAULT NULL COMMENT '指导时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用药指导' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yongyaozhidao
-- ----------------------------
INSERT INTO `yongyaozhidao` VALUES (71, '2024-04-01 11:53:55', '依那普利', 'upload/yongyaozhidao_zhidaotupian1.jpg,upload/yongyaozhidao_zhidaotupian2.jpg,upload/yongyaozhidao_zhidaotupian3.jpg', '<p><span class=\"ql-size-large\">一次5-20mg,1-2（次/天）</span></p>', '适用于心力衰竭和代谢综合征，妊娠、高血钾患者禁止使用', 'mali', '玛丽', '医生工号1', '陈曦', '2024-04-01 11:53:55');
INSERT INTO `yongyaozhidao` VALUES (72, '2024-04-01 11:53:55', '药方名称2', 'upload/yongyaozhidao_zhidaotupian2.jpg,upload/yongyaozhidao_zhidaotupian3.jpg,upload/yongyaozhidao_zhidaotupian4.jpg', '用药内容2', '注意事项2', '患者账号2', '患者姓名2', '医生工号2', '医生姓名2', '2024-04-01 11:53:55');
INSERT INTO `yongyaozhidao` VALUES (73, '2024-04-01 11:53:55', '药方名称3', 'upload/yongyaozhidao_zhidaotupian3.jpg,upload/yongyaozhidao_zhidaotupian4.jpg,upload/yongyaozhidao_zhidaotupian5.jpg', '用药内容3', '注意事项3', '患者账号3', '患者姓名3', '医生工号3', '医生姓名3', '2024-04-01 11:53:55');
INSERT INTO `yongyaozhidao` VALUES (74, '2024-04-01 11:53:55', '药方名称4', 'upload/yongyaozhidao_zhidaotupian4.jpg,upload/yongyaozhidao_zhidaotupian5.jpg,upload/yongyaozhidao_zhidaotupian6.jpg', '用药内容4', '注意事项4', '患者账号4', '患者姓名4', '医生工号4', '医生姓名4', '2024-04-01 11:53:55');
INSERT INTO `yongyaozhidao` VALUES (75, '2024-04-01 11:53:56', '药方名称5', 'upload/yongyaozhidao_zhidaotupian5.jpg,upload/yongyaozhidao_zhidaotupian6.jpg,upload/yongyaozhidao_zhidaotupian7.jpg', '用药内容5', '注意事项5', '患者账号5', '患者姓名5', '医生工号5', '医生姓名5', '2024-04-01 11:53:56');
INSERT INTO `yongyaozhidao` VALUES (76, '2024-04-01 11:53:56', '药方名称6', 'upload/yongyaozhidao_zhidaotupian6.jpg,upload/yongyaozhidao_zhidaotupian7.jpg,upload/yongyaozhidao_zhidaotupian8.jpg', '用药内容6', '注意事项6', '患者账号6', '患者姓名6', '医生工号6', '医生姓名6', '2024-04-01 11:53:56');
INSERT INTO `yongyaozhidao` VALUES (77, '2024-04-01 11:53:56', '药方名称7', 'upload/yongyaozhidao_zhidaotupian7.jpg,upload/yongyaozhidao_zhidaotupian8.jpg,upload/yongyaozhidao_zhidaotupian9.jpg', '用药内容7', '注意事项7', '患者账号7', '患者姓名7', '医生工号7', '医生姓名7', '2024-04-01 11:53:56');
INSERT INTO `yongyaozhidao` VALUES (78, '2024-04-01 11:53:56', '药方名称8', 'upload/yongyaozhidao_zhidaotupian8.jpg,upload/yongyaozhidao_zhidaotupian9.jpg,upload/yongyaozhidao_zhidaotupian10.jpg', '用药内容8', '注意事项8', '患者账号8', '患者姓名8', '医生工号8', '医生姓名8', '2024-04-01 11:53:56');
INSERT INTO `yongyaozhidao` VALUES (79, '2024-04-02 11:58:17', '大承气汤', 'upload/1715053887905.jpg', '<p><strong>【处方组成】</strong>大黄15克，厚朴12克，枳实15克，芒硝10克。</p><p><strong>【用法用量】</strong>每日1剂。煎取250毫升，分2次服。</p>', '凡气虚阴亏，燥结不甚，以及年老、体弱等均应慎用；孕妇禁用；并注意中病即止，不宜过剂，以免伤正。', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-03-30 11:55:07');
INSERT INTO `yongyaozhidao` VALUES (80, '2024-04-02 12:01:29', '五苓散', 'upload/1715053878563.jpg', '<p><strong>【组成】</strong>茯苓9克、猪苓9克、泽泻12克、白术9克、桂枝6克。</p><p><strong>【用法】</strong>散剂，每服6~10g；汤剂，水煎服，多饮热水，取微汗。</p>', '汤剂不宜久煎。湿热者忌用，且本方不宜常服。', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-04-02 12:00:51');
INSERT INTO `yongyaozhidao` VALUES (81, '2024-05-08 14:57:51', '五苓散', 'upload/1742370510289.jpg', '<p>【组成】茯苓9克、猪苓9克、泽泻12克、白术9克、桂枝6克。</p><p>【用法】散剂，每服6~10g；汤剂，水煎服，多饮热水，取微汗。</p><p>【功效】利水渗湿，温阳化气。</p>', '汤剂不宜久煎。湿热者忌用，且本方不宜常服。', 'ccc', '陈晨臣', '医生工号1', '陈曦', '2024-05-08 14:57:29');

-- ----------------------------
-- Table structure for yuyueyisheng
-- ----------------------------
DROP TABLE IF EXISTS `yuyueyisheng`;
CREATE TABLE `yuyueyisheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职称',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `guahaofeiyong` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '挂号费用',
  `huanzhezhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者姓名',
  `huanzheshouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '患者手机',
  `yuyueshijian` datetime(0) DEFAULT NULL COMMENT '预约时间',
  `bingqingmiaoshu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '病情描述',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约医生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuyueyisheng
-- ----------------------------
INSERT INTO `yuyueyisheng` VALUES (42, '2024-04-01 11:53:55', '医生工号2', '医生姓名2', '科室2', '专家', 'upload/zuozhenyisheng_touxiang2.jpg', '50', '患者账号2', '患者姓名2', '患者手机2', '2024-04-01 11:53:55', '病情描述2', '是', '');
INSERT INTO `yuyueyisheng` VALUES (43, '2024-04-01 11:53:55', '医生工号3', '医生姓名3', '科室3', '专家', 'upload/zuozhenyisheng_touxiang3.jpg', '50', '患者账号3', '患者姓名3', '患者手机3', '2024-04-01 11:53:55', '病情描述3', '是', '');
INSERT INTO `yuyueyisheng` VALUES (44, '2024-04-01 11:53:55', '医生工号4', '医生姓名4', '科室4', '专家', 'upload/zuozhenyisheng_touxiang4.jpg', '50', '患者账号4', '患者姓名4', '患者手机4', '2024-04-01 11:53:55', '病情描述4', '是', '');
INSERT INTO `yuyueyisheng` VALUES (45, '2024-04-01 11:53:55', '医生工号5', '医生姓名5', '科室5', '专家', 'upload/yuyueyisheng_touxiang5.jpg,upload/yuyueyisheng_touxiang6.jpg,upload/yuyueyisheng_touxiang7.jpg', '50', '患者账号5', '患者姓名5', '患者手机5', '2024-04-01 11:53:55', '病情描述5', '是', '');
INSERT INTO `yuyueyisheng` VALUES (46, '2024-04-01 11:53:55', '医生工号6', '医生姓名6', '科室6', '专家', 'upload/zuozhenyisheng_touxiang6.jpg', '50', '患者账号6', '患者姓名6', '患者手机6', '2024-04-01 11:53:55', '病情描述6', '是', '');
INSERT INTO `yuyueyisheng` VALUES (47, '2024-04-01 11:53:55', '医生工号7', '医生姓名7', '科室7', '专家', 'upload/1715053513026.jpg', '50', '患者账号7', '患者姓名7', '患者手机7', '2024-04-01 11:53:55', '病情描述7', '是', '');
INSERT INTO `yuyueyisheng` VALUES (48, '2024-04-01 11:53:55', '医生工号8', '医生姓名8', '科室8', '专家', 'upload/zuozhenyisheng_touxiang8.jpg', '50', '患者账号8', '患者姓名8', '患者手机8', '2024-04-01 11:53:55', '病情描述8', '是', '');
INSERT INTO `yuyueyisheng` VALUES (50, '2024-04-02 11:15:19', '医生工号1', '陈曦', '心血管科', '专家', 'upload/yisheng_touxiang1.jpg', '35', 'ccc', '陈晨臣', '1301234567', '2024-04-05 10:00:05', '头疼、头晕目眩、四肢乏力。\n既往史高血压，无过敏史', '是', '吃药观察几天，多休息');
INSERT INTO `yuyueyisheng` VALUES (51, '2024-04-02 17:33:54', '医生工号1', '陈曦', '心血管科', '专家', 'upload/yisheng_touxiang1.jpg', '50', 'mali', '玛丽', '18100001234', '2024-04-05 08:32:46', '头晕，四肢乏力，恶心，血压高。无过敏史，无既往史', '待审核', '');
INSERT INTO `yuyueyisheng` VALUES (53, '2024-05-08 12:05:07', '医生工号1', '陈曦', '心血管科', '专家', 'upload/yisheng_touxiang1.jpg', '50', 'ldj', '李大军', '13156452020', '2024-05-08 12:00:52', '头晕', '待审核', '');
INSERT INTO `yuyueyisheng` VALUES (54, '2024-05-08 14:54:22', '医生工号1', '陈曦', '心血管科', '专家', 'upload/yisheng_touxiang1.jpg', '50', 'ccc', '陈晨臣', '1301234567', '2024-05-08 14:54:15', '低危风险，头疼、头晕目眩、四肢乏力。无高血压既往史，无过敏史', '是', '观察');

-- ----------------------------
-- Table structure for zuozhenyisheng
-- ----------------------------
DROP TABLE IF EXISTS `zuozhenyisheng`;
CREATE TABLE `zuozhenyisheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医龄',
  `guahaofeiyong` int(11) NOT NULL COMMENT '挂号费用',
  `yishengdianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '医生电话',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '头像',
  `paibanshiduan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '排班时段',
  `yishengjianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '医生简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '坐诊医生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zuozhenyisheng
-- ----------------------------
INSERT INTO `zuozhenyisheng` VALUES (32, '2024-04-01 11:53:55', '医生工号2', '曹军', '心血管科', '主任医师', '男', '20', 45, '13823888882', 'upload/zuozhenyisheng_touxiang2.jpg', '周天全天', '<p><span style=\"background-color: rgb(255, 255, 255);\">曹军，福建医科大学附属第一医院心血管内科行政副主任，主任医师，3级教授，硕士研究生导师，担任中华高血压杂志常务编委兼编辑部副主任、中国生物工程学会体外反搏分会委员、中国心脏联盟心血管疾病预防与康复学会委员、中国心脏联盟心血管疾病预防与康复学会福建分联盟副主任委员、福建省心血管病介入质控中心副主任委员、福建省中西医结合学会高血压专业委员会副主任委员、福建省心电生理与起搏分会常委、福建医学会心血管病分会委员、福建省慢病管理高血压中心副主任、福建省心血管病高峰论坛执行主席、福建医科大学附属第一医院胸痛中心行政总监，发表论文70余篇，其中SCI论文15篇。参编专著1本，国家发明专利1项。</span>擅长：高血压，心力衰竭，冠心病，心肌病等心血管疾病的诊治，心肺功能评估和心脏康复治疗。</p>');
INSERT INTO `zuozhenyisheng` VALUES (33, '2024-04-01 11:53:55', '医生工号3', '温元', '心血管科', '主任医师', '男', '19', 45, '13823888883', 'upload/zuozhenyisheng_touxiang3.jpg', '周四全天', '<p>温元，主任医师，医学硕士。2001年北京大学医学部临床医学系本科毕业，2004年福建医科大学心血管内科硕士研究生毕业，同年开始在福建医科大学附属第一医院心血管内科工作。2013年-2014年在阜外心血管病医院进修心律失常介入诊疗，师从中国医学科学院阜外心血管病医院著名专家姚焰教授。2017年3月—2018年3月任附一闽南医院医联体内二病区行政主任兼心内科主任。目前担任中华医学会心电生理和起搏分会、中国医师协会心律学专业委员会第一届中青年电生理工作委员会委员，福建省医学会心血管分会心电与心律学组委员，福建省起搏与心电生理学会委员，福建省海峡医药卫生交流协会心律学分会常务理事，福建省房颤中心联盟委员。 专业特长：心律失常的介入诊疗，包括阵发性室上速、特发性室早/室速、房颤/房扑等的射频/冷冻消融及起搏器的植入。</p>');
INSERT INTO `zuozhenyisheng` VALUES (34, '2024-04-01 11:53:55', '医生工号4', '林芸', '心血管科', '主治医师', '女', '9', 35, '13823888884', 'upload/zuozhenyisheng_touxiang4.jpg', '周一周二全天', '<p><span style=\"background-color: rgb(255, 255, 255);\">林芸，硕士，福建医科大学附属第一医院心内科，副主任医师。福建省医学会心电生理与起搏分会青年委员，福建省医学会心电生理与起搏分会起搏学组委员，福建省医学会心血管精准医疗学组委员，福建省抗癌协会第一届肿瘤心脏病学专业委员会委员，福建省医师协会心血管内科医师分会第一届委员会肿瘤心脏病学组委员，福州市台江区人民检察院特邀专家，专业方向为心脏起搏和心律失常。长期致力于心血管的临床、教学和科研工作，在高血压、血脂代谢、冠心病、心力衰竭、肿瘤心脏病学等疾病的诊疗治疗上积累了比较丰富的临床经验。主持省级课题2项，主持厅级课题1项，发表SCI和CSCD论文10余篇，参与多项临床研究工作。</span></p>');
INSERT INTO `zuozhenyisheng` VALUES (35, '2024-04-01 11:53:55', '医生工号5', '彭峰', '心血管科', '主治医师', '男', '7', 35, '13823888885', 'upload/zuozhenyisheng_touxiang5.jpg', '周三周四全天', '<p><span style=\"background-color: rgb(255, 255, 255);\">彭峰，主任医师，医学博士。中国高血压联盟理事，福建省心血管分会高血压学组成员兼秘书，国际著名杂志柳月刀（LANCET）、科学通报（Science report）、中华高血压杂志等杂志审稿专家，主要研究方向为高血压、冠心病、血脂代谢。以第一作者或通讯作者在SCI刊物上发表论文12篇，总影响因子达30分，主持福建省自然科学基金、福建省卫生青年骨干基金二项，参与二项国家自然基金，获第七、九届福建省优秀论文三等奖，2010年福建医药卫生科技奖三等奖。</span></p>');
INSERT INTO `zuozhenyisheng` VALUES (36, '2024-04-01 11:53:55', '医生工号6', '张志洲', '心血管科', '主治医师', '男', '8', 35, '13823888886', 'upload/zuozhenyisheng_touxiang6.jpg', '周二周五全天', '<p><span style=\"background-color: rgb(255, 255, 255);\">张志州，主任医师。1965年出生，1987年毕业于福建医科大学，1989年从事心血管内科工作，2000年任福建医科大学附属第一医院心血管内科副主任医师，现在是中华医学会会员，福建省心脏起搏与心电生理协会委员，曾参加23届北美起搏与心电生理年会，第七届亚太心脏起搏与心电生理大会及国内重要的学术会议，发表论文10余篇。目前主要从事心血管内科之高血压、冠心病、心律失常的研究，擅长于心血管介入诊断和治疗（心导管检查和治疗），如冠状动脉造影，经皮冠状动脉球囊成形术及支架置入术，心脏起搏器的安置术，心律失常的射频消融治疗，先天性心脏病的导管治疗等。</span></p>');
INSERT INTO `zuozhenyisheng` VALUES (37, '2024-04-01 11:53:55', '医生工号7', '邹颖', '心血管科', '副主任医师', '女', '11', 40, '13823888887', 'upload/1742370637102.jpg', '周一周六全天', '<p><span style=\"background-color: rgb(255, 255, 255);\">邹颖，医学博士，副主任医师。现任福建医科大学心血管病研究所副所长、中国康复医学会心血管病康复专业委员会毛发学组委员。2019年获得复旦大学皮肤病与性病学博士学位，同年作为福建省医疗引进生引进至福建工作至今。现主持多项省级课题及人才课题。</span></p>');
INSERT INTO `zuozhenyisheng` VALUES (38, '2024-04-01 11:53:55', '医生工号8', '王娟英', '全科医学科', '副主任医师', '女', '12', 40, '13823888888', 'upload/zuozhenyisheng_touxiang8.jpg', '周六全天', '<p>王娟英，副主任医师、副教授，医学博士。<strong>擅长</strong>：<span style=\"background-color: rgb(255, 255, 255);\">全科医学（高血压、糖尿病、血脂异常；晕厥、水肿）、心血管病。</span>现任福建医学会心血管分会心衰学组副组长，中国医师协会心衰专业委员会委员，福建省康复医学会重症康复专业委员会常委，福建省医师协会心血管病分会委员，福建省医学会心血管康复分会委员，福建省医学会脂肪肝病学分会委员，福州市医学会医疗事故技术鉴定专家库成员。 1996年毕业于上海交通大学医学部，获学士学位，2003年毕业于福建医科大学，获硕士学位，2014年毕业于福建医科大学，获博士学位。主要研究方向心力衰竭及心脏康复。作为主要成员参与多项国家自然基金及福建省科技厅重点项目课题，发表国内外论文10篇。</p>');
INSERT INTO `zuozhenyisheng` VALUES (40, '2024-04-02 11:06:03', '医生工号1', '陈曦', '心血管科', '专家', '男', '25', 50, '13823888881', 'upload/yisheng_touxiang1.jpg', '周五8:00-12:00', '<p><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">陈曦，专家、教授，医学博士，硕士生、博士生导师。</span><strong style=\"background-color: rgb(245, 245, 245);\">擅长：</strong><span style=\"background-color: rgb(245, 245, 245);\">高血压及并发症诊治、甲状腺疾病、消瘦诊治、肾上腺疾病、垂体疾病及骨质疏松诊治。</span><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">现任福建医科大学附属第一医院心内科行政主任、心内介入支部书记、福建省高血压研究所副所长，福建省高血压防治中心副主任等。兼任中国高血压联盟副主席、国际高血压学会成员、中国医师协会心血管分会委员兼高血压学组副组长、中华医学会心血管学会高血压学组委员、中华预防医学会循证医学专业委员会委员、福建省心血管分会副主任委员兼高血压学组组长、中国中西医结合学会福建省心血管分会副主任委员等。中华心血管病杂志、中国循环杂志等编委。国家自然基金课题评审专家、国家卫生健康委课题和成果评审专家，福建省科技厅、卫生健康委课题、成果及医疗事故鉴定专家。&nbsp;</span></p>');

SET FOREIGN_KEY_CHECKS = 1;
