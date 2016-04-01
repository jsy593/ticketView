/*
Navicat MySQL Data Transfer

Source Server         : hostConnection
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : bheticket

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-04-01 15:53:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aaa`
-- ----------------------------
DROP TABLE IF EXISTS `aaa`;
CREATE TABLE `aaa` (
  `timeline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aaa
-- ----------------------------

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `endtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for `t_access_system`
-- ----------------------------
DROP TABLE IF EXISTS `t_access_system`;
CREATE TABLE `t_access_system` (
  `uuid` varchar(32) NOT NULL,
  `systemIndex` int(11) DEFAULT NULL COMMENT '系统索引号',
  `systemName` varchar(32) DEFAULT NULL COMMENT '请求接入系统名称',
  `appId` varchar(32) DEFAULT NULL COMMENT '系统的id',
  `appKey` varchar(32) DEFAULT NULL COMMENT 'key',
  `userId` varchar(32) DEFAULT NULL COMMENT '提交申请的用户Id',
  `status` int(1) DEFAULT NULL COMMENT '状态（0待审核 1正常 2冻结 3 未通过 4部门管理员删除）',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接入系统相关信息';

-- ----------------------------
-- Records of t_access_system
-- ----------------------------
INSERT INTO `t_access_system` VALUES ('0bb99566a014489397ebc3628a1da873', '3', '啦啦啦', 'a17aba77cd124140ba83491a6840c22f', '8641c46ce9a54c858264d26ac20a75be', 'a1755f4532e14434a7839c7c2926b80f', '0', null, '2015-10-17 10:08:52');
INSERT INTO `t_access_system` VALUES ('0e4fbd15e43746158fdf8ee5b452fc5e', null, '3', null, null, 'd51b3cb9ea824a16ae568b779323c252', '0', null, '2016-03-23 15:35:31');
INSERT INTO `t_access_system` VALUES ('0e647e1344634245ad2172d2dc55be23', '2', '天猫网', 'f0668488ef04423ab30c43fc2c383c8d', '8f030b6fbfa840d5844d173bba41426b', 'd51b3cb9ea824a16ae568b779323c252', '1', null, '2015-09-23 17:53:07');
INSERT INTO `t_access_system` VALUES ('0e647e1344634245ad21hjd2dc55be3f', '20', 'bjy', 'e5016bc1625e402bbc403a5aa0affacc', 'cd6122e0b5f44dfdb1af3ebfd35ea233', 'd51b3cb9ea824a16aedfjdoeiwr98343', '1', null, '2015-09-28 14:09:45');
INSERT INTO `t_access_system` VALUES ('25d07a4c9c3e4e0c8cf48f032262588d', '2', 'test', '99e4246890de461aad4216ce16824b68', 'f53b41c5ae874e78ab4335438bbe9031', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:38:58');
INSERT INTO `t_access_system` VALUES ('2a9e6b487fbc4bc0840fce7a7860aef2', '2', 'teset2', 'cdb028780b2f457ca614c3ba35895804', 'b58d6211b5e24a6390f5de6f4995d644', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:40:40');
INSERT INTO `t_access_system` VALUES ('2ebb1386970e4d029b1a1b56e0f0db83', '7', '11111', 'f890dff3b15849d2ac8b64bc2a0f2909', 'f3f903b31d6c4960abd85bb263efcd95', 'a1755f4532e14434a7839c7c2926b80f', '0', null, '2015-10-16 17:27:26');
INSERT INTO `t_access_system` VALUES ('410dc8603c804f6dabb9a6f0ba843d53', '14', 'aaa', '7204c15336b849c0b115b6e8b45ee298', 'c60a08ab952f4086890f4ded41c454e5', 'a1755f4532e14434a7839c7c2926b80f', '2', null, '2015-10-17 10:10:15');
INSERT INTO `t_access_system` VALUES ('66a62809bd514bae92da8aec36378040', null, '1111', 'a919640e792f4ce9b3f914442e4b2252', 'dab4cd55fbee49f5988da23f430e6eff', 'a1755f4532e14434a7839c7c2926b80f', '3', null, '2015-10-16 10:18:55');
INSERT INTO `t_access_system` VALUES ('6a8df5fc7483458b861ecbc8e3092b1a', '21', '聚宝网', '75baacbe99db4a4388e759747f23e9e0', 'fa753939719d407086f9c05ca262823d', 'd51b3cb9ea824a16ae568b779323c252', '1', null, '2015-10-17 09:33:51');
INSERT INTO `t_access_system` VALUES ('772d51416c95471c94ac7ef7797c2881', '3', '这是一个大系统', '58378e5cb32a42928f092e629ed60af5', '9c04605cf6e349dfaaee4672f3162442', 'd51b3cb9ea824a16ae568b779323c252', '0', null, '2015-10-16 10:41:13');
INSERT INTO `t_access_system` VALUES ('7e417e3864834fd0bf2a7914141ce7a4', '2', '123456', '9eff2316db4246aea051af6cd4a76d88', 'a412ae3ed5754034b4fbf145693d9142', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 11:32:59');
INSERT INTO `t_access_system` VALUES ('8f7e2afdb390472980f584c254f8d15d', '4', '111', 'cbb668a28ed44b3091cb191d9b5047dc', '629ae29ada4242a99a712cabf7d31f7f', 'a1755f4532e14434a7839c7c2926b80f', '0', null, '2015-10-16 10:19:01');
INSERT INTO `t_access_system` VALUES ('8fefe4f27be94ea3913ec1837b977e31', '11', 'test3', 'fa8a5549254c4888b72a5486ecff4b58', 'cd11f2994c4949b1ba4cd6a1034f64e6', 'a1755f4532e14434a7839c7c2926b80f', '0', null, '2015-10-17 09:42:20');
INSERT INTO `t_access_system` VALUES ('a9f423ef9ed04a2bb6918b17e043b218', null, '23123', null, null, 'd51b3cb9ea824a16ae568b779323c252', '0', null, '2016-03-25 09:11:52');
INSERT INTO `t_access_system` VALUES ('bfa06cdb2a08458ca48b11bb739e4b75', '12', 'teset3', 'a2a948ffceef4f90a9baa009521ea0fe', 'b79f061b3a8e4aaba4a5b299084c1f39', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:52:24');
INSERT INTO `t_access_system` VALUES ('ca095e544af24b46a112c0f31b119baf', null, '234', null, null, 'd51b3cb9ea824a16ae568b779323c252', '0', null, '2016-03-23 15:33:43');
INSERT INTO `t_access_system` VALUES ('e47d936d825f4d2ebc8c8eb1dc9e280d', null, 'jsy', null, null, 'd51b3cb9ea824a16ae568b779323c252', '0', null, '2016-03-25 09:11:41');
INSERT INTO `t_access_system` VALUES ('ed4262d796dd4c1c979189a3b4c8a50a', '5', '百合网', 'c7ddcd9fe5074360b665ff0737d8e6b4', '10ad5b836a754b11b8a88b301fccaf8f', 'd51b3cb9ea824a16ae568b779323c252', '1', null, '2015-10-16 10:30:50');
INSERT INTO `t_access_system` VALUES ('febf9cace1e8404eb0b835b0b01fdc08', null, '1234', null, null, 'd51b3cb9ea824a16ae568b779323c252', '0', null, '2016-03-23 15:31:29');

-- ----------------------------
-- Table structure for `t_commsequence`
-- ----------------------------
DROP TABLE IF EXISTS `t_commsequence`;
CREATE TABLE `t_commsequence` (
  `name` varchar(32) NOT NULL,
  `id` bigint(20) NOT NULL,
  `note` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_commsequence
-- ----------------------------
INSERT INTO `t_commsequence` VALUES ('t_access_system', '21', '接入系统');
INSERT INTO `t_commsequence` VALUES ('workerNo', '10070', '员工工号');

-- ----------------------------
-- Table structure for `t_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL COMMENT '部门名称',
  `createTime` datetime DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '0关闭，1正常 -1删除',
  `systemIndex` int(11) DEFAULT NULL COMMENT '系统uuId',
  `allotType` int(1) DEFAULT '0' COMMENT '分配类型 0手动分配  1 自动分配 ',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门\r\n';

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('03d129285cc14e12ae4bb4e11f8b1766', '啊啊啊', '2015-10-16 14:39:29', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('11627a2d5c12448e8a617f2af1888126', '市场2', '2015-10-16 11:06:21', null, '1', '4', '0');
INSERT INTO `t_department` VALUES ('24ad94ca4c0e42deb64022502732407d', 'test', '2015-09-29 09:21:58', null, '-1', '2', '0');
INSERT INTO `t_department` VALUES ('278b36b959b9432982938cb9c2c8e86d', '市场部', '2015-10-16 10:07:18', null, '1', '1', '0');
INSERT INTO `t_department` VALUES ('2b2d31b6440a4c5db869b4ffb7fb4fe9', '1', '2015-10-16 14:40:36', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('34a451094c004e69847a1d9e2f4d1133', '市场部门', '2015-10-16 11:09:13', null, '1', '4', '1');
INSERT INTO `t_department` VALUES ('361fd0b07e8f47e2aa5da123acf06a32', '', '2016-03-27 13:18:09', null, '-1', '21', '0');
INSERT INTO `t_department` VALUES ('3fa102abd5714cf3bf331319ac1c9190', 'as', '2016-03-27 15:01:21', null, '-1', '21', '0');
INSERT INTO `t_department` VALUES ('3ff99cce77b7443f94ae11c84dad681a', 'c', '2016-03-25 10:21:20', null, '1', '21', '0');
INSERT INTO `t_department` VALUES ('435140e745704a6f839503e3ba4c0385', '营销部', '2016-03-25 09:46:25', null, '1', '2', '0');
INSERT INTO `t_department` VALUES ('4a773048b1f34fe6881f1ea881dc0281', '啊咧', '2015-10-20 10:08:51', null, '0', '2', '0');
INSERT INTO `t_department` VALUES ('6093906229854b1794fc22d1f52dd900', '12', '2015-09-30 17:01:38', null, '1', '2', '0');
INSERT INTO `t_department` VALUES ('6480c78db4a6440bb5d41d4b8ee585e1', '产品部', '2015-10-16 10:06:23', null, '1', '1', '0');
INSERT INTO `t_department` VALUES ('735ea3e3cf3a40a2b5508384e7b21faa', '1', '2015-10-20 10:33:32', null, '1', '3', '0');
INSERT INTO `t_department` VALUES ('7f9b84daaca44d7cabe3bd45ccae9162', '部门2', '2015-10-20 16:09:36', null, '1', '12', '0');
INSERT INTO `t_department` VALUES ('8680b22b45d14642b8fb6b9e99db18ea', 's', '2016-03-25 09:47:31', null, '-1', '2', '0');
INSERT INTO `t_department` VALUES ('88ab27caa02b443b8ab749c22e4f461f', '财务部', '2016-03-25 09:43:40', null, '1', '2', '0');
INSERT INTO `t_department` VALUES ('89782374747d43aaa66f1f89936e9b41', '1', '2015-10-16 11:05:53', null, '1', '4', '0');
INSERT INTO `t_department` VALUES ('8cf3e985f3dd478398f39a59e0a83748', 'sd', '2016-03-25 10:18:30', null, '0', '21', '0');
INSERT INTO `t_department` VALUES ('8d19f5c3715042799f99db35fdd1e41c', '产品部', '2015-09-23 18:22:17', null, '0', '2', '0');
INSERT INTO `t_department` VALUES ('8d8f897db9874f2995f49568f23fc83e', 'hehe', '2015-10-16 11:17:39', null, '-1', '2', '0');
INSERT INTO `t_department` VALUES ('8f0360c5ef524bbda32d67f1c905d502', '', '2016-03-27 13:50:07', null, '-1', '21', '0');
INSERT INTO `t_department` VALUES ('953aad58e74b4a54984719ae0673e305', '测试部', '2015-10-16 15:05:50', null, '1', '6', '0');
INSERT INTO `t_department` VALUES ('aac3d0fdaf764a7191955e67867759c5', '技术部', '2015-09-23 18:10:47', null, '1', '2', '1');
INSERT INTO `t_department` VALUES ('c4faf72024bf4ee6bdacbb0a21f28c6c', '通讯部', '2016-03-25 09:45:11', null, '0', '2', '0');
INSERT INTO `t_department` VALUES ('d0e18ad0c03645ad950fd6b67265bf23', 'sa', '2016-03-25 10:18:03', null, '1', '21', '0');
INSERT INTO `t_department` VALUES ('dd4017e7a459410886bbb06b53ffe204', '12345上山打老虎', '2015-10-16 13:49:09', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('eb16536b27ce4d2389d4d125db03546e', '啊', '2015-10-16 10:43:32', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('f156a75ddd5d4bd8b861b5a3f1279b01', 'a', '2016-03-25 10:07:52', null, '1', '2', '0');
INSERT INTO `t_department` VALUES ('fb8f963e7fae4fa1ab1139650e1550e3', '产品设计', '2015-10-16 11:07:52', null, '0', '4', '0');

-- ----------------------------
-- Table structure for `t_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_knowledge`;
CREATE TABLE `t_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(12) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='知识库';

-- ----------------------------
-- Records of t_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_question_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_question_type`;
CREATE TABLE `t_question_type` (
  `uuid` varchar(32) NOT NULL,
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  `typeName` varchar(32) DEFAULT NULL COMMENT '问题分类名称',
  `parentId` varchar(32) DEFAULT NULL COMMENT '问题大分类（如果是小分类，则为父类问题类型Id）',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '0禁用，1正常，2已删除',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `systemIndex` int(11) DEFAULT NULL COMMENT '系统Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问题分类\r\n';

-- ----------------------------
-- Records of t_question_type
-- ----------------------------
INSERT INTO `t_question_type` VALUES ('003fc8f60ce54ba689f29894df9bb8b8', '0', '3', '0', '2015-10-16 10:44:40', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('0804e6f833ee4d88b0623f96f7088039', '0', '1', '0', '2015-10-16 10:52:17', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('10c807658727496a946d62aab76f39e3', '34a451094c004e69847a1d9e2f4d1133', '222', '0', '2015-10-16 10:30:22', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('1776d4cd11c14d73b53f9e67e2f866fd', '435140e745704a6f839503e3ba4c0385', '123', '0', '2016-03-28 17:22:27', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('1afe1e09995243ffba76a28bc2c3a228', '0', '2', 'dc8c608ec1b14b7ea9f4119c23c7a1c0', '2015-10-16 15:11:16', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('1b6e77eb6a0841c79e50c7d6292c3c12', '435140e745704a6f839503e3ba4c0385', 'sdcfc', '0', '2016-03-28 17:17:30', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('2e7dffdda0804ff1afecac43c3948b67', '0', 'abcde', '0', '2015-10-17 11:33:32', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('2fb9f05e729d4f378cba5a8e8634c822', '88ab27caa02b443b8ab749c22e4f461f', '财务一', '0', '2016-03-28 16:04:19', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('3713a0a8c0b14c4693cab0331b9abb16', '0', '小付', '0', '2015-10-16 15:06:51', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('398f60046695486ea7c4e701bf934953', '0', '12345', '986b2f51d720494e9d5b4315308a0a0a', '2015-10-17 11:48:51', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('431f2502a8c249f9a6d0dff7ed6cbd53', '34a451094c004e69847a1d9e2f4d1133', '大分类1', '0', '2015-10-20 16:04:56', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('44497e3a55284f1cb71e18dbd91efb9c', '0', '2', '3713a0a8c0b14c4693cab0331b9abb16', '2015-10-16 15:10:59', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('4e64b399bce946e9bb4037876a2bf280', 'aac3d0fdaf764a7191955e67867759c5', '分类1', '0', '2015-09-28 17:38:06', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('4e8a97b6db6e4c14bce9384f9c4ca0a1', '0', '333', '0', '2015-10-16 14:14:09', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('516f93bc0fdc41e285372bc5d176d7c4', '0', '444', '0', '2015-10-16 14:14:13', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('57eb899139c346178266df2ee39f1eba', '8d19f5c3715042799f99db35fdd1e41c', 'product1', '0', '2016-03-23 17:25:49', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('59717859216146f38b0df827075d187e', '0', '一只老虎', '0', '2015-10-16 13:49:53', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('5da37808033b4a56bf2c5c95cd209d9e', '34a451094c004e69847a1d9e2f4d1133', '12345678910', '0', '2015-10-17 11:35:50', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('60db2ddf74b64253a8d2c433dba1c037', '0', '123123', '10c807658727496a946d62aab76f39e3', '2015-10-17 11:16:43', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('65f6dbc993b24f75b678dc352678cacf', '435140e745704a6f839503e3ba4c0385', 'asd', '0', '2016-03-28 16:54:44', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('682bf987808e44e49e606976bd386331', '0', '111', '986b2f51d720494e9d5b4315308a0a0a', '2015-10-17 11:48:15', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('695bf68195a94acf84d0ad9cb2261755', '435140e745704a6f839503e3ba4c0385', 'w', '0', '2016-03-28 17:13:13', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('737ca3058ab4421789bce914ee31cf18', '0', '客户服务', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:05:39', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('74415c5ea94a458bbb05f90759ca7e95', '8d19f5c3715042799f99db35fdd1e41c', 'rt', '0', '2016-03-28 16:55:44', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('7620f3c49dbd4a7a8aceac71788c95a6', '0', 'abcde', '0', '2015-10-17 11:33:31', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('77fc2de4952e40ada863c52f67d0c66c', '0', '小分类1', 'c7b22e3730d74f17b148639f154adea1', '2015-09-28 17:43:08', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('7999d739c75f4d98b9c3e26b84b1ef1a', '0', '三只老虎', '0', '2015-10-16 13:50:17', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('7af3539478284980babe9177b575a57b', '0', '3', 'dc8c608ec1b14b7ea9f4119c23c7a1c0', '2015-10-16 15:11:21', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('7de0358c90624357a8f92ac59b4b0875', '0', '1234', '0', '2015-10-16 14:44:04', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('890a7002bfd7448ca63505c1754ebc69', '0', '53453', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:29:32', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('8b2b75945aae4041ba361a1c60cecef0', 'aac3d0fdaf764a7191955e67867759c5', '大分类1', '0', '2015-09-28 17:37:38', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('8c9c681f2f534f83a6e938cecb931e48', '0', '8', '0', '2015-10-16 10:53:21', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('905d32d054944a2e93d89c00c458022a', '0', '1', '3713a0a8c0b14c4693cab0331b9abb16', '2015-10-16 15:10:54', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('94b02b88e2cb4c36a5e37f8c22452196', '0', '小分类1', '431f2502a8c249f9a6d0dff7ed6cbd53', '2015-10-20 16:05:31', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('98554d3987d4441ba1b3fe0eb0f089c7', '0', '11111', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:30:19', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('986b2f51d720494e9d5b4315308a0a0a', '34a451094c004e69847a1d9e2f4d1133', '111', '0', '2015-10-16 14:13:59', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('99e44769eda745708b22090f129740cd', '0', '啊啊啊', '7de0358c90624357a8f92ac59b4b0875', '2015-10-16 14:45:11', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('9c488a784fd64d46b5eb8bd98d3db387', '0', '123456', '0', '2015-10-17 11:34:18', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('9ea57c86c5854afd95ec513f4839e455', '435140e745704a6f839503e3ba4c0385', 'f', '0', '2016-03-28 17:15:41', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('a2ac56bac0c84b398607a57f868319c8', '0', '000', '0', '2015-10-17 11:34:51', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('a5394a33aac34a8ba3b1c0eb9b3e048f', '0', '技术疑问', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:05:23', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('a6db2e098c704050a5472a7b4294cbaa', '0', '4', '0', '2015-10-16 10:46:27', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('a88bc363563a4733bc1737678573bd1e', 'aac3d0fdaf764a7191955e67867759c5', 'q', '0', '2016-03-28 16:55:27', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('ae09622e7c4d45a4bb0de34dc8745c53', '0', '223', '986b2f51d720494e9d5b4315308a0a0a', '2015-10-17 11:19:51', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('aed7e386262f4a05b11bde7e9c7300a9', '435140e745704a6f839503e3ba4c0385', 'ss', '0', '2016-03-28 17:14:33', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('b15f1756d80b4ca5bf8c7a89a4582632', '0', '小分类11', '8b2b75945aae4041ba361a1c60cecef0', '2015-09-28 17:44:37', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('b23b80c8c2964063b877d8c29df8f261', '0', '电脑故障', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:05:07', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('b5ff929116684ed98713a469bafcb14d', '0', '天蓝蓝', '0', '2015-10-16 13:57:12', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('bd8d1bc4874046bc9199f73bd08f7aa9', '435140e745704a6f839503e3ba4c0385', 'asdsa', '0', '2016-03-28 16:54:57', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('c24be6d5416a4c9b9989c0c6c8b4131f', '0', '1', 'dc8c608ec1b14b7ea9f4119c23c7a1c0', '2015-10-16 15:11:12', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('c401258e1eb048368d626e737ba12c49', '0', '这也是一个测试用的分类', 'd554e1510aad4965bd8b810948c05dc1', '2015-10-20 14:37:10', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('c7b22e3730d74f17b148639f154adea1', 'aac3d0fdaf764a7191955e67867759c5', '电脑不能开机', '0', '2015-09-23 18:07:07', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('c96735ea5eaa495082ebedf9da05bc16', '0', '554', '0', '2015-10-16 14:14:16', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('cb9b2f9dba944b66a9fbf3b7c370ee96', '7f9b84daaca44d7cabe3bd45ccae9162', '大分类2', '0', '2015-10-20 16:09:00', '1', null, '12');
INSERT INTO `t_question_type` VALUES ('cc1fb69fba6d41dbab1d8021ffe2a26f', '0', '没插电3333', 'c7b22e3730d74f17b148639f154adea1', '2015-09-23 18:43:03', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('cf0f4a74af094cea84a162dacb46fd94', '0', '3', '3713a0a8c0b14c4693cab0331b9abb16', '2015-10-16 15:11:05', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('d554e1510aad4965bd8b810948c05dc1', '8d19f5c3715042799f99db35fdd1e41c', '电脑中毒', '0', '2015-09-24 14:49:14', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('d64852628787411686358f0423455bcd', '0', '1', 'd83792c51e064de3832d0c515a45ffe2', '2015-10-16 10:44:23', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('d83792c51e064de3832d0c515a45ffe2', '8d19f5c3715042799f99db35fdd1e41c', '技术分类', '0', '2015-09-30 14:51:01', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('dc8c608ec1b14b7ea9f4119c23c7a1c0', '0', '小麻', '0', '2015-10-16 15:06:43', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('dfe9197cbc6d414ab3d357974fdfe81c', '8d19f5c3715042799f99db35fdd1e41c', 'asda', '0', '2016-03-28 16:55:17', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('f2c3e7159ead43078eb8af809ddf9567', '0', '两只老虎', '0', '2015-10-16 13:50:10', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('f647d7f7eb0d49928a91f3a5cc205762', '0', '2', '0', '2015-10-16 10:44:32', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('f868d29269a14ee38c0bbb202fecce38', '6093906229854b1794fc22d1f52dd900', '分类33', '0', '2015-09-28 17:38:11', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('fc0113c1771646a3a241e6eeeeaac7a2', '8d19f5c3715042799f99db35fdd1e41c', '产品有问题', '0', '2016-03-28 16:53:16', '0', null, '2');
INSERT INTO `t_question_type` VALUES ('fc410d174f9e4f9ebaa13164862c7d3a', '0', '折是一个小小的测试分类', 'c7b22e3730d74f17b148639f154adea1', '2015-10-20 14:33:00', '1', null, '2');

-- ----------------------------
-- Table structure for `t_question_type_user_map`
-- ----------------------------
DROP TABLE IF EXISTS `t_question_type_user_map`;
CREATE TABLE `t_question_type_user_map` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '用户Id',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '0失效 1正常 2已删除',
  `systemIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设置用户处理问题类型的关系';

-- ----------------------------
-- Records of t_question_type_user_map
-- ----------------------------
INSERT INTO `t_question_type_user_map` VALUES ('01efbc2393a84710b4adf9f619796b3b', 'fe0cbc21929d459591222e86f72b6d6f', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-10-19 15:14:27', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('05c1d4fb1d9e4b1e951053eed644b998', null, '052cecb0a69741068ea0351f2b7144ad', '2015-10-16 13:49:53', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('06b9eedf7e19477d80c0b4d043ca2317', '0fd089859fea4c66981668948b424cb9', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:46', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('06ca9b625b414cbbb61cc20fd466df66', '7d6550c833f64fb6991a147feefc8a2f', '5e7a96d2285344e19b4d76d353034892', '2015-10-16 14:29:32', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('081a772f49dc4861b32f350a5e0ea735', 'd9cc5adfd1c64464b1bdac3f04d375f8', 'b23b80c8c2964063b877d8c29df8f261', '2015-10-16 14:18:46', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('08f5f677188e4ceebabc11df33c7bb3d', '65fbc34563a442b6bcb511cfd17aa476', '77fc2de4952e40ada863c52f67d0c66c', '2015-10-19 15:15:08', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('0d7f9a5bed42409d8811c496d405dcee', 'e9fc0e08d1434b83b4f96e97cf139850', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:42', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('105be126c6b340b7abfe06bfd2ad5ab4', 'e9fc0e08d1434b83b4f96e97cf139850', '0739420440f84460bab5ba813afe65f2', '2015-10-16 14:05:07', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('120ef2e8b2964d71ba1580292e6959a8', '51893533745f433fad790fd59005df41', '883afafc382b4e48a23516f0549cdf83', '2015-10-19 15:11:55', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('129ec3c7abd64f4cbdc609c2f9f5eee8', 'e9fc0e08d1434b83b4f96e97cf139850', 'ae09622e7c4d45a4bb0de34dc8745c53', '2015-10-17 11:47:32', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('16f8c7b6a2a24f28a8d0950f41fe5ea6', '7d6550c833f64fb6991a147feefc8a2f', 'a5394a33aac34a8ba3b1c0eb9b3e048f', '2015-10-16 14:18:42', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('171abdfff2074815825ed3d64122140c', null, 'd339978bf37e4953960ee140a3285ac8', '2015-10-17 11:35:50', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('189d4fb3b01d419c84de25a742808378', 'e9fc0e08d1434b83b4f96e97cf139850', '737ca3058ab4421789bce914ee31cf18', '2015-10-16 14:06:29', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('19972652944f46adad5c023d88044061', '0fd089859fea4c66981668948b424cb9', '82b175b8e20d432e8bf84d040cacba59', '2015-10-17 11:48:51', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('1ad4f8c349684fd9b6645cc5a13f42be', null, 'ec266c65c4374d63b204e66db17b62d0', '2016-03-28 16:55:44', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('1c34c8abdbf64229a50757de24069a45', '65fbc34563a442b6bcb511cfd17aa476', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-10-19 15:14:26', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('1fb17aa0b3e84ce0b4479741ff38a654', 'b6ea890f72fa4f29ac0e7ebd85efb14a', 'b837859fcb8340ed89facc2fd1cb8c6b', '2015-10-16 15:11:12', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('28fe34f745984805bed79533fec38801', null, '638cdad78a8845749423a376f5613b8a', '2015-10-16 10:52:17', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('2946d29fdaab49ecaac1b4205d2b8ad3', null, 'e0f4a26758c54acf9b8e5f34e292c0c6', '2016-03-28 17:13:13', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('2a0550e2f38f4b8d94f4c4e20c6c0c4f', '793ddc1b03924fe0a5b160d3dd4696b4', '77fc2de4952e40ada863c52f67d0c66c', '2015-10-19 15:14:20', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('2ac8383637fb42b3ae4eb8700999fd97', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '3adfdff91ed54ba489fb8c32a122ae8a', '2015-10-16 15:10:54', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('3931924f58ee43ed99598854ac1931c3', '9b4d6f037b1b4faea4a806c39cfa5f38', '60db2ddf74b64253a8d2c433dba1c037', '2015-10-17 11:47:45', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('3dd05701e5e541c08d966d7de5cdba49', null, '3d967bc0b0814829950cff4e0ee07bcb', '2015-10-16 13:50:17', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('4170bd5b034e4c939080fbafb570544c', null, 'e3670d402328432e91369cadc74ad9a0', '2015-10-16 14:14:09', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('41877258301848979d6467188faee560', null, '244d98824d6c434aa4fcdd23ff4d97c5', '2015-10-16 10:44:40', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('422262cf9690498a890204754186a4e5', null, '2f07d72f87cd434b8c23ccf72fb58272', '2016-03-28 16:55:27', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('42f014f81fc04be0bf1da701f698a2b9', '51893533745f433fad790fd59005df41', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:42', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4988ff196f9f4fab9ad8e39bbf3c7144', null, '750e2e56ca5949b6a8bf9a7b2b3b98b5', '2016-03-28 16:55:17', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4ad71479ecef43cb8dc0dc24eab900ea', 'fe0cbc21929d459591222e86f72b6d6f', '77fc2de4952e40ada863c52f67d0c66c', '2015-10-19 15:14:21', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4b2a32379a9a467991d243cdc1487ab4', null, '3cd2265a61d844169922e1efab889a9d', '2016-03-28 16:54:57', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4c46dbc3d1b44301b8176bfff7799a78', null, '93c2af4836ab4099b45132a2a620134f', '2016-03-23 17:25:49', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4c58e0e83ad945f281a0133768f5fb0c', 'fe0cbc21929d459591222e86f72b6d6f', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:40', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('5242ba04d57a4d36b39fac75755c8838', null, 'e6dd626839814b28851d8c30e0a162c2', '2016-03-28 17:22:27', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('5243e58b498c43fbb132e85c57c86468', null, '26ced17e162d4b26ac30e522119f2c26', '2015-10-16 10:46:27', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('55d9a8a1db6043b99f51516184eb764e', null, '952782382f8a4881a258e82c2cf6ade0', '2016-03-28 16:53:16', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('5776d89a243a40658cc5ca59149dffdd', null, 'b2898b292e0848d08858017beae2bb64', '2015-10-17 11:34:51', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('5ad215b4e506406a8a213ea76d1fb6c8', null, 'd7713efee3bd4fcba7cd691859e45f7c', '2015-10-16 15:06:51', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('5b90fcd72b5e4cdda880503134b7bb29', null, '974fe1e95dd74bf7b8ce199a011f5946', '2015-10-16 14:13:59', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('5d986a0f6eee439cb06092d345051381', null, 'ae5fd604565643b6a434b618723a40a7', '2015-10-16 10:30:22', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('5fc6131f178548469fba450ce5afb6c7', null, '7aefce5976e54b0ab0abfcb076ff4ff3', '2016-03-28 16:04:19', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('6130b26eb25546668031e50086c2714e', '0fd089859fea4c66981668948b424cb9', 'dfdb89b83f79464f8100d048d4b52875', '2015-10-17 11:48:15', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('628ada1efda74962b0002e97c308dd81', '0fd089859fea4c66981668948b424cb9', 'c649cbbecb4340c29ff1de4d2ea7bb82', '2015-10-16 14:30:19', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('6604431b2d524094a86b28902346bd63', '9b4d6f037b1b4faea4a806c39cfa5f38', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:44', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('6771b05e39cf40dca3e48f5424c4f771', '65fbc34563a442b6bcb511cfd17aa476', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:42', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('6dc2570635954324bb89a5a8ab2b27ad', null, 'f65096cd26e2452ea057148ae6a723ec', '2015-10-16 15:06:43', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('754d63dbbccb4f94a49977e4509865de', null, '264239feaae347c18a4bc31d086ab9f8', '2015-10-16 14:44:04', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('76660f6d964e4888b656bcbb1feb49b6', null, '0624ad63127b42e791a8d69e3bee917b', '2015-10-17 11:34:18', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('7906ed82158b47c48150c701c09c7410', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '501149981e1b46b694da6a41c2e5d51b', '2015-10-16 15:11:16', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('7e114753c87644289d9b24808693b999', null, '36085fe0cca44351a2256b4721178268', '2016-03-28 17:18:06', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('82eaac15a24240f3a7fe043f6ca56772', '51893533745f433fad790fd59005df41', 'dfd31ea612da4ba8bb7918c89a890d79', '2015-10-19 15:12:36', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('84b59876c6d0465588ec67f45f750114', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '521dc46f4ae94ce89a0cad684e90d389', '2015-10-16 15:11:21', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('8b2df818a35b455881bab969c4943858', '65fbc34563a442b6bcb511cfd17aa476', 'fb554c4bc93e454a80a8effdd41d5d90', '2015-10-19 15:10:35', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('8e2100b71d9c4fc29cb276ace40e1ffa', null, 'b14a096688d149f193f65534be3d54f4', '2016-03-28 17:18:59', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('94f3a30318ba40a4a9d6f98d891bd14f', 'd9cc5adfd1c64464b1bdac3f04d375f8', '0a2c3e19900c41ff8f0b399c78edc789', '2015-10-16 14:05:23', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('95b01561bb104b9c850a469030b0f377', null, 'bc286bc8a8694974945832c9fcfe85a6', '2016-03-28 17:15:41', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('9ee1dc5df74a4ad29c2f261a5cb26032', '9b4d6f037b1b4faea4a806c39cfa5f38', 'e5617d6a80164995ba7f2beb4383353c', '2015-10-16 14:05:39', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('a16ff999447f41e48e961a3eeb954766', null, 'dadbd30e3e2e41958ae34fd66f4ba5cf', '2015-10-16 13:57:12', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('a2b03839872e49fd819a263b5ffbc370', '2bee35340e0143e795f3a3eb1c20190b', 'ae08f58b375d4cc6b64238c6e882e9e5', '2015-10-16 14:45:11', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('a7081de5963c4aab8dd9e6551b4b203a', null, '534fc7a8bbef4dae83f8a1660da3495f', '2015-10-16 10:44:32', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('a77f7ef304a341bd86cbf53f0938d893', null, '431f2502a8c249f9a6d0dff7ed6cbd53', '2015-10-20 16:04:56', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('a8ed8ded4e584a788f583a3070d5fd49', '2bee35340e0143e795f3a3eb1c20190b', '99e44769eda745708b22090f129740cd', '2015-10-16 14:49:49', '0', '6');
INSERT INTO `t_question_type_user_map` VALUES ('ab15fa70e2b64693b37974634bedb55e', '793ddc1b03924fe0a5b160d3dd4696b4', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:41', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('abd85639320241fbb57b66540487fbc7', 'e9fc0e08d1434b83b4f96e97cf139850', '94b02b88e2cb4c36a5e37f8c22452196', '2015-10-20 16:05:31', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('b0a3fae94408404faf322564b7910bd8', 'e9fc0e08d1434b83b4f96e97cf139850', 'a5394a33aac34a8ba3b1c0eb9b3e048f', '2015-10-16 14:18:38', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('b0a94866bbaa4968801655a80dfccde4', '0fd089859fea4c66981668948b424cb9', 'a5394a33aac34a8ba3b1c0eb9b3e048f', '2015-10-16 14:18:41', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('c3b5dcdf8d0c44288728847ad1c2a068', 'd9cc5adfd1c64464b1bdac3f04d375f8', 'a5394a33aac34a8ba3b1c0eb9b3e048f', '2015-10-16 14:18:39', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('c59216ea742c49d0ac475c9ee18d73f0', 'd9cc5adfd1c64464b1bdac3f04d375f8', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:43', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('cd0878f0e1b5422295933020126a7408', null, 'e20bc2d1772d43e1bb38ce35b3f5c6b8', '2015-10-16 14:14:16', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('cfe9e8b56cbf40ad89587937dd74de31', null, 'c102d14219b8422cb0320d7dc72fa841', '2016-03-28 16:54:44', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('d1f0ceec81f94fb0aab2246ab79187aa', null, '0c88605356244f4887eefab445acfba5', '2016-03-28 17:14:33', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('d64a56304c33407ab8f1d0ded0adbc8d', null, 'de85ad54f0064913845ce6941f952733', '2016-03-28 17:17:02', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('db1fe3e74772417884e2d4689cf0025b', null, '2c6ebd5c1222481d8bcbf60ad072def7', '2015-10-16 10:53:21', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('dcb003ed743744f1886f515b2d03b61b', '793ddc1b03924fe0a5b160d3dd4696b4', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-10-19 15:14:26', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('df512d9c99034a6babeb0b373e8f834f', '7d6550c833f64fb6991a147feefc8a2f', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:45', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('df720ae0ad09498991c552862098194c', 'e9fc0e08d1434b83b4f96e97cf139850', 'b23b80c8c2964063b877d8c29df8f261', '2015-10-16 14:18:46', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('e0824c83447e4d8a8d00463e6b19270b', null, '0f99b3455fcf49289626462a71702e65', '2016-03-28 17:17:30', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('e0c2131b04c24a7d975913e20c4b6599', null, '609887e9e0474a73a29de75d1ae47e84', '2015-10-16 10:44:23', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('e3b0c8c826db4ab0980e0f9849dbfb88', '51893533745f433fad790fd59005df41', '77fc2de4952e40ada863c52f67d0c66c', '2015-10-19 15:15:10', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('e3cc8c6f6dc54660a7553660b73bf2ae', null, 'cb9b2f9dba944b66a9fbf3b7c370ee96', '2015-10-20 16:09:00', '1', '12');
INSERT INTO `t_question_type_user_map` VALUES ('ef19dd77b7ae4c799f4856c3aba13b0a', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '39d9e36ce5f9422b8be620f728ca586c', '2015-10-16 15:11:05', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('effb4a9ad43347e795870a96d46c1900', 'd9cc5adfd1c64464b1bdac3f04d375f8', '60db2ddf74b64253a8d2c433dba1c037', '2015-10-17 11:47:44', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('f27dc8ab0a3b42dead9dda8928ec7960', null, '9d5ac6ad63cb452685e1de3cfbced773', '2015-10-16 14:14:13', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('f2a649f6ab9041b6baf234e0f3fb15d9', '9b4d6f037b1b4faea4a806c39cfa5f38', 'a5394a33aac34a8ba3b1c0eb9b3e048f', '2015-10-16 14:18:39', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('f47cd728473f49f482e0fdce3b4bab12', null, '37a2fa713a0341a6a03fbf3b4616d43b', '2015-10-17 11:33:31', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('faccc90ceb0a4ad99b479bafc3a97547', null, 'f19e5b2b2f6d4b57857f4266169943d9', '2015-10-16 13:50:10', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('faf21034445f4d0da41eea857b56b353', null, 'bc44ff8e313c400aa8bdf80d12f2726b', '2015-10-17 11:33:32', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('fe6c83e832d0496faaf8251e76c6d46b', '51893533745f433fad790fd59005df41', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-10-19 15:14:25', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('ff7b345f522b467aba7ec9c58e16cdfc', 'e9fc0e08d1434b83b4f96e97cf139850', '60db2ddf74b64253a8d2c433dba1c037', '2015-10-17 11:47:44', '1', '4');

-- ----------------------------
-- Table structure for `t_quick_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_quick_reply`;
CREATE TABLE `t_quick_reply` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `content` varchar(1024) DEFAULT NULL COMMENT '内容',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '0 隐藏 1显示 2已删除',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='快速回复';

-- ----------------------------
-- Records of t_quick_reply
-- ----------------------------
INSERT INTO `t_quick_reply` VALUES ('1f76e302a9fb48158b5a471602eb332a', '0fd089859fea4c66981668948b424cb9', '回复1', '内容1', '2015-10-20 16:58:01', '1');
INSERT INTO `t_quick_reply` VALUES ('3460d86c046d4173b00b7b34134ed200', '52f0645b6bd6433d977568b04348696b', '我', '您好，有什么需要帮忙的吗？', '2015-09-24 11:13:57', '1');
INSERT INTO `t_quick_reply` VALUES ('51bc465f203b4567928bb505e0aaa54b', '0fd089859fea4c66981668948b424cb9', '1231', '123', '2015-10-20 17:07:05', '1');
INSERT INTO `t_quick_reply` VALUES ('5cc1fa1b69844bc690396e3e6d12175d', '0fd089859fea4c66981668948b424cb9', '去问', 'qweqwe', '2015-10-20 17:07:14', '1');
INSERT INTO `t_quick_reply` VALUES ('87e85481504145eca80c2f6a204b1c6d', '727ce97aec254ce7a417d1b79d526f88', '呵呵', '呵呵额', '2015-09-23 18:43:44', '1');
INSERT INTO `t_quick_reply` VALUES ('b01d609d63cc43028098938e09ddf480', '793ddc1b03924fe0a5b160d3dd4696b4', null, '您好，有什么需要为你服务的吗？', '2015-09-24 11:19:11', '0');
INSERT INTO `t_quick_reply` VALUES ('c00c8fb38bc54688a95f7d919f046c6a', '52f0645b6bd6433d977568b04348696b', '2', '您好，请稍等', '2015-09-24 11:14:24', '1');
INSERT INTO `t_quick_reply` VALUES ('d0cc90c8879c440a8a682979a84468df', '0fd089859fea4c66981668948b424cb9', '确定我的', '去', '2015-10-20 17:00:43', '1');
INSERT INTO `t_quick_reply` VALUES ('e32c4512215a4423afcbf399aaf00cc2', '793ddc1b03924fe0a5b160d3dd4696b4', null, '我是yc', '2015-09-24 11:19:21', '1');
INSERT INTO `t_quick_reply` VALUES ('f9dc7d15ac7049f0a2239236d1fb06ba', '0fd089859fea4c66981668948b424cb9', '1231', '123', '2015-10-20 17:00:32', '1');

-- ----------------------------
-- Table structure for `t_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply` (
  `uuid` varchar(32) NOT NULL,
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `userId` varchar(32) DEFAULT NULL COMMENT '回复人员Id',
  `attachmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attachmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `replyContent` varchar(1024) DEFAULT NULL COMMENT '回复内容',
  `status` int(1) DEFAULT NULL COMMENT '0工单处理回复 1客户回复 ',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户和客服人员之间的回复记录';

-- ----------------------------
-- Records of t_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys19_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys19_knowledge`;
CREATE TABLE `t_sys19_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys19_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys19_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys19_reply`;
CREATE TABLE `t_sys19_reply` (
  `uuid` varchar(32) NOT NULL,
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `userId` varchar(32) DEFAULT NULL COMMENT '回复人员Id',
  `attachmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attachmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `replyContent` varchar(1024) DEFAULT NULL COMMENT '回复内容',
  `status` int(1) DEFAULT NULL COMMENT '0工单处理回复 1客户回复',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys19_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys19_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys19_ticket`;
CREATE TABLE `t_sys19_ticket` (
  `uuid` varchar(32) NOT NULL,
  `question` varchar(64) DEFAULT NULL COMMENT '问题',
  `content` varchar(1024) DEFAULT NULL COMMENT '问题描述',
  `level` int(1) DEFAULT NULL COMMENT '紧急程度',
  `outerUserId` varchar(32) DEFAULT NULL COMMENT '客户Id',
  `attamentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `attamentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `status` int(1) DEFAULT NULL COMMENT '状态（0 等待处理，1正在处理，2等待用户反馈，3问题关闭,4已删除）',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `ownerId` varchar(32) DEFAULT NULL COMMENT '问题持有人Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '紧急原因',
  `closeTime` datetime DEFAULT NULL COMMENT '工单关闭时间',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys19_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys19_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys19_ticket_move`;
CREATE TABLE `t_sys19_ticket_move` (
  `uuid` varchar(32) NOT NULL,
  `toUserId` varchar(32) DEFAULT NULL COMMENT '流转目的人ID',
  `fromUserId` varchar(32) DEFAULT NULL COMMENT '申请流转人ID',
  `audtId` varchar(32) DEFAULT NULL COMMENT '审核人Id',
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '流转原因',
  `status` int(1) DEFAULT NULL COMMENT '0待审核 1 通过 2驳回 3已删除',
  `refuseReason` varchar(512) DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys19_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys20_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys20_knowledge`;
CREATE TABLE `t_sys20_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys20_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys20_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys20_reply`;
CREATE TABLE `t_sys20_reply` (
  `uuid` varchar(32) NOT NULL,
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `userId` varchar(32) DEFAULT NULL COMMENT '回复人员Id',
  `attachmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attachmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `replyContent` varchar(1024) DEFAULT NULL COMMENT '回复内容',
  `status` int(1) DEFAULT NULL COMMENT '0工单处理回复 1客户回复',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys20_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys20_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys20_ticket`;
CREATE TABLE `t_sys20_ticket` (
  `uuid` varchar(32) NOT NULL,
  `question` varchar(64) DEFAULT NULL COMMENT '问题',
  `content` varchar(1024) DEFAULT NULL COMMENT '问题描述',
  `level` int(1) DEFAULT NULL COMMENT '紧急程度',
  `outerUserId` varchar(32) DEFAULT NULL COMMENT '客户Id',
  `attamentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `attamentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `status` int(1) DEFAULT NULL COMMENT '状态（0 等待处理，1正在处理，2等待用户反馈，3问题关闭,4已删除）',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `ownerId` varchar(32) DEFAULT NULL COMMENT '问题持有人Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '紧急原因',
  `closeTime` datetime DEFAULT NULL COMMENT '工单关闭时间',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys20_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys20_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys20_ticket_move`;
CREATE TABLE `t_sys20_ticket_move` (
  `uuid` varchar(32) NOT NULL,
  `toUserId` varchar(32) DEFAULT NULL COMMENT '流转目的人ID',
  `fromUserId` varchar(32) DEFAULT NULL COMMENT '申请流转人ID',
  `audtId` varchar(32) DEFAULT NULL COMMENT '审核人Id',
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '流转原因',
  `status` int(1) DEFAULT NULL COMMENT '0待审核 1 通过 2驳回 3已删除',
  `refuseReason` varchar(512) DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys20_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys21_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys21_knowledge`;
CREATE TABLE `t_sys21_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys21_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys21_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys21_reply`;
CREATE TABLE `t_sys21_reply` (
  `uuid` varchar(32) NOT NULL,
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `userId` varchar(32) DEFAULT NULL COMMENT '回复人员Id',
  `attachmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attachmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `replyContent` varchar(1024) DEFAULT NULL COMMENT '回复内容',
  `status` int(1) DEFAULT NULL COMMENT '0工单处理回复 1客户回复',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys21_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys21_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys21_ticket`;
CREATE TABLE `t_sys21_ticket` (
  `uuid` varchar(32) NOT NULL,
  `question` varchar(64) DEFAULT NULL COMMENT '问题',
  `content` varchar(1024) DEFAULT NULL COMMENT '问题描述',
  `level` int(1) DEFAULT NULL COMMENT '紧急程度',
  `outerUserId` varchar(32) DEFAULT NULL COMMENT '客户Id',
  `attamentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `attamentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `status` int(1) DEFAULT NULL COMMENT '状态（0 等待处理，1正在处理，2等待用户反馈，3问题关闭,4已删除）',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `ownerId` varchar(32) DEFAULT NULL COMMENT '问题持有人Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '紧急原因',
  `closeTime` datetime DEFAULT NULL COMMENT '工单关闭时间',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys21_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys21_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys21_ticket_move`;
CREATE TABLE `t_sys21_ticket_move` (
  `uuid` varchar(32) NOT NULL,
  `toUserId` varchar(32) DEFAULT NULL COMMENT '流转目的人ID',
  `fromUserId` varchar(32) DEFAULT NULL COMMENT '申请流转人ID',
  `audtId` varchar(32) DEFAULT NULL COMMENT '审核人Id',
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '流转原因',
  `status` int(1) DEFAULT NULL COMMENT '0待审核 1 通过 2驳回 3已删除',
  `refuseReason` varchar(512) DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys21_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys2_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys2_knowledge`;
CREATE TABLE `t_sys2_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(12) DEFAULT NULL COMMENT '排序',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys2_knowledge
-- ----------------------------
INSERT INTO `t_sys2_knowledge` VALUES ('19d78e4470fb49e29c4a7a7739075075', '51893533745f433fad790fd59005df41', '电脑有毒？', '请用360安全卫士', null, null, 'd554e1510aad4965bd8b810948c05dc1', '2015-09-25 15:27:23', '1', '6', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('1de6d4eb75b74f1e8eb954330d0394b5', '51893533745f433fad790fd59005df41', 'heheda', 'hehe', null, null, null, '2015-10-20 11:37:00', '1', '123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('23be1946281c412693b245dd44f2b0aa', '51893533745f433fad790fd59005df41', null, null, null, null, null, '2015-09-24 09:50:58', '1', '1000', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('5c14bd0922c64784b1ae2eac18de25f0', '793ddc1b03924fe0a5b160d3dd4696b4', '电脑不能开机', '是否没插电源？哈哈', null, null, 'd554e1510aad4965bd8b810948c05dc1', '2015-09-25 15:10:54', '1', '2', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('5d22403a60244129afdbc06d65dc8f26', '793ddc1b03924fe0a5b160d3dd4696b4', '什么哦', '不造呢', null, null, 'c7b22e3730d74f17b148639f154adea1', '2015-09-25 15:15:39', '1', '5', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('6dbcd2ba38274236bc344e2c2d549737', '52f0645b6bd6433d977568b04348696b', '1111111111', '11111111111111', null, null, '4e64b399bce946e9bb4037876a2bf280', '2015-09-30 11:51:31', '2', '1111', 'aac3d0fdaf764a7191955e67867759c5');
INSERT INTO `t_sys2_knowledge` VALUES ('6ef8f60723a84929b56e382907588b1e', '51893533745f433fad790fd59005df41', '123', '123', null, null, null, '2015-10-20 11:43:22', '1', '123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('8ae950018ed0487e8d28b7a548ced144', '51893533745f433fad790fd59005df41', '123', '12312', null, null, null, '2015-10-20 11:41:27', '1', '3123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('960fcaf3fcc446629303088ac56264d2', '51893533745f433fad790fd59005df41', '123', '123', null, null, null, '2015-09-30 09:57:52', '1', '123', null);
INSERT INTO `t_sys2_knowledge` VALUES ('9d16d8eb2c754bab8abe32b96d780994', '51893533745f433fad790fd59005df41', '123', '12312', null, null, null, '2015-10-20 11:41:15', '1', '3123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('9e85b3c517554a0493b1de28023167fa', '727ce97aec254ce7a417d1b79d526f88', '呵呵', '呵呵呵额', null, null, 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-09-23 18:44:04', '1', '14', null);
INSERT INTO `t_sys2_knowledge` VALUES ('a501aac7fe214102aad77755cd397c2a', '793ddc1b03924fe0a5b160d3dd4696b4', '12', '3123', null, null, null, '2015-10-20 11:47:11', '2', '123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('b986f1e1045341048e264abf72f2260a', '793ddc1b03924fe0a5b160d3dd4696b4', '123', '123', null, null, 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-09-25 15:23:01', '1', '123', null);
INSERT INTO `t_sys2_knowledge` VALUES ('c5e11f3161ea4fd9bd01ccca872e2ab5', '52f0645b6bd6433d977568b04348696b', '电脑有问题', '找驱动精灵', null, null, '77fc2de4952e40ada863c52f67d0c66c', '2015-09-30 11:42:02', '2', '1', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('ce4e2afa2c9341188c28308607da9fbb', '51893533745f433fad790fd59005df41', '123', '123', null, null, null, '2015-10-20 11:46:39', '1', '123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('e84c7a90eb4146e6a5d0d0318c12ab75', '51893533745f433fad790fd59005df41', '123', '123', null, null, '398f60046695486ea7c4e701bf934953', '2015-10-20 11:41:05', '1', '123', '8d19f5c3715042799f99db35fdd1e41c');
INSERT INTO `t_sys2_knowledge` VALUES ('f84fea272294434ab6c396dff659ff2c', '793ddc1b03924fe0a5b160d3dd4696b4', 'lalla', 'aaaaaaaaaaaaaa', null, null, '8180bef521da4ce8827a1078fb7cc1d5', '2015-09-25 15:45:35', '1', '234', '8d19f5c3715042799f99db35fdd1e41c');

-- ----------------------------
-- Table structure for `t_sys2_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys2_reply`;
CREATE TABLE `t_sys2_reply` (
  `uuid` varchar(32) NOT NULL,
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `userId` varchar(32) DEFAULT NULL COMMENT '回复人员Id',
  `attachmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attachmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `replyContent` varchar(1024) DEFAULT NULL COMMENT '回复内容',
  `status` int(1) DEFAULT NULL COMMENT '0工单处理回复 1客户回复',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys2_reply
-- ----------------------------
INSERT INTO `t_sys2_reply` VALUES ('01b6548aa4a9416bac3258b11b6acfe1', '6c413a6a67fa40eda061a3b2a150100f', '727ce97aec254ce7a417d1b79d526f88', null, null, '我也是醉了', '1', '2015-09-23 18:46:33');
INSERT INTO `t_sys2_reply` VALUES ('0ed90760de21474ebf1cd4a38769cccf', 'a0beb65f6abb409c9e2ace15c482421b', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, '回复1', '1', '2015-09-28 17:56:55');
INSERT INTO `t_sys2_reply` VALUES ('1310d26104e04fb790d938955bfd33fe', 'a0beb65f6abb409c9e2ace15c482421b', '51893533745f433fad790fd59005df41', null, null, '', '1', '2015-09-28 17:59:44');
INSERT INTO `t_sys2_reply` VALUES ('25964483603f444099727e6007bf30fb', '2b0399392de546f286e76a5c160d17c9', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, '', '1', '2015-10-17 10:01:36');
INSERT INTO `t_sys2_reply` VALUES ('2f35ad393a2a4273af1928fe4c1b8f58', '6c413a6a67fa40eda061a3b2a150100f', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, 'sdf ', '1', '2015-09-25 14:08:38');
INSERT INTO `t_sys2_reply` VALUES ('35400d32af30407890480e62f26e1a14', 'a0beb65f6abb409c9e2ace15c482421b', '123', null, null, 'aa回复', '1', '2015-09-28 18:01:58');
INSERT INTO `t_sys2_reply` VALUES ('37d227fda31b4588bdce62ffe52aebf9', 'a0beb65f6abb409c9e2ace15c482421b', '51893533745f433fad790fd59005df41', null, null, '', '1', '2015-09-28 17:59:46');
INSERT INTO `t_sys2_reply` VALUES ('3f3ab74fb6974fe99b792d60730d1923', '6c413a6a67fa40eda061a3b2a150100f', '81d23d9722d44ca1ad782dd3188c5dc9', null, null, '呵呵', '1', '2015-09-23 18:49:05');
INSERT INTO `t_sys2_reply` VALUES ('4e3465a2f3e54c1081a284edcf429a67', '0379503ed1334568af258a36eb8b4110', '123', null, null, '爱的发', '1', '2015-10-22 15:00:44');
INSERT INTO `t_sys2_reply` VALUES ('52e4378cbc63491c92df1bec5920ab28', 'a0beb65f6abb409c9e2ace15c482421b', '51893533745f433fad790fd59005df41', null, null, '最后回复', '1', '2015-09-28 18:02:46');
INSERT INTO `t_sys2_reply` VALUES ('591a2099fa324daa880047f7339d0645', '0379503ed1334568af258a36eb8b4110', '123', null, null, '爱人无法为范围', '1', '2015-10-22 15:00:35');
INSERT INTO `t_sys2_reply` VALUES ('61f37933bc1f4a588f38136d9cb13af4', '2b0399392de546f286e76a5c160d17c9', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, 'fd', '1', '2015-09-30 13:54:39');
INSERT INTO `t_sys2_reply` VALUES ('664aa0cc31dc4c8f9e6f73d53054a68f', '0379503ed1334568af258a36eb8b4110', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, '大事发生地方', '1', '2015-10-22 14:59:43');
INSERT INTO `t_sys2_reply` VALUES ('6d7f2412cbcb4c7cbd789d4493eeec97', '6c413a6a67fa40eda061a3b2a150100f', '727ce97aec254ce7a417d1b79d526f88', null, null, '呵呵额', '1', '2015-09-23 18:47:30');
INSERT INTO `t_sys2_reply` VALUES ('8eeea1a4bba94e33a6247c081e0f2ca0', '6c413a6a67fa40eda061a3b2a150100f', '81d23d9722d44ca1ad782dd3188c5dc9', null, null, '秒', '1', '2015-09-23 18:49:23');
INSERT INTO `t_sys2_reply` VALUES ('94407fb6619e498db8526d042667f4ba', 'a0beb65f6abb409c9e2ace15c482421b', '51893533745f433fad790fd59005df41', null, null, '', '1', '2015-09-28 17:59:48');
INSERT INTO `t_sys2_reply` VALUES ('94f513192f234aa9a956fc026183be05', '6c413a6a67fa40eda061a3b2a150100f', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, '您好，有什么需要为你服务的吗？', '1', '2015-09-25 14:08:44');
INSERT INTO `t_sys2_reply` VALUES ('abfd5e710bd24caa8fd42cb33ca8a591', '6c413a6a67fa40eda061a3b2a150100f', '123', null, null, '我也很醉', '1', '2015-09-23 18:47:20');
INSERT INTO `t_sys2_reply` VALUES ('ca17075a2f674cee8cad5295b8bb1458', '6c413a6a67fa40eda061a3b2a150100f', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, 'ds ', '1', '2015-09-25 14:08:32');
INSERT INTO `t_sys2_reply` VALUES ('cf60907eaf15470999e0c2530a7f9c0b', 'a0beb65f6abb409c9e2ace15c482421b', '51893533745f433fad790fd59005df41', null, null, '', '1', '2015-09-28 17:59:41');
INSERT INTO `t_sys2_reply` VALUES ('cfa8f397aa2e4aa39607c8ce3fe4806d', '0379503ed1334568af258a36eb8b4110', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, '21312312大发发', '1', '2015-10-22 15:00:41');
INSERT INTO `t_sys2_reply` VALUES ('d409aafedfee4dcdb00ddc7bd084f7fe', 'a0beb65f6abb409c9e2ace15c482421b', '51893533745f433fad790fd59005df41', null, null, '333 回复', '1', '2015-09-28 17:59:17');
INSERT INTO `t_sys2_reply` VALUES ('dbd1d79b92c348bf81cb939af1e1e36a', '2b0399392de546f286e76a5c160d17c9', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, 'gh', '1', '2015-09-30 13:53:15');
INSERT INTO `t_sys2_reply` VALUES ('e3200f85c2244796aa2b9c9090c95228', '2b0399392de546f286e76a5c160d17c9', '123', null, null, '', '1', '2015-10-08 11:32:59');
INSERT INTO `t_sys2_reply` VALUES ('ecdbf35ae65748c09d3faa049f6777c1', '0379503ed1334568af258a36eb8b4110', '793ddc1b03924fe0a5b160d3dd4696b4', null, null, '请问请问', '1', '2015-10-22 14:59:52');

-- ----------------------------
-- Table structure for `t_sys2_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys2_ticket`;
CREATE TABLE `t_sys2_ticket` (
  `uuid` varchar(32) NOT NULL,
  `question` varchar(64) DEFAULT NULL COMMENT '问题',
  `content` varchar(1024) DEFAULT NULL COMMENT '问题描述',
  `level` int(1) DEFAULT NULL COMMENT '紧急程度',
  `outerUserId` varchar(32) DEFAULT NULL COMMENT '客户Id',
  `attamentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `attamentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `status` int(1) DEFAULT NULL COMMENT '状态（0 等待处理，1正在处理，2等待用户反馈，3问题关闭,4已删除 5.流转中）',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `ownerId` varchar(32) DEFAULT NULL COMMENT '问题持有人Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '紧急原因',
  `closeTime` datetime DEFAULT NULL COMMENT '工单关闭时间',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys2_ticket
-- ----------------------------
INSERT INTO `t_sys2_ticket` VALUES ('0379503ed1334568af258a36eb8b4110', '污染第三方', '阿尔法娃娃', null, '123', null, null, '0', 'fc410d174f9e4f9ebaa13164862c7d3a', '793ddc1b03924fe0a5b160d3dd4696b4', '2015-10-22 14:59:08', null, null, '123', '12312');
INSERT INTO `t_sys2_ticket` VALUES ('04831f0cc84d4241842e84178e6423d2', '啊啊啊啊啊', '12345上山打老虎', null, '123', null, null, '0', 'b15f1756d80b4ca5bf8c7a89a4582632', '744cfd36bcd84bc3b79b198f620c7791', '2015-10-16 14:17:27', null, null, '597489269@qq.com', '18983986442');
INSERT INTO `t_sys2_ticket` VALUES ('2b0399392de546f286e76a5c160d17c9', '我也不知道怎么回事', '电脑不能开机了 呵呵呵', null, '123', null, null, '1', '00a6dc3c1fc54a478284cdf436a00744', '51893533745f433fad790fd59005df41', '2015-09-28 13:55:12', null, null, '31231@qq.com', '110');
INSERT INTO `t_sys2_ticket` VALUES ('6b92e2ce3a2949fcabf6eac164dba09e', 'fd', 'dsfds', null, '123', null, null, '0', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-09-30 15:15:53', null, null, 'fd', 'df');
INSERT INTO `t_sys2_ticket` VALUES ('75007c2931fd406d96a94cab23d04855', '111', '123456', null, '123', null, null, '0', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-10-16 13:55:05', null, null, '', '');
INSERT INTO `t_sys2_ticket` VALUES ('90a129e759614c64ad454a5ad0b7a610', '111', '123456', null, '123', null, null, '0', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-10-16 13:55:58', null, null, '10@qq.com', '18723587742');
INSERT INTO `t_sys2_ticket` VALUES ('93ca33e62b3e428ebd9881090da5a35c', '啊啊啊啊啊', '12345上山打老虎', null, '123', null, null, '0', '00a6dc3c1fc54a478284cdf436a00744', '51893533745f433fad790fd59005df41', '2015-10-16 14:16:23', null, null, '597489269@qq.com', '18983986442');
INSERT INTO `t_sys2_ticket` VALUES ('998f21e8df3b49f589cb907b64611895', '啊啊啊啊啊', '12345上山打老虎', null, '123', null, null, '0', 'b15f1756d80b4ca5bf8c7a89a4582632', '744cfd36bcd84bc3b79b198f620c7791', '2015-10-16 14:15:51', null, null, '597489269@qq.com', '18983986442');
INSERT INTO `t_sys2_ticket` VALUES ('a0beb65f6abb409c9e2ace15c482421b', '标签12', '描述', null, '123', null, null, '1', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-09-28 17:53:45', null, null, '123@qq.com', '123456');
INSERT INTO `t_sys2_ticket` VALUES ('afeb95af944240cf8f777916e89b4099', '标签11', '描述', null, '123', null, null, '0', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-09-28 17:52:56', null, null, '123@qq.com', '123456');
INSERT INTO `t_sys2_ticket` VALUES ('b43eff2e219a45e59f73222f5e4a2231', '啊啊啊啊啊', '12345上山打老虎', null, '123', null, null, '0', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-10-16 14:16:19', null, null, '597489269@qq.com', '18983986442');
INSERT INTO `t_sys2_ticket` VALUES ('ba2db21f58734079b6359092b25f8e83', '标签11', '描述', null, '123', null, null, '0', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '51893533745f433fad790fd59005df41', '2015-09-28 17:52:55', null, null, '123@qq.com', '123456');
INSERT INTO `t_sys2_ticket` VALUES ('ca585fba3e584a89b10be018f2db2fce', '啊啊啊啊啊', '12345上山打老虎', null, '123', null, null, '0', '77fc2de4952e40ada863c52f67d0c66c', '51893533745f433fad790fd59005df41', '2015-10-16 14:16:15', null, null, '597489269@qq.com', '18983986442');

-- ----------------------------
-- Table structure for `t_sys2_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys2_ticket_move`;
CREATE TABLE `t_sys2_ticket_move` (
  `uuid` varchar(32) NOT NULL,
  `toUserId` varchar(32) DEFAULT NULL COMMENT '流转目的人ID',
  `fromUserId` varchar(32) DEFAULT NULL COMMENT '申请流转人ID',
  `audtId` varchar(32) DEFAULT NULL COMMENT '审核人Id',
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '流转原因',
  `status` int(1) DEFAULT NULL COMMENT '0待审核 1 通过 2驳回 3已删除',
  `refuseReason` varchar(512) DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys2_ticket_move
-- ----------------------------
INSERT INTO `t_sys2_ticket_move` VALUES ('0e4135c4ad1747838c2428edfe5c9dfa', '51893533745f433fad790fd59005df41', '793ddc1b03924fe0a5b160d3dd4696b4', '51893533745f433fad790fd59005df41', 'a0beb65f6abb409c9e2ace15c482421b', '2015-09-28 17:57:13', '原因', '1', null);
INSERT INTO `t_sys2_ticket_move` VALUES ('2042febcc6bc4df58eeb719362b2eaf9', '51893533745f433fad790fd59005df41', '793ddc1b03924fe0a5b160d3dd4696b4', '51893533745f433fad790fd59005df41', '2b0399392de546f286e76a5c160d17c9', '2015-10-17 09:59:10', '123', '1', null);
INSERT INTO `t_sys2_ticket_move` VALUES ('20d2afdb39f24b56ae4ffc67ae6320e6', '51893533745f433fad790fd59005df41', '793ddc1b03924fe0a5b160d3dd4696b4', '51893533745f433fad790fd59005df41', '6c413a6a67fa40eda061a3b2a150100f', '2015-09-25 14:42:55', '很远h64u76句', '1', null);
INSERT INTO `t_sys2_ticket_move` VALUES ('c51ea615754a49edaffcf9ea5481a774', '51893533745f433fad790fd59005df41', '793ddc1b03924fe0a5b160d3dd4696b4', '51893533745f433fad790fd59005df41', '2b0399392de546f286e76a5c160d17c9', '2015-10-17 10:01:43', '123123', '1', null);

-- ----------------------------
-- Table structure for `t_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_ticket`;
CREATE TABLE `t_ticket` (
  `uuid` varchar(32) NOT NULL,
  `question` varchar(64) DEFAULT NULL COMMENT '问题',
  `content` varchar(1024) DEFAULT NULL COMMENT '问题描述',
  `level` int(1) DEFAULT NULL COMMENT '紧急程度（0 非常紧急 1 一般 2 不着急)',
  `outerUserId` varchar(32) DEFAULT NULL COMMENT '客户Id',
  `attamentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `attamentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `status` int(1) DEFAULT NULL COMMENT '状态（0 等待处理，1正在处理，2等待用户反馈，3问题关闭 4已删除 5 流转中）',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `ownerId` varchar(32) DEFAULT NULL COMMENT '问题持有人Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '紧急原因',
  `closeTime` datetime DEFAULT NULL COMMENT '工单关闭时间',
  `email` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单列表';

-- ----------------------------
-- Records of t_ticket
-- ----------------------------
INSERT INTO `t_ticket` VALUES ('1145600bdf45462ca802801e1e6cb718', null, null, '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '698d51a19d8a121ce581499d7b701668', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('1cfbd24ac5514ce3b6630f4f9aa2531f', '鹅鹅鹅哇', '山东肥城复古色大幅度', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '698d51a19d8a121ce581499d7b701668', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('242e0a2fca7d498d9dee54f4f596a9e9', '威武气温', '(NULL辅导费)', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '698d51a19d8a121ce581499d7b701668', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('36917d8f56564233a6ae8ea85c06f5c1', '认为无色', '是的撒', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('3a714a0c99f64aa7a9cc9922ac6b517c', '撒的丝袜', '但是', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('5e6a50f6c9754b4a805cc895d73e8295', '阿桑奇挖的我', '是的撒', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('6b5c4c02af3a4db5b7fb36ed02a15953', null, '是的撒', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('7288de6213614d4ba3734ce9923793d9', null, '未', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('adfaefawefawefawefwawefawefawefa', '1+1?', '啊', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('d53f44894a0644f89c66fb98f3911c1a', '是的撒', '(NULL)是的撒', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('d58aa67aebe64eceb56d95a2e32b177d', '阿迪速度速度', '未', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('d7d606f4eebb4f44b4e77cf221c5b431', '啥', '单位', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);
INSERT INTO `t_ticket` VALUES ('d9d06dfe1b7e4e10950e8d755077a978', 'ad ', '是', '2', '664eb55058f511e5b3218c89a5e173c7', null, null, '1', 'safegsagfaweftiqyo8rho297ryo2qr3', '51893533745f433fad790fd59005df41', '2015-09-17 09:16:33', '紧急', null, null, null);

-- ----------------------------
-- Table structure for `t_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_ticket_move`;
CREATE TABLE `t_ticket_move` (
  `uuid` varchar(32) NOT NULL,
  `toUserId` varchar(32) DEFAULT NULL COMMENT '流转目的人ID',
  `fromUserId` varchar(32) DEFAULT NULL COMMENT '申请流转人ID',
  `audtId` varchar(32) DEFAULT NULL COMMENT '审核人Id',
  `ticketId` varchar(32) DEFAULT NULL COMMENT '问题Id',
  `createTime` datetime DEFAULT NULL,
  `reason` varchar(512) DEFAULT NULL COMMENT '流转原因',
  `status` int(1) DEFAULT NULL COMMENT '0待审核 1 通过 2驳回 3已删除',
  `refuseReason` varchar(512) DEFAULT NULL COMMENT '驳回原因',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流转情况';

-- ----------------------------
-- Records of t_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uuid` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `roleId` varchar(32) DEFAULT NULL COMMENT '角色Id',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机',
  `phone` varchar(16) DEFAULT NULL COMMENT '座机',
  `realName` varchar(16) DEFAULT NULL COMMENT '真实姓名',
  `sex` int(1) DEFAULT NULL COMMENT '性别 0 女 1男',
  `status` int(1) DEFAULT NULL COMMENT '状态（0待审核 1正常 2 审核未通过 3删除 4 冻结）',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注（申请备注等）',
  `imageUrl` varchar(1024) DEFAULT 'images/2.jpg' COMMENT '头像路径',
  `createTime` datetime DEFAULT NULL,
  `workerNo` varchar(32) DEFAULT NULL COMMENT '工单号',
  `systemIndex` int(11) DEFAULT NULL COMMENT '系统Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('011d9de417f94e9fb8e14260f3df271a', 'a', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'f156a75ddd5d4bd8b861b5a3f1279b01', null, null, null, 'a', null, '0', null, 'images/2.jpg', '2016-03-25 10:07:52', '10064', '2');
INSERT INTO `t_user` VALUES ('02a4d99ac0a143ebb5b875d06c744469', 'gx', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, 'lil@109.com', null, '15236526895', '关关', '0', '1', '关公', 'images/2.jpg', '2015-09-24 10:35:28', '10008', null);
INSERT INTO `t_user` VALUES ('0561c8c4a47a4606b12faf3095f54b19', 'sa', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'd0e18ad0c03645ad950fd6b67265bf23', null, null, null, 'sa', null, '0', null, 'images/2.jpg', '2016-03-25 10:18:03', '10065', '21');
INSERT INTO `t_user` VALUES ('0fd089859fea4c66981668948b424cb9', '5', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '5', null, '1', null, 'images/2.jpg', '2015-10-16 11:22:18', '10044', '4');
INSERT INTO `t_user` VALUES ('11aff2bebdc44e0484584d3bcfd4a925', '青菜', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '953aad58e74b4a54984719ae0673e305', null, null, null, '大大', null, '0', null, 'images/2.jpg', '2015-10-16 15:40:27', '10051', '6');
INSERT INTO `t_user` VALUES ('234a0336e4714082b3e374bbac8bdef0', '33', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '0d0213a0e2ab4f92a49a2dd4722e2cb6', null, null, null, '333', null, '1', null, 'images/2.jpg', '2015-09-25 14:10:03', '10016', '2');
INSERT INTO `t_user` VALUES ('2bee35340e0143e795f3a3eb1c20190b', '哈哈哈哈', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '2b2d31b6440a4c5db869b4ffb7fb4fe9', null, null, null, '12', null, '0', null, 'images/2.jpg', '2015-10-16 14:40:36', '10048', '6');
INSERT INTO `t_user` VALUES ('3543711181c740f98bad3feb4ba4eca2', 'hehe', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'cb4dec03d70f4d67b51ebd450e16d704', null, null, null, '呵呵', null, '0', null, 'images/2.jpg', '2015-09-25 14:05:29', '10013', '2');
INSERT INTO `t_user` VALUES ('3b0097708a504b249d6793d5713760e7', 'ly', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'c4faf72024bf4ee6bdacbb0a21f28c6c', null, null, null, '李源', null, '0', null, 'images/2.jpg', '2016-03-25 09:45:11', '10061', '2');
INSERT INTO `t_user` VALUES ('481ae12541934b659b1a899cbf2f058a', 'abc', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'b0787b5fef4b461e8468d4a61955a2fc', null, null, null, 'abc', null, '1', null, 'images/2.jpg', '2015-10-17 10:23:40', '10053', '-1');
INSERT INTO `t_user` VALUES ('4d11ff8e5f9b4f50948feb6dc3b8587a', 'gegege', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, 'gegeg@qq.com', null, '18523113240', 'yv', '1', '1', 'e12e', 'images/2.jpg', '2015-10-17 09:53:15', '10052', null);
INSERT INTO `t_user` VALUES ('51893533745f433fad790fd59005df41', '333', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '8d19f5c3715042799f99db35fdd1e41c', '123@12.com', null, '12523546851', '呵呵', null, '1', '3', 'upload/51893533745f433fad790fd59005df41/51893533745f433fad790fd59005df41.jpg', '2015-09-23 18:22:17', '9997', '2');
INSERT INTO `t_user` VALUES ('51aac51fe43240c1a1f427ca4a9570e1', 'test', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '24ad94ca4c0e42deb64022502732407d', null, null, null, 'test', null, '0', null, 'images/2.jpg', '2015-09-29 09:21:58', '10021', '2');
INSERT INTO `t_user` VALUES ('5226c5c126bc4d48bc7e6382755d3d34', '月亮', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '付仕菊', '0', '4', '把月亮看老', 'images/2.jpg', '2015-10-16 09:55:09', '10029', null);
INSERT INTO `t_user` VALUES ('52f0645b6bd6433d977568b04348696b', '444', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', 'aac3d0fdaf764a7191955e67867759c5', null, null, null, '职员', null, '1', null, 'images/2.jpg', '2015-09-23 18:26:16', '9998', '2');
INSERT INTO `t_user` VALUES ('5c0be45b6c954377ba30cc2651bbeabe', 'a2', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '7f9b84daaca44d7cabe3bd45ccae9162', null, null, null, '管理员', null, '1', null, 'images/2.jpg', '2015-10-20 16:09:36', '10056', '12');
INSERT INTO `t_user` VALUES ('5f65a87cb83044ac9173312f28e7dc72', '2222', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', 'aac3d0fdaf764a7191955e67867759c5', '597489269@qq.com', null, '18983986442', '不好玩', '0', '1', '啊啊啊啊啊啊', 'images/2.jpg', '2015-10-16 10:24:16', '10033', null);
INSERT INTO `t_user` VALUES ('6450e612148042a283195589b9016707', '', 'd41d8cd98f00b204e9800998ecf8427e', 'asoitufaoihfaeaefhaiwfheaiewufha', '8f0360c5ef524bbda32d67f1c905d502', null, null, null, '', null, '0', null, 'images/2.jpg', '2016-03-27 13:50:07', '10069', '21');
INSERT INTO `t_user` VALUES ('65fbc34563a442b6bcb511cfd17aa476', 'ddd', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '8d19f5c3715042799f99db35fdd1e41c', null, null, null, 'ddd', null, '1', null, 'images/2.jpg', '2015-09-30 10:02:04', '10025', '2');
INSERT INTO `t_user` VALUES ('662e8299366a44cd9aa1defa1de0f286', 'liuye', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '435140e745704a6f839503e3ba4c0385', null, null, null, '刘烨', null, '0', null, 'images/2.jpg', '2016-03-25 09:46:25', '10062', '2');
INSERT INTO `t_user` VALUES ('664eb55058f511e5b3218c89a5e173c7', '111', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'aac3d0fdaf764a7191955e67867759c5', '33@163.com', '125522188455', '18523113240', '超级管理员3', '0', '1', '啊啊啊3', 'upload/664eb55058f511e5b3218c89a5e173c7/664eb55058f511e5b3218c89a5e173c7.jpg', '2015-09-15 14:10:16', null, null);
INSERT INTO `t_user` VALUES ('6775af722fd54aa0a2aae8d2b797349c', '3', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '89782374747d43aaa66f1f89936e9b41', null, null, null, '2', null, '0', null, 'images/2.jpg', '2015-10-16 11:05:53', '10036', '4');
INSERT INTO `t_user` VALUES ('6cda47a824aa4396a627706d2134e71d', 'c', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '3ff99cce77b7443f94ae11c84dad681a', null, null, null, 'c', null, '0', null, 'images/2.jpg', '2016-03-25 10:21:20', '10067', '21');
INSERT INTO `t_user` VALUES ('7226445137ce4814966d02bf97db70d6', '1', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '4157497685b5455fae6a645d8b1046b1', null, null, null, '', null, '0', null, 'images/2.jpg', '2016-03-18 10:32:54', '10058', '-1');
INSERT INTO `t_user` VALUES ('744cfd36bcd84bc3b79b198f620c7791', '12', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '6093906229854b1794fc22d1f52dd900', null, null, null, '12', null, '0', null, 'images/2.jpg', '2015-09-30 17:01:38', '10027', '2');
INSERT INTO `t_user` VALUES ('7776939b95fd4ccba81d3203de26c965', '市场', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '278b36b959b9432982938cb9c2c8e86d', null, null, null, '市场', null, '0', null, 'images/2.jpg', '2015-10-16 10:07:18', '10031', '-1');
INSERT INTO `t_user` VALUES ('793ddc1b03924fe0a5b160d3dd4696b4', 'yc', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '8d19f5c3715042799f99db35fdd1e41c', '', null, '', '易川', '1', '1', null, 'images/2.jpg', '2015-09-24 11:16:43', '10009', '2');
INSERT INTO `t_user` VALUES ('80e13a2f1586442c8ff4372ccadf9994', 's', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '8680b22b45d14642b8fb6b9e99db18ea', null, null, null, 's', null, '0', null, 'images/2.jpg', '2016-03-25 09:47:31', '10063', '2');
INSERT INTO `t_user` VALUES ('81d23d9722d44ca1ad782dd3188c5dc9', '334', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', 'aac3d0fdaf764a7191955e67867759c5', null, null, null, '易川', null, '1', null, 'images/2.jpg', '2015-09-23 18:10:47', '9999', '2');
INSERT INTO `t_user` VALUES ('877525198e0240228e0dcd52066883e7', 'bjy', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, 'sds@123.com', null, '15236523695', 'jsy', '0', '1', 'sd', 'images/2.jpg', '2015-09-28 13:50:47', '10019', null);
INSERT INTO `t_user` VALUES ('8955cf30707a491e876fff30b5879eac', '哈哈哈', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '03d129285cc14e12ae4bb4e11f8b1766', null, null, null, '哈哈', null, '0', null, 'images/2.jpg', '2015-10-16 14:39:29', '10047', '6');
INSERT INTO `t_user` VALUES ('8e7cf43482e4452c8d87af958a86a3be', 'sweet', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '88ab27caa02b443b8ab749c22e4f461f', null, null, null, '甜馨', null, '0', null, 'images/2.jpg', '2016-03-25 09:44:02', '10060', '2');
INSERT INTO `t_user` VALUES ('989ce590983e4b48a782d8ffe2f54f69', '1', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '735ea3e3cf3a40a2b5508384e7b21faa', null, null, null, '1', null, '1', null, 'images/2.jpg', '2015-10-20 10:33:32', '10055', '13');
INSERT INTO `t_user` VALUES ('9ad2c78fd3e9422b9fa4dd87c828fcd2', '', 'd41d8cd98f00b204e9800998ecf8427e', 'asoitufaoihfaeaefhaiwfheaiewufha', '361fd0b07e8f47e2aa5da123acf06a32', null, null, null, '', null, '0', null, 'images/2.jpg', '2016-03-27 13:18:09', '10068', '21');
INSERT INTO `t_user` VALUES ('9b4d6f037b1b4faea4a806c39cfa5f38', '4', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '4', null, '4', null, 'images/2.jpg', '2015-10-16 11:22:03', '10043', '4');
INSERT INTO `t_user` VALUES ('a1755f4532e14434a7839c7c2926b80f', '小一', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '10@qq.com', null, '17712345678', 'malujun', '1', '1', '', 'images/2.jpg', '2015-10-16 09:53:40', '10028', null);
INSERT INTO `t_user` VALUES ('a83e47da64614ace89309f584a088215', '小一二三四五六七八九十', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '1007221251@qq.com', null, '13123456789', '1', '1', '1', '', 'images/2.jpg', '2015-10-16 10:25:09', '10034', null);
INSERT INTO `t_user` VALUES ('b5dd18471003448b9416a40cd25490e7', '巴拉巴拉小魔仙', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '我要代表月亮消灭你', '0', '3', '', 'images/2.jpg', '2015-10-16 10:21:30', '10032', null);
INSERT INTO `t_user` VALUES ('b6ea890f72fa4f29ac0e7ebd85efb14a', '菠菜', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '953aad58e74b4a54984719ae0673e305', null, null, null, '付仕菊', null, '1', null, 'images/2.jpg', '2015-10-16 15:05:50', '10049', '6');
INSERT INTO `t_user` VALUES ('b8f315368b4c4b958197475ec475a181', '', 'd41d8cd98f00b204e9800998ecf8427e', 'asoitufaoihfaeaefhaiwfheaiewufha', '0612244c0d9e47a9927efdc1568a0e84', null, null, null, '', null, '0', null, 'images/2.jpg', '2016-03-18 10:32:50', '10057', '-1');
INSERT INTO `t_user` VALUES ('bbb03297f28547d78b26d824cf71d51e', 'alie', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '4a773048b1f34fe6881f1ea881dc0281', null, null, null, 'a', null, '1', null, 'images/2.jpg', '2015-10-20 10:08:51', '10054', '18');
INSERT INTO `t_user` VALUES ('c575838fdd1b4d03838bde9c8ffc5e07', '简', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '6480c78db4a6440bb5d41d4b8ee585e1', null, null, null, '简', null, '0', null, 'images/2.jpg', '2015-10-16 10:06:23', '10030', '-1');
INSERT INTO `t_user` VALUES ('c726c74af0d84d57b44fd5344ff7ffbc', '花菜', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '953aad58e74b4a54984719ae0673e305', null, null, null, '小小', null, '1', null, 'images/2.jpg', '2015-10-16 15:23:21', '10050', '6');
INSERT INTO `t_user` VALUES ('d17dae368a9a4bee85069f80c77814a9', '12345', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '', '0', '4', '', 'images/2.jpg', '2015-10-16 13:43:41', '10045', null);
INSERT INTO `t_user` VALUES ('d51b3cb9ea824a16ae568b779323c252', '222', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '593702159@qq.com', null, '15326545887', '2222', '0', '1', '', 'upload/d51b3cb9ea824a16ae568b779323c252/d51b3cb9ea824a16ae568b779323c252.jpg', '2015-09-23 17:34:35', null, null);
INSERT INTO `t_user` VALUES ('d6b5c9f18a2b42f0a02b0bd84cedabe7', 'jsy', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '593702159@qq.com', null, '15223005510', '贾顺燕', '0', '1', '百居易职员', 'images/2.jpg', '2015-09-24 15:10:18', '10012', null);
INSERT INTO `t_user` VALUES ('d9cc5adfd1c64464b1bdac3f04d375f8', '2', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '2', null, '1', null, 'images/2.jpg', '2015-10-16 11:21:36', '10042', '4');
INSERT INTO `t_user` VALUES ('e65875ece40442689687da99efbbd8a0', '市场', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '11627a2d5c12448e8a617f2af1888126', null, null, null, '市场', null, '0', null, 'images/2.jpg', '2015-10-16 11:06:21', '10037', '4');
INSERT INTO `t_user` VALUES ('e6e1e7a224c94a3c950666dde2a5c718', '3', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'e0e6f625b3ce4e818b021d41c98438f3', null, null, null, '3', null, '1', null, 'images/2.jpg', '2015-09-25 14:08:22', '10015', '2');
INSERT INTO `t_user` VALUES ('e9b3837750cf47d3b9880fc590d3bd2d', 'sd', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '8cf3e985f3dd478398f39a59e0a83748', null, null, null, 'sd', null, '0', null, 'images/2.jpg', '2016-03-25 10:18:30', '10066', '21');
INSERT INTO `t_user` VALUES ('e9fc0e08d1434b83b4f96e97cf139850', '1', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', '1007221251@qq.com', null, '18723587742', '1', '1', '1', null, 'images/2.jpg', '2015-10-16 11:19:57', '10041', '4');
INSERT INTO `t_user` VALUES ('ec05adc7e68b48fcabc85ca8eb7be909', '产品', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'fb8f963e7fae4fa1ab1139650e1550e3', null, null, null, 'abc', null, '0', null, 'images/2.jpg', '2015-10-16 11:07:52', '10038', '4');
INSERT INTO `t_user` VALUES ('ee3c3dcad16142339177f48669de2700', ' 121', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '8a55dff4414d4e239edd6f2b3301da4d', null, null, null, '12', null, '1', null, 'images/2.jpg', '2015-09-25 14:12:54', '10017', '2');
INSERT INTO `t_user` VALUES ('fabb93574d9c48afb4fcdf1223212657', 'yc123', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'f0a3a59663b5404ebd124ff885bd8e27', null, null, '15362569512', 'yc123', null, '1', null, 'images/2.jpg', '2015-09-24 14:35:31', '10010', '3');
INSERT INTO `t_user` VALUES ('fbcb7bb5a30b4a27b26478b357eaf4fc', 'gege', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '8d8f897db9874f2995f49568f23fc83e', null, null, null, 'gege', null, '1', null, 'images/2.jpg', '2015-10-16 11:17:39', '10040', '2');
INSERT INTO `t_user` VALUES ('fe0cbc21929d459591222e86f72b6d6f', 'eee', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '8d19f5c3715042799f99db35fdd1e41c', null, null, null, 'ddd', null, '1', null, 'images/2.jpg', '2015-09-30 10:02:29', '10026', '2');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `uuid` varchar(32) NOT NULL,
  `roleName` varchar(32) DEFAULT NULL COMMENT '角色名字',
  `createTime` datetime DEFAULT NULL,
  `level` int(10) DEFAULT NULL COMMENT '级别（0超级管理员，10客户管理员，20开头部门主管，100开头职员）',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `code` varchar(16) DEFAULT NULL COMMENT '角色代码',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('499744105b4a11e5b3218c89a5e173c7', '超级管理员', '2015-09-15 09:37:29', '0', null, 'superAdmin');
INSERT INTO `t_user_role` VALUES ('asoitufaoihfaeaefhaiwfheaiewufha', '部门管理员', '2015-09-14 14:58:35', '20', null, 'departmentAdmin');
INSERT INTO `t_user_role` VALUES ('dfm932bn182jde92njcd29uend29ej28', '普通职员', '2015-09-23 09:35:27', '100', null, 'staff');
INSERT INTO `t_user_role` VALUES ('f39sfvdv3dea343f43t5df213rdsd214', '系统管理员', '2015-09-15 09:19:17', '10', null, 'systemAdmin');

-- ----------------------------
-- Procedure structure for `test`
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`()
BEGIN
update examinfo set endtime = now() where id = 14;
end
;;
DELIMITER ;
