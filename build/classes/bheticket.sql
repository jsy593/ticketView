/*
Navicat MySQL Data Transfer

Source Server         : hostConnection
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : bheticket

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-03-20 17:55:38
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `status` int(1) DEFAULT NULL COMMENT '状态（0待审核 1正常 2冻结 3 未通过）',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接入系统相关信息';

-- ----------------------------
-- Records of t_access_system
-- ----------------------------
INSERT INTO `t_access_system` VALUES ('0bb99566a014489397ebc3628a1da873', '13', '啦啦啦', 'a17aba77cd124140ba83491a6840c22f', '8641c46ce9a54c858264d26ac20a75be', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 10:08:52');
INSERT INTO `t_access_system` VALUES ('0e647e1344634245ad2172d2dc55be23', '2', 'fanaer', 'cf35df8b97f242a2ad0c47cea015860c', 'fa6b40021cb04522970af1628c78a5aa', 'd51b3cb9ea824a16ae568b779323c252', '1', null, '2015-09-23 17:53:07');
INSERT INTO `t_access_system` VALUES ('0e647e1344634245ad21hjd2dc55be3f', '3', 'bjy', '7daba15feefb43b6bc24ba646caf9830', 'daf7a7443eef4f709b48d3980c224dd9', 'd51b3cb9ea824a16aedfjdoeiwr98343', '1', null, '2015-09-28 14:09:45');
INSERT INTO `t_access_system` VALUES ('25d07a4c9c3e4e0c8cf48f032262588d', '9', 'test', '99e4246890de461aad4216ce16824b68', 'f53b41c5ae874e78ab4335438bbe9031', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:38:58');
INSERT INTO `t_access_system` VALUES ('2a9e6b487fbc4bc0840fce7a7860aef2', '10', 'teset2', 'd764dda4e5284d90be30f54b3ca3c5d8', '5933e30ec7c04bb8ada401d623c47a47', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:40:40');
INSERT INTO `t_access_system` VALUES ('2ebb1386970e4d029b1a1b56e0f0db83', '7', '11111', 'f890dff3b15849d2ac8b64bc2a0f2909', 'f3f903b31d6c4960abd85bb263efcd95', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-16 17:27:26');
INSERT INTO `t_access_system` VALUES ('410dc8603c804f6dabb9a6f0ba843d53', '14', 'aaa', '7204c15336b849c0b115b6e8b45ee298', 'c60a08ab952f4086890f4ded41c454e5', 'a1755f4532e14434a7839c7c2926b80f', '2', null, '2015-10-17 10:10:15');
INSERT INTO `t_access_system` VALUES ('66a62809bd514bae92da8aec36378040', null, '1111', 'a919640e792f4ce9b3f914442e4b2252', 'dab4cd55fbee49f5988da23f430e6eff', 'a1755f4532e14434a7839c7c2926b80f', '3', null, '2015-10-16 10:18:55');
INSERT INTO `t_access_system` VALUES ('6a8df5fc7483458b861ecbc8e3092b1a', '8', 'dqwdqw', '920f08eb4ff441eab6d78779076fcee5', 'cc25fc5f672c40b08a22e909f4bcd5f0', 'd51b3cb9ea824a16ae568b779323c252', '1', null, '2015-10-17 09:33:51');
INSERT INTO `t_access_system` VALUES ('772d51416c95471c94ac7ef7797c2881', '6', '这是一个大系统', '58378e5cb32a42928f092e629ed60af5', '9c04605cf6e349dfaaee4672f3162442', '5f65a87cb83044ac9173312f28e7dc72', '1', null, '2015-10-16 10:41:13');
INSERT INTO `t_access_system` VALUES ('7e417e3864834fd0bf2a7914141ce7a4', '18', '123456', '9eff2316db4246aea051af6cd4a76d88', 'a412ae3ed5754034b4fbf145693d9142', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 11:32:59');
INSERT INTO `t_access_system` VALUES ('8f7e2afdb390472980f584c254f8d15d', '4', '111', 'cbb668a28ed44b3091cb191d9b5047dc', '629ae29ada4242a99a712cabf7d31f7f', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-16 10:19:01');
INSERT INTO `t_access_system` VALUES ('8fefe4f27be94ea3913ec1837b977e31', '11', 'test3', 'fa8a5549254c4888b72a5486ecff4b58', 'cd11f2994c4949b1ba4cd6a1034f64e6', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:42:20');
INSERT INTO `t_access_system` VALUES ('bfa06cdb2a08458ca48b11bb739e4b75', '12', 'teset3', 'a2a948ffceef4f90a9baa009521ea0fe', 'b79f061b3a8e4aaba4a5b299084c1f39', 'a1755f4532e14434a7839c7c2926b80f', '1', null, '2015-10-17 09:52:24');
INSERT INTO `t_access_system` VALUES ('ed4262d796dd4c1c979189a3b4c8a50a', '5', '技术部', 'c7ddcd9fe5074360b665ff0737d8e6b4', '10ad5b836a754b11b8a88b301fccaf8f', '5f65a87cb83044ac9173312f28e7dc72', '2', null, '2015-10-16 10:30:50');

-- ----------------------------
-- Table structure for `t_area`
-- ----------------------------
DROP TABLE IF EXISTS `t_area`;
CREATE TABLE `t_area` (
  `uuid` varchar(32) NOT NULL,
  `division` int(12) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `upperCase` varchar(32) DEFAULT NULL,
  `lowerCase` varchar(32) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_area
-- ----------------------------
INSERT INTO `t_area` VALUES ('001d0ae037064734adec92b92f8d3d1f', '620401', '市辖区', 'SXQ', 'sxq', null, null, '0800f56287ad4d55bb0ec1cb3de20ecc');
INSERT INTO `t_area` VALUES ('003d33305b9e4bffb43d63829ee54505', '230882', '富锦市', 'FJS', 'fjs', '132.539', '47.1707', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('0059507ee1af4609beca90fda1a1d840', '331100', '丽水市', 'LSS', 'lss', '119.93', '28.4563', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('005a97cf08644beda93d352c3fafa606', '652101', '吐鲁番市', 'TLFS', 'tlfs', '89.266', '42.6789', '4c177d44681948e1afbc21cfe0ecbfd2');
INSERT INTO `t_area` VALUES ('0064cd8b98d44db8a7b2f3741771c100', '652300', '昌吉回族自治州', 'CJHZZZZ', 'cjhzzzz', '87.296', '44.0071', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('006ae434e75548419d2e97c9c3d92ae9', '530501', '市辖区', 'SXQ', 'sxq', null, null, 'd4729122df5f40ff807ddb1fa092d797');
INSERT INTO `t_area` VALUES ('0075dd9290ce468bb1e827e55b6ee47b', '411623', '商水县', 'SSX', 'ssx', '114.56', '33.5209', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('0096fac2cd9b474e98a80d5ea183dbe1', '350783', '建瓯市', 'JOS', 'jos', '118.485', '27.0449', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('009cb7652f2045d288ce37c3de39ac52', '532527', '泸西县', 'LXX', 'lxx', '103.783', '24.5173', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('00c5bf00914b483ebf98d7b33f57ecbc', '433125', '保靖县', 'BJX', 'bjx', '109.574', '28.6724', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('011dcb48ee004ceb8d34ec1cedd26d08', '310106', '静安区', 'JAQ', 'jaq', '121.455', '31.2354', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('012923e7bf4a4d689720c0beb61a4288', '150723', '鄂伦春自治旗', 'ELCZZQ', 'elczzq', '123.817', '50.3488', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('01410d5d8f80454d967059f588c42be8', '510682', '什邡市', 'SFS', 'sfs', '104.02', '31.2937', 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('014db288e777480db03e6c6bd337156b', '330105', '拱墅区', 'GSQ', 'gsq', '120.159', '30.3447', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('014e1aaea9094fba9bc8581c9a740d09', '411082', '长葛市', 'ZGS', 'zgs', '113.856', '34.2366', '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('01532f44131345f89a53e9e5648e8d4d', '370323', '沂源县', 'YYX', 'yyx', '118.204', '36.1356', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('01610e4c4ca84c70a7599040fdb421c4', '451423', '龙州县', 'LZX', 'lzx', '106.859', '22.4316', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('01653cfee1f64fd2820f4d81f3cca742', '653129', '伽师县', 'JSX', 'jsx', '77.2316', '39.5991', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('01672ca86300493c87d778db6fc4de9c', '513329', '新龙县', 'XLX', 'xlx', '100.288', '30.9458', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('017d9954cf5b4dd4878d5add9fcea914', '610126', '高陵县', 'GLX', 'glx', '109.074', '34.5138', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('0186d89fe41b46a5960cdf3ac8f272e5', '440233', '新丰县', 'XFX', 'xfx', '114.142', '24.0701', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('0199543beed74ca48b3bc58ed3654b63', '230126', '巴彦县', 'BYX', 'byx', '127.324', '46.3404', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('0199de5889c84032b8954b13c56cc189', '140222', '天镇县', 'TZX', 'tzx', '114.168', '40.4035', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('01aee730a7d44e2096c73da2eef5929f', '513337', '稻城县', 'DCX', 'dcx', '100.266', '28.7665', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('01e0d295df184ed9b8b0bd2a1a594dfb', '140828', '夏县', 'XX', 'xx', '111.358', '35.1267', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('01e1e505f8e148498d8e3bec63f334b3', '331001', '市辖区', 'SXQ', 'sxq', null, null, '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('01fe2bf52cac411a892f3111fd7c5cb5', '522732', '三都水族自治县', 'SDSZZZX', 'sdszzzx', '107.957', '25.8529', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('02285f8495d64e49a27cf6ff570a7d2c', '532625', '马关县', 'MGX', 'mgx', '104.27', '22.9566', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('02294c0b5ed241deac5f8a0a174a3c1a', '640423', '隆德县', 'LDX', 'ldx', '106.074', '35.5891', '835ed2facd684917a081908db75b1fd8');
INSERT INTO `t_area` VALUES ('02433176530e42a3b6be342efd72bfa9', '331123', '遂昌县', 'SCX', 'scx', '119.089', '28.5254', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('024534bff82b4144be9d86bd9b070ed4', '210602', '元宝区', 'YBQ', 'ybq', '124.35', '40.1732', 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('024e41552e99445cadc14ec36ca06d40', '140203', '矿区', 'KQ', 'kq', '113.541', '37.8908', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('025b7e38c6144c9da834518c2b7a4f98', '511528', '兴文县', 'XWX', 'xwx', '105.141', '28.2555', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('026c772cb27d44d6a302f405ad169829', '620700', '张掖市', 'ZYS', 'zys', '100.46', '38.9393', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('0285e7b33bb74f16b991b2cbd39b405a', '440106', '天河区', 'THQ', 'thq', '113.386', '23.1661', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('02a61b5ca78246bca29559631f53be58', '210224', '长海县', 'ZHX', 'zhx', '122.748', '39.2601', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('02aa9f50d10d4c5c949cec955e5a8706', '430681', '汨罗市', 'MLS', 'mls', '113.125', '28.802', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('02ace76b8f3e47a0bd95cf6d8a709d6d', '500000', '重庆市', 'ZQS', 'zqs', '106.531', '29.5446', '0');
INSERT INTO `t_area` VALUES ('02ba7e8f7d0e456cb528710d00bb4daa', '230921', '勃利县', 'BLX', 'blx', '130.818', '45.9305', 'b50634da14764d0cae033c7cac9db0a6');
INSERT INTO `t_area` VALUES ('02c5030129fc4efc9fd5d44c7aeadecc', '421000', '荆州市', 'JZS', 'jzs', '112.242', '30.3326', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('02e3e9774a2e4968ae56b1c6f3c8d960', '540125', '堆龙德庆县', 'DLDQX', 'dldqx', '90.7934', '29.8047', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('02f186038c6c46d0ac0bf89e18e5db0e', '431124', '道县', 'DX', 'dx', '111.602', '25.4994', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('0308b45cb4b6495ca6cb3592c42c2ef1', '542429', '巴青县', 'BQX', 'bqx', '94.019', '32.1988', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('031283715d6b40cab2eaced9c4852678', '320117', '溧水区', 'LSQ', 'lsq', '119.04', '31.597', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('03160d0b6ebf4cd3a830ed8ccfcfd8fa', '370881', '曲阜市', 'QFS', 'qfs', '117.032', '35.6158', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('031b57cb6138477ebe1ba1f76d707ebd', '431123', '双牌县', 'SPX', 'spx', '111.716', '25.9149', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('0326b70fe38440278774021114c31141', '654003', '奎屯市', 'KTS', 'kts', '85.0139', '44.5596', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('032da54e1a0248988cdeb899e81a46cd', '440403', '斗门区', 'DMQ', 'dmq', '113.248', '22.2166', 'c35a53182359423d9e4c389d1a1dca2c');
INSERT INTO `t_area` VALUES ('033894b862d34c38b78bf2e2ad1df6c9', '451302', '兴宾区', 'XBQ', 'xbq', '109.193', '23.6643', '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('03544bee950343c78ec2490e9b1afa04', '654026', '昭苏县', 'ZSX', 'zsx', '80.9843', '42.7769', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('03935dd911804037a86d63b8e2a1657c', '460108', '美兰区', 'MLQ', 'mlq', '110.507', '19.9429', '5f0de73ecf1b4cbda3e05787d278d892');
INSERT INTO `t_area` VALUES ('03989d1b4e23478d950822dc510ed489', '440222', '始兴县', 'SXX', 'sxx', '114.115', '24.8527', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('03a0222e475e4817bb2b96d14aaeef10', '630223', '互助土族自治县', 'HZTZZZX', 'hztzzzx', '102.152', '36.8495', '8c141a564f324701b8289ad1fa9b91b8');
INSERT INTO `t_area` VALUES ('03cd8bd8c95a489184e71b77a96a4118', '350527', '金门县', 'JMX', 'jmx', '118.38', '24.4537', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('03d4b1be187e42dda4235dbf2d48e9f4', '130300', '秦皇岛市', 'QHDS', 'qhds', '119.604', '39.9455', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('03d5800cad8845059db1d416c06e76ea', '371724', '巨野县', 'JYX', 'jyx', '116.041', '35.2794', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('0405ec0b9b7d49d9b6da606a31666ef7', '441825', '连山壮族瑶族自治县', 'LSZZYZZZX', 'lszzyzzzx', '112.101', '24.5152', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('042eaf26b08d472aa60a27f17b8f78c8', '451021', '田阳县', 'TYX', 'tyx', '106.811', '23.7298', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('04485d2de8cd43edad199ee56ce94922', '440512', '濠江区', 'HJQ', 'hjq', '116.711', '23.2824', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('0452f9b1d6d54aca9a66e309d6b9e0bf', '350801', '市辖区', 'SXQ', 'sxq', null, null, '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('046dbf6560ce48a58798b836a103208c', '530125', '宜良县', 'YLX', 'ylx', '103.193', '24.9449', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('047af0459ab3405f80cda1eca32b6a40', '230205', '昂昂溪区', 'AAXQ', 'aaxq', '123.973', '47.104', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('047cdad01b754913ac73464631c64064', '110228', '密云县', 'MYX', 'myx', '117.001', '40.5328', '1942c91750114a86b301492bd6196b0c');
INSERT INTO `t_area` VALUES ('049754bc44bc43699b5593a0124de1cf', '610627', '甘泉县', 'GQX', 'gqx', '109.182', '36.3535', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('04ae98f6681149e7963001533fbff0c8', '410326', '汝阳县', 'RYX', 'ryx', '112.436', '34.063', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('04b661b708a54ca8a2699aacb53d67f6', '410482', '汝州市', 'RZS', 'rzs', '112.813', '34.1628', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('04c5954794b342cc8ee047fa5e344b37', '320101', '市辖区', 'SXQ', 'sxq', null, null, '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('04cc8e1abf084ffe9e601bd7e2252a54', '371701', '市辖区', 'SXQ', 'sxq', null, null, '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('04e36e3bbe2242f29a3f0b0fdbe0769e', '331000', '台州市', 'TZS', 'tzs', '121.441', '28.6683', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('051897d3c0d240379e703e0f1bb69446', '371203', '钢城区', 'GCQ', 'gcq', '117.828', '36.0928', 'd25e2db0c9ef4b1cb28b76c7a152467a');
INSERT INTO `t_area` VALUES ('051ec9809bd84c5bb79738f23fe4f050', '540121', '林周县', 'LZX', 'lzx', '91.347', '30.1165', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('0524d5b0568e4a4d8896a257ce4441d7', '441501', '市辖区', 'SXQ', 'sxq', null, null, '9cc1b1b3078b418280f2ca711b950c35');
INSERT INTO `t_area` VALUES ('052559e767d24ede8a1d6fe47e742608', '410105', '金水区', 'JSQ', 'jsq', '113.708', '34.7974', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('05344d8c72df48f0a81cc92c4621c197', '410381', '偃师市', 'YSS', 'yss', '112.735', '34.6308', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('0541c679e4c1427aba36be0eed698792', '320611', '港闸区', 'GZQ', 'gzq', '120.824', '32.0713', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('054ffa119c7441fdba786b32381fceeb', '520621', '江口县', 'JKX', 'jkx', '108.779', '27.7288', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('0557fce41e194e758a00c98095b30d2f', '469007', '东方市', 'DFS', 'dfs', '108.851', '18.9982', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('055f166ee8d34454833a41d98069e57a', '410922', '清丰县', 'QFX', 'qfx', '115.161', '35.9244', 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('05ab4e3202f6401d98292d82205d6d98', '610828', '佳县', 'JX', 'jx', '110.374', '38.0784', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('05b47c278eb14ca481de5aa5ce1e6fee', '371702', '牡丹区', 'MDQ', 'mdq', '115.47', '35.2835', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('05b65edb1a2343bab348c309f696e2e9', '371321', '沂南县', 'YNX', 'ynx', '118.418', '35.5367', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('05b74430ac414b3cb7a8cdf78bc3599c', '654000', '伊犁哈萨克自治州', 'YLHSKZZZ', 'ylhskzzz', '81.2979', '43.9222', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('05b8b6ab7bd34ce4a418010c8e13889c', '211381', '北票市', 'BPS', 'bps', '120.812', '41.8651', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('05bc166c512a4a649e568dbcf4f5034e', '341802', '宣州区', 'XZQ', 'xzq', '118.798', '30.9436', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('05cdaf2caeb541499c5f992676e8bab9', '510108', '成华区', 'CHQ', 'chq', '104.15', '30.695', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('05d5aeb5b9864a75926be75d9473c4aa', '640181', '灵武市', 'LWS', 'lws', '106.532', '37.9352', 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('05d764551ed24945929bdb34988a7ab7', '520100', '贵阳市', 'GYS', 'gys', '106.709', '26.6299', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('05dde23013bd4a928bccc1b516e2c998', '140825', '新绛县', 'XJX', 'xjx', '111.173', '35.6316', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('05efd5019fae4c008271c0f5b970f53c', '330703', '金东区', 'JDQ', 'jdq', '119.809', '29.1555', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('060359273c874c8cb737567adf65ad53', '500103', '渝中区', 'YZQ', 'yzq', '106.547', '29.5552', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('062979190bd4438eaec1a69ac43dc734', '411221', '渑池县', 'MCX', 'mcx', '111.803', '34.8397', '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('0660381651444fd4aca2181b39022d6f', '360721', '赣县', 'GX', 'gx', '115.073', '25.902', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('066efd1f2c344f3cad74ec350d07f489', '540235', '聂拉木县', 'NLMX', 'nlmx', '86.0675', '28.5998', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('068de4b226294438939495b45199c058', '150403', '元宝山区', 'YBSQ', 'ybsq', '119.268', '42.1841', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('0696c89b1ba34bd490b12c50ac9995e8', '530628', '彝良县', 'YLX', 'ylx', '104.241', '27.631', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('06ade70a2fa5437c8155e3fdf249352e', '654201', '塔城市', 'TCS', 'tcs', '83.1901', '46.8114', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('06bdb819f1e14ece85b375e959af40ab', '532627', '广南县', 'GNX', 'gnx', '105.006', '23.9678', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('06c20e72cdd44d22bd626be983183b47', '532324', '南华县', 'NHX', 'nhx', '101.038', '25.1035', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('06e743f1c9b3475098af116d5342762f', '371482', '禹城市', 'YCS', 'ycs', '116.581', '36.9191', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('070ce5cd3cde44faad4b5bc8ab623435', '411400', '商丘市', 'SQS', 'sqs', '115.642', '34.4386', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('0728689c5659475488111746d6cd648b', '450801', '市辖区', 'SXQ', 'sxq', null, null, 'b93e28fad1454605a81753c740e0b00d');
INSERT INTO `t_area` VALUES ('07362279ddc4412c9b75e9d22b1ee53e', '411323', '西峡县', 'XXX', 'xxx', '111.439', '33.4869', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('0749c0ad55dd461785ae13701b6349ad', '360482', '共青城市', 'GQCS', 'gqcs', null, null, 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('075f6f04bac243ef800f899cb0a674f5', '220402', '龙山区', 'LSQ', 'lsq', '125.211', '42.9132', '507ea0be588e47e19900b4aad1a4524e');
INSERT INTO `t_area` VALUES ('076c3ddd886946a88cffcff8cf71dbe9', '150121', '土默特左旗', 'TMTZQ', 'tmtzq', '111.235', '40.69', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('078825854df04ef1a5d7c01de471e540', '530922', '云县', 'YX', 'yx', '100.234', '24.3274', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('07abcad004664e26b7ba3b23477d8c4d', '340421', '凤台县', 'FTX', 'ftx', '116.585', '32.7914', '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('07ac1d2eb1004a119beee0505c315845', '130600', '保定市', 'BDS', 'bds', '115.495', '38.8866', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('07b63c36dace4cffb898624fb6ba2171', '341302', '埇桥区', 'YQQ', 'yqq', '117.159', '33.726', '24cf9b2033a04e289857ab5bdfed05d5');
INSERT INTO `t_area` VALUES ('07c285f1d9a243afa46e199a6ec09826', '150521', '科尔沁左翼中旗', 'KEQZYZQ', 'keqzyzq', '122.499', '44.0576', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('07c2c01259a546958cdd5e1c6086f0a9', '350725', '政和县', 'ZHX', 'zhx', '118.972', '27.3248', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('07d5bd332b6242ed81c19f525d8dbbc3', '360902', '袁州区', 'YZQ', 'yzq', '114.29', '27.8394', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('07dd008806af4129a1aabb97b7ffadb3', '530624', '大关县', 'DGX', 'dgx', '103.912', '27.9051', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('07e4a8f3080e4dd88d08ff6da0bead21', '610600', '延安市', 'YAS', 'yas', '109.501', '36.6033', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('0800f56287ad4d55bb0ec1cb3de20ecc', '620400', '白银市', 'BYS', 'bys', '104.171', '36.5467', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('080335420e2d40329f5afff86e5add26', '441226', '德庆县', 'DQX', 'dqx', '111.987', '23.2764', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('08204d85ec224fe5bf5d470ceaf0069a', '350526', '德化县', 'DHX', 'dhx', '118.258', '25.674', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('082b255ed6ac4900bf028ae296eabb7b', '511126', '夹江县', 'JJX', 'jjx', '103.559', '29.7761', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('0838bdfc651940c58916c0b21561a727', '350400', '三明市', 'SMS', 'sms', '117.642', '26.2708', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('083a6c6d46294224b6c53856b71f460b', '520101', '市辖区', 'SXQ', 'sxq', null, null, '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('0847c19bbc65463faa682f14f7565425', '130107', '井陉矿区', 'JXKQ', 'jxkq', '114.051', '38.0811', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('08aba6e2bb6c49029ad1fa2980de777e', '520500', '毕节市', 'BJS', 'bjs', '105.333', '27.4086', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('08baa69e911c4cac910e04a89b3588e7', '410401', '市辖区', 'SXQ', 'sxq', null, null, 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('08dd23527f5e4f8eb6ac36a4848b0033', '451028', '乐业县', 'LYX', 'lyx', '106.518', '24.8297', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('08e28d50e85e44f5bb37534a9a27afdf', '330201', '市辖区', 'SXQ', 'sxq', null, null, '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('09170918f1774baaa2124cf177a98c71', '520600', '铜仁市', 'TRS', 'trs', '109.169', '27.6749', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('091d197e0d8645c7bf153afe692a7d57', '513330', '德格县', 'DGX', 'dgx', '98.9675', '32.0594', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('09464c32e1794210ae5c382ef6ea29ae', '532524', '建水县', 'JSX', 'jsx', '102.89', '23.6839', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('097fae8234bb4fbfad8065856fdaa6ac', '360733', '会昌县', 'HCX', 'hcx', '115.765', '25.5058', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('09828dbb37344294a17566745ea9d80a', '330104', '江干区', 'JGQ', 'jgq', '120.304', '30.3158', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('09c9b20c7c7948f5862da1b101b36bbc', '420501', '市辖区', 'SXQ', 'sxq', null, null, 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('09dab4c74d304665b7b26cff211dba1b', '140923', '代县', 'DX', 'dx', '113.051', '39.0932', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('09ea4e699ce3400ebd5d3697e9867915', '522701', '都匀市', 'DYS', 'dys', '107.478', '26.1537', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('09edbe2ad87545a896223861065ac2a2', '411523', '新县', 'XX', 'xx', '114.859', '31.6463', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('09fd14ed45494194ba58f15bc964f7d8', '210104', '大东区', 'DDQ', 'ddq', '123.499', '41.8353', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('0a05fe0f8c9a4e42be4c58f58bd97542', '360923', '上高县', 'SGX', 'sgx', '114.861', '28.1991', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('0a0afdaf1e5841ed8ef53603875518ca', '410184', '新郑市', 'XZS', 'xzs', '113.736', '34.4594', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('0a292176f1084187a4b58b493ba83f8c', '230204', '铁锋区', 'TFQ', 'tfq', '124.263', '47.3035', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('0a47ba2c47354514a21e3c34a7572bb5', '610581', '韩城市', 'HCS', 'hcs', '110.394', '35.5828', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('0a521582d1c84bb3a50311d84fb82d7a', '230112', '阿城区', 'ACQ', 'acq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('0a8760be3d9048039147c8bc7191826d', '510400', '攀枝花市', 'PZHS', 'pzhs', '101.722', '26.5876', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('0a8983f749eb41c3b985bcd073f81ccc', '451101', '市辖区', 'SXQ', 'sxq', null, null, 'dbc8dfb8a16844dc9d987611ec696ffc');
INSERT INTO `t_area` VALUES ('0a9b701869b146048c0ca292a2cd1e96', '360800', '吉安市', 'JAS', 'jas', '114.992', '27.1138', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('0a9d733b7cbe43fabd72c32052040ea5', '370901', '市辖区', 'SXQ', 'sxq', null, null, 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('0aa3d165299041f3bb535d0ed0ebe0a9', '371300', '临沂市', 'LYS', 'lys', '118.341', '35.0724', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('0aa67df7efc541da84e6c824a04d0888', '431081', '资兴市', 'ZXS', 'zxs', '113.469', '25.9372', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('0ab6bd2b8e5d44fb8fcd5248ecbc73a5', '350125', '永泰县', 'YTX', 'ytx', '118.795', '25.8574', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('0ab7ff7edee241929914632b440f6769', '430321', '湘潭县', 'XTX', 'xtx', '112.789', '27.6692', 'a7d11d332fb046ffae4054c1ab1e87e3');
INSERT INTO `t_area` VALUES ('0ac23cc050db4432a09f5005d4cdb7c7', '222405', '龙井市', 'LJS', 'ljs', '129.384', '42.8442', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('0ad008a459ac47bba89cccd82eb22392', '371502', '东昌府区', 'DCFQ', 'dcfq', '115.908', '36.4558', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('0ad019af0da74004b19b5407224f854b', '150824', '乌拉特中旗', 'WLTZQ', 'wltzq', '108.465', '41.831', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('0b276ac1754a4e51b4565e0806ca176f', '411000', '许昌市', 'XCS', 'xcs', '113.835', '34.0267', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('0b3455a2c6dc4469bbef0d81e50623a4', '360701', '市辖区', 'SXQ', 'sxq', null, null, '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('0b3a8dcd0c2c4c9c8f16550c2ce7f650', '150423', '巴林右旗', 'BLYQ', 'blyq', '118.946', '43.6848', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('0b508810dd65424c86b2abc3acf014f1', '540122', '当雄县', 'DXX', 'dxx', '90.8948', '30.4243', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('0b6492d4a4964eac82d95a4bab12fe3e', '431223', '辰溪县', 'CXX', 'cxx', '110.273', '27.8959', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('0b690734ddcc4d7399d4b22b678b6ecc', '130133', '赵县', 'ZX', 'zx', '114.835', '37.7696', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('0b7a8d903d6546a883fdca177d099814', '211204', '清河区', 'QHQ', 'qhq', '124.276', '42.5086', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('0b85079919a44b2697ee68014769eaac', '445222', '揭西县', 'JXX', 'jxx', '115.917', '23.4947', '0d5e23ba42e5437086e944e6d3dfc2a6');
INSERT INTO `t_area` VALUES ('0b8769d2deca47f3ba9e14693af656cc', '650200', '克拉玛依市', 'KLMYS', 'klmys', '84.8812', '45.5943', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('0b886eb4ac534fb4995dd593a1f49dc8', '440700', '江门市', 'JMS', 'jms', '113.078', '22.5751', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('0bab080a3aa14bc2b72f53bbc1342e2c', '341701', '市辖区', 'SXQ', 'sxq', null, null, 'b2d0ae237ad540dfa52df769a841138a');
INSERT INTO `t_area` VALUES ('0bcc3655947e44cdacac8151a1dba7c8', '469028', '陵水黎族自治县', 'LSLZZZX', 'lslzzzx', '109.949', '18.576', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('0be3bb2100a64cd09246a486ce6ce7fc', '340208', '三山区', 'SSQ', 'ssq', '118.312', '31.2128', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('0c0aab9a011e456296ab1e40d4600276', '130502', '桥东区', 'QDQ', 'qdq', '114.511', '38.0634', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('0c3078f4373d40799340d51661b35a69', '120113', '北辰区', 'BCQ', 'bcq', '117.181', '39.2591', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('0c3291c14b854309859f4b281842f7c1', '130705', '宣化区', 'XHQ', 'xhq', '115.258', '40.6324', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('0c885e63cd434d9d9712fe19ce2f005d', '350203', '思明区', 'SMQ', 'smq', '118.135', '24.4687', '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('0c9db4e10768474ca3d5cd8f0a65c45d', '620321', '永昌县', 'YCX', 'ycx', '102.034', '38.4334', 'fac48b142d78414782f7bcbffd85b3ad');
INSERT INTO `t_area` VALUES ('0ca108e1468c4e16b08638a89ed24999', '230422', '绥滨县', 'SBX', 'sbx', '131.857', '47.483', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('0cb430efa5004afab03996312c095e12', '440500', '汕头市', 'STS', 'sts', '116.729', '23.3839', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('0cb65035bfbb4b8b9385e968b63a2ed7', '210381', '海城市', 'HCS', 'hcs', '122.791', '40.8404', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('0cdb8072d3874ed9950a35e5c735552f', '210213', '金州区', 'JZQ', 'jzq', '121.957', '39.2986', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('0d2b5e7a4f3148b4aa2f1f859b9e672b', '210204', '沙河口区', 'SHKQ', 'shkq', '121.583', '38.9218', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('0d5b431db59c42cbbce5d2e35db82629', '542621', '林芝县', 'LZX', 'lzx', '94.3804', '29.7833', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('0d5e23ba42e5437086e944e6d3dfc2a6', '445200', '揭阳市', 'JYS', 'jys', '116.38', '23.548', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('0d601e478f7447e4b3c3fb0e9761b8c5', '422802', '利川市', 'LCS', 'lcs', '108.827', '30.24', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('0d64dde0479447bbb9c12f63c5c3725f', '500111', '大足区', 'DZQ', 'dzq', '105.748', '29.6607', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('0d73de5e131b4362a5277352302c4753', '210421', '抚顺县', 'FSX', 'fsx', '124.137', '41.7501', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('0d8587c16177499090a0478914709c45', '420202', '黄石港区', 'HSGQ', 'hsgq', '115.073', '30.2338', '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('0d892304f9d44fc7b81819d485f90461', '420200', '黄石市', 'HSS', 'hss', '115.051', '30.2161', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('0da033043330476bb7777866d6000cea', '511400', '眉山市', 'MSS', 'mss', '103.841', '30.0611', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('0db9e79f34824f3a83747bf5ee15b76a', '350200', '厦门市', 'SMS', 'sms', '118.104', '24.4892', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('0dbb0f2464214b3295abd71ec339a79c', '623022', '卓尼县', 'ZNX', 'znx', '103.394', '34.6145', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('0dbe9e2669e741cfb0c976d86ed0b2ed', '530621', '鲁甸县', 'LDX', 'ldx', '103.426', '27.2057', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('0dd3a9db0c2b4416a22643645d81ee6e', '411525', '固始县', 'GSX', 'gsx', '115.71', '32.1369', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('0df83a00993d4654be807a4aad457758', '420921', '孝昌县', 'XCX', 'xcx', '114.035', '31.2398', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('0e16bc659c1a4ef8b012799d3a5e183f', '510525', '古蔺县', 'GLX', 'glx', '105.936', '27.9833', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('0e2ce7cb084c4bd58ca1ce8eb308d34c', '220382', '双辽市', 'SLS', 'sls', '123.709', '43.7677', 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('0e3077c0bbc44860b284698730d698c4', '350123', '罗源县', 'LYX', 'lyx', '119.465', '26.5063', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('0e3658fc7c46447cb8125b06d82333ab', '431000', '郴州市', 'CZS', 'czs', '113.038', '25.7823', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('0e6b9305142d492e9e1bc40b82370e9a', '510112', '龙泉驿区', 'LQYQ', 'lqyq', '104.301', '30.6034', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('0e7518ff5e6b48209c7fca66bd3fe219', '231025', '林口县', 'LKX', 'lkx', '130.023', '45.3961', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('0e7a24c599ec4a8c93b00235de760d81', '611026', '柞水县', 'ZSX', 'zsx', '109.281', '33.6954', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('0e87e233d232498b8d124121fc9137c5', '141100', '吕梁市', 'LLS', 'lls', '111.143', '37.5273', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('0e9ac5fb26b14ed0a91723c41b6011f8', '450328', '龙胜各族自治县', 'LSGZZZX', 'lsgzzzx', '110.01', '25.8683', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('0ebeab5e6b474e07a5673d704899a612', '421202', '咸安区', 'XAQ', 'xaq', '114.392', '29.8547', 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('0ece7c50ea6445f9a65150cc9a30f3ce', '445100', '潮州市', 'CZS', 'czs', '116.63', '23.6618', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('0ee3a49ab1f54bc9bfe90de07106a06b', '360601', '市辖区', 'SXQ', 'sxq', null, null, 'e3608de815dd4b8e825407c8b73f5700');
INSERT INTO `t_area` VALUES ('0eecf5c4c1a4463ebad5fa8ac6aae078', '150927', '察哈尔右翼中旗', 'CHEYYZQ', 'cheyyzq', '112.471', '41.4283', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('0ef2e28cce9348858700ec4005db7a94', '522627', '天柱县', 'TZX', 'tzx', '109.265', '26.9247', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('0f0a042db31a4ac4849f28a5ce93725e', '652800', '巴音郭楞蒙古自治州', 'BYGLMGZZZ', 'byglmgzzz', '86.1217', '41.7714', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('0f181e31b60d4164b32db121850359a5', '210323', '岫岩满族自治县', 'XYMZZZX', 'xymzzzx', '123.346', '40.4032', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('0f1a2402806f4aa2a6b3c3dbb70f8a07', '140522', '阳城县', 'YCX', 'ycx', '112.362', '35.4265', 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('0f27bf644c544c55ad475c890308fda7', '610124', '周至县', 'ZZX', 'zzx', '108.114', '33.9536', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('0f37b7f2e9494ddbbd9f4a978e482f93', '320801', '市辖区', 'SXQ', 'sxq', null, null, '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('0f846f91474e40f19f9613d839a79bf8', '429021', '神农架林区', 'SNJLQ', 'snjlq', '110.487', '31.5958', 'ca0a6522a4dd478dbefc06903bd8c3bb');
INSERT INTO `t_area` VALUES ('0fa5318c0edb4d7c87bbf8d1948acb20', '131100', '衡水市', 'HSS', 'hss', '115.686', '37.7469', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('0fa8888c8ab043c29f791e62f67f70fe', '445102', '湘桥区', 'XQQ', 'xqq', '116.678', '23.7', '0ece7c50ea6445f9a65150cc9a30f3ce');
INSERT INTO `t_area` VALUES ('0fae869f67d34ffcaab02c07d53d76b2', '411122', '临颍县', 'LYX', 'lyx', '113.964', '33.8444', 'dadce90a1182412080feb71560640c9b');
INSERT INTO `t_area` VALUES ('0fb8166bde124fb3a51dc6bb15902e20', '110113', '顺义区', 'SYQ', 'syq', '116.728', '40.1549', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('0fd8cbc6a4b84e28a88a01d66ec44698', '360200', '景德镇市', 'JDZS', 'jdzs', '117.187', '29.3036', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('0fe15d7bac0e4bc69fc129f2d0ee0b95', '420528', '长阳土家族自治县', 'ZYTJZZZX', 'zytjzzzx', '110.854', '30.4829', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('0fed0f9390284e0d91839289da196d3b', '430626', '平江县', 'PJX', 'pjx', '113.721', '28.7622', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('0ff4cced757d43bd9655feb9c83e1b7f', '440203', '武江区', 'WJQ', 'wjq', '113.38', '24.7082', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('0ffee0eafd104a23814c69fdc2155449', '430407', '石鼓区', 'SGQ', 'sgq', '112.602', '26.9589', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('1031d2194ca7488ab9693ee201e7abb9', '130722', '张北县', 'ZBX', 'zbx', '114.773', '41.2936', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('1040d86c224e465e86a562c269b78bdb', '542227', '措美县', 'CMX', 'cmx', '91.5153', '28.5767', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('1049942d585b46e78137ca54e3a71f97', '340181', '巢湖市', 'CHS', 'chs', '117.88', '31.6087', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('105e0405e84544da96400fe135a52477', '411324', '镇平县', 'ZPX', 'zpx', '112.193', '33.0708', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('1060cc8e75f64290ae18a32565f34384', '371525', '冠县', 'GX', 'gx', '115.541', '36.5364', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('10760ed292114099a90c9a114fff247e', '620601', '市辖区', 'SXQ', 'sxq', null, null, 'd1effea105c14bbbbb4c8fe5fcf24e51');
INSERT INTO `t_area` VALUES ('107716b779d04d8eb39148aba8b7c18a', '430529', '城步苗族自治县', 'CBMZZZX', 'cbmzzzx', '110.325', '26.3255', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('107e98abffdd44b195b2543b81d15110', '522601', '凯里市', 'KLS', 'kls', '107.948', '26.6317', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('108b2b8282224231931c03cd3e3116ba', '330225', '象山县', 'XSX', 'xsx', '121.859', '29.3788', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('109cb9c3de6a41678a33c00a335e5306', '410725', '原阳县', 'YYX', 'yyx', '113.953', '35.029', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('10ccf2fd117648bab975a062d3c98373', '441802', '清城区', 'QCQ', 'qcq', '113.115', '23.6259', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('10f5d018fb244501a2b6fbcd70baa4fd', '640502', '沙坡头区', 'SPTQ', 'sptq', '105.111', '37.3606', 'b64a08b1d2eb402982e6e7a2794cbcb6');
INSERT INTO `t_area` VALUES ('110a5a39d23f45c1825da5f1ec6b2ffb', '220221', '永吉县', 'YJX', 'yjx', '126.228', '43.6015', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('111d59a069534708961e303559a4e6db', '152200', '兴安盟', 'XAM', 'xam', '122.048', '46.0838', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('1124be3c62734ad9b36377c0b1a73b2d', '361021', '南城县', 'NCX', 'ncx', '116.682', '27.519', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('112564f7c88c41fcb78d2e8f2fbb7288', '411403', '睢阳区', 'SYQ', 'syq', '115.59', '34.2868', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('1127322010a1491bb8c25b10b6fd25ff', '130527', '南和县', 'NHX', 'nhx', '114.753', '37.017', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('11509436df34406dbddac97acb938d76', '220303', '铁东区', 'TDQ', 'tdq', '123.021', '41.1182', 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('11676cfc401d48beb248986a21a92b57', '350429', '泰宁县', 'TNX', 'tnx', '117.126', '26.8655', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('1179b2f6bb4e4f2986941230578463e5', '610201', '市辖区', 'SXQ', 'sxq', null, null, '5e5f0ab02e004598b96a194ac2a8b3b0');
INSERT INTO `t_area` VALUES ('11a8300665a44b149870fa15d962e46c', '460205', '崖州区', 'YZQ', 'yzq', null, null, 'cf3d29a5792a41f48a9ce52d2dda943b');
INSERT INTO `t_area` VALUES ('11bdc7a65f4a45188654c4ad700d0500', '620823', '崇信县', 'CXX', 'cxx', '107.004', '35.2491', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('11cd1a156e01470383912913fd201a38', '630225', '循化撒拉族自治县', 'XHSLZZZX', 'xhslzzzx', '102.464', '35.714', '8c141a564f324701b8289ad1fa9b91b8');
INSERT INTO `t_area` VALUES ('11ef8b37742749d796c918a1eb1c9293', '652823', '尉犁县', 'WLX', 'wlx', '86.867', '40.8588', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('11f6d95253534186bc1d72fc2c7b7769', '371600', '滨州市', 'BZS', 'bzs', '117.968', '37.4053', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('11fa5570560a442484950aff0abca9d2', '522629', '剑河县', 'JHX', 'jhx', '108.695', '26.6512', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('11fa8857a1e840f789e3a8bf0163b93f', '360728', '定南县', 'DNX', 'dnx', '115.094', '24.8242', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('11ff9b68e7684fe08301733c77cd837c', '431128', '新田县', 'XTX', 'xtx', '112.235', '25.8905', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('1228848941b448df9759375bad5b73c9', '420505', '猇亭区', 'YTQ', 'ytq', '111.455', '30.5518', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('12310ef2e9ee4ee4bd116a42d7982830', '410222', '通许县', 'TXX', 'txx', '114.502', '34.4416', '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('1247d552d85a4776a29680e3db22a8ca', '130425', '大名县', 'DMX', 'dmx', '115.249', '36.3095', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('1252339ba0f44edea8726ae732017420', '230224', '泰来县', 'TLX', 'tlx', '123.558', '46.6033', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('1269434fe7d14b778253e6d8c244119d', '210106', '铁西区', 'TXQ', 'txq', '123.359', '41.8057', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('128a95fdd71340b7ae9c729357ba5d86', '640121', '永宁县', 'YNX', 'ynx', '106.109', '38.295', 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('12a0c7946b99405dacd79fbe1bd20150', '450203', '鱼峰区', 'YFQ', 'yfq', '109.456', '24.2758', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('12de6a589add4a3796603867429a9921', '532926', '南涧彝族自治县', 'NJYZZZX', 'njyzzzx', '100.425', '24.903', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('12e68d49086545cd8dac27baa6d64cf0', '310107', '普陀区', 'PTQ', 'ptq', '121.398', '31.2637', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('131d3610d0c14b919cd06fca67476207', '230306', '城子河区', 'CZHQ', 'czhq', '131.028', '45.3797', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('134339d207074b79874d774039bbd22b', '431026', '汝城县', 'RCX', 'rcx', '113.678', '25.5551', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('134d46b8584c456f8fbf6c3b4cad0244', '361030', '广昌县', 'GCX', 'gcx', '116.363', '26.7619', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('136e48890f844c408af1b9cc430eefd3', '211005', '弓长岭区', 'GZLQ', 'gzlq', '123.426', '41.146', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('13730b032ab848f09436876ecdd516df', '511181', '峨眉山市', 'EMSS', 'emss', '103.401', '29.507', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('137f24001d34404c86b7ab76f3b67e44', '650202', '独山子区', 'DSZQ', 'dszq', '84.8999', '44.3023', '0b8769d2deca47f3ba9e14693af656cc');
INSERT INTO `t_area` VALUES ('13951faa753b45569110ccb3e5333b5a', '451030', '西林县', 'XLX', 'xlx', '105.097', '24.3914', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('139bdc4cb002436c8e951874815e58f6', '411723', '平舆县', 'PYX', 'pyx', '114.647', '32.9921', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('13a3713d06444ff68d13dffbc9e2d309', '620981', '玉门市', 'YMS', 'yms', '97.4612', '40.2256', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('13ec5e9cd88d4b46a6d32d927dc70e27', '530921', '凤庆县', 'FQX', 'fqx', '99.9209', '24.6105', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('13ee7e86d86d4a80b08319309010da89', '130227', '迁西县', 'QXX', 'qxx', '118.371', '40.2385', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('13f7bb9658d8489f995f9766ca11e9f8', '360428', '都昌县', 'DCX', 'dcx', '116.342', '29.3562', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('13fd76eda9a84a4f9f3f910fb10821f4', '211281', '调兵山市', 'DBSS', 'dbss', '123.584', '42.4429', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('1422155b22ee4af1b6c41b73a1f85550', '130581', '南宫市', 'NGS', 'ngs', '115.479', '37.2864', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('142c03a29468435b88fa37604e19918e', '331081', '温岭市', 'WLS', 'wls', '121.421', '28.4006', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('1453e79555bc4125b05bca6078dd43f7', '350301', '市辖区', 'SXQ', 'sxq', null, null, '9be15a0d529a4e5f9fef94e6295427ea');
INSERT INTO `t_area` VALUES ('1476b46c8b8a40d5ab64ae5b482e9619', '640521', '中宁县', 'ZNX', 'znx', '105.692', '37.3601', 'b64a08b1d2eb402982e6e7a2794cbcb6');
INSERT INTO `t_area` VALUES ('147cd598c4b24d92bde0aa474e4ffa3e', '530521', '施甸县', 'SDX', 'sdx', '99.1575', '24.6572', 'd4729122df5f40ff807ddb1fa092d797');
INSERT INTO `t_area` VALUES ('147d758baf7f44eda05c3cf220dd8ad7', '520326', '务川仡佬族苗族自治县', 'WCGLZMZZZX', 'wcglzmzzzx', '107.92', '28.6614', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('148fdc181f034b8b87a44bd7769a73bf', '532900', '大理白族自治州', 'DLBZZZZ', 'dlbzzzz', '100.224', '25.5969', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('14a0da0ceb4b496d98c3d55e01af6cda', '330328', '文成县', 'WCX', 'wcx', '120.028', '27.8127', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('14a8722c4a484edd9634ed0ce9e82d80', '411402', '梁园区', 'LYQ', 'lyq', '115.638', '34.503', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('14bd90f696be493b88b094b6e5ae43d2', '500117', '合川区', 'HCQ', 'hcq', '106.318', '30.1187', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('14cbb227f8494c5f85503a891570fa06', '340811', '宜秀区', 'YXQ', 'yxq', '117.056', '30.6143', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('14d9abf711a84e83b63a625724e087cd', '341100', '滁州市', 'CZS', 'czs', '118.325', '32.3174', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('14e19b26b0504a338b1356cad426c345', '621022', '环县', 'HX', 'hx', '107.072', '36.6168', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('14f21337ba50487c9afb41d191535c64', '330329', '泰顺县', 'TSX', 'tsx', '119.885', '27.5364', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('151937e72e5c48ca8b7b83493b04987e', '341321', '砀山县', 'DSX', 'dsx', '116.42', '34.4541', '24cf9b2033a04e289857ab5bdfed05d5');
INSERT INTO `t_area` VALUES ('152bc137343c407d87442edd1f861bcb', '230305', '梨树区', 'LSQ', 'lsq', '130.765', '45.0971', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('1542d34435de4b63bbf13a6b0b5a5d19', '611021', '洛南县', 'LNX', 'lnx', '110.273', '34.1657', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('1559e39bd11c45ecaddcad05b02d8278', '330205', '江北区', 'JBQ', 'jbq', '121.493', '29.9664', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('1577d23db1e44138847580d273ad797f', '621021', '庆城县', 'QCX', 'qcx', '107.683', '36.0461', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('158531388f3a4b6b90b3daec2a0abad5', '350428', '将乐县', 'JLX', 'jlx', '117.401', '26.7323', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('1588b6d1cf894dd0a5466b4ef992fccf', '420902', '孝南区', 'XNQ', 'xnq', '114.016', '30.9446', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('15988194b1bd4c3eb0ac3fa2dfae7d40', '230828', '汤原县', 'TYX', 'tyx', '130.072', '46.9883', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('15bb798a5dad462f8e1534bdd6a8b88a', '140701', '市辖区', 'SXQ', 'sxq', null, null, '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('15ee4956354943b69f726fd87b9d31ee', '420112', '东西湖区', 'DXHQ', 'dxhq', '114.087', '30.6982', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('15eea450e33549c78dd6ebeb7125cd48', '330600', '绍兴市', 'SXS', 'sxs', '120.592', '30.0024', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('1613ba7bc0324d2da8104aac56459c39', '513233', '红原县', 'HYX', 'hyx', '102.641', '32.7361', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('16179dc4d1ee42b6b6b5e1ccef3ad7b0', '532601', '文山市', 'WSS', 'wss', '104.246', '23.3741', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('161fd114c1404281bb08e14dec902536', '511725', '渠县', 'QX', 'qx', '106.988', '30.9488', 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('1628d7fb891340dbbe1dfd68b800b24e', '341621', '涡阳县', 'WYX', 'wyx', '116.224', '33.5579', 'fdfe40a0faff43159592cebf8e884365');
INSERT INTO `t_area` VALUES ('1631d07234a84c94937123ef6dc99e45', '230184', '五常市', 'WCS', 'wcs', '127.491', '44.7725', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('1632cf322f54475da191d258bead535d', '450400', '梧州市', 'WZS', 'wzs', '111.305', '23.4854', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('1639a7d54e2142c88515d201c517114b', '320682', '如皋市', 'RGS', 'rgs', '120.58', '32.2736', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('16411553894e414fae7c1237e91fdeff', '371423', '庆云县', 'QYX', 'qyx', '117.463', '37.8018', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('1641a2e6f2fb49a8a6732fea971d2883', '430600', '岳阳市', 'YYS', 'yys', '113.146', '29.378', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('1642e92385234f1fb60108848d78fdf1', '231222', '兰西县', 'LXX', 'lxx', '126.214', '46.3583', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('1656804161c6491f91e10349d6d5ad44', '530114', '呈贡区', 'CGQ', 'cgq', '102.873', '24.8717', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('1686b3b2073146f684ef45ea9880af31', '330283', '奉化市', 'FHS', 'fhs', '121.377', '29.6171', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('168cc33c90314f80912c5155b8d58c47', '320301', '市辖区', 'SXQ', 'sxq', null, null, '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('169160ac259b4819bfb951e892ce278d', '451425', '天等县', 'TDX', 'tdx', '107.081', '23.1172', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('16afa71386474b8da97f36f7c90c3cf6', '410602', '鹤山区', 'HSQ', 'hsq', '114.098', '35.9733', '52b9af85f16b4dcca76293c1077849a8');
INSERT INTO `t_area` VALUES ('16b994eb6436471a828fa84c124e2b6a', '220122', '农安县', 'NAX', 'nax', '125.094', '44.4615', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('16c59bf869a84db7bebc9ba0fd026e4f', '370400', '枣庄市', 'ZZS', 'zzs', '117.279', '34.8079', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('16f66a711fab4603a97d623c2744f180', '653124', '泽普县', 'ZPX', 'zpx', '77.2264', '38.1226', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('16fa85c9f6474d54b957723dd46bd820', '430603', '云溪区', 'YXQ', 'yxq', '113.354', '29.5262', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('170160063e194cb0846fcf393c384d20', '141026', '安泽县', 'AZX', 'azx', '112.308', '36.1643', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('17025e1d93f747f0842e13708db37edc', '370612', '牟平区', 'MPQ', 'mpq', '121.569', '37.2724', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('1703b68b49904002af65ba0dc076a250', '440605', '南海区', 'NHQ', 'nhq', '113.041', '23.0783', 'ca3b6b5a1b1240afaa43f8fede431538');
INSERT INTO `t_area` VALUES ('173b797f4be74e0ab8ea457d425be534', '150204', '青山区', 'QSQ', 'qsq', '109.904', '40.6588', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('173c4a8a8bbe42cd9c4ee1dea516d1fa', '430624', '湘阴县', 'XYX', 'xyx', '112.805', '28.7131', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('17508119dad04eed9a4ee17efbe82b23', '320118', '高淳区', 'GCQ', 'gcq', '118.972', '31.3364', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('175fbbd2f8dd4d22bc3d348dd2438597', '410801', '市辖区', 'SXQ', 'sxq', null, null, 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('175fdecff85b4b2fb8fa5c4e5b2149a5', '220183', '德惠市', 'DHS', 'dhs', '125.769', '44.5105', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('176926ae94f6418eabb7eba805a9942d', '610422', '三原县', 'SYX', 'syx', '108.981', '34.7032', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('17784e100f63454c921c6aeb1fcf684c', '410727', '封丘县', 'FQX', 'fqx', '114.488', '35.0404', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('1778a366325a4457abd3949861914c38', '220204', '船营区', 'CYQ', 'cyq', '126.389', '43.8822', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('178cc76ca22442059e1ff172b1e53895', '431003', '苏仙区', 'SXQ', 'sxq', '113.051', '25.7735', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('17f37d03a8dd45b99b46818ca9e0e3be', '211404', '南票区', 'NPQ', 'npq', '120.665', '41.137', 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('180392d7a45748558c7457af43a0bec8', '620923', '肃北蒙古族自治县', 'SBMGZZZX', 'sbmgzzzx', '96.5326', '40.6765', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('180b8b6102404cab87caa751dd931d6f', '522634', '雷山县', 'LSX', 'lsx', '108.154', '26.3432', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('183c2457107044a4a06418fcc87464f2', '371003', '文登区', 'WDQ', 'wdq', '122.011', '37.1541', '7323eba94c9540d68004b46262fa31cf');
INSERT INTO `t_area` VALUES ('184ae0c6b1aa4f67b4c5d737e78d7309', '411425', '虞城县', 'YCX', 'ycx', '115.914', '34.3691', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('184af1fb49934c45aba45bf50496c7d2', '450202', '城中区', 'CZQ', 'czq', '101.777', '36.6066', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('1853d8d1340243608611399f24c4fcf5', '320482', '金坛市', 'JTS', 'jts', '119.515', '31.7231', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('18846f3436bc43ef91df7cfb0d567011', '420324', '竹溪县', 'ZXX', 'zxx', '109.791', '32.0377', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('1892068999f2497fbd60fe3150ffbdaf', '510402', '东区', 'DQ', 'dq', '116.326', '39.9322', '0a8760be3d9048039147c8bc7191826d');
INSERT INTO `t_area` VALUES ('1896783a5b244d508ec6a7501d89a278', '421125', '浠水县', 'XSX', 'xsx', '115.276', '30.5074', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('189f91fd47f444e08fc94fb7eef88c62', '410501', '市辖区', 'SXQ', 'sxq', null, null, '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('18a6539e269747098f4c44000a4cd594', '140924', '繁峙县', 'FZX', 'fzx', '113.596', '39.2048', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('18adf15fb4ec478bb3c053d6b89b1e68', '431126', '宁远县', 'NYX', 'nyx', '111.988', '25.6538', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('18b3e166c39e4f7aa01cbbdeb59425d4', '140109', '万柏林区', 'WBLQ', 'wblq', '112.403', '37.8947', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('18c26629249b40a1a5d45d3361eb034d', '440116', '萝岗区', 'LGQ', 'lgq', '113.523', '23.2563', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('18efec9f18204dfbac68281444f0ead8', '622925', '和政县', 'HZX', 'hzx', '103.299', '35.3457', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('18f03ffc2e854cfdbc84791d6483d58c', '533300', '怒江傈僳族自治州', 'NJLSZZZZ', 'njlszzzz', '98.8599', '25.8607', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('1915b1517a614b5d91da78f73495cde2', '140110', '晋源区', 'JYQ', 'jyq', '112.482', '37.7487', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('1917da4be23d4d46b253c0d33d1a359e', '441801', '市辖区', 'SXQ', 'sxq', null, null, 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('191ca24f54f744cc98881143623246b6', '360734', '寻乌县', 'XWX', 'xwx', '115.665', '24.9051', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('1942c91750114a86b301492bd6196b0c', '110200', '县', 'X', 'x', null, null, '8ba5f8d7f6b641ebaa204b952fdc1186');
INSERT INTO `t_area` VALUES ('1959539f9be34a988cd05b0f448bed61', '610102', '新城区', 'XCQ', 'xcq', '108.992', '34.2715', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('196d82535c444846a4f5d00405b56685', '421201', '市辖区', 'SXQ', 'sxq', null, null, 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('1972c202f8594ec1b9d88e4b8289d707', '230225', '甘南县', 'GNX', 'gnx', '123.847', '48.0116', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('199eb95714794c2d9d4b328f5736c7db', '210900', '阜新市', 'FXS', 'fxs', '121.661', '42.0192', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('19b2baf2867a4d34af7ad018e5bb49df', '620822', '灵台县', 'LTX', 'ltx', '107.41', '35.0745', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('19caa0205ab74af59e778c5632e0c399', '130925', '盐山县', 'YSX', 'ysx', '117.267', '37.9604', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('19cb107b40504090b7b1b4db21f3f783', '450123', '隆安县', 'LAX', 'lax', '107.691', '23.1102', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('19cd59f8f03f4a0d9a602ba08da4de8c', '350628', '平和县', 'PHX', 'phx', '117.201', '24.3245', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('19e2406e1f9b40fc8166791e6cc46d33', '530625', '永善县', 'YSX', 'ysx', '103.653', '27.9532', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('19f0c94aa2b14d40b7c6bc0dc0668175', '500226', '荣昌县', 'RCX', 'rcx', '105.513', '29.4712', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('19f2ecda2d5d4f719be849c53c05c7ec', '530423', '通海县', 'THX', 'thx', '102.711', '24.1176', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('1a131640f7df465c9bda99e1d1ae285e', '532927', '巍山彝族回族自治县', 'WSYZHZZZX', 'wsyzhzzzx', '100.179', '25.2468', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('1a22ad5216a24d82b1f784ee6f90753a', '130700', '张家口市', 'ZJKS', 'zjks', '114.894', '40.8112', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('1a22cc87e55b4243a4034e079f25bbef', '450126', '宾阳县', 'BYX', 'byx', '108.94', '23.1683', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('1a2a870a65ea470685e9511777a3271f', '130701', '市辖区', 'SXQ', 'sxq', null, null, '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('1a3211bb80644f19a55de9b551c04851', '350982', '福鼎市', 'FDS', 'fds', '120.198', '27.2248', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('1a49259f9e2747f797c35284fe08bece', '520112', '乌当区', 'WDQ', 'wdq', '106.733', '26.6883', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('1a4d40c7719b4a15bd9e10dd9f515d61', '510322', '富顺县', 'FSX', 'fsx', '105.022', '29.1523', 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('1a54275b8e8844baba1f0e60ce6facac', '512001', '市辖区', 'SXQ', 'sxq', null, null, '3c821ffeeae24bb7af79ed2a7cf9edcd');
INSERT INTO `t_area` VALUES ('1a67cd150dcf494988bcad9f30d0be08', '230405', '兴安区', 'XAQ', 'xaq', '130.244', '47.2337', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('1a8d72e9720f42fa80912cdf5507a79a', '533321', '泸水县', 'LSX', 'lsx', '98.8593', '26.0702', '18f03ffc2e854cfdbc84791d6483d58c');
INSERT INTO `t_area` VALUES ('1a9c6bae7d974514961153d90200ab04', '430621', '岳阳县', 'YYX', 'yyx', '113.238', '29.1785', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('1aa6e85d88724562b8a656dd1385146e', '450201', '市辖区', 'SXQ', 'sxq', null, null, 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('1ac24dc716e2433db8742fa4a3335c92', '650103', '沙依巴克区', 'SYBKQ', 'sybkq', '87.5456', '43.8079', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('1ae94c5c0a794085a4ed990f07b38a0a', '610329', '麟游县', 'LYX', 'lyx', '107.711', '34.7857', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('1b00966bbcee4fe685652d3f9a33693a', '522326', '望谟县', 'WMX', 'wmx', '106.173', '25.2323', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('1b0381546e8847d48cc858b44a4f36ed', '520423', '镇宁布依族苗族自治县', 'ZNBYZMZZZX', 'znbyzmzzzx', '105.834', '25.8444', '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('1b11b582e514437184c3364fe8e7fbf2', '640300', '吴忠市', 'WZS', 'wzs', '106.208', '37.9936', '1c79e3a807264ac095db85cd4ce88673');
INSERT INTO `t_area` VALUES ('1b16915c9c7b4ce6857b8da456e534b9', '360300', '萍乡市', 'PXS', 'pxs', '113.86', '27.6395', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('1b1bc6ef6fa6465eb07bb4ff54ee87d1', '520521', '大方县', 'DFX', 'dfx', '105.695', '27.2313', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('1b1de5e20c99476bab240c0d3b02ef69', '421123', '罗田县', 'LTX', 'ltx', '115.481', '30.9324', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('1b2013b6250c4f5db5a994d01d13b104', '632522', '同德县', 'TDX', 'tdx', '100.602', '35.0684', 'fb615a43a9174dadbc6ee2aa863265c9');
INSERT INTO `t_area` VALUES ('1b2ce4570ee5462ea2fe6d8402b7aac0', '451402', '江州区', 'JZQ', 'jzq', '107.461', '22.5298', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('1b6b35d23cc3431ca5a3ad4c26242b43', '150100', '呼和浩特市', 'HHHTS', 'hhhts', '111.66', '40.8283', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('1b79ecca78f54d4580db818ca693497a', '341822', '广德县', 'GDX', 'gdx', '119.365', '30.8939', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('1b8c13e81946438b9ab0c94362abf2f8', '130721', '宣化县', 'XHX', 'xhx', '115.035', '40.5602', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('1b93b49067524720b5ef17a471862219', '542624', '墨脱县', 'MTX', 'mtx', '95.0178', '28.7322', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('1b9f992e3bd04bba9f5f82f260a1d018', '610728', '镇巴县', 'ZBX', 'zbx', '107.883', '32.5174', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('1ba9068e29eb4a0aa5764843411bae45', '350582', '晋江市', 'JJS', 'jjs', '118.559', '24.7296', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('1bf344f361eb4b289f5a64745eedc108', '430281', '醴陵市', 'LLS', 'lls', '113.471', '27.6623', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('1bf4ea1c72df49589e677c56ce511fb3', '610628', '富县', 'FX', 'fx', '109.05', '36.0174', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('1c1d51f68e9447209acf32260aa08b86', '350128', '平潭县', 'PTX', 'ptx', '119.766', '25.5377', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('1c41e392b1f346c1a6207e73b8dc9fe6', '513333', '色达县', 'SDX', 'sdx', '100.214', '32.3566', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('1c5f0d33d6454f98886c619d2bf90f06', '410329', '伊川县', 'YCX', 'ycx', '112.469', '34.4071', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('1c661f2a2bac40f1bb8236678ed7c332', '511321', '南部县', 'NBX', 'nbx', '105.924', '31.3498', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('1c67eed0847441e6a59119c425b6a0f4', '321302', '宿城区', 'SCQ', 'scq', '118.275', '33.8628', '6cc757f4428c4ab9a7f5783a328ea2af');
INSERT INTO `t_area` VALUES ('1c67f0e0d9db45d0aaa1f6a104f57116', '370701', '市辖区', 'SXQ', 'sxq', null, null, '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('1c79e3a807264ac095db85cd4ce88673', '640000', '宁夏回族自治区', 'NXHZZZQ', 'nxhzzzq', '106.155', '37.3213', '0');
INSERT INTO `t_area` VALUES ('1c83bf8319a349b397510a4864d7aeb6', '220822', '通榆县', 'TYX', 'tyx', '122.745', '44.7857', 'b7600da1f75d4d42b3a1d532574b77e8');
INSERT INTO `t_area` VALUES ('1c92df48f2494ee0b404c6b425fdca95', '441427', '蕉岭县', 'JLX', 'jlx', '116.196', '24.6833', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('1cd88980bf034771a2c0f74b55b9ae39', '540229', '仁布县', 'RBX', 'rbx', '89.9763', '29.2242', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('1ce4660be3b0449c957d1602b380c118', '230704', '友好区', 'YHQ', 'yhq', '128.466', '48.128', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('1ce4c73e22db439ca76e9ef7630af223', '632625', '久治县', 'JZX', 'jzx', '101.006', '33.4739', '1dd19b4dbd6e441d8864c7855b538cd7');
INSERT INTO `t_area` VALUES ('1ce8a805d0e74e16b75595c2b1674c6f', '211282', '开原市', 'KYS', 'kys', '124.284', '42.4712', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('1d0236e4ed43432d933dfbef84756e3c', '511025', '资中县', 'ZZX', 'zzx', '104.807', '29.8138', '601b6ef239914e5a8764e6343d7a0573');
INSERT INTO `t_area` VALUES ('1d02a7a5e4134973b1664c3850f088af', '652301', '昌吉市', 'CJS', 'cjs', '87.0736', '44.1751', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('1d20e7020d7c4beea09b5c65d346ed61', '610103', '碑林区', 'BLQ', 'blq', '108.966', '34.2555', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('1d29b63d184843609f484c1e380133fd', '410503', '北关区', 'BGQ', 'bgq', '114.391', '36.1417', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('1d3c492da63b415ab82d923bd0badc65', '210521', '本溪满族自治县', 'BXMZZZX', 'bxmzzzx', '124.159', '41.1957', '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('1d3cd51fb74c4a33b5f9bafa87ef582d', '542500', '阿里地区', 'ALDQ', 'aldq', '81.1077', '30.4046', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('1d52ec544a7f4ace8da7afb82e954836', '652223', '伊吾县', 'YWX', 'ywx', '94.9116', '43.5704', 'f3b337cc66b24571ad6d9417eab4e9b9');
INSERT INTO `t_area` VALUES ('1d5462a423fe4ccfbd42669f5421ccfd', '542224', '桑日县', 'SRX', 'srx', '92.2306', '29.4071', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('1d68358f8c4648f19f372a9a29248a5e', '430502', '双清区', 'SQQ', 'sqq', '111.545', '27.2482', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('1d6c15e7adcc467daa02bb24c0a429cf', '420606', '樊城区', 'FCQ', 'fcq', '111.929', '32.154', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('1d6f32e49e914f1bb7ebb60999c654bd', '330304', '瓯海区', 'OHQ', 'ohq', '120.558', '27.9722', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('1d76dfa61ed14a4a90675050b36ce859', '441502', '城区', 'CQ', 'cq', null, null, '9cc1b1b3078b418280f2ca711b950c35');
INSERT INTO `t_area` VALUES ('1d7e9e21defe427dbbec9677ef93f636', '450722', '浦北县', 'PBX', 'pbx', '109.542', '22.2713', '7ed79c566cfb42e39424806a872e2f61');
INSERT INTO `t_area` VALUES ('1d87cdf555eb401599926b1e2754d593', '321111', '润州区', 'RZQ', 'rzq', '119.431', '32.1966', 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('1d98e36d42d945ce813eac93fe1f1e6d', '130129', '赞皇县', 'ZHX', 'zhx', '114.29', '37.6281', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('1da8a72a9aab46f4a929273c52ab78be', '370983', '肥城市', 'FCS', 'fcs', '116.745', '36.1125', 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('1da8d0adf4134a1eb91cc083811eb1e7', '652924', '沙雅县', 'SYX', 'syx', '82.9255', '40.4061', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('1dadd5fcea4b4d75be9f32125a11aca3', '371526', '高唐县', 'GTX', 'gtx', '116.257', '36.8398', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('1dbc33a9df2e4cb495b81b80e0bc91f9', '140322', '盂县', 'YX', 'yx', '113.361', '38.2294', '24208d947e4e4ccaaaf04a187d57ccf4');
INSERT INTO `t_area` VALUES ('1dd1271f50cb4a199cde99ab24d48245', '330301', '市辖区', 'SXQ', 'sxq', null, null, 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('1dd19b4dbd6e441d8864c7855b538cd7', '632600', '果洛藏族自治州', 'GLZZZZZ', 'glzzzzz', '100.224', '34.4805', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('1dde83e16e914cc98a0ab4dac9e9248c', '320830', '盱眙县', 'XYX', 'xyx', '118.538', '32.9716', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('1de834aad9d543e0a890e6d11c78fb6a', '620200', '嘉峪关市', 'JYGS', 'jygs', '98.2816', '39.8024', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('1dea41f9b0f941269ce8e6aed1003ef0', '220203', '龙潭区', 'LTQ', 'ltq', '126.695', '44.1009', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('1e23f343a00348a69955b0aeab59ab42', '220105', '二道区', 'EDQ', 'edq', '125.611', '43.8722', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('1e28e9ae06154391b8bb09bbd839a70f', '540227', '谢通门县', 'XTMX', 'xtmx', '88.0824', '29.9149', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('1e2b2ef68b084ea7bf0d6deb22fcd0c4', '450325', '兴安县', 'XAX', 'xax', '110.601', '25.607', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('1e3521f37f2e4e78a9cedb9ba6696c91', '441602', '源城区', 'YCQ', 'ycq', '114.654', '23.6936', '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('1e44ee4cc56e4a0e97bebcbbc6488a78', '441201', '市辖区', 'SXQ', 'sxq', null, null, '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('1e4f6e68461c4b629404ebf3cbb3ac64', '632221', '门源回族自治县', 'MYHZZZX', 'myhzzzx', '101.731', '37.4584', '71a035f3b38b4554b63b1da0cfbdf690');
INSERT INTO `t_area` VALUES ('1e87a76558544c20b25984aece8373a2', '430922', '桃江县', 'TJX', 'tjx', '111.99', '28.4641', 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('1eb8d673a647484b90e9f7e3d6652d1c', '620824', '华亭县', 'HTX', 'htx', '106.609', '35.2056', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('1ebf4ab9ca0b41219637539d127950ba', '652327', '吉木萨尔县', 'JMSEX', 'jmsex', '89.0531', '44.3529', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('1ed4b152aec34b8d91e49f9ee92463b8', '451025', '靖西县', 'JXX', 'jxx', '106.321', '23.1496', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('1edc618c66fa4e2bb4e973b12b1b04e4', '441303', '惠阳区', 'HYQ', 'hyq', '114.475', '22.8747', '7e42aca6103e4ababd7f9517dbe01160');
INSERT INTO `t_area` VALUES ('1ee6519648ae4a03950b9ee539fe928d', '230711', '乌马河区', 'WMHQ', 'wmhq', '128.795', '47.5494', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('1eff03045cf14abb9d8ed57d7f3831b6', '652826', '焉耆回族自治县', 'YQHZZZX', 'yqhzzzx', '86.0761', '42.0961', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('1f0456cd116640899d0fc7df3d0eee1b', '330825', '龙游县', 'LYX', 'lyx', '119.199', '28.9971', '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('1f0571f8798a45fc95a54c36c733f3d4', '211202', '银州区', 'YZQ', 'yzq', '123.859', '42.2483', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('1f0b44eb948648bca3ad0313fd7bc8d2', '510811', '昭化区', 'ZHQ', 'zhq', null, null, '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('1f0f7fee785e44a1ad8e50b6df557815', '530000', '云南省', 'YNS', 'yns', '101.593', '24.8642', '0');
INSERT INTO `t_area` VALUES ('1f1efbb5ee71469b83f2182436183bf9', '371311', '罗庄区', 'LZQ', 'lzq', '118.297', '34.9643', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('1f3352e35a7b497ca140437dc75a1c3e', '532528', '元阳县', 'YYX', 'yyx', '102.82', '23.0692', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('1f47165a4ece4f958cbb2f57519625c5', '540123', '尼木县', 'NMX', 'nmx', '90.0955', '29.6032', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('1f7f70834b114423ae17d555807331e0', '532823', '勐腊县', 'MLX', 'mlx', '101.462', '21.7367', '3c0dd7a126f5427bacf3c773408f4270');
INSERT INTO `t_area` VALUES ('1f941f9453ef4fa1887f4f50668280f4', '450603', '防城区', 'FCQ', 'fcq', '108.03', '21.7648', 'b20c1f95e080453d8c1ff1efe0f64d53');
INSERT INTO `t_area` VALUES ('1fb3bff2ae94430a93c7a3fa8eb2cd24', '469005', '文昌市', 'WCS', 'wcs', '110.781', '19.7509', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('1fd1375ab9ad4094909194eb1f6d0840', '120223', '静海县', 'JHX', 'jhx', '116.973', '38.8613', '818f2b1ebf4b4a4ba8cc6e948be31076');
INSERT INTO `t_area` VALUES ('1fdfecef51c242b89542bf128e6e6b61', '330902', '定海区', 'DHQ', 'dhq', '122.073', '30.0648', '9aac8e6852114aeaae087275dcda7b05');
INSERT INTO `t_area` VALUES ('1fe69d930f2a4ba4a40005506f13c57d', '511523', '江安县', 'JAX', 'jax', '105.129', '28.6635', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('1ff1ce56efaa4382a25788f67b147e29', '150600', '鄂尔多斯市', 'EEDSS', 'eedss', '109.994', '39.8165', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('20054c423fe24286a0f00dfc057d0ddc', '430581', '武冈市', 'WGS', 'wgs', '110.746', '26.7866', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('20088f2ba8e1416b947f8acf64cc73cb', '140928', '五寨县', 'WZX', 'wzx', '111.745', '39.0087', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('201d152dbc274e8c907b3838071107aa', '440803', '霞山区', 'XSQ', 'xsq', '110.385', '21.2048', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('2039c075b74f4b0d802121622a3c527d', '530112', '西山区', 'XSQ', 'xsq', '102.603', '24.9836', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('2041662fc5614bf49fb2075ec7a7dc1f', '532924', '宾川县', 'BCX', 'bcx', '100.628', '25.8753', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('2045c8fd6e12439ebd6b0015dc5e5fac', '430400', '衡阳市', 'HYS', 'hys', '112.584', '26.8982', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('204dce59594d4be3b6e825063f018986', '542625', '波密县', 'BMX', 'bmx', '95.5566', '30.1248', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('2056d6b2e84649d7bed2629c51157d27', '130400', '邯郸市', 'HDS', 'hds', '114.483', '36.6093', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('2061cbc890bf4522b23fb91c9bf4cc7d', '150623', '鄂托克前旗', 'ETKQQ', 'etkqq', '107.597', '38.2759', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('209425313de74aef8d44e2b6e0ddc118', '520526', '威宁彝族回族苗族自治县', 'WNYZHZMZZZX', 'wnyzhzmzzzx', '104.138', '26.9129', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('20a42cf62b5542a28b7f21bd28e9de80', '211302', '双塔区', 'STQ', 'stq', '120.484', '41.6057', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('20aab06d1e97426780e40b3d794bccfc', '130322', '昌黎县', 'CLX', 'clx', '119.095', '39.638', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('20ac02d18f40498a93d0c9613f074641', '130434', '魏县', 'WX', 'wx', '114.936', '36.2506', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('20c6752ca4a8441990f5aa8aef49f4ed', '500234', '开县', 'KX', 'kx', '108.389', '31.2771', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('20cfb1575acd4068a7e573b68dca5986', '621101', '市辖区', 'SXQ', 'sxq', null, null, '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('20d30fed80b844668aaa8ef572b6a7cd', '230811', '郊区', 'JQ', 'jq', null, null, 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('20fda719348842fea1b89c446a717d2a', '450401', '市辖区', 'SXQ', 'sxq', null, null, '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('21257032ddcf447eb7fa6a88dbf4cdc2', '632701', '玉树市', 'YSS', 'yss', '97.0133', '33.0062', '836ceddbf0764941a9bfa03cb8719219');
INSERT INTO `t_area` VALUES ('213417c3650c4403b9af2c4dcb446d74', '530629', '威信县', 'WXX', 'wxx', '105.05', '27.8915', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('213b63c733db469e9fa986828e746781', '130733', '崇礼县', 'CLX', 'clx', '115.22', '41.0261', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('215bdb09834f4c469d0ebd3bacd1cd9a', '360730', '宁都县', 'NDX', 'ndx', '116.012', '26.5902', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('215d1fcf07a945178443ca03148515e3', '360826', '泰和县', 'THX', 'thx', '114.909', '26.744', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('216fd324f4844961bb1cc78c7ca69644', '440801', '市辖区', 'SXQ', 'sxq', null, null, 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('2190499487a5428797b2e1325fdb040d', '420325', '房县', 'FX', 'fx', '110.629', '32.0799', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('219e4a3945bc437796c59a6ebf30914f', '370724', '临朐县', 'LQX', 'lqx', '118.558', '36.3654', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('21a4aa192b13448a975a87c95815ce63', '321181', '丹阳市', 'DYS', 'dys', '119.644', '31.9603', 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('21ab2893fb224dfba8f097365bda0581', '441581', '陆丰市', 'LFS', 'lfs', '115.788', '22.9679', '9cc1b1b3078b418280f2ca711b950c35');
INSERT INTO `t_area` VALUES ('21b489a82b89489aa2c3a79e62e8ac83', '511803', '名山区', 'MSQ', 'msq', null, null, 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('21b99cac2d5541749e1de9fc7a7d9ad9', '330723', '武义县', 'WYX', 'wyx', '119.721', '28.7741', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('21dcb4d797984f408161c296b94fff44', '341723', '青阳县', 'QYX', 'qyx', '117.908', '30.602', 'b2d0ae237ad540dfa52df769a841138a');
INSERT INTO `t_area` VALUES ('22148ae7fd514921ab89a5f6918cdeda', '630202', '乐都区', 'LDQ', 'ldq', '102.43', '36.5079', '8c141a564f324701b8289ad1fa9b91b8');
INSERT INTO `t_area` VALUES ('2226dbc692c84218abe3f4c52b53815e', '510000', '四川省', 'SCS', 'scs', '102.899', '30.3675', '0');
INSERT INTO `t_area` VALUES ('22429629676742b3abf3989bede4a078', '610826', '绥德县', 'SDX', 'sdx', '110.396', '37.5209', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('224c42b8e8d64becb335fdec0f071c0f', '431300', '娄底市', 'LDS', 'lds', '111.996', '27.7411', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('2264c237f1084fe48fb8532e5d6d1031', '530827', '孟连傣族拉祜族佤族自治县', 'MLDZLHZWZZZX', 'mldzlhzwzzzx', null, null, '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('226ea2221b244f0789c07deefa4fa0db', '140411', '郊区', 'JQ', 'jq', null, null, 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('22920448dc4d488581a90e27cad51b68', '441284', '四会市', 'SHS', 'shs', '112.688', '23.4314', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('22aa65ae571d493fa2803e92865b254e', '542622', '工布江达县', 'GBJDX', 'gbjdx', '93.2421', '30.0252', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('22ae66ff00da4283855da93412697f64', '130826', '丰宁满族自治县', 'FNMZZZX', 'fnmzzzx', '116.624', '41.4257', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('22beb41781844914be15580b54cecc0b', '350781', '邵武市', 'SWS', 'sws', '117.481', '27.2352', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('22dc40c8e2de42adb9b1bc8e803bda17', '130229', '玉田县', 'YTX', 'ytx', '117.735', '39.8188', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('22e9708db6304dad9b87078cf223e4f8', '420684', '宜城市', 'YCS', 'ycs', '112.373', '31.6733', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('22f681da6d004e12b93be860899e34ab', '371500', '聊城市', 'LCS', 'lcs', '115.987', '36.4558', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('230088c94eaa412c99488d349b9bfcd7', '140802', '盐湖区', 'YHQ', 'yhq', '110.962', '35.0637', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('2314473316ab4e8ebcdde46212adc3b8', '610502', '临渭区', 'LWQ', 'lwq', '109.565', '34.5535', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('2320e47685734a24a9c8cfd5f1685b93', '421022', '公安县', 'GAX', 'gax', '112.154', '29.9571', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('234f04e4c3624ee39b9e4a817ccc7983', '231000', '牡丹江市', 'MDJS', 'mdjs', '129.608', '44.5885', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('2391526d3c2c433cacf2151636b00d05', '340801', '市辖区', 'SXQ', 'sxq', null, null, '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('23a6719c04b04e45b27fb79ef56e2e33', '360983', '高安市', 'GAS', 'gas', '115.304', '28.3652', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('23b0a331a8a7436ca30c40e35226669f', '510303', '贡井区', 'GJQ', 'gjq', '104.603', '29.3146', 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('23b3b065674748f98f59d2bf44aa64cb', '340824', '潜山县', 'QSX', 'qsx', '116.553', '30.7586', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('23b868b7efe44d7d9586bab196925d6e', '522631', '黎平县', 'LPX', 'lpx', '109.075', '26.1575', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('23b933d47cc449fa9d2a0eb38077c788', '420583', '枝江市', 'ZJS', 'zjs', '111.729', '30.4518', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('23bc07098bd645859613679597642370', '451102', '八步区', 'BBQ', 'bbq', '111.688', '24.3093', 'dbc8dfb8a16844dc9d987611ec696ffc');
INSERT INTO `t_area` VALUES ('23cb692954a540209fce55f15d9fd5d7', '130731', '涿鹿县', 'ZLX', 'zlx', '115.224', '40.1019', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('23ccd2daaf854a5d84e0ab76d2c0c159', '451322', '象州县', 'XZX', 'xzx', '109.772', '24.0192', '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('23cecb9a44a7416088d7c7f140c0d2c5', '410702', '红旗区', 'HQQ', 'hqq', '113.915', '35.2862', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('23e35ced75c54267b82fcea07e6b500d', '451300', '来宾市', 'LBS', 'lbs', '109.232', '23.7412', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('23eaa098d8b14b3e9fd2c744674b4a72', '429004', '仙桃市', 'XTS', 'xts', '113.387', '30.294', 'ca0a6522a4dd478dbefc06903bd8c3bb');
INSERT INTO `t_area` VALUES ('23f8c0ffcb8648818ec9dd70e6b12cd8', '620701', '市辖区', 'SXQ', 'sxq', null, null, '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('240403bb101e45f5b03b0999f0bd7a40', '610104', '莲湖区', 'LHQ', 'lhq', '108.916', '34.2732', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('2409ef0c733042f9b3ae465f8343369b', '610925', '岚皋县', 'LGX', 'lgx', '108.887', '32.2425', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('24208d947e4e4ccaaaf04a187d57ccf4', '140300', '阳泉市', 'YQS', 'yqs', '113.569', '37.8695', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('2421e2f2b2ad457c8d21276de19cce8e', '451001', '市辖区', 'SXQ', 'sxq', null, null, 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('242bd7241ec34deb81a42c2335fe2c75', '530425', '易门县', 'YMX', 'ymx', '102.122', '24.6964', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('243e16fb95cd4872848c537ce17db1fa', '450221', '柳江县', 'LJX', 'ljx', '109.274', '24.2095', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('243f35615c5441d9b24c882312682497', '341825', '旌德县', 'JDX', 'jdx', '118.483', '30.3218', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('24bafdb356464dcc954b406a13474348', '430722', '汉寿县', 'HSX', 'hsx', '112.044', '28.8648', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('24bcb3bd7a4e4828b4d65e2162c4604e', '542525', '革吉县', 'GJX', 'gjx', '82.0338', '32.0579', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('24bd0eb2df9a4672857e04870371c811', '370124', '平阴县', 'PYX', 'pyx', '116.423', '36.2039', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('24cf9b2033a04e289857ab5bdfed05d5', '341300', '宿州市', 'SZS', 'szs', '116.989', '33.6368', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('24d4ed84284d466ab0a9b29d5d128fa3', '440304', '福田区', 'FTQ', 'ftq', '114.056', '22.5517', 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('24f9bdb670b045a2bb25b5d3d685d4fb', '510129', '大邑县', 'DYX', 'dyx', '103.388', '30.6149', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('251144c926a442ad9bc2567ba60ad896', '620502', '秦州区', 'QZQ', 'qzq', '105.581', '34.3444', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('251b8641afeb4fc3be4239f3c8a7d97a', '421181', '麻城市', 'MCS', 'mcs', '115.09', '31.2179', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('252feef090494e35855c8f5b1d08cbbd', '500101', '万州区', 'WZQ', 'wzq', '108.413', '30.7101', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('25511244f63247cba63b340e2d8ba5bb', '340604', '烈山区', 'LSQ', 'lsq', '116.908', '33.8441', '95697758c29f4043b537696892db2960');
INSERT INTO `t_area` VALUES ('2558e4d6f0644d8ba23f90b83313ccbe', '320826', '涟水县', 'LSX', 'lsx', '119.325', '33.8842', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('255b6002461c491781e874aa8d6acbef', '360924', '宜丰县', 'YFX', 'yfx', '114.774', '28.455', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('2572a816c3c74923a5bbb95b38508676', '522322', '兴仁县', 'XRX', 'xrx', '105.278', '25.4998', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('2573f06ac7e646f4abf7e59f3c1ca2aa', '430802', '永定区', 'YDQ', 'ydq', '110.501', '29.0885', '94fbd360ab114e599dbc7fccbb59a832');
INSERT INTO `t_area` VALUES ('25907ddca4bb40fcabfbc617b3d953b2', '510401', '市辖区', 'SXQ', 'sxq', null, null, '0a8760be3d9048039147c8bc7191826d');
INSERT INTO `t_area` VALUES ('259a9ed61b5f429cb5e7f53cd9ab8fe1', '320113', '栖霞区', 'QXQ', 'qxq', '118.964', '32.1694', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('25a4b39d838d413a949c481b948f1ca7', '130225', '乐亭县', 'LTX', 'ltx', '118.94', '39.3572', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('25db640128c74850b9463fc4a1c24d85', '520302', '红花岗区', 'HHGQ', 'hhgq', '106.923', '27.6704', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('25ec0eadcb844ed79efcfad5f627a7f4', '511500', '宜宾市', 'YBS', 'ybs', '104.633', '28.7697', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('2604c9d7b1d94f799a9f7ffaf1851840', '370303', '张店区', 'ZDQ', 'zdq', '118.077', '36.8161', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('2604ce27927b4b7088262a65b089a7cd', '510521', '泸县', 'LX', 'lx', '105.508', '29.1249', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('260bd4b403bd4478934a8ffe34d963da', '420702', '梁子湖区', 'LZHQ', 'lzhq', '114.65', '30.1727', '920dd719c1884228a815ee19a01325b4');
INSERT INTO `t_area` VALUES ('261e32f19871401ab3e14f4862d5d9ce', '341324', '泗县', 'SX', 'sx', '117.89', '33.5443', '24cf9b2033a04e289857ab5bdfed05d5');
INSERT INTO `t_area` VALUES ('262473a901ed40e99c229e4dfafddf7b', '410703', '卫滨区', 'WBQ', 'wbq', '113.865', '35.2948', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('26302d363efe4b978a27301477b90f79', '445202', '榕城区', 'RCQ', 'rcq', '116.369', '23.5295', '0d5e23ba42e5437086e944e6d3dfc2a6');
INSERT INTO `t_area` VALUES ('264e26e98d8a45a6821cceaf1425f569', '431225', '会同县', 'HTX', 'htx', '109.81', '26.9141', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('266ed358e5ad400aaf00c6753a836c0e', '130930', '孟村回族自治县', 'MCHZZZX', 'mchzzzx', '117.16', '38.0913', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('2673d1e01da6458da395fac91b27a069', '610923', '宁陕县', 'NSX', 'nsx', '108.452', '33.5369', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('26a001c4f8a34a6fbfaf503a2cc8cfb0', '130102', '长安区', 'ZAQ', 'zaq', '114.593', '38.0769', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('26cbba72b5274d3eb6804d55c22d6e69', '370923', '东平县', 'DPX', 'dpx', '116.343', '35.9752', 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('26db5adb2fe24f67ab46432343378b1b', '360901', '市辖区', 'SXQ', 'sxq', null, null, '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('26e5942161c24eea89949c349a3b68be', '513222', '理县', 'LX', 'lx', '103.021', '31.5796', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('26ef6fd12dab4a21ba100103ed27879d', '440705', '新会区', 'XHQ', 'xhq', '113.035', '22.3882', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('271eacd45bd54be098edcb5c3ce4ff47', '610402', '秦都区', 'QDQ', 'qdq', '108.683', '34.3543', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('27337f59ad204102b883fdfce1d1717a', '320923', '阜宁县', 'FNX', 'fnx', '119.705', '33.712', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('2766622ca471440fab36d892ac2e004b', '640424', '泾源县', 'JYX', 'jyx', '106.354', '35.5297', '835ed2facd684917a081908db75b1fd8');
INSERT INTO `t_area` VALUES ('27b307cb9aea483a915d69cf35364124', '140724', '昔阳县', 'XYX', 'xyx', '113.762', '37.5634', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('27b4b72263c1498a8facd62f84489129', '542126', '察雅县', 'CYX', 'cyx', '97.8439', '30.5891', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('27bea7655ede47bbb0cc5996439941cd', '320900', '盐城市', 'YCS', 'ycs', '120.149', '33.3799', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('27d6ed3f0cc44ec2a651068e087e1d8e', '511602', '广安区', 'GAQ', 'gaq', '106.759', '30.5993', 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('27f25be96c5747afbfca2b840dbe46af', '320382', '邳州市', 'PZS', 'pzs', '117.903', '34.4029', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('27fdd76456e045ed80001b96133d4cb7', '610602', '宝塔区', 'BTQ', 'btq', '109.649', '36.576', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('280d6cb4011547c7af06e99b551002f7', '420900', '孝感市', 'XGS', 'xgs', '113.936', '30.928', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('281013603cdc45b6bbe2928dd8e6a774', '211102', '双台子区', 'STZQ', 'stzq', '122.032', '41.1932', '5e7d74ca7c6f4cf0888135c788ed5376');
INSERT INTO `t_area` VALUES ('28119aca43fa452c93ae5733676f43c0', '330303', '龙湾区', 'LWQ', 'lwq', '120.811', '27.9133', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('28211fb5a2854be98fda644a8ca5d256', '620500', '天水市', 'TSS', 'tss', '105.737', '34.5843', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('283b9050506145d9909ad572213bb63f', '341800', '宣城市', 'XCS', 'xcs', '118.752', '30.9516', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('2845f73e6699481c951b6257b56c3cb6', '350181', '福清市', 'FQS', 'fqs', '119.378', '25.6381', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('284ad1d6461343b2bee4fa64c3270c04', '431122', '东安县', 'DAX', 'dax', '111.343', '26.4956', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('284da8787633442199d00085213b66d0', '611025', '镇安县', 'ZAX', 'zax', '109.077', '33.3809', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('2858212a92b94f54a7e8618069af9e62', '450302', '秀峰区', 'XFQ', 'xfq', '110.275', '25.2871', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('28638a8de98d40448bb1f1d77ee017dc', '411330', '桐柏县', 'TBX', 'tbx', '113.434', '32.4957', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('2875dc88d181459098f536d664d0fe0c', '152923', '额济纳旗', 'EJNQ', 'ejnq', '100.1', '41.6938', 'dd0e9d1a27594f27a31cb3378afca264');
INSERT INTO `t_area` VALUES ('288483d8ff4340f6825ebcf5be46b1e9', '410928', '濮阳县', 'PYX', 'pyx', '115.157', '35.5923', 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('28a7c68026cd496384f34750ebe419b7', '542428', '班戈县', 'BGX', 'bgx', '90.1234', '31.2181', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('28ae46e252a944e193c42be4a7a894ae', '620503', '麦积区', 'MJQ', 'mjq', '106.052', '34.5202', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('28e6758315374eabbba99edb7451b774', '632623', '甘德县', 'GDX', 'gdx', '100.148', '34.0218', '1dd19b4dbd6e441d8864c7855b538cd7');
INSERT INTO `t_area` VALUES ('2908de8a833c43d7835b8ca321b5c127', '511102', '市中区', 'SZQ', 'szq', null, null, '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('290ee432a34f4b0180c35b884d893821', '500109', '北碚区', 'BBQ', 'bbq', '106.52', '29.8666', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('2916a76b26f4458bbc94ca738efcb4f9', '440308', '盐田区', 'YTQ', 'ytq', '114.278', '22.607', 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('2924453609b148a3a20d1c702d64f502', '340803', '大观区', 'DGQ', 'dgq', '116.981', '30.5325', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('293582a7ea774b9db592a9493d3c7240', '510601', '市辖区', 'SXQ', 'sxq', null, null, 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('293e727fc60b4b9292974c91009a23b2', '330226', '宁海县', 'NHX', 'nhx', '121.464', '29.3145', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('294ab8ed8a094fd796a8b890e768894f', '210702', '古塔区', 'GTQ', 'gtq', '121.126', '41.1414', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('295c5b0061ca4774ba7f52e8b9835f11', '410522', '安阳县', 'AYX', 'ayx', '114.317', '36.1251', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('296223f922ff4af5ad44f3cd3f3c47a5', '370405', '台儿庄区', 'TEZQ', 'tezq', '117.638', '34.588', '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('29920a2d5bb340458ee5b83b10a82913', '630224', '化隆回族自治县', 'HLHZZZX', 'hlhzzzx', '102.244', '36.0719', '8c141a564f324701b8289ad1fa9b91b8');
INSERT INTO `t_area` VALUES ('2998e6ea29084d73bf3667450c35174b', '141031', '隰县', 'XX', 'xx', '111.01', '36.712', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('29b41d21f00a48bdb9166cef76aaaa44', '130128', '深泽县', 'SZX', 'szx', '115.233', '38.1947', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('29b65d55ca9c4a908d5b8471bc26176c', '520321', '遵义县', 'ZYX', 'zyx', '106.903', '27.6693', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('29c0345161be4fc3af1e3540baf3ac1d', '110111', '房山区', 'FSQ', 'fsq', '115.863', '39.7268', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('29ccd2f577fb4e5386d07595c930a9eb', '340521', '当涂县', 'DTX', 'dtx', '118.647', '31.503', 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('29ce28f9345d40ca8cbbb8a4dcfb5b6c', '430703', '鼎城区', 'DCQ', 'dcq', '111.748', '28.9952', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('29f86ab8b31649a49c9c8a6af75816f3', '451122', '钟山县', 'ZSX', 'zsx', '111.249', '24.5139', 'dbc8dfb8a16844dc9d987611ec696ffc');
INSERT INTO `t_area` VALUES ('29ff29ed45fa48078465028ebe09741a', '440305', '南山区', 'NSQ', 'nsq', '130.282', '47.2988', 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('2a2270df16504754b4b5acd0b782b1cc', '530522', '腾冲县', 'TCX', 'tcx', '98.5', '25.28', 'd4729122df5f40ff807ddb1fa092d797');
INSERT INTO `t_area` VALUES ('2a3a24b86bf4400ca6af61302cfd430e', '210502', '平山区', 'PSQ', 'psq', '123.693', '41.2404', '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('2a54ee0c0a234e5097546993f272e85f', '520300', '遵义市', 'ZYS', 'zys', '106.931', '27.7', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('2a5607f5cf544799944a3bf33990248a', '321202', '海陵区', 'HLQ', 'hlq', '119.921', '32.4883', 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('2a71196bb26149639a00ac3f186faccd', '431025', '临武县', 'LWX', 'lwx', '112.568', '25.344', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('2a74bf5c537240d0b6cfc63d165ab551', '621225', '西和县', 'XHX', 'xhx', '105.339', '33.9196', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('2a87b4dac24740bfb68723d8be6e4d36', '210726', '黑山县', 'HSX', 'hsx', '122.261', '41.7997', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('2aab7a9ae9494667afb94a577e00192d', '513227', '小金县', 'XJX', 'xjx', '102.475', '31.1354', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('2af0ce0d2fc64043aa5831efc420ceac', '150429', '宁城县', 'NCX', 'ncx', '118.906', '41.571', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('2af1990169454051a351d2a5c5f4ec2f', '130825', '隆化县', 'LHX', 'lhx', '117.57', '41.518', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('2afc149542344ce2bc04a0cbaae9d124', '120105', '河北区', 'HBQ', 'hbq', '117.22', '39.1731', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('2afd1692e0aa47f5817e5c71afe73fb0', '469023', '澄迈县', 'CMX', 'cmx', '109.997', '19.6931', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('2b0a412b4b6b4a83a5b4dc18d2deeafa', '450521', '合浦县', 'HPX', 'hpx', '109.335', '21.7404', '6b447a5376a54f088671d5f0a057f986');
INSERT INTO `t_area` VALUES ('2b37016609054d39b2c212ab01637fc5', '450127', '横县', 'HX', 'hx', '109.169', '22.7749', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('2b3bf00ad79245f596b34409cba9ae11', '450681', '东兴市', 'DXS', 'dxs', '108.061', '21.6272', 'b20c1f95e080453d8c1ff1efe0f64d53');
INSERT INTO `t_area` VALUES ('2b46fe6e4b2c4355ace4b925624cb371', '530381', '宣威市', 'XWS', 'xws', '104.153', '26.2768', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('2b5adb001b334a1cb1bcfdfb2b2eb776', '510801', '市辖区', 'SXQ', 'sxq', null, null, '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('2b631a2a8ad14161839b14de5bd8b14b', '330326', '平阳县', 'PYX', 'pyx', '120.389', '27.6377', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('2b8597557fdc4098bea47e1e6b4c30df', '620902', '肃州区', 'SZQ', 'szq', '98.8026', '39.5984', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('2bc0e2987b3242d5bbb7f5cd82cbfc72', '110114', '昌平区', 'CPQ', 'cpq', '116.216', '40.2217', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('2bc98d28069743efb3b9c5e2a6bf295f', '140727', '祁县', 'QX', 'qx', '112.469', '37.2922', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('2bd2f428105541c59d14d794b93ca866', '231182', '五大连池市', 'WDLCS', 'wdlcs', '126.634', '48.7492', 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('2bd944e9c8cc4c48895c03bcb3c2e8e3', '542231', '隆子县', 'LZX', 'lzx', '92.9261', '28.4819', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('2bee2486506c484cb03fa9348284627d', '542200', '山南地区', 'SNDQ', 'sndq', '91.7506', '29.229', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('2c3de7f44cdf4c0a858dadadc88a8dd9', '532331', '禄丰县', 'LFX', 'lfx', '102.026', '25.1858', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('2c600edcfec94de0bcad63f460aff3a2', '430100', '长沙市', 'ZSS', 'zss', '112.979', '28.2135', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('2c7096094f6b482ea540293c84a11ab7', '610404', '渭城区', 'WCQ', 'wcq', '108.817', '34.4239', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('2c7bd5f5c4ef4dba867ac538262572b1', '210101', '市辖区', 'SXQ', 'sxq', null, null, '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('2c7e719f9b5141dfbc3b68113df8f121', '371425', '齐河县', 'QHX', 'qhx', '116.678', '36.7235', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('2c9f70eaa99a4cc7839aa8189bd0f95f', '421001', '市辖区', 'SXQ', 'sxq', null, null, '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('2cb8e0ac24454473a2d48c2c7b2d20f0', '350724', '松溪县', 'SXX', 'sxx', '118.766', '27.6107', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('2cc71eaabdc24c46abcf0cd1173538b3', '320623', '如东县', 'RDX', 'rdx', '121.059', '32.3877', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('2cd9e149455a4d3a957c7175c74f655e', '340506', '博望区', 'BWQ', 'bwq', null, null, 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('2d02c0a84e5940318f96183d1d357830', '654221', '额敏县', 'EMX', 'emx', '84.2093', '46.5907', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('2d0d76719cab4213b23fc2598820a09f', '451481', '凭祥市', 'PXS', 'pxs', '106.837', '22.0936', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('2d16c9f0df51453d856e553c5887e23d', '431022', '宜章县', 'YZX', 'yzx', '112.933', '25.2759', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('2d24c8e84d414975a122bfcdd20e23c1', '610424', '乾县', 'QX', 'qx', '108.229', '34.5277', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('2d3c94497f624181a46171a4e6871be8', '310100', '市辖区', 'SXQ', 'sxq', null, null, 'fae145ffed5e43a290fc9b96e7503ab0');
INSERT INTO `t_area` VALUES ('2d45545e7346473f9e2532d91e736f1f', '210882', '大石桥市', 'DSQS', 'dsqs', '122.572', '40.6469', '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('2d4e85125a7640c083994f340675c534', '420526', '兴山县', 'XSX', 'xsx', '110.824', '31.3193', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('2d65f7dee2f44be6ab5c1f8e456f6d16', '420922', '大悟县', 'DWX', 'dwx', '114.31', '31.5783', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('2d66af3a9fc0470aaef6f961fe541938', '522729', '长顺县', 'ZSX', 'zsx', '106.404', '26.0005', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('2d6f250845014d5fb9985e1816e8848e', '130324', '卢龙县', 'LLX', 'llx', '118.986', '39.921', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('2d80635707f74a3e96c0b1c0a2ee3886', '361125', '横峰县', 'HFX', 'hfx', '117.645', '28.5138', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('2d9813068ebe42858e524f3d66210a55', '500236', '奉节县', 'FJX', 'fjx', '109.356', '30.9586', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('2d9e8ac8ca184adcaaeb3d6a8246d19b', '230712', '汤旺河区', 'TWHQ', 'twhq', '129.539', '48.5633', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('2da7d0c980064851954f019cbf8a65b0', '445203', '揭东区', 'JDQ', 'jdq', '116.362', '23.6068', '0d5e23ba42e5437086e944e6d3dfc2a6');
INSERT INTO `t_area` VALUES ('2dad6414f6f041a89701d6c4421eb174', '320200', '无锡市', 'WXS', 'wxs', '120.305', '31.57', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('2db171771fc9401eb23469c91e28a4d1', '341601', '市辖区', 'SXQ', 'sxq', null, null, 'fdfe40a0faff43159592cebf8e884365');
INSERT INTO `t_area` VALUES ('2dc591e615e14240afa8091c314aac72', '330185', '临安市', 'LAS', 'las', '119.35', '30.2077', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('2dcbd5e34b0a4d4abd8f8e3ab1129a29', '652722', '精河县', 'JHX', 'jhx', '82.9224', '44.5576', 'decc0233cca8458db74346e0695d320e');
INSERT INTO `t_area` VALUES ('2dd119541f684080979cf4aba64e00f1', '620523', '甘谷县', 'GGX', 'ggx', '105.275', '34.8094', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('2ddad136aad04a90b62e86de189655c8', '150601', '市辖区', 'SXQ', 'sxq', null, null, '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('2de58ea989124b9b8facee53c29663aa', '150724', '鄂温克族自治旗', 'EWKZZZQ', 'ewkzzzq', '120.067', '48.4991', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('2df650aca1c04322b86bacdfdff5b62f', '361122', '广丰县', 'GFX', 'gfx', '118.277', '28.3641', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('2dfc11f189b847c1819c63db0de03141', '450311', '雁山区', 'YSQ', 'ysq', '110.371', '25.1128', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('2e142fb2a56c480a92b2cfdb06ed4d78', '210500', '本溪市', 'BXS', 'bxs', '123.778', '41.3258', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('2e30eb5e61b640e69fb78a71013da288', '130101', '市辖区', 'SXQ', 'sxq', null, null, '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('2e3a957a59e84e4f98b24d360435a957', '360100', '南昌市', 'NCS', 'ncs', '115.894', '28.6896', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('2e49e5156fa9414781c6cd98dcabf35c', '530300', '曲靖市', 'QJS', 'qjs', '103.783', '25.5208', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('2e5a5fe5cc36459495d9d0f8320b117b', '431002', '北湖区', 'BHQ', 'bhq', '112.884', '25.6792', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('2e8fc5b3298c4f3ead8a09cfdc57bc00', '330302', '鹿城区', 'LCQ', 'lcq', '120.566', '28.0679', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('2e9dcce35d9341998b6710b4c6213189', '630101', '市辖区', 'SXQ', 'sxq', null, null, 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('2ea5a46bd3e24e1dbdb64f661bcffb0e', '440401', '市辖区', 'SXQ', 'sxq', null, null, 'c35a53182359423d9e4c389d1a1dca2c');
INSERT INTO `t_area` VALUES ('2eb2e43f1307467db95b0574a5549c67', '530400', '玉溪市', 'YXS', 'yxs', '102.545', '24.3704', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('2ebf0a5b860340f9af99d744136966aa', '222403', '敦化市', 'DHS', 'dhs', '128.24', '43.5602', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('2f166c9fafd340f7bed2c04bdd25be15', '500228', '梁平县', 'LPX', 'lpx', '107.725', '30.6644', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('2f48399494d34a25b2c6937bc439a8d1', '411727', '汝南县', 'RNX', 'rnx', '114.326', '32.922', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('2f4c07c79417478584e4240551be1ca1', '350425', '大田县', 'DTX', 'dtx', '117.818', '25.7974', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('2f6c93bbb9f24f98a7a756387aec8e42', '441701', '市辖区', 'SXQ', 'sxq', null, null, 'd2077a7cd49748e5a0cbb2bc1448e494');
INSERT INTO `t_area` VALUES ('2f751cc91ad34d90ab4065eca25ce136', '330127', '淳安县', 'CAX', 'cax', '118.896', '29.6147', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('2f7a462f16af463fb4004070719f1648', '500105', '江北区', 'JBQ', 'jbq', '121.493', '29.9664', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('2f81d4ec778949d99b8f8ee5ced6a758', '654022', '察布查尔锡伯自治县', 'CBCEXBZZX', 'cbcexbzzx', '81.0983', '43.6384', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('2f86f219783e47adba4037e35a75f79b', '632524', '兴海县', 'XHX', 'xhx', '99.7333', '35.5403', 'fb615a43a9174dadbc6ee2aa863265c9');
INSERT INTO `t_area` VALUES ('2f9aa14779384cf4a5b381abdcd9169a', '530428', '元江哈尼族彝族傣族自治县', 'YJHNZYZDZZZX', 'yjhnzyzdzzzx', null, null, '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('2fbaaa1293d24068a84b686d62cc6f5b', '320404', '钟楼区', 'ZLQ', 'zlq', '119.912', '31.7985', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('2fd62cdf829b45729a99881c2dee2fe2', '370681', '龙口市', 'LKS', 'lks', '120.523', '37.6104', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('2fd6fe1a9cb84a409eea72bfcc7d049e', '421101', '市辖区', 'SXQ', 'sxq', null, null, 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('302199839d7c4542b804c9fd9f2a98a0', '130207', '丰南区', 'FNQ', 'fnq', '118.086', '39.3847', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('302793ce1e6842108cfd5fa2e18775e3', '130800', '承德市', 'CDS', 'cds', '117.934', '40.9925', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('3038f656c07348a1a8e138d3e562bd7c', '371403', '陵城区', 'LCQ', 'lcq', null, null, '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('306e46d7608041099d2a9d158de290e8', '510113', '青白江区', 'QBJQ', 'qbjq', '104.346', '30.7964', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('3096d35312c640ce882bc67509af03b8', '450222', '柳城县', 'LCX', 'lcx', '109.23', '24.6299', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('309cf9e97e1c4c4c97e3cf65148d786e', '220623', '长白朝鲜族自治县', 'ZBCXZZZX', 'zbcxzzzx', '127.864', '41.5847', 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('30a8b2de020e44e8812031c602b7a881', '520626', '德江县', 'DJX', 'djx', '108.095', '28.2645', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('30e92d21c002468f9311baa496500f09', '610700', '汉中市', 'HZS', 'hzs', '107.045', '33.0816', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('30fe4f96c8dd4a59aec6ad885bd00a48', '540222', '江孜县', 'JZX', 'jzx', '89.6691', '28.9107', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('31159aa840e84e679c2a3596fbf0ce5b', '431302', '娄星区', 'LXQ', 'lxq', '112.005', '27.7669', '224c42b8e8d64becb335fdec0f071c0f');
INSERT INTO `t_area` VALUES ('31465e2529b44513829b24191e980d8b', '450332', '恭城瑶族自治县', 'GCYZZZX', 'gcyzzzx', '110.909', '24.9493', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('314f63412ec142e3be8b1da638047568', '632223', '海晏县', 'HYX', 'hyx', '100.843', '37.1147', '71a035f3b38b4554b63b1da0cfbdf690');
INSERT INTO `t_area` VALUES ('315e7cc05cc044e2a6a0cba2c5e528ec', '320724', '灌南县', 'GNX', 'gnx', '119.446', '34.1752', '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('3172864ea93640afb62cf2e814368787', '350581', '石狮市', 'SSS', 'sss', '118.692', '24.7449', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('3172e2f254644d92b556db0701c47385', '611002', '商州区', 'SZQ', 'szq', '109.873', '33.8955', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('317347fe71c04dbf8addbd7f6602bce5', '330601', '市辖区', 'SXQ', 'sxq', null, null, '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('317836d2186a4149a8354d0101e6d966', '510421', '米易县', 'MYX', 'myx', '102.001', '26.9327', '0a8760be3d9048039147c8bc7191826d');
INSERT INTO `t_area` VALUES ('31c2da2ea9a1497b8def38d69b47d907', '141126', '石楼县', 'SLX', 'slx', '110.753', '37.0351', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('31c757b75456461caae2a8945a454ed5', '431023', '永兴县', 'YXX', 'yxx', '113.198', '26.2165', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('323df8dd6fe747f9b2805635f7b32d1d', '130622', '清苑县', 'QYX', 'qyx', '115.493', '38.7383', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('3256040e0f004e53acbb545f51c25622', '331023', '天台县', 'TTX', 'ttx', '120.986', '29.1518', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('325a9f89c3964a63bf484ced790992e8', '530427', '新平彝族傣族自治县', 'XPYZDZZZX', 'xpyzdzzzx', '101.739', '24.0297', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('326e96ed607c43b79b57887979f92b55', '230000', '黑龙江省', 'HLJS', 'hljs', '128.047', '47.3566', '0');
INSERT INTO `t_area` VALUES ('327729c4f1c140148873a66f3aca656f', '450923', '博白县', 'BBX', 'bbx', '109.879', '22.0668', '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('32dfbaba824e45b6aaf4c6bc94abfb09', '610921', '汉阴县', 'HYX', 'hyx', '108.497', '32.9025', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('32e84d3cced541ea8eddef4730b3ec5e', '429006', '天门市', 'TMS', 'tms', '113.126', '30.649', 'ca0a6522a4dd478dbefc06903bd8c3bb');
INSERT INTO `t_area` VALUES ('32f244d642a4412b856830af1ff1bcb1', '451401', '市辖区', 'SXQ', 'sxq', null, null, 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('32f4823925434d1f83dce8f68e62bbc5', '440201', '市辖区', 'SXQ', 'sxq', null, null, 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('330221443585425ba64fa3fa300f50d2', '650204', '白碱滩区', 'BJTQ', 'bjtq', '85.1778', '45.6336', '0b8769d2deca47f3ba9e14693af656cc');
INSERT INTO `t_area` VALUES ('3313340c8ca042ffbf0203eccca93331', '610724', '西乡县', 'XXX', 'xxx', '107.754', '32.8949', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('331a3360adcf4deebe6c3a9643ba3415', '330801', '市辖区', 'SXQ', 'sxq', null, null, '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('3331410b8b9f4b228de82f88b31a7658', '230183', '尚志市', 'SZS', 'szs', '128.316', '45.0839', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('333b443d5c5545779148113ae1512c24', '513434', '越西县', 'YXX', 'yxx', '102.629', '28.5922', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('3342a49262414809abebf5f20212658f', '621221', '成县', 'CX', 'cx', '105.688', '33.7473', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('3358aba40e794a178757dd479d85f4b0', '360222', '浮梁县', 'FLX', 'flx', '117.309', '29.5566', '0fd8cbc6a4b84e28a88a01d66ec44698');
INSERT INTO `t_area` VALUES ('335f6483ff254c3cb3b4c7a41e435a56', '421303', '曾都区', 'CDQ', 'cdq', '113.294', '31.89', '4fa78f339565446b8ed4c663c52c2df8');
INSERT INTO `t_area` VALUES ('3362ae53fc5e4a6ea81025592f1de053', '650105', '水磨沟区', 'SMGQ', 'smgq', '87.668', '43.8439', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('3366d3766fab47509b0849fff454d715', '341221', '临泉县', 'LQX', 'lqx', '115.248', '32.9098', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('33785277aed445f4a94320eea352f581', '350901', '市辖区', 'SXQ', 'sxq', null, null, 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('337ced4ed72749f2abd3eb929e4fcc28', '522728', '罗甸县', 'LDX', 'ldx', '106.71', '25.4192', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('339176e0e20e477496c8110a2003213e', '340000', '安徽省', 'AHS', 'ahs', '117.216', '31.8593', '0');
INSERT INTO `t_area` VALUES ('33ba4988972a477b83f506becdd43279', '330700', '金华市', 'JHS', 'jhs', '119.653', '29.1029', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('33bca59ae5464cd8925fcff0c14f3d09', '421222', '通城县', 'TCX', 'tcx', '113.853', '29.2295', 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('33ca1b8a32824bcdacf9a84976083633', '140121', '清徐县', 'QXX', 'qxx', '112.387', '37.5932', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('33d55e597d7041bc8fd22268092c91a6', '441424', '五华县', 'WHX', 'whx', '115.641', '23.8028', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('33f87f5f82634297967cfa84b958485a', '431221', '中方县', 'ZFX', 'zfx', '110.165', '27.5209', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('34122900b5e54cc885b4ec8eb4acef58', '360900', '宜春市', 'YCS', 'ycs', '114.4', '27.8111', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('3415e19930aa410badf81b2e2d3ed986', '520181', '清镇市', 'QZS', 'qzs', '106.354', '26.6886', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('341c84d0dfd24ac0992a8b0524933f3a', '440303', '罗湖区', 'LHQ', 'lhq', '114.156', '22.5819', 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('34363d908d1644a4ac7e38911c01be1b', '640501', '市辖区', 'SXQ', 'sxq', null, null, 'b64a08b1d2eb402982e6e7a2794cbcb6');
INSERT INTO `t_area` VALUES ('34393eb8f9d449299d59d02121552e03', '330824', '开化县', 'KHX', 'khx', '118.332', '29.1899', '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('343c6a200f6f4ffcbd4ba9bed0fe7373', '450802', '港北区', 'GBQ', 'gbq', '109.69', '23.2447', 'b93e28fad1454605a81753c740e0b00d');
INSERT INTO `t_area` VALUES ('34507ddaa081426a823f4519844375b6', '140426', '黎城县', 'LCX', 'lcx', '113.397', '36.6194', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('34625e3ed252454ca3ad046b545cf35a', '350925', '周宁县', 'ZNX', 'znx', '119.313', '27.0943', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('348ae7b33546475b82460b58a2f27c6b', '420381', '丹江口市', 'DJKS', 'djks', '111.193', '32.5675', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('349b57f76f9545eaa62c2f9f74dc24ad', '211221', '铁岭县', 'TLX', 'tlx', '123.915', '42.2228', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('34ca677e019a427e8d0b24553415ea29', '350121', '闽侯县', 'MHX', 'mhx', '119.122', '26.1824', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('34ce2f45fd1449b9ba1aa255895040e1', '371501', '市辖区', 'SXQ', 'sxq', null, null, '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('34e63908d3dd49ba9e5517e38b342131', '150522', '科尔沁左翼后旗', 'KEQZYHQ', 'keqzyhq', '122.697', '43.1961', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('35086471d25043699acd9bedacd971ed', '231181', '北安市', 'BAS', 'bas', '127.112', '48.1159', 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('3513df52f5e745868d22f26f31ff3473', '230703', '南岔区', 'NCQ', 'ncq', '129.539', '46.9642', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('351b0a7d1dda48e1a345267b703920f2', '632821', '乌兰县', 'WLX', 'wlx', '98.6726', '36.9024', '62daf966c7a344b6872e45ca3b3c9644');
INSERT INTO `t_area` VALUES ('354970571aae4aa0a13f849d1ce70de4', '371201', '市辖区', 'SXQ', 'sxq', null, null, 'd25e2db0c9ef4b1cb28b76c7a152467a');
INSERT INTO `t_area` VALUES ('354b39526aea48fd8c391b56b726ac04', '371302', '兰山区', 'LSQ', 'lsq', '118.312', '35.1748', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('35812731f0d345d898b360fb56b920b1', '511111', '沙湾区', 'SWQ', 'swq', '103.605', '29.3164', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('3596099e0a1f4aebae32c4c5050c7018', '130532', '平乡县', 'PXX', 'pxx', '115.005', '37.0561', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('35a675d7ac824c1a81a0409092273bf4', '370100', '济南市', 'JNS', 'jns', '117.025', '36.6828', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('35bef2f918e4443c8efa327660bc77ac', '130433', '馆陶县', 'GTX', 'gtx', '115.299', '36.6185', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('35daeb1a0a594daf8784af9fe93f1893', '411426', '夏邑县', 'XYX', 'xyx', '116.157', '34.2237', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('35ea9423ab4a4b709bcc8d248262d5d2', '220401', '市辖区', 'SXQ', 'sxq', null, null, '507ea0be588e47e19900b4aad1a4524e');
INSERT INTO `t_area` VALUES ('362cc2d46c934a0392dcbf355ae4c55f', '341222', '太和县', 'THX', 'thx', '115.649', '33.3377', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('363706b9184943838915c297d6719b28', '211401', '市辖区', 'SXQ', 'sxq', null, null, 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('36465f7d837c4e6c9296dc22327bc06a', '510703', '涪城区', 'FCQ', 'fcq', '104.671', '31.4357', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('364dd40a3f254179a0cf21f5602fa88b', '511324', '仪陇县', 'YLX', 'ylx', '106.535', '31.4436', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('366709cd8bf4424892594f4b61d94122', '522325', '贞丰县', 'ZFX', 'zfx', '105.693', '25.4216', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('3670f042edfb41dd85e8091af41c1482', '230709', '金山屯区', 'JSTQ', 'jstq', '129.772', '47.4985', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('368112ab0f3f406bab757dda9ff52683', '623026', '碌曲县', 'LQX', 'lqx', '102.478', '34.3926', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('36bf8ef33e2348cd9c119c2de061f30f', '530323', '师宗县', 'SZX', 'szx', '104.129', '24.6802', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('36cb62c9d3bb47cbbaee1be77ce0c01e', '451202', '金城江区', 'JCJQ', 'jcjq', '107.873', '24.6608', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('36d3ed931559442995740cfd25623a76', '230604', '让胡路区', 'RHLQ', 'rhlq', '124.838', '46.7292', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('36dc3aaa5d2549c09bc772a8d6c464cd', '411001', '市辖区', 'SXQ', 'sxq', null, null, '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('37025c6db5154ebdbe9b54d67c4df9f7', '621121', '通渭县', 'TWX', 'twx', '105.194', '35.2135', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('3708703f288c48a3955b266119720b95', '431024', '嘉禾县', 'JHX', 'jhx', '112.414', '25.6373', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('371dfc9beffe4539b43abce59fe57308', '340111', '包河区', 'BHQ', 'bhq', '117.354', '31.7907', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('3724477b072046e19f46fc57c3988345', '640201', '市辖区', 'SXQ', 'sxq', null, null, '56638a23c20c416ca11515bedbbe61ce');
INSERT INTO `t_area` VALUES ('3734fb335e5e4c579ecb3124ee59b841', '513338', '得荣县', 'DRX', 'drx', '99.3242', '28.7364', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('37504a880029442bb132abe0c783871a', '522723', '贵定县', 'GDX', 'gdx', '107.204', '26.4337', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('3758db1456f94963861bedd50d67c7f2', '610303', '金台区', 'JTQ', 'jtq', '107.118', '34.4032', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('376049d8f4c24af0b207300371360b43', '530129', '寻甸回族彝族自治县', 'XDHZYZZZX', 'xdhzyzzzx', '103.128', '25.6666', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('376d71befa64450e81a98d1cc5ae652e', '513200', '阿坝藏族羌族自治州', 'ABZZQZZZZ', 'abzzqzzzz', '102.229', '31.9058', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('378d2a6319ea43d587484f37b2e9760c', '500100', '市辖区', 'SXQ', 'sxq', null, null, '02ace76b8f3e47a0bd95cf6d8a709d6d');
INSERT INTO `t_area` VALUES ('379301388c084e8a88dc7c2e26e79922', '340121', '长丰县', 'ZFX', 'zfx', '117.174', '32.2861', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('379bfee1e22b44e2a3f60530bbb28e80', '210681', '东港市', 'DGS', 'dgs', '123.877', '39.9812', 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('379f4abf3b3f4ff9a5a5517c1e19c88d', '440825', '徐闻县', 'XWX', 'xwx', '110.258', '20.43', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('37ab15ebef764a4dae70d3a9c86a85dd', '360521', '分宜县', 'FYX', 'fyx', '114.678', '27.845', '751ad81aa4de45f1a8763a43ddae093d');
INSERT INTO `t_area` VALUES ('37b4e25869294768b37a0a845fa043a4', '410305', '涧西区', 'JXQ', 'jxq', '112.391', '34.6717', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('37baf748d38348539c1d449722f9e70a', '411281', '义马市', 'YMS', 'yms', '111.906', '34.7495', '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('37c84bbf099d4a26838d3470cf9eb37c', '371324', '兰陵县', 'LLX', 'llx', '119.956', '31.7706', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('37d40e3d02af4351a81615bce8e21afa', '130123', '正定县', 'ZDX', 'zdx', '114.57', '38.2271', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('37dbcb03a6414a8caba95b3636e08345', '220621', '抚松县', 'FSX', 'fsx', '127.624', '42.2779', 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('37e73588c72c404ab2a1dfe9f62e7e55', '654028', '尼勒克县', 'NLKX', 'nlkx', '83.2311', '43.8167', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('37e8b8b11f30475fab58e5bc36bce948', '210504', '明山区', 'MSQ', 'msq', '123.902', '41.3478', '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('37ec4fda12214aa7abc9e3800f42a203', '650101', '市辖区', 'SXQ', 'sxq', null, null, '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('37f380150e74460c870480f312174979', '110115', '大兴区', 'DXQ', 'dxq', '116.425', '39.6528', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('3803f2f03b93424db276fe572c901bed', '433122', '泸溪县', 'LXX', 'lxx', '110.003', '28.1644', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('380f2cf3cfe244b1af755470866c2eba', '440606', '顺德区', 'SDQ', 'sdq', '113.187', '22.8485', 'ca3b6b5a1b1240afaa43f8fede431538');
INSERT INTO `t_area` VALUES ('385392ccfbe04ef98e7c8a0ecf01c184', '451227', '巴马瑶族自治县', 'BMYZZZX', 'bmyzzzx', '107.208', '24.1576', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('3856c177fb57469abc03138d32c62b4b', '511123', '犍为县', 'JWX', 'jwx', '103.98', '29.2312', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('387b7ea7fc5d46838a89c78fc29be111', '530824', '景谷傣族彝族自治县', 'JGDZYZZZX', 'jgdzyzzzx', '100.564', '23.3681', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('3880eb3f67b94cc09df224692d51565d', '420901', '市辖区', 'SXQ', 'sxq', null, null, '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('388379e154464d0c8726cf19eb2574cc', '430201', '市辖区', 'SXQ', 'sxq', null, null, '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('389a5a7bcf734ede8785ee767e33ab75', '130981', '泊头市', 'BTS', 'bts', '116.389', '38.0903', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('38a1d135013643f8bdf88101f08a0a0c', '532931', '剑川县', 'JCX', 'jcx', '99.7503', '26.4396', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('38a7ad3cf6b646539dddc6e180ef6de4', '622901', '临夏市', 'LXS', 'lxs', '103.201', '35.5858', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('38abe56eedca4853ac2695a4d8e5398e', '321282', '靖江市', 'JJS', 'jjs', '120.277', '32.0394', 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('38c7047a71aa4fa68e15a9a31d91f9d0', '340602', '杜集区', 'DJQ', 'djq', '116.955', '34.1133', '95697758c29f4043b537696892db2960');
INSERT INTO `t_area` VALUES ('38fda6498ddb44098b11cd2f4ca373d6', '430406', '雁峰区', 'YFQ', 'yfq', '112.608', '26.8529', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('390422e8b36f4188b69f6ceb54cd91b9', '542132', '洛隆县', 'LLX', 'llx', '95.9169', '30.7351', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('39116897cdb240d5b031cff65d2fce3d', '422828', '鹤峰县', 'HFX', 'hfx', '110.2', '29.9189', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('393725e25a904624a3dfb7d244bd1a70', '130803', '双滦区', 'SLQ', 'slq', '117.809', '41.0515', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('393e96396a5845e8a091ca59212af0e5', '230303', '恒山区', 'HSQ', 'hsq', '130.916', '45.1386', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('394721c27b364fe3b999f06ca09a7d29', '441623', '连平县', 'LPX', 'lpx', '114.543', '24.3406', '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('395492926ebe4d7a8f18607d99181a63', '410781', '卫辉市', 'WHS', 'whs', '114.078', '35.4996', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('395861bfbbf64dc386ad199ffe80ee9c', '410183', '新密市', 'XMS', 'xms', '113.44', '34.5141', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('397e5234577345dcb1fa97c750c0ae83', '420601', '市辖区', 'SXQ', 'sxq', null, null, '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('39956c8bebde4756bfbedecd2d00a4a2', '610582', '华阴市', 'HYS', 'hys', '110.058', '34.5327', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('39b3b8d99bd247e386053fbc4402572d', '469022', '屯昌县', 'TCX', 'tcx', '110.063', '19.3477', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('39c444d5dd594c15a1264ae3a9735eaa', '230402', '向阳区', 'XYQ', 'xyq', '130.301', '47.3509', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('39d1bc9bc347457e8980c6cbc9cdb988', '500243', '彭水苗族土家族自治县', 'PSMZTJZZZX', 'psmztjzzzx', '108.273', '29.3596', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('39e99533f80148a8a647056e8f3cd606', '530701', '市辖区', 'SXQ', 'sxq', null, null, 'c3e9970474c54bd993dfe4868cd99842');
INSERT INTO `t_area` VALUES ('39ed2df2cf86405f84f3db9e2ed4397e', '511024', '威远县', 'WYX', 'wyx', '104.594', '29.5996', '601b6ef239914e5a8764e6343d7a0573');
INSERT INTO `t_area` VALUES ('39fc107f783a408cae539689d213e44d', '141129', '中阳县', 'ZYX', 'zyx', '111.186', '37.2663', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('39fda66c38ec465fbd191e2ecffc2270', '320312', '铜山区', 'TSQ', 'tsq', '117.295', '34.2884', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('3a036671009546aca816c17017f91a41', '350821', '长汀县', 'ZTX', 'ztx', '116.372', '25.697', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('3a0a513046f24900a226625ef60611c3', '370702', '潍城区', 'WCQ', 'wcq', '119.034', '36.702', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('3a22e05700a545629a050b9efb53dc0a', '141128', '方山县', 'FSX', 'fsx', '111.338', '37.8867', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('3a521befc68b479bbd8c948b33f1f390', '341501', '市辖区', 'SXQ', 'sxq', null, null, '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('3a5620be0e474b049b120e4eaa747791', '350981', '福安市', 'FAS', 'fas', '119.656', '27.0559', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('3a5be606b6fe41f09e62e7c0c3e0b690', '152529', '正镶白旗', 'ZXBQ', 'zxbq', '115.024', '42.5548', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('3a6554a5673246318c644898073f5856', '610629', '洛川县', 'LCX', 'lcx', '109.561', '35.7442', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('3ab7737e60134379b17730c4861296d5', '330683', '嵊州市', 'SZS', 'szs', '120.761', '29.591', '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('3abcd73c9174461e9d3d581f6d32483d', '540232', '仲巴县', 'ZBX', 'zbx', '83.6626', '30.4845', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('3af400c02513481ca18e3f840e8c075d', '341821', '郎溪县', 'LXX', 'lxx', '119.168', '31.1001', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('3af55f2de693432eb3264b5be6dffde4', '152921', '阿拉善左旗', 'ALSZQ', 'alszq', '105.038', '39.5478', 'dd0e9d1a27594f27a31cb3378afca264');
INSERT INTO `t_area` VALUES ('3af7076ed85f4f2b9804d22d2799f7bb', '141022', '翼城县', 'YCX', 'ycx', '111.839', '35.6954', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('3afe85e7d59948d6ab3e34228a6aecb1', '110105', '朝阳区', 'CYQ', 'cyq', '116.522', '39.959', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('3b19f58b6bca4cd98465b262bc3b769c', '360425', '永修县', 'YXX', 'yxx', '115.742', '29.1413', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('3b1f7fcf28f44193884426a6945916b1', '140822', '万荣县', 'WRX', 'wrx', '110.716', '35.3881', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('3b220a605c1d48e0ac64953809d36566', '371722', '单县', 'DX', 'dx', '116.123', '34.7382', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('3b230e01831a49a69bb6401b7873d349', '440117', '从化区', 'CHQ', 'chq', null, null, 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('3b37f0378bc04a8dbf52beee5f43c8f2', '130431', '鸡泽县', 'JZX', 'jzx', '114.87', '36.8737', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('3b83b8e77e334e28ba9fd8690c1b434f', '350800', '龙岩市', 'LYS', 'lys', '117.018', '25.0787', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('3ba5e324e9104bb5b4b54f42f84f3614', '431101', '市辖区', 'SXQ', 'sxq', null, null, 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('3babec794dcf4c13870c107d0992710d', '150304', '乌达区', 'WDQ', 'wdq', '106.726', '39.5359', 'f32203ff80ac40879b4a855066ccb21a');
INSERT INTO `t_area` VALUES ('3badd6f5a64e4636b0c318bdb08d7623', '370201', '市辖区', 'SXQ', 'sxq', null, null, '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('3bc07882850e450897418d4189323f43', '630123', '湟源县', 'HYX', 'hyx', '101.163', '36.6364', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('3bd1a7efba624a359b42fd0f31801af7', '441621', '紫金县', 'ZJX', 'zjx', '115.064', '23.5254', '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('3bda144af0e245a1997b66bd49240a33', '469021', '定安县', 'DAX', 'dax', '110.32', '19.491', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('3bf1809645ad4ce3a4a2a59b0749a449', '410901', '市辖区', 'SXQ', 'sxq', null, null, 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('3bf4ae1a38ca4d369b07273ffc6a8c79', '500242', '酉阳土家族苗族自治县', 'YYTJZMZZZX', 'yytjzmzzzx', '108.807', '28.9053', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('3bf72642606043c08d7d078e5f48cade', '140301', '市辖区', 'SXQ', 'sxq', null, null, '24208d947e4e4ccaaaf04a187d57ccf4');
INSERT INTO `t_area` VALUES ('3bfacd7acb6f4e58a2ee392a7992b30a', '510722', '三台县', 'STX', 'stx', '105.043', '31.1189', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('3c00c93f44c9484496b5be95ea522a0b', '420682', '老河口市', 'LHKS', 'lhks', '111.766', '32.4342', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('3c0dd7a126f5427bacf3c773408f4270', '532800', '西双版纳傣族自治州', 'XSBNDZZZZ', 'xsbndzzzz', '100.803', '22.0094', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('3c2beb13216e48078043fdabfe86c2da', '230207', '碾子山区', 'NZSQ', 'nzsq', '122.932', '47.5859', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('3c75f773c0c44382bb6f79b1986ea355', '610100', '西安市', 'XAS', 'xas', '108.953', '34.2778', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('3c821ffeeae24bb7af79ed2a7cf9edcd', '512000', '资阳市', 'ZYS', 'zys', '104.636', '30.1322', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('3c8f04eefd4849e5a4cfd7639f3dd299', '130627', '唐县', 'TX', 'tx', '114.806', '38.9045', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('3c97ca1066d44d3c90aad0acebecb854', '511100', '乐山市', 'LSS', 'lss', '103.761', '29.601', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('3ca2fb9e970843d1ace38dd655edd949', '530401', '市辖区', 'SXQ', 'sxq', null, null, '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('3cb2bef60b564ecea0920e9c67b27dd9', '130526', '任县', 'RX', 'rx', '114.77', '37.1746', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('3cbe8999f0f3478782ede493bc7ad6e8', '320722', '东海县', 'DHX', 'dhx', '118.792', '34.5564', '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('3cc322fe6982414b9865519ca9a8b294', '610114', '阎良区', 'YLQ', 'ylq', '109.313', '34.6864', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('3ccdaaffdfe44975b2a0fbe9a73ca8bf', '510105', '青羊区', 'QYQ', 'qyq', '103.988', '30.6851', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('3cce8350762f4b9bb4b659211ac1e669', '330000', '浙江省', 'ZJS', 'zjs', '119.957', '29.1595', '0');
INSERT INTO `t_area` VALUES ('3cd15227508342e3b93ab65c50ac33bd', '520421', '平坝县', 'PBX', 'pbx', '106.291', '26.4088', '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('3cd6deeb18294266a5c13446975a9eb4', '370812', '兖州区', 'YZQ', 'yzq', '116.754', '35.574', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('3d0aafe0ae0942979b5cfe4c3dd3e2aa', '620724', '高台县', 'GTX', 'gtx', '99.6075', '39.5417', '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('3d3a9244df1747a0bbf07ece86fec049', '440784', '鹤山市', 'HSS', 'hss', '112.802', '22.6753', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('3d3cf77815c54cfa97e00e873fbfde53', '120115', '宝坻区', 'BCQ', 'bcq', '117.411', '39.6155', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('3d61a53cf9304a9bb0c3889c8bc6a185', '530424', '华宁县', 'HNX', 'hnx', '102.999', '24.2848', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('3d6c35692e5c4e72bac7f058140fb7e3', '511113', '金口河区', 'JKHQ', 'jkhq', '103.073', '29.2938', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('3d70d1bc924a471783e60fab9ba344fd', '140430', '沁县', 'QX', 'qx', '112.652', '36.7074', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('3d8c69ebd3c34cf5997554f98d226138', '450312', '临桂区', 'LGQ', 'lgq', '110.071', '25.3062', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('3daa6651981a481b8d678b33abccc3cc', '230708', '美溪区', 'MXQ', 'mxq', '129.409', '47.7689', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('3dac47942a6045658c0ef2c58243c67d', '321301', '市辖区', 'SXQ', 'sxq', null, null, '6cc757f4428c4ab9a7f5783a328ea2af');
INSERT INTO `t_area` VALUES ('3de8258d228c4826add427d60aa81648', '360122', '新建县', 'XJX', 'xjx', '115.953', '28.8126', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('3df60b7f1baa49509d0e860bd086b706', '511503', '南溪区', 'NXQ', 'nxq', '104.941', '28.8972', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('3dfeee6ba6f04a108a52d4dd0db49168', '510182', '彭州市', 'PZS', 'pzs', '103.89', '31.1486', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('3e0822c7283e4f758660ea79140ba2eb', '152223', '扎赉特旗', 'ZLTQ', 'zltq', '122.388', '46.7908', '111d59a069534708961e303559a4e6db');
INSERT INTO `t_area` VALUES ('3e1c37ca5cb34992b0b2f8ef4794fc74', '430401', '市辖区', 'SXQ', 'sxq', null, null, '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('3e1e03caf2384e99aea61fdf2535dba0', '610481', '兴平市', 'XPS', 'xps', '108.476', '34.3076', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('3e40a5f863a64e01aa3b5eebb115de20', '441823', '阳山县', 'YSX', 'ysx', '112.681', '24.5095', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('3e4565641e86477eacc96252e014bbca', '350782', '武夷山市', 'WYSS', 'wyss', '118.012', '27.7481', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('3e4a4180ed5c44b39453c64edd6eaa8f', '621025', '正宁县', 'ZNX', 'znx', '108.378', '35.4147', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('3e4be039596a42d58adbf027a632bac9', '450922', '陆川县', 'LCX', 'lcx', '110.272', '22.2517', '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('3e4d859fa61f4498aaec05025db5aa55', '410328', '洛宁县', 'LNX', 'lnx', '111.507', '34.3452', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('3e4d979b3a914359aa061bd4bec83da3', '511825', '天全县', 'TQX', 'tqx', '102.578', '30.0789', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('3e64031459b54ee0bdf3e38f8bfd57aa', '510500', '泸州市', 'LZS', 'lzs', '105.444', '28.8959', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('3e7b84fece474a7cb172ea19f6062d2f', '152522', '阿巴嘎旗', 'ABGQ', 'abgq', '114.893', '44.2765', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('3e8d45146303465d886b8ec64606d349', '652328', '木垒哈萨克自治县', 'MLHSKZZX', 'mlhskzzx', '90.8235', '44.1066', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('3e90f680cb724255818a6b0941c3bd1e', '411121', '舞阳县', 'WYX', 'wyx', '113.68', '33.5493', 'dadce90a1182412080feb71560640c9b');
INSERT INTO `t_area` VALUES ('3eab5c0ef7dd470e8756a43c2609d525', '230227', '富裕县', 'FYX', 'fyx', '124.572', '47.6658', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('3eb9da2b66004644a6335a6ca9227c0d', '130727', '阳原县', 'YYX', 'yyx', '114.394', '40.1386', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('3ed335e09cde4b2b9d54414ceb7182dc', '520501', '市辖区', 'SXQ', 'sxq', null, null, '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('3ee9c24f748e4f1eba675e9f74a75765', '371626', '邹平县', 'ZPX', 'zpx', '117.671', '36.9566', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('3eedb30144cd4d60814ab1cd85df10b7', '532628', '富宁县', 'FNX', 'fnx', '105.75', '23.7073', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('3eefa376da9a4cb3b26ab372a169fc72', '320800', '淮安市', 'HAS', 'has', '119.03', '33.6065', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('3ef1e99cc7a74380946c171f27c56f18', '210505', '南芬区', 'NFQ', 'nfq', '123.828', '41.1227', '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('3ef2994e51ae421385101d2a0f7983d0', '360781', '瑞金市', 'RJS', 'rjs', '115.986', '25.9218', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('3f2d0e44afc64bee8d3c3c7a14b9f28e', '653225', '策勒县', 'CLX', 'clx', '81.098', '37.0843', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('3f3341da189c47feb3982c4bc61120a7', '512022', '乐至县', 'LZX', 'lzx', '105.028', '30.3139', '3c821ffeeae24bb7af79ed2a7cf9edcd');
INSERT INTO `t_area` VALUES ('3f381cbe97aa4441b2af37dd7d765b95', '341024', '祁门县', 'QMX', 'qmx', '117.601', '29.8737', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('3f6653cf24dc488b95322af18b085403', '469027', '乐东黎族自治县', 'LDLZZZX', 'ldlzzzx', '109.063', '18.6586', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('3f6870ccd8ef4dfa87b39c8b1c2ab54e', '440232', '乳源瑶族自治县', 'RYYZZZX', 'ryyzzzx', '113.176', '24.8121', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('3f798698705348919135e52532f49ef4', '520121', '开阳县', 'KYX', 'kyx', '107.047', '27.0754', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('3f7b5d923ab647d18bba65f238a8d8ca', '140602', '朔城区', 'SCQ', 'scq', '112.556', '39.2433', '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('3f7c4d6731d442fb98dd7c9884383135', '411002', '魏都区', 'WDQ', 'wdq', '113.825', '34.0435', '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('3fd67e82f10c480c982c82f13f34c58f', '150222', '固阳县', 'GYX', 'gyx', '110.168', '41.1047', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('400c889b935640c2bc97138d91ec83af', '370304', '博山区', 'BSQ', 'bsq', '117.966', '36.4254', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('401b10a2404b4d5aa2551b8b6f8e4158', '120103', '河西区', 'HXQ', 'hxq', '117.236', '39.0845', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('4024dec44c7a4414acd5894d136a976b', '340800', '安庆市', 'AQS', 'aqs', '117.059', '30.5379', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('402d3506a62c4040a3a838bc37da6bdf', '610900', '安康市', 'AKS', 'aks', '109.038', '32.7044', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('405756ea4534454494b1c4f1727cf780', '120104', '南开区', 'NKQ', 'nkq', '117.163', '39.117', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('40ae25adf6bb42388c8ab08f73263e47', '340102', '瑶海区', 'YHQ', 'yhq', '117.331', '31.9054', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('40d0f02ff62746199686a9a879f466ce', '340405', '八公山区', 'BGSQ', 'bgsq', '116.826', '32.6524', '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('40f27ed41e304189addcf8a596839ebe', '341524', '金寨县', 'JZX', 'jzx', '115.779', '31.4791', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('410b5ece61c545aa8c9a76fbba52d292', '230713', '带岭区', 'DLQ', 'dlq', '128.861', '47.0902', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('4115709755f84ff799205e19276a72c8', '431103', '冷水滩区', 'LSTQ', 'lstq', '111.622', '26.5604', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('412f531f99e74a39bcc4e23a6c425b24', '640522', '海原县', 'HYX', 'hyx', '105.68', '36.6031', 'b64a08b1d2eb402982e6e7a2794cbcb6');
INSERT INTO `t_area` VALUES ('413aebdba23248c49f5f027655e42656', '340703', '狮子山区', 'SZSQ', 'szsq', '117.89', '30.9448', 'bbee816f0c5e475ea74514a97e400481');
INSERT INTO `t_area` VALUES ('414679180ea74974857434174368d2f7', '610423', '泾阳县', 'JYX', 'jyx', '108.781', '34.6089', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('414a465b31854a7392cd401de7237d1b', '420527', '秭归县', 'ZGX', 'zgx', '110.686', '30.9033', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('414c17e4e0f04ca3a72826863ece3cfb', '371521', '阳谷县', 'YGX', 'ygx', '115.874', '36.1468', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('41588681986041d3be44242cb5fb4d93', '341722', '石台县', 'STX', 'stx', '117.538', '30.1992', 'b2d0ae237ad540dfa52df769a841138a');
INSERT INTO `t_area` VALUES ('41cd6b390c1f45688b2bb867c1124e8a', '469024', '临高县', 'LGX', 'lgx', '109.724', '19.8059', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('41cec134038f47a3a964221e7312db1e', '321281', '兴化市', 'XHS', 'xhs', '119.996', '32.962', 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('41d27665d5c94fbcad211b41acacbc36', '320506', '吴中区', 'WZQ', 'wzq', '120.366', '31.1799', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('41d287b6959d407597b98b7fd96ffb66', '230200', '齐齐哈尔市', 'QQHES', 'qqhes', '123.987', '47.3477', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('41d4fa3508d9454ba0015b0456287161', '360722', '信丰县', 'XFX', 'xfx', '114.982', '25.286', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('41d8ab04561e4e9992f01986c092f038', '350802', '新罗区', 'XLQ', 'xlq', '117.086', '25.2222', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('421caa353f9749fcac4647bf4fa2456d', '431127', '蓝山县', 'LSX', 'lsx', '112.196', '25.3195', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('421f377bb4d140feb334adb42b1dc9b7', '130406', '峰峰矿区', 'FFKQ', 'ffkq', '114.19', '36.4747', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('423340e7c3e2452e82d64df9b7015d06', '450300', '桂林市', 'GLS', 'gls', '110.261', '25.2629', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('423e7587994c4a66bfd2169fb4d491f5', '410923', '南乐县', 'NLX', 'nlx', '115.25', '36.0977', 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('424a4f1badc547608d20bea76cc08937', '533323', '福贡县', 'FGX', 'fgx', '98.8687', '26.9965', '18f03ffc2e854cfdbc84791d6483d58c');
INSERT INTO `t_area` VALUES ('4257645ee0ae4ea9ad067421f03c8826', '231221', '望奎县', 'WKX', 'wkx', '126.593', '46.8695', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('426b246ce96043d3886e56c3c78c29bc', '511101', '市辖区', 'SXQ', 'sxq', null, null, '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('427917141a0943e9996dcd993b5f238a', '350825', '连城县', 'LCX', 'lcx', '116.821', '25.6042', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('42b674770cff492fa75696c52910a5de', '350525', '永春县', 'YCX', 'ycx', '118.141', '25.3956', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('42bb560057014bafb028d951d397b52d', '650100', '乌鲁木齐市', 'WLMQS', 'wlmqs', '87.565', '43.8404', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('42d24d2a940045a8b217801ab4fabaf2', '420981', '应城市', 'YCS', 'ycs', '113.556', '30.9257', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('42d3042253764db290786d090cf288e0', '513436', '美姑县', 'MGX', 'mgx', '103.102', '28.4435', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('42ddadcf7eca4885bfbb7343ef258827', '231224', '庆安县', 'QAX', 'qax', '127.844', '47.0704', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('42eaf85033f044beafdc4f2be2dd355d', '420300', '十堰市', 'SYS', 'sys', '110.801', '32.637', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('4305b7351b24423997b8a355b2a10aea', '513324', '九龙县', 'JLX', 'jlx', '101.635', '28.9178', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('436ea5ec674144a9b933b04a2c01998c', '610924', '紫阳县', 'ZYX', 'zyx', '108.445', '32.4489', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('43720963124b4c6983ae5e824a7ba5e9', '230103', '南岗区', 'NGQ', 'ngq', '113.546', '23.0998', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('437dfab90987460081d55eb730647800', '350926', '柘荣县', 'ZRX', 'zrx', '119.888', '27.2071', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('438beba45a8a4f7cabfa564220507afc', '140801', '市辖区', 'SXQ', 'sxq', null, null, 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('43a39a891d6945bb98e33940541bf7ab', '640105', '西夏区', 'XXQ', 'xxq', '106.056', '38.5533', 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('43a8a2cb56534428826a958717dc5d43', '441781', '阳春市', 'YCS', 'ycs', '111.694', '22.2239', 'd2077a7cd49748e5a0cbb2bc1448e494');
INSERT INTO `t_area` VALUES ('43b59cb5e67e42f19c2e00af4b986b60', '632723', '称多县', 'CDX', 'cdx', '97.002', '33.9352', '836ceddbf0764941a9bfa03cb8719219');
INSERT INTO `t_area` VALUES ('43b69841a5c544f697356d1a87d94c57', '530627', '镇雄县', 'ZXX', 'zxx', '104.834', '27.5689', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('43ecf154a00f4e579768fc1bf90055de', '441401', '市辖区', 'SXQ', 'sxq', null, null, '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('43f4367864df4e8c82661557ff12a9eb', '433126', '古丈县', 'GZX', 'gzx', '110.008', '28.6036', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('43f5512e841d49dcab6965114455e396', '211103', '兴隆台区', 'XLTQ', 'xltq', '121.97', '41.1558', '5e7d74ca7c6f4cf0888135c788ed5376');
INSERT INTO `t_area` VALUES ('43fcc7140e7e4a2ab2cffe3ac5cf4be4', '630221', '平安县', 'PAX', 'pax', '102.004', '36.4064', '8c141a564f324701b8289ad1fa9b91b8');
INSERT INTO `t_area` VALUES ('4412daee71e24f33947f809491be948e', '621222', '文县', 'WX', 'wx', '104.784', '32.9473', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('44131525c63347dc8c838ecd56c2a077', '640106', '金凤区', 'JFQ', 'jfq', '106.243', '38.4786', 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('4441e7b3d4a84af5ad65014001fecb1c', '320201', '市辖区', 'SXQ', 'sxq', null, null, '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('4456d1079f3248658af44d8fbff0918a', '371523', '茌平县', 'CPX', 'cpx', '116.18', '36.5885', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('44aeeb8f11854f19b12880075f665863', '222424', '汪清县', 'WQX', 'wqx', '129.954', '43.5401', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('44b85679c7994b3d9e322e0139e60a08', '321023', '宝应县', 'BYX', 'byx', '119.456', '33.2258', 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('44c26888282e4ce8a055a96f3d878ac1', '131121', '枣强县', 'ZQX', 'zqx', '115.758', '37.461', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('44d57f84adb34a0893ea027556174d63', '442000', '中山市', 'ZSS', 'zss', '113.422', '22.5452', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('4558b1f70fb5446fad917206bc7cf8d1', '542522', '札达县', 'ZDX', 'zdx', '79.5528', '31.5536', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('455f330a262746e09caf23dbbbc3372e', '540127', '墨竹工卡县', 'MZGKX', 'mzgkx', '92.0319', '29.9167', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('458c44ad539347fa9f2ba81b770fd8f1', '140201', '市辖区', 'SXQ', 'sxq', null, null, '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('45a8d19b1a7b473d8b51423b7a66a28c', '210781', '凌海市', 'LHS', 'lhs', '121.286', '41.1526', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('45af3ea7a2b14d07982ea9195feaffdd', '610727', '略阳县', 'LYX', 'lyx', '106.163', '33.3854', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('45d6cd1174ba4726bf9ef20d11c6bb07', '340826', '宿松县', 'SSX', 'ssx', '116.254', '30.1082', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('45f6e83e825345f8a3f8ea7fde0b006f', '511422', '彭山县', 'PSX', 'psx', '103.866', '30.2545', '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('45fa948d03094997a237b02d4c8d4128', '620402', '白银区', 'BYQ', 'byq', '104.206', '36.5018', '0800f56287ad4d55bb0ec1cb3de20ecc');
INSERT INTO `t_area` VALUES ('45fdb2f6c55a4994a9a532ab2895645d', '440523', '南澳县', 'NAX', 'nax', '117.07', '23.4391', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('46182e0276d14bdfac4b0ce2008243b8', '441601', '市辖区', 'SXQ', 'sxq', null, null, '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('462d5ad6052b4bd89ad2be02f64ad335', '445322', '郁南县', 'YNX', 'ynx', '111.62', '23.0436', 'e54d276311894af388e82d430b4c70fb');
INSERT INTO `t_area` VALUES ('464602df01234652b06bb53b02f5b4a7', '141101', '市辖区', 'SXQ', 'sxq', null, null, '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('46641c8bfa004a55aa1e0b50152dc582', '370500', '东营市', 'DYS', 'dys', '118.584', '37.4871', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('467870b5f33d473db6f6ace34cf1c1ca', '411081', '禹州市', 'YZS', 'yzs', '113.393', '34.2003', '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('468ce4089f144382ab8e6eb4108bce0e', '331082', '临海市', 'LHS', 'lhs', '121.222', '28.8574', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('46ad457696bb478dba0186a423ef9ca8', '500229', '城口县', 'CKX', 'ckx', '108.742', '31.8881', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('46aeda50beba4532ab89ac17b37cd6b9', '411328', '唐河县', 'THX', 'thx', '112.859', '32.62', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('46d1ce3e79a147f1abcc323db48a7cf6', '341282', '界首市', 'JSS', 'jss', '115.399', '33.2262', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('46d29353936a4155a96fef7c68005520', '220000', '吉林省', 'JLS', 'jls', '126.263', '43.6788', '0');
INSERT INTO `t_area` VALUES ('46e8860c9c74454ca905d709a07d7e18', '652825', '且末县', 'QMX', 'qmx', '85.5064', '38.1007', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('46e8e164934843299bcb7071d2686b4d', '320684', '海门市', 'HMS', 'hms', '121.312', '31.956', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('46e98281336244c69479f8f0c2c57026', '411502', '浉河区', 'SHQ', 'shq', '113.963', '32.0313', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('46f1a609ecdc4c0fb4f5c6bf5548bf41', '370211', '黄岛区', 'HDQ', 'hdq', '120.17', '36.005', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('470b04e96763448cbb17472554910868', '130604', '南市区', 'NSQ', 'nsq', '115.485', '38.8219', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('471e6416fc114b8d9f180f457a4003e9', '230881', '同江市', 'TJS', 'tjs', '133.273', '47.8337', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('472c3bfd3ef34fbbb0b97c82708b0f13', '370831', '泗水县', 'SSX', 'ssx', '117.345', '35.6407', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('472e02e5f5834b009077f17fcf2d91e6', '450301', '市辖区', 'SXQ', 'sxq', null, null, '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('4738a3c4a8d94719a962a92da663e0c9', '520324', '正安县', 'ZAX', 'zax', '107.413', '28.5066', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('473a0e61badd43e1871a1ae6e643f74d', '370125', '济阳县', 'JYX', 'jyx', '117.15', '37.0328', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('4740971687fb421a88c4e0faa0671e21', '370522', '利津县', 'LJX', 'ljx', '118.4', '37.6553', '46641c8bfa004a55aa1e0b50152dc582');
INSERT INTO `t_area` VALUES ('4757a45b73a64eec825046f1f7d6adb7', '510403', '西区', 'XQ', 'xq', '116.322', '39.9315', '0a8760be3d9048039147c8bc7191826d');
INSERT INTO `t_area` VALUES ('4757e6a5e9af4e78a1c911550acf6e56', '152525', '东乌珠穆沁旗', 'DWZMQQ', 'dwzmqq', '117.81', '45.8267', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('475e7eeec917486a930eb27f6b0ca64e', '469003', '儋州市', 'DZS', 'dzs', '109.414', '19.5712', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('478b198efacc403eb440c01bfbb93240', '411702', '驿城区', 'YCQ', 'ycq', '114.008', '32.9684', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('47a200f2752248bb8e76a6c163a434d3', '511526', '珙县', 'GX', 'gx', '104.807', '28.197', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('47ab8e80dc1f496f87bd3b5e5587e0d1', '210682', '凤城市', 'FCS', 'fcs', '124.073', '40.5796', 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('47aeac3dba83452592c564a54c6bb022', '430700', '常德市', 'CDS', 'cds', '111.654', '29.0121', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('47df3f3dae0c4044bcc505584275f944', '513224', '松潘县', 'SPX', 'spx', '103.533', '32.6255', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('47ec006776024c7f872c5c5bd3cf5868', '410721', '新乡县', 'XXX', 'xxx', '113.848', '35.2205', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('47ec9858e8894a4383f6a6d4f20065f8', '410802', '解放区', 'JFQ', 'jfq', '113.231', '35.2417', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('47f95be43b8a4dd8bf18cc6d85aca111', '360123', '安义县', 'AYX', 'ayx', '115.595', '28.8364', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('482cfd8b6ab743dc9bb3041895497bbf', '430523', '邵阳县', 'SYX', 'syx', '111.332', '26.985', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('48622994e7a8417ea36dc585bbda6bf4', '361124', '铅山县', 'QSX', 'qsx', '117.713', '28.1098', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('48752b8a9eaa45478954c4467691c095', '511322', '营山县', 'YSX', 'ysx', '106.719', '31.1623', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('4878025172744123ae451a44f6b10a36', '542627', '朗县', 'LX', 'lx', '93.1068', '28.9648', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('48910ddab0104c4c8ff8c31d63cb17ac', '640324', '同心县', 'TXX', 'txx', '106.247', '37.0985', '1b11b582e514437184c3364fe8e7fbf2');
INSERT INTO `t_area` VALUES ('4893d1366176411cbc4f9248cac67435', '431200', '怀化市', 'HHS', 'hhs', '109.987', '27.5575', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('48ad05578a704c7686c12413b85cd328', '370832', '梁山县', 'LSX', 'lsx', '116.125', '35.8016', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('48af9adbdf7949848a5bcd545af50dac', '440111', '白云区', 'BYQ', 'byq', '113.331', '23.2945', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('48b2c58abd7544a6b8ce69bb04aa1a5d', '659000', '自治区直辖县级行政区划', 'ZZQZXXJXZQH', 'zzqzxxjxzqh', null, null, '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('48b696dc26d548bcb0b18242160ca58c', '510901', '市辖区', 'SXQ', 'sxq', null, null, 'fe672e515db8472e87574333b48c3e45');
INSERT INTO `t_area` VALUES ('48df4ff032f54478985c0c934c326746', '150781', '满洲里市', 'MZLS', 'mzls', '117.604', '49.5', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('48f646ddcf48409386f5db02262d927b', '370521', '垦利县', 'KLX', 'klx', '118.814', '37.67', '46641c8bfa004a55aa1e0b50152dc582');
INSERT INTO `t_area` VALUES ('48fadb65546f43a28c8987633c1c7cc3', '140603', '平鲁区', 'PLQ', 'plq', '112.304', '39.64', '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('4907b8d448174930a91b19ba7abb8e18', '621100', '定西市', 'DXS', 'dxs', '104.627', '35.5861', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('491556778a6741dc910891d7f29eb2fb', '620524', '武山县', 'WSX', 'wsx', '104.887', '34.6802', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('49248e14b9514f6cb2cbf26e4978fb59', '410181', '巩义市', 'GYS', 'gys', '113.04', '34.7038', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('4928538947ac4183963559fa44351792', '230382', '密山市', 'MSS', 'mss', '132.177', '45.4698', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('494eedec36e44db990b680920bc5b161', '420303', '张湾区', 'ZWQ', 'zwq', '110.717', '32.6638', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('496802bca70a42fcb09b35e827d9a792', '623021', '临潭县', 'LTX', 'ltx', '103.632', '34.7426', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('496fed88a8d04aad9fb96ee004cf5194', '522300', '黔西南布依族苗族自治州', 'QXNBYZMZZZZ', 'qxnbyzmzzzz', '104.901', '25.0951', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('49791b065e85455c95ebf81d672c6434', '341301', '市辖区', 'SXQ', 'sxq', null, null, '24cf9b2033a04e289857ab5bdfed05d5');
INSERT INTO `t_area` VALUES ('49821e5339ae456f9464721aa32848bd', '320803', '淮安区', 'HAQ', 'haq', '119.03', '33.6065', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('49849c1ec99947df97d78430342dc161', '410202', '龙亭区', 'LTQ', 'ltq', null, null, '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('498b84da9eda41ee9f02e9c4da09de84', '652302', '阜康市', 'FKS', 'fks', '88.3059', '44.4241', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('499c753dfe5a4d63bd86d54ceb9387bc', '330922', '嵊泗县', 'SSX', 'ssx', '122.482', '30.705', '9aac8e6852114aeaae087275dcda7b05');
INSERT INTO `t_area` VALUES ('49a5e5a1ba6d40c2b8f43e66f9e5d8cf', '440811', '麻章区', 'MZQ', 'mzq', '110.338', '21.0941', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('49af826b7b194cc9857c0769f3378d32', '350524', '安溪县', 'AXX', 'axx', '117.912', '25.1257', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('49c41dde59bf4f9dacda35e0392071f4', '120221', '宁河县', 'NHX', 'nhx', '117.689', '39.3816', '818f2b1ebf4b4a4ba8cc6e948be31076');
INSERT INTO `t_area` VALUES ('49cc70550b044aafb0a73e85e7aeeb18', '450000', '广西壮族自治区', 'GXZZZZQ', 'gxzzzzq', '108.924', '23.5523', '0');
INSERT INTO `t_area` VALUES ('49f75eb560ca4e38b8a00617926cf5af', '150105', '赛罕区', 'SHQ', 'shq', '111.876', '40.7889', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('4a1b23d0dfde4200b0e8318f5b65e4fd', '654325', '青河县', 'QHX', 'qhx', '90.403', '46.2682', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('4a39f0e232eb43c9aee12711a17ccd3c', '542129', '芒康县', 'MKX', 'mkx', '98.6208', '29.6203', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('4a3bdda88b8e4b77854742dd7368246d', '510114', '新都区', 'XDQ', 'xdq', '104.117', '30.8395', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('4a4ebf9438c5494887cef1ca33698f42', '230221', '龙江县', 'LJX', 'ljx', '123.089', '47.2589', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('4a8bb5e56696413b82c5fc29fce330dd', '230603', '龙凤区', 'LFQ', 'lfq', '125.142', '46.5356', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('4a8d21ef9c524096a078c293395816b0', '230208', '梅里斯达斡尔族区', 'MLSDWEZQ', 'mlsdwezq', '124.005', '47.5831', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('4a9a2ee03ed340108fac24af05f9847d', '510124', '郫县', 'PX', 'px', '103.885', '30.8396', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('4aaaabaa3a664a25a617e3fd05cc64ed', '130404', '复兴区', 'FXQ', 'fxq', '114.448', '36.6104', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('4ab8215577034acd94a72da4b773652c', '530800', '普洱市', 'PES', 'pes', '100.98', '22.7888', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('4acbee1b041e4b02a009213be8d45541', '341502', '金安区', 'JAQ', 'jaq', '116.662', '31.6313', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('4acef54241f44919980bdf3e8ec34037', '420502', '西陵区', 'XLQ', 'xlq', '111.314', '30.7408', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('4acfd31c49554d009069fd1096eed2aa', '653100', '喀什地区', 'KSDQ', 'ksdq', '75.993', '39.4706', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('4ada0d0a9e3a4eb9b1a8ec6328c0e92c', '431301', '市辖区', 'SXQ', 'sxq', null, null, '224c42b8e8d64becb335fdec0f071c0f');
INSERT INTO `t_area` VALUES ('4ae590a0da4041938ee570884950ce54', '652801', '库尔勒市', 'KELS', 'kels', '85.7094', '41.7055', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('4ae815bbd92740be96fbc6009a65e1fb', '130423', '临漳县', 'LZX', 'lzx', '114.587', '36.2661', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('4af9e6200c9d4867a6ea6afa0904d2f0', '440113', '番禺区', 'FYQ', 'fyq', '113.417', '22.9346', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('4b1a0437be634b70aeac0038db5d27fd', '610115', '临潼区', 'LTQ', 'ltq', '109.31', '34.4563', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('4b3b0d1fabd848ba8b6e4a0b9ab6b1cc', '330701', '市辖区', 'SXQ', 'sxq', null, null, '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('4b7854211f644fca9972d739cb03feea', '451229', '大化瑶族自治县', 'DHYZZZX', 'dhyzzzx', '107.712', '23.9707', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('4b9915bd0848416290fa67abff1cf942', '610721', '南郑县', 'NZX', 'nzx', '106.97', '32.812', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('4bc39a51f3b5459cac6425a1c397d89c', '422825', '宣恩县', 'XEX', 'xex', '109.565', '29.8861', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('4be35631782f4b6d888676bd540ccda5', '231123', '逊克县', 'XKX', 'xkx', '128.371', '48.8867', 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('4c11180b033849e994abd2fd78870c18', '130706', '下花园区', 'XHYQ', 'xhyq', '115.35', '40.5688', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('4c177d44681948e1afbc21cfe0ecbfd2', '652100', '吐鲁番地区', 'TLFDQ', 'tlfdq', '89.1816', '42.9605', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('4c2ac8c07e89477b8c5d3ff0ecd10f7c', '320831', '金湖县', 'JHX', 'jhx', '119.146', '33.0258', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('4c2be3527fd044649e0d764038a32cef', '450481', '岑溪市', 'CXS', 'cxs', '111.029', '22.9253', '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('4c5dc520a067406baba553c5774f1996', '130634', '曲阳县', 'QYX', 'qyx', '114.661', '38.7066', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('4c7fbe80d84641938512f32132d55020', '350424', '宁化县', 'NHX', 'nhx', '116.678', '26.3101', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('4c86510818c14f30b00b8a13883ffcc2', '330702', '婺城区', 'WCQ', 'wcq', '119.518', '28.9845', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('4ca42c92a7e540e3afdba263e52d1369', '430426', '祁东县', 'QDX', 'qdx', '111.962', '26.8068', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('4cb39303f89f46d2837a048e39c62cb2', '611000', '商洛市', 'SLS', 'sls', '109.934', '33.8739', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('4cb4492756634289bf4d40aa9c9cb01b', '370283', '平度市', 'PDS', 'pds', '119.951', '36.7886', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('4cbe2067ceea4902a2487763143f50fd', '411381', '邓州市', 'DZS', 'dzs', '112.057', '32.6847', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('4ccb95210a8e4c5c816a367e031eb997', '341522', '霍邱县', 'HQX', 'hqx', '116.174', '32.2015', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('4cd01d34b4fe48fe9e649a3e17eb0aad', '310120', '奉贤区', 'FXQ', 'fxq', '121.561', '30.9151', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('4cd066d328c54bc3918dc6c6fc8d3377', '140901', '市辖区', 'SXQ', 'sxq', null, null, '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('4d18eb4a2d2749428b471cd88b4ef170', '451321', '忻城县', 'XCX', 'xcx', '108.752', '24.0187', '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('4d2ce92a8a284e3aa7c1e90e6d35ca5e', '542430', '尼玛县', 'NMX', 'nmx', '87.6548', '33.537', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('4d3827e6890e49c295abf047c404f4c7', '230401', '市辖区', 'SXQ', 'sxq', null, null, 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('4d4680e8a495469ca3486472b4e0b4a7', '530829', '西盟佤族自治县', 'XMWZZZX', 'xmwzzzx', '99.5221', '22.7084', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('4d4cc8f50c6e49f18515e67bebaf8f24', '350205', '海沧区', 'HCQ', 'hcq', '117.984', '24.5362', '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('4d56d5df5bd74de289c8cec37ce04ec4', '140929', '岢岚县', 'KLX', 'klx', '111.544', '38.738', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('4d5afd858f554aae9c5ff85aa9cb88a2', '530523', '龙陵县', 'LLX', 'llx', '98.8425', '24.499', 'd4729122df5f40ff807ddb1fa092d797');
INSERT INTO `t_area` VALUES ('4d5b9529c3ba413d93e99a59ffdc931f', '411526', '潢川县', 'HCX', 'hcx', '115.164', '32.1328', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('4d8e09b6b8464ca7b69643da095deeeb', '310104', '徐汇区', 'XHQ', 'xhq', '121.446', '31.1692', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('4d90b2d6667145bc86fa1655deedec9f', '530828', '澜沧拉祜族自治县', 'LCLHZZZX', 'lclhzzzx', '99.9845', '22.666', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('4d91bd2dace34f18938b71c92a1ba3bf', '330681', '诸暨市', 'ZJS', 'zjs', '120.281', '29.6994', '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('4d9e0ea401f04d309f9173293cd0a874', '360111', '青山湖区', 'QSHQ', 'qshq', '115.931', '28.7008', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('4da3cbb5f7fa44d4aea333cc2fab6384', '110108', '海淀区', 'HDQ', 'hdq', '116.24', '40.0332', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('4dae551ba4dd4a38a026121aa93145ba', '150524', '库伦旗', 'KLQ', 'klq', '121.573', '42.81', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('4dc1ac5f44c045fd957c74aec8283153', '130525', '隆尧县', 'LYX', 'lyx', '114.793', '37.3647', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('4dc2e27fe51f4b6b85f75cd3c907960c', '513400', '凉山彝族自治州', 'LSYZZZZ', 'lsyzzzz', '102.26', '27.8924', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('4dd35eb394b04cb6ba621dc16d28ea8d', '620924', '阿克塞哈萨克族自治县', 'AKSHSKZZZX', 'akshskzzzx', '94.4523', '39.0259', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('4de6ee5b0ef142f9aceb4abe8f961472', '441301', '市辖区', 'SXQ', 'sxq', null, null, '7e42aca6103e4ababd7f9517dbe01160');
INSERT INTO `t_area` VALUES ('4de83880d1f346d2b377f4be4fd92756', '350503', '丰泽区', 'FZQ', 'fzq', '118.607', '24.9363', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('4dec8b67ad684f12a74d7da0815e240d', '410505', '殷都区', 'YDQ', 'ydq', '114.297', '36.1356', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('4df792ee1c3c491d81a71b82c1454f37', '360981', '丰城市', 'FCS', 'fcs', '115.823', '28.1115', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('4e12bbc8d33b4efca085e35521949cf0', '513432', '喜德县', 'XDX', 'xdx', '102.45', '28.1965', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('4e20ea62ae0f4208a2e43d06cc4d2230', '430902', '资阳区', 'ZYQ', 'zyq', '112.343', '28.6941', 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('4e3cef3759284edda9a09b67dbeae0c8', '610723', '洋县', 'YX', 'yx', '107.616', '33.3716', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('4e587cf0a6284620af5671e857087da3', '510683', '绵竹市', 'MZS', 'mzs', '104.129', '31.4367', 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('4e7e8434c9ec41a49b00850bce155df2', '371481', '乐陵市', 'LLS', 'lls', '117.146', '37.6744', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('4eb126ba69514b09abe35c2807cbf984', '411601', '市辖区', 'SXQ', 'sxq', null, null, '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('4eb503075c554c0680fbe36d21814bdd', '411103', '郾城区', 'YCQ', 'ycq', '113.941', '33.6707', 'dadce90a1182412080feb71560640c9b');
INSERT INTO `t_area` VALUES ('4ed623171b6f470e9ca89580ad34c462', '130104', '桥西区', 'QXQ', 'qxq', '114.438', '38.0334', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('4ee240e54ee446c5b25d9ae9aae5e7fc', '130421', '邯郸县', 'HDX', 'hdx', '114.494', '36.6203', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('4ee52c3cda8348adab1aeeb2d5270325', '340221', '芜湖县', 'WHX', 'whx', '118.532', '31.1917', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('4efe01d6a1fb403cb31305e10e901821', '431322', '新化县', 'XHX', 'xhx', '111.247', '27.8733', '224c42b8e8d64becb335fdec0f071c0f');
INSERT INTO `t_area` VALUES ('4f47a3120be44242acc19a9c22eb7c96', '420625', '谷城县', 'GCX', 'gcx', '111.496', '32.1735', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('4f49c4cf12594348b8b2ecc0029696e1', '420304', '郧阳区', 'YYQ', 'yyq', null, null, '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('4f86ffe71f4e472e8d10d0a5b7b031f9', '131002', '安次区', 'ACQ', 'acq', '116.796', '39.3453', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('4f88bb2258fe44dba61f3a8889b622c8', '500231', '垫江县', 'DJX', 'djx', '107.444', '30.2595', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('4f8a529cd2964795ae9a1dd5d10e8e38', '320401', '市辖区', 'SXQ', 'sxq', null, null, 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('4fa6def5839c4be0be2e32844d63b50d', '230407', '兴山区', 'XSQ', 'xsq', '130.327', '47.394', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('4fa78f339565446b8ed4c663c52c2df8', '421300', '随州市', 'SZS', 'szs', '113.379', '31.7179', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('4fae9976d5f84eb08dd8aaea7b3b6e9e', '120101', '和平区', 'HPQ', 'hpq', '117.203', '39.1248', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('4fce4aea903e4ae59232e6019306693b', '230833', '抚远县', 'FYX', 'fyx', '134.296', '47.9261', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('5000a7e43a864888ae163d55cf1bf51e', '220182', '榆树市', 'YSS', 'yss', '126.603', '44.8794', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('501ec0ad9d784f6fae783f7ca6ee933b', '320581', '常熟市', 'CSS', 'css', '120.831', '31.6694', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('5041914cbba744b4925d301b3d8ba857', '450124', '马山县', 'MSX', 'msx', '108.17', '23.6649', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('504cf279ed264ad4ac16bce5250e4b16', '230223', '依安县', 'YAX', 'yax', '125.295', '47.7069', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('504ebee310124126b9cd7389cdc162be', '210124', '法库县', 'FKX', 'fkx', '123.249', '42.4153', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('506871619481497fad4808ce19bca7a6', '445201', '市辖区', 'SXQ', 'sxq', null, null, '0d5e23ba42e5437086e944e6d3dfc2a6');
INSERT INTO `t_area` VALUES ('506a6ae05d774cd583b148e948502690', '130283', '迁安市', 'QAS', 'qas', '118.687', '40.0404', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('506febdea650498e9f8afdaafc68619e', '410303', '西工区', 'XGQ', 'xgq', '112.407', '34.6897', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('507ea0be588e47e19900b4aad1a4524e', '220400', '辽源市', 'LYS', 'lys', '125.134', '42.9233', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('5083c61ff90e448da0884057fe16ca20', '420222', '阳新县', 'YXX', 'yxx', '115.14', '29.8281', '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('5089f35a99a946f7b02107d5842299ee', '141027', '浮山县', 'FSX', 'fsx', '111.928', '35.9458', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('508e4015b81148f29f9ef3f5c895906a', '542421', '那曲县', 'NQX', 'nqx', '92.0346', '31.2523', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('50ac3a960bb140088d96c7fde0c7dee4', '350211', '集美区', 'JMQ', 'jmq', '118.029', '24.641', '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('50da16138ec648fd80a250aedeb3fa51', '610101', '市辖区', 'SXQ', 'sxq', null, null, '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('50e3e1f33dd64410ae6c678ce8b5381b', '450421', '苍梧县', 'CWX', 'cwx', '111.298', '23.6267', '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('50e7d718eb8248bdb591244184036bdb', '320703', '连云区', 'LYQ', 'lyq', '119.467', '34.6389', '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('50eebad25f194cf98e4333bc496ed2f0', '430301', '市辖区', 'SXQ', 'sxq', null, null, 'a7d11d332fb046ffae4054c1ab1e87e3');
INSERT INTO `t_area` VALUES ('5111054488a84fa98030b4d756d8aec5', '350304', '荔城区', 'LCQ', 'lcq', '119.074', '25.4276', '9be15a0d529a4e5f9fef94e6295427ea');
INSERT INTO `t_area` VALUES ('5113e6dc4c7e4c2481510af4c23a99e2', '411102', '源汇区', 'YHQ', 'yhq', '113.924', '33.5348', 'dadce90a1182412080feb71560640c9b');
INSERT INTO `t_area` VALUES ('511a80de481342dcad217cf3db245c65', '321084', '高邮市', 'GYS', 'gys', '119.503', '32.8359', 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('511ed80977524d2f991766ea4a189511', '131024', '香河县', 'XHX', 'xhx', '117.051', '39.7431', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('5137bf487bf94c3893d03fba6f0104b9', '451224', '东兰县', 'DLX', 'dlx', '107.414', '24.5116', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('513988dfc50b497ab5e44464381cee51', '511002', '市中区', 'SZQ', 'szq', null, null, '601b6ef239914e5a8764e6343d7a0573');
INSERT INTO `t_area` VALUES ('513bc2f53d4c424e8b54ffc1c9ea1a3f', '620102', '城关区', 'CGQ', 'cgq', '91.1687', '29.6664', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('51730c8a01c14997a4c7052b8ea0b325', '130633', '易县', 'YX', 'yx', '115.254', '39.3176', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('51780865202a4db3bed788642315b491', '130208', '丰润区', 'FRQ', 'frq', '118.059', '39.7899', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('51c9d832d35a4ec7839d94323a12bc19', '410104', '管城回族区', 'GCHZQ', 'gchzq', '113.722', '34.709', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('51df390e6be24c73ac63df0b485096b4', '522700', '黔南布依族苗族自治州', 'QNBYZMZZZZ', 'qnbyzmzzzz', '107.523', '26.2645', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('51e4b875bb68488a96db4d16d90d4c27', '441803', '清新区', 'QXQ', 'qxq', '112.887', '23.8992', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('51e699206b944423ae71b66b59cca9f2', '530823', '景东彝族自治县', 'JDYZZZX', 'jdyzzzx', '100.795', '24.3967', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('51fdb0eeeba84419ae438ab0807c4c20', '130127', '高邑县', 'GYX', 'gyx', '114.607', '37.6227', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('521a10331daf4c56bb294b8727bf150a', '310110', '杨浦区', 'YPQ', 'ypq', '121.536', '31.3045', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('521cc1efb3194688b59a4820168d4b62', '532600', '文山壮族苗族自治州', 'WSZZMZZZZ', 'wszzmzzzz', '104.246', '23.3741', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('52243f2eaa204e3097e4dba021b3c614', '341824', '绩溪县', 'JXX', 'jxx', '118.664', '30.1624', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('52402ee6fc1a454fa1640a219aa67767', '445301', '市辖区', 'SXQ', 'sxq', null, null, 'e54d276311894af388e82d430b4c70fb');
INSERT INTO `t_area` VALUES ('5298a22a0b5645919327b4ff4ef4faf8', '371102', '东港区', 'DGQ', 'dgq', '119.378', '35.4694', '7b42c83f13eb42e2819898caa0cddd14');
INSERT INTO `t_area` VALUES ('52a9e5e099b04190914a783fe296a3c6', '421126', '蕲春县', 'QCX', 'qcx', '115.601', '30.3287', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('52b5ea5b286f451ea07564647f904bc0', '110229', '延庆县', 'YQX', 'yqx', '116.17', '40.5452', '1942c91750114a86b301492bd6196b0c');
INSERT INTO `t_area` VALUES ('52b9af85f16b4dcca76293c1077849a8', '410600', '鹤壁市', 'HBS', 'hbs', '114.298', '35.7554', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('52d2457d9e5742489c1ac31ed1430868', '360104', '青云谱区', 'QYPQ', 'qypq', '115.922', '28.6366', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('52da50796c2c4bebb0523379a33e0e29', '210703', '凌河区', 'LHQ', 'lhq', '121.183', '41.1344', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('52e104f7965245e98fac0ea9664f98b8', '140824', '稷山县', 'JSX', 'jsx', '110.965', '35.5983', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('53255f07f7604ece9a723b70258ea33b', '410200', '开封市', 'KFS', 'kfs', '114.352', '34.8019', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('5333743c70bc422db88a1ada7087e48e', '350481', '永安市', 'YAS', 'yas', '117.329', '25.9194', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('533c02cfb3d14491910bf49799e64518', '350423', '清流县', 'QLX', 'qlx', '116.921', '26.0993', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('53422ef424c44210a37a6e03bb098cd7', '421182', '武穴市', 'WXS', 'wxs', '115.626', '30.0156', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('53567f61c4314b5a8c00a774c3e7625e', '341003', '黄山区', 'HSQ', 'hsq', '118.078', '30.2777', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('538168ee1fc94a598457a152032d5e97', '130125', '行唐县', 'XTX', 'xtx', '114.457', '38.5467', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('53b89e85bcff4b3e97269c087a379949', '440118', '增城区', 'ZCQ', 'zcq', null, null, 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('53b8bde4468e4c778f57a2eec96c7fd7', '610528', '富平县', 'FPX', 'fpx', '109.236', '34.8794', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('53cc8b52e1244ab0a2c68c73f814ea32', '420704', '鄂城区', 'ECQ', 'ecq', '114.901', '30.3206', '920dd719c1884228a815ee19a01325b4');
INSERT INTO `t_area` VALUES ('53d13b1ff60a420fa444132bc78f8c8e', '210501', '市辖区', 'SXQ', 'sxq', null, null, '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('53e19bdd06244e298415be657ace8d6e', '500237', '巫山县', 'WSX', 'wsx', '109.909', '31.1212', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('53e653326de14dd69c95b0e297d8a2ea', '542423', '比如县', 'BRX', 'brx', '93.4934', '31.4471', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('53ede55de0404c6699203d38d240fde5', '150502', '科尔沁区', 'KEQQ', 'keqq', '122.291', '43.6583', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('53fb265cec09493d8030921d9348ce5e', '231200', '绥化市', 'SHS', 'shs', '126.989', '46.6461', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('53fe4f64760b40d484869b63cb1d51ae', '350521', '惠安县', 'HAX', 'hax', '118.809', '24.9919', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('541672b6f7c040178cca08c0ecc60785', '420301', '市辖区', 'SXQ', 'sxq', null, null, '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('54434bf436d84097b3208b2d4713eb2a', '430522', '新邵县', 'XSX', 'xsx', '111.471', '27.4312', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('5446f58ca12f4deead7b7310b46006f2', '360281', '乐平市', 'LPS', 'lps', '117.273', '28.9699', '0fd8cbc6a4b84e28a88a01d66ec44698');
INSERT INTO `t_area` VALUES ('544a17318e714d03b41b455d2cafbf55', '230623', '林甸县', 'LDX', 'ldx', '124.897', '47.1597', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('544b41571f384224a5d9ca107efb8369', '340711', '郊区', 'JQ', 'jq', null, null, 'bbee816f0c5e475ea74514a97e400481');
INSERT INTO `t_area` VALUES ('5473ababad1747549851b6c0b684d284', '440402', '香洲区', 'XZQ', 'xzq', '113.534', '22.2656', 'c35a53182359423d9e4c389d1a1dca2c');
INSERT INTO `t_area` VALUES ('54b48674f179438c9d432efc313cf240', '210901', '市辖区', 'SXQ', 'sxq', null, null, '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('54d10e93cb9e4fc890c61f0e5a836c66', '220104', '朝阳区', 'CYQ', 'cyq', '116.522', '39.959', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('54d5d63dc041434bb15a5616d78d058e', '341323', '灵璧县', 'LBX', 'lbx', '117.543', '33.6907', '24cf9b2033a04e289857ab5bdfed05d5');
INSERT INTO `t_area` VALUES ('54f2bdbaee3a4574a28f48aaf9cbb467', '510723', '盐亭县', 'YTX', 'ytx', '105.479', '31.2479', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('54f3c70e7d5b4fe7880f87e91846f954', '522625', '镇远县', 'ZYX', 'zyx', '108.476', '27.1216', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('550590ade7cf4e259ede0a427b0e6c78', '150122', '托克托县', 'TKTX', 'tktx', '111.32', '40.3611', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('553105128b3b43f0b9292fb35792c6da', '445381', '罗定市', 'LDS', 'lds', '111.493', '22.691', 'e54d276311894af388e82d430b4c70fb');
INSERT INTO `t_area` VALUES ('553c058cc60141f3a35e2b7e0983b3fd', '211303', '龙城区', 'LCQ', 'lcq', '120.401', '41.6062', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('554ee576114b445f80ca24b25e68bbef', '211081', '灯塔市', 'DTS', 'dts', '123.313', '41.4201', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('5552264723cb4cbaac4a9b384a2513f6', '230229', '克山县', 'KSX', 'ksx', '125.706', '48.1671', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('556803be6a674b0c84c98a1cd57c8155', '140425', '平顺县', 'PSX', 'psx', '113.534', '36.2218', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('5568cde2a663493cac3d05c86dcf23c1', '330482', '平湖市', 'PHS', 'phs', '121.106', '30.7165', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('55758d86fdbb432a991608592ffee9c9', '650000', '新疆维吾尔自治区', 'XJWWEZZQ', 'xjwwezzq', '85.6149', '42.127', '0');
INSERT INTO `t_area` VALUES ('5581b186989343969bd218f90bf59f8a', '431321', '双峰县', 'SFX', 'sfx', '112.188', '27.4656', '224c42b8e8d64becb335fdec0f071c0f');
INSERT INTO `t_area` VALUES ('55b456aae4ee4106b69ed3012284360a', '330411', '秀洲区', 'XZQ', 'xzq', '120.692', '30.7777', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('55ce79d577504d16925e45a1590148fb', '230421', '萝北县', 'LBX', 'lbx', '130.761', '47.7469', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('55d245a6e4a34a0f8096753f2e7c56e9', '431102', '零陵区', 'LLQ', 'llq', '111.564', '26.1023', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('55e89b6cbbb645e6943ac9598a58504c', '653227', '民丰县', 'MFX', 'mfx', '83.3528', '37.1731', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('55e9c1aeeea9468b94149874fd045c22', '410882', '沁阳市', 'QYS', 'qys', '112.888', '35.1338', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('55eaecce37134bc6b9ba2918d9c44256', '430202', '荷塘区', 'HTQ', 'htq', '113.213', '27.9072', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('561e9361a61246599790a8e58b94fff4', '522328', '安龙县', 'ALX', 'alx', '105.38', '25.14', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('563edad13b0b47d5a89c9124a03ace79', '360102', '东湖区', 'DHQ', 'dhq', '115.91', '28.6924', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('564591c71b204990ba307a89347525cb', '140421', '长治县', 'ZZX', 'zzx', '113.086', '36.0247', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('56638a23c20c416ca11515bedbbe61ce', '640200', '石嘴山市', 'SZSS', 'szss', '106.379', '39.0202', '1c79e3a807264ac095db85cd4ce88673');
INSERT INTO `t_area` VALUES ('568982ae8b824603aa8e548bd2dc19c7', '654021', '伊宁县', 'YNX', 'ynx', '81.7569', '44.0081', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('5695cf8168ae4d13a8ada5dc70cccc02', '621227', '徽县', 'HX', 'hx', '106.033', '33.8929', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('569eacec8aa7481380730b69ac1d7f60', '131124', '饶阳县', 'RYX', 'ryx', '115.74', '38.2231', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('56c31af620c34834af39ca95b6369a97', '150103', '回民区', 'HMQ', 'hmq', '111.597', '40.8389', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('56cadb60ec724bed9c8e450ed440edac', '350824', '武平县', 'WPX', 'wpx', '116.136', '25.139', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('56d7c262ef624f05b379036c99a3d39e', '542400', '那曲地区', 'NQDQ', 'nqdq', '92.067', '31.4807', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('56e4b8525c474e7c8c70f9ec0db06bdb', '330424', '海盐县', 'HYX', 'hyx', '120.886', '30.526', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('56edc9f10be546e98129e3ebc7640d33', '653130', '巴楚县', 'BCX', 'bcx', '78.9071', '39.6181', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('56ff78821f7f412ea9c21156690bb0ef', '420114', '蔡甸区', 'CDQ', 'cdq', '113.972', '30.4562', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('570c283dd09546198fa8e521d33cf5e7', '421083', '洪湖市', 'HHS', 'hhs', '113.539', '29.9968', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('572a92381cc949cf933a063be843cb99', '513321', '康定县', 'KDX', 'kdx', '101.755', '29.958', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('5754ba0afb384f59b7f59373202edd01', '500106', '沙坪坝区', 'SPBQ', 'spbq', '106.375', '29.6305', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('577089ea16bc48a0ba6187727daca021', '210200', '大连市', 'DLS', 'dls', '121.593', '38.9487', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('578c088d2e5042cbb4b67dde30c01f66', '431121', '祁阳县', 'QYX', 'qyx', '111.973', '26.4608', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('5792574f14ff4fb9825ac56b73912093', '630102', '城东区', 'CDQ', 'cdq', '101.832', '36.6021', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('57ec8d8c7d064015bc9026bcd2c25be0', '632624', '达日县', 'DRX', 'drx', '99.4108', '33.4827', '1dd19b4dbd6e441d8864c7855b538cd7');
INSERT INTO `t_area` VALUES ('5807d814738f4ca7973bae5534a28b7d', '130500', '邢台市', 'XTS', 'xts', '114.52', '37.0695', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('582a21a6d92a4726acf8e9ebd3cb827f', '360700', '赣州市', 'GZS', 'gzs', '114.936', '25.8453', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('58344e98f08e41269d85e944654d1f1d', '130281', '遵化市', 'ZHS', 'zhs', '117.958', '40.1379', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('5858e132b16745de861d10e76d42cea5', '320104', '秦淮区', 'QHQ', 'qhq', '118.817', '32.008', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('585db3479c7640adad39e2e3889f34bf', '230600', '大庆市', 'DQS', 'dqs', '125.022', '46.5967', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('586526c21b1247f79403448c098182f4', '610827', '米脂县', 'MZX', 'mzx', '110.187', '37.8285', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('586841e3dfe84e4caa1c05ac9dec517f', '511703', '达川区', 'DCQ', 'dcq', null, null, 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('587b5105e4294632934f8d7b91d38d73', '320203', '南长区', 'NZQ', 'nzq', '120.316', '31.5429', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('58928a1fd3b244d7bc258a14e640c7ef', '610330', '凤县', 'FX', 'fx', '106.766', '33.9933', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('58c34e65fe274df48cf72765cdffa02d', '310108', '闸北区', 'ZBQ', 'zbq', '121.458', '31.288', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('58dbe2db8c4f47c2a8377e99f1350545', '320412', '武进区', 'WJQ', 'wjq', '119.943', '31.6729', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('5935d9dbf63449458579c3b63aadef3e', '530702', '古城区', 'GCQ', 'gcq', '100.329', '26.8593', 'c3e9970474c54bd993dfe4868cd99842');
INSERT INTO `t_area` VALUES ('5953c292236d4dc6a7db2dbd1bffa84e', '130181', '辛集市', 'XJS', 'xjs', '115.299', '37.9241', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('595bb1e5a11d491e9ad0f5c59c303e32', '411200', '三门峡市', 'SMXS', 'smxs', '111.181', '34.7833', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('598dbc8787454899989e1eb9c52364ab', '222402', '图们市', 'TMS', 'tms', '129.834', '43.0305', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('599ca8181df24759b03a84c2d1acbedb', '330402', '南湖区', 'NHQ', 'nhq', '120.845', '30.7164', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('59a356b9fd8d4a9ebe7412dce6568c68', '120000', '天津市', 'TJS', 'tjs', '117.211', '39.1439', '0');
INSERT INTO `t_area` VALUES ('59d753f9801e4f71b709aad8d0f62d0f', '610500', '渭南市', 'WNS', 'wns', '109.484', '34.5024', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('59fc26c006b440b4aeb6884045e01493', '511001', '市辖区', 'SXQ', 'sxq', null, null, '601b6ef239914e5a8764e6343d7a0573');
INSERT INTO `t_area` VALUES ('5a092dd1c73943d6867f5ab3e50d11f7', '141102', '离石区', 'LSQ', 'lsq', '111.313', '37.5523', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('5a205e21567b412185444c8770233476', '620121', '永登县', 'YDX', 'ydx', '103.253', '36.6169', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('5a213d6bc63c4cc8ab9dddfe8297683c', '340802', '迎江区', 'YJQ', 'yjq', '117.153', '30.5415', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('5a5b489b25ea4e9382086d07520683f9', '610524', '合阳县', 'HYX', 'hyx', '110.191', '35.2084', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('5a63425768744893adea1db49626dbbc', '231083', '海林市', 'HLS', 'hls', '129.221', '44.9036', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('5a8037bd7e88449cb42d3bfee02fb27c', '150782', '牙克石市', 'YKSS', 'ykss', '121.513', '49.33', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('5a854c5c804c47cc94c7c4f590f4a785', '371622', '阳信县', 'YXX', 'yxx', '117.573', '37.6055', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('5a8f7475e4194a7bb471a2b8183b7f47', '231002', '东安区', 'DAQ', 'daq', '129.86', '44.4084', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('5ab5be6f18774030b2c85d6acc6ec8fd', '522636', '丹寨县', 'DZX', 'dzx', '107.931', '26.2312', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('5ad15908ae3b44e79c9b1e2aab7df0fb', '360824', '新干县', 'XGX', 'xgx', '115.507', '27.7386', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('5ad19cd8edd54590b496cb52dbe313ab', '659003', '图木舒克市', 'TMSKS', 'tmsks', '79.1982', '39.8892', '48b2c58abd7544a6b8ce69bb04aa1a5d');
INSERT INTO `t_area` VALUES ('5b02dff184bd4035a45ed58c353051ee', '140101', '市辖区', 'SXQ', 'sxq', null, null, 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('5b034ca38d5944b4b677c9475cdedf1f', '540223', '定日县', 'DRX', 'drx', '87', '28.4777', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('5b46ad2f526e4886b8aa5b901e464bf3', '513426', '会东县', 'HDX', 'hdx', '102.743', '26.5736', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('5b753d77d8804944bc1bd4c29e48db3b', '340403', '田家庵区', 'TJAQ', 'tjaq', '117.015', '32.5644', '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('5bb91417124c4071bec471128917c74d', '640221', '平罗县', 'PLX', 'plx', '106.544', '38.8915', '56638a23c20c416ca11515bedbbe61ce');
INSERT INTO `t_area` VALUES ('5bbbc148e3614a52a049bf8571210840', '370501', '市辖区', 'SXQ', 'sxq', null, null, '46641c8bfa004a55aa1e0b50152dc582');
INSERT INTO `t_area` VALUES ('5bc5f4e760ab4cff895e8e6b1b0096c1', '130922', '青县', 'QX', 'qx', '116.851', '38.5658', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('5bdc34544e5849479be7c334e14e4ac5', '632823', '天峻县', 'TJX', 'tjx', '98.4965', '38.0518', '62daf966c7a344b6872e45ca3b3c9644');
INSERT INTO `t_area` VALUES ('5be6f86cb13e449e8aaedf0e8074be43', '320924', '射阳县', 'SYX', 'syx', '120.28', '33.7455', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('5c0202c42bc64eb69489e4a1fa84c178', '210303', '铁西区', 'TXQ', 'txq', '123.359', '41.8057', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('5c02de40ff4a4718a45f0938350ea160', '130827', '宽城满族自治县', 'KCMZZZX', 'kcmzzzx', '118.636', '40.5781', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('5c0894cf50b24a14817006dca4bd5b92', '330522', '长兴县', 'ZXX', 'zxx', '119.819', '30.9834', '611bbedacbe04f668b20db1a0beaf99b');
INSERT INTO `t_area` VALUES ('5c08cc954bee4dd882ae016765b32942', '370634', '长岛县', 'ZDX', 'zdx', '120.756', '38.0775', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('5c0b1151358046d8855f34a4be9997dd', '350000', '福建省', 'FJS', 'fjs', '117.985', '26.0501', '0');
INSERT INTO `t_area` VALUES ('5c14dc9f726a4008ac3608648f34d327', '653022', '阿克陶县', 'AKTX', 'aktx', '75.2586', '38.6325', '8cf7470b137a485abbb0b67123f45b60');
INSERT INTO `t_area` VALUES ('5c1cefbd979b4974b27aa195273426a9', '321201', '市辖区', 'SXQ', 'sxq', null, null, 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('5c202e4248e545a9a57608243ea598b4', '530722', '永胜县', 'YSX', 'ysx', '100.705', '26.4917', 'c3e9970474c54bd993dfe4868cd99842');
INSERT INTO `t_area` VALUES ('5c2fa79db1384c4fb86ef0838b587aee', '150826', '杭锦后旗', 'HJHQ', 'hjhq', '107.033', '40.8909', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('5c2fbd51de044f56bb27742a02be804d', '440823', '遂溪县', 'SXX', 'sxx', '110.04', '21.2703', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('5c66279da40445df9bdc929f31688a1a', '141121', '文水县', 'WSX', 'wsx', '111.965', '37.4597', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('5c862db188f04204b432135f13284ae8', '522623', '施秉县', 'SBX', 'sbx', '108.154', '27.0703', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('5ca0b57a78584098aaa3613f869aba94', '510603', '旌阳区', 'JYQ', 'jyq', '104.415', '31.1798', 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('5cd2a34d769a4362b25dd1368eeb607c', '410822', '博爱县', 'BAX', 'bax', '113.075', '35.186', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('5cf6a1fde1b1413089782f939524a0e4', '522624', '三穗县', 'SSX', 'ssx', '108.762', '26.9402', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('5d08a9c7858e4d119baee9db197b23e0', '152500', '锡林郭勒盟', 'XLGLM', 'xlglm', '116.027', '43.9397', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('5d136e473faa4521a7112af8113f9cde', '511826', '芦山县', 'LSX', 'lsx', '103.018', '30.4403', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('5d16f6f6b10447089e808b1446ec0594', '640101', '市辖区', 'SXQ', 'sxq', null, null, 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('5d274f46e85a459db372bc792574fd1a', '340222', '繁昌县', 'FCX', 'fcx', '118.2', '31.1283', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('5d2d508f4b7a406c858634c38a605c0d', '430101', '市辖区', 'SXQ', 'sxq', null, null, '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('5d39ceea04cb4d498cbb51d5e1444728', '230602', '萨尔图区', 'SETQ', 'setq', '125.042', '46.6633', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('5d5a6cf1d06140cea8fbf85781ae40a7', '430200', '株洲市', 'ZZS', 'zzs', '113.132', '27.8274', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('5d6086c970584528991664034d531f7d', '610116', '长安区', 'ZAQ', 'zaq', '114.593', '38.0769', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('5d6cf233c3ed44889f5e7eddb847d3a6', '610822', '府谷县', 'FGX', 'fgx', '110.867', '39.1873', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('5d85f86910ee4857b709a5717badd89e', '152528', '镶黄旗', 'XHQ', 'xhq', '114.121', '42.3683', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('5d97b07528d54902ba36efddc528dd0d', '620111', '红古区', 'HGQ', 'hgq', '103.06', '36.3035', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('5db4fa96d3954d5998352caea7aff991', '445122', '饶平县', 'RPX', 'rpx', '116.906', '23.865', '0ece7c50ea6445f9a65150cc9a30f3ce');
INSERT INTO `t_area` VALUES ('5dba42aad779461c98f24e7e96020c09', '440882', '雷州市', 'LZS', 'lzs', '110.013', '20.7966', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('5dc1099290fb4f6aa00877da9aa4a094', '450304', '象山区', 'XSQ', 'xsq', '110.285', '25.2158', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('5dcde77266924ff29b260bfd01c1a88f', '150101', '市辖区', 'SXQ', 'sxq', null, null, '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('5de6b68e13a44d04ba4ce12f1b8352f7', '513323', '丹巴县', 'DBX', 'dbx', '101.752', '30.9671', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('5df3e1bc1b34475ab5703643c9405764', '513229', '马尔康县', 'MEKX', 'mekx', '102.023', '32.0193', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('5e17adc0b9494d9c95a137a83b07c4e8', '440804', '坡头区', 'PTQ', 'ptq', '110.513', '21.2838', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('5e18e4aac61a4cb4914e0ce5ce514e18', '632323', '泽库县', 'ZKX', 'zkx', '101.435', '35.1392', 'd6d7ccae9a0a40f7a2160b9fc4aec623');
INSERT INTO `t_area` VALUES ('5e2cbff609184ad9b76775435f047139', '130702', '桥东区', 'QDQ', 'qdq', '114.511', '38.0634', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('5e4f8d8273fe4a0c97c32e94e2f68ea3', '420116', '黄陂区', 'HPQ', 'hpq', '114.365', '30.9853', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('5e5f0ab02e004598b96a194ac2a8b3b0', '610200', '铜川市', 'TCS', 'tcs', '108.968', '34.9084', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('5e7d74ca7c6f4cf0888135c788ed5376', '211100', '盘锦市', 'PJS', 'pjs', '122.073', '41.1412', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('5e7e8dce50cf4d9e8de67fa4aa3ea18b', '511723', '开江县', 'KJX', 'kjx', '107.891', '31.0516', 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('5e8bf310fed64f4b87936d711062c546', '222426', '安图县', 'ATX', 'atx', '128.438', '42.701', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('5e907a272f69499eb714c3c98bc192fa', '211324', '喀喇沁左翼蒙古族自治县', 'KLQZYMGZZZX', 'klqzymgzzzx', '119.776', '41.1436', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('5ea51ba7d8e349c2a12e1205a8c30dbd', '141028', '吉县', 'JX', 'jx', '110.728', '36.1587', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('5ebba6063a4040dfbf4a95f5f8635367', '330604', '上虞区', 'SYQ', 'syq', '120.889', '29.978', '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('5ece0f13fb844cea8c2b86f82e2e5116', '150525', '奈曼旗', 'NMQ', 'nmq', '120.941', '42.9724', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('5ed3b5b380cd45c5bfa8a2f87ef289c9', '450901', '市辖区', 'SXQ', 'sxq', null, null, '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('5ee782e318ec4874a6a827f9054fbd9a', '371725', '郓城县', 'YCX', 'ycx', '115.895', '35.613', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('5efd2cd2b28548eaaf5772d74ab92f43', '211301', '市辖区', 'SXQ', 'sxq', null, null, 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('5f0de73ecf1b4cbda3e05787d278d892', '460100', '海口市', 'HKS', 'hks', '110.331', '20.0221', 'cee24b69093f47ae8e1822e5c5f9ae76');
INSERT INTO `t_area` VALUES ('5f330233554542608a322c16408377ad', '130524', '柏乡县', 'BXX', 'bxx', '114.707', '37.5174', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('5f3be3af71594a12aeae49b2ae5a89be', '610626', '吴起县', 'WQX', 'wqx', '108.129', '36.9852', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('5f829012104b4e9f8a4221ee32c6b866', '370101', '市辖区', 'SXQ', 'sxq', null, null, '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('5fae98e69f8e49bd869383057f9fea4c', '140600', '朔州市', 'SZS', 'szs', '112.48', '39.3377', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('5fc9218e510b4889b20238d4eb43f650', '330182', '建德市', 'JDS', 'jds', '119.38', '29.4871', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('5fcefac571a94ee3aba79fd454dbc989', '360302', '安源区', 'AYQ', 'ayq', '113.879', '27.6454', '1b16915c9c7b4ce6857b8da456e534b9');
INSERT INTO `t_area` VALUES ('5fcf17501bf64387a03dfdcd32271daa', '513331', '白玉县', 'BYX', 'byx', '99.2919', '31.0526', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('5ffffaca66b04043bdc43e20f3eec54b', '520327', '凤冈县', 'FGX', 'fgx', '107.772', '27.9288', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('600b02847769400bad26d87c6634bfd6', '220723', '乾安县', 'QAX', 'qax', '123.969', '44.9269', 'f208eee79d964759bf91d9cd7ca74233');
INSERT INTO `t_area` VALUES ('601b6ef239914e5a8764e6343d7a0573', '511000', '内江市', 'NJS', 'njs', '105.073', '29.5995', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('601ca6419a3543b2bdba89ad1f2e750a', '410804', '马村区', 'MCQ', 'mcq', '113.367', '35.3042', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('601f1acf6c1d408f8aa451c3ed767717', '321183', '句容市', 'JRS', 'jrs', '119.207', '31.9326', 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('603122a27ad449268b0fd2c9901dfae2', '620525', '张家川回族自治县', 'ZJCHZZZX', 'zjchzzzx', '106.282', '34.996', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('6034390c097645c8b28bb2af16ef1267', '410926', '范县', 'FX', 'fx', '115.538', '35.8014', 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('604bcfddae6f4657bb0bb98b06fa9fb6', '652222', '巴里坤哈萨克自治县', 'BLKHSKZZX', 'blkhskzzx', '92.8099', '44.2736', 'f3b337cc66b24571ad6d9417eab4e9b9');
INSERT INTO `t_area` VALUES ('606a8f3bf9e64f13b601ff5ed0284cbd', '610113', '雁塔区', 'YTQ', 'ytq', '108.939', '34.2214', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('606b435f781047ada0fb49d428b7bda2', '220323', '伊通满族自治县', 'YTMZZZX', 'ytmzzzx', '125.271', '43.3463', 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('60990ae576524b8cb805f9c4f5fe76db', '411527', '淮滨县', 'HBX', 'hbx', '115.325', '32.4466', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('60ac6b04da614f56bc9b45d2031c2935', '371581', '临清市', 'LQS', 'lqs', '115.783', '36.7821', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('60c0b65068b94eeb92bb3ec001d540ba', '620725', '山丹县', 'SDX', 'sdx', '101.232', '38.5302', '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('60c45b72584e4deeaa4bacbc72914342', '510100', '成都市', 'CDS', 'cds', '104.068', '30.6799', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('60dbb2ef675f4a298636224771b4adad', '441826', '连南瑶族自治县', 'LNYZZZX', 'lnyzzzx', '112.264', '24.5742', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('60e3b04b54954aa38b92a76bdf92ba32', '652723', '温泉县', 'WQX', 'wqx', '80.9522', '44.9688', 'decc0233cca8458db74346e0695d320e');
INSERT INTO `t_area` VALUES ('6115009afb5e42388e0e668d7bddeaa0', '320311', '泉山区', 'QSQ', 'qsq', '117.176', '34.2419', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('6116ccb5d8db4a659de22af1101fed79', '610302', '渭滨区', 'WBQ', 'wbq', '107.108', '34.311', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('611bbedacbe04f668b20db1a0beaf99b', '330500', '湖州市', 'HZS', 'hzs', '120.137', '30.8779', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('61208bc92b834f52a51db7c4d4b50e13', '621026', '宁县', 'NX', 'nx', '108.114', '35.5714', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('6123c7ab325e419390f81f17abf62bbd', '321203', '高港区', 'GGQ', 'ggq', '119.926', '32.3301', 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('613481d7eb8840d6abe495cd7b0f0d2f', '230307', '麻山区', 'MSQ', 'msq', '130.567', '45.2058', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('61653826f39f48988ee1a2ac926cf288', '350322', '仙游县', 'XYX', 'xyx', '118.705', '25.4683', '9be15a0d529a4e5f9fef94e6295427ea');
INSERT INTO `t_area` VALUES ('616821595bae428188d9ee92904e3161', '451281', '宜州市', 'YZS', 'yzs', '108.547', '24.4812', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('618184ba8ce148a294180708fe055f9f', '610428', '长武县', 'ZWX', 'zwx', '107.835', '35.1706', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('61878b24dd49442b888a12e58ac84809', '440785', '恩平市', 'EPS', 'eps', '112.286', '22.241', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('6193bffce27c4b638ac09292563b327b', '230124', '方正县', 'FZX', 'fzx', '128.949', '45.8198', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('6195717fb23b46238e3bee2415d87a79', '131126', '故城县', 'GCX', 'gcx', '115.978', '37.357', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('619676ca848646f997108565876d41c4', '610929', '白河县', 'BHX', 'bhx', '109.918', '32.7299', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('61a686d6ae684f25a4b7c0d13f515308', '511903', '恩阳区', 'EYQ', 'eyq', null, null, 'c8dae369045f416782e3bc86fd3404ed');
INSERT INTO `t_area` VALUES ('61a73375dca943c5856f4a948b37c513', '341881', '宁国市', 'NGS', 'ngs', '118.997', '30.5029', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('61af2f8d3aed4af093c1c8542b59cb40', '460202', '海棠区', 'HTQ', 'htq', '116.584', '39.6424', 'cf3d29a5792a41f48a9ce52d2dda943b');
INSERT INTO `t_area` VALUES ('61b13a2b8244445aa24811ee5a0a4c5a', '422823', '巴东县', 'BDX', 'bdx', '110.301', '30.8275', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('61b36b3a742b4bf08fabe0958fd25422', '230101', '市辖区', 'SXQ', 'sxq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('61ca73cf2cee4119b30088b4798eef0c', '230203', '建华区', 'JHQ', 'jhq', '124.021', '47.4049', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('621091e1dc6c47748293e774c60cbe30', '210904', '太平区', 'TPQ', 'tpq', '121.738', '42.0095', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('62141fe60bf648779975a375c8679e21', '530600', '昭通市', 'ZTS', 'zts', '103.725', '27.3406', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('621cefe904a84116a3f3613450521f0f', '350823', '上杭县', 'SHX', 'shx', '116.569', '25.1265', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('624068b351cb467da87a2f02b4332654', '653001', '阿图什市', 'ATSS', 'atss', '76.8672', '40.1312', '8cf7470b137a485abbb0b67123f45b60');
INSERT INTO `t_area` VALUES ('62440215ab484572bebe31863e356c00', '532503', '蒙自市', 'MZS', 'mzs', '103.5', '23.3466', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('626c206049e2474ba739f1f59b82dcb7', '230622', '肇源县', 'ZYX', 'zyx', '124.769', '45.6472', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('6294ac6799d0477db316401267ddb31e', '469001', '五指山市', 'WZSS', 'wzss', '109.518', '18.8313', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('6299fbb210ce4d98adc3f115798d5f08', '370300', '淄博市', 'ZBS', 'zbs', '118.059', '36.8047', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('629c703394f9485f9c3dbf63efd60d49', '511801', '市辖区', 'SXQ', 'sxq', null, null, 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('62b22daf80c94967bf883e2ff9065693', '150922', '化德县', 'HDX', 'hdx', '114.166', '41.9791', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('62da853fedb7498d949e4c46477c2759', '152527', '太仆寺旗', 'TPSQ', 'tpsq', '115.305', '41.9062', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('62daf966c7a344b6872e45ca3b3c9644', '632800', '海西蒙古族藏族自治州', 'HXMGZZZZZZ', 'hxmgzzzzzz', '97.3426', '37.3738', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('62e414036ae247c8adbb3dc8bbd0bea6', '320582', '张家港市', 'ZJGS', 'zjgs', '120.627', '31.9078', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('62eb3555c8b04e4590b0c33ece7069b5', '520424', '关岭布依族苗族自治县', 'GLBYZMZZZX', 'glbyzmzzzx', '105.569', '25.8622', '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('63076082a48d46a6bcfd622cd63f0044', '451381', '合山市', 'HSS', 'hss', '108.943', '23.8028', '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('632b6c8373ed49df970213e06d2d76aa', '140122', '阳曲县', 'YQX', 'yqx', '112.673', '38.1582', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('6351799871194ae3ba6252646c23a65d', '513332', '石渠县', 'SQX', 'sqx', '98.205', '33.1876', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('63523fdf54084f45bdd8b7e22fd26c9c', '650121', '乌鲁木齐县', 'WLMQX', 'wlmqx', '87.3602', '43.4191', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('6360bf23ae0e4b60ad01f103fd461739', '230902', '新兴区', 'XXQ', 'xxq', '130.893', '45.8135', 'b50634da14764d0cae033c7cac9db0a6');
INSERT INTO `t_area` VALUES ('636bddb70fad4994b78798696eacea09', '110112', '通州区', 'TZQ', 'tzq', '116.74', '39.8098', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('636e9ac8a9de4af289798b85e05a2e03', '131082', '三河市', 'SHS', 'shs', '117.021', '39.9674', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('6372de94e8664b87a532fd71dc7b0ad3', '370827', '鱼台县', 'YTX', 'ytx', '116.578', '35.0199', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('6373aa845d1f4ef7982ca87c9acf92f7', '421024', '江陵县', 'JLX', 'jlx', '112.474', '30.1015', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('6379d82b272345f6b4e1b87ed07ddde4', '520381', '赤水市', 'CSS', 'css', '105.921', '28.4933', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('63920331eab24899a98f338148975275', '620721', '肃南裕固族自治县', 'SNYGZZZX', 'snygzzzx', '99.3268', '38.9206', '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('63a658b8c2f844e086d11754ba36411a', '210800', '营口市', 'YKS', 'yks', '122.233', '40.6687', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('63a73567865a47a89cb19e289034cd91', '511124', '井研县', 'JYX', 'jyx', '104.055', '29.6445', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('63aa8710a9fe4310b7cc2caf84160a4b', '513322', '泸定县', 'LDX', 'ldx', '102.12', '29.7477', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('63c334fa046042489712fe8cf517452c', '220201', '市辖区', 'SXQ', 'sxq', null, null, 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('63d823c5c51c48faba6edd7ffa878002', '520601', '市辖区', 'SXQ', 'sxq', null, null, '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('63dbff2fa9164361a380d4aa487f59ce', '150702', '海拉尔区', 'HLEQ', 'hleq', '120.043', '49.2792', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('63dce289cba148d59eccdf6d7bdc23bb', '360321', '莲花县', 'LHX', 'lhx', '113.96', '27.2234', '1b16915c9c7b4ce6857b8da456e534b9');
INSERT INTO `t_area` VALUES ('63df9920981046819f984eb42db1b930', '650205', '乌尔禾区', 'WEHQ', 'wehq', '85.5111', '46.0066', '0b8769d2deca47f3ba9e14693af656cc');
INSERT INTO `t_area` VALUES ('63e7a04af2ba44838810dcc35b12c1c1', '370481', '滕州市', 'TZS', 'tzs', '117.148', '35.0658', '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('63ef0da7271f4afaa7f9232e79be4d1c', '410204', '鼓楼区', 'GLQ', 'glq', '118.765', '32.0686', '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('63effcd7e3be46a89e690e85fb8ba907', '230702', '伊春区', 'YCQ', 'ycq', '128.901', '47.742', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('641da397d1cf46328b7830c89c6b17ad', '350505', '泉港区', 'QGQ', 'qgq', '118.819', '25.1735', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('64255de10d914560a98e056ca6c99708', '513431', '昭觉县', 'ZJX', 'zjx', '102.833', '28.0137', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('643d2cbdc7364052a45894df866ca925', '130635', '蠡县', 'LX', 'lx', '115.669', '38.5282', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('6443b3c37f1f451c983b0dbf25322f83', '320300', '徐州市', 'XZS', 'xzs', '117.188', '34.2716', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('645556e1614f4e789db20f851c863bd3', '440282', '南雄市', 'NXS', 'nxs', '114.387', '25.1899', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('6467f1c9170148b7a4762094fccadd9d', '370401', '市辖区', 'SXQ', 'sxq', null, null, '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('647caf7208e64eb3bd5590e083dcb366', '230403', '工农区', 'GNQ', 'gnq', '130.277', '47.3278', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('648e4ccc9468421f93d6b40e60a502d0', '230127', '木兰县', 'MLX', 'mlx', '127.93', '46.2482', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('64b86a3a1ec04f29aa9a595530d9a869', '141081', '侯马市', 'HMS', 'hms', '111.372', '35.6218', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('64b8799c0988452d9aa6a891a293c3ef', '430424', '衡东县', 'HDX', 'hdx', '113.029', '27.0851', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('64bfc52f8be24a02940b5414e15859fd', '130530', '新河县', 'XHX', 'xhx', '115.257', '37.4994', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('64c7d29b89c74be8b39fbc28d3c4e5d0', '411282', '灵宝市', 'LBS', 'lbs', '110.78', '34.4371', '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('650a6766bf3a44fdacc4b7013d7d8627', '520523', '金沙县', 'JSX', 'jsx', '106.275', '27.4486', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('654c877cf06843249d4bb03243562592', '440101', '市辖区', 'SXQ', 'sxq', null, null, 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('655087d9b6ed4924940dd401328ea70a', '130921', '沧县', 'CX', 'cx', '116.863', '38.3021', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('6557a69d669d4aa69610090d72a2dcea', '542600', '林芝地区', 'LZDQ', 'lzdq', '94.35', '29.6669', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('655fb7747c8e435fa10638cbb4edc70b', '520382', '仁怀市', 'RHS', 'rhs', '106.348', '27.8392', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('6569bf1c354b47ed847622e3ba9ecd73', '420322', '郧西县', 'YXX', 'yxx', '110.15', '33.0484', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('6587050e7e93416597e1241af4fc5353', '440501', '市辖区', 'SXQ', 'sxq', null, null, '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('6595defac4da42ba91cb9a8fcf275811', '140311', '郊区', 'JQ', 'jq', null, null, '24208d947e4e4ccaaaf04a187d57ccf4');
INSERT INTO `t_area` VALUES ('6599b2f661724bebb69aef012a4040e9', '510122', '双流县', 'SLX', 'slx', '104.041', '30.4595', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('65c11599211648509ddad87efa17d372', '150124', '清水河县', 'QSHX', 'qshx', '111.706', '39.8891', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('65c17db523ca4f9bbb097d5a7bb8fff3', '450902', '玉州区', 'YZQ', 'yzq', '110.065', '22.5572', '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('65ddec086be04466a987b883501911ab', '350421', '明溪县', 'MXX', 'mxx', '117.219', '26.4185', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('6618fcc5156a4cc6b7e589346ebfee72', '340603', '相山区', 'XSQ', 'xsq', '116.729', '33.9883', '95697758c29f4043b537696892db2960');
INSERT INTO `t_area` VALUES ('662667aa23d24d3cb3985e31a9d69d76', '500241', '秀山土家族苗族自治县', 'XSTJZMZZZX', 'xstjzmzzzx', '109.025', '28.4983', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('66355a74f60347289b1bc6570d8526eb', '210102', '和平区', 'HPQ', 'hpq', '117.203', '39.1248', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('664b27ce0e194270a096fc2ea49f7c38', '440783', '开平市', 'KPS', 'kps', '112.548', '22.3742', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('664cc27a1ab44eae8c8d461eee9b4222', '130321', '青龙满族自治县', 'QLMZZZX', 'qlmzzzx', '119.138', '40.3536', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('6657976f9a604e18a0a3dcf8aa871903', '610901', '市辖区', 'SXQ', 'sxq', null, null, '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('667468ba71f34477a9094ed7593cc893', '513428', '普格县', 'PGX', 'pgx', '102.568', '27.5483', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('6686bb7403e9415fbe4dc43456e8d62b', '370703', '寒亭区', 'HTQ', 'htq', '119.179', '36.9084', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('6688c6cba17c4677934501c5140a3615', '130732', '赤城县', 'CCX', 'ccx', '115.892', '40.956', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('66a334a96ccf46cbb994d79da1d1fd12', '621228', '两当县', 'LDX', 'ldx', '106.404', '33.9114', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('66ab95d0edee4fc1a72db37d82960c98', '511681', '华蓥市', 'HYS', 'hys', '106.759', '30.3218', 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('66afde3243034770a2a016a24ee05537', '511524', '长宁县', 'ZNX', 'znx', '104.931', '28.5154', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('66cc92e32a1f43b190ce5e57dc3192c9', '510422', '盐边县', 'YBX', 'ybx', '101.586', '26.9401', '0a8760be3d9048039147c8bc7191826d');
INSERT INTO `t_area` VALUES ('66e763ed828d46e4bd914f25e099c9c0', '450721', '灵山县', 'LSX', 'lsx', '109.148', '22.3157', '7ed79c566cfb42e39424806a872e2f61');
INSERT INTO `t_area` VALUES ('66f5ec3d688a49eba09b830473931e9d', '360323', '芦溪县', 'LXX', 'lxx', '114.07', '27.578', '1b16915c9c7b4ce6857b8da456e534b9');
INSERT INTO `t_area` VALUES ('66f68bb66fb846d3811795bc98b19bfd', '620900', '酒泉市', 'JQS', 'jqs', '98.5084', '39.7415', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('670dea7c114a4e2a81b34147216ad0be', '230111', '呼兰区', 'HLQ', 'hlq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('6727750dd2ef43d3b6a27f2181e686c3', '370700', '潍坊市', 'WFS', 'wfs', '119.143', '36.7161', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('6763ea43d6f64adda29e13e4f659231b', '450821', '平南县', 'PNX', 'pnx', '110.413', '23.5387', 'b93e28fad1454605a81753c740e0b00d');
INSERT INTO `t_area` VALUES ('679b6c37e582412c8e641f5e935fe6a0', '422826', '咸丰县', 'XFX', 'xfx', '109.004', '29.7363', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('679b9ad9c79b4ab19175fc4aea4b19ee', '341201', '市辖区', 'SXQ', 'sxq', null, null, 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('67abcb83653f44d2a68555453912bfe5', '533325', '兰坪白族普米族自治县', 'LPBZPMZZZX', 'lpbzpmzzzx', '99.2639', '26.6336', '18f03ffc2e854cfdbc84791d6483d58c');
INSERT INTO `t_area` VALUES ('67c9563fbfea477197a39b26f769fa60', '540102', '城关区', 'CGQ', 'cgq', '91.1687', '29.6664', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('67dbca7feffc4b85a02ca3d2599cad31', '320321', '丰县', 'FX', 'fx', '116.616', '34.6958', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('67ff4ef5d27c48978b697503895354a4', '513328', '甘孜县', 'GZX', 'gzx', '99.7627', '32.0293', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('681bcf813dd9435bac3fe2b2683fcbea', '620901', '市辖区', 'SXQ', 'sxq', null, null, '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('68435b7006ac48d59f8408f1934b9df4', '321112', '丹徒区', 'DTQ', 'dtq', '119.499', '32.114', 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('6869af45bb19412b99de4741b9b51cc3', '610522', '潼关县', 'TGX', 'tgx', '110.296', '34.5071', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('686e291edb5d4bd4af89175dc2326fb4', '542232', '错那县', 'CNX', 'cnx', '92.9008', '27.6728', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('6893be62b3544c7b98b7572706cf6980', '150624', '鄂托克旗', 'ETKQ', 'etkq', '107.752', '39.2863', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('689737902e3145fd8dbe0d96357737d5', '320981', '东台市', 'DTS', 'dts', '120.564', '32.7914', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('68c93e7297f34b2e8c11ef94d920e197', '410927', '台前县', 'TQX', 'tqx', '115.886', '35.9664', 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('68f6e07e495649bc88951163315182ec', '331121', '青田县', 'QTX', 'qtx', '120.147', '28.2084', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('69363c588f9c4bb4934e1e84874083ea', '610622', '延川县', 'YCX', 'ycx', '110.084', '36.8824', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('694526860d274228903037a2ebad47dc', '450324', '全州县', 'QZX', 'qzx', '111.026', '25.9365', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('69525b2a8de14cc591171c90ee437da6', '350122', '连江县', 'LJX', 'ljx', '119.568', '26.3016', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('6969e530d6a445e9a6355ab3b8cce90e', '410821', '修武县', 'XWX', 'xwx', '113.364', '35.3097', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('696bbeaf95ac4d46a5415179389773da', '150727', '新巴尔虎右旗', 'XBEHYQ', 'xbehyq', '116.802', '48.645', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('69a0152ab57147b08ee7a17aac484ada', '652922', '温宿县', 'WSX', 'wsx', '80.4619', '41.5821', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('69a2ab7650c94b129ec7f688658caebe', '152526', '西乌珠穆沁旗', 'XWZMQQ', 'xwzmqq', '117.817', '44.7159', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('69aa1735c18341bfacfec4f62262cc00', '360825', '永丰县', 'YFX', 'yfx', '115.593', '27.0975', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('69be375e0d9642c1a229a06d174a5a85', '410724', '获嘉县', 'HJX', 'hjx', '113.652', '35.2035', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('69c4bacff85a4e9990a572e0119fb847', '140502', '城区', 'CQ', 'cq', null, null, 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('69e138bcc94d430baab2f6e316ab3d6b', '469000', '省直辖县级行政区划', 'SZXXJXZQH', 'szxxjxzqh', null, null, 'cee24b69093f47ae8e1822e5c5f9ae76');
INSERT INTO `t_area` VALUES ('69f8fe0dede5458eaeff05a444f029dc', '320585', '太仓市', 'TCS', 'tcs', '121.159', '31.5719', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('6a0d5e5bd3a44746ac7a476af239bb25', '411522', '光山县', 'GSX', 'gsx', '114.843', '31.9414', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('6a15331d72df42338b9358ef08fe5cef', '520400', '安顺市', 'ASS', 'ass', '105.928', '26.2286', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('6a198d2ab4624b3eb4e249647a7cbbe6', '210411', '顺城区', 'SCQ', 'scq', '123.902', '41.916', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('6a1af0a731c84da7bfcf7785fc1f33a9', '360731', '于都县', 'YDX', 'ydx', '115.509', '25.9368', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('6a2bb949c0a447819927fcac683283fd', '220284', '磐石市', 'PSS', 'pss', '126.175', '43.0575', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('6a455e7cdc6a4fa2af1acbdc947cdb3d', '140123', '娄烦县', 'LFX', 'lfx', '111.798', '38.0346', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('6a46358185a84494abf57d8ec78762b2', '350923', '屏南县', 'PNX', 'pnx', '118.989', '26.9216', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('6a4aad437afd452dbf0c067b031ba76a', '361127', '余干县', 'YGX', 'ygx', '116.621', '28.6828', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('6a4d03ae23f14647a5abf96d4b96358e', '500102', '涪陵区', 'FLQ', 'flq', '107.341', '29.6647', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('6a4eda3f9d6c49c1b80d77bfd010f509', '421003', '荆州区', 'JZQ', 'jzq', '112.1', '30.3961', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('6a7a54682a1b45c7892fbe99a2e44c49', '440781', '台山市', 'TSS', 'tss', '112.716', '22.0346', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('6a83dc8a871c4d639428003a4ee9601c', '211421', '绥中县', 'SZX', 'szx', '120.026', '40.3051', 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('6aaa9fb11ac240ac87ca034c1c18256b', '140726', '太谷县', 'TGX', 'tgx', '112.736', '37.4077', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('6ae6f123f79a4a8a813e0044e5b89ad4', '231202', '北林区', 'BLQ', 'blq', '126.958', '46.7475', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('6ae8fb09b90f4f9e836f3cd2ca64c117', '130535', '临西县', 'LXX', 'lxx', '115.528', '36.858', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('6b1af79add3b4d03b776736c25dc4433', '411729', '新蔡县', 'XCX', 'xcx', '114.949', '32.7836', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('6b447a5376a54f088671d5f0a057f986', '450500', '北海市', 'BHS', 'bhs', '109.123', '21.4727', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('6b74d247d138425e80e0680facba0bbc', '230321', '鸡东县', 'JDX', 'jdx', '131.226', '45.2732', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('6b8989fc955b4f6d8d7ad918d198d19b', '370883', '邹城市', 'ZCS', 'zcs', '117.09', '35.354', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('6b910370fef84fb59737c1b55e2b814e', '370200', '青岛市', 'QDS', 'qds', '120.384', '36.1052', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('6bada6c01db54e5b95df15dfebf3a1bc', '371424', '临邑县', 'LYX', 'lyx', '116.9', '37.2359', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('6bb8f28674ae47f3ad995b3d5d19da51', '340301', '市辖区', 'SXQ', 'sxq', null, null, '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('6bbd1d65ee3b41729de3b34b398b4514', '430528', '新宁县', 'XNX', 'xnx', '110.925', '26.5486', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('6bbdcec44d96461aae185d9537903adb', '410327', '宜阳县', 'YYX', 'yyx', '112.04', '34.486', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('6bcee98b13474dab805b7c62c5142c4b', '230301', '市辖区', 'SXQ', 'sxq', null, null, 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('6bdaec0b03e84f638df84e624291810e', '430527', '绥宁县', 'SNX', 'snx', '110.206', '26.7144', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('6be58d2292b642459c05be13271d2099', '520201', '钟山区', 'ZSQ', 'zsq', '104.763', '26.7312', 'd0c498b67c0e4e99b0f4f21277e9cf73');
INSERT INTO `t_area` VALUES ('6c1e8eef00a64af0963b43c021a7fde8', '540228', '白朗县', 'BLX', 'blx', '89.1044', '28.82', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('6c27c2a1157f4d788f95484b3f5d87c3', '450303', '叠彩区', 'DCQ', 'dcq', '110.336', '25.3189', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('6c2a060e1bd8469db526102ec9ed3845', '360201', '市辖区', 'SXQ', 'sxq', null, null, '0fd8cbc6a4b84e28a88a01d66ec44698');
INSERT INTO `t_area` VALUES ('6c3d069c30dc403e8936d31faa975291', '522726', '独山县', 'DSX', 'dsx', '107.564', '25.6368', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('6c9711ca3a2c4bff83e9c7327091f0fb', '350213', '翔安区', 'XAQ', 'xaq', '118.281', '24.6755', '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('6c97453adf2348938a2d70f9ed12e471', '511802', '雨城区', 'YCQ', 'ycq', '103.038', '29.9285', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('6c9a49aa65fc4edb8c688d447ef36c0c', '150581', '霍林郭勒市', 'HLGLS', 'hlgls', '119.58', '45.5281', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('6cb733ccb9df4fdb8a603fbe258427c8', '654301', '阿勒泰市', 'ALTS', 'alts', '87.9262', '47.8901', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('6cc757f4428c4ab9a7f5783a328ea2af', '321300', '宿迁市', 'SQS', 'sqs', '118.297', '33.952', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('6ce353c14eef4511be9f85a6bb00efc8', '350105', '马尾区', 'MWQ', 'mwq', '119.511', '26.0826', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('6ce503bee83e4819b75f1c46a25ed3c6', '410500', '安阳市', 'AYS', 'ays', '114.352', '36.1103', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('6d19fee116b14e45ac686949255f775c', '530927', '沧源佤族自治县', 'CYWZZZX', 'cywzzzx', '99.2705', '23.2746', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('6d1f603f01454824bde7ab367d9842bf', '530900', '临沧市', 'LCS', 'lcs', '100.093', '23.8878', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('6d4bf5fc6e3b433cb723f867a0ccc996', '320621', '海安县', 'HAX', 'hax', '120.474', '32.554', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('6d5ad4e7f31d46a2a051ddbaf3dfbea9', '341000', '黄山市', 'HSS', 'hss', '118.294', '29.7344', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('6d64b1b3d9744a17803b54634353305c', '451023', '平果县', 'PGX', 'pgx', '107.578', '23.541', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('6d673392111f4cbbb020ec2745f83e72', '360723', '大余县', 'DYX', 'dyx', '114.366', '25.4485', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('6d693ef1150e4abc878ecf30ffe7452a', '610802', '榆阳区', 'YYQ', 'yyq', '109.643', '38.3864', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('6d7bc4bfc6ba43f490f0f615803f205d', '500235', '云阳县', 'YYX', 'yyx', '108.863', '31.0424', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('6da235cd0a47493091c6e479f8cadff7', '210401', '市辖区', 'SXQ', 'sxq', null, null, 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('6dc0017dd24b4f8a9eddc1778d16848e', '451301', '市辖区', 'SXQ', 'sxq', null, null, '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('6dc320e2b5f6403d9dbbabdf97eed46d', '520103', '云岩区', 'YYQ', 'yyq', '106.718', '26.6035', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('6dc5fa73cd934ad6bce4be361b246699', '371721', '曹县', 'CX', 'cx', '115.554', '34.828', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('6e01d8ac311447958d300725510f33be', '542425', '安多县', 'ADX', 'adx', '90.5693', '33.3217', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('6e103ce763e247d7a62de9e25a44364c', '620602', '凉州区', 'LZQ', 'lzq', '102.759', '37.9163', 'd1effea105c14bbbbb4c8fe5fcf24e51');
INSERT INTO `t_area` VALUES ('6e13280aebd845d785234a3abc8a6b4a', '330200', '宁波市', 'NBS', 'nbs', '121.579', '29.8853', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('6e1d5de85969488383492c59cdb848c7', '140981', '原平市', 'YPS', 'yps', '112.682', '38.8389', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('6e22e802e216448d8b748a9b350126b5', '431125', '江永县', 'JYX', 'jyx', '111.254', '25.2', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('6e5a4b8dedc741138c3d84f4f4095efe', '330204', '江东区', 'JDQ', 'jdq', '121.598', '29.8754', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('6e5ddd0caf434ad9846573e1552db476', '510812', '朝天区', 'CTQ', 'ctq', '106.022', '32.7084', '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('6e61778470d74cc2bc2b88ce7d5092e0', '513226', '金川县', 'JCX', 'jcx', '101.805', '31.5276', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('6e8f8f9f1fda4c6695c1c3fe30265579', '500119', '南川区', 'NCQ', 'ncq', '107.178', '29.1417', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('6e9e072fb2cb4423b840ad2938541d47', '141002', '尧都区', 'YDQ', 'ydq', '111.475', '36.1259', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('6eb59e50e4124bf99af6333786513268', '130426', '涉县', 'SX', 'sx', '113.743', '36.5981', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('6eb9d4de2f7942f1ae3b49e7486f2874', '320505', '虎丘区', 'HQQ', 'hqq', '120.478', '31.3519', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('6ebdcaadba004070ba8645f53ac88e38', '210522', '桓仁满族自治县', 'HRMZZZX', 'hrmzzzx', '125.29', '41.2618', '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('6ec1e76b364e4dddbfb5848dd968b5cf', '430724', '临澧县', 'LLX', 'llx', '111.625', '29.4863', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('6ec83c1b383c44b180870da6b1ccc14e', '640202', '大武口区', 'DWKQ', 'dwkq', '106.387', '38.9675', '56638a23c20c416ca11515bedbbe61ce');
INSERT INTO `t_area` VALUES ('6ed1aa5f66724c03ac262418ccc13ac7', '140200', '大同市', 'DTS', 'dts', '113.291', '40.1137', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('6ed91a6d95564c42a629027edd9afe13', '420104', '硚口区', 'QKQ', 'qkq', null, null, '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('6eda359ee2a44c93afdf6938c2d8c7cc', '611022', '丹凤县', 'DFX', 'dfx', '110.444', '33.6846', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('6ede6a0bb9174ddb8f439a6eb0401555', '361123', '玉山县', 'YSX', 'ysx', '118.169', '28.7593', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('6ee11ffb6344401b9c1e1c2fd97eb299', '350701', '市辖区', 'SXQ', 'sxq', null, null, 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('6ef7b2127870446db08f501db44ce335', '350622', '云霄县', 'YXX', 'yxx', '117.338', '23.9849', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('6efc232288224342bab7d412bb1d24a5', '421321', '随县', 'SX', 'sx', null, null, '4fa78f339565446b8ed4c663c52c2df8');
INSERT INTO `t_area` VALUES ('6f067af4dacd4e9d9086842da090ce05', '610630', '宜川县', 'YCX', 'ycx', '110.191', '36.0711', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('6f0e1a022453482cbe1dcee1266495f1', '410300', '洛阳市', 'LYS', 'lys', '112.448', '34.6574', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('6f3d561029114c3784e9a8feb4a45857', '511424', '丹棱县', 'DLX', 'dlx', '103.435', '30.0148', '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('6f45939299ce4518a4ccfecc85b09037', '620302', '金川区', 'JCQ', 'jcq', '102.329', '38.4922', 'fac48b142d78414782f7bcbffd85b3ad');
INSERT INTO `t_area` VALUES ('6f465c6af3314b12940dfd3a998d2040', '410825', '温县', 'WX', 'wx', '113.055', '34.9503', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('6f53f65d0b0547c6a40d671257ec0965', '530623', '盐津县', 'YJX', 'yjx', '104.231', '28.1307', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('6f5510b815464723bb8779bcdf645ffe', '130927', '南皮县', 'NPX', 'npx', '116.866', '38.0232', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('6f5be94029d846e099158d6cdb47999d', '130529', '巨鹿县', 'JLX', 'jlx', '115.059', '37.2787', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('6f62338af7054d739c4ee1b00c6c9ec9', '430524', '隆回县', 'LHX', 'lhx', '110.973', '27.3518', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('6f72ddcd82ee4e84a3559cb6c51b87e1', '220113', '九台区', 'JTQ', 'jtq', '125.985', '44.2098', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('6f73c13506b64c30ae9f6ccecafec61b', '530402', '红塔区', 'HTQ', 'htq', '102.5', '24.3699', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('6faa2667c0364aa188434ddbc278776a', '430181', '浏阳市', 'LYS', 'lys', '113.722', '28.2345', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('6fac893225f546a1a5f37cdfdf9caeaa', '654200', '塔城地区', 'TCDQ', 'tcdq', '82.9749', '46.7587', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('6fc8d6073c60440c8b1dc30ef4e80d4e', '620802', '崆峒区', 'KTQ', 'ktq', '106.749', '35.5158', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('6fe35fd1b72447a6b258ceb504cb649d', '220602', '浑江区', 'HJQ', 'hjq', '126.397', '41.7916', 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('6ffb85c4fdc8462ca0baef6a74e5f55a', '433127', '永顺县', 'YSX', 'ysx', '109.976', '29.0159', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('6ffb8973dd424f3e94a4aed9871d8f63', '370911', '岱岳区', 'DYQ', 'dyq', '117.19', '36.1481', 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('6ffbf27f387d4c8ab4791526b10d6636', '420302', '茅箭区', 'MJQ', 'mjq', '110.786', '32.6056', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('700180e0f3384111ac9b50106fab3ac5', '500230', '丰都县', 'FDX', 'fdx', '107.838', '29.8906', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('700b44666f3c46088ca1d3f647d63e28', '150929', '四子王旗', 'SZWQ', 'szwq', '111.589', '42.3071', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('700bcc8850174b75ad70b3ebb945e0dd', '140902', '忻府区', 'XFQ', 'xfq', '112.605', '38.4378', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('7029286f607946f49b28474cf94321b4', '210100', '沈阳市', 'SYS', 'sys', '123.433', '41.8086', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('702c1379f6c24ae4bac753e1cc271fc1', '330602', '越城区', 'YCQ', 'ycq', '120.618', '30.0158', '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('704cf040b4bf4b4ca9717ce91ac3a4cd', '130105', '新华区', 'XHQ', 'xhq', '114.453', '38.1172', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('705e02c8e78e4a8497c94d9112cc3799', '370800', '济宁市', 'JNS', 'jns', '116.601', '35.4021', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('7067f4131f7044e5add5bf4d6063622e', '411500', '信阳市', 'XYS', 'xys', '114.085', '32.1286', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('707e963af73a47ab80c0b98d3a8f41cd', '230705', '西林区', 'XLQ', 'xlq', '129.227', '47.501', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('708e8da8fef44b39ab1261ca763d3ae0', '430111', '雨花区', 'YHQ', 'yhq', '113.02', '28.1464', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('70c4a4dce0a840849a9a142b60c6c2f2', '610722', '城固县', 'CGX', 'cgx', '107.261', '33.2236', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('70c77663324e4eb2b949b0c7f8fffa27', '430601', '市辖区', 'SXQ', 'sxq', null, null, '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('70d335cfef704a3885ad0148611546b3', '532932', '鹤庆县', 'HQX', 'hqx', '100.277', '26.3355', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('70e766e51ee646819785e486026d52f2', '610726', '宁强县', 'NQX', 'nqx', '106.141', '32.9142', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('70e86f38725b484f8221fe8875444c84', '130603', '北市区', 'BSQ', 'bsq', '115.533', '38.8975', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('71030d92ca28469392da05d01c2b79be', '330501', '市辖区', 'SXQ', 'sxq', null, null, '611bbedacbe04f668b20db1a0beaf99b');
INSERT INTO `t_area` VALUES ('711cb67fd88b4185b4f20116fa527707', '500104', '大渡口区', 'DDKQ', 'ddkq', '106.465', '29.4241', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('7134fac4595647058b5610918a54e48b', '620522', '秦安县', 'QAX', 'qax', '105.698', '34.9535', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('71395c0ccf984e44a1a7c1cdd4731c8c', '533400', '迪庆藏族自治州', 'DQZZZZZ', 'dqzzzzz', '99.7137', '27.831', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('714e1adbcd4a46ff8c25eb8dfc16741e', '450323', '灵川县', 'LCX', 'lcx', '110.418', '25.381', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('71512f944a344e878f8287ddfbf8335a', '520122', '息烽县', 'XFX', 'xfx', '106.682', '27.1508', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('71880275804b4af18fda1109411691f8', '150923', '商都县', 'SDX', 'sdx', '113.622', '41.7265', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('719926feffde461b8e994a978c50dbae', '150981', '丰镇市', 'FZS', 'fzs', '113.309', '40.5583', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('71a035f3b38b4554b63b1da0cfbdf690', '632200', '海北藏族自治州', 'HBZZZZZ', 'hbzzzzz', '100.88', '36.9607', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('71b66239691c4250a43dec0cbf74028f', '370801', '市辖区', 'SXQ', 'sxq', null, null, '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('71b9e0e380b94f23afea34ebd45643a8', '211021', '辽阳县', 'LYX', 'lyx', '123.22', '41.0773', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('71e1d26211cb4e4d882c053813ab3cd1', '430124', '宁乡县', 'NXX', 'nxx', '112.36', '28.1312', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('71fdfb0add9d47bea45a90071bfda6d6', '360501', '市辖区', 'SXQ', 'sxq', null, null, '751ad81aa4de45f1a8763a43ddae093d');
INSERT INTO `t_area` VALUES ('7200aaccd83d41af8dbb05b5b4b02a18', '331126', '庆元县', 'QYX', 'qyx', '119.158', '27.628', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('722696372ae04fba9cea6aec1fe007bf', '430682', '临湘市', 'LXS', 'lxs', '113.52', '29.4961', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('722d8f5b39e143e9a8a0a4601b45b397', '131081', '霸州市', 'BZS', 'bzs', '116.574', '39.1093', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('7236e16f1bed4e11969c386767c9860a', '360322', '上栗县', 'SLX', 'slx', '113.868', '27.8323', '1b16915c9c7b4ce6857b8da456e534b9');
INSERT INTO `t_area` VALUES ('7237a3c0565147c4984b871b4de5b0d6', '340523', '和县', 'HX', 'hx', '118.294', '31.7165', 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('724408f835a849459f6e03a9477a640e', '532300', '楚雄彝族自治州', 'CXYZZZZ', 'cxyzzzz', '101.529', '25.0664', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('725123495f7d4c1facee994220f3b1b3', '130100', '石家庄市', 'SJZS', 'sjzs', '114.522', '38.049', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('7264f796c60b45b6bd56712c319e3970', '210711', '太和区', 'THQ', 'thq', '121.119', '41.1368', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('7279d50a2c7d4238a19c45bdd282ee67', '654226', '和布克赛尔蒙古自治县', 'HBKSEMGZZX', 'hbksemgzzx', '86.2174', '46.2567', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('729c818d9261406da327956045d300d2', '140823', '闻喜县', 'WXX', 'wxx', '111.319', '35.3738', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('72a0b767874146dda19fbfd2b9059e6d', '230901', '市辖区', 'SXQ', 'sxq', null, null, 'b50634da14764d0cae033c7cac9db0a6');
INSERT INTO `t_area` VALUES ('72a693e32b4b4de7bda99108e69e8307', '340322', '五河县', 'WHX', 'whx', '117.764', '33.1385', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('72ac90e5c9e943d59ad531efd6241500', '210624', '宽甸满族自治县', 'KDMZZZX', 'kdmzzzx', '124.934', '40.7661', 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('72bb66b6079e4f8c8ea294ad1fb94849', '130900', '沧州市', 'CZS', 'czs', '116.864', '38.2976', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('72c5eeba4fbc4a02a744b59d8338eb06', '430701', '市辖区', 'SXQ', 'sxq', null, null, '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('72d69b4147f346bd8c1e8a358ada9c6d', '520115', '观山湖区', 'GSHQ', 'gshq', null, null, '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('72eaa0c6743446eab57e886352d8e11a', '511401', '市辖区', 'SXQ', 'sxq', null, null, '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('72ef4af601b746079a7cfe8880f6fdb0', '141029', '乡宁县', 'XNX', 'xnx', '110.944', '35.9251', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('72f1637a2d614fd9b1a2c5bcd758fe22', '653127', '麦盖提县', 'MGTX', 'mgtx', '78.2423', '38.8484', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('730e5d46e06b4f909218ae47dd1a4546', '231283', '海伦市', 'HLS', 'hls', '126.897', '47.4473', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('73232dfd3a6a4aa68fc74581db53e1b0', '371082', '荣成市', 'RCS', 'rcs', '122.407', '37.1287', '7323eba94c9540d68004b46262fa31cf');
INSERT INTO `t_area` VALUES ('7323eba94c9540d68004b46262fa31cf', '371000', '威海市', 'WHS', 'whs', '122.094', '37.5288', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('7373082f48b346b4a49dd765b31f682f', '421002', '沙市区', 'SSQ', 'ssq', '112.424', '30.3257', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('7380d82256c14aa7b60d60199b303633', '532326', '大姚县', 'DYX', 'dyx', '101.243', '25.9477', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('738485c2e1d14b5b88a680056132660f', '451228', '都安瑶族自治县', 'DAYZZZX', 'dayzzzx', '108.118', '24.1698', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('73a5d2a4e3c94df79d9c9b08a86c8e77', '370982', '新泰市', 'XTS', 'xts', '117.613', '35.8958', 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('73b98636be814a5ea7f43769a6b8acae', '511923', '平昌县', 'PCX', 'pcx', '107.167', '31.5977', 'c8dae369045f416782e3bc86fd3404ed');
INSERT INTO `t_area` VALUES ('73db9e07f2e24552a883aa5421eab633', '632725', '囊谦县', 'NQX', 'nqx', '96.137', '32.1783', '836ceddbf0764941a9bfa03cb8719219');
INSERT INTO `t_area` VALUES ('73f55a5436d8479fbb0314598ed38330', '500108', '南岸区', 'NAQ', 'naq', '106.667', '29.5415', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('74069705e5c64d0dac14aea268251fd0', '510800', '广元市', 'GYS', 'gys', '105.82', '32.441', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('741e9c6df917472090e97bd8eaef5a55', '513334', '理塘县', 'LTX', 'ltx', '100.185', '29.8953', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('743685b3dc9a408daeb34f487d74c2bb', '410481', '舞钢市', 'WGS', 'wgs', '113.526', '33.2896', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('7444c33c0a2044629125124eb23bd407', '511722', '宣汉县', 'XHX', 'xhx', '107.936', '31.5198', 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('7446bbaeb67142a599e118a3fd8ffd98', '510183', '邛崃市', 'QLS', 'qls', '103.377', '30.3887', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('7449313da25c43d3a4178f9875b7057c', '330108', '滨江区', 'BJQ', 'bjq', '120.192', '30.1876', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('745ccf353d484a87adbea510d6ff6cb0', '211223', '西丰县', 'XFX', 'xfx', '124.739', '42.7127', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('7462006c1e344a2c8f176d9c90d2132c', '340124', '庐江县', 'LJX', 'ljx', '117.332', '31.2737', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('7485b28eac0a48fdb145f93dd914616d', '350504', '洛江区', 'LJQ', 'ljq', '118.643', '25.1334', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('74b397eb9b5b4114ab7614196b90d739', '652926', '拜城县', 'BCX', 'bcx', '81.9012', '42.0453', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('74c902ae17e943caa2a4d3af4220367c', '360982', '樟树市', 'ZSS', 'zss', '115.421', '28.0025', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('74df79c554404e3992a8fe6ac9f80df2', '140721', '榆社县', 'YSX', 'ysx', '112.954', '37.14', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('74ee0d559aec4392bcf6a154b2a65534', '150221', '土默特右旗', 'TMTYQ', 'tmtyq', '110.693', '40.528', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('75167d837bd549a184d8b636a587f84c', '361022', '黎川县', 'LCX', 'lcx', '116.932', '27.2615', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('751ad81aa4de45f1a8763a43ddae093d', '360500', '新余市', 'XYS', 'xys', '114.947', '27.8223', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('752680ec82374a3bb6e5a7e4f19be632', '150703', '扎赉诺尔区', 'ZLNEQ', 'zlneq', null, null, 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('756bbcd0f8bb449a8b06cf261ce53439', '542223', '贡嘎县', 'GGX', 'ggx', '90.9444', '29.2131', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('7571b280a7d141f1a021248373d66c83', '210103', '沈河区', 'SHQ', 'shq', '123.454', '41.7983', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('7585b896c1094b4f801338d559eff87d', '510701', '市辖区', 'SXQ', 'sxq', null, null, 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('7586e2f685184f7bb2a61c7d7c7cbb14', '321283', '泰兴市', 'TXS', 'txs', '120.135', '32.2137', 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('7590d2a9d2944f7c8dca56f7dba760a9', '511028', '隆昌县', 'LCX', 'lcx', '105.253', '29.3679', '601b6ef239914e5a8764e6343d7a0573');
INSERT INTO `t_area` VALUES ('7591f592a5044e6898a409c5531f3e5c', '361027', '金溪县', 'JXX', 'jxx', '116.758', '27.9315', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('75975929fb574d88a3ebad1eb7033a06', '360735', '石城县', 'SCX', 'scx', '116.372', '26.3056', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('75d9a645eec04ea5a59fa16ca5118e71', '210902', '海州区', 'HZQ', 'hzq', '121.653', '41.9909', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('75df3f0c43df45fc855b94f7d746c62d', '210811', '老边区', 'LBQ', 'lbq', '122.331', '40.6726', '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('75fad1b755954cdaa97ccbf446000773', '440104', '越秀区', 'YXQ', 'yxq', '113.288', '23.1393', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('761206259bf54ac593a587b67453dc30', '130902', '新华区', 'XHQ', 'xhq', '114.453', '38.1172', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('76323b5ded49452c873627c4959b3838', '533124', '陇川县', 'LCX', 'lcx', '97.9654', '24.3814', 'bee4a801ad99461593071a31b8249bc1');
INSERT INTO `t_area` VALUES ('7666597967b3438197d8d53628c534d9', '469002', '琼海市', 'QHS', 'qhs', '110.414', '19.2148', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('766e51dc21fc45a485896e69d740d152', '652123', '托克逊县', 'TKXX', 'tkxx', '88.4243', '42.4504', '4c177d44681948e1afbc21cfe0ecbfd2');
INSERT INTO `t_area` VALUES ('767f7dc671f04bdb9c975d2afd32b428', '430381', '湘乡市', 'XXS', 'xxs', '112.355', '27.7767', 'a7d11d332fb046ffae4054c1ab1e87e3');
INSERT INTO `t_area` VALUES ('76811d2dca724b1181a10dfe5df7d475', '140424', '屯留县', 'TLX', 'tlx', '112.75', '36.3426', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('768601a4d40b451288dba17f6392c234', '411521', '罗山县', 'LSX', 'lsx', '114.444', '32.0312', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('769bd77c54e54cddb240933d021cffdc', '130624', '阜平县', 'FPX', 'fpx', '114.164', '38.8948', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('769c3921fe1247a0822cae118972418e', '440902', '茂南区', 'MNQ', 'mnq', '110.869', '21.6761', 'a5efe9509a6e4a0287e609aca6603955');
INSERT INTO `t_area` VALUES ('76a03d9dda7d48b0b38808a400399eb9', '513327', '炉霍县', 'LHX', 'lhx', '100.676', '31.4922', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('76ae611ceb704469a23a0732f3af76cb', '632324', '河南蒙古族自治县', 'HNMGZZZX', 'hnmgzzzx', '101.556', '34.5114', 'd6d7ccae9a0a40f7a2160b9fc4aec623');
INSERT INTO `t_area` VALUES ('76d13c6af024409d9ee2d9c1ebd9262b', '610527', '白水县', 'BSX', 'bsx', '109.57', '35.2716', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('76d4b777fe3d434cacb21c89e953483a', '320922', '滨海县', 'BHX', 'bhx', '120.027', '34.0923', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('76f31163c704415fa274cd265e36b8f9', '540231', '定结县', 'DJX', 'djx', '87.9137', '28.2375', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('76fedb81fff543a4ad115c8472f04a93', '441600', '河源市', 'HYS', 'hys', '114.714', '23.7573', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('771c2311760d4fee8c4e6d8ded08296d', '320509', '吴江区', 'WJQ', 'wjq', null, null, '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('7721d0071b4f42418633dfdcf12602d1', '150925', '凉城县', 'LCX', 'lcx', '112.55', '40.5028', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('772f55fa9c694dd2abdbb474be17b4b6', '522301', '兴义市', 'XYS', 'xys', '104.858', '25.0025', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('7745048b6ba047f59dceee116ea0ee38', '433123', '凤凰县', 'FHX', 'fhx', '109.519', '28.0136', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('775452da2a47438a9416df8107db073d', '411528', '息县', 'XX', 'xx', '114.872', '32.4108', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('7763508b61c546849d836881e8701791', '451424', '大新县', 'DXX', 'dxx', '107.137', '22.8135', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('776cf00318764b5c9524fb05336bcd1b', '513232', '若尔盖县', 'REGX', 'regx', '102.896', '33.6688', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('776dced2070846d5aed356574b026727', '360822', '吉水县', 'JSX', 'jsx', '115.255', '27.1975', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('77c8ef6b1cc84489b8fb757044d2b0d7', '210111', '苏家屯区', 'SJTQ', 'sjtq', '123.426', '41.5893', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('77de8756afbf4fc0a63951737bee44d8', '511822', '荥经县', 'YJX', 'yjx', '102.692', '29.7409', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('77e13a140d39445895447ec68746a308', '411628', '鹿邑县', 'LYX', 'lyx', '115.384', '33.8941', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('77f7d3f847ed467bb8923d4563cb40da', '370281', '胶州市', 'JZS', 'jzs', '119.959', '36.248', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('78117dfff80e4a7abf9a1caa52764c64', '621001', '市辖区', 'SXQ', 'sxq', null, null, 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('783208eaf80a4f95bc5129202a0f38d1', '542121', '昌都县', 'CDX', 'cdx', '97.244', '31.4485', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('784f333755a54ca98bdc716057b4054d', '420607', '襄州区', 'XZQ', 'xzq', null, null, '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('78797efd34964362ad8f840dbded2b4c', '530127', '嵩明县', 'SMX', 'smx', '103.007', '25.3179', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('788ef4c3c1d049afa9f0435757407f90', '210404', '望花区', 'WHQ', 'whq', '123.786', '41.8604', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('78a05c5fb4704f8788d52a6ffe53ffe4', '421127', '黄梅县', 'HMX', 'hmx', '115.942', '29.9989', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('78a0ce8276e1444595bdde7176b1dd37', '360121', '南昌县', 'NCX', 'ncx', '116.071', '28.6208', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('78a3dd4947f644db990fd4a30014b3fd', '530923', '永德县', 'YDX', 'ydx', '99.4276', '24.0896', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('78aa831a2fdc4a688b280ab84d7d9191', '411503', '平桥区', 'PQQ', 'pqq', '114.139', '32.3078', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('78cfd1874bab4b88b3b7655445b7b90d', '360401', '市辖区', 'SXQ', 'sxq', null, null, 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('78e5b50cd3134d1597d105592bbf14dd', '150928', '察哈尔右翼后旗', 'CHEYYHQ', 'cheyyhq', '113.07', '41.5295', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('78f682d0a82240e883db888c15e6c4ac', '350623', '漳浦县', 'ZPX', 'zpx', '117.691', '24.1346', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('79057ca1b45b486581ff197305744e26', '350104', '仓山区', 'CSQ', 'csq', '119.335', '26.0197', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('790dfbc3f6db4fbdb491962f9ddb0192', '421122', '红安县', 'HAX', 'hax', '114.628', '31.2901', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('791878c043d54405b4cf57125519303c', '511301', '市辖区', 'SXQ', 'sxq', null, null, '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('791e7a4e589241ddb49987f25d7bfee4', '520301', '市辖区', 'SXQ', 'sxq', null, null, '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('795db6b316064bf096025c70f7e24e5f', '371326', '平邑县', 'PYX', 'pyx', '117.682', '35.4342', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('797e3f62504e4f06bd59fbade5fe047f', '340207', '鸠江区', 'JJQ', 'jjq', '118.494', '31.3755', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('798ca34db50f4f349be63c8fb37fd6ae', '140107', '杏花岭区', 'XHLQ', 'xhlq', '112.63', '37.9156', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('79a3d751e90547358780e950ef6e96e4', '530723', '华坪县', 'HPX', 'hpx', '101.252', '26.6458', 'c3e9970474c54bd993dfe4868cd99842');
INSERT INTO `t_area` VALUES ('79b27f46d5334029b8c2b5665dda9873', '440511', '金平区', 'JPQ', 'jpq', '116.652', '23.3999', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('79dd7658515a4a1e9d7faae29c116d3e', '231101', '市辖区', 'SXQ', 'sxq', null, null, 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('79ed1a5d1c93416b89cad15fd95a45d3', '410622', '淇县', 'QX', 'qx', '114.169', '35.6676', '52b9af85f16b4dcca76293c1077849a8');
INSERT INTO `t_area` VALUES ('79f0e867b5704f0b99004209574efbe0', '341202', '颍州区', 'YZQ', 'yzq', '115.728', '32.8677', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('7a116d5b884e4769bee49c0f9c831cc7', '321003', '邗江区', 'HJQ', 'hjq', '119.458', '32.4258', 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('7a1b7f8416da49fba2e7929afdf0e79b', '350403', '三元区', 'SYQ', 'syq', '117.517', '26.174', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('7a5200e3838a4afeabae67fb4c80b7bd', '510304', '大安区', 'DAQ', 'daq', '104.878', '29.4115', 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('7a58ed4f50e54922a65ba9bd7da4e231', '360725', '崇义县', 'CYX', 'cyx', '114.199', '25.6796', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('7a629b702d6a444c87b72a81d466b735', '542123', '贡觉县', 'GJX', 'gjx', '98.4961', '30.7467', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('7a6377c98207431292dee9c84315145a', '150722', '莫力达瓦达斡尔族自治旗', 'MLDWDWEZZZQ', 'mldwdwezzzq', '124.474', '49.1049', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('7ac568ccbed947009e162a67c756f344', '513401', '西昌市', 'XCS', 'xcs', '102.118', '27.8634', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('7ae3370c530346ffb39d1351f7f40406', '231003', '阳明区', 'YMQ', 'ymq', '129.784', '44.588', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('7ae485e2e82d49fabed7bb686396df1f', '361001', '市辖区', 'SXQ', 'sxq', null, null, 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('7af60a2d5a13493aba358982e8eb2a8d', '320600', '南通市', 'NTS', 'nts', '120.874', '32.0147', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('7b00c7c35ab644daab3ba110e5c42bc0', '231004', '爱民区', 'AMQ', 'amq', '129.545', '44.6859', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('7b082ed011ad46a39f4a059f8d145c13', '441400', '梅州市', 'MZS', 'mzs', '116.126', '24.3046', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('7b42c83f13eb42e2819898caa0cddd14', '371100', '日照市', 'RZS', 'rzs', '119.507', '35.4202', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('7b460d2f4a7a45d09e8d044af9f234ba', '450406', '龙圩区', 'LWQ', 'lwq', null, null, '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('7b53d7f0f9fc4062970899fd131c17b2', '540126', '达孜县', 'DZX', 'dzx', '91.4739', '29.7477', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('7b545916606946008fae998acfdafc07', '420881', '钟祥市', 'ZXS', 'zxs', '112.585', '31.245', 'eacb1ce2016a4db48ec4b12116584c1f');
INSERT INTO `t_area` VALUES ('7b5b99b9578b4e28851ef0a024488bbb', '451222', '天峨县', 'TEX', 'tex', '106.997', '25.0188', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('7b683444c5ae4ee89057f9c77de1fe4e', '210212', '旅顺口区', 'LSKQ', 'lskq', '121.296', '38.9083', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('7b7b5ae18d904f7cb2378707dc9cfec5', '430521', '邵东县', 'SDX', 'sdx', '111.857', '27.1937', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('7b7e6c39ea224df0b0c91ea238f6f1a1', '530630', '水富县', 'SFX', 'sfx', '104.229', '28.5109', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('7ba80025aa0d483c86cfd1fc13c3a49b', '513429', '布拖县', 'BTX', 'btx', '102.882', '27.6', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('7bab610cd0d34aaa99249ebddb2d7f4f', '654224', '托里县', 'TLX', 'tlx', '83.8955', '45.657', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('7bb54a94995c4850829a0667046f9db7', '440112', '黄埔区', 'HPQ', 'hpq', '113.493', '23.1087', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('7bb69a4b4d3c4466a343df162bf8fb81', '131025', '大城县', 'DCX', 'dcx', '116.589', '38.6688', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('7bc461eca20e4cc7840b8ccd45ccbf98', '341823', '泾县', 'JX', 'jx', '118.376', '30.5993', '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('7bcce9f194bc459998bc56a6d828c77b', '341125', '定远县', 'DYX', 'dyx', '117.666', '32.4733', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('7bef54f21077446fa3746ce863b5e93b', '140105', '小店区', 'XDQ', 'xdq', '112.577', '37.7535', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('7bffbef23c9a4af7a76aed4172517505', '430822', '桑植县', 'SZX', 'szx', '110.187', '29.5677', '94fbd360ab114e599dbc7fccbb59a832');
INSERT INTO `t_area` VALUES ('7c0fbc88563648b080bf0a553210368b', '320902', '亭湖区', 'THQ', 'thq', '120.206', '33.3789', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('7c3575762c2e40f09ab0b7c5b526c345', '420323', '竹山县', 'ZSX', 'zsx', '110.073', '32.2401', '42eaf85033f044beafdc4f2be2dd355d');
INSERT INTO `t_area` VALUES ('7c3bf288662c439699f15eed38db3aaa', '640205', '惠农区', 'HNQ', 'hnq', '106.614', '39.1081', '56638a23c20c416ca11515bedbbe61ce');
INSERT INTO `t_area` VALUES ('7c3dbcbfe8674b32a076cb49e240807e', '370213', '李沧区', 'LCQ', 'lcq', '120.431', '36.1929', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('7c4256d98f30462f88fea71a88d94573', '350302', '城厢区', 'CXQ', 'cxq', '118.954', '25.4334', '9be15a0d529a4e5f9fef94e6295427ea');
INSERT INTO `t_area` VALUES ('7c482c40a4f74f47bd0dc81d7cd49856', '620104', '西固区', 'XGQ', 'xgq', '103.563', '36.1065', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('7c49b402727d454985dbdf64b0b211fc', '340303', '蚌山区', 'BSQ', 'bsq', '117.356', '32.8815', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('7c665700f7b24b0c8a5bb110cc65df17', '420103', '江汉区', 'JHQ', 'jhq', '114.266', '30.611', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('7c73d6d40e9141139521c04517db8609', '410526', '滑县', 'HX', 'hx', '114.674', '35.4717', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('7c7a88cdd5ee42c6ab55ff0a4e162972', '371122', '莒县', 'JX', 'jx', '118.894', '35.6559', '7b42c83f13eb42e2819898caa0cddd14');
INSERT INTO `t_area` VALUES ('7cc2982cfcaf433bb46703ecb0ec0082', '140321', '平定县', 'PDX', 'pdx', '113.769', '37.8493', '24208d947e4e4ccaaaf04a187d57ccf4');
INSERT INTO `t_area` VALUES ('7ce2102cbb38479085324edd3a552da8', '430525', '洞口县', 'DKX', 'dkx', '110.6', '27.1032', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('7d21256331b44444a585df1966b28753', '210301', '市辖区', 'SXQ', 'sxq', null, null, 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('7d23b9f52e634112903fb98c0e5530ed', '653125', '莎车县', 'SCX', 'scx', '77.0148', '38.3226', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('7d34c60c528747aca438276f61bc0185', '340101', '市辖区', 'SXQ', 'sxq', null, null, 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('7d364390f5974b89a25ee0b36a67f69a', '330784', '永康市', 'YKS', 'yks', '120.109', '28.9402', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('7d42e6ad884f4ff483fcf43fe90cc487', '360105', '湾里区', 'WLQ', 'wlq', '115.75', '28.8006', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('7d51b5d654694fe5a766889fd3862f7d', '621126', '岷县', 'MX', 'mx', '104.247', '34.4296', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('7d52250cbe9e4165a3a896cda1eb9ca1', '511724', '大竹县', 'DZX', 'dzx', '107.28', '30.6908', 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('7d5608327f554574ada75717b7b42286', '411303', '卧龙区', 'WLQ', 'wlq', '112.484', '33.0098', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('7d6e95a421f145dc99bda468fe589663', '511702', '通川区', 'TCQ', 'tcq', '107.519', '31.2388', 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('7d8c295abd7c4d07b8a14239aacb8755', '441200', '肇庆市', 'ZQS', 'zqs', '112.48', '23.0787', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('7da0c10084e546b39cf61d79b1c52727', '150822', '磴口县', 'DKX', 'dkx', '106.7', '40.5552', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('7dc1462b1048450b801c71d506d80f6a', '540226', '昂仁县', 'ARX', 'arx', '86.6292', '29.9561', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('7dc408abcf804498af9715575dd9643c', '659002', '阿拉尔市', 'ALES', 'ales', '81.2917', '40.6157', '48b2c58abd7544a6b8ce69bb04aa1a5d');
INSERT INTO `t_area` VALUES ('7dc50b05b9ea452191502d7048528e46', '361126', '弋阳县', 'YYX', 'yyx', '117.417', '28.4522', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('7dc54ce3b0de4d17aacf82363ff7a414', '620723', '临泽县', 'LZX', 'lzx', '100.191', '39.347', '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('7dc6bcde61ec4115a0d4424b97476518', '430302', '雨湖区', 'YHQ', 'yhq', '112.894', '27.8718', 'a7d11d332fb046ffae4054c1ab1e87e3');
INSERT INTO `t_area` VALUES ('7dd51e1e475846cebd87e77268a0274d', '500238', '巫溪县', 'WXX', 'wxx', '109.361', '31.5092', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('7df6241abb604f109447e563e37af427', '320322', '沛县', 'PX', 'px', '116.911', '34.7006', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('7e0482bcbc2f427d91938216aa7eedc7', '411202', '湖滨区', 'HBQ', 'hbq', '111.281', '34.7718', '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('7e1660834c4d476984aa335ff730d280', '640323', '盐池县', 'YCX', 'ycx', '107.05', '37.6253', '1b11b582e514437184c3364fe8e7fbf2');
INSERT INTO `t_area` VALUES ('7e16c835638a4a55acb17066a6bb58ba', '460300', '三沙市', 'SSS', 'sss', null, null, 'cee24b69093f47ae8e1822e5c5f9ae76');
INSERT INTO `t_area` VALUES ('7e2c666b54e14b6080a06c95e00db4fa', '360429', '湖口县', 'HKX', 'hkx', '116.293', '29.6681', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('7e338ff0ff7a4c70b22dddb65f51fc44', '110100', '市辖区', 'SXQ', 'sxq', null, null, '8ba5f8d7f6b641ebaa204b952fdc1186');
INSERT INTO `t_area` VALUES ('7e42aca6103e4ababd7f9517dbe01160', '441300', '惠州市', 'HZS', 'hzs', '114.411', '23.1135', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('7e631801b3df4845a6f9934ddfaf0d9f', '230206', '富拉尔基区', 'FLEJQ', 'flejq', '123.572', '47.229', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('7e9a48b8f9e34206a8d79b0836380017', '510821', '旺苍县', 'WCX', 'wcx', '106.402', '32.3721', '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('7eb13c867ec3447f84998903b3e2823b', '652201', '哈密市', 'HMS', 'hms', '93.5294', '42.3445', 'f3b337cc66b24571ad6d9417eab4e9b9');
INSERT INTO `t_area` VALUES ('7eb8eb109112461c9062c256b0c46423', '411625', '郸城县', 'DCX', 'dcx', '115.301', '33.6415', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('7ec00ef2b85940f0ae614e24d0a1b5f9', '621027', '镇原县', 'ZYX', 'zyx', '107.177', '35.788', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('7ed79c566cfb42e39424806a872e2f61', '450700', '钦州市', 'QZS', 'qzs', '108.639', '21.9734', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('7edb3bf04d5341b9a8401d441738383f', '430121', '长沙县', 'ZSX', 'zsx', '113.225', '28.3228', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('7ef8a626dbbc4f6098fa0e37161546a2', '360602', '月湖区', 'YHQ', 'yhq', '117.058', '28.2472', 'e3608de815dd4b8e825407c8b73f5700');
INSERT INTO `t_area` VALUES ('7f1bd635ef9b412682142643126211ec', '231005', '西安区', 'XAQ', 'xaq', '125.15', '42.9864', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('7f1eb3096e814ce3bb25f8a7e5a56137', '411023', '许昌县', 'XCX', 'xcx', '113.835', '34.0485', '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('7f23352cbd274b4e9d2a6a26e109546b', '371625', '博兴县', 'BXX', 'bxx', '118.226', '37.1914', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('7f7392c6fd7846dd9edda81938fdf176', '150303', '海南区', 'HNQ', 'hnq', '106.925', '39.2962', 'f32203ff80ac40879b4a855066ccb21a');
INSERT INTO `t_area` VALUES ('7f86f8abf9344bd08eb5c3c08e8bf239', '542422', '嘉黎县', 'JLX', 'jlx', '92.9613', '30.6689', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('7f8bded424f74b7fafce6588de5cdd61', '532532', '河口瑶族自治县', 'HKYZZZX', 'hkyzzzx', '103.823', '22.7874', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('7fa4b84158854025a28852cc9548d7a8', '451029', '田林县', 'TLX', 'tlx', '106', '24.3925', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('7fb9aa9db8734b4f9dd1dee111276fed', '320000', '江苏省', 'JSS', 'jss', '119.368', '33.0138', '0');
INSERT INTO `t_area` VALUES ('7fe8971fc3e84d52b201c52b459f4439', '640104', '兴庆区', 'XQQ', 'xqq', '106.382', '38.4643', 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('7ff1d93698c24e0f8dbdaf7c1aa3431b', '230506', '宝山区', 'BSQ', 'bsq', '131.565', '46.5292', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('800543b3aa65415baed92144219a93ef', '652923', '库车县', 'KCX', 'kcx', '83.4598', '41.7819', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('80532060fe4543b8a53ea23e6fef18b6', '370902', '泰山区', 'TSQ', 'tsq', '117.184', '36.2155', 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('805fb956f2e6437bb30bf9dd809c2d88', '460201', '市辖区', 'SXQ', 'sxq', null, null, 'cf3d29a5792a41f48a9ce52d2dda943b');
INSERT INTO `t_area` VALUES ('806355c7b5b247cd810232573a067917', '510823', '剑阁县', 'JGX', 'jgx', '105.503', '31.9219', '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('807ab0497bb34c51a78012c0519dc346', '450326', '永福县', 'YFX', 'yfx', '109.917', '24.9973', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('80c3b4b943104c83a0aa4e87288df0ec', '610621', '延长县', 'YZX', 'yzx', '110.138', '36.5437', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('80c47ba318384bd1a96caf48a803fe6c', '411700', '驻马店市', 'ZMDS', 'zmds', '114.049', '32.9832', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('80d82fec4ba3496cb7cac023c07ee61d', '532930', '洱源县', 'EYX', 'eyx', '99.9122', '26.0729', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('80fe8d4f78454d8dad84cd850766af35', '371400', '德州市', 'DZS', 'dzs', '116.328', '37.4608', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('810254823d094de3b3a7898e389675bf', '530422', '澄江县', 'CJX', 'cjx', '102.947', '24.6784', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('8118bc5c890b4524aafd45428e89c6d1', '510107', '武侯区', 'WHQ', 'whq', '104.041', '30.6129', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('812ff5d8d0f845ceac7490270fb45ccb', '350430', '建宁县', 'JNX', 'jnx', '116.793', '26.8177', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('813442e5e129490ca03f435c498ce577', '150725', '陈巴尔虎旗', 'CBEHQ', 'cbehq', '119.535', '49.6053', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('81376754fd0c4ec597e83d4d2d5788d1', '520328', '湄潭县', 'MTX', 'mtx', '107.492', '27.7649', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('81443f5e51e348928f9945b912d52d4c', '330803', '衢江区', 'QJQ', 'qjq', '118.939', '28.942', '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('81532d71e490479ebf4dd18451cc4a43', '341503', '裕安区', 'YAQ', 'yaq', '116.303', '31.753', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('8169bcbd2625426fbb30398552a42262', '520325', '道真仡佬族苗族自治县', 'DZGLZMZZZX', 'dzglzmzzzx', '107.617', '28.9342', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('8176c46c76c942ad8ad13262646be27c', '510311', '沿滩区', 'YTQ', 'ytq', '104.855', '29.2426', 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('8182466ffcef4fb69218ca35f51119f9', '445103', '潮安区', 'CAQ', 'caq', '116.634', '23.7259', '0ece7c50ea6445f9a65150cc9a30f3ce');
INSERT INTO `t_area` VALUES ('818c0769bd2949ada5bf5607368813c0', '220421', '东丰县', 'DFX', 'dfx', '125.455', '42.6839', '507ea0be588e47e19900b4aad1a4524e');
INSERT INTO `t_area` VALUES ('818f2b1ebf4b4a4ba8cc6e948be31076', '120200', '县', 'X', 'x', null, null, '59a356b9fd8d4a9ebe7412dce6568c68');
INSERT INTO `t_area` VALUES ('8191f7b26f534f50bcbf249411381d8c', '140722', '左权县', 'ZQX', 'zqx', '113.475', '37.0328', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('819288e2eef8473aaf18c9a8133eb1a3', '621200', '陇南市', 'LNS', 'lns', '104.935', '33.3945', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('81dcf69f4d014b6386a7d41499deb25c', '152922', '阿拉善右旗', 'ALSYQ', 'alsyq', '102.444', '40.1862', 'dd0e9d1a27594f27a31cb3378afca264');
INSERT INTO `t_area` VALUES ('82038d6752ca476f9143e513d7b61a18', '360921', '奉新县', 'FXX', 'fxx', '115.18', '28.7147', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('82042bcecd084323baa7d638a7cb4419', '511823', '汉源县', 'HYX', 'hyx', '102.625', '29.4316', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('820f5398d4fc4ad9b0f6e535f97f323e', '330822', '常山县', 'CSX', 'csx', '118.548', '28.9737', '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('822fecd075c640b4a1bff8b74347ec3b', '370502', '东营区', 'DYQ', 'dyq', '118.613', '37.4087', '46641c8bfa004a55aa1e0b50152dc582');
INSERT INTO `t_area` VALUES ('825b197dd3fc475babdc48d0529012b9', '140108', '尖草坪区', 'JCPQ', 'jcpq', '112.488', '37.9728', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('8262fe970c2c4ae3a0d7c9fffba254f3', '621124', '临洮县', 'LTX', 'ltx', '103.912', '35.5311', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('8285d5e7c96b431f89e7e417f3e384d6', '500120', '璧山区', 'BSQ', 'bsq', '106.199', '29.5675', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('82d63e80887e443a96faa1328d85a6f5', '530721', '玉龙纳西族自治县', 'YLNXZZZX', 'ylnxzzzx', '99.9516', '27.1045', 'c3e9970474c54bd993dfe4868cd99842');
INSERT INTO `t_area` VALUES ('82df82fcdb8441caa0f5319452ebd0ec', '230381', '虎林市', 'HLS', 'hls', '133.121', '45.9973', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('82e77f8725514c6889fae4c245ce0c76', '340200', '芜湖市', 'WHS', 'whs', '118.384', '31.366', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('82f5606deed54b3aa860ef7b71cea224', '440404', '金湾区', 'JWQ', 'jwq', '113.418', '22.0472', 'c35a53182359423d9e4c389d1a1dca2c');
INSERT INTO `t_area` VALUES ('830d2002ecb14bc9a90434f0349b7c50', '230503', '岭东区', 'LDQ', 'ldq', '131.246', '46.4595', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('831ff707ed104e599658e0af71880fc5', '210903', '新邱区', 'XQQ', 'xqq', '121.824', '42.0746', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('833ffa2a93a54da1938695755438f779', '340323', '固镇县', 'GZX', 'gzx', '117.354', '33.2728', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('8348d680d6a44349a18699bb3301f156', '350722', '浦城县', 'PCX', 'pcx', '118.524', '27.9452', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('834aa8a2da9f4e7b875bd86643ccef3d', '350305', '秀屿区', 'XYQ', 'xyq', '119.131', '25.2764', '9be15a0d529a4e5f9fef94e6295427ea');
INSERT INTO `t_area` VALUES ('835ed2facd684917a081908db75b1fd8', '640400', '固原市', 'GYS', 'gys', '106.285', '36.0215', '1c79e3a807264ac095db85cd4ce88673');
INSERT INTO `t_area` VALUES ('836ceddbf0764941a9bfa03cb8719219', '632700', '玉树藏族自治州', 'YSZZZZZ', 'yszzzzz', '97.0133', '33.0062', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('836eafdb94864d37a48452f47541842f', '532502', '开远市', 'KYS', 'kys', '103.4', '23.7291', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('83adfc2ed06c46f484f37237ad0d983d', '610327', '陇县', 'LX', 'lx', '106.773', '34.8769', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('83d0462e4042431496ef8f2782bab0ef', '320602', '崇川区', 'CCQ', 'ccq', '120.888', '31.9627', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('8401d29ed86548bda0ac271aca38c36a', '330282', '慈溪市', 'CXS', 'cxs', '121.338', '30.1893', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('8404984ca6fa470fbef34696a861f9a8', '370683', '莱州市', 'LZS', 'lzs', '120.001', '37.1904', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('8407504a550a40f1a98348340cec5c96', '450804', '覃塘区', 'TTQ', 'ttq', '109.401', '23.1479', 'b93e28fad1454605a81753c740e0b00d');
INSERT INTO `t_area` VALUES ('84094e608f8e4add9183ab1ca17a1332', '231102', '爱辉区', 'AHQ', 'ahq', '126.764', '50.2182', 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('841ba66ab8e84168960f93376c69fb74', '230805', '东风区', 'DFQ', 'dfq', '116.379', '39.9879', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('8420b3b4fa25450197dc62cf14a83293', '130223', '滦县', 'LX', 'lx', '118.584', '39.7855', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('84216a242e8f4dd29e9c60acc6e9d9a4', '522626', '岑巩县', 'CGX', 'cgx', '108.707', '27.3653', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('842ea3f91e7341c2b23a340fe29d9af2', '542124', '类乌齐县', 'LWQX', 'lwqx', '96.4051', '31.4406', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('847b3811d50c4649abdefb89d0c495e5', '532626', '丘北县', 'QBX', 'qbx', '104.11', '24.1278', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('847e5db20cae46e8b473d8e9dfd5211e', '350303', '涵江区', 'HJQ', 'hjq', '119.079', '25.6047', '9be15a0d529a4e5f9fef94e6295427ea');
INSERT INTO `t_area` VALUES ('84a8cec80dec441b896fc27025550ae1', '654223', '沙湾县', 'SWX', 'swx', '85.4749', '44.3537', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('84b31f8ea5294947b93185c05678ae41', '610824', '靖边县', 'JBX', 'jbx', '108.813', '37.4842', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('84b35b76c68d47f78cdc174e0345d8fa', '530626', '绥江县', 'SJX', 'sjx', '104.016', '28.5389', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('84c44e97c5d143deba182b19f9b9a530', '511781', '万源市', 'WYS', 'wys', '107.994', '31.9862', 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('84c9553969f44713a836d762d70d33ca', '620501', '市辖区', 'SXQ', 'sxq', null, null, '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('84ca9c0ea92c4ef283e00fc11ba31909', '510724', '安县', 'AX', 'ax', '104.369', '31.5892', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('84d9b213afff4551985a5da43ce85aa0', '341622', '蒙城县', 'MCX', 'mcx', '116.592', '33.223', 'fdfe40a0faff43159592cebf8e884365');
INSERT INTO `t_area` VALUES ('84f03ad6610b4984ac930d208bd3c162', '450108', '良庆区', 'LQQ', 'lqq', '108.37', '22.4989', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('8510781ea2494d73a24741c88b7680f5', '640402', '原州区', 'YZQ', 'yzq', '106.254', '36.2068', '835ed2facd684917a081908db75b1fd8');
INSERT INTO `t_area` VALUES ('851b893c80a74ba28b5626a804267e2b', '330327', '苍南县', 'CNX', 'cnx', '120.446', '27.4344', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('8521db5726f84889bdf9b530eaec0ec6', '370601', '市辖区', 'SXQ', 'sxq', null, null, 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('8524e2272fc945d49d4b576cb55481dd', '141033', '蒲县', 'PX', 'px', '111.162', '36.4246', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('85313ae5209647c297049552981f7141', '440301', '市辖区', 'SXQ', 'sxq', null, null, 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('85332757c81d4f8a91305e8ad48f9c0b', '510104', '锦江区', 'JJQ', 'jjq', '104.124', '30.6063', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('85471a2434fe494886870caebeaa9b3f', '120100', '市辖区', 'SXQ', 'sxq', null, null, '59a356b9fd8d4a9ebe7412dce6568c68');
INSERT INTO `t_area` VALUES ('8553c0ef43314cf9bb56cafbcb56ef4c', '511133', '马边彝族自治县', 'MBYZZZX', 'mbyzzzx', '103.481', '28.7767', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('855947491c8543cfa9959752678bb2fe', '210727', '义县', 'YX', 'yx', '121.302', '41.5349', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('857acf2a593543fd9b5f232096f45bcf', '321323', '泗阳县', 'SYX', 'syx', '118.657', '33.7088', '6cc757f4428c4ab9a7f5783a328ea2af');
INSERT INTO `t_area` VALUES ('857d3e2cf5b74f3ba3c324ed475b59ce', '652824', '若羌县', 'RQX', 'rqx', '89.7628', '38.9738', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('858cea6d3d3b4912a333a800b7a174c9', '230716', '上甘岭区', 'SGLQ', 'sglq', '129.022', '48.0365', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('859f5a2803e1475ba20c5b0f4c17e774', '350100', '福州市', 'FZS', 'fzs', '119.33', '26.0471', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('85af29248e544e8299a93afc39edeb76', '652828', '和硕县', 'HSX', 'hsx', '87.5887', '42.1411', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('85b5f4c10b5e416c8901cb9c3e58dd00', '150422', '巴林左旗', 'BLZQ', 'blzq', '119.281', '44.2034', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('85bf4c0325f043519538718479cf3045', '320100', '南京市', 'NJS', 'njs', '118.778', '32.0572', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('85c545b07b0f40de948ff343a07220f9', '131023', '永清县', 'YQX', 'yqx', '116.561', '39.3028', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('85cc0ca6438e42c4b593a6c66d462393', '360827', '遂川县', 'SCX', 'scx', '114.371', '26.3443', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('85cde5b7b7504317ac73a4ff4eb54057', '320405', '戚墅堰区', 'QSYQ', 'qsyq', '120.056', '31.7569', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('85f6dadecf8f42ae8936e1dd3f6a46fb', '513425', '会理县', 'HLX', 'hlx', '102.264', '26.5913', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('85facde3b3c34148b7fa31508a496882', '653222', '墨玉县', 'MYX', 'myx', '80.0471', '38.3842', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('86418d9a378b44d091e65df7a79aa496', '230801', '市辖区', 'SXQ', 'sxq', null, null, 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('864839df89b24e95828659bddb0c7fe8', '361101', '市辖区', 'SXQ', 'sxq', null, null, '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('86644d365c4340bebdfa7387dce2bb52', '411501', '市辖区', 'SXQ', 'sxq', null, null, '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('86bf09372b714059a7cce362e0ff3350', '371103', '岚山区', 'LSQ', 'lsq', '119.252', '35.2927', '7b42c83f13eb42e2819898caa0cddd14');
INSERT INTO `t_area` VALUES ('86e3e13253274aa6bd338ab909e6f681', '640122', '贺兰县', 'HLX', 'hlx', '106.267', '38.6871', 'aee131f6bfaa405cacca37d0f9e7be1f');
INSERT INTO `t_area` VALUES ('86e7cbdfa7914ace9c8fc90d5a45747a', '341500', '六安市', 'LAS', 'las', '116.505', '31.7556', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('86f364aa96fd464186b11a94c6e1a218', '530126', '石林彝族自治县', 'SLYZZZX', 'slyzzzx', '103.427', '24.7543', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('8700ae8507584fd4807409b45b186ba3', '360703', '南康区', 'NKQ', 'nkq', '114.713', '25.8329', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('870b70ef84104817808e857086ca7032', '331003', '黄岩区', 'HYQ', 'hyq', '121.088', '28.6047', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('870c76763eeb402a885370829c7795ba', '654322', '富蕴县', 'FYX', 'fyx', '89.3935', '46.5362', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('8712c3efb4a34c819d87ad17300f0f51', '441723', '阳东县', 'YDX', 'ydx', '112.066', '21.9639', 'd2077a7cd49748e5a0cbb2bc1448e494');
INSERT INTO `t_area` VALUES ('8728f5e24c3f460b85479caf800785bf', '653128', '岳普湖县', 'YPHX', 'yphx', '76.9896', '39.1166', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('873b274db2b340feb99f66e06057b120', '371301', '市辖区', 'SXQ', 'sxq', null, null, '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('87494e1b7eab43d2a32d3a53a5d30655', '410502', '文峰区', 'WFQ', 'wfq', '114.419', '36.0341', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('875bb52ab37a476eadb1484c82f4b41d', '222401', '延吉市', 'YJS', 'yjs', '129.471', '43.0597', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('87734e145a7d4817b9681746810049c7', '450981', '北流市', 'BLS', 'bls', '110.467', '22.5289', '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('879265f0a7d542e89a51421103b02bdc', '420602', '襄城区', 'XCQ', 'xcq', '112.017', '31.9354', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('8793ab07d12e4cca9604bc89ebb1a200', '532923', '祥云县', 'XYX', 'xyx', '100.778', '25.5167', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('87a53b81c8224f63aa8f31202678d386', '350822', '永定县', 'YDX', 'ydx', '116.826', '24.7618', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('87afcceab9974e0aa1f248e3ee9e1921', '152201', '乌兰浩特市', 'WLHTS', 'wlhts', '122.082', '46.1169', '111d59a069534708961e303559a4e6db');
INSERT INTO `t_area` VALUES ('88152c84f70d44fca35757d4143c877a', '653123', '英吉沙县', 'YJSX', 'yjsx', '76.3687', '38.8', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('88263811b7e5438ebc349b60a32ace5a', '520623', '石阡县', 'SQX', 'sqx', '108.17', '27.4908', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('882ae17ee6404023a3eb3c30d396e80d', '530103', '盘龙区', 'PLQ', 'plq', '102.768', '25.274', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('88408952c1d847dcbc354fc7967cfe67', '469030', '琼中黎族苗族自治县', 'QZLZMZZZX', 'qzlzmzzzx', '109.862', '19.0398', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('885a85a1230b4f6d82bf29e79d2df059', '441426', '平远县', 'PYX', 'pyx', '115.933', '24.6957', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('886c64f4897d4337a5f35fb5ba6536ad', '220301', '市辖区', 'SXQ', 'sxq', null, null, 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('887a055065744da1a67e8b72e131ad1a', '421281', '赤壁市', 'CBS', 'cbs', '113.889', '29.7426', 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('88a9753c6ade47858fb93f971ef03122', '350624', '诏安县', 'ZAX', 'zax', '117.133', '23.874', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('88dd5e5dfebb4ff2a7ef90b1a4654bb5', '659004', '五家渠市', 'WJQS', 'wjqs', '87.5655', '44.3689', '48b2c58abd7544a6b8ce69bb04aa1a5d');
INSERT INTO `t_area` VALUES ('88ddce86dcbd43659cf7284357a2f5cd', '341004', '徽州区', 'HZQ', 'hzq', '118.279', '29.9021', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('88f847f29eca48b2baba48a9d7b8e879', '420107', '青山区', 'QSQ', 'qsq', '109.904', '40.6588', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('8905398443c54e319963a5e775384e4b', '520524', '织金县', 'ZJX', 'zjx', '105.792', '26.6482', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('893b7e8e5da845dbae3fcef86de27c9e', '341801', '市辖区', 'SXQ', 'sxq', null, null, '283b9050506145d9909ad572213bb63f');
INSERT INTO `t_area` VALUES ('8973f5056f794130a3b531db2a148732', '330102', '上城区', 'SCQ', 'scq', '120.18', '30.2324', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('897c360f20504441be0a144830d5bb14', '520625', '印江土家族苗族自治县', 'YJTJZMZZZX', 'yjtjzmzzzx', '108.532', '27.9987', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('899b38a87de2476b939af516d651dd3d', '140781', '介休市', 'JXS', 'jxs', '111.995', '37.0255', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('89bd43a7ea7947febf6267ed7fd192b2', '532531', '绿春县', 'LCX', 'lcx', '102.245', '22.8792', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('89fea09abece42d6acdf236992775806', '520330', '习水县', 'XSX', 'xsx', '106.359', '28.3573', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('8a0e345792a94f58b6b0d63053168ff0', '130402', '邯山区', 'HSQ', 'hsq', '114.469', '36.5362', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('8a48f51ebbcb4325a278e39a0f885488', '610426', '永寿县', 'YSX', 'ysx', '108.137', '34.7777', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('8a4ccffaafd741b596ad0be7f7d905e2', '361181', '德兴市', 'DXS', 'dxs', '117.753', '28.9408', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('8a73fff4efe840518630d682bc01c845', '451422', '宁明县', 'NMX', 'nmx', '107.295', '22.0051', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('8a7806974ec141c7a152140bf3298d46', '370786', '昌邑市', 'CYS', 'cys', '119.45', '36.8342', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('8aa11d9fce144d00921a25facbd58074', '340311', '淮上区', 'HSQ', 'hsq', '117.388', '33.0238', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('8abf1fed576047db9a519c1b1d1b55b7', '130429', '永年县', 'YNX', 'ynx', '114.642', '36.7702', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('8ae3d8bd8e83492e9e5b2dbc3d353018', '530122', '晋宁县', 'JNX', 'jnx', '102.58', '24.605', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('8afb31e5f883477ba6363906ef647e33', '450321', '阳朔县', 'YSX', 'ysx', '110.483', '24.8573', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('8b4c0ae510ba437aaf7c8bbdb9aa9229', '130724', '沽源县', 'GYX', 'gyx', '115.636', '41.5804', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('8b625fdb51a44dc28bce1a092f771285', '510923', '大英县', 'DYX', 'dyx', '105.256', '30.5802', 'fe672e515db8472e87574333b48c3e45');
INSERT INTO `t_area` VALUES ('8b632c9466b6486985f94a50e59ab1cc', '520102', '南明区', 'NMQ', 'nmq', '106.724', '26.5414', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('8b6bdeb1781b4f0bbfa4d53e53e74e50', '350583', '南安市', 'NAS', 'nas', '118.389', '25.018', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('8b784679cf6b4d738d07a81cc127f9b3', '620800', '平凉市', 'PLS', 'pls', '106.689', '35.5501', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('8b8626bd0cbd428ab7e34ff8f343f822', '623000', '甘南藏族自治州', 'GNZZZZZ', 'gnzzzzz', '102.917', '34.9922', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('8b891998031f46a798b50dead1648695', '130628', '高阳县', 'GYX', 'gyx', '115.838', '38.673', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('8ba5f8d7f6b641ebaa204b952fdc1186', '110000', '北京市', 'BJS', 'bjs', '116.396', '39.93', '0');
INSERT INTO `t_area` VALUES ('8bacba8d8a1849e89a2a8ad1d34d49d3', '533422', '德钦县', 'DQX', 'dqx', '99.0376', '28.3514', '71395c0ccf984e44a1a7c1cdd4731c8c');
INSERT INTO `t_area` VALUES ('8bbffc6d27724da0a0806f35677a58cf', '130637', '博野县', 'BYX', 'byx', '115.488', '38.4591', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('8bc33390f1934cc69caf1e7adef13023', '130432', '广平县', 'GPX', 'gpx', '115.021', '36.5119', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('8bcd2ad985954e80b42549e495d90b25', '140181', '古交市', 'GJS', 'gjs', '112.108', '37.9052', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('8bdd6a0255084e6fbc29df7135c98f79', '410581', '林州市', 'LZS', 'lzs', '113.861', '36.0166', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('8bf48a2a18444282974b7184234776de', '450305', '七星区', 'QXQ', 'qxq', '110.357', '25.2647', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('8c141a564f324701b8289ad1fa9b91b8', '630200', '海东市', 'HDS', 'hds', '102.085', '36.5176', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('8c1af014eb354803b386656a11695e10', '411327', '社旗县', 'SQX', 'sqx', '112.999', '32.9824', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('8c1ce3c58a3644de93f0c8379a532672', '320381', '新沂市', 'XYS', 'xys', '118.344', '34.2844', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('8c5dcdffafd14655a71a20a324369938', '340400', '淮南市', 'HNS', 'hns', '117.019', '32.6428', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('8c66ddede9d24d9db07117f5cc74c0c4', '340827', '望江县', 'WJX', 'wjx', '116.688', '30.2426', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('8c7dff328d9b44a59f893b6f1585afa7', '410311', '洛龙区', 'LLQ', 'llq', '112.467', '34.6388', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('8c94f5905aa84638a438e9d12e61567d', '510623', '中江县', 'ZJX', 'zjx', '104.805', '30.8871', 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('8cb1511a6d874e449c5d9306525f7784', '370784', '安丘市', 'AQS', 'aqs', '119.156', '36.335', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('8cc3d22b5fe2476185f378e215e87f68', '230281', '讷河市', 'NHS', 'nhs', '125.077', '48.4815', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('8cf7470b137a485abbb0b67123f45b60', '653000', '克孜勒苏柯尔克孜自治州', 'KZLSKEKZZZZ', 'kzlskekzzzz', '76.1376', '39.7503', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('8cf972be75914e5b8d7155cecd197534', '610203', '印台区', 'YTQ', 'ytq', '109.185', '35.1609', '5e5f0ab02e004598b96a194ac2a8b3b0');
INSERT INTO `t_area` VALUES ('8cfe825c13a84f38ab96449ecf7a1696', '420982', '安陆市', 'ALS', 'als', '113.633', '31.3044', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('8d062cd6f70f4707b576cd88f39bbbe2', '371700', '菏泽市', 'HZS', 'hzs', '115.463', '35.2624', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('8d1d37e4b4464cdabdc3781b80b3ba71', '152501', '二连浩特市', 'ELHTS', 'elhts', '111.966', '43.4178', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('8d297775f99b40a1a547f73aed468a26', '450900', '玉林市', 'YLS', 'yls', '110.152', '22.644', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('8d37516285854cc5a133c293bd15f2e5', '430726', '石门县', 'SMX', 'smx', '111.044', '29.8017', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('8d44616f448e4f9aa5a0e9f4f3064704', '130427', '磁县', 'CX', 'cx', '114.255', '36.4067', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('8d56aedf2474440999e2daf1806ddb43', '411624', '沈丘县', 'SQX', 'sqx', '115.179', '33.2952', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('8da63bccb9e1432683727fd0d58d0fc8', '210801', '市辖区', 'SXQ', 'sxq', null, null, '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('8dca292c3b9b4af793242d8e88a28d7c', '431001', '市辖区', 'SXQ', 'sxq', null, null, '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('8dd4223830cf4d96a29d0ff6a72e9abe', '230524', '饶河县', 'RHX', 'rhx', '133.729', '47.0726', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('8dd8505adbba421ea261d3deb559d017', '210503', '溪湖区', 'XHQ', 'xhq', '123.712', '41.4562', '2e142fb2a56c480a92b2cfdb06ed4d78');
INSERT INTO `t_area` VALUES ('8ddab26e6eee49609f1dcad80209d394', '630104', '城西区', 'CXQ', 'cxq', '101.728', '36.6316', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('8dde97938f05468b8acd065e17b44cbf', '371322', '郯城县', 'TCX', 'tcx', '118.324', '34.6499', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('8ddff39785ea4b90bbe92eec15596a16', '620103', '七里河区', 'QLHQ', 'qlhq', '103.772', '35.9925', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('8de2b231406d4da680ab159ad2f37e84', '210423', '清原满族自治县', 'QYMZZZX', 'qymzzzx', '124.924', '42.1189', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('8df7895988c8411c89df91f0b5085a4a', '611001', '市辖区', 'SXQ', 'sxq', null, null, '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('8df7dd79302540a0a9558b06954b9639', '110101', '东城区', 'DCQ', 'dcq', '116.422', '39.9386', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('8e08b2c68a4a4cb0919ea1af44673e39', '340300', '蚌埠市', 'BBS', 'bbs', '117.357', '32.9295', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('8e0d9355f2aa47209550f8ee81da2986', '211011', '太子河区', 'TZHQ', 'tzhq', '123.178', '41.2746', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('8e429e3cefea4929bd75a3ea79066817', '330211', '镇海区', 'ZHQ', 'zhq', '121.617', '29.9954', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('8e44e59710b8461eb3cbf97dbc5b1d42', '530801', '市辖区', 'SXQ', 'sxq', null, null, '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('8e6d1c80e4dd47ca95015b955f158223', '610202', '王益区', 'WYQ', 'wyq', '109.069', '35.07', '5e5f0ab02e004598b96a194ac2a8b3b0');
INSERT INTO `t_area` VALUES ('8ea6b57d65914abb95cd9df961824e09', '450107', '西乡塘区', 'XXTQ', 'xxtq', '108.215', '22.9129', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('8ebb7ec955f442d594575338c8545593', '220781', '扶余市', 'FYS', 'fys', '125.565', '45.1311', 'f208eee79d964759bf91d9cd7ca74233');
INSERT INTO `t_area` VALUES ('8ec34f802f124ee48fc9553fa6ddec8a', '321182', '扬中市', 'YZS', 'yzs', '119.845', '32.1895', 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('8ecb99f2d40847e48b2b7dd4574a42f0', '513225', '九寨沟县', 'JZGX', 'jzgx', '103.934', '33.3174', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('8ecf5bca5e0b4f5992020ef62be95475', '654025', '新源县', 'XYX', 'xyx', '83.5582', '43.3769', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('8ef1fb23f77b44e986a7331086e11434', '130323', '抚宁县', 'FNX', 'fnx', '119.395', '40.013', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('8efc983fc30c4b558d1b77ef5e5adf63', '530924', '镇康县', 'ZKX', 'zkx', '99.0057', '23.9011', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('8f311c259fdf438d9d323e689d8095ec', '511132', '峨边彝族自治县', 'EBYZZZX', 'ebyzzzx', '103.217', '29.0504', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('8f5dd4b4a70f4f13a8e3d74405d00ff1', '653023', '阿合奇县', 'AHQX', 'ahqx', '77.8916', '40.8553', '8cf7470b137a485abbb0b67123f45b60');
INSERT INTO `t_area` VALUES ('8f5e1d71c6574f2b9ef7c4d0aaf05819', '230722', '嘉荫县', 'JYX', 'jyx', '130.008', '48.7695', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('8f646d7dc885408c9c3e5ec10beda50d', '310230', '崇明县', 'CMX', 'cmx', '121.535', '31.6336', '946344c2974948ccb1104b63125edfbe');
INSERT INTO `t_area` VALUES ('8f98d0cd25384c0bb7bf59360e07526b', '522725', '瓮安县', 'WAX', 'wax', '107.421', '27.1723', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('8f9dc23e9fef474ea2023d894c42df59', '410611', '淇滨区', 'QBQ', 'qbq', '114.2', '35.8124', '52b9af85f16b4dcca76293c1077849a8');
INSERT INTO `t_area` VALUES ('8fa5c8fb179744a48ec7bf458eda7e03', '511011', '东兴区', 'DXQ', 'dxq', '105.202', '29.6281', '601b6ef239914e5a8764e6343d7a0573');
INSERT INTO `t_area` VALUES ('8fa977c3abcb4df5a5c12450d6e56624', '451225', '罗城仫佬族自治县', 'LCMLZZZX', 'lcmlzzzx', '108.827', '24.9046', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('8fc32e11dc404b8db1011cfd8d4923d8', '512081', '简阳市', 'JYS', 'jys', '104.536', '30.393', '3c821ffeeae24bb7af79ed2a7cf9edcd');
INSERT INTO `t_area` VALUES ('8fd2c47146f244ebbaa99225d8e76657', '410205', '禹王台区', 'YWTQ', 'ywtq', null, null, '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('8fe31d21168440189d1c40d7d9b9854f', '630000', '青海省', 'QHS', 'qhs', '96.2025', '35.4998', '0');
INSERT INTO `t_area` VALUES ('8ff4662845cf48468c7233464ce4090d', '420100', '武汉市', 'WHS', 'whs', '114.316', '30.5811', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('8ff5f6a347b24a1aa48f236c01baeaf5', '130533', '威县', 'WX', 'wx', '115.388', '37.0784', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('9053e13cade0499fa4b06e25b4e84842', '330100', '杭州市', 'HZS', 'hzs', '120.219', '30.2592', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('906fca9dbb274e90ae36095cddd4b274', '441521', '海丰县', 'HFX', 'hfx', '115.286', '22.9696', '9cc1b1b3078b418280f2ca711b950c35');
INSERT INTO `t_area` VALUES ('907961821550499fa66b6b5ee80fe6c5', '370921', '宁阳县', 'NYX', 'nyx', '116.933', '35.8336', 'a0708356d7d94688a614a34497b6c91c');
INSERT INTO `t_area` VALUES ('9081eb3cce774088aada5f587d5cd142', '511901', '市辖区', 'SXQ', 'sxq', null, null, 'c8dae369045f416782e3bc86fd3404ed');
INSERT INTO `t_area` VALUES ('90a9a7911aec425d9881056662b583ef', '341523', '舒城县', 'SCX', 'scx', '116.829', '31.31', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('90ac4c5038a34aaba00aca136816ffb8', '510802', '利州区', 'LZQ', 'lzq', '105.785', '32.4785', '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('90b82944275d4716a64373e473768aae', '610431', '武功县', 'WGX', 'wgx', '108.191', '34.3166', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('90b8d34e1d66486fbb245af9629e4e79', '211101', '市辖区', 'SXQ', 'sxq', null, null, '5e7d74ca7c6f4cf0888135c788ed5376');
INSERT INTO `t_area` VALUES ('90c03ee78c954ed6a969fa6561d86adc', '341225', '阜南县', 'FNX', 'fnx', '115.654', '32.6559', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('90e81029b50149b09c147b782499d3a1', '530322', '陆良县', 'LLX', 'llx', '103.707', '25.0376', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('90eafc2244ee4fcb9837121fc385e788', '610501', '市辖区', 'SXQ', 'sxq', null, null, '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('9116417d0cce4a17bfe2d4c67c9749ab', '130824', '滦平县', 'LPX', 'lpx', '117.37', '40.9248', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('91165f0bdd7d4e0d80d60ba9da21fa17', '340601', '市辖区', 'SXQ', 'sxq', null, null, '95697758c29f4043b537696892db2960');
INSERT INTO `t_area` VALUES ('91246ae709f04398b5f57d31258146de', '320982', '大丰市', 'DFS', 'dfs', '120.546', '33.1909', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('91296ce280074a42b037023847f4f900', '140524', '陵川县', 'LCX', 'lcx', '113.343', '35.6907', 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('91484a17e0c24a41a9a35c0691f7e207', '320211', '滨湖区', 'BHQ', 'bhq', '120.249', '31.4666', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('915e56aa88af4ee885220f2b072ad936', '530181', '安宁市', 'ANS', 'ans', '102.391', '24.8524', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('916ce4790d764072a3211660d999b12b', '150404', '松山区', 'SSQ', 'ssq', '118.757', '42.2688', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('9170e69ab0c84bb0b00091b65351dd2b', '320507', '相城区', 'XCQ', 'xcq', '120.647', '31.4508', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('918858d47db64e43bd8b613655b0eff2', '140830', '芮城县', 'RCX', 'rcx', '110.616', '34.7095', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('91a29ec3890a4a96bb89e4e994a5cd2e', '130126', '灵寿县', 'LSX', 'lsx', '114.188', '38.5109', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('91a5c5025c6b4fa285a008b30e215990', '620301', '市辖区', 'SXQ', 'sxq', null, null, 'fac48b142d78414782f7bcbffd85b3ad');
INSERT INTO `t_area` VALUES ('91c65237ca4845c98b91025a3b4010fe', '500114', '黔江区', 'QJQ', 'qjq', '108.715', '29.441', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('91dd105009184f26bba47c176810317f', '450422', '藤县', 'TX', 'tx', '110.779', '23.5109', '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('91e533fb1b974c839470f1652843fc3b', '411321', '南召县', 'NZX', 'nzx', '112.394', '33.4728', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('91fce8c76406481f905f219962e1c437', '410404', '石龙区', 'SLQ', 'slq', '112.895', '33.8921', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('920dd719c1884228a815ee19a01325b4', '420700', '鄂州市', 'EZS', 'ezs', '114.896', '30.3844', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('922f8d8924cb4bd6b6c203d9f746b63d', '341623', '利辛县', 'LXX', 'lxx', '116.166', '33.1574', 'fdfe40a0faff43159592cebf8e884365');
INSERT INTO `t_area` VALUES ('9237d86668bb47d7b4b22ac40ab17375', '230304', '滴道区', 'DDQ', 'ddq', '130.735', '45.3543', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('924d1773d80d45ec99142dcf7b74820d', '360823', '峡江县', 'XJX', 'xjx', '115.214', '27.5893', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('926f1738dc2248dc8a4ee8a9b21f8087', '360821', '吉安县', 'JAX', 'jax', '114.751', '27.144', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('928ef931854a412db15943f7e04e2a58', '513230', '壤塘县', 'RTX', 'rtx', '101.06', '32.1482', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('92a2bc94e51e4725bd81cfa5d3d52b49', '320500', '苏州市', 'SZS', 'szs', '120.62', '31.318', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('92c5916d6da8489b8fa7e9e3cd00d6aa', '371401', '市辖区', 'SXQ', 'sxq', null, null, '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('92cc431094ad4b08907b4e6e95866257', '130681', '涿州市', 'ZZS', 'zzs', '115.999', '39.4825', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('92dc3b0d06474c758057daa3daea55ba', '620201', '市辖区', 'SXQ', 'sxq', null, null, '1de834aad9d543e0a890e6d11c78fb6a');
INSERT INTO `t_area` VALUES ('92e1d0f3d90241c0800d1f5dd3986071', '411602', '川汇区', 'CHQ', 'chq', '114.658', '33.6309', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('92e67132d8f24038a360cdd908e6389e', '331125', '云和县', 'YHX', 'yhx', '119.542', '28.1313', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('92e720a646c84414b438a7b086b8f4ce', '640401', '市辖区', 'SXQ', 'sxq', null, null, '835ed2facd684917a081908db75b1fd8');
INSERT INTO `t_area` VALUES ('92e7261fb8da43ef9ffac11120b6556a', '620621', '民勤县', 'MQX', 'mqx', '103.202', '38.8277', 'd1effea105c14bbbbb4c8fe5fcf24e51');
INSERT INTO `t_area` VALUES ('92ed0ae2d91a4f0db4d2dd06f2431171', '230803', '向阳区', 'XYQ', 'xyq', '130.301', '47.3509', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('932a8bb34f1241b397497da3a3b5aa03', '340503', '花山区', 'HSQ', 'hsq', '118.578', '31.7116', 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('935226fa88484a63b495716309357dab', '130109', '藁城区', 'GCQ', 'gcq', '114.816', '38.0549', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('936a356a96554b20af25aa4cdfe651a4', '330106', '西湖区', 'XHQ', 'xhq', '115.899', '28.6573', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('9375c6b1085b4bfca9bef59675a6f1ab', '620122', '皋兰县', 'GLX', 'glx', '103.89', '36.3947', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('937950ecfda84e91b3d9d8a635de0693', '622900', '临夏回族自治州', 'LXHZZZZ', 'lxhzzzz', '103.215', '35.5985', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('93931f60bd424cbf9143e2f8c09d9d9a', '440983', '信宜市', 'XYS', 'xys', '111.125', '22.432', 'a5efe9509a6e4a0287e609aca6603955');
INSERT INTO `t_area` VALUES ('93ae4e9070794448991c770cce88c08d', '220821', '镇赉县', 'ZLX', 'zlx', '123.452', '45.9562', 'b7600da1f75d4d42b3a1d532574b77e8');
INSERT INTO `t_area` VALUES ('93c9cee8b7504063b6b0c638e2bf3720', '511525', '高县', 'GX', 'gx', '104.593', '28.4632', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('93fd8874c79a415cb60359d53a1a530a', '420117', '新洲区', 'XZQ', 'xzq', '114.762', '30.8039', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('94115fb085054b32851423b83895cfab', '130630', '涞源县', 'LYX', 'lyx', '114.73', '39.3669', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('9411f732edb94403be255af8edf6298c', '320901', '市辖区', 'SXQ', 'sxq', null, null, '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('94254868392349baa57b7bdfd8215eda', '420600', '襄阳市', 'XYS', 'xys', '112.25', '32.2292', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('944ad09839124a84816b6b9cf394a679', '220701', '市辖区', 'SXQ', 'sxq', null, null, 'f208eee79d964759bf91d9cd7ca74233');
INSERT INTO `t_area` VALUES ('946344c2974948ccb1104b63125edfbe', '310200', '县', 'X', 'x', null, null, 'fae145ffed5e43a290fc9b96e7503ab0');
INSERT INTO `t_area` VALUES ('946b64dc4a8940b6a78fa0708187e3be', '370829', '嘉祥县', 'JXX', 'jxx', '116.307', '35.4342', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('946cd2dc4dee461c83f092f08b03cfdb', '350427', '沙县', 'SX', 'sx', '117.819', '26.4465', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('946edb158c52463baa9f686e96e9f85d', '340202', '镜湖区', 'JHQ', 'jhq', '118.387', '31.352', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('94b2b5c7da0c42508b550d2b4a6e4970', '650203', '克拉玛依区', 'KLMYQ', 'klmyq', '84.927', '45.2039', '0b8769d2deca47f3ba9e14693af656cc');
INSERT INTO `t_area` VALUES ('94dd07f159ec42869708e77334f1a155', '361024', '崇仁县', 'CRX', 'crx', '116.066', '27.7145', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('94df4dccd70a4092aff326f285100eb1', '130428', '肥乡县', 'FXX', 'fxx', '114.837', '36.5773', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('94e39f57d7b545e9963d095f4ba764d1', '520602', '碧江区', 'BJQ', 'bjq', null, null, '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('94f90ace7b0c4854b64612c11a7d2dcb', '361029', '东乡县', 'DXX', 'dxx', '116.62', '28.2213', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('94f9ee1d634645728806698b0bb77c9c', '610829', '吴堡县', 'WBX', 'wbx', '110.692', '37.5949', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('94fbd360ab114e599dbc7fccbb59a832', '430800', '张家界市', 'ZJJS', 'zjjs', '110.482', '29.1249', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('95079c41f715483282c67dba26aec807', '650201', '市辖区', 'SXQ', 'sxq', null, null, '0b8769d2deca47f3ba9e14693af656cc');
INSERT INTO `t_area` VALUES ('951828669ddf4f79a2cea6bbd23e0cec', '622927', '积石山保安族东乡族撒拉族自治县', 'JSSBAZDXZSLZZZX', 'jssbazdxzslzzzx', '102.903', '35.719', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('95204bf1df33438d85f17ec784117374', '321311', '宿豫区', 'SYQ', 'syq', '118.344', '34.0095', '6cc757f4428c4ab9a7f5783a328ea2af');
INSERT INTO `t_area` VALUES ('95216d51eec640cb9d43f7f43e941ecb', '341001', '市辖区', 'SXQ', 'sxq', null, null, '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('95491c82f0df4123a6509f6a68a9e587', '341226', '颍上县', 'YSX', 'ysx', '116.265', '32.6625', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('95519f7888a14bd3976b3a7031c07434', '210601', '市辖区', 'SXQ', 'sxq', null, null, 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('95538c6c76f74ef29cde8e03483d74e9', '330212', '鄞州区', 'YZQ', 'yzq', '121.538', '29.7855', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('955b13abca834e54aff1078da5c2e7b4', '320105', '建邺区', 'JYQ', 'jyq', '118.713', '32.0125', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('95697758c29f4043b537696892db2960', '340600', '淮北市', 'HBS', 'hbs', '116.791', '33.96', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('957e9802dfec40e3bb72b99760669b07', '411725', '确山县', 'QSX', 'qsx', '113.964', '32.712', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('95a34c58ff894a57949b82291e40a1e0', '210211', '甘井子区', 'GJZQ', 'gjzq', '121.529', '38.9555', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('95a7d0cea6ff4a0f9e5c158d45728615', '341023', '黟县', 'YX', 'yx', '117.911', '30.0148', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('95b7db0eae474fefba22cc7fd26e07aa', '652829', '博湖县', 'BHX', 'bhx', '86.8854', '41.8579', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('95ddd8f99e9f4bce9ba008265b3a051b', '150203', '昆都仑区', 'KDLQ', 'kdlq', '109.807', '40.6581', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('95e1eeb0504d4b26a9fd4ae0b9c16c6e', '511902', '巴州区', 'BZQ', 'bzq', '106.739', '31.7853', 'c8dae369045f416782e3bc86fd3404ed');
INSERT INTO `t_area` VALUES ('95f2fe8c81e94a80a64112f5642ad98b', '371402', '德城区', 'DCQ', 'dcq', '116.333', '37.4574', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('95f4e1b11a834442a47cfe975a58e678', '430112', '望城区', 'WCQ', 'wcq', null, null, '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('95f60a2552c045e0a21fd49a49e5c65f', '360801', '市辖区', 'SXQ', 'sxq', null, null, '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('96096cf2ae434371ba1c064cb960f58f', '210603', '振兴区', 'ZXQ', 'zxq', '124.356', '40.067', 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('96114220e03c464e9bb849365838e871', '460107', '琼山区', 'QSQ', 'qsq', '110.48', '19.7413', '5f0de73ecf1b4cbda3e05787d278d892');
INSERT INTO `t_area` VALUES ('961a69463b6a4f4cb7e3c71af8e14537', '610204', '耀州区', 'YZQ', 'yzq', '108.836', '35.032', '5e5f0ab02e004598b96a194ac2a8b3b0');
INSERT INTO `t_area` VALUES ('961f5dcdf5244220a992f90e39dd0fb7', '520422', '普定县', 'PDX', 'pdx', '105.743', '26.3457', '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('961fac56452c4e71af664f09e09638bd', '320700', '连云港市', 'LYGS', 'lygs', '119.174', '34.6015', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('963f811c18f244719c56c96a49bfa185', '360622', '余江县', 'YJX', 'yjx', '116.922', '28.3211', 'e3608de815dd4b8e825407c8b73f5700');
INSERT INTO `t_area` VALUES ('964cc398809d46d38aed70e9bfe5dd66', '511824', '石棉县', 'SMX', 'smx', '102.294', '29.2355', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('96680ac09f2f4c90b5d031ee340a4cb9', '542228', '洛扎县', 'LZX', 'lzx', '90.8736', '28.2169', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('96996b7672c040b1a3cff6245c39f54b', '361128', '鄱阳县', 'PYX', 'pyx', '116.788', '29.2431', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('96b006ae0d10401d8b64c94670412af0', '530111', '官渡区', 'GDQ', 'gdq', '102.829', '25.0313', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('96c6d0e5280b420697c231edd8c88121', '430901', '市辖区', 'SXQ', 'sxq', null, null, 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('96c98a66039d45a188a2292ebb86009b', '513427', '宁南县', 'NNX', 'nnx', '102.717', '27.0912', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('96d68a0e3b9640d4b162fa7fafaad5b9', '522727', '平塘县', 'PTX', 'ptx', '107.113', '25.7918', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('96e5acfb10554acfb3066b59a03377cf', '231201', '市辖区', 'SXQ', 'sxq', null, null, '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('972b1b0676314adb9986b10a70812a0c', '540236', '萨嘎县', 'SGX', 'sgx', '85.0836', '29.4021', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('97315cf6b4b04e858f30444233cf72ab', '360922', '万载县', 'WZX', 'wzx', '114.336', '28.2095', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('9732f5632cf14fa9953ab49c799b502d', '371329', '临沭县', 'LSX', 'lsx', '118.659', '34.8855', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('973dc9510b1f4221af644a288e0bf5d6', '361025', '乐安县', 'LAX', 'lax', '115.843', '27.3724', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('975fc17aae1e41e09c36e2c3ae95d5d1', '330800', '衢州市', 'QZS', 'qzs', '118.876', '28.9569', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('97683280366f46fe9bd68bec136f6fbc', '621002', '西峰区', 'XFQ', 'xfq', '107.674', '35.6772', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('97795d6b80b74065adf0b7614349e019', '450881', '桂平市', 'GPS', 'gps', '110.087', '23.3333', 'b93e28fad1454605a81753c740e0b00d');
INSERT INTO `t_area` VALUES ('979600017d71462da74c351626ad00ed', '411626', '淮阳县', 'HYX', 'hyx', '114.902', '33.7099', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('97d505a7b4e04cc3a8cd58dbeea9f78d', '150425', '克什克腾旗', 'KSKTQ', 'ksktq', '117.359', '43.2182', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('97ed20c4256946c782355651adaf84e5', '220381', '公主岭市', 'GZLS', 'gzls', '124.686', '43.7918', 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('97f07cf945cc45c6ab8818f1bd5d1dbd', '450122', '武鸣县', 'WMX', 'wmx', '108.26', '23.2581', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('97f0a91ba964410cb649f897197068f1', '370113', '长清区', 'ZQQ', 'zqq', '116.804', '36.4286', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('97f900de88c04790b483a7b403609fdd', '321102', '京口区', 'JKQ', 'jkq', '119.585', '32.202', 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('983084f71c2a4c138e28d5943a3b9282', '511129', '沐川县', 'MCX', 'mcx', '103.826', '29.0069', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('985612b2d008410ca2598fff8780f20e', '411724', '正阳县', 'ZYX', 'zyx', '114.498', '32.5469', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('9875cf7e1ec34ee888bdff0dc041e091', '330481', '海宁市', 'HNS', 'hns', '120.619', '30.4422', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('9892bd4e9fce48449599641a56218f97', '210911', '细河区', 'XHQ', 'xhq', '121.628', '42.0433', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('98ae64dbe7e148bbac4e8eba12652dce', '542527', '措勤县', 'CQX', 'cqx', '85.2103', '30.7499', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('98cf43ebfa984decb7a3c9a3bc1e3871', '532929', '云龙县', 'YLX', 'ylx', '99.3101', '25.8941', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('98e23eae832d418389f251a41c73e35b', '130802', '双桥区', 'SQQ', 'sqq', '117.948', '40.9714', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('98e2bc6be4c2409084323d3ba109ea44', '330324', '永嘉县', 'YJX', 'yjx', '120.669', '28.3364', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('991c66e10a3742b0bb28f52e3c364afa', '360481', '瑞昌市', 'RCS', 'rcs', '115.46', '29.6285', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('991ccc885e7c424ca1f247c6dd08837b', '533421', '香格里拉县', 'XGLLX', 'xgllx', '99.8316', '27.9074', '71395c0ccf984e44a1a7c1cdd4731c8c');
INSERT INTO `t_area` VALUES ('99350e276da042f79e1bbc924f0bd2b3', '330122', '桐庐县', 'TLX', 'tlx', '119.56', '29.8366', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('9943227304074af6926ec6bf10eb6fee', '371603', '沾化区', 'ZHQ', 'zhq', '118.09', '37.7873', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('99528f18888d4610a04ec21ab5fdc528', '131000', '廊坊市', 'LFS', 'lfs', '116.704', '39.5186', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('99582756a1bb4b4494980628d7205269', '653024', '乌恰县', 'WQX', 'wqx', '74.9215', '39.8346', '8cf7470b137a485abbb0b67123f45b60');
INSERT INTO `t_area` VALUES ('995e86106cd8460bb2a2e8a5ceb89157', '130923', '东光县', 'DGX', 'dgx', '116.678', '37.8875', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('9969dd10d8894f3994db5ce8d9d8cf63', '530802', '思茅区', 'SMQ', 'smq', '100.855', '22.7391', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('9991283793c6431e8b1fba8d21bbdf0d', '469026', '昌江黎族自治县', 'CJLZZZX', 'cjlzzzx', '109.011', '19.2225', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('999d2b9c16fb43d0b0e82b674d971c8e', '350600', '漳州市', 'ZZS', 'zzs', '117.676', '24.5171', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('99a87a64da2d4ba2a323a9c02e64a49c', '150801', '市辖区', 'SXQ', 'sxq', null, null, 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('99a99e1d24c241eebef044616ae01f3d', '320204', '北塘区', 'BTQ', 'btq', '120.282', '31.6094', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('99c9b43c047f47519ab6822694b34de4', '130531', '广宗县', 'GZX', 'gzx', '115.198', '37.0835', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('99dbfa20a23545748848879057ad1925', '513335', '巴塘县', 'BTX', 'btx', '99.3003', '29.9163', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('99e4bde176e147aa945cb8807ae9ae04', '410506', '龙安区', 'LAQ', 'laq', '114.257', '36.056', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('9a126ddc35374f7f94714b488dd3c0e1', '211322', '建平县', 'JPX', 'jpx', '119.633', '41.8422', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('9a1a28895db64a2496310c042435ae6d', '511300', '南充市', 'NCS', 'ncs', '106.106', '30.801', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('9a1d20efdaa0484ab9712d224a086377', '350426', '尤溪县', 'YXX', 'yxx', '118.254', '26.1506', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('9a23ab3ebb5744ceb982cf41f642706f', '420529', '五峰土家族自治县', 'WFTJZZZX', 'wftjzzzx', '110.71', '30.1732', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('9a364bc6aa39433d9268cd943f647af8', '640425', '彭阳县', 'PYX', 'pyx', '106.662', '35.9725', '835ed2facd684917a081908db75b1fd8');
INSERT INTO `t_area` VALUES ('9a36aa6e0f6749738e04461f4a3a3d1c', '210123', '康平县', 'KPX', 'kpx', '123.274', '42.7655', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('9a41669f1038431fb71604d9d39ad12d', '510301', '市辖区', 'SXQ', 'sxq', null, null, 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('9a58c8be2f5a486b812e149ce31cabe0', '370705', '奎文区', 'KWQ', 'kwq', '119.197', '36.6912', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('9a73992fe6a44419b91d244c2d853170', '433124', '花垣县', 'HYX', 'hyx', '109.439', '28.4317', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('9a875b8ae8644a87add0958c6221062c', '654202', '乌苏市', 'WSS', 'wss', '84.2779', '44.4077', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('9a9abf1f018c4b91807ff820480cc7aa', '320303', '云龙区', 'YLQ', 'ylq', '117.276', '34.2225', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('9aa1531d7e4c4d9297620fb3aabbc8a7', '532329', '武定县', 'WDX', 'wdx', '102.201', '25.7311', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('9aac8e6852114aeaae087275dcda7b05', '330900', '舟山市', 'ZSS', 'zss', '122.17', '30.036', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('9af20d1954954312820e422e5b8c7f13', '140302', '城区', 'CQ', 'cq', null, null, '24208d947e4e4ccaaaf04a187d57ccf4');
INSERT INTO `t_area` VALUES ('9b02ca76faa04b309bd03b8fed93f7c2', '371602', '滨城区', 'BCQ', 'bcq', '117.981', '37.4249', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('9b14eaae0df642cabb74fdfa8d0758b9', '140829', '平陆县', 'PLX', 'plx', '111.251', '34.8886', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('9b15379b0bb64f8dab088b7dc0a8bbf5', '130131', '平山县', 'PSX', 'psx', '113.872', '38.4088', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('9b35a8f610aa4f59a3117234da84461c', '140223', '广灵县', 'GLX', 'glx', '114.162', '39.769', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('9b3a70776c1d44e59ae749ec301248f9', '441202', '端州区', 'DZQ', 'dzq', '112.478', '23.1033', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('9b48f0b307f14d0eba0ee9598e6289f5', '310115', '浦东新区', 'PDXQ', 'pdxq', '121.638', '31.2309', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('9b4a60b617c340dc949b3ce9ade7e7bb', '232721', '呼玛县', 'HMX', 'hmx', '124.912', '51.8131', 'dd9e89b2d7d34966b05b60de6cd7c10a');
INSERT INTO `t_area` VALUES ('9b740cc12f1d4045b7daa4a1d218e277', '511827', '宝兴县', 'BXX', 'bxx', '102.717', '30.5676', 'dd6ce88b01ba4855a9d4bbc7db50681a');
INSERT INTO `t_area` VALUES ('9b8b745246304ea384fdc391a73d03fb', '140826', '绛县', 'JX', 'jx', '111.645', '35.4986', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('9b8dbbbf56754acfaed24b1642563982', '130625', '徐水县', 'XSX', 'xsx', '115.58', '39.0419', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('9b8fa7858b334f54b3b2517a36e8e0b8', '500115', '长寿区', 'ZSQ', 'zsq', '107.147', '29.9605', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('9b993b8ee832404a99ced4492a40b5eb', '440901', '市辖区', 'SXQ', 'sxq', null, null, 'a5efe9509a6e4a0287e609aca6603955');
INSERT INTO `t_area` VALUES ('9b9f87543095487fb67d4b4470dc2dbe', '632525', '贵南县', 'GNX', 'gnx', '100.885', '35.6981', 'fb615a43a9174dadbc6ee2aa863265c9');
INSERT INTO `t_area` VALUES ('9ba6720978c44f41912b75a6755a8a61', '430721', '安乡县', 'AXX', 'axx', '112.162', '29.449', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('9bba71b39c284a0ca49958faf6096ddb', '140700', '晋中市', 'JZS', 'jzs', '112.739', '37.6934', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('9bc39b1f99054f888aad3a19e3dba29b', '210804', '鲅鱼圈区', 'BYQQ', 'byqq', '122.177', '40.2526', '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('9bcf10aa8e5b4a06bd3be18248cb385b', '370828', '金乡县', 'JXX', 'jxx', '116.315', '35.0512', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('9bd74f5bb7604bf2b6b17cfd9094ae40', '150701', '市辖区', 'SXQ', 'sxq', null, null, 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('9bd9d8491c154f9585c310b7ae8c2de4', '450903', '福绵区', 'FMQ', 'fmq', null, null, '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('9be08e0d35ac4101bb79c845f766061d', '450405', '长洲区', 'ZZQ', 'zzq', '111.19', '23.5602', '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('9be15a0d529a4e5f9fef94e6295427ea', '350300', '莆田市', 'PTS', 'pts', '119.078', '25.4485', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('9c13bcb604614251a2d3fe0a3eb95328', '610427', '彬县', 'BX', 'bx', '108.068', '35.0518', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('9c14df17509c455aad849fcba75681c7', '450331', '荔浦县', 'LPX', 'lpx', '110.368', '24.5253', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('9c3b629914cd48568f053c436585abb6', '361100', '上饶市', 'SRS', 'srs', '117.955', '28.4576', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('9c6e314143124e5f9575cb5f6d13e381', '130130', '无极县', 'WJX', 'wjx', '114.951', '38.1833', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('9c71f97caafc405d9d1c0104a2d5e280', '430702', '武陵区', 'WLQ', 'wlq', '111.697', '28.9969', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('9c77959c9c894df597b7f522bc6f09e5', '530826', '江城哈尼族彝族自治县', 'JCHNZYZZZX', 'jchnzyzzzx', '101.797', '22.6257', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('9ca6454c6c564b78b7bf867f75aec6c4', '411600', '周口市', 'ZKS', 'zks', '114.654', '33.6237', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('9cb7381a0c494fabbc4fb6814480b1de', '520627', '沿河土家族自治县', 'YHTJZZZX', 'yhtjzzzx', '108.344', '28.6243', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('9cb84f687da740cd84070fd95ede4aa5', '621024', '合水县', 'HSX', 'hsx', '108.317', '36.0143', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('9cc1b1b3078b418280f2ca711b950c35', '441500', '汕尾市', 'SWS', 'sws', '115.373', '22.7787', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('9cc2f331d4a640beb3e9ec8646a29be1', '230903', '桃山区', 'TSQ', 'tsq', '130.993', '45.7701', 'b50634da14764d0cae033c7cac9db0a6');
INSERT INTO `t_area` VALUES ('9cd2fce001714b879def529409577d28', '211004', '宏伟区', 'HWQ', 'hwq', '123.221', '41.2208', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('9cf02b4848fc426d98ae403897a4152a', '210281', '瓦房店市', 'WFDS', 'wfds', '121.791', '39.709', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('9d24fb09a8b2418da5126b93d74cdcd6', '120111', '西青区', 'XQQ', 'xqq', '117.126', '39.0351', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('9d4a2fdc69bf485194e14fcf8ffd1d1c', '210304', '立山区', 'LSQ', 'lsq', '123.04', '41.1642', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('9d4e7528bb174255b9c03bc53b21062f', '522635', '麻江县', 'MJX', 'mjx', '107.619', '26.4683', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('9d7543c9d6f54f5e9323a73415a09fef', '350625', '长泰县', 'ZTX', 'ztx', '117.813', '24.7446', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('9d774bd359f646d5b6833322588d2784', '370781', '青州市', 'QZS', 'qzs', '118.47', '36.6806', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('9d80e4e245d444d7981210e3a3ef5783', '150421', '阿鲁科尔沁旗', 'ALKEQQ', 'alkeqq', '120.053', '44.196', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('9d8114427d624f238f3b19f48e7b8e0c', '433101', '吉首市', 'JSS', 'jss', '109.771', '28.3171', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('9d91235898d24ba180bad584e9e33cc3', '430224', '茶陵县', 'CLX', 'clx', '113.652', '26.8067', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('9d9d8cdfe5e640a3b9219b08e486d922', '542521', '普兰县', 'PLX', 'plx', '81.5306', '30.6371', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('9da5ad98c17c4c53ac677ad0916bc8fc', '130684', '高碑店市', 'GBDS', 'gbds', '116.041', '39.2651', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('9de8574b48f4406e95a9c357e36b2fe3', '210181', '新民市', 'XMS', 'xms', '122.866', '42.0168', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('9dea3236ce6e4a1ea77d2f6962a5ab1a', '430105', '开福区', 'KFQ', 'kfq', '113.025', '28.2602', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('9df5e7eb00dc46b98ff1740b3b35438f', '371328', '蒙阴县', 'MYX', 'myx', '118.037', '35.7474', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('9dfce1e839434f3aa4f637b65467aec7', '220106', '绿园区', 'LYQ', 'lyq', '125.191', '43.9122', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('9dfebdb174c744ccb1e9ac03f0d6c686', '610400', '咸阳市', 'XYS', 'xys', '108.708', '34.3454', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('9e02e10931db4b6ab030494fa5e3c1bd', '370103', '市中区', 'SZQ', 'szq', null, null, '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('9e14ddffb4044dc2bc9293c8b22fb976', '360421', '九江县', 'JJX', 'jjx', '115.842', '29.6402', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('9e5b5cee7aef4152b344caef0de99ba5', '411481', '永城市', 'YCS', 'ycs', '116.331', '33.972', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('9e7753c52c61401796e167522f40a1dd', '140821', '临猗县', 'LYX', 'lyx', '110.626', '35.1494', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('9e8bff40980149178c5f89f578f1b76f', '610730', '佛坪县', 'FPX', 'fpx', '107.929', '33.5499', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('9e944bee17bc40c689b5aed7378964b2', '230406', '东山区', 'DSQ', 'dsq', '130.247', '47.4837', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('9ea13a961c914130bf2d6096bed1e063', '500113', '巴南区', 'BNQ', 'bnq', '106.758', '29.378', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('9eb88229bdc14c5f81329e1508c53eba', '230707', '新青区', 'XQQ', 'xqq', '129.787', '48.2161', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('9ebd7d1f16f549eebad912bae208d75c', '130523', '内丘县', 'NQX', 'nqx', null, null, '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('9ed69b9f3c274cc7b606d4ae9b3e8457', '321322', '沭阳县', 'SYX', 'syx', '118.858', '34.154', '6cc757f4428c4ab9a7f5783a328ea2af');
INSERT INTO `t_area` VALUES ('9edd76481be64ea188861265865b4c8a', '654027', '特克斯县', 'TKSX', 'tksx', '82.0069', '42.9256', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('9ede3127ed5945879801c9564b87cde9', '610526', '蒲城县', 'PCX', 'pcx', '109.628', '34.9677', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('9edf65dba69d4c02b3a22cd12bf7e408', '150924', '兴和县', 'XHX', 'xhx', '113.774', '40.9527', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('9f05ac825c714b6e9cb7b956fc32b776', '140900', '忻州市', 'XZS', 'xzs', '112.728', '38.461', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('9f3131173a2a4a3abd4dda3bd60ca812', '450601', '市辖区', 'SXQ', 'sxq', null, null, 'b20c1f95e080453d8c1ff1efe0f64d53');
INSERT INTO `t_area` VALUES ('9f826a8e6c604f959460b427e0e71f5d', '445281', '普宁市', 'PNS', 'pns', '116.078', '23.289', '0d5e23ba42e5437086e944e6d3dfc2a6');
INSERT INTO `t_area` VALUES ('9f8eb1b8f3534fd79134be80f67d5f79', '140211', '南郊区', 'NJQ', 'njq', '113.226', '40.0519', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('9f9089c8477e4918a3f4de4c8e5c98c6', '540225', '拉孜县', 'LZX', 'lzx', '87.8584', '29.1799', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('9f9bc9c85608485187dd310cb2f1f7e9', '110117', '平谷区', 'PGQ', 'pgq', '117.15', '40.2159', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('9f9e696d68b9496aab229cb2e57f8bb4', '331122', '缙云县', 'JYX', 'jyx', '120.192', '28.6663', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('9fad9289d12544f79be6d241de2a4fc1', '150784', '额尔古纳市', 'EEGNS', 'eegns', '120.653', '51.6608', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('9fbd5c86462546e296387811a358cf7e', '321012', '江都区', 'JDQ', 'jdq', '119.702', '32.5399', 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('9fbdf72894a142afb6e1056fb5e75409', '510411', '仁和区', 'RHQ', 'rhq', '101.67', '26.5679', '0a8760be3d9048039147c8bc7191826d');
INSERT INTO `t_area` VALUES ('9fd3dd88b37346ceb1e0433611415b4f', '220722', '长岭县', 'ZLX', 'zlx', '123.867', '44.3056', 'f208eee79d964759bf91d9cd7ca74233');
INSERT INTO `t_area` VALUES ('9fe2404f42424e86b885ecf097b7fc7f', '141034', '汾西县', 'FXX', 'fxx', '111.483', '36.6428', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('9fe5c827117d4706a966ea52495441c5', '110102', '西城区', 'XCQ', 'xcq', '116.373', '39.9343', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('9fee83034cc6406291826675b77d2cdb', '150200', '包头市', 'BTS', 'bts', '109.846', '40.6471', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('a00af88dfa1343a1a612d92bf70e80df', '350103', '台江区', 'TJQ', 'tjq', '119.324', '26.0622', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('a0193195e65c4d6fb9361e239d737281', '340100', '合肥市', 'HFS', 'hfs', '117.283', '31.8669', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('a02026f8212e4e959252e1291d16c959', '360430', '彭泽县', 'PZX', 'pzx', '116.629', '29.8346', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('a02f8428d06f46a4a93bac7ea74cdb85', '620821', '泾川县', 'JCX', 'jcx', '107.441', '35.3541', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('a03d13c1207f4ddcb2dfce63773dcf9c', '371427', '夏津县', 'XJX', 'xjx', '116.037', '37.0167', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('a03d662a238a45ca9254ca4c9d3a4f4c', '371325', '费县', 'FX', 'fx', '117.986', '35.255', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('a0455f1a3eb64583a9ca0f1f095d7566', '420113', '汉南区', 'HNQ', 'hnq', '113.963', '30.2871', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('a04a2876225a4fda8f26c446633c4cad', '511323', '蓬安县', 'PAX', 'pax', '106.429', '31.0071', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('a05463a63bdf428da3ae32b01ff3a006', '510501', '市辖区', 'SXQ', 'sxq', null, null, '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('a0708356d7d94688a614a34497b6c91c', '370900', '泰安市', 'TAS', 'tas', '117.089', '36.1881', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('a09c4dc645494899aee68a149febfade', '542221', '乃东县', 'NDX', 'ndx', '91.832', '29.2131', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('a0ebe8976d9340e2a0e9c21785b86db4', '211001', '市辖区', 'SXQ', 'sxq', null, null, 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('a0f8374070af445fbbf4a35b725694c1', '511529', '屏山县', 'PSX', 'psx', '103.999', '28.7024', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('a100d31d55cb4a6d86ee8688147120d2', '230601', '市辖区', 'SXQ', 'sxq', null, null, '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('a11213da77e94f218c648b14f9d8095c', '632322', '尖扎县', 'JZX', 'jzx', '101.85', '35.9187', 'd6d7ccae9a0a40f7a2160b9fc4aec623');
INSERT INTO `t_area` VALUES ('a1268715deac495fbe9fd09ad60b8d6c', '445224', '惠来县', 'HLX', 'hlx', '116.225', '23.034', '0d5e23ba42e5437086e944e6d3dfc2a6');
INSERT INTO `t_area` VALUES ('a133587cf5c54d74bd9317a41271c9e7', '632523', '贵德县', 'GDX', 'gdx', '101.416', '36.0105', 'fb615a43a9174dadbc6ee2aa863265c9');
INSERT INTO `t_area` VALUES ('a1427683e96d41849738e0479ac9ab2d', '230100', '哈尔滨市', 'HEBS', 'hebs', '126.658', '45.7732', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('a1433b240abd4e349fb27f6c5dcb0fae', '320206', '惠山区', 'HSQ', 'hsq', '120.215', '31.6564', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('a16dc896535b4556a394ca503cd8a8a8', '522722', '荔波县', 'LBX', 'lbx', '107.93', '25.4013', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('a16ed532361e4a5ca4754fb37e68b62b', '450102', '兴宁区', 'XNQ', 'xnq', '108.418', '22.9245', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('a18c6d963ed243aa9d58463ef2eaaa23', '410100', '郑州市', 'ZZS', 'zzs', '113.65', '34.7566', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('a191a07a6d324646b7944c0a72e9c45e', '220622', '靖宇县', 'JYX', 'jyx', '126.902', '42.45', 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('a1a2d167b06d4f1ea40a21299f2a2a0c', '310105', '长宁区', 'ZNQ', 'znq', '121.388', '31.2133', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('a1a40150f38740f1a78db01b83540950', '220500', '通化市', 'THS', 'ths', '125.943', '41.7364', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('a1a4b7e31c404e9aa9945ae8e2ae5eea', '430821', '慈利县', 'CLX', 'clx', '110.936', '29.3977', '94fbd360ab114e599dbc7fccbb59a832');
INSERT INTO `t_area` VALUES ('a1b323a8c6a44f9fa57848b54fb31e9e', '220281', '蛟河市', 'JHS', 'jhs', '127.352', '43.7168', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('a1cc270dc91d4bcbb8648c3d280d963d', '152523', '苏尼特左旗', 'SNTZQ', 'sntzq', '113.14', '44.0392', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('a1d8b7c53e4c4b99a9097516b0253e11', '110106', '丰台区', 'FTQ', 'ftq', '116.258', '39.8419', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('a1da4e30ecfb43718410c05628f7bd3d', '321001', '市辖区', 'SXQ', 'sxq', null, null, 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('a1f5e0d10e9a4cba8298dd873ba839b8', '411222', '陕县', 'SX', 'sx', '111.376', '34.6436', '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('a1f63860c4d84326b455688f186bb057', '331101', '市辖区', 'SXQ', 'sxq', null, null, '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('a20ab48213824c71a350b291e39921f7', '420201', '市辖区', 'SXQ', 'sxq', null, null, '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('a227784f358442dea771aae012fc3b76', '341124', '全椒县', 'QJX', 'qjx', '118.106', '32.0699', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('a2290331b16645a6b392606c0beca81c', '141124', '临县', 'LX', 'lx', '110.901', '37.9629', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('a238d93c3acc4d659ea6c58a56a4b78a', '140221', '阳高县', 'YGX', 'ygx', '113.823', '40.2223', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('a240e9edc14a4d799ac1783c3991f8e6', '110107', '石景山区', 'SJSQ', 'sjsq', '116.185', '39.9389', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('a2422fa854c747f0b0b1ce3a8d1eddfd', '420703', '华容区', 'HRQ', 'hrq', '114.701', '30.4731', '920dd719c1884228a815ee19a01325b4');
INSERT INTO `t_area` VALUES ('a247480e440a410d85d64c82ce4b2238', '320804', '淮阴区', 'HYQ', 'hyq', '118.936', '33.6641', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('a24973d3e45b4b9286c1944a55dad1d7', '520323', '绥阳县', 'SYX', 'syx', '107.204', '28.1464', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('a25f1f979cc24fc1a01b236b3524f8cb', '450702', '钦南区', 'QNQ', 'qnq', '108.817', '21.8967', '7ed79c566cfb42e39424806a872e2f61');
INSERT INTO `t_area` VALUES ('a25fc68ff3504f20bb9a54058f792c16', '610800', '榆林市', 'YLS', 'yls', '109.746', '38.2794', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('a265bc95e3db4746a991cc3f1a9e87d6', '330802', '柯城区', 'KCQ', 'kcq', '118.813', '28.9985', '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('a27993c7f3ad4345b049d21f41d9be47', '431226', '麻阳苗族自治县', 'MYMZZZX', 'mymzzzx', '109.729', '27.7914', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('a28922a2e2ac4e3591b1f7beb5fcbd05', '150400', '赤峰市', 'CFS', 'cfs', '118.931', '42.2971', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('a28993f442304376bc1670da6fe31403', '341181', '天长市', 'TZS', 'tzs', '118.973', '32.7212', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('a289fb08393843d4a7c44986117d3871', '370402', '市中区', 'SZQ', 'szq', null, null, '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('a28d4bdec8b24982a289e8ae3ef898a9', '371621', '惠民县', 'HMX', 'hmx', '117.579', '37.376', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('a298d777bce54097926a87eb1ab5f7cd', '230505', '四方台区', 'SFTQ', 'sftq', '131.309', '46.6698', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('a2a122cab3ac464ab4d375ff954a144a', '623001', '合作市', 'HZS', 'hzs', '103.086', '34.9973', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('a2c7db993b0c43bbbc9103ceed36c4ba', '340621', '濉溪县', 'SXX', 'sxx', '116.737', '33.6932', '95697758c29f4043b537696892db2960');
INSERT INTO `t_area` VALUES ('a2d2218ef0f04ca59334b485610c59bc', '510904', '安居区', 'AJQ', 'ajq', '105.414', '30.3635', 'fe672e515db8472e87574333b48c3e45');
INSERT INTO `t_area` VALUES ('a2de80bc451e474d8af2b6c7cb4e0250', '230400', '鹤岗市', 'HGS', 'hgs', '130.292', '47.3387', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('a2f038b8ef7544d88050eebb4c9a03f7', '140202', '城区', 'CQ', 'cq', null, null, '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('a2f142aec32442ae8525bfe40fe36d48', '230606', '大同区', 'DTQ', 'dtq', '124.699', '46.07', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('a2f393cf8b1d4260bbb6d69eb7f89bb2', '522323', '普安县', 'PAX', 'pax', '105', '25.7278', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('a31071d2f613486e8fc65a4f4bff9064', '511502', '翠屏区', 'CPQ', 'cpq', '104.693', '28.8158', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('a32ebacb042f41d9b41e8fa631343d23', '450327', '灌阳县', 'GYX', 'gyx', '111.078', '25.4589', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('a3418ce9297c4ad5a3659101adab5bfa', '350124', '闽清县', 'MQX', 'mqx', '118.779', '26.2123', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('a3581e20ae1140d6be9faf1d2c89ea21', '510822', '青川县', 'QCX', 'qcx', '105.19', '32.5159', '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('a35cb993435546f99b63e4b2614bf1b6', '211422', '建昌县', 'JCX', 'jcx', '119.835', '40.7168', 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('a380df9898e841a3b209fd381fc4caea', '653223', '皮山县', 'PSX', 'psx', '78.5219', '37.2283', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('a38ea1e6433d4a1d963e3cc3ac904cf8', '610429', '旬邑县', 'XYX', 'xyx', '108.494', '35.2168', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('a3a293d6c9184636bb7167a977c4d045', '340103', '庐阳区', 'LYQ', 'lyq', '117.248', '31.9129', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('a3b971c8d8544cb08987a68f95104e37', '220202', '昌邑区', 'CYQ', 'cyq', '126.327', '44.0239', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('a3c0af9fd59b439bb29cac9adb40665d', '371522', '莘县', 'XX', 'xx', '115.553', '36.1391', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('a3d94a397b6d45138e3179543c210cbf', '140881', '永济市', 'YJS', 'yjs', '110.489', '34.8947', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('a40c2d4e60584376a01e16a0e894c191', '130983', '黄骅市', 'HHS', 'hhs', '117.4', '38.4015', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('a40fe8eb34e84d91a2fd1296f29c264f', '420525', '远安县', 'YAX', 'yax', '111.585', '31.1769', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('a43e851c523244cdb2532d828416bebc', '710000', '台湾省', 'TWS', 'tws', null, null, '0');
INSERT INTO `t_area` VALUES ('a4439f65fbdc41e68d27985170efd251', '131125', '安平县', 'APX', 'apx', '115.49', '38.2432', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('a479ed0db4c24ebfbca603a704f0cf0a', '210700', '锦州市', 'JZS', 'jzs', '121.148', '41.1309', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('a4844f92a69d4d0d9bb4f9eafdd70bc2', '230202', '龙沙区', 'LSQ', 'lsq', '123.945', '47.3011', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('a48cedc592a245f0b690312ccd103676', '330726', '浦江县', 'PJX', 'pjx', '119.91', '29.5263', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('a4990c91c72c4f71a9c2c5d00018969f', '230701', '市辖区', 'SXQ', 'sxq', null, null, 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('a49abf0cb0ac4f83a7417a8b4b0c0d9f', '220101', '市辖区', 'SXQ', 'sxq', null, null, 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('a4be8d2bf1da427da10d926b07a5e630', '610430', '淳化县', 'CHX', 'chx', '108.57', '34.8691', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('a4ca81314f5f4a05aeaf1eb2faed1bb5', '230501', '市辖区', 'SXQ', 'sxq', null, null, 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('a4d95aa523b042e7bcbe6b9d4ddfa74e', '150921', '卓资县', 'ZZX', 'zzx', '112.443', '40.9589', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('a4ef95a85b1b4de6a3c99f399efdb428', '420204', '下陆区', 'XLQ', 'xlq', '114.993', '30.1958', '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('a51d19008009442ca7f701f42f1ca8fd', '511600', '广安市', 'GAS', 'gas', '106.636', '30.464', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('a52d961094704c6295e9e11d25a67c0a', '420111', '洪山区', 'HSQ', 'hsq', '114.434', '30.5436', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('a534e97d75554e139df4a76c818acab1', '430781', '津市市', 'JSS', 'jss', '111.907', '29.4744', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('a54a8cc4631c4f5e9a40405572fb4ddb', '511421', '仁寿县', 'RSX', 'rsx', '104.226', '29.9859', '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('a55660d98bdb4a8eaad674eaaa02edcd', '130203', '路北区', 'LBQ', 'lbq', '118.185', '39.6578', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('a565a779cca14be389f9283f0d77bcb8', '150205', '石拐区', 'SGQ', 'sgq', '110.299', '40.7165', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('a5ac53754c2342bc804ab558ef7a937f', '460203', '吉阳区', 'JYQ', 'jyq', null, null, 'cf3d29a5792a41f48a9ce52d2dda943b');
INSERT INTO `t_area` VALUES ('a5c004c181f5495ca34fd40e01ab9d49', '530324', '罗平县', 'LPX', 'lpx', '104.349', '24.9832', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('a5edf6c0a0434384a31a08a92e16fe2f', '450105', '江南区', 'JNQ', 'jnq', '108.136', '22.6638', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('a5efe9509a6e4a0287e609aca6603955', '440900', '茂名市', 'MMS', 'mms', '110.931', '21.6682', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('a60c4bcaf9f34a07b2c87ce854c33591', '610328', '千阳县', 'QYX', 'qyx', '107.178', '34.767', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('a61bfe13c6dd402aac1ddb2a4baa202a', '130631', '望都县', 'WDX', 'wdx', '115.178', '38.679', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('a6369ce503fc44d69b25b76ba4bdd225', '150627', '伊金霍洛旗', 'YJHLQ', 'yjhlq', '109.704', '39.4207', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('a63768f4bb5847758b84f8e546964a7d', '653131', '塔什库尔干塔吉克自治县', 'TSKEGTJKZZX', 'tskegtjkzzx', '75.8432', '37.0196', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('a64ea9cab497478ab46262e690170fc4', '350401', '市辖区', 'SXQ', 'sxq', null, null, '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('a66a08e78b19456eb18a4dd23048dcf0', '610625', '志丹县', 'ZDX', 'zdx', '108.662', '36.7535', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('a6735d98d6b749fd8ce4491834fbce82', '340881', '桐城市', 'TCS', 'tcs', '116.954', '30.9726', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('a699c5ed528540c29895ba7e98af79eb', '411326', '淅川县', 'XCX', 'xcx', '111.445', '32.9897', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('a6b9f017828f4f6a868c4e38db16ba59', '341122', '来安县', 'LAX', 'lax', '118.536', '32.4737', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('a6c0d5c868bb49698a1b4dfcdee7f880', '542226', '曲松县', 'QSX', 'qsx', '92.2101', '28.9507', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('a6c622d098394ea0a57d4bd05fe1a1db', '150526', '扎鲁特旗', 'ZLTQ', 'zltq', '120.596', '44.8225', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('a6c633eb170b427cbc32ee011235d163', '440883', '吴川市', 'WCS', 'wcs', '110.708', '21.4417', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('a6f103e72d5a4502b3bfc5395651613b', '230300', '鸡西市', 'JXS', 'jxs', '130.942', '45.3215', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('a6fa25648b4444b895b43bb3848af68c', '220521', '通化县', 'THX', 'thx', '125.857', '41.7292', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('a6fd0dca369d4bfd9a902be4f24c12c9', '210400', '抚顺市', 'FSS', 'fss', '123.93', '41.8773', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('a70b19eb1be346ac94f3234239aeb354', '451226', '环江毛南族自治县', 'HJMNZZZX', 'hjmnzzzx', '108.292', '25.1045', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('a712ee933fdd44419d5479c5fa09badf', '130304', '北戴河区', 'BDHQ', 'bdhq', '119.479', '39.8543', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('a71ff927a30b42ca8342c59f2ff2729c', '420626', '保康县', 'BKX', 'bkx', '111.21', '31.7197', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('a74c09f435df45df870fd1706b315cc0', '310114', '嘉定区', 'JDQ', 'jdq', '121.251', '31.3643', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('a77de1cc82c94188ad1a5abb26b82c87', '659001', '石河子市', 'SHZS', 'shzs', '86.0419', '44.3083', '48b2c58abd7544a6b8ce69bb04aa1a5d');
INSERT INTO `t_area` VALUES ('a78e9843c09b473198a213a961e56952', '211000', '辽阳市', 'LYS', 'lys', '123.172', '41.2733', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('a799975130fb4918a5dcaeae2d20d79e', '532504', '弥勒市', 'MLS', 'mls', '103.39', '24.2262', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('a7c26ed224ec4444878d70566b9c2773', '350182', '长乐市', 'ZLS', 'zls', '119.563', '25.9155', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('a7c32b7fefe443788f9ae1de4c51bdd7', '530421', '江川县', 'JCX', 'jcx', '102.77', '24.3576', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('a7d11d332fb046ffae4054c1ab1e87e3', '430300', '湘潭市', 'XTS', 'xts', '112.936', '27.8351', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('a7d82effe20045c08a9d0f11d710c3c5', '653201', '和田市', 'HTS', 'hts', '79.9158', '37.1534', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('a7ddb9bb1b84495ab3fc79f4f4ffedfe', '513221', '汶川县', 'WCX', 'wcx', '103.294', '31.1688', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('a80265be2c6645be9b73a893cfc3c4a7', '520522', '黔西县', 'QXX', 'qxx', '106.121', '27.0504', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('a80f94dffc6f454d8632e0e8abaae9ee', '371323', '沂水县', 'YSX', 'ysx', '118.609', '35.9144', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('a81641f3af3c4e85bda1f7d285ea1833', '540233', '亚东县', 'YDX', 'ydx', '89.0814', '27.8151', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('a81f2f785cec465e9832cee35ae23913', '510502', '江阳区', 'JYQ', 'jyq', '105.372', '28.8769', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('a82dceb272224c0084abead9cfc694fc', '530602', '昭阳区', 'ZYQ', 'zyq', '103.607', '27.4276', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('a83f2151336e422ebdb5e902af851de7', '410823', '武陟县', 'WZX', 'wzx', '113.4', '35.0573', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('a8407b344f5142be98fab557fe19e1c2', '350502', '鲤城区', 'LCQ', 'lcq', '118.568', '24.9057', 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('a84b3fdfca5845178ee353142f319ea6', '371083', '乳山市', 'RSS', 'rss', '121.53', '36.9766', '7323eba94c9540d68004b46262fa31cf');
INSERT INTO `t_area` VALUES ('a865efe5c608417d968f5e6d938e7450', '210422', '新宾满族自治县', 'XBMZZZX', 'xbmzzzx', '124.828', '41.6351', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('a87b5369880740cea7e44b34f0bc29c2', '511381', '阆中市', 'LZS', 'lzs', '106.078', '31.6021', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('a895f8fc24d04ed1892fbf55736af59b', '430511', '北塔区', 'BTQ', 'btq', '111.422', '27.2503', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('a8a3b028d89049d9ae6643f214e34a6e', '410421', '宝丰县', 'BFX', 'bfx', '113.036', '33.9155', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('a8c9e01ad6e44d838c0ea46341a463c9', '510726', '北川羌族自治县', 'BCQZZZX', 'bcqzzzx', '104.258', '31.9625', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('a8ca70f678db45a294633936619fb993', '610222', '宜君县', 'YJX', 'yjx', '109.204', '35.3839', '5e5f0ab02e004598b96a194ac2a8b3b0');
INSERT INTO `t_area` VALUES ('a8dccb7d10a44d369aa9e47dffc8e907', '522630', '台江县', 'TJX', 'tjx', '108.324', '26.6561', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('a9106406d5f04f9486df0062722e4e8f', '540202', '桑珠孜区', 'SZZQ', 'szzq', null, null, 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('a911b773ade3483ea4a713168a258f8c', '540100', '拉萨市', 'LSS', 'lss', '91.1119', '29.6626', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('a94a7b9fb40a4000a8aa1e5056676b21', '654024', '巩留县', 'GLX', 'glx', '82.4457', '43.3025', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('a95225ec6ffb464ca065887c53fae198', '410101', '市辖区', 'SXQ', 'sxq', null, null, 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('a9616daa7a194c5a9481098637f936d5', '152222', '科尔沁右翼中旗', 'KEQYYZQ', 'keqyyzq', '121.199', '45.2421', '111d59a069534708961e303559a4e6db');
INSERT INTO `t_area` VALUES ('a974029bcab64a489807c6f80c408669', '511302', '顺庆区', 'SQQ', 'sqq', '106.116', '30.9496', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('a976a2c9a06e4c5ebe55cae39ca9f808', '140429', '武乡县', 'WXX', 'wxx', '112.968', '36.8883', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('a9861980444341969128ea14e1820319', '422827', '来凤县', 'LFX', 'lfx', '109.247', '29.4257', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('a9972cafc030487e8be2c93fdd132ae6', '140227', '大同县', 'DTX', 'dtx', '113.584', '40.0016', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('a99eb1dd144e49f4bae9d7c469dab492', '542523', '噶尔县', 'GEX', 'gex', '80.316', '32.0055', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('a9e42c12adbc48d6b9954a0b3b461fa1', '441322', '博罗县', 'BLX', 'blx', '114.288', '23.3526', '7e42aca6103e4ababd7f9517dbe01160');
INSERT INTO `t_area` VALUES ('aa4e7e26fc394517b74db03a016e0a06', '340828', '岳西县', 'YXX', 'yxx', '116.22', '30.9018', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('aa86ed9cb5ac4f12b144c9dbc01449da', '513228', '黑水县', 'HSX', 'hsx', '103.055', '32.1653', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('aaa610fe3db04bd58b1909875a59050c', '530102', '五华区', 'WHQ', 'whq', '102.649', '25.2613', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('aabb4eaeb4fc4724b0ec4b65413c4430', '411101', '市辖区', 'SXQ', 'sxq', null, null, 'dadce90a1182412080feb71560640c9b');
INSERT INTO `t_area` VALUES ('aac30de41a7f4659a3689e74c11e537c', '621125', '漳县', 'ZX', 'zx', '104.365', '34.7267', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('aac8da72e0e34fd3b922be7dcbe78a6c', '230500', '双鸭山市', 'SYSS', 'syss', '131.171', '46.6551', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('aad54c133a6d4b729f68d498359f04e6', '510115', '温江区', 'WJQ', 'wjq', '103.816', '30.7303', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('aadaec6315784e3db9fa67a74402d92b', '130582', '沙河市', 'SHS', 'shs', '114.283', '36.9386', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('aae2ca947630401f8ee3368bc38a9514', '520402', '西秀区', 'XXQ', 'xxq', '106.06', '26.1974', '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('aaeb5714b7a54a14b5f5b0cabf17ff5c', '410403', '卫东区', 'WDQ', 'wdq', '113.365', '33.7691', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('aaf903077c064f17a128f6cd416c935a', '440205', '曲江区', 'QJQ', 'qjq', '113.642', '24.6519', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('ab2111d11a1749ea873efeaed802499f', '130982', '任丘市', 'RQS', 'rqs', '116.163', '38.7411', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('ab3fd18136cb4a10b41fc3751f439fd4', '320681', '启东市', 'QDS', 'qds', '121.679', '31.8713', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('ab4e217241f74d4e80c78bbd03aa9a31', '411422', '睢县', 'SX', 'sx', '115.043', '34.3998', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('ab4e6f3e75b24769b22ad6b914db0007', '141000', '临汾市', 'LFS', 'lfs', '111.539', '36.0997', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('ab53c33ebf5649afad9b3c8e061227d3', '500118', '永川区', 'YCQ', 'ycq', '105.88', '29.2965', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('ab5a041326f146fb832c1c9bb030edcc', '510725', '梓潼县', 'ZTX', 'ztx', '105.194', '31.6536', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('aba204bb2ac241f395ed9f54ce908561', '371524', '东阿县', 'DAX', 'dax', '116.283', '36.3316', '22f681da6d004e12b93be860899e34ab');
INSERT INTO `t_area` VALUES ('abaf4358ebf648d0895fa9cbf5e191f2', '220302', '铁西区', 'TXQ', 'txq', '123.359', '41.8057', 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('abd59d20ebff415cac8b9faecdf8a925', '654324', '哈巴河县', 'HBHX', 'hbhx', '86.4097', '48.3166', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('abfd401086564b16b00a28eda8e990c9', '341322', '萧县', 'XX', 'xx', '116.812', '34.2085', '24cf9b2033a04e289857ab5bdfed05d5');
INSERT INTO `t_area` VALUES ('ac12c36274b94cedb7ed9ffe6c25c63e', '370685', '招远市', 'ZYS', 'zys', '120.401', '37.3441', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('ac1e18ad84034e87b4c39d646c932221', '500110', '綦江区', 'QJQ', 'qjq', '106.679', '28.8761', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('ac324f40a6374450b15834c71a42c21c', '542122', '江达县', 'JDX', 'jdx', '98.0364', '31.8137', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('ac45d77260144a86a63620ee9a4319c7', '611024', '山阳县', 'SYX', 'syx', '109.981', '33.4277', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('ac4f4be521464d8aae43f536cecad71b', '530113', '东川区', 'DCQ', 'dcq', '103.079', '26.1393', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('ac63c95018d14ff09d21415597b5bee1', '510922', '射洪县', 'SHX', 'shx', '105.388', '30.9081', 'fe672e515db8472e87574333b48c3e45');
INSERT INTO `t_area` VALUES ('ac95cfbb84a14e7fb9f01a3cdc7cc5b9', '330881', '江山市', 'JSS', 'jss', '118.607', '28.582', '975fc17aae1e41e09c36e2c3ae95d5d1');
INSERT INTO `t_area` VALUES ('aca7cfd7e96448d2be7f41ac788cfd90', '370126', '商河县', 'SHX', 'shx', '117.209', '37.3259', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('acacfb933a8b422187ddbca2eaa26185', '430225', '炎陵县', 'YLX', 'ylx', '113.851', '26.3827', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('acb0593f204a40ab9ab99164537a4014', '430102', '芙蓉区', 'FRQ', 'frq', '113.021', '28.2038', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('acce7b42087d4642906f0d9116dd5eb5', '370602', '芝罘区', 'ZFQ', 'zfq', '121.364', '37.5209', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('acf032500aeb4a489b73c4d9a9a69888', '445302', '云城区', 'YCQ', 'ycq', '112.172', '22.973', 'e54d276311894af388e82d430b4c70fb');
INSERT INTO `t_area` VALUES ('acf30e98616e453a91e141b27ce8196c', '441403', '梅县区', 'MXQ', 'mxq', '116.2', '24.3715', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('ad02752a382a4ebf85cea5716dc7e48a', '330903', '普陀区', 'PTQ', 'ptq', '121.398', '31.2637', '9aac8e6852114aeaae087275dcda7b05');
INSERT INTO `t_area` VALUES ('ad04556560f148b8bc479e7a377fba68', '140926', '静乐县', 'JLX', 'jlx', '112.065', '38.4001', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('ad4067d950724d3a98def7dfa6dd7fe3', '331024', '仙居县', 'XJX', 'xjx', '120.641', '28.7387', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('ad40719e4f714bc991285e1edfa3a532', '650107', '达坂城区', 'DBCQ', 'dbcq', '87.5271', '43.0049', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('ad46e3a5ea4d425894f11b3c51d025cb', '440802', '赤坎区', 'CKQ', 'ckq', '110.38', '21.2877', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('ad5615a281ed40188b8aa64b940c4de0', '360423', '武宁县', 'WNX', 'wnx', '115.023', '29.2638', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('ad7852610c414189a1ef4927371a8b83', '653126', '叶城县', 'YCX', 'ycx', '77.2236', '36.993', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('ad885d3626344b8b8ebb8685dff0885c', '232722', '塔河县', 'THX', 'thx', '124.64', '52.7165', 'dd9e89b2d7d34966b05b60de6cd7c10a');
INSERT INTO `t_area` VALUES ('ad9e44e6818c4778a4d4e2c10c1c5da9', '150823', '乌拉特前旗', 'WLTQQ', 'wltqq', '109.105', '40.906', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('ada71c1c083e4162952f4c49c863e60a', '542426', '申扎县', 'SZX', 'szx', '88.7354', '31.0352', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('adab3036e6e548abae00006645dd27d5', '451201', '市辖区', 'SXQ', 'sxq', null, null, 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('add2ad77d3be4cb6b36f6009eaf1e9c4', '371422', '宁津县', 'NJX', 'njx', '116.815', '37.6856', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('add494c4539f4605ab4f2ef9b9a3a285', '150626', '乌审旗', 'WSQ', 'wsq', '108.89', '38.6405', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('add7e6651c384f21beb9fe65890e9027', '230104', '道外区', 'DWQ', 'dwq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('addddd71d109423ca229411c05f10d6c', '540224', '萨迦县', 'SJX', 'sjx', '88.3476', '28.8549', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('ade1c09f7e9a459b85a1d9a49cb8df14', '130302', '海港区', 'HGQ', 'hgq', '119.578', '39.9888', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('ae134bcd1b7f4170b0378647f63bd62e', '211121', '大洼县', 'DWX', 'dwx', '122.094', '40.9649', '5e7d74ca7c6f4cf0888135c788ed5376');
INSERT INTO `t_area` VALUES ('ae18bdfcbf214e94a4c0fd573969a81e', '211400', '葫芦岛市', 'HLDS', 'hlds', '120.861', '40.743', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('ae345e4edd6f4cd1932cba3c1b61f80e', '231282', '肇东市', 'ZDS', 'zds', '125.85', '46.0093', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('ae563f670fa94fad8112106f272aa0e4', '350212', '同安区', 'TAQ', 'taq', '118.115', '24.7817', '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('ae7d32fae4314ecea578ca35484a6113', '410106', '上街区', 'SJQ', 'sjq', '113.298', '34.8221', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('ae85139155a945b28054085c9c715198', '441422', '大埔县', 'DPX', 'dpx', '116.664', '24.3479', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('ae9bb1b0e4fc432eabf1df94e268ad0c', '419000', '省直辖县级行政区划', 'SZXXJXZQH', 'szxxjxzqh', null, null, 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('ae9e4493fd084d19a72c4fde0b4bb9da', '140423', '襄垣县', 'XYX', 'xyx', '112.989', '36.5802', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('aeb4afcbd60a4e6c968828500c4293a9', '140927', '神池县', 'SCX', 'scx', '112.01', '39.1731', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('aec67a1bd9b14d1a81c67122653bf611', '340825', '太湖县', 'THX', 'thx', '116.183', '30.5011', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('aecab58d0c3949a9a1edfb5b3a581e5f', '130111', '栾城区', 'LCQ', 'lcq', '114.633', '37.9062', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('aedb51a701414c0a9d6c5ac6dc4fe75a', '320400', '常州市', 'CZS', 'czs', '119.982', '31.7714', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('aee131f6bfaa405cacca37d0f9e7be1f', '640100', '银川市', 'YCS', 'ycs', '106.206', '38.5026', '1c79e3a807264ac095db85cd4ce88673');
INSERT INTO `t_area` VALUES ('aee145377ff7433a929c04e4cb923205', '150428', '喀喇沁旗', 'KLQQ', 'klqq', '118.667', '41.9084', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('aee9ae87fe5d41fbb389af580e5f97da', '532525', '石屏县', 'SPX', 'spx', '102.456', '23.7463', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('aef9d3427c534aed91b985b76da06fe0', '220503', '二道江区', 'EDJQ', 'edjq', '126.156', '41.7726', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('aefc70cef671489f9ed3c8922daf6157', '500151', '铜梁区', 'TLQ', 'tlq', '106.039', '29.8183', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('af077fed8de644eab689d3b256f0fabd', '220282', '桦甸市', 'HDS', 'hds', '127.041', '43.0566', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('af39a719172644d9a252f75e7feae37a', '450512', '铁山港区', 'TSGQ', 'tsgq', '109.422', '21.5749', '6b447a5376a54f088671d5f0a057f986');
INSERT INTO `t_area` VALUES ('af59de163fd142929faf0d01f48f5325', '131003', '广阳区', 'GYQ', 'gyq', '116.694', '39.5337', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('af5c26a010cd442abe5e79acf2f5eaf1', '330781', '兰溪市', 'LXS', 'lxs', '119.533', '29.2841', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('af5d7311a0ca4bf2bd4e137476550bd0', '140601', '市辖区', 'SXQ', 'sxq', null, null, '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('af88b209fe4845179bc4a6f75a8c5ee3', '341602', '谯城区', 'QCQ', 'qcq', '115.813', '33.7829', 'fdfe40a0faff43159592cebf8e884365');
INSERT INTO `t_area` VALUES ('af9e0647ec154233a26139dd007f5b93', '450225', '融水苗族自治县', 'RSMZZZX', 'rsmzzzx', '109.058', '25.3437', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('afac03f9678243b3b016879c63f8edd3', '360424', '修水县', 'XSX', 'xsx', '114.446', '29', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('afae3074d85b42a68628cdde47b00bd9', '410803', '中站区', 'ZZQ', 'zzq', '113.162', '35.257', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('afae8c011ece4876b901c877bc36463f', '140921', '定襄县', 'DXX', 'dxx', '113.036', '38.5168', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('afaf3a6a4af94791a92939869eaba8de', '533324', '贡山独龙族怒族自治县', 'GSDLZNZZZX', 'gsdlznzzzx', '98.5094', '27.892', '18f03ffc2e854cfdbc84791d6483d58c');
INSERT INTO `t_area` VALUES ('afc5b685855f4d0a83b2ffbf84f1b484', '130209', '曹妃甸区', 'CFDQ', 'cfdq', null, null, 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('afcc693558604194ac651095f66dd090', '533103', '芒市', 'MS', 'ms', null, null, 'bee4a801ad99461593071a31b8249bc1');
INSERT INTO `t_area` VALUES ('afd2f13a19cd494994604f67c09af530', '210905', '清河门区', 'QHMQ', 'qhmq', '121.447', '41.755', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('afdb6e024b52407488de1d59236a6c72', '421121', '团风县', 'TFX', 'tfx', '115.014', '30.7237', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('afdc42f515094b3581f534919ef66a83', '320411', '新北区', 'XBQ', 'xbq', '119.903', '31.9399', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('afe0677ddc594b9f882ef26ad6d00371', '360732', '兴国县', 'XGX', 'xgx', '115.447', '26.4252', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('b05916fe118e49829d22de4aabb1cb9a', '510504', '龙马潭区', 'LMTQ', 'lmtq', '105.438', '28.9875', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('b05b1e77103945f4af12dd8b60cb4030', '370321', '桓台县', 'HTX', 'htx', '118.034', '36.9963', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('b08128a38d044d19828a43f57b611595', '150726', '新巴尔虎左旗', 'XBEHZQ', 'xbehzq', '118.622', '48.4364', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('b08b6fd99d2947feb2debe9e247ae7de', '341702', '贵池区', 'GCQ', 'gcq', '117.508', '30.5141', 'b2d0ae237ad540dfa52df769a841138a');
INSERT INTO `t_area` VALUES ('b0985625674840b5bf68c15e587cc37c', '511425', '青神县', 'QSX', 'qsx', '103.838', '29.8228', '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('b0c3f1016fd6467b96476c1b88ed5ec2', '152221', '科尔沁右翼前旗', 'KEQYYQQ', 'keqyyqq', '121.222', '46.334', '111d59a069534708961e303559a4e6db');
INSERT INTO `t_area` VALUES ('b0c48841845746c8862f102eb7281c61', '371601', '市辖区', 'SXQ', 'sxq', null, null, '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('b0ce87a00fd745d18518218d3ffe9841', '520329', '余庆县', 'YQX', 'yqx', '107.709', '27.3948', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('b0d103538fe3433aaa45588988ff7ad7', '431228', '芷江侗族自治县', 'ZJDZZZX', 'zjdzzzx', '109.611', '27.4025', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('b0e8cbea7f5b4bc19dfc781edcaa6be0', '440701', '市辖区', 'SXQ', 'sxq', null, null, '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('b0ed3d7c34e74e2e868dfc6e32fd7930', '520603', '万山区', 'WSQ', 'wsq', null, null, '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('b0ed9a7fb2444c2583d6ffad23410cbf', '130903', '运河区', 'YHQ', 'yhq', '116.845', '38.3144', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('b0ee3ccd882841cbae9a96e0a9554172', '220802', '洮北区', 'TBQ', 'tbq', '122.789', '45.6233', 'b7600da1f75d4d42b3a1d532574b77e8');
INSERT INTO `t_area` VALUES ('b0f4e139e1b948bcac59fd380972b97d', '431281', '洪江市', 'HJS', 'hjs', '110.087', '27.2391', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('b10b9ec3aa344502bab365c94c1361a0', '410603', '山城区', 'SCQ', 'scq', '114.253', '35.9275', '52b9af85f16b4dcca76293c1077849a8');
INSERT INTO `t_area` VALUES ('b130dfa9d1a44fe2af33d0cba7db31eb', '410700', '新乡市', 'XXS', 'xxs', '113.913', '35.3073', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('b13502db05cf46acbe5748e5d8fa2437', '370406', '山亭区', 'STQ', 'stq', '117.484', '35.0932', '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('b142b15703da4b33b83667a85876a6dd', '340701', '市辖区', 'SXQ', 'sxq', null, null, 'bbee816f0c5e475ea74514a97e400481');
INSERT INTO `t_area` VALUES ('b14e641016ac4e29aca4f52e5428aba3', '430203', '芦淞区', 'LSQ', 'lsq', '113.17', '27.8221', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('b15721cc1375477cbf52b323231b8719', '620105', '安宁区', 'ANQ', 'anq', '103.719', '36.1155', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('b1575bf5c361426bbfe4be4a97e30ca1', '371428', '武城县', 'WCX', 'wcx', '116.091', '37.244', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('b15925402fcf4da69ac22710c146debe', '510903', '船山区', 'CSQ', 'csq', '105.622', '30.5235', 'fe672e515db8472e87574333b48c3e45');
INSERT INTO `t_area` VALUES ('b16686602cb645c494293a871c35ab8e', '230800', '佳木斯市', 'JMSS', 'jmss', '130.285', '46.8138', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('b177a25fb5b1446c8bb7dd3f97624272', '230781', '铁力市', 'TLS', 'tls', '128.553', '46.8663', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('b19c7e147d8b458886ebcf0ed5392a72', '211481', '兴城市', 'XCS', 'xcs', '120.476', '40.5963', 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('b1b98110c5cb463fb96ecb9b618d532a', '370285', '莱西市', 'LXS', 'lxs', '120.443', '36.8636', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('b1c01456c76f4efab3292591a82aca0a', '510626', '罗江县', 'LJX', 'ljx', '104.535', '31.3203', 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('b1d31b01af3a4e19addccdef6e69f526', '610729', '留坝县', 'LBX', 'lbx', '106.96', '33.613', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('b1e31c6811f241228c5a4f35e101ff23', '140930', '河曲县', 'HQX', 'hqx', '111.36', '39.2064', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('b1fd338c21e246d9855138e735b7e0f3', '431230', '通道侗族自治县', 'TDDZZZX', 'tddzzzx', '109.745', '26.2151', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('b20c1f95e080453d8c1ff1efe0f64d53', '450600', '防城港市', 'FCGS', 'fcgs', '108.352', '21.6174', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('b2166255cc5745ca9af23418ef44b79f', '621023', '华池县', 'HCX', 'hcx', '108.034', '36.4445', 'c4097a55832f4cda9e8bc0984e7bbdab');
INSERT INTO `t_area` VALUES ('b2212d9b70974b71a0e093d4f572b7f3', '230502', '尖山区', 'JSQ', 'jsq', '131.179', '46.6585', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('b22e4bd2cfb843cc8f034d7c08c21ee4', '320102', '玄武区', 'XWQ', 'xwq', '118.849', '32.0718', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('b2355cddd70746079b0ec1376f44c9e1', '513325', '雅江县', 'YJX', 'yjx', '100.969', '29.9229', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('b245f1f7409444bdbc455d8ffd3fe496', '231085', '穆棱市', 'MLS', 'mls', '130.396', '44.5769', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('b24ba449496b4fb09c4eac8b0baf6d1c', '632822', '都兰县', 'DLX', 'dlx', '97.1544', '36.1601', '62daf966c7a344b6872e45ca3b3c9644');
INSERT INTO `t_area` VALUES ('b252e6ba6b0148fe9ead9f46dc96f8bc', '653121', '疏附县', 'SFX', 'sfx', '75.7549', '39.4097', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('b266a5aba4e944c18a12ac491ca9d838', '620101', '市辖区', 'SXQ', 'sxq', null, null, 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('b28ecf4eb38a4430be4d30deb0dfb761', '350626', '东山县', 'DSX', 'dsx', '117.425', '23.6911', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('b2d0ae237ad540dfa52df769a841138a', '341700', '池州市', 'CZS', 'czs', '117.494', '30.66', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('b2e92ea403d64f10aa971d294359df0e', '141030', '大宁县', 'DNX', 'dnx', '110.711', '36.4326', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('b2efc81eab76454584baadf2d084566e', '445321', '新兴县', 'XXX', 'xxx', '112.218', '22.627', 'e54d276311894af388e82d430b4c70fb');
INSERT INTO `t_area` VALUES ('b301ef135166406696b8ebe846e6bd84', '542229', '加查县', 'JCX', 'jcx', '92.7199', '29.2939', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('b3231056e0724453b1d4b8c1687dffa3', '140725', '寿阳县', 'SYX', 'syx', '113.142', '37.8251', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('b33f418af0c64bd996b89fadd3746651', '653224', '洛浦县', 'LPX', 'lpx', '80.7413', '38.0242', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('b34af61059af4768a39948fa0ff3ba42', '210802', '站前区', 'ZQQ', 'zqq', '122.266', '40.703', '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('b379eafe54a34c009f654ceb0330cf23', '230605', '红岗区', 'HGQ', 'hgq', '124.914', '46.4208', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('b37f663f9e67407e8ccce32a2eefa554', '320583', '昆山市', 'KSS', 'kss', '120.966', '31.3289', '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('b38d2a9136414699961f3807b1bbd3be', '530325', '富源县', 'FYX', 'fyx', '104.367', '25.4672', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('b39ec60a23c54f53bf3b71910f0ede3e', '431100', '永州市', 'YZS', 'yzs', '111.615', '26.436', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('b3b915cb5f0b4685b4d5be8e3f17b783', '632726', '曲麻莱县', 'QMLX', 'qmlx', '95.1408', '34.8769', '836ceddbf0764941a9bfa03cb8719219');
INSERT INTO `t_area` VALUES ('b3c2852417e84bf18d3ed40f0b64911d', '621201', '市辖区', 'SXQ', 'sxq', null, null, '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('b3c69297f24a4d1ca1c822ce7d80861a', '220523', '辉南县', 'HNX', 'hnx', '126.343', '42.5579', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('b3ce4908a71b44afb194a43b2fdc7073', '370104', '槐荫区', 'HYQ', 'hyq', '116.891', '36.6825', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('b3e20ee1c24b4436bdb3278143a47f33', '130822', '兴隆县', 'XLX', 'xlx', '117.726', '40.4581', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('b3e6a3a77e4742348e8fdcf235b1dc86', '360803', '青原区', 'QYQ', 'qyq', '115.266', '26.8592', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('b3f3d7b5084e4800948aa3a880a6eed7', '371426', '平原县', 'PYX', 'pyx', '116.43', '37.1566', '80fe8d4f78454d8dad84cd850766af35');
INSERT INTO `t_area` VALUES ('b418797627db4db6bf69987785c31736', '422822', '建始县', 'JSX', 'jsx', '109.94', '30.5786', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('b41a5e218a844528b3a072e2f6f4cda1', '150301', '市辖区', 'SXQ', 'sxq', null, null, 'f32203ff80ac40879b4a855066ccb21a');
INSERT INTO `t_area` VALUES ('b424ca4822a0468a97bb29672a3c22d4', '130924', '海兴县', 'HXX', 'hxx', '117.567', '38.1425', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('b4371e693a0240648d1caa543e5ac7a8', '150622', '准格尔旗', 'ZGEQ', 'zgeq', '110.886', '39.7947', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('b449992b111444c7b05f5c9c2aea16b4', '231084', '宁安市', 'NAS', 'nas', '129.215', '44.058', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('b44bc84a130f460482c4799b1a64f9f1', '150207', '九原区', 'JYQ', 'jyq', '109.949', '40.6272', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('b4557fce67064f258598d91b51761d03', '370282', '即墨市', 'JMS', 'jms', '120.521', '36.4879', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('b45b9311539046cbbd4c7fb8eb8b0020', '511325', '西充县', 'XCX', 'xcx', '105.857', '31.0639', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('b46bdd1794e8421c9ff0217d11396f9c', '411024', '鄢陵县', 'YLX', 'ylx', '114.202', '34.0119', '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('b4777f946c214f98a8197217001c5b07', '150000', '内蒙古自治区', 'NMGZZQ', 'nmgzzq', '114.416', '43.4682', '0');
INSERT INTO `t_area` VALUES ('b47dcb36766a4da5a4503e05acc76e71', '440204', '浈江区', 'ZJQ', 'zjq', '113.577', '24.9192', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('b483dce37df84a02849b642366f08615', '220605', '江源区', 'JYQ', 'jyq', '126.825', '42.079', 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('b48af857230b45ec908fd8757985ddfe', '513437', '雷波县', 'LBX', 'lbx', '103.513', '28.2793', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('b4afae0279d04cf3bc136043ddede043', '654321', '布尔津县', 'BEJX', 'bejx', '87.2355', '48.316', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('b4b0da1d5a5d4445b74de34013747ef2', '370782', '诸城市', 'ZCS', 'zcs', '119.416', '36.0167', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('b4b14d35a5324e87bd54ae04d30e9cd5', '540237', '岗巴县', 'GBX', 'gbx', '88.5719', '28.3167', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('b4b2be155fc4430daf6f698ad02e212e', '511402', '东坡区', 'DPQ', 'dpq', '103.748', '30.0574', '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('b4b429c57c6a421ca923a9ab82aec598', '230715', '红星区', 'HXQ', 'hxq', '129.252', '48.298', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('b4b8f522242f46df937c673df26094d6', '141024', '洪洞县', 'HDX', 'hdx', '111.659', '36.3255', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('b4cc0c358f704a8bacac61c2d67ca7b7', '310116', '金山区', 'JSQ', 'jsq', '121.248', '30.8351', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('b4e20b70118c49c6afb53966c54ebfba', '371312', '河东区', 'HDQ', 'hdq', '117.262', '39.1266', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('b4e55724c1d2491786db09d018d0d582', '513300', '甘孜藏族自治州', 'GZZZZZZ', 'gzzzzzz', '101.969', '30.0551', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('b50634da14764d0cae033c7cac9db0a6', '230900', '七台河市', 'QTHS', 'qths', '131.019', '45.775', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('b517ff28d5334a52a3edcd4d4146ce56', '230523', '宝清县', 'BQX', 'bqx', '132.409', '46.4094', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('b524a6dd93264da39013b14575de01d1', '513422', '木里藏族自治县', 'MLZZZZX', 'mlzzzzx', '100.953', '28.3603', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('b542115d8085429db59010163979eeae', '140882', '河津市', 'HJS', 'hjs', '110.709', '35.6319', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('b552fc6aab394867bf44e9795a0ec2e9', '350101', '市辖区', 'SXQ', 'sxq', null, null, '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('b569ff334314423b91f8d7086a2d2f3a', '320802', '清河区', 'QHQ', 'qhq', '124.276', '42.5086', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('b56f539f726c4da4ad9803c7aa81cad7', '410728', '长垣县', 'ZYX', 'zyx', '114.767', '35.2181', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('b57fea0bd048445882ad441a46ef996f', '140800', '运城市', 'YCS', 'ycs', '111.007', '35.0389', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('b5aa9d95ce894e58b895f2b87ebcfdf2', '140925', '宁武县', 'NWX', 'nwx', '112.194', '38.8219', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('b5d7aec18b2c445eb01a2f710a7dd231', '420106', '武昌区', 'WCQ', 'wcq', '114.354', '30.5649', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('b5f81e0faafc483fa31ee1cdd656e16e', '410711', '牧野区', 'MYQ', 'myq', '113.897', '35.3389', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('b600b6d086754980abdba0efa1ef8734', '340500', '马鞍山市', 'MASS', 'mass', '118.516', '31.6885', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('b60feceb2496435aaf88c3d6e5f6b9ad', '410221', '杞县', 'QX', 'qx', '114.769', '34.506', '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('b629519dc5924526974ca9cf2272b7fa', '820000', '澳门特别行政区', 'AMTBXZQ', 'amtbxzq', '113.558', '22.2041', '0');
INSERT INTO `t_area` VALUES ('b64a08b1d2eb402982e6e7a2794cbcb6', '640500', '中卫市', 'ZWS', 'zws', '105.197', '37.5211', '1c79e3a807264ac095db85cd4ce88673');
INSERT INTO `t_area` VALUES ('b650137d7c6d48e7a6c1f3d36989cea3', '341002', '屯溪区', 'TXQ', 'txq', '118.31', '29.7165', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('b67dbd7ef79e4890ae698449306b0bca', '130804', '鹰手营子矿区', 'YSYZKQ', 'ysyzkq', '117.679', '40.5318', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('b6aac2ccaa7a4805a330547c9c527b5f', '540230', '康马县', 'KMX', 'kmx', '89.6553', '28.4434', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('b6acf8ea4ca547c48b54bd36d2cd90af', '532822', '勐海县', 'MHX', 'mhx', '100.337', '21.9607', '3c0dd7a126f5427bacf3c773408f4270');
INSERT INTO `t_area` VALUES ('b6b621f7625949828a7a7d22221f6e6c', '450103', '青秀区', 'QXQ', 'qxq', '108.542', '22.8292', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('b6cda587f9ea446eb1aca22dc422ac7f', '360925', '靖安县', 'JAX', 'jax', '115.238', '28.9461', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('b6d3d7c694b4419e8c485b424e8b4ead', '131001', '市辖区', 'SXQ', 'sxq', null, null, '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('b6d8e95d07ac46abbbb9a7a17f7b23c7', '450223', '鹿寨县', 'LZX', 'lzx', '109.803', '24.5322', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('b6d9d04fbb8e4c068c90f26f2bcd57cc', '330322', '洞头县', 'DTX', 'dtx', '121.126', '27.9037', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('b6e17e002f3f4f4ab3e82590e71659c4', '370322', '高青县', 'GQX', 'gqx', '117.828', '37.1714', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('b7147554c9d44fab99f5b400dfb11a14', '420503', '伍家岗区', 'WJGQ', 'wjgq', '111.381', '30.6787', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('b72604d2bd55410db0d44d3388d97c10', '540234', '吉隆县', 'JLX', 'jlx', '85.3064', '28.8668', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('b73091a7614a437cb5232c00bd31f2b1', '410304', '瀍河回族区', 'CHHZQ', 'chhzq', '112.505', '34.7029', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('b734a7b2c4f5439995ceb12a0472c5a4', '652928', '阿瓦提县', 'AWTX', 'awtx', '80.4399', '40.0608', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('b7537658fb1f45978b888fafdadf4c0c', '370404', '峄城区', 'YCQ', 'ycq', '117.604', '34.7161', '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('b7600da1f75d4d42b3a1d532574b77e8', '220800', '白城市', 'BCS', 'bcs', '122.841', '45.6211', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('b76397dfa5054a38bc862fab2e072d64', '610000', '陕西省', 'SXS', 'sxs', '109.504', '35.86', '0');
INSERT INTO `t_area` VALUES ('b763e3dd675a408e930e7a7c1c130eb8', '542127', '八宿县', 'BSX', 'bsx', '96.8856', '30.1623', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('b76ad95f12f94c72a1cf5ee782a5f402', '410811', '山阳区', 'SYQ', 'syq', '113.276', '35.2412', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('b791547dc94e48f5b3013fe11863b5df', '231226', '绥棱县', 'SLX', 'slx', '127.719', '47.5841', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('b7acdc07978645ac82286e6ccaa79034', '130601', '市辖区', 'SXQ', 'sxq', null, null, '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('b7aff0de84ac4eba95c059c551b4e825', '230102', '道里区', 'DLQ', 'dlq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('b7bd9e509e9e46678a178ccddc967daa', '511921', '通江县', 'TJX', 'tjx', '107.353', '32.1364', 'c8dae369045f416782e3bc86fd3404ed');
INSERT INTO `t_area` VALUES ('b7c13ccc6b7a477f82bd4da3ac494e7a', '451400', '崇左市', 'CZS', 'czs', '107.357', '22.4155', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('b7ca2773f5a64b5fa4b7c93c48fa433f', '411622', '西华县', 'XHX', 'xhx', '114.478', '33.7936', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('b7cf4cf9b2154511a9f7e6eb8b275345', '431028', '安仁县', 'ARX', 'arx', '113.366', '26.5808', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('b7ec273a87884fcca8b01e68223ca019', '520221', '水城县', 'SCX', 'scx', '104.93', '26.4305', 'd0c498b67c0e4e99b0f4f21277e9cf73');
INSERT INTO `t_area` VALUES ('b7fbd02bd5e4425b8175ba3b56415235', '330921', '岱山县', 'DSX', 'dsx', '122.26', '30.3194', '9aac8e6852114aeaae087275dcda7b05');
INSERT INTO `t_area` VALUES ('b80cf45ac07d49b189d99b99a4365b8d', '510781', '江油市', 'JYS', 'jys', '104.933', '31.9524', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('b84ead3367ab4980b2a3543c85bd9b57', '430408', '蒸湘区', 'ZXQ', 'zxq', '112.555', '26.8865', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('b850742cae5749e0a0dc057dbcc5802e', '430981', '沅江市', 'YJS', 'yjs', '112.565', '28.9772', 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('b850897fce03446780682382e3b5b06f', '140427', '壶关县', 'HGX', 'hgx', '113.372', '35.9927', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('b8534b7072504be8af4035e3ca565a6e', '420581', '宜都市', 'YDS', 'yds', '111.376', '30.2949', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('b8594a00ce874cc6875829ef2e90b1bd', '500107', '九龙坡区', 'JLPQ', 'jlpq', '106.371', '29.4346', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('b889003a96464696805a88923bf60032', '451421', '扶绥县', 'FSX', 'fsx', '107.829', '22.5241', 'b7c13ccc6b7a477f82bd4da3ac494e7a');
INSERT INTO `t_area` VALUES ('b897da95216c47a68a680bf42d0bc7fb', '620982', '敦煌市', 'DHS', 'dhs', '94.158', '40.3888', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('b8afc3d26fe0455aabf4cc82ab2c23d7', '441324', '龙门县', 'LMX', 'lmx', '114.137', '23.6664', '7e42aca6103e4ababd7f9517dbe01160');
INSERT INTO `t_area` VALUES ('b8b66beaaf934733a02ef12ff4bc7bdd', '441402', '梅江区', 'MJQ', 'mjq', '116.116', '24.2908', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('b8bca65bda8e4c1a8fb631e1fe70d794', '360727', '龙南县', 'LNX', 'lnx', '114.732', '24.7727', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('b8c110758a3d4571b3574155fe6363ce', '430611', '君山区', 'JSQ', 'jsq', '112.824', '29.462', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('b8d72fccb7d54114b476327951c14d3f', '371727', '定陶县', 'DTX', 'dtx', '115.629', '35.1036', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('b93b813fbe664d389115ed3df5ceb849', '530925', '双江拉祜族佤族布朗族傣族自治县', 'SJLHZWZBLZDZZZX', 'sjlhzwzblzdzzzx', null, null, '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('b93e28fad1454605a81753c740e0b00d', '450800', '贵港市', 'GGS', 'ggs', '109.614', '23.1034', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('b96628b39f3340a3b3eefb87c185981a', '130201', '市辖区', 'SXQ', 'sxq', null, null, 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('b98d5f79aff04e7ba95e35ef7d00b09f', '350102', '鼓楼区', 'GLQ', 'glq', '118.765', '32.0686', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('b9ae3d74c22048da943fecc31d12f6dd', '632521', '共和县', 'GHX', 'ghx', '100.065', '36.5383', 'fb615a43a9174dadbc6ee2aa863265c9');
INSERT INTO `t_area` VALUES ('b9c6938b5aef403f8fd0cbca284c27a2', '360702', '章贡区', 'ZGQ', 'zgq', '114.937', '25.8387', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('b9fb600788ed48d2aad21b352ab12cf5', '469025', '白沙黎族自治县', 'BSLZZZX', 'bslzzzx', '109.359', '19.2161', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('ba138aa071724fc5ad6b6b83f5c6ba65', '360926', '铜鼓县', 'TGX', 'tgx', '114.37', '28.6155', '34122900b5e54cc885b4ec8eb4acef58');
INSERT INTO `t_area` VALUES ('ba37d74215de4573bf2edd7cdf3223f9', '340122', '肥东县', 'FDX', 'fdx', '117.576', '32.0032', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('ba47fbd7b2844f0b8de07bdc3e5e78ab', '431229', '靖州苗族侗族自治县', 'JZMZDZZZX', 'jzmzdzzzx', '109.591', '26.5504', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('ba5e4bfe3bdd441eaeb0d3543dd15c2d', '513336', '乡城县', 'XCX', 'xcx', '99.7384', '29.1174', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('ba6b26444efb41be8816a5ca50fa24b5', '420205', '铁山区', 'TSQ', 'tsq', '114.903', '30.2187', '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('bac94896e0ef4819a78d43b92ba627d9', '320324', '睢宁县', 'SNX', 'snx', '117.89', '33.9466', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('bacbbfc3b2564cbeb638fb248144f2af', '350700', '南平市', 'NPS', 'nps', '118.182', '26.6436', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('bad711d4938a47e8bd0f168fb1dbac78', '330502', '吴兴区', 'WXQ', 'wxq', '120.089', '30.8085', '611bbedacbe04f668b20db1a0beaf99b');
INSERT INTO `t_area` VALUES ('bafb7660e8a9414db5f83d485cb9deb7', '320481', '溧阳市', 'LYS', 'lys', '119.383', '31.4252', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('bafe84bdedfb4141ad3533ccdc7d2c3c', '469029', '保亭黎族苗族自治县', 'BTLZMZZZX', 'btlzmzzzx', '109.656', '18.5976', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('bb24135d5d7f44cf8bb2d309042b2db1', '340401', '市辖区', 'SXQ', 'sxq', null, null, '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('bb2815bea8d745da85b33e427dbb9867', '652900', '阿克苏地区', 'AKSDQ', 'aksdq', '80.2698', '41.1717', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('bb3b1b6fa9844318b3e5c9be6f2907f1', '450205', '柳北区', 'LBQ', 'lbq', '109.414', '24.4717', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('bb662c87c8ec4a1d9d2c728d40c9bbfd', '431382', '涟源市', 'LYS', 'lys', '111.795', '27.7437', '224c42b8e8d64becb335fdec0f071c0f');
INSERT INTO `t_area` VALUES ('bba46de90a60410cbe9c2143c82b455c', '652325', '奇台县', 'QTX', 'qtx', '90.1103', '44.5277', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('bbbaa69733e847f1a38d370b4c289d89', '370687', '海阳市', 'HYS', 'hys', '121.114', '36.8616', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('bbbf032e03f94b6abd9ece68392c99b2', '370112', '历城区', 'LCQ', 'lcq', '117.191', '36.6127', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('bbd20c33bfc94deeb95284d7cfdcb84c', '230706', '翠峦区', 'CLQ', 'clq', '128.365', '47.5899', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('bbee816f0c5e475ea74514a97e400481', '340700', '铜陵市', 'TLS', 'tls', '117.819', '30.9409', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('bc1a9abff1384093b667bf2ceb94efc6', '140723', '和顺县', 'HSX', 'hsx', '113.475', '37.3484', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('bc2758668da84728adb73160a4e6edc8', '420683', '枣阳市', 'ZYS', 'zys', '112.773', '32.0925', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('bc4022a29c29420ebed3d10d176bac4c', '330281', '余姚市', 'YYS', 'yys', '121.153', '29.9965', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('bc4efd5e288042039072f4982b04b10f', '513433', '冕宁县', 'MNX', 'mnx', '102.069', '28.5149', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('bc68d24c4ab84c54a7a55c9d167e2fd6', '370785', '高密市', 'GMS', 'gms', '119.703', '36.3873', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('bc70eaa4154b46668d36e9c3eb273a55', '654023', '霍城县', 'HCX', 'hcx', '80.7812', '44.3091', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('bc71bbf1e213456baab664707446c943', '530821', '宁洱哈尼族彝族自治县', 'NEHNZYZZZX', 'nehnzyzzzx', '101.197', '23.0973', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('bc737014843e4b9397f9bc1dd22f21f2', '410422', '叶县', 'YX', 'yx', '113.351', '33.551', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('bc8a421f39b4450e86a1143dae341832', '210114', '于洪区', 'YHQ', 'yhq', '123.243', '41.8436', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('bc9ca361b48c49508495acbd4aa00fc9', '420500', '宜昌市', 'YCS', 'ycs', '111.311', '30.7328', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('bcb7a5d7c28b4da196b4fd9cbc78a6ba', '360202', '昌江区', 'CJQ', 'cjq', '117.186', '29.2722', '0fd8cbc6a4b84e28a88a01d66ec44698');
INSERT INTO `t_area` VALUES ('bcbd97d38b2d48c697b57651a432f552', '231001', '市辖区', 'SXQ', 'sxq', null, null, '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('bcc1241fe4f14786ad6b839c89936072', '211003', '文圣区', 'WSQ', 'wsq', '123.201', '41.2711', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('bcc2f3f58b05470d943b87d2bafa183e', '220681', '临江市', 'LJS', 'ljs', '127.192', '41.8166', 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('bcde2dd43f6948b98537ce0860d99864', '450503', '银海区', 'YHQ', 'yhq', '109.252', '21.4897', '6b447a5376a54f088671d5f0a057f986');
INSERT INTO `t_area` VALUES ('bce48dfc8deb4166b9b0a12faf0c644d', '320202', '崇安区', 'CAQ', 'caq', '120.329', '31.5973', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('bceade7beccb4e28be192d18475e746b', '150926', '察哈尔右翼前旗', 'CHEYYQQ', 'cheyyqq', '113.241', '40.9817', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('bd19fe8e352d41ad91a86fccf19ba34e', '210321', '台安县', 'TAX', 'tax', '122.444', '41.3471', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('bd1fadd032984dcdb20619958fd96a95', '130682', '定州市', 'DZS', 'dzs', '115.057', '38.4658', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('bd4a1c6aff9d43dc850a3b042a6b43ee', '431201', '市辖区', 'SXQ', 'sxq', null, null, '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('bd80390325d44cc59195c60630b76b7f', '522702', '福泉市', 'FQS', 'fqs', '107.491', '26.7771', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('bd956479f1fa45839ed2ba6281a829f4', '511501', '市辖区', 'SXQ', 'sxq', null, null, '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('bdac16d3c5c14ca49ddfd041b38ac9ef', '360802', '吉州区', 'JZQ', 'jzq', '114.96', '27.1609', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('bdb8a6f6dea84fb9a224ebf9c116b4ad', '510704', '游仙区', 'YXQ', 'yxq', '104.982', '31.5188', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('bdcb53f5d90941ebb794944d657ad983', '220601', '市辖区', 'SXQ', 'sxq', null, null, 'fc8822ac055c4c3b80277b5140d12768');
INSERT INTO `t_area` VALUES ('be03193e8c2a465e84f414361081609f', '350201', '市辖区', 'SXQ', 'sxq', null, null, '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('be2954263f0b4acfbcc97b68921db1ff', '341203', '颍东区', 'YDQ', 'ydq', '116.04', '32.9416', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('be325fc2a33547068ebdeaf51f208afa', '652822', '轮台县', 'LTX', 'ltx', '84.579', '41.8193', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('be72ab6b0a05479eb8933ff0b93f37ff', '410782', '辉县市', 'HXS', 'hxs', '113.688', '35.5436', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('be8f7d860b8247729ce859acf1b738d2', '421221', '嘉鱼县', 'JYX', 'jyx', '113.967', '30.0138', 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('be9185fba6214f58911d643f140885e7', '411301', '市辖区', 'SXQ', 'sxq', null, null, 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('be967e96d0974a379ca4757a8006167a', '370811', '任城区', 'RCQ', 'rcq', '116.572', '35.3801', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('be985ef80a5840f19e9ea8e827bcd683', '130638', '雄县', 'XX', 'xx', '116.183', '39.0428', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('bea145c0a1984e27b08e68c2528ef767', '445303', '云安区', 'YAQ', 'yaq', '111.963', '22.8474', 'e54d276311894af388e82d430b4c70fb');
INSERT INTO `t_area` VALUES ('bea944041963483a9add76f10a316dec', '460101', '市辖区', 'SXQ', 'sxq', null, null, '5f0de73ecf1b4cbda3e05787d278d892');
INSERT INTO `t_area` VALUES ('beae3f545dc14f23b8ede5dc5ddc761e', '532622', '砚山县', 'YSX', 'ysx', '104.256', '23.6878', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('bec8223039be4ba18653ff46e10c127d', '640422', '西吉县', 'XJX', 'xjx', '105.727', '35.9399', '835ed2facd684917a081908db75b1fd8');
INSERT INTO `t_area` VALUES ('bee4a801ad99461593071a31b8249bc1', '533100', '德宏傣族景颇族自治州', 'DHDZJPZZZZ', 'dhdzjpzzzz', '98.5894', '24.4412', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('bf39069c6d8949999fbda7d97cab5f2f', '330624', '新昌县', 'XCX', 'xcx', '120.976', '29.4143', '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('bf400f0e3cb84efc8f99690e296cb677', '540221', '南木林县', 'NMLX', 'nmlx', '89.38', '29.8148', 'da429562f4c34e4dbd29d97239eac1db');
INSERT INTO `t_area` VALUES ('bf4a668798a84d7596fd715bf4fbcf65', '441882', '连州市', 'LZS', 'lzs', '112.459', '24.937', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('bf5feef363f642179ce33a6ddf47ad17', '120110', '东丽区', 'DLQ', 'dlq', '117.415', '39.1396', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('bf643e4da053455d8811fba38f57b1c3', '610300', '宝鸡市', 'BJS', 'bjs', '107.171', '34.3641', 'b76397dfa5054a38bc862fab2e072d64');
INSERT INTO `t_area` VALUES ('bf6ca8033d13424191d4e7b4108a77cc', '440507', '龙湖区', 'LHQ', 'lhq', '116.759', '23.4088', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('bfaf8f97d5444d81891618cea13f7acf', '610801', '市辖区', 'SXQ', 'sxq', null, null, 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('bfb2ed5e31d94815b95f4164bc3fcd09', '130801', '市辖区', 'SXQ', 'sxq', null, null, '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('bfbf4fee97f742a4be218941b3489c15', '411302', '宛城区', 'WCQ', 'wcq', '112.614', '32.9347', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('bfd8a160793644b3b8821b3d91a58348', '370725', '昌乐县', 'CLX', 'clx', '118.914', '36.5355', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('bfde4caa1aa54c34a508b94ff14392a8', '220582', '集安市', 'JAS', 'jas', '125.999', '41.2514', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('bfdf226045654d92964c88a4b1c84236', '440281', '乐昌市', 'LCS', 'lcs', '113.247', '25.2444', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('bfe9cdb99da34e9ab5952b9f3388050d', '510321', '荣县', 'RX', 'rx', '104.372', '29.399', 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('bfed99b55fc44698ade859229b47bbce', '654323', '福海县', 'FHX', 'fhx', '88.0509', '46.3917', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('c006d5053b42450ea7217f0e3b4e5161', '510132', '新津县', 'XJX', 'xjx', '103.832', '30.4279', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('c0084c68c8834ceabdb9434b4a622307', '650106', '头屯河区', 'TTHQ', 'tthq', '87.425', '43.9258', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('c00a7f70b0d34203a37f296dfddd2ff0', '511303', '高坪区', 'GPQ', 'gpq', '106.26', '30.7547', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('c0602b568d694027bb28b6e6da699b8e', '370613', '莱山区', 'LSQ', 'lsq', '121.452', '37.4075', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('c068daf82a92430ea8a6b8e5ad69082f', '150500', '通辽市', 'TLS', 'tls', '122.26', '43.6338', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('c0a3f4be55a541ce9c1ed0769fd739d4', '331124', '松阳县', 'SYX', 'syx', '119.441', '28.4116', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('c0b58463392e4a6b828ce77a7acb5521', '623027', '夏河县', 'XHX', 'xhx', '102.507', '35.023', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('c0ef55fa77cf476e8e7f634bb62421e0', '510121', '金堂县', 'JTX', 'jtx', '104.615', '30.7286', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('c11592b6efd04c178b0460dcb5be0c4a', '430422', '衡南县', 'HNX', 'hnx', '112.649', '26.7598', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('c117562ea8484bcfb60710a50c55de56', '341101', '市辖区', 'SXQ', 'sxq', null, null, '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('c11787dfd0c34811a30247483bbf546c', '542222', '扎囊县', 'ZNX', 'znx', '91.4082', '29.2803', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('c1349f2957434050acf35560da359aa9', '530822', '墨江哈尼族自治县', 'MJHNZZZX', 'mjhnzzzx', '101.555', '23.3633', '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('c1392f6b1f994ab0ad9db30708620cd9', '340321', '怀远县', 'HYX', 'hyx', '117.042', '33.0371', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('c15c165cece74ee892e4608f72ccc638', '230231', '拜泉县', 'BQX', 'bqx', '126.022', '47.5923', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('c15e4d1b397e4363a9c2e3653c11340f', '431129', '江华瑶族自治县', 'JHYZZZX', 'jhyzzzx', '111.752', '24.9776', 'b39ec60a23c54f53bf3b71910f0ede3e');
INSERT INTO `t_area` VALUES ('c16ec28601ec4577a36759a232f03664', '451031', '隆林各族自治县', 'LLGZZZX', 'llgzzzx', '105.303', '24.6804', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('c19889f0d63e4270b1d7ae8574088adc', '542524', '日土县', 'RTX', 'rtx', '80.7197', '33.9847', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('c1b4734a9499400490a7ab6b0b536185', '320925', '建湖县', 'JHX', 'jhx', '119.836', '33.4889', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('c1e5c9b9e6fe425b926f0598ca333e5f', '430900', '益阳市', 'YYS', 'yys', '112.367', '28.5881', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('c1e5daac552b4d0983ab25e82e183aaa', '150123', '和林格尔县', 'HLGEX', 'hlgex', '111.902', '40.3339', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('c1efe45efe394624a1a352aed8dfc9f9', '500223', '潼南县', 'TNX', 'tnx', '105.82', '30.1499', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('c1f4f5c66ac548a0bd3c3e594fe442e0', '222404', '珲春市', 'HCS', 'hcs', '130.702', '43.0747', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('c1f854ff86a3430490dc2207288eeac3', '350723', '光泽县', 'GZX', 'gzx', '117.356', '27.6556', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('c204ed5ea4184a1389b0aaf998adb7fd', '130430', '邱县', 'QX', 'qx', '115.207', '36.7973', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('c210ba366559420ea709271ec25e8be8', '130184', '新乐市', 'XLS', 'xls', '114.762', '38.3776', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('c2233f385a7b4a7691964ba7c4f518e3', '130528', '宁晋县', 'NJX', 'njx', '115.022', '37.6121', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('c223498186ff417682cb231a1a29e186', '341103', '南谯区', 'NQQ', 'nqq', '118.271', '32.3102', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('c236fe23471944a7b1d1bff41ec3529a', '520624', '思南县', 'SNX', 'snx', '108.149', '27.8488', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('c259469e6c6e4da19c7c92c895de5fbd', '450100', '南宁市', 'NNS', 'nns', '108.297', '22.8065', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('c25e7f5552c94d7b85fb4d932cfaa0da', '230804', '前进区', 'QJQ', 'qjq', '103.546', '30.4086', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('c270930ff2b34042a90724ecb272b675', '430405', '珠晖区', 'ZHQ', 'zhq', '112.688', '26.8822', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('c28733215b80464db826d8ec5d314af6', '220702', '宁江区', 'NJQ', 'njq', '124.868', '45.2927', 'f208eee79d964759bf91d9cd7ca74233');
INSERT INTO `t_area` VALUES ('c28dc86685fd4ff3b8df2efd00b2cf05', '140728', '平遥县', 'PYX', 'pyx', '112.265', '37.1481', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('c2941a3e8224470b817d73e4917e25f4', '211403', '龙港区', 'LGQ', 'lgq', '120.905', '40.751', 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('c2ac55cdcc7e4d7c8d0ee085c8a1701e', '140100', '太原市', 'TYS', 'tys', '112.551', '37.8903', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('c2aca347e8c94866ad687b5f269449d6', '340721', '铜陵县', 'TLX', 'tlx', '117.919', '30.9524', 'bbee816f0c5e475ea74514a97e400481');
INSERT INTO `t_area` VALUES ('c2b1fcdd1ebe4665890dffb4caa55feb', '632722', '杂多县', 'ZDX', 'zdx', '94.3013', '33.0658', '836ceddbf0764941a9bfa03cb8719219');
INSERT INTO `t_area` VALUES ('c2bb75c20c1444b1b6ff142b00ce09eb', '210203', '西岗区', 'XGQ', 'xgq', '121.626', '38.9134', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('c2c459d3314b496aabf8c4600fbe2b99', '331127', '景宁畲族自治县', 'JNSZZZX', 'jnszzzx', '119.619', '27.8961', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('c2d3c20cf75b4f0e99018487b551b9b0', '530124', '富民县', 'FMX', 'fmx', '102.584', '25.3634', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('c2e48f3e0e8c41128d7b655521171c86', '211002', '白塔区', 'BTQ', 'btq', '123.175', '41.2793', 'a78e9843c09b473198a213a961e56952');
INSERT INTO `t_area` VALUES ('c2ed57b9772b4953a7f39c7c84920f26', '330110', '余杭区', 'YHQ', 'yhq', '119.998', '30.3881', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('c2fb796337644edca63bd050d7cc3363', '430000', '湖南省', 'HNS', 'hns', '111.721', '27.6959', '0');
INSERT INTO `t_area` VALUES ('c2fbdaf0f3b24480aaaf2774bb3cec14', '411329', '新野县', 'XYX', 'xyx', '112.416', '32.5534', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('c2ff10590b08499a87fbd5e3ef4b5ac4', '350900', '宁德市', 'NDS', 'nds', '119.542', '26.6565', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('c316927eb6d34b8fb39d63dd74dde8f7', '340504', '雨山区', 'YSQ', 'ysq', '118.555', '31.6597', 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('c31b38e3722d4016a00ee9edde0987c2', '451022', '田东县', 'TDX', 'tdx', '107.192', '23.6146', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('c35243e76ada4955866952090abca913', '220403', '西安区', 'XAQ', 'xaq', '125.15', '42.9864', '507ea0be588e47e19900b4aad1a4524e');
INSERT INTO `t_area` VALUES ('c35a53182359423d9e4c389d1a1dca2c', '440400', '珠海市', 'ZHS', 'zhs', '113.562', '22.2569', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('c365231f46204c9abad459de5c3aeddb', '140303', '矿区', 'KQ', 'kq', '113.541', '37.8908', '24208d947e4e4ccaaaf04a187d57ccf4');
INSERT INTO `t_area` VALUES ('c36e0f95840d443b9f50e2b2594a28c7', '411423', '宁陵县', 'NLX', 'nlx', '115.298', '34.4546', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('c3a187e716e44b64a259503903ba1040', '231124', '孙吴县', 'SWX', 'swx', '127.317', '49.3707', 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('c3a2e01e6178496b91ac0dd7a49e7054', '140581', '高平市', 'GPS', 'gps', '112.935', '35.8097', 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('c3a6d16b0a194ef08fa4ec7e34aaa9ce', '150302', '海勃湾区', 'HBWQ', 'hbwq', '106.861', '39.7348', 'f32203ff80ac40879b4a855066ccb21a');
INSERT INTO `t_area` VALUES ('c3ab511b2eee49888dfc3a2a9c11893a', '340203', '弋江区', 'YJQ', 'yjq', '118.336', '31.2167', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('c3c08bb2509e4ebe936d7f7658fc3f5e', '419001', '济源市', 'JYS', 'jys', '112.405', '35.1054', 'ae9bb1b0e4fc432eabf1df94e268ad0c');
INSERT INTO `t_area` VALUES ('c3d2df9a20614a1c8438defeaa12dc37', '411721', '西平县', 'XPX', 'xpx', '113.923', '33.3715', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('c3da9e35c260432eb87456a91870d58f', '440981', '高州市', 'GZS', 'gzs', '110.976', '22.0355', 'a5efe9509a6e4a0287e609aca6603955');
INSERT INTO `t_area` VALUES ('c3e0f35da089488fb85557fb24524ed2', '420624', '南漳县', 'NZX', 'nzx', '111.765', '31.6433', '94254868392349baa57b7bdfd8215eda');
INSERT INTO `t_area` VALUES ('c3e32172203b4048b60595b908e8574a', '320115', '江宁区', 'JNQ', 'jnq', '118.835', '31.864', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('c3e9970474c54bd993dfe4868cd99842', '530700', '丽江市', 'LJS', 'ljs', '100.23', '26.8754', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('c3f9a8b4961f4365a54d5bea93d74e70', '422800', '恩施土家族苗族自治州', 'ESTJZMZZZZ', 'estjzmzzzz', '109.492', '30.2859', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('c3fd46adac8246049458957cc17e59d3', '623024', '迭部县', 'DBX', 'dbx', '103.57', '34.0056', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('c405f9f99de24f0ea9ad476faf532e3f', '370684', '蓬莱市', 'PLS', 'pls', '120.863', '37.6612', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('c4097a55832f4cda9e8bc0984e7bbdab', '621000', '庆阳市', 'QYS', 'qys', '107.644', '35.7268', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('c424607ddb2842c096d74405fb5b3406', '440307', '龙岗区', 'LGQ', 'lgq', '114.348', '22.6575', 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('c42a563971994a0ba4608f3dbfe9673e', '321100', '镇江市', 'ZJS', 'zjs', '119.456', '32.2044', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('c445be6773db4428bb64a0e45055384d', '110109', '门头沟区', 'MTGQ', 'mtgq', '115.796', '40.0009', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('c456d4ddf7ec4b7692c562c81085789c', '610324', '扶风县', 'FFX', 'ffx', '107.925', '34.412', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('c45ca9f452774106b2436dfa9a77af9f', '441203', '鼎湖区', 'DHQ', 'dhq', '112.625', '23.209', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('c474d3407ef042588fc03294a46b660f', '440601', '市辖区', 'SXQ', 'sxq', null, null, 'ca3b6b5a1b1240afaa43f8fede431538');
INSERT INTO `t_area` VALUES ('c487621bb30c41dcb280a4dc337803a2', '330103', '下城区', 'XCQ', 'xcq', '120.187', '30.3103', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('c49bcc7c29c14377baeca77e1c5094c9', '532529', '红河县', 'HHX', 'hhx', '102.243', '23.251', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('c49e2d4473bd4853aedb420952fc9273', '340302', '龙子湖区', 'LZHQ', 'lzhq', '117.478', '32.9263', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('c4a564121abf451eb68d57a28c17c217', '220581', '梅河口市', 'MHKS', 'mhks', '125.724', '42.5426', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('c4b2e5051c79470db3c23c643af6f0d1', '341182', '明光市', 'MGS', 'mgs', '118.141', '32.8118', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('c4b828709fff41c0a3bdb4b1abcf9231', '130901', '市辖区', 'SXQ', 'sxq', null, null, '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('c4bc2d12c0294bc9b0c9ba70f048e9b7', '231100', '黑河市', 'HHS', 'hhs', '127.501', '50.2507', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('c4d4aabe66424edd9a3beb5717ccbf47', '451121', '昭平县', 'ZPX', 'zpx', '110.977', '24.1081', 'dbc8dfb8a16844dc9d987611ec696ffc');
INSERT INTO `t_area` VALUES ('c50de08605f047f2aa037de9de04c6d1', '411524', '商城县', 'SCX', 'scx', '115.375', '31.7663', '7067f4131f7044e5add5bf4d6063622e');
INSERT INTO `t_area` VALUES ('c5387d7a92a446dc8ed501fb1454f6ad', '500200', '县', 'X', 'x', null, null, '02ace76b8f3e47a0bd95cf6d8a709d6d');
INSERT INTO `t_area` VALUES ('c55820cb379f4f80a2d80476d7331130', '441224', '怀集县', 'HJX', 'hjx', '112.18', '23.9743', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('c5876fe7804d41e3953a6828948bb2c0', '430382', '韶山市', 'SSS', 'sss', '112.533', '27.9273', 'a7d11d332fb046ffae4054c1ab1e87e3');
INSERT INTO `t_area` VALUES ('c58bf43bf7c04e0c874b03b90b54d550', '231225', '明水县', 'MSX', 'msx', '125.841', '47.2012', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('c5ab49b93ef04ff8a740aefcaa0ab26e', '320282', '宜兴市', 'YXS', 'yxs', '119.79', '31.3622', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('c5aeecd2cc494616bdda540615ff41dc', '310101', '黄浦区', 'HPQ', 'hpq', '121.496', '31.2272', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('c5b483f0dddf4d0d9eeefcb73584fda7', '451024', '德保县', 'DBX', 'dbx', '106.594', '23.3822', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('c5ba18e93473481ba1da640074eefaff', '511621', '岳池县', 'YCX', 'ycx', '106.421', '30.5408', 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('c5bc66c616e4453d83dc5c5885af12a3', '610821', '神木县', 'SMX', 'smx', '110.331', '38.829', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('c5cee6f57cb94ef3a86a524de939c5cb', '510106', '金牛区', 'JNQ', 'jnq', '104.061', '30.7356', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('c5eee49e3f2147bc93fc54a3952c02de', '230182', '双城市', 'SCS', 'scs', '126.189', '45.4082', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('c5f0a7a468db4d569e495bb48b1cd47d', '530328', '沾益县', 'ZYX', 'zyx', '103.846', '25.7867', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('c60dfb6fe18745299568c888ea42b6f1', '441523', '陆河县', 'LHX', 'lhx', '115.629', '23.2844', '9cc1b1b3078b418280f2ca711b950c35');
INSERT INTO `t_area` VALUES ('c61bccd786de43d4aa79934164877a04', '620403', '平川区', 'PCQ', 'pcq', '104.946', '36.6903', '0800f56287ad4d55bb0ec1cb3de20ecc');
INSERT INTO `t_area` VALUES ('c62686c0fec84491b212849206d764ac', '542125', '丁青县', 'DQX', 'dqx', '95.3118', '31.6817', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('c63b30df27d44454aa9486c425286ac9', '350500', '泉州市', 'QZS', 'qzs', '118.6', '24.9017', '5c0b1151358046d8855f34a4be9997dd');
INSERT INTO `t_area` VALUES ('c6498039036546e887d400892dee7aad', '441900', '东莞市', 'DGS', 'dgs', '113.763', '23.043', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('c64ab3640ec14d59b44bd67cf6c224cd', '652701', '博乐市', 'BLS', 'bls', '81.8743', '44.8442', 'decc0233cca8458db74346e0695d320e');
INSERT INTO `t_area` VALUES ('c6623b22370d4b628988b4e623769e34', '421023', '监利县', 'JLX', 'jlx', '113.002', '29.8489', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('c680350c4656480aa3ac07eeb9228716', '430482', '常宁市', 'CNS', 'cns', '112.436', '26.3656', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('c68c155e028a4cd4b054084a96e7152f', '370000', '山东省', 'SDS', 'sds', '118.528', '36.0993', '0');
INSERT INTO `t_area` VALUES ('c6a2a0431bff40d2a8aa346ee8d18646', '530301', '市辖区', 'SXQ', 'sxq', null, null, '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('c6aca66e1d1c489b889de55448e2918a', '430501', '市辖区', 'SXQ', 'sxq', null, null, 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('c6ae0a1ad99047b59bdece13cf3b49c4', '421223', '崇阳县', 'CYX', 'cyx', '114.068', '29.4618', 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('c6b8abc7ae1549098d6c54e4108d124d', '621202', '武都区', 'WDQ', 'wdq', '105.135', '33.2939', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('c6c0b1a19ce24adbb83fc079b0d346f0', '130823', '平泉县', 'PQX', 'pqx', '118.739', '41.0753', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('c6d3e69400df468c9f8256a7e8d62532', '320601', '市辖区', 'SXQ', 'sxq', null, null, '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('c6f3f32b76f74f3ea0e6059e8cec2c07', '360681', '贵溪市', 'GXS', 'gxs', '117.198', '28.1906', 'e3608de815dd4b8e825407c8b73f5700');
INSERT INTO `t_area` VALUES ('c701bd9f1a3a4f3996acfb3d183835b0', '420101', '市辖区', 'SXQ', 'sxq', null, null, '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('c70ae6d869f0403788f7ce1ad141d78c', '360724', '上犹县', 'SYX', 'syx', '114.403', '25.9393', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('c712323c58434854a50623a9ac58ed7a', '431381', '冷水江市', 'LSJS', 'lsjs', '111.494', '27.6849', '224c42b8e8d64becb335fdec0f071c0f');
INSERT INTO `t_area` VALUES ('c7353a2bba6a4518a0009b70dd22fd4f', '540000', '西藏自治区', 'XZZZQ', 'xzzzq', '89.138', '31.3673', '0');
INSERT INTO `t_area` VALUES ('c737e3d803fd44069861217055cf36bb', '340201', '市辖区', 'SXQ', 'sxq', null, null, '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('c7560607fbac4b7fb2e70021937c50e3', '231121', '嫩江县', 'NJX', 'njx', '125.771', '49.6219', 'c4bc2d12c0294bc9b0c9ba70f048e9b7');
INSERT INTO `t_area` VALUES ('c7591913e78847599b8fa1368ab5671c', '371002', '环翠区', 'HCQ', 'hcq', '122.152', '37.3993', '7323eba94c9540d68004b46262fa31cf');
INSERT INTO `t_area` VALUES ('c76bc7f4ac6b4298bad64ab11f29cd98', '360301', '市辖区', 'SXQ', 'sxq', null, null, '1b16915c9c7b4ce6857b8da456e534b9');
INSERT INTO `t_area` VALUES ('c7717a5ee3964810967dd59d8214d055', '513423', '盐源县', 'YYX', 'yyx', '101.468', '27.603', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('c77427b01e11455ca78e7d33efea318b', '420801', '市辖区', 'SXQ', 'sxq', null, null, 'eacb1ce2016a4db48ec4b12116584c1f');
INSERT INTO `t_area` VALUES ('c77ffd04cce044fdb26c2b0231866ee2', '341102', '琅琊区', 'LYQ', 'lyq', '118.338', '32.3385', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('c789840a132a4d3bb7a8141d6eaa1138', '330727', '磐安县', 'PAX', 'pax', '120.567', '29.0442', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('c795e36d696e4906ba9eae56aebe62b9', '460204', '天涯区', 'TYQ', 'tyq', null, null, 'cf3d29a5792a41f48a9ce52d2dda943b');
INSERT INTO `t_area` VALUES ('c79fc71ab0f9461db0cf2d3a9328a2d4', '510921', '蓬溪县', 'PXX', 'pxx', '105.716', '30.6575', 'fe672e515db8472e87574333b48c3e45');
INSERT INTO `t_area` VALUES ('c7cf139d7bb74ef3a81b6ca32f666203', '340104', '蜀山区', 'SSQ', 'ssq', '117.231', '31.8382', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('c7dd52730cb44c98b6838221963dc1a2', '350111', '晋安区', 'JAQ', 'jaq', '119.315', '26.2218', '859f5a2803e1475ba20c5b0f4c17e774');
INSERT INTO `t_area` VALUES ('c7ed5025ccdb47b8953e07fee2397a34', '140729', '灵石县', 'LSX', 'lsx', '111.736', '36.8345', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('c81f2d6b9af24d89b9e8850130051b1c', '230714', '乌伊岭区', 'WYLQ', 'wylq', '129.499', '48.8367', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('c831b0704e1f4dafaf193b6c1a9cc6f2', '440105', '海珠区', 'HZQ', 'hzq', '113.334', '23.0876', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('c84c89f305284d9e8db65a73435359cc', '431027', '桂东县', 'GDX', 'gdx', '113.906', '25.9866', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('c87e9c4648fb4fe4b582203195973c54', '370302', '淄川区', 'ZCQ', 'zcq', '118.02', '36.5855', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('c880cee301d34da4a25e4a8102e9e607', '411201', '市辖区', 'SXQ', 'sxq', null, null, '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('c8974ddc2a714060bf3a3f492dc1c832', '511521', '宜宾县', 'YBX', 'ybx', '104.383', '28.9069', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('c8a05176893b4074a3daf4297a1cddcb', '440115', '南沙区', 'NSQ', 'nsq', '113.58', '22.7299', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('c8b91ecc73cc49b38520e463c90fad2c', '371202', '莱城区', 'LCQ', 'lcq', '117.646', '36.3134', 'd25e2db0c9ef4b1cb28b76c7a152467a');
INSERT INTO `t_area` VALUES ('c8cf8e7a584f49feb20f7039f396aa23', '130205', '开平区', 'KPQ', 'kpq', '118.258', '39.6921', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('c8dae369045f416782e3bc86fd3404ed', '511900', '巴中市', 'BZS', 'bzs', '106.758', '31.8692', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('c8f6a7a43e0f401e88c91dec11e8a91d', '650102', '天山区', 'TSQ', 'tsq', '87.6329', '43.7839', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('c91ef6395e2f437892ae7845c7f1b0fa', '210922', '彰武县', 'ZWX', 'zwx', '122.474', '42.5238', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('c927f3012e0c4a1e899d49873078b696', '420506', '夷陵区', 'YLQ', 'ylq', '111.311', '30.98', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('c930b9f6d4404ffaaf55210007998571', '430811', '武陵源区', 'WLYQ', 'wlyq', '110.488', '29.3572', '94fbd360ab114e599dbc7fccbb59a832');
INSERT INTO `t_area` VALUES ('c935c344346f4a5cab85b7230f0db537', '450125', '上林县', 'SLX', 'slx', '108.646', '23.5217', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('c9900490233d4da1a6e671d0d12c7d41', '141001', '市辖区', 'SXQ', 'sxq', null, null, 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('c9a02810b5f44d69be1daab9d19baaec', '430725', '桃源县', 'TYX', 'tyx', '111.271', '28.9178', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('c9b449e13e2d46faa76a391de8c6aa17', '150223', '达尔罕茂明安联合旗', 'DEHMMALHQ', 'dehmmalhq', '110.286', '41.9435', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('c9c0dc32228c4293aa3da7ca649e199f', '450701', '市辖区', 'SXQ', 'sxq', null, null, '7ed79c566cfb42e39424806a872e2f61');
INSERT INTO `t_area` VALUES ('c9f55d5c8bed4adc8d804ec5051d3979', '150783', '扎兰屯市', 'ZLTS', 'zlts', '121.929', '47.7434', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('ca0a6522a4dd478dbefc06903bd8c3bb', '429000', '省直辖县级行政区划', 'SZXXJXZQH', 'szxxjxzqh', null, null, 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('ca0fed4e5fc14f85a9090bef49a33ab1', '140400', '长治市', 'ZZS', 'zzs', '113.12', '36.2017', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('ca110abdb59445ea8b78968372f9b7ff', '330206', '北仑区', 'BLQ', 'blq', '121.889', '29.8683', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('ca2be3e63b144165bf8879d370aded27', '220283', '舒兰市', 'SLS', 'sls', '127.117', '44.3355', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('ca30ee8c4f294a8aa2dc90fb09b6c9e3', '450621', '上思县', 'SSX', 'ssx', '107.902', '22.0536', 'b20c1f95e080453d8c1ff1efe0f64d53');
INSERT INTO `t_area` VALUES ('ca3b6b5a1b1240afaa43f8fede431538', '440600', '佛山市', 'FSS', 'fss', '113.134', '23.0351', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('ca51c204cd69461a98f5a4f63534a19e', '360101', '市辖区', 'SXQ', 'sxq', null, null, '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('ca6d4c6be8314921ad4f0662103d34fd', '350206', '湖里区', 'HLQ', 'hlq', '118.145', '24.522', '0db9e79f34824f3a83747bf5ee15b76a');
INSERT INTO `t_area` VALUES ('ca70fa75494943feac17a25e039bc0ec', '230624', '杜尔伯特蒙古族自治县', 'DEBTMGZZZX', 'debtmgzzzx', '124.247', '46.5616', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('ca7baa8736f94a9fb4679a4f394a78cb', '320402', '天宁区', 'TNQ', 'tnq', '120.002', '31.7778', 'aedb51a701414c0a9d6c5ac6dc4fe75a');
INSERT INTO `t_area` VALUES ('ca8f16a5821f4eb5a4e2f76503ccf0a7', '320106', '鼓楼区', 'GLQ', 'glq', '118.765', '32.0686', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('ca99b56d30ec4b47be34d9a078d9ece7', '340402', '大通区', 'DTQ', 'dtq', '117.117', '32.6435', '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('caa1f74a3bf749859c7ed984dbd3efda', '520111', '花溪区', 'HXQ', 'hxq', '106.665', '26.3979', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('cac0751b5b8f44e8a3f12c80c8716e9d', '130121', '井陉县', 'JXX', 'jxx', '114.078', '38.0009', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('caf0af41343e4296825e019a8861f7c3', '150402', '红山区', 'HSQ', 'hsq', '118.998', '42.2862', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('cafa07f06ecf4e2ebfbbbdb80aac4803', '511603', '前锋区', 'QFQ', 'qfq', null, null, 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('cb01bbf0ee7e4ff89e8d965bfc8cc0ce', '210803', '西市区', 'XSQ', 'xsq', '122.21', '40.667', '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('cb02a881a1684973997a5aa82488f2d0', '430304', '岳塘区', 'YTQ', 'ytq', '113.023', '27.9277', 'a7d11d332fb046ffae4054c1ab1e87e3');
INSERT INTO `t_area` VALUES ('cb1396be6b8249da9ef58f11d5c37362', '210600', '丹东市', 'DDS', 'dds', '124.339', '40.129', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('cb30ef202fc54d6590cb46f1b069198e', '610401', '市辖区', 'SXQ', 'sxq', null, null, '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('cb3f4c3b7f7a4bca896500363092db41', '410900', '濮阳市', 'PYS', 'pys', '115.027', '35.7533', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('cb46dcfc7f304ab2b04d8b70fb544294', '231223', '青冈县', 'QGX', 'qgx', '125.961', '46.8466', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('cb549b9cc852440283aa1c9d5a1e007c', '360829', '安福县', 'AFX', 'afx', '114.456', '27.3613', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('cb717b75c1364c31b8de7e33778a260f', '530622', '巧家县', 'QJX', 'qjx', '103.13', '27.0083', '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('cb799ee1bf2c4fd2b547b14c2af46f0b', '350603', '龙文区', 'LWQ', 'lwq', '117.704', '24.5372', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('cb995c127800426683351ad5ce115f2a', '640301', '市辖区', 'SXQ', 'sxq', null, null, '1b11b582e514437184c3364fe8e7fbf2');
INSERT INTO `t_area` VALUES ('cbd502f4cfdd4880911a810f79463264', '141127', '岚县', 'LX', 'lx', '111.607', '38.3438', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('cbe427fb623644a7b9467d6c77e8a9b8', '433100', '湘西土家族苗族自治州', 'XXTJZMZZZZ', 'xxtjzmzzzz', '109.746', '28.318', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('cc0e88538f0446efb12735b7e05bd9ed', '360000', '江西省', 'JXS', 'jxs', '115.676', '27.7573', '0');
INSERT INTO `t_area` VALUES ('cc1863d74f744325b2e6dc753dab4a3c', '610601', '市辖区', 'SXQ', 'sxq', null, null, '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('cc296d58161347df8416e03ecefd7c0a', '230123', '依兰县', 'YLX', 'ylx', '129.721', '46.2756', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('cc3d4fe89f5041b2bd98f46280d77ef8', '533123', '盈江县', 'YJX', 'yjx', '97.9221', '24.8623', 'bee4a801ad99461593071a31b8249bc1');
INSERT INTO `t_area` VALUES ('cc5124a4fd4f4a85b905c7b89178fe4c', '410402', '新华区', 'XHQ', 'xhq', '114.453', '38.1172', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('cc51fc65de8241e5ba10b0def5e960f8', '350721', '顺昌县', 'SCX', 'scx', '117.874', '26.9087', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('cc5d495ccf8b428cb5ce7670d014bd59', '610830', '清涧县', 'QJX', 'qjx', '110.289', '37.1874', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('cc772b2e1b6b48b0a3cc2210f0e70d2c', '130204', '古冶区', 'GYQ', 'gyq', '118.462', '39.723', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('cc794cea7f1d44be8b19217779d47453', '542225', '琼结县', 'QJX', 'qjx', '91.6138', '29.0117', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('cc7a1ad42fe344e08aaa6496bd107ccf', '610926', '平利县', 'PLX', 'plx', '109.27', '32.2913', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('cc90578a2275446a8185c73a2b743aa7', '500233', '忠县', 'ZX', 'zx', '107.922', '30.342', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('cc9dd165d5994b43ab82152c9e5882b2', '620623', '天祝藏族自治县', 'TZZZZZX', 'tzzzzzx', '102.761', '37.2809', 'd1effea105c14bbbbb4c8fe5fcf24e51');
INSERT INTO `t_area` VALUES ('cca1a606f53842af826bda5ede6b62d4', '610701', '市辖区', 'SXQ', 'sxq', null, null, '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('ccaa5f2c4b714538b113d0fe28a56a23', '131026', '文安县', 'WAX', 'wax', '116.495', '38.9114', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('ccce055fabdd404582835d21230dfe16', '130626', '定兴县', 'DXX', 'dxx', '115.755', '39.2115', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('ccd3fc2990044496bb28dd95d48feee9', '510181', '都江堰市', 'DJYS', 'djys', '103.637', '31.0391', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('ccf467fc794242b6857774864e950ee3', '630121', '大通回族土族自治县', 'DTHZTZZZX', 'dthztzzzx', '101.49', '37.1207', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('cd08a15b77444567b1506b6fc4a28001', '440114', '花都区', 'HDQ', 'hdq', '113.22', '23.4467', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('cd276be942934121a58fb8e6d333dc38', '152202', '阿尔山市', 'AESS', 'aess', '120.358', '47.1637', '111d59a069534708961e303559a4e6db');
INSERT INTO `t_area` VALUES ('cd3a770f66ed4d93b14f636a1ce05170', '210282', '普兰店市', 'PLDS', 'plds', '122.274', '39.62', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('cd6cd2af0a1648b3a46d6e46e617bab1', '230700', '伊春市', 'YCS', 'ycs', '128.911', '47.7347', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('cd78165019ff4dc38e063ef539c67367', '451000', '百色市', 'BSS', 'bss', '106.632', '23.9015', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('cd83072a51dd46f28384655ee35b1ac2', '532623', '西畴县', 'XCX', 'xcx', '104.688', '23.3627', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('cd8eade672a345ecb728053e30e08649', '632801', '格尔木市', 'GEMS', 'gems', '92.7017', '35.581', '62daf966c7a344b6872e45ca3b3c9644');
INSERT INTO `t_area` VALUES ('cdaab4e467f24b89b093ccc6064a1b15', '411701', '市辖区', 'SXQ', 'sxq', null, null, '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('cdbeffc5cdc84e659c66bb15cc6ec9b1', '450501', '市辖区', 'SXQ', 'sxq', null, null, '6b447a5376a54f088671d5f0a057f986');
INSERT INTO `t_area` VALUES ('cdcf18d89cb14e95938e0cdca3e7897d', '431222', '沅陵县', 'YLX', 'ylx', '110.601', '28.5766', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('cdec154966a048f6a282ec8ae9cd3103', '140932', '偏关县', 'PGX', 'pgx', '111.672', '39.4646', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('cdf508604ce84f8aad0ad5c8b91ea310', '341126', '凤阳县', 'FYX', 'fyx', '117.611', '32.7922', '14d9abf711a84e83b63a625724e087cd');
INSERT INTO `t_area` VALUES ('ce08a96697fb4f24a97fd9ba36932555', '460106', '龙华区', 'LHQ', 'lhq', '110.335', '19.9054', '5f0de73ecf1b4cbda3e05787d278d892');
INSERT INTO `t_area` VALUES ('ce09b8dc346748d491e385ee15ec935c', '632626', '玛多县', 'MDX', 'mdx', '98.2445', '34.7976', '1dd19b4dbd6e441d8864c7855b538cd7');
INSERT INTO `t_area` VALUES ('ce105025d8f648c78d84348c52249937', '350924', '寿宁县', 'SNX', 'snx', '119.506', '27.4262', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('ce2906a05e64476d850af736ad54150f', '130703', '桥西区', 'QXQ', 'qxq', '114.438', '38.0334', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('ce38b958edd44e52866eb149cc7f8abb', '610902', '汉滨区', 'HBQ', 'hbq', '108.896', '32.8145', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('ce63fe6b62ed4846add0c0f9c682f55f', '530321', '马龙县', 'MLX', 'mlx', '103.513', '25.3688', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('ce6b32db12804986ade7350376a09af6', '450226', '三江侗族自治县', 'SJDZZZX', 'sjdzzzx', '109.51', '25.7476', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('ce805b93cfbf44efac9be00b5633e954', '370503', '河口区', 'HKQ', 'hkq', '118.62', '37.9695', '46641c8bfa004a55aa1e0b50152dc582');
INSERT INTO `t_area` VALUES ('ce8d4ca91b5948788bd0086eea8c7512', '320305', '贾汪区', 'JWQ', 'jwq', '117.498', '34.4105', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('cecaeca53ed34376ae75cffa29bab702', '150900', '乌兰察布市', 'WLCBS', 'wlcbs', '113.113', '41.0224', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('cee24b69093f47ae8e1822e5c5f9ae76', '460000', '海南省', 'HNS', 'hns', '109.734', '19.1805', '0');
INSERT INTO `t_area` VALUES ('ceeca6fbe5f1456fb2187f89e83ee32c', '210604', '振安区', 'ZAQ', 'zaq', '124.292', '40.2115', 'cb1396be6b8249da9ef58f11d5c37362');
INSERT INTO `t_area` VALUES ('cef8923b412a495dacd4cc3e953a5e90', '532325', '姚安县', 'YAX', 'yax', '101.211', '25.517', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('cf0ffa28178c49d18d6d69364c2bf055', '620000', '甘肃省', 'GSS', 'gss', '102.458', '38.1033', '0');
INSERT INTO `t_area` VALUES ('cf15316f5b3a42778eaabd20cdb0fd1e', '220501', '市辖区', 'SXQ', 'sxq', null, null, 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('cf1e2fff92e94fd6aa52c3858c31441e', '421381', '广水市', 'GSS', 'gss', '113.813', '31.6823', '4fa78f339565446b8ed4c663c52c2df8');
INSERT INTO `t_area` VALUES ('cf1e3407c7e54cf3879fd4d3150039f8', '120114', '武清区', 'WQQ', 'wqq', '117.035', '39.457', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('cf36f31138174f12ba68a794b91305a0', '652702', '阿拉山口市', 'ALSKS', 'alsks', '115.937', '39.7125', 'decc0233cca8458db74346e0695d320e');
INSERT INTO `t_area` VALUES ('cf3d29a5792a41f48a9ce52d2dda943b', '460200', '三亚市', 'SYS', 'sys', '109.523', '18.2578', 'cee24b69093f47ae8e1822e5c5f9ae76');
INSERT INTO `t_area` VALUES ('cf40ac25d650455cabf3cab8bba5dfba', '421124', '英山县', 'YSX', 'ysx', '115.774', '30.873', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('cf49ac52c0c546a1baeda0ed43c5518f', '210201', '市辖区', 'SXQ', 'sxq', null, null, '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('cf712d22331e469190d0aa34f468a487', '610331', '太白县', 'TBX', 'tbx', '107.417', '33.943', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('cf7e9c4bed194095931f988f0c57ac49', '321324', '泗洪县', 'SHX', 'shx', '118.313', '33.426', '6cc757f4428c4ab9a7f5783a328ea2af');
INSERT INTO `t_area` VALUES ('cf816bb081c84ba5ab23a3505662eb6b', '350922', '古田县', 'GTX', 'gtx', '118.88', '26.6189', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('cf8fe85157164c91b9831b11e6058e17', '441323', '惠东县', 'HDX', 'hdx', '114.956', '23.0491', '7e42aca6103e4ababd7f9517dbe01160');
INSERT INTO `t_area` VALUES ('cf90d9300ac64b5a9c4cab7f58b1303c', '411627', '太康县', 'TKX', 'tkx', '114.856', '34.0971', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('cf9e32e6f5754d619515864a2a01612c', '361026', '宜黄县', 'YHX', 'yhx', '116.251', '27.3931', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('cfa173a58d8947509473bd8ca275435a', '520425', '紫云苗族布依族自治县', 'ZYMZBYZZZX', 'zymzbyzzzx', '106.188', '25.7006', '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('cfa73c1560bf438391631d811f245637', '360426', '德安县', 'DAX', 'dax', '115.634', '29.4017', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('cfad9c2091cb425282c4f2f07a743fda', '340822', '怀宁县', 'HNX', 'hnx', '116.804', '30.579', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('cfd92d585dc54c4ebb68a94b6723ed20', '542626', '察隅县', 'CYX', 'cyx', '97.0691', '28.6817', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('cfec7e06a7cc4674b1d6a13a9b54e04a', '610322', '凤翔县', 'FXX', 'fxx', '107.437', '34.577', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('cff0d740096248e58b1dfa1effe10d0a', '130202', '路南区', 'LNQ', 'lnq', '118.206', '39.613', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('d01c843fbb704c79aee7c4fcad5a8741', '441800', '清远市', 'QYS', 'qys', '113.041', '23.6985', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('d020d3367df44ac896d47116cae678c0', '411325', '内乡县', 'NXX', 'nxx', '111.847', '33.2244', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('d02363c0f64d4766998fe8a23cd56719', '140224', '灵丘县', 'LQX', 'lqx', '114.213', '39.3773', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('d0265f86c693451d95c21f086af64ff8', '530902', '临翔区', 'LXQ', 'lxq', '100.14', '23.8496', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('d02ba56592064eb6ab8e127799a94539', '350402', '梅列区', 'MLQ', 'mlq', '117.631', '26.3074', '0838bdfc651940c58916c0b21561a727');
INSERT INTO `t_area` VALUES ('d02f982dd57048949ccf9475745a13e7', '410224', '开封县', 'KFX', 'kfx', '114.452', '34.726', '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('d03858436b504e688f9685110bfeefc4', '420000', '湖北省', 'HBS', 'hbs', '112.411', '31.2093', '0');
INSERT INTO `t_area` VALUES ('d042c1d1650e484bb5f09d8a02e70423', '141023', '襄汾县', 'XFX', 'xfx', '111.386', '35.8742', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('d0502ec37ac64f20ace5c37c4e12b55e', '320205', '锡山区', 'XSQ', 'xsq', '120.491', '31.6156', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('d055de69da144300a9e72d04c79cac01', '350784', '建阳市', 'JYS', 'jys', '118.068', '27.4084', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('d05e394f890344469e1355b2915b75bb', '522622', '黄平县', 'HPX', 'hpx', '107.869', '26.9531', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('d066e22bd5a34d10afe66d738e0a3554', '533122', '梁河县', 'LHX', 'lhx', '98.3221', '24.7437', 'bee4a801ad99461593071a31b8249bc1');
INSERT INTO `t_area` VALUES ('d068730b61154b9783149fea6c09ee82', '130926', '肃宁县', 'SNX', 'snx', '115.886', '38.4222', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('d09ae3c8280545379f287f292c9f87e3', '130200', '唐山市', 'TSS', 'tss', '118.183', '39.6505', 'e1dd3c4220a44e4a9586692a9935fdf8');
INSERT INTO `t_area` VALUES ('d0bd9e304dec4b5580443e50417a178b', '421102', '黄州区', 'HZQ', 'hzq', '114.95', '30.5188', 'ed9fdc489a10400f96df61e523d767f4');
INSERT INTO `t_area` VALUES ('d0c498b67c0e4e99b0f4f21277e9cf73', '520200', '六盘水市', 'LPSS', 'lpss', '104.852', '26.5919', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('d0d1f3ee92de435c969abea42a46ce7a', '130301', '市辖区', 'SXQ', 'sxq', null, null, '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('d0e34673170a4480ab5735fa8a1b049e', '340823', '枞阳县', 'ZYX', 'zyx', '117.386', '30.8603', '4024dec44c7a4414acd5894d136a976b');
INSERT INTO `t_area` VALUES ('d0fcae7db9724494a06a3db759d74b80', '522632', '榕江县', 'RJX', 'rjx', '108.42', '26.0363', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('d1011e88b81c4e2d8474c8bc5d3db2ba', '440904', '电白区', 'DBQ', 'dbq', null, null, 'a5efe9509a6e4a0287e609aca6603955');
INSERT INTO `t_area` VALUES ('d11c50f10ce740afadee951ab17c7f83', '420802', '东宝区', 'DBQ', 'dbq', '112.087', '31.1298', 'eacb1ce2016a4db48ec4b12116584c1f');
INSERT INTO `t_area` VALUES ('d11d13250ec444ddbaff1d9f995e4df8', '131102', '桃城区', 'TCQ', 'tcq', '115.667', '37.7242', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('d1242306dba84486a7c32a3c0daf7cc1', '411421', '民权县', 'MQX', 'mqx', '115.178', '34.6961', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('d12f2542265249bcaafe60b5174c574e', '610323', '岐山县', 'QSX', 'qsx', '107.689', '34.4107', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('d13282d2198c4558acdd97e03a94f967', '130501', '市辖区', 'SXQ', 'sxq', null, null, '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('d147cbf92b724ba385663b81047c54d5', '410302', '老城区', 'LCQ', 'lcq', '112.459', '34.704', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('d170e8567ff748199d1642ee2b793ebd', '410108', '惠济区', 'HJQ', 'hjq', '113.628', '34.8694', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('d17d4c26e3ce4bedb91c6ce8031d60fd', '130828', '围场满族蒙古族自治县', 'WCMZMGZZZX', 'wcmzmgzzzx', '117.547', '42.108', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('d1aaad3f591f42ed8c7f05b4fdc86f88', '520123', '修文县', 'XWX', 'xwx', '106.591', '26.9315', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('d1eafdf1f2a647fba677ffd49be9d1fb', '510302', '自流井区', 'ZLJQ', 'zljq', '104.708', '29.2826', 'fc0bf3790dcf4d3fb23b18686c7851bf');
INSERT INTO `t_area` VALUES ('d1ed75c629c0465abacd3b1c1c03c82f', '430104', '岳麓区', 'YLQ', 'ylq', '112.909', '28.2027', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('d1ef55155ebb4ec9ad0b134d6b089d4b', '130534', '清河县', 'QHX', 'qhx', '115.692', '37.0405', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('d1effea105c14bbbbb4c8fe5fcf24e51', '620600', '武威市', 'WWS', 'wws', '102.64', '37.9332', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('d1f3098741d3430e8e94e37f29dae1f5', '530128', '禄劝彝族苗族自治县', 'LQYZMZZZX', 'lqyzmzzzx', '102.593', '25.9438', 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('d206c7f992d14f7ea8327f3da64a7dd5', '654326', '吉木乃县', 'JMNX', 'jmnx', '86.2081', '47.4063', 'd5e355fe50a7413192414e239a13d8b9');
INSERT INTO `t_area` VALUES ('d2077a7cd49748e5a0cbb2bc1448e494', '441700', '阳江市', 'YJS', 'yjs', '111.977', '21.8715', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('d20957ec2ddb49abbe561763f16531da', '152524', '苏尼特右旗', 'SNTYQ', 'sntyq', '112.912', '42.901', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('d247bab5df9b4318b7c4003f0315ac3e', '430723', '澧县', 'LX', 'lx', '111.708', '29.7502', '47aeac3dba83452592c564a54c6bb022');
INSERT INTO `t_area` VALUES ('d2496dedc69847b9b87d5a83ca1317c4', '652929', '柯坪县', 'KPX', 'kpx', '78.9947', '40.4567', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('d24ee2b117d74870990ce260ca98a92f', '632222', '祁连县', 'QLX', 'qlx', '99.7113', '38.3279', '71a035f3b38b4554b63b1da0cfbdf690');
INSERT INTO `t_area` VALUES ('d25e2db0c9ef4b1cb28b76c7a152467a', '371200', '莱芜市', 'LWS', 'lws', '117.685', '36.2337', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('d272b29d9ee3474d99672b1a681e301d', '131028', '大厂回族自治县', 'DCHZZZX', 'dchzzzx', '116.955', '39.8953', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('d27967c0844e41cdb51858dc601249fa', '621123', '渭源县', 'WYX', 'wyx', '104.146', '35.1395', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('d282243d2b6d43858ca40ce36a1ddc8d', '450502', '海城区', 'HCQ', 'hcq', '109.165', '21.5186', '6b447a5376a54f088671d5f0a057f986');
INSERT INTO `t_area` VALUES ('d293ac1cdd714a0f91c7311f9bb4d01d', '610425', '礼泉县', 'LQX', 'lqx', '108.483', '34.5979', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('d29a11f737ce421db04fde11e4d97428', '430421', '衡阳县', 'HYX', 'hyx', '112.352', '27.1096', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('d2a0ce86c9ea47feb3e61649017899be', '522633', '从江县', 'CJX', 'cjx', '108.73', '25.7188', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('d2b8d5dd683246ea9606102a96fbca12', '511700', '达州市', 'DZS', 'dzs', '107.495', '31.2142', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('d2da77fff328403fad3abaefd3f229fc', '520525', '纳雍县', 'NYX', 'nyx', '105.284', '26.8085', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('d2f30bfc9623459f97da1a6f292ecf34', '230129', '延寿县', 'YSX', 'ysx', '128.464', '45.4895', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('d2f5603ec2554d57ba6317b4c5889319', '632724', '治多县', 'ZDX', 'zdx', '92.6086', '34.8844', '836ceddbf0764941a9bfa03cb8719219');
INSERT INTO `t_area` VALUES ('d2f65ff0c5404772b38a3e085621f528', '530601', '市辖区', 'SXQ', 'sxq', null, null, '62141fe60bf648779975a375c8679e21');
INSERT INTO `t_area` VALUES ('d2fbf0a0964d4a038f3bce6be6405e53', '350881', '漳平市', 'ZPS', 'zps', '117.452', '25.38', '3b83b8e77e334e28ba9fd8690c1b434f');
INSERT INTO `t_area` VALUES ('d30fe04728a148f09945ad7c529e888d', '340304', '禹会区', 'YHQ', 'yhq', '117.306', '32.8897', '8e08b2c68a4a4cb0919ea1af44673e39');
INSERT INTO `t_area` VALUES ('d32f53e8910840da8b3ae103c05a0702', '621102', '安定区', 'ADQ', 'adq', '104.638', '35.6444', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('d3308c0eead04525ae660d31c714544f', '430503', '大祥区', 'DXQ', 'dxq', '111.487', '27.1567', 'f31b21e37e01403dadc48b4b67977219');
INSERT INTO `t_area` VALUES ('d341bd52297546eabff02cfd505efde9', '220422', '东辽县', 'DLX', 'dlx', '125.185', '42.9479', '507ea0be588e47e19900b4aad1a4524e');
INSERT INTO `t_area` VALUES ('d35e733c0b9041a3a03189f3ba548059', '371728', '东明县', 'DMX', 'dmx', '115.074', '35.1824', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('d3661f78f0384e0c80a3a6bb66bc88e2', '540124', '曲水县', 'QSX', 'qsx', '90.7146', '29.445', 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('d38785aa7ebf4272b609c10063e6e13d', '341204', '颍泉区', 'YQQ', 'yqq', '115.734', '33.0735', 'd93002ddd26a4e2b9b9105a6c23d4ac6');
INSERT INTO `t_area` VALUES ('d38f19d15fe44ecfbb32e1d2224e8db5', '522730', '龙里县', 'LLX', 'llx', '106.996', '26.5066', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('d3a0cdfe1383496ab4308640141db69d', '370682', '莱阳市', 'LYS', 'lys', '120.751', '36.9055', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('d3a134bd4845430ab12ca71bca9857a0', '440604', '禅城区', 'SCQ', 'scq', '113.07', '23.0042', 'ca3b6b5a1b1240afaa43f8fede431538');
INSERT INTO `t_area` VALUES ('d3a738c0d7b94f1aabe77851b1ed0716', '150201', '市辖区', 'SXQ', 'sxq', null, null, '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('d3c9d4e050d844808be30465dd714e82', '542133', '边坝县', 'BBX', 'bbx', '94.5999', '30.8918', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('d3cf1819906d4bee9c29341f9f60e90b', '640303', '红寺堡区', 'HSBQ', 'hsbq', '116.801', '40.1814', '1b11b582e514437184c3364fe8e7fbf2');
INSERT INTO `t_area` VALUES ('d3e25c88759743b5a76e56a0590fcf8e', '410325', '嵩县', 'SX', 'sx', '112.05', '34.0106', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('d3e8257b6e734c3792ec8d685817494c', '230128', '通河县', 'THX', 'thx', '128.762', '46.2479', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('d423dfa209744995958ae4745fddd285', '620123', '榆中县', 'YZX', 'yzx', '104.244', '35.9998', 'e0e01180cb704dc5936b2db5be568f33');
INSERT INTO `t_area` VALUES ('d43556e7df064906994e2bd1dc596488', '441624', '和平县', 'HPX', 'hpx', '115.012', '24.4521', '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('d43610d73e9248bfbae0215580f5bae5', '370105', '天桥区', 'TQQ', 'tqq', '116.983', '36.7781', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('d46b2f19daec436399a6b0070cfb0836', '530302', '麒麟区', 'QLQ', 'qlq', '103.913', '25.3601', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('d4729122df5f40ff807ddb1fa092d797', '530500', '保山市', 'BSS', 'bss', '99.178', '25.1205', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('d479a511e2514b949fd9255d5877f12b', '340501', '市辖区', 'SXQ', 'sxq', null, null, 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('d47ce3d5cc264582bcece5ae44d40d9c', '130403', '丛台区', 'CTQ', 'ctq', '114.511', '36.6372', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('d484b97a714e424da87565b1ae53977b', '130401', '市辖区', 'SXQ', 'sxq', null, null, '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('d49839d89fd04cf9a3d00a30893105f9', '320116', '六合区', 'LHQ', 'lhq', '118.848', '32.4006', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('d49846bf403d449eb91de735be0d7014', '610304', '陈仓区', 'CCQ', 'ccq', '106.924', '34.4825', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('d4c03f716dff4c578b036150acaeb418', '141123', '兴县', 'XX', 'xx', '111.069', '38.3923', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('d4c2d0bb9a7049cd83904163fc7d3bf4', '513326', '道孚县', 'DFX', 'dfx', '101.195', '30.8701', 'b4e55724c1d2491786db09d018d0d582');
INSERT INTO `t_area` VALUES ('d4cca900927d46718e89d1e5af68eda1', '210881', '盖州市', 'GZS', 'gzs', '122.477', '40.2354', '63a658b8c2f844e086d11754ba36411a');
INSERT INTO `t_area` VALUES ('d4e16f2d28134656b0fc32edeede8234', '211224', '昌图县', 'CTX', 'ctx', '123.946', '43.0005', 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('d4e646eec005444dae00107c10860fcf', '533102', '瑞丽市', 'RLS', 'rls', '97.8115', '24.0373', 'bee4a801ad99461593071a31b8249bc1');
INSERT INTO `t_area` VALUES ('d50b79167f49413286e6f2ff65bd8288', '130730', '怀来县', 'HLX', 'hlx', '115.634', '40.348', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('d50fc14635a14984a42e9ab8b3b6e9d9', '450602', '港口区', 'GKQ', 'gkq', '108.449', '21.662', 'b20c1f95e080453d8c1ff1efe0f64d53');
INSERT INTO `t_area` VALUES ('d512873f5164427cbffd4edf7a6e9a72', '150104', '玉泉区', 'YQQ', 'yqq', '111.659', '40.7474', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('d517de48ce17484ab4e84ac20003d07a', '220801', '市辖区', 'SXQ', 'sxq', null, null, 'b7600da1f75d4d42b3a1d532574b77e8');
INSERT INTO `t_area` VALUES ('d52cc4b6c8074e2490d4858ec1d98be0', '422801', '恩施市', 'ESS', 'ess', '109.517', '30.309', 'c3f9a8b4961f4365a54d5bea93d74e70');
INSERT INTO `t_area` VALUES ('d538b80f62f74812ae366d3a4b2dc6d8', '451324', '金秀瑶族自治县', 'JXYZZZX', 'jxyzzzx', '110.138', '24.0899', '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('d5479e2189fc46c886a6a6ae5a98ca5b', '510600', '德阳市', 'DYS', 'dys', '104.402', '31.1311', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('d55967b82a6e4cfc989dd9f50c9e96b3', '232723', '漠河县', 'MHX', 'mhx', '122.716', '52.9457', 'dd9e89b2d7d34966b05b60de6cd7c10a');
INSERT INTO `t_area` VALUES ('d560b030de9145388477c34647faccb8', '331022', '三门县', 'SMX', 'smx', '121.488', '29.0177', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('d56f989fbe424c41901b35af5654465d', '361028', '资溪县', 'ZXX', 'zxx', '117.036', '27.7452', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('d57dba3bb8784be9adeb84d87d4903e3', '532500', '红河哈尼族彝族自治州', 'HHHNZYZZZZ', 'hhhnzyzzzz', '103.384', '23.3677', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('d5859185c342411395759257fe827432', '513231', '阿坝县', 'ABX', 'abx', '101.788', '32.8908', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('d5aa93640bcc418599a370d11fd26a2e', '420281', '大冶市', 'DYS', 'dys', '114.846', '30.0729', '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('d5e1cdfa31064cd6a30dd0b204f70b08', '230302', '鸡冠区', 'JGQ', 'jgq', '130.96', '45.3076', 'a6f103e72d5a4502b3bfc5395651613b');
INSERT INTO `t_area` VALUES ('d5e355fe50a7413192414e239a13d8b9', '654300', '阿勒泰地区', 'ALTDQ', 'altdq', '88.1379', '47.8397', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('d5ea73b1cda94e4cb13c39bd49ae7832', '510700', '绵阳市', 'MYS', 'mys', '104.706', '31.5047', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('d5f37428d9c74a26977b38bc23c89b02', '211200', '铁岭市', 'TLS', 'tls', '123.855', '42.2998', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('d5f90c984d3f4fcab1ad7eb8224a5e5e', '220502', '东昌区', 'DCQ', 'dcq', '125.96', '41.6773', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('d61dcf79154641849f8f584f16b2aaf8', '654225', '裕民县', 'YMX', 'ymx', '82.8148', '46.0045', '6fac893225f546a1a5f37cdfdf9caeaa');
INSERT INTO `t_area` VALUES ('d6237b1f7a7b42889a993443b856eadd', '640381', '青铜峡市', 'QTXS', 'qtxs', '105.961', '37.9421', '1b11b582e514437184c3364fe8e7fbf2');
INSERT INTO `t_area` VALUES ('d6366eff3e054a66b36bbcf0524b380a', '350902', '蕉城区', 'JCQ', 'jcq', '119.455', '26.7639', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('d63d066a14cf402686dd5d5627612fa8', '330401', '市辖区', 'SXQ', 'sxq', null, null, 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('d64ad103e9ad420f8868ed7dda875c2a', '520203', '六枝特区', 'LZTQ', 'lztq', '105.383', '26.2359', 'd0c498b67c0e4e99b0f4f21277e9cf73');
INSERT INTO `t_area` VALUES ('d653d48c6d814b519a4f7f153494ba79', '512002', '雁江区', 'YJQ', 'yjq', '104.755', '30.0916', '3c821ffeeae24bb7af79ed2a7cf9edcd');
INSERT INTO `t_area` VALUES ('d655221ce2de43b4a1b66c6a2731411a', '150825', '乌拉特后旗', 'WLTHQ', 'wlthq', '106.414', '41.5319', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('d66c8a247a1440a8b5db33d35a447627', '150501', '市辖区', 'SXQ', 'sxq', null, null, 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('d67b9fb208924b15953c25fc8c22763e', '532523', '屏边苗族自治县', 'PBMZZZX', 'pbmzzzx', '103.748', '23.1029', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('d6847077467d48298caeac92bb02f641', '130632', '安新县', 'AXX', 'axx', '115.887', '38.8783', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('d68795c464be4fae92825d1c5b43306d', '210000', '辽宁省', 'LNS', 'lns', '122.754', '41.6216', '0');
INSERT INTO `t_area` VALUES ('d69bb04bf32a4118b296e944aab035da', '360427', '星子县', 'XZX', 'xzx', '115.965', '29.3603', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('d6c365d77b6742b9858c1021cc9646ce', '610725', '勉县', 'MX', 'mx', '106.665', '33.2439', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('d6cab1fa4dc34e1db266635059d1dbc4', '222400', '延边朝鲜族自治州', 'YBCXZZZZ', 'ybcxzzzz', '129.486', '42.8964', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('d6d7ccae9a0a40f7a2160b9fc4aec623', '632300', '黄南藏族自治州', 'HNZZZZZ', 'hnzzzzz', '102.008', '35.5229', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('d6ed7fdbf44f4895bd9b8a2650e28653', '150206', '白云鄂博矿区', 'BYEBKQ', 'byebkq', '109.989', '41.79', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('d6f051c6e2f74028b2981f80540e6424', '131123', '武强县', 'WQX', 'wqx', '115.92', '38.0505', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('d6fdc204c1ba4eb380b9ed2fd976f642', '430903', '赫山区', 'HSQ', 'hsq', '112.461', '28.4569', 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('d70ee44ae9244ed2988d52ca54196d28', '150625', '杭锦旗', 'HJQ', 'hjq', '108.213', '40.2129', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('d73872f3b5e247c38a7d341b11f3907a', '320829', '洪泽县', 'HZX', 'hzx', '118.828', '33.2352', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('d73af0c854f64d3990139ca07e68b941', '511423', '洪雅县', 'HYX', 'hyx', '103.18', '29.6943', '0da033043330476bb7777866d6000cea');
INSERT INTO `t_area` VALUES ('d74597bc6a7b42b7b48e3b9e8f02f94a', '410726', '延津县', 'YJX', 'yjx', '114.231', '35.2796', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('d74c3c59e6c246a99989743d5321d9ab', '522600', '黔东南苗族侗族自治州', 'QDNMZDZZZZ', 'qdnmzdzzzz', '107.985', '26.584', 'fb8688d4626f46d69132edc1a3553154');
INSERT INTO `t_area` VALUES ('d7801bcce4694479a6a48f75f0417f7c', '210302', '铁东区', 'TDQ', 'tdq', '123.021', '41.1182', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('d7b779c49a034c7097128fe1a6070839', '652122', '鄯善县', 'SSX', 'ssx', '90.6166', '42.2917', '4c177d44681948e1afbc21cfe0ecbfd2');
INSERT INTO `t_area` VALUES ('d7bc8f7a8f2347819f5732fe229a12e7', '131127', '景县', 'JX', 'jx', '116.2', '37.6685', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('d7c63c3e61374defb68ae8d0e1d9cce3', '230404', '南山区', 'NSQ', 'nsq', '130.282', '47.2988', 'a2de80bc451e474d8af2b6c7cb4e0250');
INSERT INTO `t_area` VALUES ('d8078ba1f3474789baf9866307f682c3', '220322', '梨树县', 'LSX', 'lsx', '124.38', '43.4144', 'f08cd0915ec044859a65c7d7109d0cda');
INSERT INTO `t_area` VALUES ('d814d684aa4d4bcc93e98edafd32a75b', '610624', '安塞县', 'ASX', 'asx', '109.171', '36.9269', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('d82760213253469285fdb4e416785690', '210105', '皇姑区', 'HGQ', 'hgq', '123.415', '41.8489', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('d82b82e18ef34bc381ffb6144571a08f', '622923', '永靖县', 'YJX', 'yjx', '103.225', '36.0079', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('d83bfb82041e43a2aa1dcb264cf6164c', '810000', '香港特别行政区', 'XGTBXZQ', 'xgtbxzq', '114.186', '22.2936', '0');
INSERT INTO `t_area` VALUES ('d851418b6b47466dac2677a5584c4341', '211321', '朝阳县', 'CYX', 'cyx', '120.305', '41.3728', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('d85314edb2bb44b4a396ddea6dd21230', '230201', '市辖区', 'SXQ', 'sxq', null, null, '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('d85b60252d1d43acaaf9dc047afc1d80', '440607', '三水区', 'SSQ', 'ssq', '112.905', '23.2946', 'ca3b6b5a1b1240afaa43f8fede431538');
INSERT INTO `t_area` VALUES ('d89c40f5b78b4ae0b09a150ebeae7450', '140212', '新荣区', 'XRQ', 'xrq', '113.237', '40.2671', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('d8a2b1920ce3431a91a987bd19651ba0', '331021', '玉环县', 'YHX', 'yhx', '121.284', '28.1797', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('d8adb8876ec04957a5300d0ed8eded0a', '371723', '成武县', 'CWX', 'cwx', '115.945', '34.9891', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('d8c5ab27f0864aa4a0dc909c405b7873', '152531', '多伦县', 'DLX', 'dlx', '116.499', '42.1966', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('d8cbe427d86a4f099a54708dc5632663', '140622', '应县', 'YX', 'yx', '113.261', '39.5093', '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('d8cf844f20ea43d086697002159a38cb', '410225', '兰考县', 'LKX', 'lkx', '114.98', '34.8798', '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('d8df1f0b1167434987d3911a7e0e25ac', '220882', '大安市', 'DAS', 'das', '123.724', '45.4324', 'b7600da1f75d4d42b3a1d532574b77e8');
INSERT INTO `t_area` VALUES ('d8e429aaa3fc4ee8b5e71d77df4835d2', '410425', '郏县', 'JX', 'jx', '113.233', '34.0055', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('d9089ef656a4464cb65ff1e2adc80c73', '120112', '津南区', 'JNQ', 'jnq', '117.393', '38.9698', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('d90d91c3cabb44d88644d0cf41b1ccd7', '610301', '市辖区', 'SXQ', 'sxq', null, null, 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('d93002ddd26a4e2b9b9105a6c23d4ac6', '341200', '阜阳市', 'FYS', 'fys', '115.821', '32.9012', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('d938af3732564ca6bbaaba11f283e7d3', '532925', '弥渡县', 'MDX', 'mdx', '100.582', '25.1911', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('d93b5997be46475b91258cbc3d6a92da', '430801', '市辖区', 'SXQ', 'sxq', null, null, '94fbd360ab114e599dbc7fccbb59a832');
INSERT INTO `t_area` VALUES ('d93d6f58e8104ff2aeae3e2fdf941991', '350501', '市辖区', 'SXQ', 'sxq', null, null, 'c63b30df27d44454aa9486c425286ac9');
INSERT INTO `t_area` VALUES ('d959c6789cb04a628173e648e55819f5', '420102', '江岸区', 'JAQ', 'jaq', '114.333', '30.6561', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('d964b4372c614a138696276abfe50986', '141182', '汾阳市', 'FYS', 'fys', '111.746', '37.3168', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('d964c7e9907d4edaafddb49ef2aba479', '320921', '响水县', 'XSX', 'xsx', '119.798', '34.2328', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('d9b46bff53ae4596a4456c217291a569', '361102', '信州区', 'XZQ', 'xzq', '118.051', '28.4972', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('d9be5aa26ab644b182b8a9ef66cde300', '370826', '微山县', 'WSX', 'wsx', '116.992', '34.8927', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('d9e2281e8a31413ba4a1423ab8e6280b', '430623', '华容县', 'HRX', 'hrx', '112.651', '29.4934', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('d9e5ed1f87f94cc9bb3fd6c84abcaf41', '140226', '左云县', 'ZYX', 'zyx', '112.778', '40.0007', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('d9e63392220b46319787944a98f5d2ee', '150424', '林西县', 'LXX', 'lxx', '118.11', '43.7715', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('d9e676526a004ac0847aa0c87bf6e684', '370212', '崂山区', 'LSQ', 'lsq', '120.585', '36.1956', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('da29ef37d31e43afac7a7c633ffe6a7b', '451200', '河池市', 'HCS', 'hcs', '108.07', '24.6995', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('da38cb4c34db4e48bfb746cb1ceca5f5', '622921', '临夏县', 'LXX', 'lxx', '103.051', '35.5187', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('da429562f4c34e4dbd29d97239eac1db', '540200', '日喀则市', 'RKZS', 'rkzs', '88.9561', '29.2682', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('da4f246ceb6a471e9c5bb235a3d81599', '513223', '茂县', 'MX', 'mx', '103.635', '31.8557', '376d71befa64450e81a98d1cc5ae652e');
INSERT INTO `t_area` VALUES ('da5da8ff3cf44954ad7bbc9877b3f192', '320111', '浦口区', 'PKQ', 'pkq', '118.569', '32.0591', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('da988acb375d440eb0391097de301d4a', '341721', '东至县', 'DZX', 'dzx', '117.007', '30.0341', 'b2d0ae237ad540dfa52df769a841138a');
INSERT INTO `t_area` VALUES ('dab0d4e6251a4b21b514b587259ef2a4', '620622', '古浪县', 'GLX', 'glx', '103.343', '37.5313', 'd1effea105c14bbbbb4c8fe5fcf24e51');
INSERT INTO `t_area` VALUES ('dab810830d434b5caeb01c4765fa96d7', '330782', '义乌市', 'YWS', 'yws', '120.067', '29.3064', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('dabd81d80d834ce6a36bdb1fb129eda8', '370102', '历下区', 'LXQ', 'lxq', '117.102', '36.6593', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('dac126ee2a794dbca820029dbebc34ef', '231024', '东宁县', 'DNX', 'dnx', '130.85', '44.0324', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('dadce90a1182412080feb71560640c9b', '411100', '漯河市', 'LHS', 'lhs', '114.046', '33.5763', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('db05d19544f84c85a0d3fe4746b9a85e', '360828', '万安县', 'WAX', 'wax', '114.825', '26.4446', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('db296ed4dbd147e6bb08f2986947595c', '532322', '双柏县', 'SBX', 'sbx', '101.64', '24.5355', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('db340fadd35e4276a98e918294f00b9f', '411224', '卢氏县', 'LSX', 'lsx', '110.995', '33.9734', '595bb1e5a11d491e9ad0f5c59c303e32');
INSERT INTO `t_area` VALUES ('db3bece6dec1433fb258510a3bd27fa2', '120116', '滨海新区', 'BHXQ', 'bhxq', '117.646', '39.0592', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('db6e1f58dfbb477c96615b4d0b6ed51d', '150700', '呼伦贝尔市', 'HLBES', 'hlbes', '119.761', '49.2016', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('db70d03e7b0e440e8b30773d209d3c2d', '140481', '潞城市', 'LCS', 'lcs', '113.254', '36.3744', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('dba74c236c9242db9c40fb82abb6e7ac', '211201', '市辖区', 'SXQ', 'sxq', null, null, 'd5f37428d9c74a26977b38bc23c89b02');
INSERT INTO `t_area` VALUES ('dbb0b1312ea14554a8c56494225854f5', '440881', '廉江市', 'LJS', 'ljs', '110.142', '21.6453', 'e16acfb581064544a3a5f576f2b89822');
INSERT INTO `t_area` VALUES ('dbbaf2e0d9d3477691ac888152a87e49', '510727', '平武县', 'PWX', 'pwx', '104.404', '32.4469', 'd5ea73b1cda94e4cb13c39bd49ae7832');
INSERT INTO `t_area` VALUES ('dbc8dfb8a16844dc9d987611ec696ffc', '451100', '贺州市', 'HZS', 'hzs', '111.553', '24.4111', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('dbde628d819a4bc4ba62f0c4c2b6c96e', '410211', '金明区', 'JMQ', 'jmq', null, null, '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('dbeaf930103247c8ae83732c77398c38', '411621', '扶沟县', 'FGX', 'fgx', '114.437', '34.1007', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('dbf48eaebe5749fe95757f6d6fa70632', '211382', '凌源市', 'LYS', 'lys', '119.272', '40.9818', 'f604acd1b5dc4ea49f354ea8f70dfae6');
INSERT INTO `t_area` VALUES ('dc10751bf76d40aab130d9d86f65b1c8', '610928', '旬阳县', 'XYX', 'xyx', '109.424', '32.9021', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('dc238a7b82824ed0aa1325eea4178587', '211402', '连山区', 'LSQ', 'lsq', '120.688', '40.8885', 'ae18bdfcbf214e94a4c0fd573969a81e');
INSERT INTO `t_area` VALUES ('dc409094f6cc4cb5a9b2523aa31c4301', '431202', '鹤城区', 'HCQ', 'hcq', '109.946', '27.612', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('dc50687f073645a585be1f448a0e959d', '150523', '开鲁县', 'KLX', 'klx', '121.324', '43.7349', 'c068daf82a92430ea8a6b8e5ad69082f');
INSERT INTO `t_area` VALUES ('dc6d06820fc445128d09743b08cb9861', '131122', '武邑县', 'WYX', 'wyx', '115.945', '37.8277', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('dc79c1a877514b83a151640ac765caf5', '140401', '市辖区', 'SXQ', 'sxq', null, null, 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('dc80148145354067a94f57567cf9a482', '460105', '秀英区', 'XYQ', 'xyq', '110.263', '19.8843', '5f0de73ecf1b4cbda3e05787d278d892');
INSERT INTO `t_area` VALUES ('dc82876a9735493ca8a1ad584327e584', '371623', '无棣县', 'WDX', 'wdx', '117.798', '37.9426', '11f6d95253534186bc1d72fc2c7b7769');
INSERT INTO `t_area` VALUES ('dc84345096ce4550ad2796331e121636', '360124', '进贤县', 'JXX', 'jxx', '116.317', '28.4418', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('dc98b34fbc3044da94ea85a619dbcfa7', '622922', '康乐县', 'KLX', 'klx', '103.629', '35.258', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('dc9e1a3f911c4b3bbabb27f66c5c75cb', '320501', '市辖区', 'SXQ', 'sxq', null, null, '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('dcb34c7d30e041fa801b5f345b9a0fa8', '542526', '改则县', 'GZX', 'gzx', '84.285', '33.8412', '1d3cd51fb74c4a33b5f9bafa87ef582d');
INSERT INTO `t_area` VALUES ('dcd97ec958c849daa84931c4f41428d2', '510524', '叙永县', 'XYX', 'xyx', '105.469', '28.0992', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('dce15fb931244b418a2bb14c0d79fab5', '610122', '蓝田县', 'LTX', 'ltx', '109.423', '34.1008', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('dd010aefdb224044b66255cd3160532d', '430921', '南县', 'NX', 'nx', '112.444', '29.2427', 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('dd0e9d1a27594f27a31cb3378afca264', '152900', '阿拉善盟', 'ALSM', 'alsm', '105.696', '38.8431', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('dd1ad488a2044189b7ab3e770b030b5a', '140106', '迎泽区', 'YZQ', 'yzq', '112.663', '37.8657', 'c2ac55cdcc7e4d7c8d0ee085c8a1701e');
INSERT INTO `t_area` VALUES ('dd36fa4238fa4ac78b859c3ea752825a', '130723', '康保县', 'KBX', 'kbx', '114.607', '41.7846', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('dd6ce88b01ba4855a9d4bbc7db50681a', '511800', '雅安市', 'YAS', 'yas', '103.009', '29.9997', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('dd82026e183542a7a02900928b31554f', '410223', '尉氏县', 'WSX', 'wsx', '114.161', '34.3884', '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('dd915d0f7c6641c5a6cfbd0a0a8abff8', '610403', '杨陵区', 'YLQ', 'ylq', '108.059', '34.2902', '9dfebdb174c744ccb1e9ac03f0d6c686');
INSERT INTO `t_area` VALUES ('dd94a37855864fdca4933e98bb43e025', '420804', '掇刀区', 'DDQ', 'ddq', '112.194', '30.9329', 'eacb1ce2016a4db48ec4b12116584c1f');
INSERT INTO `t_area` VALUES ('dd986ce2109f44f5876ca7a7f3fb3037', '420504', '点军区', 'DJQ', 'djq', '111.216', '30.6254', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('dd9e89b2d7d34966b05b60de6cd7c10a', '232700', '大兴安岭地区', 'DXALDQ', 'dxaldq', '124.196', '51.9918', '326e96ed607c43b79b57887979f92b55');
INSERT INTO `t_area` VALUES ('ddab3701e6da47858c1c597cbf5f53d9', '150802', '临河区', 'LHQ', 'lhq', '107.442', '40.932', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('ddcbcd4ae8bd4621b0a8ce11cffc0fe4', '621226', '礼县', 'LX', 'lx', '105.064', '34.1116', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('ddcd095225284c37ab261ee8a91f20e2', '440300', '深圳市', 'SZS', 'szs', '114.026', '22.5461', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('ddd5a42486d74ae8b8eddfcbadda4a12', '510824', '苍溪县', 'CXX', 'cxx', '106.113', '31.9186', '74069705e5c64d0dac14aea268251fd0');
INSERT INTO `t_area` VALUES ('dde5b632df6f4dacbb8a1cc92ee85a0c', '131022', '固安县', 'GAX', 'gax', '116.29', '39.3511', '99528f18888d4610a04ec21ab5fdc528');
INSERT INTO `t_area` VALUES ('ddef70af8d2b490ba52b86a3538b025e', '130728', '怀安县', 'HAX', 'hax', '114.503', '40.5595', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('de1df59ef68f4f76bb5fb3abf227be1d', '141130', '交口县', 'JKX', 'jkx', '111.316', '36.9577', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('de20b575ad8d4e7ab71f6fe2fc6f0dde', '511622', '武胜县', 'WSX', 'wsx', '106.231', '30.3739', 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('de37ef9de21d42c982a9b96eaf112f51', '130503', '桥西区', 'QXQ', 'qxq', '114.438', '38.0334', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('de399c96ceb249aebf857e9390be62a0', '320302', '鼓楼区', 'GLQ', 'glq', '118.765', '32.0686', '6443b3c37f1f451c983b0dbf25322f83');
INSERT INTO `t_area` VALUES ('de3a9eed6b894214a8eaf3680e089553', '361002', '临川区', 'LCQ', 'lcq', '116.363', '27.9247', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('de471e8de3914135ba756ce00c5273f8', '330203', '海曙区', 'HSQ', 'hsq', '121.535', '29.8768', '6e13280aebd845d785234a3abc8a6b4a');
INSERT INTO `t_area` VALUES ('de68c9bf6b5f45828c86062e8f13fce3', '451027', '凌云县', 'LYX', 'lyx', '106.648', '24.3637', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('de6e52f32e924ef8b5bb58d9f9cc2fe1', '230109', '松北区', 'SBQ', 'sbq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('de885f701f77455fbd1cab0954178baa', '411726', '泌阳县', 'MYX', 'myx', '113.447', '32.8839', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('dea17fe0a0a7422b9629e6154d72830e', '410182', '荥阳市', 'YYS', 'yys', '113.352', '34.8062', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('dec4b2e9e5ff4f088bc48045651adf8b', '130623', '涞水县', 'LSX', 'lsx', '115.445', '39.6161', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('decc0233cca8458db74346e0695d320e', '652700', '博尔塔拉蒙古自治州', 'BETLMGZZZ', 'betlmgzzz', '82.0524', '44.9137', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('ded07693ffe64179993f857a7fbae314', '621224', '康县', 'KX', 'kx', '105.638', '33.285', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('ded3464640c44b2d99c5311d42bc38f6', '430923', '安化县', 'AHX', 'ahx', '111.391', '28.2866', 'c1e5c9b9e6fe425b926f0598ca333e5f');
INSERT INTO `t_area` VALUES ('deda9108582e4b68934faf258ab8d8d6', '520622', '玉屏侗族自治县', 'YPDZZZX', 'ypdzzzx', '108.992', '27.3359', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('defb103d5f40475eab4c8c3ee559dc8d', '441481', '兴宁市', 'XNS', 'xns', '115.753', '24.2673', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('df2722377c944c17918aa595326c3995', '320508', '姑苏区', 'GSQ', 'gsq', null, null, '92a2bc94e51e4725bd81cfa5d3d52b49');
INSERT INTO `t_area` VALUES ('df3387a10454414cb624e91c0fc57459', '450224', '融安县', 'RAX', 'rax', '109.514', '25.1398', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('df477d9038254218b2691768dc144e9e', '340123', '肥西县', 'FXX', 'fxx', '117.036', '31.7326', 'a0193195e65c4d6fb9361e239d737281');
INSERT INTO `t_area` VALUES ('df7ec98b72404cd3923e6193ed124f89', '621223', '宕昌县', 'DCX', 'dcx', '104.453', '34.0135', '819288e2eef8473aaf18c9a8133eb1a3');
INSERT INTO `t_area` VALUES ('df93427857d94b43b1b511da7f8d8ecf', '320707', '赣榆区', 'GYQ', 'gyq', '119.041', '34.8895', '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('dfb5d2d9cd42442da0e76470d2d32af5', '450921', '容县', 'RX', 'rx', '110.61', '22.8316', '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('dfc39b7ba91047af87f0c8475270296b', '210311', '千山区', 'QSQ', 'qsq', '123.014', '41.0613', 'f5ffb8f94911469db323db50e67d0a40');
INSERT INTO `t_area` VALUES ('dfc4bf55914a4604b73aeb2c7fc04e62', '230522', '友谊县', 'YYX', 'yyx', '131.855', '46.7886', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('dfda262db177465c92bc4f0d3a10d87b', '321002', '广陵区', 'GLQ', 'glq', '119.487', '32.3957', 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('dfeaf85d25fc4d16894bf31584f9d03a', '440103', '荔湾区', 'LWQ', 'lwq', '113.234', '23.0937', 'e0572d9bbdd840fbaed19e51f1742da5');
INSERT INTO `t_area` VALUES ('dffe8e1bb4bf405788f0ea63842675da', '140521', '沁水县', 'QSX', 'qsx', '112.377', '35.7515', 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('e000abf1c0894ab5aadcd9c457b8ba09', '450101', '市辖区', 'SXQ', 'sxq', null, null, 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('e0231e388e94410196b12d4aa6b62f23', '210113', '沈北新区', 'SBXQ', 'sbxq', '123.519', '42.0438', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('e027c018d42c4a4aa296b762f10259ea', '610111', '灞桥区', 'BQQ', 'bqq', '109.109', '34.3039', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('e029f84630e04bbe85d49cd7a3b5c6d3', '630222', '民和回族土族自治县', 'MHHZTZZZX', 'mhhztzzzx', '102.776', '36.1577', '8c141a564f324701b8289ad1fa9b91b8');
INSERT INTO `t_area` VALUES ('e056d025a38a47f898a7629b59955dd6', '450924', '兴业县', 'XYX', 'xyx', '109.929', '22.7985', '8d297775f99b40a1a547f73aed468a26');
INSERT INTO `t_area` VALUES ('e0572d9bbdd840fbaed19e51f1742da5', '440100', '广州市', 'GZS', 'gzs', '113.308', '23.12', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('e068abc45f664526bde131ae97b58dbd', '421301', '市辖区', 'SXQ', 'sxq', null, null, '4fa78f339565446b8ed4c663c52c2df8');
INSERT INTO `t_area` VALUES ('e073a7bb304b4bd8be5ebe50e9ba0043', '361129', '万年县', 'WNX', 'wnx', '117.014', '28.7032', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('e078f8a53670462b95e7b0503937f6b3', '533423', '维西傈僳族自治县', 'WXLSZZZX', 'wxlszzzx', '99.1527', '27.453', '71395c0ccf984e44a1a7c1cdd4731c8c');
INSERT INTO `t_area` VALUES ('e079f061b0db4c39be8810eb24ae65f5', '441302', '惠城区', 'HCQ', 'hcq', '114.486', '23.1631', '7e42aca6103e4ababd7f9517dbe01160');
INSERT INTO `t_area` VALUES ('e08a8f8c5b1d4c408a1452ed0902c30c', '140623', '右玉县', 'YYX', 'yyx', '112.422', '40.0081', '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('e092d451980440fbb6b191e2a1513517', '330503', '南浔区', 'NXQ', 'nxq', '120.309', '30.7668', '611bbedacbe04f668b20db1a0beaf99b');
INSERT INTO `t_area` VALUES ('e0a55cb472414c6d9c2358d49842bc04', '421224', '通山县', 'TSX', 'tsx', '114.615', '29.5577', 'f5b71aa361af47949d8a57a364b1f283');
INSERT INTO `t_area` VALUES ('e0d12077d1a24b9d856083782703f06e', '421081', '石首市', 'SSS', 'sss', '112.514', '29.7422', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('e0d1fb2c013f45a294862507298cd348', '440515', '澄海区', 'CHQ', 'chq', '116.815', '23.533', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('e0dceabc7d7045f9a00f4c7ef8eddfb5', '610702', '汉台区', 'HTQ', 'htq', '107.046', '33.1872', '30e92d21c002468f9311baa496500f09');
INSERT INTO `t_area` VALUES ('e0e01180cb704dc5936b2db5be568f33', '620100', '兰州市', 'LZS', 'lzs', '103.823', '36.0642', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('e0e3dae07cf247ce9cd91a74842bf52f', '430223', '攸县', 'YX', 'yx', '113.488', '27.1723', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('e1046f24f11a452f98ced3304011d687', '411104', '召陵区', 'ZLQ', 'zlq', '114.185', '33.578', 'dadce90a1182412080feb71560640c9b');
INSERT INTO `t_area` VALUES ('e12205d07c0940cb8a08f4fbc76691a8', '360726', '安远县', 'AYX', 'ayx', '115.397', '25.2389', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('e1380bb30c6a480aa8dd985a94ae86b8', '330483', '桐乡市', 'TXS', 'txs', '120.49', '30.6123', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('e14325dae5f344b2bec75e8ab04fbd42', '150426', '翁牛特旗', 'WNTQ', 'wntq', '119.255', '42.974', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('e14b7ee083504d1fbf3cf46df9fc0766', '330400', '嘉兴市', 'JXS', 'jxs', '120.76', '30.774', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('e14dc042b433404db4924f2c77dc8020', '450109', '邕宁区', 'YNQ', 'ynq', '108.626', '22.5958', 'c259469e6c6e4da19c7c92c895de5fbd');
INSERT INTO `t_area` VALUES ('e15377d07ace4322805f0f6abfed5e63', '652827', '和静县', 'HJX', 'hjx', '85.2001', '42.8287', '0f0a042db31a4ac4849f28a5ce93725e');
INSERT INTO `t_area` VALUES ('e153f81346da46a88f8176db9bc18b60', '130726', '蔚县', 'YX', 'yx', '114.713', '39.8794', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('e16a07f302ac45e688cf52f1de58fdb5', '410411', '湛河区', 'ZHQ', 'zhq', '113.278', '33.7123', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('e16acfb581064544a3a5f576f2b89822', '440800', '湛江市', 'ZJS', 'zjs', '110.365', '21.2575', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('e1779920872146069f3f4c1790eaa352', '210921', '阜新蒙古族自治县', 'FXMGZZZX', 'fxmgzzzx', '121.696', '42.1575', '199eb95714794c2d9d4b328f5736c7db');
INSERT INTO `t_area` VALUES ('e1806a9ae4ae430a856007c317c18514', '610831', '子洲县', 'ZZX', 'zzx', '109.877', '37.5337', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('e18662a93bf249ea9a4995d498f61adf', '370611', '福山区', 'FSQ', 'fsq', '121.203', '37.4811', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('e1a0b2d0eff2474ca6e7d5c54cc420c1', '371101', '市辖区', 'SXQ', 'sxq', null, null, '7b42c83f13eb42e2819898caa0cddd14');
INSERT INTO `t_area` VALUES ('e1b916dcb3424f4c9ffdc648b4bc2a4f', '653226', '于田县', 'YTX', 'ytx', '81.9955', '37.1691', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('e1bfbca17ebd4e25a666f9097445b39a', '220211', '丰满区', 'FMQ', 'fmq', '126.698', '43.6545', 'f2f1e71d441247f9818c1764570a7cca');
INSERT INTO `t_area` VALUES ('e1c832a2031f4040bc9180bffe79f404', '632622', '班玛县', 'BMX', 'bmx', '100.55', '32.9097', '1dd19b4dbd6e441d8864c7855b538cd7');
INSERT INTO `t_area` VALUES ('e1c959a222b14c30a6645fbba52dc52f', '532323', '牟定县', 'MDX', 'mdx', '101.597', '25.4074', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('e1dd3c4220a44e4a9586692a9935fdf8', '130000', '河北省', 'HBS', 'hbs', '115.661', '38.6138', '0');
INSERT INTO `t_area` VALUES ('e217a4b3d7544d57a3eadb15c535c26c', '450803', '港南区', 'GNQ', 'gnq', '109.71', '22.8748', 'b93e28fad1454605a81753c740e0b00d');
INSERT INTO `t_area` VALUES ('e22301e263e9404984ea8e0f748041ea', '630105', '城北区', 'CBQ', 'cbq', '101.713', '36.6864', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('e2312548397a41219dc71af0684a5fa7', '450423', '蒙山县', 'MSX', 'msx', '110.561', '24.1339', '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('e2523a3d7c124d3ea18b881fa15c9701', '420984', '汉川市', 'HCS', 'hcs', '113.682', '30.622', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('e260af5f10014fdcaa0cf355c11d3698', '140702', '榆次区', 'YCQ', 'ycq', '112.844', '37.6508', '9bba71b39c284a0ca49958faf6096ddb');
INSERT INTO `t_area` VALUES ('e289921a0b8e45c39ec273c53071b296', '410621', '浚县', 'JX', 'jx', '114.467', '35.6862', '52b9af85f16b4dcca76293c1077849a8');
INSERT INTO `t_area` VALUES ('e29644d7ec4c49368c8b7021a715c568', '520401', '市辖区', 'SXQ', 'sxq', null, null, '6a15331d72df42338b9358ef08fe5cef');
INSERT INTO `t_area` VALUES ('e2bf48dc71da4277b2c4f8bec48d80bf', '620801', '市辖区', 'SXQ', 'sxq', null, null, '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('e2e7697ce4564e5693d98078ba940e97', '120106', '红桥区', 'HQQ', 'hqq', '117.162', '39.1706', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('e31674790ff9459f9a7ec4a64897098e', '220881', '洮南市', 'TNS', 'tns', '122.454', '45.4756', 'b7600da1f75d4d42b3a1d532574b77e8');
INSERT INTO `t_area` VALUES ('e324fcffe271453a8b452fcf9e3daad2', '610112', '未央区', 'WYQ', 'wyq', '108.926', '34.3313', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('e3404b1847994406abcdbb0bd3a62d64', '530101', '市辖区', 'SXQ', 'sxq', null, null, 'f12f9640c7bd4382943b5b93508e962b');
INSERT INTO `t_area` VALUES ('e351a9ca0034466d8a708c943771230f', '140525', '泽州县', 'ZZX', 'zzx', '112.871', '35.4758', 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('e354c5056cfd4a1493b9c2065b9936d0', '512021', '安岳县', 'AYX', 'ayx', '105.401', '29.9997', '3c821ffeeae24bb7af79ed2a7cf9edcd');
INSERT INTO `t_area` VALUES ('e3608de815dd4b8e825407c8b73f5700', '360600', '鹰潭市', 'YTS', 'yts', '117.035', '28.2413', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('e3676f6cc0ee4960900eac351c889a0b', '620423', '景泰县', 'JTX', 'jtx', '104.062', '37.1461', '0800f56287ad4d55bb0ec1cb3de20ecc');
INSERT INTO `t_area` VALUES ('e37af3c6d32544a285fece1041697fe3', '410800', '焦作市', 'JZS', 'jzs', '113.212', '35.2346', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('e37bb67a98cc4c22be24e42a885cd7e7', '532301', '楚雄市', 'CXS', 'cxs', '101.329', '24.8803', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('e38a1d2c63804eb1b3714fe8bb75aa77', '542424', '聂荣县', 'NRX', 'nrx', '92.6422', '32.2496', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('e3c0db16267d4f649e224a83cbdc31b4', '510184', '崇州市', 'CZS', 'czs', '103.529', '30.7196', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('e3c372759a984ec5954b10350932ee62', '360400', '九江市', 'JJS', 'jjs', '116', '29.7196', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('e3c436960e2146faadb90d490390565c', '371121', '五莲县', 'WLX', 'wlx', '119.249', '35.7444', '7b42c83f13eb42e2819898caa0cddd14');
INSERT INTO `t_area` VALUES ('e3ca25ba0c7b41c797ce5612eee943ed', '130132', '元氏县', 'YSX', 'ysx', '114.428', '37.8074', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('e3de57a8ba43430e8ab05ddda6de98d6', '130108', '裕华区', 'YHQ', 'yhq', '114.586', '38.0146', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('e400ae0032fb4995ae68a6940621ef95', '230108', '平房区', 'PFQ', 'pfq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('e41ad1af068e41fbab4b975d7fa7fb0c', '210403', '东洲区', 'DZQ', 'dzq', '124.029', '41.8336', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('e434eef2293d4a8983f0e983f26bb2cf', '433130', '龙山县', 'LSX', 'lsx', '109.516', '29.2255', 'cbe427fb623644a7b9467d6c77e8a9b8');
INSERT INTO `t_area` VALUES ('e461b944f7f94bb19ae94a9def436cee', '130435', '曲周县', 'QZX', 'qzx', '115.039', '36.7527', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('e48e4d147fba4c1486b249071cf31da9', '330381', '瑞安市', 'RAS', 'ras', '120.468', '27.8292', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('e497d39e8e1246aea90695f4f02db8da', '411322', '方城县', 'FCX', 'fcx', '113.017', '33.3', 'fdfa92c5826c4184a14859305f9a2ef8');
INSERT INTO `t_area` VALUES ('e49824fd7ad04039ada4ad36bf6fa74d', '230710', '五营区', 'WYQ', 'wyq', '129.061', '48.2293', 'cd6cd2af0a1648b3a46d6e46e617bab1');
INSERT INTO `t_area` VALUES ('e4be2a4013c745a6bbfe2c3442a5abd0', '610825', '定边县', 'DBX', 'dbx', '107.754', '37.3888', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('e4c352ba50264e8ba980c4291d36b774', '430221', '株洲县', 'ZZX', 'zzx', '113.153', '27.5359', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('e4c4e1dccdd441ca8a38cb9fc41a6b01', '360830', '永新县', 'YXX', 'yxx', '114.188', '26.9731', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('e4e295d57237457fac941a7ace93b217', '360729', '全南县', 'QNX', 'qnx', '114.522', '24.8532', '582a21a6d92a4726acf8e9ebd3cb827f');
INSERT INTO `t_area` VALUES ('e4f8f63ee72141088ff6e381c6f943cd', '652323', '呼图壁县', 'HTBX', 'htbx', '86.6932', '44.381', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('e51059404eee4f11b52b1b3f0a7820ea', '500112', '渝北区', 'YBQ', 'ybq', '106.754', '29.8163', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('e528e3b60348419080f37d32b2ff426a', '410322', '孟津县', 'MJX', 'mjx', '112.477', '34.8311', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('e530554965d646fe8261ce7249def3f0', '451123', '富川瑶族自治县', 'FCYZZZX', 'fcyzzzx', '111.313', '24.8916', 'dbc8dfb8a16844dc9d987611ec696ffc');
INSERT INTO `t_area` VALUES ('e541990ab1024efcb1a896be5b4db7d9', '420923', '云梦县', 'YMX', 'ymx', '113.778', '31.005', '280d6cb4011547c7af06e99b551002f7');
INSERT INTO `t_area` VALUES ('e541bccd8c294505a8a8460aeb767571', '610523', '大荔县', 'DLX', 'dlx', '110.012', '34.7968', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('e54449b98248401fa81a36ba19f0e195', '220102', '南关区', 'NGQ', 'ngq', '125.42', '43.7322', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('e54837ac774147d1bd58647217f9f8aa', '320706', '海州区', 'HZQ', 'hzq', '121.653', '41.9909', '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('e54d276311894af388e82d430b4c70fb', '445300', '云浮市', 'YFS', 'yfs', '112.051', '22.938', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('e58db793ec14468a9b366f86e86b2a6c', '150901', '市辖区', 'SXQ', 'sxq', null, null, 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('e59b1b0117a34ca2b789db0dfe9d1df3', '350602', '芗城区', 'XCQ', 'xcq', '117.633', '24.5751', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('e59e58628a1a44f4845ae038fa5197d3', '542128', '左贡县', 'ZGX', 'zgx', '97.8083', '29.5626', 'f25332c40e70478394b07a52fbbb6db6');
INSERT INTO `t_area` VALUES ('e59f3f72c8614ed199f08ffb1bee297a', '140500', '晋城市', 'JCS', 'jcs', '112.867', '35.4998', 'f24d8268418240a2b8534ff18ea02356');
INSERT INTO `t_area` VALUES ('e5b08eb49daa4480b33510a559f3968e', '211122', '盘山县', 'PSX', 'psx', '121.952', '41.1935', '5e7d74ca7c6f4cf0888135c788ed5376');
INSERT INTO `t_area` VALUES ('e5c10e0b74a942fb9fc38dbbbe3e2c8b', '361121', '上饶县', 'SRX', 'srx', '117.944', '28.4057', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('e5e272f623714d5392c3dbd81935cc93', '410102', '中原区', 'ZYQ', 'zyq', '113.557', '34.7795', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('e60deb152e9749719112adda73d8cb9d', '530426', '峨山彝族自治县', 'ESYZZZX', 'esyzzzx', '102.219', '24.2461', '2eb2e43f1307467db95b0574a5549c67');
INSERT INTO `t_area` VALUES ('e626635699f64e93b87063abb6fffe21', '623025', '玛曲县', 'MQX', 'mqx', '101.669', '33.8507', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('e62962d12464478e95004612d529cbdb', '610631', '黄龙县', 'HLX', 'hlx', '109.945', '35.7026', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('e62a0941ceb34b40afb3c6f1b937ea49', '140501', '市辖区', 'SXQ', 'sxq', null, null, 'e59f3f72c8614ed199f08ffb1bee297a');
INSERT INTO `t_area` VALUES ('e6316114c36a49fbaca2024efae77e1c', '370214', '城阳区', 'CYQ', 'cyq', '120.346', '36.2842', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('e6487639ff39419dbb8aec7cf147b488', '210122', '辽中县', 'LZX', 'lzx', '122.779', '41.5669', '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('e6640522f13f4c828758b78cdebc81ca', '450330', '平乐县', 'PLX', 'plx', '110.798', '24.5589', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('e6919b33ca014cdeb8aec54b59d563b3', '410122', '中牟县', 'ZMX', 'zmx', '114.011', '34.7203', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('e6976642a33441d39bc740c9c61b2516', '520527', '赫章县', 'HZX', 'hzx', '104.638', '27.1355', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('e6a82571443c47d8ad5610b09f456d80', '532501', '个旧市', 'GJS', 'gjs', '103.149', '23.3057', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('e6b37063d12c4763b858bfb8b0924111', '451002', '右江区', 'YJQ', 'yjq', '106.506', '23.9419', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('e6d90cacb44b4f6396f131d53b196a38', '140428', '长子县', 'ZZX', 'zzx', '112.802', '36.111', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('e6eaf22be5eb4ec18f971559c9823a72', '522731', '惠水县', 'HSX', 'hsx', '106.722', '25.983', '51df390e6be24c73ac63df0b485096b4');
INSERT INTO `t_area` VALUES ('e709098caf2f45a2b837243d1a99657d', '140225', '浑源县', 'HYX', 'hyx', '113.711', '39.6342', '6ed1aa5f66724c03ac262418ccc13ac7');
INSERT INTO `t_area` VALUES ('e76cc01906aa46f2bd91d272976b6833', '141021', '曲沃县', 'QWX', 'qwx', '111.527', '35.7042', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('e787cc23425043518fd853197dbcc41b', '611023', '商南县', 'SNX', 'snx', '110.767', '33.4117', '4cb39303f89f46d2837a048e39c62cb2');
INSERT INTO `t_area` VALUES ('e799fd2b9938479994f72679225e2416', '622924', '广河县', 'GHX', 'ghx', '103.631', '35.478', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('e79c238309c34cc0bebddde512f535e8', '321204', '姜堰区', 'JYQ', 'jyq', '120.091', '32.5265', 'ef7204feeb0747a490576a553cc9032e');
INSERT INTO `t_area` VALUES ('e7b39d83a3f44319924a10738309737d', '131101', '市辖区', 'SXQ', 'sxq', null, null, '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('e7b637df34bc4446a692ab4300636b22', '360502', '渝水区', 'YSQ', 'ysq', '115.008', '27.8506', '751ad81aa4de45f1a8763a43ddae093d');
INSERT INTO `t_area` VALUES ('e7c45dfc985c4b959752f087c418d2c0', '513430', '金阳县', 'JYX', 'jyx', '103.201', '27.7062', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('e7f9b422d1ee4a0780f830bb5bf8fbd7', '320701', '市辖区', 'SXQ', 'sxq', null, null, '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('e7fdeccb317645428fd7526404a68520', '370403', '薛城区', 'XCQ', 'xcq', '117.359', '34.7963', '16c59bf869a84db7bebc9ba0fd026e4f');
INSERT INTO `t_area` VALUES ('e7ff5703b19c4af99e57e46e4d02254f', '441283', '高要市', 'GYS', 'gys', '112.462', '23.0826', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('e81508a338ea423d8fbb9f138ea2ce6a', '220721', '前郭尔罗斯蒙古族自治县', 'QGELSMGZZZX', 'qgelsmgzzzx', '124.482', '44.8691', 'f208eee79d964759bf91d9cd7ca74233');
INSERT INTO `t_area` VALUES ('e81820c7409f41f69033bdb51531f129', '530901', '市辖区', 'SXQ', 'sxq', null, null, '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('e82298948d784c88bad6161c07f0d35e', '522324', '晴隆县', 'QLX', 'qlx', '105.208', '25.8414', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('e827f100512f4e7d8344c5e94123b88f', '430423', '衡山县', 'HSX', 'hsx', '112.72', '27.2819', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('e83097310de84d57a7491d771c58add8', '620521', '清水县', 'QSX', 'qsx', '106.14', '34.7425', '28211fb5a2854be98fda644a8ca5d256');
INSERT INTO `t_area` VALUES ('e839afacc7514c0a9f8315ddba57e576', '441821', '佛冈县', 'FGX', 'fgx', '113.567', '23.8811', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('e85502cab9324ed291b2089be9bdc501', '510503', '纳溪区', 'NXQ', 'nxq', '105.391', '28.614', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('e8662018eb8745f180b139d94456641d', '511527', '筠连县', 'YLX', 'ylx', '104.588', '28.0421', '25ec0eadcb844ed79efcfad5f627a7f4');
INSERT INTO `t_area` VALUES ('e88d2618a208422bb4a5bdfbfe18b455', '530825', '镇沅彝族哈尼族拉祜族自治县', 'ZYYZHNZLHZZZX', 'zyyzhnzlhzzzx', null, null, '4ab8215577034acd94a72da4b773652c');
INSERT INTO `t_area` VALUES ('e8b4744a46be488984294ce32a022f4c', '370301', '市辖区', 'SXQ', 'sxq', null, null, '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('e8bb2055c2094233af32fbca3d4286c7', '520113', '白云区', 'BYQ', 'byq', '113.331', '23.2945', '05d764551ed24945929bdb34988a7ab7');
INSERT INTO `t_area` VALUES ('e8bc59b112f84117ab460f9a2d0b71c4', '420821', '京山县', 'JSX', 'jsx', '113.112', '31.0858', 'eacb1ce2016a4db48ec4b12116584c1f');
INSERT INTO `t_area` VALUES ('e90fd776f9f2451aa913ef24f3b34d49', '321081', '仪征市', 'YZS', 'yzs', '119.201', '32.3926', 'fe0febe21fa0411b89be9745ac99ec6c');
INSERT INTO `t_area` VALUES ('e91494af7d4d45abbb34bd46b797295e', '150800', '巴彦淖尔市', 'BYNES', 'bynes', '107.424', '40.7692', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('e93fa06b2b9e4608b84824a9e5d2c1c0', '469006', '万宁市', 'WNS', 'wns', '110.293', '18.8399', '69e138bcc94d430baab2f6e316ab3d6b');
INSERT INTO `t_area` VALUES ('e9408b4f83e54ee1bd8a34e7025bf1cd', '510131', '蒲江县', 'PJX', 'pjx', '103.498', '30.2399', '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('e942da58532744fb841fbb1d090e41ae', '450204', '柳南区', 'LNQ', 'lnq', '109.343', '24.3062', 'ecf623bed9934eb0b49c32b65e33457b');
INSERT INTO `t_area` VALUES ('e943b9abae024acc816933f7eef45ffa', '341525', '霍山县', 'HSX', 'hsx', '116.247', '31.2871', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('e9579b273e02452fb045bfffce623a47', '410527', '内黄县', 'NHX', 'nhx', '114.823', '35.9066', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('e9609093941645359f66d8e69b11569e', '340702', '铜官山区', 'TGSQ', 'tgsq', '117.811', '30.9294', 'bbee816f0c5e475ea74514a97e400481');
INSERT INTO `t_area` VALUES ('e9a37940fec8481a89b4e7f8f62e0af6', '131181', '冀州市', 'JZS', 'jzs', '115.47', '37.5561', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('e9e05d65912d4a129dd0fcb1fed45755', '410201', '市辖区', 'SXQ', 'sxq', null, null, '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('e9eca713bc634eaea4c4ae9736443adc', '210402', '新抚区', 'XFQ', 'xfq', '123.911', '41.8698', 'a6fd0dca369d4bfd9a902be4f24c12c9');
INSERT INTO `t_area` VALUES ('ea0ab96841e6453790852b49ba75cbf6', '331002', '椒江区', 'JJQ', 'jjq', '121.467', '28.657', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('ea29a313d80042e8b0836928d1c68b56', '441225', '封开县', 'FKX', 'fkx', '111.723', '23.5613', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('ea2a241ef83044eebfe841e95e01b8e4', '451026', '那坡县', 'NPX', 'npx', '105.835', '23.2475', 'cd78165019ff4dc38e063ef539c67367');
INSERT INTO `t_area` VALUES ('ea314af3c7a041e2a145ac84c522263a', '520222', '盘县', 'PX', 'px', '104.667', '25.7728', 'd0c498b67c0e4e99b0f4f21277e9cf73');
INSERT INTO `t_area` VALUES ('ea4f25ced5da44158175b118509806f5', '210112', '浑南区', 'HNQ', 'hnq', null, null, '7029286f607946f49b28474cf94321b4');
INSERT INTO `t_area` VALUES ('ea7a5e0fb2c64f90a68d07f96f5d86b2', '141025', '古县', 'GX', 'gx', '112.011', '36.3038', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('eacb1ce2016a4db48ec4b12116584c1f', '420800', '荆门市', 'JMS', 'jms', '112.217', '31.0426', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('eae604facffe4b1cb3821f08231764aa', '330382', '乐清市', 'LQS', 'lqs', '121.016', '28.2618', 'fd5a350b80684d72a9d0d83a28fcf19c');
INSERT INTO `t_area` VALUES ('eae75b60f24846deacbc087bca0b8942', '440306', '宝安区', 'BAQ', 'baq', '113.93', '22.7074', 'ddcd095225284c37ab261ee8a91f20e2');
INSERT INTO `t_area` VALUES ('eaf16bb5ce6140c7aba2c71382e28bf4', '150125', '武川县', 'WCX', 'wcx', '111.18', '41.1162', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('eb0ab0c1567245578fec98c23833d64f', '130424', '成安县', 'CAX', 'cax', '114.705', '36.4282', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('eb280e44658b47a5ac53c15062620cde', '210283', '庄河市', 'ZHS', 'zhs', '122.934', '39.8589', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('eb33097e9d3f45cc9f85cbf6cbf860da', '120102', '河东区', 'HDQ', 'hdq', '117.262', '39.1266', '85471a2434fe494886870caebeaa9b3f');
INSERT INTO `t_area` VALUES ('eb3df498d8f742de835c3cbc968cc97b', '310112', '闵行区', 'MXQ', 'mxq', '121.425', '31.0935', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('eb5ecd3dbd924e9ca2365191cf21a77a', '350627', '南靖县', 'NJX', 'njx', '117.293', '24.6688', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('eb5ed9250096459e9806640589033fae', '440703', '蓬江区', 'PJQ', 'pjq', '113.061', '22.6601', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('eb7646fe2ecc42deb46874071c5c918f', '130224', '滦南县', 'LNX', 'lnx', '118.549', '39.3607', 'd09ae3c8280545379f287f292c9f87e3');
INSERT INTO `t_area` VALUES ('eb8b03737432489ab4f7dfaa53ba7a68', '532328', '元谋县', 'YMX', 'ymx', '101.871', '25.7832', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('eb98dbf9459042deaef36082047f73ef', '520322', '桐梓县', 'TZX', 'tzx', '106.886', '28.4145', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('ebab8299d32b4753a3fa495cc8ee9d49', '451221', '南丹县', 'NDX', 'ndx', '107.468', '25.1194', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('ebb274a802e64cc0a6648c5f285e206b', '410185', '登封市', 'DFS', 'dfs', '113.042', '34.4184', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('ebb47bfdc596444bbf4093c880fd2a2c', '330183', '富阳市', 'FYS', 'fys', '119.847', '30.0011', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('ebcd5a2c77454099b7696f9b7f7a8288', '330101', '市辖区', 'SXQ', 'sxq', null, null, '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('ebdbc705a8c44b588821e6c9ec1d8dea', '410324', '栾川县', 'LCX', 'lcx', '111.617', '33.9124', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('ebe68a4df65b4638ac7ecc681c2e02bc', '360403', '浔阳区', 'XYQ', 'xyq', '116.003', '29.7178', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('ec0fdeacd9424667b2467884b6a1a261', '331102', '莲都区', 'LDQ', 'ldq', '119.85', '28.4474', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('ec127e7cbd9e48d0b598c83c1df32589', '653122', '疏勒县', 'SLX', 'slx', '76.37', '39.1876', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('ec430609055c41a49f969ef9c3a2db27', '152224', '突泉县', 'TQX', 'tqx', '121.519', '45.6329', '111d59a069534708961e303559a4e6db');
INSERT INTO `t_area` VALUES ('ec7a589844ea4e52831a205f845ab771', '120225', '蓟县', 'JX', 'jx', '117.441', '40.0096', '818f2b1ebf4b4a4ba8cc6e948be31076');
INSERT INTO `t_area` VALUES ('ec82ec17f1e3440c9cb9634b959a27eb', '320723', '灌云县', 'GYX', 'gyx', '119.393', '34.4068', '961fac56452c4e71af664f09e09638bd');
INSERT INTO `t_area` VALUES ('ec8efa85437a4746b6ed48f9958feae6', '510522', '合江县', 'HJX', 'hjx', '105.932', '28.7519', '3e64031459b54ee0bdf3e38f8bfd57aa');
INSERT INTO `t_area` VALUES ('ec9033f6bb1b47e7bfcb056aa92dd15e', '340225', '无为县', 'WWX', 'wwx', '117.865', '31.257', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('ecef35505b234383858afcd78c92a9f5', '511112', '五通桥区', 'WTQQ', 'wtqq', '103.847', '29.3954', '3c97ca1066d44d3c90aad0acebecb854');
INSERT INTO `t_area` VALUES ('ecf5a85abb8f4bb5b488fe5ae692b134', '653200', '和田地区', 'HTDQ', 'htdq', '79.9302', '37.1168', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('ecf623bed9934eb0b49c32b65e33457b', '450200', '柳州市', 'LZS', 'lzs', '109.422', '24.3291', '49cc70550b044aafb0a73e85e7aeeb18');
INSERT INTO `t_area` VALUES ('ecfbfd7cf39e4db393d30d520cbc5b05', '411722', '上蔡县', 'SCX', 'scx', '114.409', '33.3012', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('ed04d80ec74746c6af53885d08febbea', '411025', '襄城县', 'XCX', 'xcx', '113.569', '33.8619', '0b276ac1754a4e51b4565e0806ca176f');
INSERT INTO `t_area` VALUES ('ed0510ff9db649d185c6ef8894d16b0e', '532530', '金平苗族瑶族傣族自治县', 'JPMZYZDZZZX', 'jpmzyzdzzzx', '103.103', '22.7824', 'd57dba3bb8784be9adeb84d87d4903e3');
INSERT INTO `t_area` VALUES ('ed0fcd7ffb394e4687f93c63600a2457', '141125', '柳林县', 'LLX', 'llx', '110.877', '37.4038', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('ed3cbbd8ebf5436681682a885ae0337a', '431021', '桂阳县', 'GYX', 'gyx', '112.608', '25.8935', '0e3658fc7c46447cb8125b06d82333ab');
INSERT INTO `t_area` VALUES ('ed3d1f009e1f486caf6c9041650d2adc', '361023', '南丰县', 'NFX', 'nfx', '116.5', '27.1149', 'fb8fdfac78be4972aeaa4502357b1069');
INSERT INTO `t_area` VALUES ('ed43d38ae6df4adeb6e30d42352b6d47', '141122', '交城县', 'JCX', 'jcx', '111.82', '37.687', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('ed4ec7df19204fb2b54f6e4c541c7270', '150721', '阿荣旗', 'ARQ', 'arq', '123.172', '48.64', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('ed5ba93f863d41d2b737c2bb37479d6e', '530502', '隆阳区', 'LYQ', 'lyq', '99.069', '25.2053', 'd4729122df5f40ff807ddb1fa092d797');
INSERT INTO `t_area` VALUES ('ed88becdeaea4d2d9f352bef3e240845', '330523', '安吉县', 'AJX', 'ajx', '119.583', '30.6264', '611bbedacbe04f668b20db1a0beaf99b');
INSERT INTO `t_area` VALUES ('ed88ebc3ca624d7089165daf76abee99', '140931', '保德县', 'BDX', 'bdx', '111.143', '38.8871', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('ed9a8b3424a6434eb5f3d36c7b32a1cf', '370830', '汶上县', 'WSX', 'wsx', '116.506', '35.7157', '705e02c8e78e4a8497c94d9112cc3799');
INSERT INTO `t_area` VALUES ('ed9c9751ed6745a8b155f08fd679b4dd', '430103', '天心区', 'TXQ', 'txq', '112.996', '28.1445', '2c600edcfec94de0bcad63f460aff3a2');
INSERT INTO `t_area` VALUES ('ed9e9ea37523473a992a694282b5693f', '610525', '澄城县', 'CCX', 'ccx', '109.902', '35.2226', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('ed9fdc489a10400f96df61e523d767f4', '421100', '黄冈市', 'HGS', 'hgs', '114.907', '30.4461', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('edaed934449b423f962bf5c972d884b8', '310109', '虹口区', 'HKQ', 'hkq', '121.492', '31.2825', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('edf717c804d947029ebaca25c268b0af', '370305', '临淄区', 'LZQ', 'lzq', '118.301', '36.8542', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('ee29b9e6c9954b278926491d8d3ec545', '430204', '石峰区', 'SFQ', 'sfq', '113.164', '27.9416', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('ee3a041ed88d4b1d9ce9abeb4dbf0ea0', '511304', '嘉陵区', 'JLQ', 'jlq', '105.939', '30.6655', '9a1a28895db64a2496310c042435ae6d');
INSERT INTO `t_area` VALUES ('ee450f631b374322971a7d2de88dce21', '130683', '安国市', 'AGS', 'ags', '115.335', '38.3937', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('ee719d80a41145739212732220cf0d54', '610623', '子长县', 'ZZX', 'zzx', '109.622', '37.231', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('ee882f24171a445692ed571b0a110fe3', '440229', '翁源县', 'WYX', 'wyx', '114.03', '24.4267', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('eeb0beae2616422c9a1577d000e59cef', '350681', '龙海市', 'LHS', 'lhs', '117.808', '24.3988', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('eeb6ca1f605145c588c064135b91b9a1', '371001', '市辖区', 'SXQ', 'sxq', null, null, '7323eba94c9540d68004b46262fa31cf');
INSERT INTO `t_area` VALUES ('eebafb08b8a349439daa4ac830ea09ac', '440000', '广东省', 'GDS', 'gds', '113.395', '23.408', '0');
INSERT INTO `t_area` VALUES ('eec93bb7048549a0b57e528ab4f401bc', '420115', '江夏区', 'JXQ', 'jxq', '114.367', '30.2525', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('eeca7b76ae554e0ca653b52eb8733eee', '610521', '华县', 'HX', 'hx', '109.813', '34.412', '59d753f9801e4f71b709aad8d0f62d0f');
INSERT INTO `t_area` VALUES ('ef18a9a1a4e245ce815ca8fe802bd796', '630100', '西宁市', 'XNS', 'xns', '101.768', '36.6407', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('ef3d98de6541406495f8cb2a819e29e6', '410000', '河南省', 'HNS', 'hns', '113.487', '34.1572', '0');
INSERT INTO `t_area` VALUES ('ef4a84b8a8254d5885e53b739a993ed1', '360103', '西湖区', 'XHQ', 'xhq', '115.899', '28.6573', '2e3a957a59e84e4f98b24d360435a957');
INSERT INTO `t_area` VALUES ('ef6cfe84217143acb40f84e794fdad1e', '632802', '德令哈市', 'DLHS', 'dlhs', '97.1628', '37.7271', '62daf966c7a344b6872e45ca3b3c9644');
INSERT INTO `t_area` VALUES ('ef7204feeb0747a490576a553cc9032e', '321200', '泰州市', 'TZS', 'tzs', '119.92', '32.4761', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('efa8415149bf49ce98ea7bb418dbde39', '500240', '石柱土家族自治县', 'SZTJZZZX', 'sztjzzzx', '108.305', '30.0996', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('efbdcc796ad64d60a087f189bceb1bd6', '440982', '化州市', 'HZS', 'hzs', '110.54', '21.8455', 'a5efe9509a6e4a0287e609aca6603955');
INSERT INTO `t_area` VALUES ('efcf0d54424b4dc681a2a31a899b4e04', '150202', '东河区', 'DHQ', 'dhq', '110.07', '40.5891', '9fee83034cc6406291826675b77d2cdb');
INSERT INTO `t_area` VALUES ('efdb6e2517184b60a333c30a01d26448', '361130', '婺源县', 'WYX', 'wyx', '117.787', '29.3272', '9c3b629914cd48568f053c436585abb6');
INSERT INTO `t_area` VALUES ('efe2cc9b9a70404196f236eee75bd4ab', '530724', '宁蒗彝族自治县', 'NLYZZZX', 'nlyzzzx', '100.778', '27.2656', 'c3e9970474c54bd993dfe4868cd99842');
INSERT INTO `t_area` VALUES ('f0302524e94e48b59b60b3de08f65e19', '653101', '喀什市', 'KSS', 'kss', '76.0143', '39.5131', '4acfd31c49554d009069fd1096eed2aa');
INSERT INTO `t_area` VALUES ('f0387b9a61634067a58483c2cc206c15', '650109', '米东区', 'MDQ', 'mdq', '87.6912', '44.0706', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('f03f7ff177ff4ad880d3dfd5d08df84f', '411728', '遂平县', 'SPX', 'spx', '113.902', '33.1679', '80c47ba318384bd1a96caf48a803fe6c');
INSERT INTO `t_area` VALUES ('f040246046c84cdb89220db6a3c350e8', '440704', '江海区', 'JHQ', 'jhq', '113.135', '22.5548', '0b886eb4ac534fb4995dd593a1f49dc8');
INSERT INTO `t_area` VALUES ('f0568e339a574b65acd56bb9d6f480a7', '445101', '市辖区', 'SXQ', 'sxq', null, null, '0ece7c50ea6445f9a65150cc9a30f3ce');
INSERT INTO `t_area` VALUES ('f060ae7eb750461ba112e9e2a2928276', '522327', '册亨县', 'CHX', 'chx', '105.839', '24.9236', '496fed88a8d04aad9fb96ee004cf5194');
INSERT INTO `t_area` VALUES ('f08cd0915ec044859a65c7d7109d0cda', '220300', '四平市', 'SPS', 'sps', '124.391', '43.1755', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('f0a860d573c44ad7bfc3563f8d5e5957', '410203', '顺河回族区', 'SHHZQ', 'shhzq', null, null, '53255f07f7604ece9a723b70258ea33b');
INSERT INTO `t_area` VALUES ('f0eac5fe4d46413ba1840fd2568a2e6e', '320114', '雨花台区', 'YHTQ', 'yhtq', '118.722', '31.9546', '85bf4c0325f043519538718479cf3045');
INSERT INTO `t_area` VALUES ('f0f8e9c5fac4455fa5545954c4209437', '360203', '珠山区', 'ZSQ', 'zsq', '117.234', '29.3032', '0fd8cbc6a4b84e28a88a01d66ec44698');
INSERT INTO `t_area` VALUES ('f12f9640c7bd4382943b5b93508e962b', '530100', '昆明市', 'KMS', 'kms', '102.715', '25.0492', '1f0f7fee785e44a1ad8e50b6df557815');
INSERT INTO `t_area` VALUES ('f156ba859c5f45e5b16404542a6990fd', '420822', '沙洋县', 'SYX', 'syx', '112.396', '30.6646', 'eacb1ce2016a4db48ec4b12116584c1f');
INSERT INTO `t_area` VALUES ('f16e3ee579d24bb5899c5ff601bebc3f', '620922', '瓜州县', 'GZX', 'gzx', '95.8047', '40.7343', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('f1796f233dd74a9db54287086907f99c', '620421', '靖远县', 'JYX', 'jyx', '104.732', '36.7491', '0800f56287ad4d55bb0ec1cb3de20ecc');
INSERT INTO `t_area` VALUES ('f17aa538c5f34fd7af748ceb528cb946', '621122', '陇西县', 'LXX', 'lxx', '104.633', '35.1118', '4907b8d448174930a91b19ba7abb8e18');
INSERT INTO `t_area` VALUES ('f17cf6487f0945bab67018a7e9a4ce6d', '330109', '萧山区', 'XSQ', 'xsq', '120.389', '30.1729', '9053e13cade0499fa4b06e25b4e84842');
INSERT INTO `t_area` VALUES ('f182700df0794fc683d25beb48824b51', '330783', '东阳市', 'DYS', 'dys', '120.381', '29.2374', '33ba4988972a477b83f506becdd43279');
INSERT INTO `t_area` VALUES ('f1952ee2de834b5a938822741475c322', '420105', '汉阳区', 'HYQ', 'hyq', '114.218', '30.5473', '8ff4662845cf48468c7233464ce4090d');
INSERT INTO `t_area` VALUES ('f1bba506cd1244a2a75472b987687182', '110116', '怀柔区', 'HRQ', 'hrq', '116.593', '40.6381', '7e338ff0ff7a4c70b22dddb65f51fc44');
INSERT INTO `t_area` VALUES ('f1cc1beabd904c4f9603e079ee0824a2', '230826', '桦川县', 'HCX', 'hcx', '130.963', '46.9893', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('f1d3d092534f4ee9a9ff1412349a06ac', '620702', '甘州区', 'GZQ', 'gzq', '100.522', '39.0106', '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('f1e0cced40a04be3bb19acbdcfcf0fdc', '331004', '路桥区', 'LQQ', 'lqq', '121.45', '28.5487', '04e36e3bbe2242f29a3f0b0fdbe0769e');
INSERT INTO `t_area` VALUES ('f1e8e7c7eb2c46ab8cea569d5005db47', '450403', '万秀区', 'WXQ', 'wxq', '111.422', '23.5635', '1632cf322f54475da191d258bead535d');
INSERT INTO `t_area` VALUES ('f1f5654be3eb4b869dccc198b3cb6cd0', '532922', '漾濞彝族自治县', 'YBYZZZX', 'ybyzzzx', '99.8984', '25.6056', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('f1fdddc3c4554360a9a6a5a566430e96', '130928', '吴桥县', 'WQX', 'wqx', '116.508', '37.6619', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('f208eee79d964759bf91d9cd7ca74233', '220700', '松原市', 'SYS', 'sys', '124.833', '45.136', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('f23bee1ae0ae48dda49237b7b8c523a6', '610326', '眉县', 'MX', 'mx', '107.834', '34.1505', 'bf643e4da053455d8811fba38f57b1c3');
INSERT INTO `t_area` VALUES ('f24d8268418240a2b8534ff18ea02356', '140000', '山西省', 'SXS', 'sxs', '112.515', '37.8666', '0');
INSERT INTO `t_area` VALUES ('f25332c40e70478394b07a52fbbb6db6', '542100', '昌都地区', 'CDDQ', 'cddq', '97.1856', '31.1406', 'c7353a2bba6a4518a0009b70dd22fd4f');
INSERT INTO `t_area` VALUES ('f253874a723f42199d86a5db31fdec90', '341022', '休宁县', 'XNX', 'xnx', '118.093', '29.6691', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('f258ec9e8f254265b50863680847e0a6', '150902', '集宁区', 'JNQ', 'jnq', '113.113', '41.0278', 'cecaeca53ed34376ae75cffa29bab702');
INSERT INTO `t_area` VALUES ('f274e208ca9844779d2e815b4c06766b', '410601', '市辖区', 'SXQ', 'sxq', null, null, '52b9af85f16b4dcca76293c1077849a8');
INSERT INTO `t_area` VALUES ('f2922a233b814098b3dc2eb067cdac78', '620826', '静宁县', 'JNX', 'jnx', '105.678', '35.434', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('f2a9ac5183bf4456adf7f49971ed2ad8', '652927', '乌什县', 'WSX', 'wsx', '79.2816', '41.2618', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('f2b0b31dba6744088c31ad3f0b4abe73', '654002', '伊宁市', 'YNS', 'yns', '81.289', '44.0204', '05b74430ac414b3cb7a8cdf78bc3599c');
INSERT INTO `t_area` VALUES ('f2b108753c78450ab5c7667524a7b8f6', '441622', '龙川县', 'LCX', 'lcx', '115.362', '24.3347', '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('f2cf46b9e14d4085a2f1d0cc5077f5dc', '410306', '吉利区', 'JLQ', 'jlq', '112.59', '34.9054', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('f2d5361747854ff8bad7c199eadfbcac', '230822', '桦南县', 'HNX', 'hnx', '130.637', '46.3067', 'b16686602cb645c494293a871c35ab8e');
INSERT INTO `t_area` VALUES ('f2eee9a0a9a04ffdbe441e6f9803f787', '410701', '市辖区', 'SXQ', 'sxq', null, null, 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('f2f1e71d441247f9818c1764570a7cca', '220200', '吉林市', 'JLS', 'jls', '126.565', '43.872', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('f308b0d5df814912a532fd590b8a32b4', '140827', '垣曲县', 'YQX', 'yqx', '111.825', '35.2216', 'b57fea0bd048445882ad441a46ef996f');
INSERT INTO `t_area` VALUES ('f30ef7c03b314964bc369b2bde256ae4', '410902', '华龙区', 'HLQ', 'hlq', '115.048', '35.7719', 'cb3f4c3b7f7a4bca896500363092db41');
INSERT INTO `t_area` VALUES ('f31b21e37e01403dadc48b4b67977219', '430500', '邵阳市', 'SYS', 'sys', '111.462', '27.2368', 'c2fb796337644edca63bd050d7cc3363');
INSERT INTO `t_area` VALUES ('f32203ff80ac40879b4a855066ccb21a', '150300', '乌海市', 'WHS', 'whs', '106.832', '39.6832', 'b4777f946c214f98a8197217001c5b07');
INSERT INTO `t_area` VALUES ('f32f6c6ef38f4654b2e412f9d25988e1', '150430', '敖汉旗', 'AHQ', 'ahq', '120.158', '42.4306', 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('f33415210488442bb4602fdbbf2b8e1c', '150785', '根河市', 'GHS', 'ghs', '121.798', '51.3759', 'db6e1f58dfbb477c96615b4d0b6ed51d');
INSERT INTO `t_area` VALUES ('f33c35b82bea465ba865b1f189cf553b', '532801', '景洪市', 'JHS', 'jhs', '100.927', '22.1114', '3c0dd7a126f5427bacf3c773408f4270');
INSERT INTO `t_area` VALUES ('f34204ceea084e6083f9a2da4e0d7e40', '230110', '香坊区', 'XFQ', 'xfq', null, null, 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('f346adce0cfc4e0c93cbcfb39990aaf4', '130602', '新市区', 'XSQ', 'xsq', '115.412', '38.8812', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('f352063ddfad4b438489d6ddd4ad3065', '340223', '南陵县', 'NLX', 'nlx', '118.288', '30.896', '82e77f8725514c6889fae4c245ce0c76');
INSERT INTO `t_area` VALUES ('f35742ba12294d51aa1bca0bb3e5ed38', '451223', '凤山县', 'FSX', 'fsx', '107.02', '24.5601', 'da29ef37d31e43afac7a7c633ffe6a7b');
INSERT INTO `t_area` VALUES ('f36bc91158a14f43a15fcd4e922d29ba', '130110', '鹿泉区', 'LQQ', 'lqq', '114.347', '38.0847', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('f3797bd79fce4c1aa5d561193d10477d', '140624', '怀仁县', 'HRX', 'hrx', '113.112', '39.7936', '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('f383cefb5d9a47f1acbf68b8e743177a', '653221', '和田县', 'HTX', 'htx', '79.355', '35.6834', 'ecf5a85abb8f4bb5b488fe5ae692b134');
INSERT INTO `t_area` VALUES ('f386481c4bdb4406b9b37295e51f500b', '441625', '东源县', 'DYX', 'dyx', '114.827', '23.9331', '76fedb81fff543a4ad115c8472f04a93');
INSERT INTO `t_area` VALUES ('f39e46f40aae411291ab88f13791f847', '441702', '江城区', 'JCQ', 'jcq', '111.93', '21.7628', 'd2077a7cd49748e5a0cbb2bc1448e494');
INSERT INTO `t_area` VALUES ('f3a8f8607bf04b0291277f7b483917b9', '632321', '同仁县', 'TRX', 'trx', '102.078', '35.4268', 'd6d7ccae9a0a40f7a2160b9fc4aec623');
INSERT INTO `t_area` VALUES ('f3a9f61f3d4e48f181d5565c13f9a8cf', '210782', '北镇市', 'BZS', 'bzs', '121.865', '41.5471', 'a479ed0db4c24ebfbca603a704f0cf0a');
INSERT INTO `t_area` VALUES ('f3b337cc66b24571ad6d9417eab4e9b9', '652200', '哈密地区', 'HMDQ', 'hmdq', '93.5284', '42.8586', '55758d86fdbb432a991608592ffee9c9');
INSERT INTO `t_area` VALUES ('f3cae870e1f944fa9c7e88d36c2a3246', '350921', '霞浦县', 'XPX', 'xpx', '119.991', '26.8689', 'c2ff10590b08499a87fbd5e3ef4b5ac4');
INSERT INTO `t_area` VALUES ('f3e3ded2aea44f698327360d33d5a26d', '652925', '新和县', 'XHX', 'xhx', '81.9852', '41.3657', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('f3e3f3b436fd4bcbafc604537910e58f', '140402', '城区', 'CQ', 'cq', null, null, 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('f3f9636cedb3411989f761d61da3f862', '520502', '七星关区', 'QXGQ', 'qxgq', '110.357', '25.2647', '08aba6e2bb6c49029ad1fa2980de777e');
INSERT INTO `t_area` VALUES ('f405e0cfebe54f12b313dc19df7435a0', '410103', '二七区', 'EQQ', 'eqq', '113.616', '34.6981', 'a18c6d963ed243aa9d58463ef2eaaa23');
INSERT INTO `t_area` VALUES ('f42a6366816943d388490cd7ea3e5b93', '350629', '华安县', 'HAX', 'hax', '117.544', '24.9187', '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('f444f4690c8d45dcbf74cb6364aa09a3', '532928', '永平县', 'YPX', 'ypx', '99.6008', '25.3746', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('f45657b4874b46ad95e5e92ec1f6f2d3', '131182', '深州市', 'SZS', 'szs', '115.587', '37.957', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('f456d79f11314af592a27738963dadba', '520303', '汇川区', 'HCQ', 'hcq', '107.003', '27.8876', '2a54ee0c0a234e5097546993f272e85f');
INSERT INTO `t_area` VALUES ('f4624fa462514432b519dd7fd58c5e6d', '360313', '湘东区', 'XDQ', 'xdq', '113.74', '27.5337', '1b16915c9c7b4ce6857b8da456e534b9');
INSERT INTO `t_area` VALUES ('f47eb69a09b04da6b31953c191a47487', '511922', '南江县', 'NJX', 'njx', '106.836', '32.3372', 'c8dae369045f416782e3bc86fd3404ed');
INSERT INTO `t_area` VALUES ('f484afd7fac1496fa7264fc191b9a74d', '410323', '新安县', 'XAX', 'xax', '112.128', '34.8376', '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('f4a6c4efb2094a54956b823b7453f666', '450329', '资源县', 'ZYX', 'zyx', '110.598', '26.0679', '423340e7c3e2452e82d64df9b7015d06');
INSERT INTO `t_area` VALUES ('f4a7d67636ca4ace8f0c345bc9b7b6bf', '141032', '永和县', 'YHX', 'yhx', '110.618', '36.7371', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('f4a9b6d7a1d447558f542c270dae421a', '370600', '烟台市', 'YTS', 'yts', '121.31', '37.5366', 'c68c155e028a4cd4b054084a96e7152f');
INSERT INTO `t_area` VALUES ('f4b92525c4c44547bf9c75b929bc38d0', '511701', '市辖区', 'SXQ', 'sxq', null, null, 'd2b8d5dd683246ea9606102a96fbca12');
INSERT INTO `t_area` VALUES ('f4cc38249bff4f89983ef32e2226ede0', '410704', '凤泉区', 'FQQ', 'fqq', '113.864', '35.3993', 'b130dfa9d1a44fe2af33d0cba7db31eb');
INSERT INTO `t_area` VALUES ('f4d658582d24419cbbc8010fd8fe53d5', '341021', '歙县', 'SX', 'sx', '118.575', '29.8712', '6d5ad4e7f31d46a2a051ddbaf3dfbea9');
INSERT INTO `t_area` VALUES ('f4ed3f0079a34bac99ec8c2b6c932b41', '410883', '孟州市', 'MZS', 'mzs', '112.77', '34.9259', 'e37af3c6d32544a285fece1041697fe3');
INSERT INTO `t_area` VALUES ('f4f37c6dc83c467c957e53a353f052a8', '441223', '广宁县', 'GNX', 'gnx', '112.443', '23.6772', '7d8c295abd7c4d07b8a14239aacb8755');
INSERT INTO `t_area` VALUES ('f50994a1164a4b34be31a2e8c3d76742', '370704', '坊子区', 'FZQ', 'fzq', '119.258', '36.6257', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('f558e6f8d8a642e38ebfb4490d58281d', '320811', '清浦区', 'QPQ', 'qpq', '119.025', '33.4886', '3eefa376da9a4cb3b26ab372a169fc72');
INSERT INTO `t_area` VALUES ('f55d16c226034639a16a3d8b817a9906', '150401', '市辖区', 'SXQ', 'sxq', null, null, 'a28922a2e2ac4e3591b1f7beb5fcbd05');
INSERT INTO `t_area` VALUES ('f5972c9a955348839f76aeffe23e4129', '410523', '汤阴县', 'TYX', 'tyx', '114.462', '35.908', '6ce503bee83e4819b75f1c46a25ed3c6');
INSERT INTO `t_area` VALUES ('f5a6ed9110164295859c775c88827f6c', '230521', '集贤县', 'JXX', 'jxx', '131.151', '46.8184', 'aac8da72e0e34fd3b922be7dcbe78a6c');
INSERT INTO `t_area` VALUES ('f5b71aa361af47949d8a57a364b1f283', '421200', '咸宁市', 'XNS', 'xns', '114.3', '29.8807', 'd03858436b504e688f9685110bfeefc4');
INSERT INTO `t_area` VALUES ('f5d57c56379c4a86b3efbc59d10bac29', '130725', '尚义县', 'SYX', 'syx', '114.153', '41.1326', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('f5fe58d7239f4001ad5fef24c5998d19', '441423', '丰顺县', 'FSX', 'fsx', '116.291', '23.9161', '7b082ed011ad46a39f4a059f8d145c13');
INSERT INTO `t_area` VALUES ('f5ffb8f94911469db323db50e67d0a40', '210300', '鞍山市', 'ASS', 'ass', '123.008', '41.1187', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('f604acd1b5dc4ea49f354ea8f70dfae6', '211300', '朝阳市', 'CYS', 'cys', '120.446', '41.5718', 'd68795c464be4fae92825d1c5b43306d');
INSERT INTO `t_area` VALUES ('f6147abd7e724c67bb8fd5a4d47fb17c', '130521', '邢台县', 'XTX', 'xtx', '114.168', '37.1524', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('f6153579cd6e44d8824e11b934a513a6', '130183', '晋州市', 'JZS', 'jzs', '115.092', '37.9911', '725123495f7d4c1facee994220f3b1b3');
INSERT INTO `t_area` VALUES ('f6626e5fc9ab487ca753a14dc1a7ec5b', '632621', '玛沁县', 'MQX', 'mqx', '99.7943', '34.504', '1dd19b4dbd6e441d8864c7855b538cd7');
INSERT INTO `t_area` VALUES ('f6650a40dd9e4abfb284e59ff73ce232', '542233', '浪卡子县', 'LKZX', 'lkzx', '90.6383', '28.7613', '2bee2486506c484cb03fa9348284627d');
INSERT INTO `t_area` VALUES ('f6808d45910049d9b53908347fe03003', '330521', '德清县', 'DQX', 'dqx', '120.05', '30.5676', '611bbedacbe04f668b20db1a0beaf99b');
INSERT INTO `t_area` VALUES ('f6818fde705b452da6ada3ce54ca4089', '220100', '长春市', 'ZCS', 'zcs', '125.314', '43.8983', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('f696c793ef054fbaa912981c8b9ec059', '370306', '周村区', 'ZCQ', 'zcq', '117.875', '36.7712', '6299fbb210ce4d98adc3f115798d5f08');
INSERT INTO `t_area` VALUES ('f698a704d7dd43fea65e16c7a2270789', '340406', '潘集区', 'PJQ', 'pjq', '116.866', '32.8007', '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('f6a5ed60b2ff4b19af969bddda821948', '431224', '溆浦县', 'XPX', 'xpx', '110.659', '27.8359', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('f6b298d3f17c4ae99564c18f2a04f81b', '331181', '龙泉市', 'LQS', 'lqs', '119.082', '28.0506', '0059507ee1af4609beca90fda1a1d840');
INSERT INTO `t_area` VALUES ('f6ea8e654834466ea1db6529e5d31f80', '430481', '耒阳市', 'LYS', 'lys', '112.922', '26.424', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('f6ed44882da04482aef56b58eb313653', '652901', '阿克苏市', 'AKSS', 'akss', '81.156', '40.3494', 'bb2815bea8d745da85b33e427dbb9867');
INSERT INTO `t_area` VALUES ('f6f4fbf37db841a49d085c7e1fcbd1c4', '210202', '中山区', 'ZSQ', 'zsq', '121.678', '38.9004', '577089ea16bc48a0ba6187727daca021');
INSERT INTO `t_area` VALUES ('f70717a223c0439eab7f98555c263099', '130636', '顺平县', 'SPX', 'spx', '115.074', '38.928', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('f76a2503fda34384966a01571ab90bc0', '230230', '克东县', 'KDX', 'kdx', '126.352', '48.009', '41d287b6959d407597b98b7fd96ffb66');
INSERT INTO `t_area` VALUES ('f76f73ac416c4738a311a8b5674cec90', '360881', '井冈山市', 'JGSS', 'jgss', '114.125', '26.6332', '0a9b701869b146048c0ca292a2cd1e96');
INSERT INTO `t_area` VALUES ('f773ffbc85f24b52a2b68fef00535023', '630122', '湟中县', 'HZX', 'hzx', '101.544', '36.5798', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('f7776f261f264ed1913bb122ece139ae', '420701', '市辖区', 'SXQ', 'sxq', null, null, '920dd719c1884228a815ee19a01325b4');
INSERT INTO `t_area` VALUES ('f7782553a75a40968e658a1e603d86b9', '610823', '横山县', 'HSX', 'hsx', '109.467', '37.8516', 'a25fc68ff3504f20bb9a54058f792c16');
INSERT INTO `t_area` VALUES ('f78aa47609e349a989455438879b7c6e', '150621', '达拉特旗', 'DLTQ', 'dltq', '109.866', '40.2203', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('f792c589ae414745b579ef6d36777a89', '650104', '新市区', 'XSQ', 'xsq', '115.412', '38.8812', '42bb560057014bafb028d951d397b52d');
INSERT INTO `t_area` VALUES ('f796c71c875d4e8c912d166be2329f41', '140431', '沁源县', 'QYX', 'qyx', '112.29', '36.7016', 'ca0fed4e5fc14f85a9090bef49a33ab1');
INSERT INTO `t_area` VALUES ('f7b0f1a3a4c74f1d9cdf1d8806ce3b54', '410301', '市辖区', 'SXQ', 'sxq', null, null, '6f0e1a022453482cbe1dcee1266495f1');
INSERT INTO `t_area` VALUES ('f7ba488fc0b24c8eb2856d6d5914688c', '440514', '潮南区', 'CNQ', 'cnq', '116.414', '23.1814', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('f7c3aaf7f2a34c509890f8290c144ef6', '421087', '松滋市', 'SZS', 'szs', '111.696', '30.1052', '02c5030129fc4efc9fd5d44c7aeadecc');
INSERT INTO `t_area` VALUES ('f7d638f6b53c4e6ba9b357543cd23519', '141082', '霍州市', 'HZS', 'hzs', '111.831', '36.5997', 'ab4e6f3e75b24769b22ad6b914db0007');
INSERT INTO `t_area` VALUES ('f7e0d392eb67499391467237f85e4fc1', '130821', '承德县', 'CDX', 'cdx', '118.126', '40.9732', '302793ce1e6842108cfd5fa2e18775e3');
INSERT INTO `t_area` VALUES ('f7e3889c250447faa00f1fdb61076fa0', '141181', '孝义市', 'XYS', 'xys', '111.638', '37.1181', '0e87e233d232498b8d124121fc9137c5');
INSERT INTO `t_area` VALUES ('f817c2d5697048fab5472f6064dba8cb', '222406', '和龙市', 'HLS', 'hls', '128.911', '42.4664', 'd6cab1fa4dc34e1db266635059d1dbc4');
INSERT INTO `t_area` VALUES ('f82f682219bc4ec789795f1dfc89ede1', '230904', '茄子河区', 'QZHQ', 'qzhq', '131.475', '45.8832', 'b50634da14764d0cae033c7cac9db0a6');
INSERT INTO `t_area` VALUES ('f832feeabaac44c29a3735917ba0981f', '540101', '市辖区', 'SXQ', 'sxq', null, null, 'a911b773ade3483ea4a713168a258f8c');
INSERT INTO `t_area` VALUES ('f8392a55c8804699a895e1bda6585534', '411401', '市辖区', 'SXQ', 'sxq', null, null, '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('f840f1a3931545c38fdb25e608d2b3ad', '410400', '平顶山市', 'PDSS', 'pdss', '113.301', '33.7453', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('f84b9fd1191543a8beab5ac67547bd41', '510681', '广汉市', 'GHS', 'ghs', '104.298', '31.0065', 'd5479e2189fc46c886a6a6ae5a98ca5b');
INSERT INTO `t_area` VALUES ('f8520a63323a415aad3fb229f522ac75', '429005', '潜江市', 'QJS', 'qjs', '112.769', '30.3431', 'ca0a6522a4dd478dbefc06903bd8c3bb');
INSERT INTO `t_area` VALUES ('f855f551c7ad4f5ca22c857b960d5445', '220103', '宽城区', 'KCQ', 'kcq', '125.345', '43.9983', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('f85fd1d038c74536b275e5ad830803df', '500116', '江津区', 'JJQ', 'jjq', '106.269', '29.0354', '378d2a6319ea43d587484f37b2e9760c');
INSERT INTO `t_area` VALUES ('f8731ef028eb45a78c31440c98238024', '620921', '金塔县', 'JTX', 'jtx', '99.1866', '40.3826', '66f68bb66fb846d3811795bc98b19bfd');
INSERT INTO `t_area` VALUES ('f874fa01002f4a5b81d3c3a2bd925e22', '371726', '鄄城县', 'JCX', 'jcx', '115.553', '35.555', '8d062cd6f70f4707b576cd88f39bbbe2');
INSERT INTO `t_area` VALUES ('f88fd177330f4ceeb840b610b99cd7f4', '150821', '五原县', 'WYX', 'wyx', '108.072', '41.0454', 'e91494af7d4d45abbb34bd46b797295e');
INSERT INTO `t_area` VALUES ('f8a2974f9c644692812b1ad863b0e7d4', '530926', '耿马傣族佤族自治县', 'GMDZWZZZX', 'gmdzwzzzx', '99.4343', '23.6417', '6d1f603f01454824bde7ab367d9842bf');
INSERT INTO `t_area` VALUES ('f8b420b65ed84173acdc1efc5adf07ac', '542431', '双湖县', 'SHX', 'shx', null, null, '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('f8c5ea42592b43ba8beb748c79ef1a41', '542427', '索县', 'SX', 'sx', '94.3126', '31.5928', '56d7c262ef624f05b379036c99a3d39e');
INSERT INTO `t_area` VALUES ('f8d5ca56838c44c58c6880083f4fb257', '440513', '潮阳区', 'CYQ', 'cyq', '116.485', '23.3473', '0cb430efa5004afab03996312c095e12');
INSERT INTO `t_area` VALUES ('f8e670959d7743699851a5c110693bc1', '152502', '锡林浩特市', 'XLHTS', 'xlhts', '116.137', '44.079', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('f8e6cf9629b74a548f1c8aab28cc7da0', '320281', '江阴市', 'JYS', 'jys', '120.311', '31.8374', '2dad6414f6f041a89701d6c4421eb174');
INSERT INTO `t_area` VALUES ('f8f7476421754828883c8561b956bd8c', '230125', '宾县', 'BX', 'bx', '127.662', '45.7838', 'a1427683e96d41849738e0479ac9ab2d');
INSERT INTO `t_area` VALUES ('f8ff2ad23551486f9b933b7d88455f8a', '310117', '松江区', 'SJQ', 'sjq', '121.227', '31.0212', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('f9266add2c314563912371492707017c', '420203', '西塞山区', 'XSSQ', 'xssq', '115.132', '30.1845', '0d892304f9d44fc7b81819d485f90461');
INSERT INTO `t_area` VALUES ('f93e9effb8c5451398654574614bbca5', '620422', '会宁县', 'HNX', 'hnx', '105.102', '35.9635', '0800f56287ad4d55bb0ec1cb3de20ecc');
INSERT INTO `t_area` VALUES ('f94da041cfd54b74867fcd0835d55726', '620722', '民乐县', 'MLX', 'mlx', '100.798', '38.4732', '026c772cb27d44d6a302f405ad169829');
INSERT INTO `t_area` VALUES ('f956ab962743424bb03b99c85341dfe8', '410423', '鲁山县', 'LSX', 'lsx', '112.74', '33.7487', 'f840f1a3931545c38fdb25e608d2b3ad');
INSERT INTO `t_area` VALUES ('f98f70181c8547a5b4cf8fe10e99d323', '150102', '新城区', 'XCQ', 'xcq', '108.992', '34.2715', '1b6b35d23cc3431ca5a3ad4c26242b43');
INSERT INTO `t_area` VALUES ('f9a0f68a667f42b9a1ad6357f86b0c9a', '370202', '市南区', 'SNQ', 'snq', '120.376', '36.0725', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('f9b78ef8328348bbb55ffaf3ac3790ae', '500232', '武隆县', 'WLX', 'wlx', '107.716', '29.3793', 'c5387d7a92a446dc8ed501fb1454f6ad');
INSERT INTO `t_area` VALUES ('f9d94a1e2ba94b32b8ed9e875880c6b5', '152530', '正蓝旗', 'ZLQ', 'zlq', '116.235', '40.0048', '5d08a9c7858e4d119baee9db197b23e0');
INSERT INTO `t_area` VALUES ('f9dcf432fd7f45869bf3e5f2d0f35ff0', '520628', '松桃苗族自治县', 'STMZZZX', 'stmzzzx', '109.042', '28.1297', '09170918f1774baaa2124cf177a98c71');
INSERT INTO `t_area` VALUES ('f9e4b37b04334153983776c7b1b37a38', '330421', '嘉善县', 'JSX', 'jsx', '120.909', '30.9057', 'e14b7ee083504d1fbf3cf46df9fc0766');
INSERT INTO `t_area` VALUES ('fa09bb2c76944253a545bff9328d8622', '511601', '市辖区', 'SXQ', 'sxq', null, null, 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('fa0a05bb1c524d3880155437707ced5b', '610927', '镇坪县', 'ZPX', 'zpx', '109.457', '31.9393', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('fa2ea84e7bc14e1d94b949e23526f4bb', '430602', '岳阳楼区', 'YYLQ', 'yylq', '113.155', '29.3677', '1641a2e6f2fb49a8a6732fea971d2883');
INSERT INTO `t_area` VALUES ('fa346829038240beb1741221d5581748', '131128', '阜城县', 'FCX', 'fcx', '116.328', '37.9123', '0fa5318c0edb4d7c87bbf8d1948acb20');
INSERT INTO `t_area` VALUES ('fa44f83d7ddc41f0900c89475a3239dc', '140621', '山阴县', 'SYX', 'syx', '112.787', '39.521', '5fae98e69f8e49bd869383057f9fea4c');
INSERT INTO `t_area` VALUES ('fa536df994464e2bbb3dca5b5944ea7b', '330901', '市辖区', 'SXQ', 'sxq', null, null, '9aac8e6852114aeaae087275dcda7b05');
INSERT INTO `t_area` VALUES ('fa56632161cc44f0b076ed217220a957', '220524', '柳河县', 'LHX', 'lhx', '125.917', '42.1857', 'a1a40150f38740f1a78db01b83540950');
INSERT INTO `t_area` VALUES ('fab036ee8ac04fd3a6dc28234d9b7186', '371327', '莒南县', 'JNX', 'jnx', '118.89', '35.2131', '0aa3d165299041f3bb535d0ed0ebe0a9');
INSERT INTO `t_area` VALUES ('fac39688142747f692bbc67cf42753ca', '620825', '庄浪县', 'ZLX', 'zlx', '106.066', '35.256', '8b784679cf6b4d738d07a81cc127f9b3');
INSERT INTO `t_area` VALUES ('fac48b142d78414782f7bcbffd85b3ad', '620300', '金昌市', 'JCS', 'jcs', '102.208', '38.5161', 'cf0ffa28178c49d18d6d69364c2bf055');
INSERT INTO `t_area` VALUES ('fae145ffed5e43a290fc9b96e7503ab0', '310000', '上海市', 'SHS', 'shs', '121.488', '31.2492', '0');
INSERT INTO `t_area` VALUES ('fb07df7f9f2b4847809444eef3ee45d6', '450703', '钦北区', 'QBQ', 'qbq', '108.529', '22.1711', '7ed79c566cfb42e39424806a872e2f61');
INSERT INTO `t_area` VALUES ('fb0ae10a6b204ef2bc4e672d2b95a2ab', '230621', '肇州县', 'ZZX', 'zzx', '125.309', '45.8371', '585db3479c7640adad39e2e3889f34bf');
INSERT INTO `t_area` VALUES ('fb442443a01742afb05f98f75ec7a2df', '623023', '舟曲县', 'ZQX', 'zqx', '104.326', '33.6348', '8b8626bd0cbd428ab7e34ff8f343f822');
INSERT INTO `t_area` VALUES ('fb46c5f480e245feae3f16e6012bbf85', '530326', '会泽县', 'HZX', 'hzx', '103.469', '26.4622', '2e49e5156fa9414781c6cd98dcabf35c');
INSERT INTO `t_area` VALUES ('fb5a500b271240c98bc09b8809632bf9', '370203', '市北区', 'SBQ', 'sbq', '120.378', '36.1001', '6b910370fef84fb59737c1b55e2b814e');
INSERT INTO `t_area` VALUES ('fb615a43a9174dadbc6ee2aa863265c9', '632500', '海南藏族自治州', 'HNZZZZZ', 'hnzzzzz', '100.624', '36.2844', '8fe31d21168440189d1c40d7d9b9854f');
INSERT INTO `t_area` VALUES ('fb74ea7d5a7548a98274af0a36aa8662', '513424', '德昌县', 'DCX', 'dcx', '102.192', '27.3312', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('fb7632443b4147ce86429fa3df13cfab', '370783', '寿光市', 'SGS', 'sgs', '118.853', '37.0299', '6727750dd2ef43d3b6a27f2181e686c3');
INSERT INTO `t_area` VALUES ('fb8688d4626f46d69132edc1a3553154', '520000', '贵州省', 'GZS', 'gzs', '106.735', '26.9028', '0');
INSERT INTO `t_area` VALUES ('fb8fdfac78be4972aeaa4502357b1069', '361000', '抚州市', 'FZS', 'fzs', '116.361', '27.9545', 'cc0e88538f0446efb12735b7e05bd9ed');
INSERT INTO `t_area` VALUES ('fb984ea3c8e24ccf9b0f7023202faa6d', '430412', '南岳区', 'NYQ', 'nyq', '112.709', '27.2594', '2045c8fd6e12439ebd6b0015dc5e5fac');
INSERT INTO `t_area` VALUES ('fbb629be0c814f5fa56efdaaaab14fa9', '513435', '甘洛县', 'GLX', 'glx', '102.767', '28.9749', '4dc2e27fe51f4b6b85f75cd3c907960c');
INSERT INTO `t_area` VALUES ('fbc8de8e37a14ef7a7f9dc42725e96e5', '370686', '栖霞市', 'QXS', 'qxs', '120.902', '37.3117', 'f4a9b6d7a1d447558f542c270dae421a');
INSERT INTO `t_area` VALUES ('fbd6a798defd449bb5b71a2d6715d934', '231081', '绥芬河市', 'SFHS', 'sfhs', '131.102', '44.408', '234f04e4c3624ee39b9e4a817ccc7983');
INSERT INTO `t_area` VALUES ('fbd9f73010fd486f9fc55b83a1c1d7ca', '340404', '谢家集区', 'XJJQ', 'xjjq', '116.909', '32.5444', '8c5dcdffafd14655a71a20a324369938');
INSERT INTO `t_area` VALUES ('fbe80c3133c848e1a0ccd630b89a2173', '130984', '河间市', 'HJS', 'hjs', '116.272', '38.4837', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('fc0621a8e27f49ac9ca39fcf6a6fc7ee', '610922', '石泉县', 'SQX', 'sqx', '108.251', '33.0653', '402d3506a62c4040a3a838bc37da6bdf');
INSERT INTO `t_area` VALUES ('fc0bf3790dcf4d3fb23b18686c7851bf', '510300', '自贡市', 'ZGS', 'zgs', '104.776', '29.3592', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('fc1f1b80f83e468eb46ce717e731f0c0', '430211', '天元区', 'TYQ', 'tyq', '113.068', '27.7778', '5d5a6cf1d06140cea8fbf85781ae40a7');
INSERT INTO `t_area` VALUES ('fc4499e68ba849fbb98ee7aba9744978', '530524', '昌宁县', 'CNX', 'cnx', '99.5911', '24.7582', 'd4729122df5f40ff807ddb1fa092d797');
INSERT INTO `t_area` VALUES ('fc4558b58e0043338eb51d739e92e4fb', '320612', '通州区', 'TZQ', 'tzq', '116.74', '39.8098', '7af60a2d5a13493aba358982e8eb2a8d');
INSERT INTO `t_area` VALUES ('fc46edd3944e43aeb655ce8de375ebd1', '411424', '柘城县', 'ZCX', 'zcx', '115.309', '34.1117', '070ce5cd3cde44faad4b5bc8ab623435');
INSERT INTO `t_area` VALUES ('fc507abea3ba4165b0e07d1baaccffb2', '420582', '当阳市', 'DYS', 'dys', '111.843', '30.8255', 'bc9ca361b48c49508495acbd4aa00fc9');
INSERT INTO `t_area` VALUES ('fc7860f30c764177af629a9a795a4b37', '350702', '延平区', 'YPQ', 'ypq', '118.255', '26.5902', 'bacbbfc3b2564cbeb638fb248144f2af');
INSERT INTO `t_area` VALUES ('fc8822ac055c4c3b80277b5140d12768', '220600', '白山市', 'BSS', 'bss', '126.436', '41.9459', '46d29353936a4155a96fef7c68005520');
INSERT INTO `t_area` VALUES ('fc8e217340894971ba1d70727dafc174', '130303', '山海关区', 'SHGQ', 'shgq', '119.714', '40.0329', '03d4b1be187e42dda4235dbf2d48e9f4');
INSERT INTO `t_area` VALUES ('fc904b3d186e484abea405ff43a33037', '522628', '锦屏县', 'JPX', 'jpx', '109.132', '26.5668', 'd74c3c59e6c246a99989743d5321d9ab');
INSERT INTO `t_area` VALUES ('fca515b5d6d14cf4a61a1ad99a024e89', '360402', '庐山区', 'LSQ', 'lsq', '116.01', '29.6666', 'e3c372759a984ec5954b10350932ee62');
INSERT INTO `t_area` VALUES ('fccb0883d6c74af89fa2cee6afb7b752', '231281', '安达市', 'ADS', 'ads', '125.385', '46.5355', '53fb265cec09493d8030921d9348ce5e');
INSERT INTO `t_area` VALUES ('fccdaf9a6b4d4f88b2766d9ea082719b', '431227', '新晃侗族自治县', 'XHDZZZX', 'xhdzzzx', '109.169', '27.2345', '4893d1366176411cbc4f9248cac67435');
INSERT INTO `t_area` VALUES ('fccdb78652524c2abd4ea14e820ec11d', '451323', '武宣县', 'WXX', 'wxx', '109.688', '23.6107', '23e35ced75c54267b82fcea07e6b500d');
INSERT INTO `t_area` VALUES ('fcdb72b206e54fb8b557c77e82b54457', '532624', '麻栗坡县', 'MLPX', 'mlpx', '104.903', '23.2254', '521cc1efb3194688b59a4820168d4b62');
INSERT INTO `t_area` VALUES ('fce0dfa0e40a40708f7efde368e1c6f2', '440608', '高明区', 'GMQ', 'gmq', '112.683', '22.8245', 'ca3b6b5a1b1240afaa43f8fede431538');
INSERT INTO `t_area` VALUES ('fd16cfd26a6a4557bbbd3a453fb8fb28', '440224', '仁化县', 'RHX', 'rhx', '113.785', '25.1485', 'ffdafc9f4e7845c981314815e7200b10');
INSERT INTO `t_area` VALUES ('fd5a350b80684d72a9d0d83a28fcf19c', '330300', '温州市', 'WZS', 'wzs', '120.691', '28.0028', '3cce8350762f4b9bb4b659211ac1e669');
INSERT INTO `t_area` VALUES ('fd5be4cdfd3e4e6c9ab69b45edc75088', '511623', '邻水县', 'LSX', 'lsx', '107.003', '30.2633', 'a51d19008009442ca7f701f42f1ca8fd');
INSERT INTO `t_area` VALUES ('fd88f8400a824b10a68db91ec069b8fd', '622926', '东乡族自治县', 'DXZZZX', 'dxzzzx', '103.452', '35.6985', '937950ecfda84e91b3d9d8a635de0693');
INSERT INTO `t_area` VALUES ('fd9d9c934be44d7fb53951f33d673e62', '150602', '东胜区', 'DSQ', 'dsq', '109.764', '39.8056', '1ff1ce56efaa4382a25788f67b147e29');
INSERT INTO `t_area` VALUES ('fdb748eee8d34908a7db26e1a7338095', '532901', '大理市', 'DLS', 'dls', '100.219', '25.694', '148fdc181f034b8b87a44bd7769a73bf');
INSERT INTO `t_area` VALUES ('fdc11661d4234b79a741b3c11cf4d398', '441881', '英德市', 'YDS', 'yds', '113.323', '24.2257', 'd01c843fbb704c79aee7c4fcad5a8741');
INSERT INTO `t_area` VALUES ('fde03476c3514331839674ff3ccf47e2', '542623', '米林县', 'MLX', 'mlx', '94.0182', '29.2484', '6557a69d669d4aa69610090d72a2dcea');
INSERT INTO `t_area` VALUES ('fdf8352c51c84d28be2f06c6b43cadce', '130729', '万全县', 'WQX', 'wqx', '114.611', '40.8471', '1a22ad5216a24d82b1f784ee6f90753a');
INSERT INTO `t_area` VALUES ('fdf86f44280d4bc1b4655ec18b760e2c', '330603', '柯桥区', 'KQQ', 'kqq', null, null, '15eea450e33549c78dd6ebeb7125cd48');
INSERT INTO `t_area` VALUES ('fdfa92c5826c4184a14859305f9a2ef8', '411300', '南阳市', 'NYS', 'nys', '112.543', '33.0114', 'ef3d98de6541406495f8cb2a819e29e6');
INSERT INTO `t_area` VALUES ('fdfe40a0faff43159592cebf8e884365', '341600', '亳州市', 'BZS', 'bzs', '115.788', '33.8712', '339176e0e20e477496c8110a2003213e');
INSERT INTO `t_area` VALUES ('fe0055baadce49e888748f91c714d3b3', '441721', '阳西县', 'YXX', 'yxx', '111.601', '21.7206', 'd2077a7cd49748e5a0cbb2bc1448e494');
INSERT INTO `t_area` VALUES ('fe06949218f546ac80d319adda60b449', '320903', '盐都区', 'YDQ', 'ydq', '119.968', '33.2659', '27bea7655ede47bbb0cc5996439941cd');
INSERT INTO `t_area` VALUES ('fe0febe21fa0411b89be9745ac99ec6c', '321000', '扬州市', 'YZS', 'yzs', '119.428', '32.4085', '7fb9aa9db8734b4f9dd1dee111276fed');
INSERT INTO `t_area` VALUES ('fe15c54a99d547a1bb0d577de0b509d7', '652324', '玛纳斯县', 'MNSX', 'mnsx', '86.1377', '44.5036', '0064cd8b98d44db8a7b2f3741771c100');
INSERT INTO `t_area` VALUES ('fe18b031497a49ad94f8ec26e8569d17', '310118', '青浦区', 'QPQ', 'qpq', '121.091', '31.1309', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('fe2ced1b77174f4e81c283dcac091474', '610125', '户县', 'HX', 'hx', '108.592', '34.0038', '3c75f773c0c44382bb6f79b1986ea355');
INSERT INTO `t_area` VALUES ('fe564cdc6e6e4c259dff7c1034a3ef5d', '610632', '黄陵县', 'HLX', 'hlx', '108.953', '35.6284', '07e4a8f3080e4dd88d08ff6da0bead21');
INSERT INTO `t_area` VALUES ('fe672e515db8472e87574333b48c3e45', '510900', '遂宁市', 'SNS', 'sns', '105.565', '30.5575', '2226dbc692c84218abe3f4c52b53815e');
INSERT INTO `t_area` VALUES ('fe8507cc776a49b5ad8238e857c406c1', '130929', '献县', 'XX', 'xx', '116.176', '38.2427', '72bb66b6079e4f8c8ea294ad1fb94849');
INSERT INTO `t_area` VALUES ('fe881f3b1af549299314ffe1ad72c594', '130629', '容城县', 'RCX', 'rcx', '115.909', '39.0578', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('fe8dbc2233ca489e9ff96922793cd185', '340522', '含山县', 'HSX', 'hsx', '118.052', '31.6621', 'b600b6d086754980abdba0efa1ef8734');
INSERT INTO `t_area` VALUES ('fe9767a3ad0f4cf28824078238a5ff7e', '130481', '武安市', 'WAS', 'was', '114.058', '36.749', '2056d6b2e84649d7bed2629c51157d27');
INSERT INTO `t_area` VALUES ('fe9e3fcdc0bd4eb9af2f4f93bc7b9a78', '411681', '项城市', 'XCS', 'xcs', '114.893', '33.2745', '9ca6454c6c564b78b7bf867f75aec6c4');
INSERT INTO `t_area` VALUES ('fe9f4cb65df54116b492dae6b3cccbaa', '350601', '市辖区', 'SXQ', 'sxq', null, null, '999d2b9c16fb43d0b0e82b674d971c8e');
INSERT INTO `t_area` VALUES ('feae10d9b3b442da876f5059540432e1', '370523', '广饶县', 'GRX', 'grx', '118.539', '37.1621', '46641c8bfa004a55aa1e0b50152dc582');
INSERT INTO `t_area` VALUES ('feef147fedff4fc0a8c30b2da4414b51', '341521', '寿县', 'SX', 'sx', '116.769', '32.2624', '86e7cbdfa7914ace9c8fc90d5a45747a');
INSERT INTO `t_area` VALUES ('fefae7022aa5477d959f638e3cbc8ba5', '130621', '满城县', 'MCX', 'mcx', '115.278', '38.9702', '07ac1d2eb1004a119beee0505c315845');
INSERT INTO `t_area` VALUES ('ff1de3810b594183a8b7e6a5205c7fa9', '130522', '临城县', 'LCX', 'lcx', '114.385', '37.4631', '5807d814738f4ca7973bae5534a28b7d');
INSERT INTO `t_area` VALUES ('ff228c40599c4a8db69c8a89ebffee54', '140922', '五台县', 'WTX', 'wtx', '113.442', '38.7782', '9f05ac825c714b6e9cb7b956fc32b776');
INSERT INTO `t_area` VALUES ('ff25245db24144ea946bd64d17e27094', '310113', '宝山区', 'BSQ', 'bsq', '131.565', '46.5292', '2d3c94497f624181a46171a4e6871be8');
INSERT INTO `t_area` VALUES ('ff26c03f83cd4598b33c7d5eb32e7dd8', '532327', '永仁县', 'YRX', 'yrx', '101.56', '26.1437', '724408f835a849459f6e03a9477a640e');
INSERT INTO `t_area` VALUES ('ff2a20d9fdb949b09cb98890a81360f7', '630103', '城中区', 'CZQ', 'czq', '101.777', '36.6066', 'ef18a9a1a4e245ce815ca8fe802bd796');
INSERT INTO `t_area` VALUES ('ff3dc923792649829c957f156f9bad73', '321101', '市辖区', 'SXQ', 'sxq', null, null, 'c42a563971994a0ba4608f3dbfe9673e');
INSERT INTO `t_area` VALUES ('ff4a6692496843aca8e84110e26edbd5', '370181', '章丘市', 'ZQS', 'zqs', '117.479', '36.7449', '35a675d7ac824c1a81a0409092273bf4');
INSERT INTO `t_area` VALUES ('ff939632ff5e45ac84bd0dcbdf016e7c', '632224', '刚察县', 'GCX', 'gcx', '99.9884', '37.5569', '71a035f3b38b4554b63b1da0cfbdf690');
INSERT INTO `t_area` VALUES ('ffc5cc6fabc242bf93635bc745397fc4', '640302', '利通区', 'LTQ', 'ltq', '106.219', '37.7679', '1b11b582e514437184c3364fe8e7fbf2');
INSERT INTO `t_area` VALUES ('ffc640049cd24bc098323ad09394961b', '220112', '双阳区', 'SYQ', 'syq', '125.713', '43.5317', 'f6818fde705b452da6ada3ce54ca4089');
INSERT INTO `t_area` VALUES ('ffd93145cd9c4243b5ed534c0803f8a2', '510101', '市辖区', 'SXQ', 'sxq', null, null, '60c45b72584e4deeaa4bacbc72914342');
INSERT INTO `t_area` VALUES ('ffdafc9f4e7845c981314815e7200b10', '440200', '韶关市', 'SGS', 'sgs', '113.594', '24.803', 'eebafb08b8a349439daa4ac830ea09ac');
INSERT INTO `t_area` VALUES ('ffe36ccf67dc4b61a4f49c1125e694ba', '210701', '市辖区', 'SXQ', 'sxq', null, null, 'a479ed0db4c24ebfbca603a704f0cf0a');

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
INSERT INTO `t_commsequence` VALUES ('t_access_system', '18', '接入系统');
INSERT INTO `t_commsequence` VALUES ('workerNo', '10058', '员工工号');

-- ----------------------------
-- Table structure for `t_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `uuid` varchar(32) NOT NULL,
  `name` varchar(16) DEFAULT NULL COMMENT '部门名称',
  `createTime` datetime DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '0关闭，1正常',
  `systemIndex` int(11) DEFAULT NULL COMMENT '系统uuId',
  `allotType` int(1) DEFAULT NULL COMMENT '分配类型 0手动分配  1 自动分配 ',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门\r\n';

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('03d129285cc14e12ae4bb4e11f8b1766', '啊啊啊', '2015-10-16 14:39:29', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('0612244c0d9e47a9927efdc1568a0e84', '', '2016-03-18 10:32:50', null, '0', '-1', null);
INSERT INTO `t_department` VALUES ('11627a2d5c12448e8a617f2af1888126', '市场2', '2015-10-16 11:06:21', null, '1', '4', '0');
INSERT INTO `t_department` VALUES ('24ad94ca4c0e42deb64022502732407d', 'test', '2015-09-29 09:21:58', null, '0', '2', '0');
INSERT INTO `t_department` VALUES ('278b36b959b9432982938cb9c2c8e86d', '市场部', '2015-10-16 10:07:18', null, '1', '1', '0');
INSERT INTO `t_department` VALUES ('2b2d31b6440a4c5db869b4ffb7fb4fe9', '1', '2015-10-16 14:40:36', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('34a451094c004e69847a1d9e2f4d1133', '市场部门', '2015-10-16 11:09:13', null, '1', '4', '1');
INSERT INTO `t_department` VALUES ('4157497685b5455fae6a645d8b1046b1', '', '2016-03-18 10:32:54', null, '1', '-1', null);
INSERT INTO `t_department` VALUES ('4a773048b1f34fe6881f1ea881dc0281', '啊咧', '2015-10-20 10:08:51', null, '1', '18', '0');
INSERT INTO `t_department` VALUES ('6093906229854b1794fc22d1f52dd900', '12', '2015-09-30 17:01:38', null, '0', '2', '0');
INSERT INTO `t_department` VALUES ('6480c78db4a6440bb5d41d4b8ee585e1', '产品部', '2015-10-16 10:06:23', null, '1', '1', '0');
INSERT INTO `t_department` VALUES ('735ea3e3cf3a40a2b5508384e7b21faa', '1', '2015-10-20 10:33:32', null, '1', '13', '0');
INSERT INTO `t_department` VALUES ('7f9b84daaca44d7cabe3bd45ccae9162', '部门2', '2015-10-20 16:09:36', null, '1', '12', '0');
INSERT INTO `t_department` VALUES ('89782374747d43aaa66f1f89936e9b41', '1', '2015-10-16 11:05:53', null, '1', '4', '0');
INSERT INTO `t_department` VALUES ('8d19f5c3715042799f99db35fdd1e41c', '产品部', '2015-09-23 18:22:17', null, '1', '2', '0');
INSERT INTO `t_department` VALUES ('8d8f897db9874f2995f49568f23fc83e', 'hehe', '2015-10-16 11:17:39', null, '1', '2', '0');
INSERT INTO `t_department` VALUES ('953aad58e74b4a54984719ae0673e305', '测试部', '2015-10-16 15:05:50', null, '1', '6', '0');
INSERT INTO `t_department` VALUES ('aac3d0fdaf764a7191955e67867759c5', '技术部', '2015-09-23 18:10:47', null, '1', '2', '1');
INSERT INTO `t_department` VALUES ('dd4017e7a459410886bbb06b53ffe204', '12345上山打老虎', '2015-10-16 13:49:09', null, '0', '6', '0');
INSERT INTO `t_department` VALUES ('eb16536b27ce4d2389d4d125db03546e', '啊', '2015-10-16 10:43:32', null, '0', '6', '0');
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
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门名称',
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
INSERT INTO `t_question_type` VALUES ('1afe1e09995243ffba76a28bc2c3a228', '0', '2', 'dc8c608ec1b14b7ea9f4119c23c7a1c0', '2015-10-16 15:11:16', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('2e7dffdda0804ff1afecac43c3948b67', '0', 'abcde', '0', '2015-10-17 11:33:32', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('3713a0a8c0b14c4693cab0331b9abb16', '0', '小付', '0', '2015-10-16 15:06:51', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('398f60046695486ea7c4e701bf934953', '0', '12345', '986b2f51d720494e9d5b4315308a0a0a', '2015-10-17 11:48:51', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('431f2502a8c249f9a6d0dff7ed6cbd53', '34a451094c004e69847a1d9e2f4d1133', '大分类1', '0', '2015-10-20 16:04:56', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('44497e3a55284f1cb71e18dbd91efb9c', '0', '2', '3713a0a8c0b14c4693cab0331b9abb16', '2015-10-16 15:10:59', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('4e64b399bce946e9bb4037876a2bf280', 'aac3d0fdaf764a7191955e67867759c5', '分类1', '0', '2015-09-28 17:38:06', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('4e8a97b6db6e4c14bce9384f9c4ca0a1', '0', '333', '0', '2015-10-16 14:14:09', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('516f93bc0fdc41e285372bc5d176d7c4', '0', '444', '0', '2015-10-16 14:14:13', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('59717859216146f38b0df827075d187e', '0', '一只老虎', '0', '2015-10-16 13:49:53', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('5da37808033b4a56bf2c5c95cd209d9e', '34a451094c004e69847a1d9e2f4d1133', '12345678910', '0', '2015-10-17 11:35:50', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('60db2ddf74b64253a8d2c433dba1c037', '0', '123123', '10c807658727496a946d62aab76f39e3', '2015-10-17 11:16:43', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('682bf987808e44e49e606976bd386331', '0', '111', '986b2f51d720494e9d5b4315308a0a0a', '2015-10-17 11:48:15', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('737ca3058ab4421789bce914ee31cf18', '0', '客户服务', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:05:39', '1', null, '4');
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
INSERT INTO `t_question_type` VALUES ('a2ac56bac0c84b398607a57f868319c8', '0', '000', '0', '2015-10-17 11:34:51', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('a5394a33aac34a8ba3b1c0eb9b3e048f', '0', '技术疑问', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:05:23', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('a6db2e098c704050a5472a7b4294cbaa', '0', '4', '0', '2015-10-16 10:46:27', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('ae09622e7c4d45a4bb0de34dc8745c53', '0', '223', '986b2f51d720494e9d5b4315308a0a0a', '2015-10-17 11:19:51', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('b15f1756d80b4ca5bf8c7a89a4582632', '0', '小分类11', '8b2b75945aae4041ba361a1c60cecef0', '2015-09-28 17:44:37', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('b23b80c8c2964063b877d8c29df8f261', '0', '电脑故障', '10c807658727496a946d62aab76f39e3', '2015-10-16 14:05:07', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('b5ff929116684ed98713a469bafcb14d', '0', '天蓝蓝', '0', '2015-10-16 13:57:12', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('c24be6d5416a4c9b9989c0c6c8b4131f', '0', '1', 'dc8c608ec1b14b7ea9f4119c23c7a1c0', '2015-10-16 15:11:12', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('c401258e1eb048368d626e737ba12c49', '0', '这也是一个测试用的分类', 'd554e1510aad4965bd8b810948c05dc1', '2015-10-20 14:37:10', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('c7b22e3730d74f17b148639f154adea1', '8d19f5c3715042799f99db35fdd1e41c', '电脑不能开机', '0', '2015-09-23 18:07:07', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('c96735ea5eaa495082ebedf9da05bc16', '0', '554', '0', '2015-10-16 14:14:16', '1', null, '4');
INSERT INTO `t_question_type` VALUES ('cb9b2f9dba944b66a9fbf3b7c370ee96', '7f9b84daaca44d7cabe3bd45ccae9162', '大分类2', '0', '2015-10-20 16:09:00', '1', null, '12');
INSERT INTO `t_question_type` VALUES ('cc1fb69fba6d41dbab1d8021ffe2a26f', '0', '没插电3333', 'c7b22e3730d74f17b148639f154adea1', '2015-09-23 18:43:03', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('cf0f4a74af094cea84a162dacb46fd94', '0', '3', '3713a0a8c0b14c4693cab0331b9abb16', '2015-10-16 15:11:05', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('d554e1510aad4965bd8b810948c05dc1', '8d19f5c3715042799f99db35fdd1e41c', '电脑中毒', '0', '2015-09-24 14:49:14', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('d64852628787411686358f0423455bcd', '0', '1', 'd83792c51e064de3832d0c515a45ffe2', '2015-10-16 10:44:23', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('d83792c51e064de3832d0c515a45ffe2', '8d19f5c3715042799f99db35fdd1e41c', '技术分类', '0', '2015-09-30 14:51:01', '1', null, '2');
INSERT INTO `t_question_type` VALUES ('dc8c608ec1b14b7ea9f4119c23c7a1c0', '0', '小麻', '0', '2015-10-16 15:06:43', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('f2c3e7159ead43078eb8af809ddf9567', '0', '两只老虎', '0', '2015-10-16 13:50:10', '1', null, '6');
INSERT INTO `t_question_type` VALUES ('f647d7f7eb0d49928a91f3a5cc205762', '0', '2', '0', '2015-10-16 10:44:32', '0', null, '6');
INSERT INTO `t_question_type` VALUES ('f868d29269a14ee38c0bbb202fecce38', 'aac3d0fdaf764a7191955e67867759c5', '分类33', '0', '2015-09-28 17:38:11', '1', null, '2');
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
INSERT INTO `t_question_type_user_map` VALUES ('1c34c8abdbf64229a50757de24069a45', '65fbc34563a442b6bcb511cfd17aa476', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-10-19 15:14:26', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('1fb17aa0b3e84ce0b4479741ff38a654', 'b6ea890f72fa4f29ac0e7ebd85efb14a', 'b837859fcb8340ed89facc2fd1cb8c6b', '2015-10-16 15:11:12', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('28fe34f745984805bed79533fec38801', null, '638cdad78a8845749423a376f5613b8a', '2015-10-16 10:52:17', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('2a0550e2f38f4b8d94f4c4e20c6c0c4f', '793ddc1b03924fe0a5b160d3dd4696b4', '77fc2de4952e40ada863c52f67d0c66c', '2015-10-19 15:14:20', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('2ac8383637fb42b3ae4eb8700999fd97', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '3adfdff91ed54ba489fb8c32a122ae8a', '2015-10-16 15:10:54', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('3931924f58ee43ed99598854ac1931c3', '9b4d6f037b1b4faea4a806c39cfa5f38', '60db2ddf74b64253a8d2c433dba1c037', '2015-10-17 11:47:45', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('3dd05701e5e541c08d966d7de5cdba49', null, '3d967bc0b0814829950cff4e0ee07bcb', '2015-10-16 13:50:17', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('4170bd5b034e4c939080fbafb570544c', null, 'e3670d402328432e91369cadc74ad9a0', '2015-10-16 14:14:09', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('41877258301848979d6467188faee560', null, '244d98824d6c434aa4fcdd23ff4d97c5', '2015-10-16 10:44:40', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('42f014f81fc04be0bf1da701f698a2b9', '51893533745f433fad790fd59005df41', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:42', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4ad71479ecef43cb8dc0dc24eab900ea', 'fe0cbc21929d459591222e86f72b6d6f', '77fc2de4952e40ada863c52f67d0c66c', '2015-10-19 15:14:21', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('4c58e0e83ad945f281a0133768f5fb0c', 'fe0cbc21929d459591222e86f72b6d6f', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:40', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('5243e58b498c43fbb132e85c57c86468', null, '26ced17e162d4b26ac30e522119f2c26', '2015-10-16 10:46:27', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('5776d89a243a40658cc5ca59149dffdd', null, 'b2898b292e0848d08858017beae2bb64', '2015-10-17 11:34:51', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('5ad215b4e506406a8a213ea76d1fb6c8', null, 'd7713efee3bd4fcba7cd691859e45f7c', '2015-10-16 15:06:51', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('5b90fcd72b5e4cdda880503134b7bb29', null, '974fe1e95dd74bf7b8ce199a011f5946', '2015-10-16 14:13:59', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('5d986a0f6eee439cb06092d345051381', null, 'ae5fd604565643b6a434b618723a40a7', '2015-10-16 10:30:22', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('6130b26eb25546668031e50086c2714e', '0fd089859fea4c66981668948b424cb9', 'dfdb89b83f79464f8100d048d4b52875', '2015-10-17 11:48:15', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('628ada1efda74962b0002e97c308dd81', '0fd089859fea4c66981668948b424cb9', 'c649cbbecb4340c29ff1de4d2ea7bb82', '2015-10-16 14:30:19', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('6604431b2d524094a86b28902346bd63', '9b4d6f037b1b4faea4a806c39cfa5f38', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:44', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('6771b05e39cf40dca3e48f5424c4f771', '65fbc34563a442b6bcb511cfd17aa476', 'fc410d174f9e4f9ebaa13164862c7d3a', '2015-10-20 14:42:42', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('6dc2570635954324bb89a5a8ab2b27ad', null, 'f65096cd26e2452ea057148ae6a723ec', '2015-10-16 15:06:43', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('754d63dbbccb4f94a49977e4509865de', null, '264239feaae347c18a4bc31d086ab9f8', '2015-10-16 14:44:04', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('76660f6d964e4888b656bcbb1feb49b6', null, '0624ad63127b42e791a8d69e3bee917b', '2015-10-17 11:34:18', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('7906ed82158b47c48150c701c09c7410', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '501149981e1b46b694da6a41c2e5d51b', '2015-10-16 15:11:16', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('82eaac15a24240f3a7fe043f6ca56772', '51893533745f433fad790fd59005df41', 'dfd31ea612da4ba8bb7918c89a890d79', '2015-10-19 15:12:36', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('84b59876c6d0465588ec67f45f750114', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '521dc46f4ae94ce89a0cad684e90d389', '2015-10-16 15:11:21', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('8b2df818a35b455881bab969c4943858', '65fbc34563a442b6bcb511cfd17aa476', 'fb554c4bc93e454a80a8effdd41d5d90', '2015-10-19 15:10:35', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('94f3a30318ba40a4a9d6f98d891bd14f', 'd9cc5adfd1c64464b1bdac3f04d375f8', '0a2c3e19900c41ff8f0b399c78edc789', '2015-10-16 14:05:23', '1', '4');
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
INSERT INTO `t_question_type_user_map` VALUES ('db1fe3e74772417884e2d4689cf0025b', null, '2c6ebd5c1222481d8bcbf60ad072def7', '2015-10-16 10:53:21', '1', '6');
INSERT INTO `t_question_type_user_map` VALUES ('dcb003ed743744f1886f515b2d03b61b', '793ddc1b03924fe0a5b160d3dd4696b4', 'cc1fb69fba6d41dbab1d8021ffe2a26f', '2015-10-19 15:14:26', '1', '2');
INSERT INTO `t_question_type_user_map` VALUES ('df512d9c99034a6babeb0b373e8f834f', '7d6550c833f64fb6991a147feefc8a2f', '890a7002bfd7448ca63505c1754ebc69', '2015-10-16 15:29:45', '1', '4');
INSERT INTO `t_question_type_user_map` VALUES ('df720ae0ad09498991c552862098194c', 'e9fc0e08d1434b83b4f96e97cf139850', 'b23b80c8c2964063b877d8c29df8f261', '2015-10-16 14:18:46', '1', '4');
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
-- Table structure for `t_sys10_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys10_knowledge`;
CREATE TABLE `t_sys10_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys10_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys10_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys10_reply`;
CREATE TABLE `t_sys10_reply` (
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
-- Records of t_sys10_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys10_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys10_ticket`;
CREATE TABLE `t_sys10_ticket` (
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
-- Records of t_sys10_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys10_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys10_ticket_move`;
CREATE TABLE `t_sys10_ticket_move` (
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
-- Records of t_sys10_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys11_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys11_knowledge`;
CREATE TABLE `t_sys11_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys11_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys11_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys11_reply`;
CREATE TABLE `t_sys11_reply` (
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
-- Records of t_sys11_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys11_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys11_ticket`;
CREATE TABLE `t_sys11_ticket` (
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
-- Records of t_sys11_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys11_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys11_ticket_move`;
CREATE TABLE `t_sys11_ticket_move` (
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
-- Records of t_sys11_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys12_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys12_knowledge`;
CREATE TABLE `t_sys12_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys12_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys12_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys12_reply`;
CREATE TABLE `t_sys12_reply` (
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
-- Records of t_sys12_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys12_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys12_ticket`;
CREATE TABLE `t_sys12_ticket` (
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
-- Records of t_sys12_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys12_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys12_ticket_move`;
CREATE TABLE `t_sys12_ticket_move` (
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
-- Records of t_sys12_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys13_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys13_knowledge`;
CREATE TABLE `t_sys13_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys13_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys13_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys13_reply`;
CREATE TABLE `t_sys13_reply` (
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
-- Records of t_sys13_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys13_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys13_ticket`;
CREATE TABLE `t_sys13_ticket` (
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
-- Records of t_sys13_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys13_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys13_ticket_move`;
CREATE TABLE `t_sys13_ticket_move` (
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
-- Records of t_sys13_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys14_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys14_knowledge`;
CREATE TABLE `t_sys14_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys14_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys14_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys14_reply`;
CREATE TABLE `t_sys14_reply` (
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
-- Records of t_sys14_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys14_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys14_ticket`;
CREATE TABLE `t_sys14_ticket` (
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
-- Records of t_sys14_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys14_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys14_ticket_move`;
CREATE TABLE `t_sys14_ticket_move` (
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
-- Records of t_sys14_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys15_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys15_knowledge`;
CREATE TABLE `t_sys15_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys15_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys15_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys15_reply`;
CREATE TABLE `t_sys15_reply` (
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
-- Records of t_sys15_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys15_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys15_ticket`;
CREATE TABLE `t_sys15_ticket` (
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
-- Records of t_sys15_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys15_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys15_ticket_move`;
CREATE TABLE `t_sys15_ticket_move` (
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
-- Records of t_sys15_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys16_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys16_knowledge`;
CREATE TABLE `t_sys16_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys16_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys16_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys16_reply`;
CREATE TABLE `t_sys16_reply` (
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
-- Records of t_sys16_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys16_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys16_ticket`;
CREATE TABLE `t_sys16_ticket` (
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
-- Records of t_sys16_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys16_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys16_ticket_move`;
CREATE TABLE `t_sys16_ticket_move` (
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
-- Records of t_sys16_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys17_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys17_knowledge`;
CREATE TABLE `t_sys17_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys17_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys17_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys17_reply`;
CREATE TABLE `t_sys17_reply` (
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
-- Records of t_sys17_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys17_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys17_ticket`;
CREATE TABLE `t_sys17_ticket` (
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
-- Records of t_sys17_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys17_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys17_ticket_move`;
CREATE TABLE `t_sys17_ticket_move` (
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
-- Records of t_sys17_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys18_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys18_knowledge`;
CREATE TABLE `t_sys18_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys18_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys18_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys18_reply`;
CREATE TABLE `t_sys18_reply` (
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
-- Records of t_sys18_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys18_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys18_ticket`;
CREATE TABLE `t_sys18_ticket` (
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
-- Records of t_sys18_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys18_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys18_ticket_move`;
CREATE TABLE `t_sys18_ticket_move` (
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
-- Records of t_sys18_ticket_move
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
-- Table structure for `t_sys3_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys3_knowledge`;
CREATE TABLE `t_sys3_knowledge` (
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
-- Records of t_sys3_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys3_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys3_reply`;
CREATE TABLE `t_sys3_reply` (
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
-- Records of t_sys3_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys3_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys3_ticket`;
CREATE TABLE `t_sys3_ticket` (
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
-- Records of t_sys3_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys3_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys3_ticket_move`;
CREATE TABLE `t_sys3_ticket_move` (
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
-- Records of t_sys3_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys4_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys4_knowledge`;
CREATE TABLE `t_sys4_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys4_knowledge
-- ----------------------------
INSERT INTO `t_sys4_knowledge` VALUES ('28fa60d9b50841f381a2d1b88c276f86', '7d6550c833f64fb6991a147feefc8a2f', '你想问什么', '不知道', null, null, '986b2f51d720494e9d5b4315308a0a0a', '2015-10-16 14:19:57', '1', '1', '34a451094c004e69847a1d9e2f4d1133');
INSERT INTO `t_sys4_knowledge` VALUES ('640f91f050434fe09f3aecb2538967f3', '7d6550c833f64fb6991a147feefc8a2f', '你猜我想问什么', '什么', null, null, '10c807658727496a946d62aab76f39e3', '2015-10-16 14:20:38', '1', '2', '34a451094c004e69847a1d9e2f4d1133');
INSERT INTO `t_sys4_knowledge` VALUES ('648a0be62ea449e88d28e6b464f526df', '0fd089859fea4c66981668948b424cb9', 'question', 'answer', null, null, '682bf987808e44e49e606976bd386331', '2015-10-20 16:56:29', '2', null, '34a451094c004e69847a1d9e2f4d1133');
INSERT INTO `t_sys4_knowledge` VALUES ('77b11554dae64c13a9ff162b52089a4c', '7d6550c833f64fb6991a147feefc8a2f', '222222', '2222222', null, null, '10c807658727496a946d62aab76f39e3', '2015-10-17 11:21:22', '1', null, '34a451094c004e69847a1d9e2f4d1133');
INSERT INTO `t_sys4_knowledge` VALUES ('9b5cd77e90e24fb788e06aa0514430ed', '7d6550c833f64fb6991a147feefc8a2f', '这是小分类吗', '是', null, null, '77fc2de4952e40ada863c52f67d0c66c', '2015-10-20 11:25:11', '1', null, '34a451094c004e69847a1d9e2f4d1133');
INSERT INTO `t_sys4_knowledge` VALUES ('c2a12b8eb3bd45feb88c4da3225c802d', 'e9fc0e08d1434b83b4f96e97cf139850', '33333', '33333333', null, null, '10c807658727496a946d62aab76f39e3', '2015-10-17 11:22:26', '1', null, '34a451094c004e69847a1d9e2f4d1133');
INSERT INTO `t_sys4_knowledge` VALUES ('eb1bbc4493874128b0f1fd06578b934b', '0fd089859fea4c66981668948b424cb9', '这是大分类吗', '是', null, null, '10c807658727496a946d62aab76f39e3', '2015-10-20 11:16:18', '2', null, '34a451094c004e69847a1d9e2f4d1133');

-- ----------------------------
-- Table structure for `t_sys4_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys4_reply`;
CREATE TABLE `t_sys4_reply` (
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
-- Records of t_sys4_reply
-- ----------------------------
INSERT INTO `t_sys4_reply` VALUES ('0bdc5ae2c6d24d0b86901c63dd1dc6ff', '78afc0354f3b4b4e83be2fdbc9eabac2', '0fd089859fea4c66981668948b424cb9', null, null, 'sad ', '1', '2015-10-26 14:47:15');
INSERT INTO `t_sys4_reply` VALUES ('4031f808a2064bf18c73b2293c042473', '8deac29a6ed646e592e4e393d8883a1e', '0fd089859fea4c66981668948b424cb9', null, null, '12312', '1', '2015-10-16 15:16:47');
INSERT INTO `t_sys4_reply` VALUES ('4275e1e339884578b9d2d7226fb94827', '8deac29a6ed646e592e4e393d8883a1e', '0fd089859fea4c66981668948b424cb9', null, null, '12312', '1', '2015-10-16 15:16:49');
INSERT INTO `t_sys4_reply` VALUES ('4688a37710794eb0aa599d568e174b4f', '13e7857485c64d85bb44073d26ebd1c5', '7d6550c833f64fb6991a147feefc8a2f', null, null, '', '1', '2015-10-17 11:41:38');
INSERT INTO `t_sys4_reply` VALUES ('60e673ddaf4f4984bc13cb193cc164e5', '8deac29a6ed646e592e4e393d8883a1e', '0fd089859fea4c66981668948b424cb9', null, null, '123123', '1', '2015-10-16 15:12:11');
INSERT INTO `t_sys4_reply` VALUES ('8aa099f949a54b899699c225287dd88e', '78afc0354f3b4b4e83be2fdbc9eabac2', '0fd089859fea4c66981668948b424cb9', null, null, '123', '1', '2015-10-26 14:45:32');
INSERT INTO `t_sys4_reply` VALUES ('c4f4e24723664c2d86ef72aee30d91ef', '8deac29a6ed646e592e4e393d8883a1e', '0fd089859fea4c66981668948b424cb9', null, null, '123123', '1', '2015-10-16 15:19:27');
INSERT INTO `t_sys4_reply` VALUES ('eae5cf07711d43f0b0d0e0ac7b674b91', '8deac29a6ed646e592e4e393d8883a1e', '0fd089859fea4c66981668948b424cb9', null, null, '123123', '1', '2015-10-16 15:16:39');
INSERT INTO `t_sys4_reply` VALUES ('f3b2428e7d884df4a6dc417febeeb97c', '8deac29a6ed646e592e4e393d8883a1e', '123', null, null, 'qweqweqwe', '1', '2015-10-16 15:19:15');
INSERT INTO `t_sys4_reply` VALUES ('fd950041615a491ab1c111c3e95e1dbb', '8deac29a6ed646e592e4e393d8883a1e', '0fd089859fea4c66981668948b424cb9', null, null, '12312', '1', '2015-10-16 15:16:50');

-- ----------------------------
-- Table structure for `t_sys4_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys4_ticket`;
CREATE TABLE `t_sys4_ticket` (
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
-- Records of t_sys4_ticket
-- ----------------------------
INSERT INTO `t_sys4_ticket` VALUES ('13e7857485c64d85bb44073d26ebd1c5', '6', '23', null, '123', null, null, '1', '890a7002bfd7448ca63505c1754ebc69', 'e9fc0e08d1434b83b4f96e97cf139850', '2015-10-16 15:32:57', null, null, '1@qq.com', '12345678910');
INSERT INTO `t_sys4_ticket` VALUES ('1507718c91734b6782e63d0208d2c7cc', '3', '23', null, '123', null, null, '0', '890a7002bfd7448ca63505c1754ebc69', 'd9cc5adfd1c64464b1bdac3f04d375f8', '2015-10-16 15:32:46', null, null, '1@qq.com', '12345678910');
INSERT INTO `t_sys4_ticket` VALUES ('520d3e8567c5496c9f2049149d6f4b06', '4', '23', null, '123', null, null, '1', '890a7002bfd7448ca63505c1754ebc69', '0fd089859fea4c66981668948b424cb9', '2015-10-16 15:32:49', null, null, '1@qq.com', '12345678910');
INSERT INTO `t_sys4_ticket` VALUES ('521edd647fa74de1a667d18123efd308', '2', '23', null, '123', null, null, '0', '890a7002bfd7448ca63505c1754ebc69', '9b4d6f037b1b4faea4a806c39cfa5f38', '2015-10-16 15:32:42', null, null, '1@qq.com', '12345678910');
INSERT INTO `t_sys4_ticket` VALUES ('78afc0354f3b4b4e83be2fdbc9eabac2', '5', '23', null, '123', null, null, '1', '890a7002bfd7448ca63505c1754ebc69', '0fd089859fea4c66981668948b424cb9', '2015-10-16 15:32:53', null, null, '1@qq.com', '12345678910');
INSERT INTO `t_sys4_ticket` VALUES ('8deac29a6ed646e592e4e393d8883a1e', '123', '23', null, '123', null, null, '1', '890a7002bfd7448ca63505c1754ebc69', '0fd089859fea4c66981668948b424cb9', '2015-10-16 15:00:03', null, null, '1@qq.com', '12345678910');
INSERT INTO `t_sys4_ticket` VALUES ('ef1820c237dd4c948ce1d9ec06a149b7', '1', 'aaa', null, '123', null, null, '0', '890a7002bfd7448ca63505c1754ebc69', 'e9fc0e08d1434b83b4f96e97cf139850', '2015-10-16 15:29:59', null, null, 'aa', 'aaa');

-- ----------------------------
-- Table structure for `t_sys4_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys4_ticket_move`;
CREATE TABLE `t_sys4_ticket_move` (
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
-- Records of t_sys4_ticket_move
-- ----------------------------
INSERT INTO `t_sys4_ticket_move` VALUES ('6478cc42f7a044dd8de663f6b08f5f20', '0fd089859fea4c66981668948b424cb9', '7d6550c833f64fb6991a147feefc8a2f', '7d6550c833f64fb6991a147feefc8a2f', '8deac29a6ed646e592e4e393d8883a1e', '2015-10-16 15:00:35', '', '1', null);
INSERT INTO `t_sys4_ticket_move` VALUES ('a8c3c747604a43798dbf3e39cac045bc', '0fd089859fea4c66981668948b424cb9', '7d6550c833f64fb6991a147feefc8a2f', '7d6550c833f64fb6991a147feefc8a2f', '520d3e8567c5496c9f2049149d6f4b06', '2015-10-16 17:17:28', '', '1', null);
INSERT INTO `t_sys4_ticket_move` VALUES ('cbf7de3661b645088aa80417cb25a462', 'e9fc0e08d1434b83b4f96e97cf139850', '7d6550c833f64fb6991a147feefc8a2f', '7d6550c833f64fb6991a147feefc8a2f', '13e7857485c64d85bb44073d26ebd1c5', '2015-10-17 11:50:56', '1234', '1', null);

-- ----------------------------
-- Table structure for `t_sys5_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys5_knowledge`;
CREATE TABLE `t_sys5_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys5_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys5_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys5_reply`;
CREATE TABLE `t_sys5_reply` (
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
-- Records of t_sys5_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys5_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys5_ticket`;
CREATE TABLE `t_sys5_ticket` (
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
-- Records of t_sys5_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys5_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys5_ticket_move`;
CREATE TABLE `t_sys5_ticket_move` (
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
-- Records of t_sys5_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys6_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys6_knowledge`;
CREATE TABLE `t_sys6_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys6_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys6_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys6_reply`;
CREATE TABLE `t_sys6_reply` (
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
-- Records of t_sys6_reply
-- ----------------------------
INSERT INTO `t_sys6_reply` VALUES ('022b595a1a954179b85f78e107e50181', '9f4b6a1edf2c4aeca690319513840e79', 'c726c74af0d84d57b44fd5344ff7ffbc', null, null, '123', '1', '2015-10-16 15:24:45');
INSERT INTO `t_sys6_reply` VALUES ('0753cf28cf74448cac3363740f05ba49', '9f4b6a1edf2c4aeca690319513840e79', '123', null, null, '456', '1', '2015-10-16 15:31:03');
INSERT INTO `t_sys6_reply` VALUES ('0fd6c393bc2c440dafe58afc5e286d66', '40443188567343fe832f7399309dd3b2', '11aff2bebdc44e0484584d3bcfd4a925', null, null, '啊啊啊', '1', '2015-10-16 15:44:33');
INSERT INTO `t_sys6_reply` VALUES ('223cf2e781254ec5a1c7cfaa1913b733', '9f4b6a1edf2c4aeca690319513840e79', 'c726c74af0d84d57b44fd5344ff7ffbc', null, null, '675', '1', '2015-10-16 15:32:21');
INSERT INTO `t_sys6_reply` VALUES ('abec634edfef462fafa1745c5de7c2fa', '9f4b6a1edf2c4aeca690319513840e79', '123', null, null, 'aa ', '1', '2015-10-16 15:21:14');
INSERT INTO `t_sys6_reply` VALUES ('dcd25e5bdd0c4061a47d41ceabea1c62', '9f4b6a1edf2c4aeca690319513840e79', '123', null, null, '你怎么啦？', '1', '2015-10-16 15:20:27');
INSERT INTO `t_sys6_reply` VALUES ('ea4ea425fdae49a0b558c3c3a77abc20', '9f4b6a1edf2c4aeca690319513840e79', '123', null, null, '789', '1', '2015-10-16 15:32:07');

-- ----------------------------
-- Table structure for `t_sys6_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys6_ticket`;
CREATE TABLE `t_sys6_ticket` (
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
-- Records of t_sys6_ticket
-- ----------------------------
INSERT INTO `t_sys6_ticket` VALUES ('40443188567343fe832f7399309dd3b2', '啦啦啦啦啦啦', '啊啊啊啊', null, '123', null, null, '3', '905d32d054944a2e93d89c00c458022a', '11aff2bebdc44e0484584d3bcfd4a925', '2015-10-16 15:42:08', null, null, '', '');
INSERT INTO `t_sys6_ticket` VALUES ('9f4b6a1edf2c4aeca690319513840e79', ' 好复杂好复杂啊', '啦啦啦啦啦', null, '123', null, null, '3', '905d32d054944a2e93d89c00c458022a', 'c726c74af0d84d57b44fd5344ff7ffbc', '2015-10-16 15:20:01', null, null, '', '');
INSERT INTO `t_sys6_ticket` VALUES ('dbb7e80c64de415ea6ed2522098c305d', 'aaa', 'aaaaa', null, '123', null, null, '3', '99e44769eda745708b22090f129740cd', '2bee35340e0143e795f3a3eb1c20190b', '2015-10-16 14:58:48', null, null, '597489269@qq.com', '18983986442');
INSERT INTO `t_sys6_ticket` VALUES ('dc1bc07a395248d2bf7bfd3cb2f34aa7', '啦啦啦啦啦啦', '啊啊啊啊', null, '123', null, null, '0', '905d32d054944a2e93d89c00c458022a', 'b6ea890f72fa4f29ac0e7ebd85efb14a', '2015-10-16 17:26:10', null, null, '', '');

-- ----------------------------
-- Table structure for `t_sys6_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys6_ticket_move`;
CREATE TABLE `t_sys6_ticket_move` (
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
-- Records of t_sys6_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys7_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys7_knowledge`;
CREATE TABLE `t_sys7_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys7_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys7_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys7_reply`;
CREATE TABLE `t_sys7_reply` (
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
-- Records of t_sys7_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys7_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys7_ticket`;
CREATE TABLE `t_sys7_ticket` (
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
-- Records of t_sys7_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys7_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys7_ticket_move`;
CREATE TABLE `t_sys7_ticket_move` (
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
-- Records of t_sys7_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys8_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys8_knowledge`;
CREATE TABLE `t_sys8_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys8_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys8_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys8_reply`;
CREATE TABLE `t_sys8_reply` (
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
-- Records of t_sys8_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys8_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys8_ticket`;
CREATE TABLE `t_sys8_ticket` (
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
-- Records of t_sys8_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys8_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys8_ticket_move`;
CREATE TABLE `t_sys8_ticket_move` (
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
-- Records of t_sys8_ticket_move
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys9_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys9_knowledge`;
CREATE TABLE `t_sys9_knowledge` (
  `uuid` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL COMMENT '提交人Id',
  `question` varchar(32) DEFAULT NULL COMMENT '问题',
  `answer` varchar(1024) DEFAULT NULL COMMENT '回答',
  `attatmentUrl` varchar(32) DEFAULT NULL COMMENT '附件路径',
  `attatmentName` varchar(32) DEFAULT NULL COMMENT '附件名称',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '问题分类Id',
  `createTime` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态（1正常，2待审核，3失效, 4删除）',
  `rank` int(1) DEFAULT NULL COMMENT '排序字段',
  `departmentId` varchar(32) DEFAULT NULL COMMENT '部门Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys9_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys9_reply`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys9_reply`;
CREATE TABLE `t_sys9_reply` (
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
-- Records of t_sys9_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys9_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys9_ticket`;
CREATE TABLE `t_sys9_ticket` (
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
-- Records of t_sys9_ticket
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys9_ticket_move`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys9_ticket_move`;
CREATE TABLE `t_sys9_ticket_move` (
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
-- Records of t_sys9_ticket_move
-- ----------------------------

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
  `imageUrl` varchar(50) DEFAULT 'images/2.jpg' COMMENT '头像路径',
  `createTime` datetime DEFAULT NULL,
  `workerNo` varchar(32) DEFAULT NULL COMMENT '工单号',
  `systemIndex` int(11) DEFAULT NULL COMMENT '系统Id',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('02a4d99ac0a143ebb5b875d06c744469', 'gx', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, 'lil@109.com', null, '15236526895', '关关', '0', '4', '关公', 'images/2.jpg', '2015-09-24 10:35:28', '10008', null);
INSERT INTO `t_user` VALUES ('0fd089859fea4c66981668948b424cb9', '5', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '5', null, '1', null, 'images/2.jpg', '2015-10-16 11:22:18', '10044', '4');
INSERT INTO `t_user` VALUES ('11aff2bebdc44e0484584d3bcfd4a925', '青菜', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '953aad58e74b4a54984719ae0673e305', null, null, null, '大大', null, '1', null, 'images/2.jpg', '2015-10-16 15:40:27', '10051', '6');
INSERT INTO `t_user` VALUES ('234a0336e4714082b3e374bbac8bdef0', '33', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '0d0213a0e2ab4f92a49a2dd4722e2cb6', null, null, null, '333', null, '1', null, 'images/2.jpg', '2015-09-25 14:10:03', '10016', '2');
INSERT INTO `t_user` VALUES ('2bee35340e0143e795f3a3eb1c20190b', '哈哈哈哈', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '2b2d31b6440a4c5db869b4ffb7fb4fe9', null, null, null, '12', null, '1', null, 'images/2.jpg', '2015-10-16 14:40:36', '10048', '6');
INSERT INTO `t_user` VALUES ('3543711181c740f98bad3feb4ba4eca2', 'hehe', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'cb4dec03d70f4d67b51ebd450e16d704', null, null, null, '呵呵', null, '1', null, 'images/2.jpg', '2015-09-25 14:05:29', '10013', '2');
INSERT INTO `t_user` VALUES ('481ae12541934b659b1a899cbf2f058a', 'abc', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'b0787b5fef4b461e8468d4a61955a2fc', null, null, null, 'abc', null, '1', null, 'images/2.jpg', '2015-10-17 10:23:40', '10053', '-1');
INSERT INTO `t_user` VALUES ('4d11ff8e5f9b4f50948feb6dc3b8587a', 'gegege', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, 'gegeg@qq.com', null, '18523113240', 'yv', '1', '1', 'e12e', 'images/2.jpg', '2015-10-17 09:53:15', '10052', null);
INSERT INTO `t_user` VALUES ('51893533745f433fad790fd59005df41', '333', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '8d19f5c3715042799f99db35fdd1e41c', null, null, null, '呵呵', null, '1', null, 'images/2.jpg', '2015-09-23 18:22:17', '9997', '2');
INSERT INTO `t_user` VALUES ('51aac51fe43240c1a1f427ca4a9570e1', 'test', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '24ad94ca4c0e42deb64022502732407d', null, null, null, 'test', null, '0', null, 'images/2.jpg', '2015-09-29 09:21:58', '10021', '2');
INSERT INTO `t_user` VALUES ('5226c5c126bc4d48bc7e6382755d3d34', '月亮', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '付仕菊', '0', '3', '把月亮看老', 'images/2.jpg', '2015-10-16 09:55:09', '10029', null);
INSERT INTO `t_user` VALUES ('52f0645b6bd6433d977568b04348696b', '444', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', 'aac3d0fdaf764a7191955e67867759c5', null, null, null, '职员', null, '1', null, 'images/2.jpg', '2015-09-23 18:26:16', '9998', '2');
INSERT INTO `t_user` VALUES ('5c0be45b6c954377ba30cc2651bbeabe', 'a2', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '7f9b84daaca44d7cabe3bd45ccae9162', null, null, null, '管理员', null, '1', null, 'images/2.jpg', '2015-10-20 16:09:36', '10056', '12');
INSERT INTO `t_user` VALUES ('5f65a87cb83044ac9173312f28e7dc72', '怎么玩', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '不好玩', '0', '1', '啊啊啊啊啊啊', 'images/2.jpg', '2015-10-16 10:24:16', '10033', null);
INSERT INTO `t_user` VALUES ('65fbc34563a442b6bcb511cfd17aa476', 'ddd', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '8d19f5c3715042799f99db35fdd1e41c', null, null, null, 'ddd', null, '1', null, 'images/2.jpg', '2015-09-30 10:02:04', '10025', '2');
INSERT INTO `t_user` VALUES ('664eb55058f511e5b3218c89a5e173c7', '111', '202cb962ac59075b964b07152d234b70', '499744105b4a11e5b3218c89a5e173c7', 'aac3d0fdaf764a7191955e67867759c5', '123@163.com', '125522188455', '18523113240', '超级管理员', '1', '1', '二二二二二二二二二二二二让我', 'images/2.jpg', '2015-09-15 14:10:16', null, null);
INSERT INTO `t_user` VALUES ('6775af722fd54aa0a2aae8d2b797349c', '3', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '89782374747d43aaa66f1f89936e9b41', null, null, null, '2', null, '0', null, 'images/2.jpg', '2015-10-16 11:05:53', '10036', '4');
INSERT INTO `t_user` VALUES ('7226445137ce4814966d02bf97db70d6', '', 'd41d8cd98f00b204e9800998ecf8427e', 'asoitufaoihfaeaefhaiwfheaiewufha', '4157497685b5455fae6a645d8b1046b1', null, null, null, '', null, '0', null, 'images/2.jpg', '2016-03-18 10:32:54', '10058', '-1');
INSERT INTO `t_user` VALUES ('744cfd36bcd84bc3b79b198f620c7791', '12', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '6093906229854b1794fc22d1f52dd900', null, null, null, '12', null, '0', null, 'images/2.jpg', '2015-09-30 17:01:38', '10027', '2');
INSERT INTO `t_user` VALUES ('7776939b95fd4ccba81d3203de26c965', '市场', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '278b36b959b9432982938cb9c2c8e86d', null, null, null, '市场', null, '0', null, 'images/2.jpg', '2015-10-16 10:07:18', '10031', '-1');
INSERT INTO `t_user` VALUES ('793ddc1b03924fe0a5b160d3dd4696b4', 'yc', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '8d19f5c3715042799f99db35fdd1e41c', '', null, '', '易川', '1', '1', null, 'images/2.jpg', '2015-09-24 11:16:43', '10009', '2');
INSERT INTO `t_user` VALUES ('7d6550c833f64fb6991a147feefc8a2f', '123', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '123', null, '1', null, 'images/2.jpg', '2015-10-16 11:09:13', '10039', '4');
INSERT INTO `t_user` VALUES ('81d23d9722d44ca1ad782dd3188c5dc9', '334', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'aac3d0fdaf764a7191955e67867759c5', null, null, null, '易川', null, '1', null, 'images/2.jpg', '2015-09-23 18:10:47', '9999', '2');
INSERT INTO `t_user` VALUES ('877525198e0240228e0dcd52066883e7', 'bjy', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, 'sds@123.com', null, '15236523695', 'jsy', '0', '1', 'sd', 'images/2.jpg', '2015-09-28 13:50:47', '10019', null);
INSERT INTO `t_user` VALUES ('8955cf30707a491e876fff30b5879eac', '哈哈哈', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '03d129285cc14e12ae4bb4e11f8b1766', null, null, null, '哈哈', null, '1', null, 'images/2.jpg', '2015-10-16 14:39:29', '10047', '6');
INSERT INTO `t_user` VALUES ('989ce590983e4b48a782d8ffe2f54f69', '1', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '735ea3e3cf3a40a2b5508384e7b21faa', null, null, null, '1', null, '1', null, 'images/2.jpg', '2015-10-20 10:33:32', '10055', '13');
INSERT INTO `t_user` VALUES ('9b4d6f037b1b4faea4a806c39cfa5f38', '4', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '4', null, '4', null, 'images/2.jpg', '2015-10-16 11:22:03', '10043', '4');
INSERT INTO `t_user` VALUES ('a1755f4532e14434a7839c7c2926b80f', '小一', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '10@qq.com', null, '17712345678', 'malujun', '1', '1', '', 'images/2.jpg', '2015-10-16 09:53:40', '10028', null);
INSERT INTO `t_user` VALUES ('a83e47da64614ace89309f584a088215', '小一二三四五六七八九十', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '1007221251@qq.com', null, '13123456789', '1', '1', '1', '', 'images/2.jpg', '2015-10-16 10:25:09', '10034', null);
INSERT INTO `t_user` VALUES ('b5dd18471003448b9416a40cd25490e7', '巴拉巴拉小魔仙', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '我要代表月亮消灭你', '0', '3', '', 'images/2.jpg', '2015-10-16 10:21:30', '10032', null);
INSERT INTO `t_user` VALUES ('b6ea890f72fa4f29ac0e7ebd85efb14a', '菠菜', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '953aad58e74b4a54984719ae0673e305', null, null, null, '付仕菊', null, '1', null, 'images/2.jpg', '2015-10-16 15:05:50', '10049', '6');
INSERT INTO `t_user` VALUES ('b8f315368b4c4b958197475ec475a181', '', 'd41d8cd98f00b204e9800998ecf8427e', 'asoitufaoihfaeaefhaiwfheaiewufha', '0612244c0d9e47a9927efdc1568a0e84', null, null, null, '', null, '0', null, 'images/2.jpg', '2016-03-18 10:32:50', '10057', '-1');
INSERT INTO `t_user` VALUES ('bbb03297f28547d78b26d824cf71d51e', 'alie', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '4a773048b1f34fe6881f1ea881dc0281', null, null, null, 'a', null, '1', null, 'images/2.jpg', '2015-10-20 10:08:51', '10054', '18');
INSERT INTO `t_user` VALUES ('c575838fdd1b4d03838bde9c8ffc5e07', '简', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '6480c78db4a6440bb5d41d4b8ee585e1', null, null, null, '简', null, '0', null, 'images/2.jpg', '2015-10-16 10:06:23', '10030', '-1');
INSERT INTO `t_user` VALUES ('c726c74af0d84d57b44fd5344ff7ffbc', '花菜', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '953aad58e74b4a54984719ae0673e305', null, null, null, '小小', null, '1', null, 'images/2.jpg', '2015-10-16 15:23:21', '10050', '6');
INSERT INTO `t_user` VALUES ('d17dae368a9a4bee85069f80c77814a9', '12345', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '597489269@qq.com', null, '18983986442', '', '0', '0', '', 'images/2.jpg', '2015-10-16 13:43:41', '10045', null);
INSERT INTO `t_user` VALUES ('d51b3cb9ea824a16ae568b779323c252', '222', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '593702159@qq.com', null, '15326545887', '百居易', '1', '1', null, 'images/2.jpg', '2015-09-23 17:34:35', null, null);
INSERT INTO `t_user` VALUES ('d6b5c9f18a2b42f0a02b0bd84cedabe7', 'jsy', '202cb962ac59075b964b07152d234b70', 'f39sfvdv3dea343f43t5df213rdsd214', null, '593702159@qq.com', null, '15223005510', '贾顺燕', '0', '1', '百居易职员', 'images/2.jpg', '2015-09-24 15:10:18', '10012', null);
INSERT INTO `t_user` VALUES ('d9cc5adfd1c64464b1bdac3f04d375f8', '2', '202cb962ac59075b964b07152d234b70', 'dfm932bn182jde92njcd29uend29ej28', '34a451094c004e69847a1d9e2f4d1133', null, null, null, '2', null, '1', null, 'images/2.jpg', '2015-10-16 11:21:36', '10042', '4');
INSERT INTO `t_user` VALUES ('e65875ece40442689687da99efbbd8a0', '市场', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', '11627a2d5c12448e8a617f2af1888126', null, null, null, '市场', null, '0', null, 'images/2.jpg', '2015-10-16 11:06:21', '10037', '4');
INSERT INTO `t_user` VALUES ('e6e1e7a224c94a3c950666dde2a5c718', '3', '202cb962ac59075b964b07152d234b70', 'asoitufaoihfaeaefhaiwfheaiewufha', 'e0e6f625b3ce4e818b021d41c98438f3', null, null, null, '3', null, '1', null, 'images/2.jpg', '2015-09-25 14:08:22', '10015', '2');
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
