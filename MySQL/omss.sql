/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : omss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-05-08 12:25:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(11) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  `music_name` varchar(200) DEFAULT NULL,
  `music_singer` varchar(500) DEFAULT NULL,
  `comments` text,
  `comments_date` datetime DEFAULT NULL,
  `user_name` varchar(500) DEFAULT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1234', '45', '用尽我的一切奔向你', '周笔畅', '这是测试数据', '2020-03-07 13:49:28', '测试员', 'http://localhost:8080/media/useravatar/1234.jpg');
INSERT INTO `comments` VALUES ('2', '12345', '45', '用尽我的一切奔向你', '周笔畅', '这是我的测试', '2020-03-07 13:50:25', '杰克逊', '');
INSERT INTO `comments` VALUES ('3', '1234', '71', '红颜', '胡彦斌', '哈哈哈', '2020-04-01 11:13:23', '测试员', 'http://localhost:8080/media/useravatar/1234.jpg');
INSERT INTO `comments` VALUES ('4', '1234', '43', '笔记 (Live)', '周笔畅', '哈哈哈啊', '2020-04-01 11:17:24', '测试员', 'http://localhost:8080/media/useravatar/1234.jpg');
INSERT INTO `comments` VALUES ('5', '1234', '34', '我和我的祖国', '华语群星', '我和我的祖国', '2020-04-03 11:39:33', '测试员', 'http://localhost:8080/media/useravatar/1234.jpg');
INSERT INTO `comments` VALUES ('6', '1234', '45', '用尽我的一切奔向你', '周笔畅', 'hahha', '2020-04-06 19:12:11', '测试员', 'http://localhost:8080/media/useravatar/1234.jpg');

-- ----------------------------
-- Table structure for `favoritesongs`
-- ----------------------------
DROP TABLE IF EXISTS `favoritesongs`;
CREATE TABLE `favoritesongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `music_id` int(11) DEFAULT NULL,
  `music_name` varchar(200) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favoritesongs
-- ----------------------------
INSERT INTO `favoritesongs` VALUES ('5', '73', '小半', '123');
INSERT INTO `favoritesongs` VALUES ('93', '28', '分手快乐', '123');
INSERT INTO `favoritesongs` VALUES ('119', '43', '笔记 (Live)', '15648161601');
INSERT INTO `favoritesongs` VALUES ('124', '34', '我和我的祖国', '1234');
INSERT INTO `favoritesongs` VALUES ('128', '29', '陪你去流浪', '1234');
INSERT INTO `favoritesongs` VALUES ('129', '86', '生活不止眼前的苟且', '1234');
INSERT INTO `favoritesongs` VALUES ('130', '44', '去流浪', '12345');

-- ----------------------------
-- Table structure for `integral`
-- ----------------------------
DROP TABLE IF EXISTS `integral`;
CREATE TABLE `integral` (
  `user_phone` varchar(11) NOT NULL,
  `music_name` varchar(200) NOT NULL,
  `user_integral` int(100) DEFAULT NULL,
  PRIMARY KEY (`music_name`,`user_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of integral
-- ----------------------------
INSERT INTO `integral` VALUES ('1234', 'Snowdreams1', '1');
INSERT INTO `integral` VALUES ('15648161601', 'Snowdreams2', '1');
INSERT INTO `integral` VALUES ('1234', '李白', '6');

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `music_singer` varchar(500) DEFAULT NULL COMMENT '歌手',
  `music_lyrics` text COMMENT '歌词',
  `music_storagepath` varchar(500) DEFAULT NULL COMMENT '歌曲路径',
  `music_img` varchar(500) DEFAULT NULL COMMENT '歌曲图片',
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('16', '不将就', '李荣浩', null, 'http://localhost:8080/media/不将就.m4a', 'http://localhost:8080/media/img/不将就-李荣浩.jpg');
INSERT INTO `music` VALUES ('17', '老街', '李荣浩', null, 'http://localhost:8080/media/老街.m4a', 'http://localhost:8080/media/img/老街-李荣浩.jpg');
INSERT INTO `music` VALUES ('18', '李白', '李荣浩', null, 'http://localhost:8080/media/李白.m4a', 'http://localhost:8080/media/img/李白-李荣浩.jpg');
INSERT INTO `music` VALUES ('21', '可惜不是你', '梁静茹', null, 'http://localhost:8080/media/可惜不是你.m4a', 'http://localhost:8080/media/img/可惜不是你-梁静茹.jpg');
INSERT INTO `music` VALUES ('22', '勇气', '梁静茹', null, 'http://localhost:8080/media/勇气.m4a', 'http://localhost:8080/media/img/勇气-梁静茹.jpg');
INSERT INTO `music` VALUES ('23', '情歌', '梁静茹', null, 'http://localhost:8080/media/情歌.m4a', 'http://localhost:8080/media/img/情歌-梁静茹.jpg');
INSERT INTO `music` VALUES ('24', '小手拉大手', '梁静茹', null, 'http://localhost:8080/media/小手拉大手.m4a', 'http://localhost:8080/media/img/小手拉大手-梁静茹.jpg');
INSERT INTO `music` VALUES ('25', '爱你不是两三天', '梁静茹', null, 'http://localhost:8080/media/爱你不是两三天.m4a', 'http://localhost:8080/media/img/爱你不是两三天-梁静茹.jpg');
INSERT INTO `music` VALUES ('26', '梦醒时分 (Live)', '梁静茹', null, 'http://localhost:8080/media/梦醒时分 (Live).m4a', 'http://localhost:8080/media/img/梦醒时分 (Live)-梁静茹.jpg');
INSERT INTO `music` VALUES ('27', '爱久见人心', '梁静茹', null, 'http://localhost:8080/media/爱久见人心.m4a', 'http://localhost:8080/media/img/爱久见人心-梁静茹.jpg');
INSERT INTO `music` VALUES ('28', '分手快乐', '梁静茹', null, 'http://localhost:8080/media/分手快乐.m4a', 'http://localhost:8080/media/img/分手快乐-梁静茹.jpg');
INSERT INTO `music` VALUES ('29', '陪你去流浪', '薛之谦', null, 'http://localhost:8080/media/陪你去流浪.m4a', 'http://localhost:8080/media/img/陪你去流浪-薛之谦.jpg');
INSERT INTO `music` VALUES ('30', '演员', '薛之谦', null, 'http://localhost:8080/media/演员.m4a', 'http://localhost:8080/media/img/演员-薛之谦.jpg');
INSERT INTO `music` VALUES ('31', '刚刚好', '薛之谦', null, 'http://localhost:8080/media/刚刚好.m4a', 'http://localhost:8080/media/img/刚刚好-薛之谦.jpg');
INSERT INTO `music` VALUES ('32', '你还要我怎样', '薛之谦', null, 'http://localhost:8080/media/你还要我怎样.m4a', 'http://localhost:8080/media/img/你还要我怎样-薛之谦.jpg');
INSERT INTO `music` VALUES ('33', '绅士', '薛之谦', null, 'http://localhost:8080/media/绅士.m4a', 'http://localhost:8080/media/img/绅士-薛之谦.jpg');
INSERT INTO `music` VALUES ('34', '我和我的祖国', '华语群星', null, 'http://localhost:8080/media/我和我的祖国.m4a', 'http://localhost:8080/media/img/我和我的祖国-华语群星.jpg');
INSERT INTO `music` VALUES ('35', '芒种', '音阙诗听-赵方婧', null, 'http://localhost:8080/media/芒种.m4a', 'http://localhost:8080/media/img/芒种-音阙诗听-赵方婧.jpg');
INSERT INTO `music` VALUES ('37', '修炼爱情', '林俊杰', null, 'http://localhost:8080/media/修炼爱情.m4a', 'http://localhost:8080/media/img/修炼爱情-林俊杰.jpg');
INSERT INTO `music` VALUES ('38', '可惜没如果', '林俊杰', null, 'http://localhost:8080/media/可惜没如果.m4a', 'http://localhost:8080/media/img/可惜没如果-林俊杰.jpg');
INSERT INTO `music` VALUES ('40', '那些你很冒险的梦', '林俊杰', null, 'http://localhost:8080/media/那些你很冒险的梦.m4a', 'http://localhost:8080/media/img/那些你很冒险的梦-林俊杰.jpg');
INSERT INTO `music` VALUES ('41', '最美的期待', '周笔畅', null, 'http://localhost:8080/media/最美的期待.m4a', 'http://localhost:8080/media/img/最美的期待-周笔畅.jpg');
INSERT INTO `music` VALUES ('42', '岁月神偷', '周笔畅', null, 'http://localhost:8080/media/岁月神偷.m4a', 'http://localhost:8080/media/img/岁月神偷-周笔畅.jpg');
INSERT INTO `music` VALUES ('43', '笔记 (Live)', '周笔畅', null, 'http://localhost:8080/media/笔记 (Live).m4a', 'http://localhost:8080/media/img/笔记 (Live)-周笔畅.jpg');
INSERT INTO `music` VALUES ('44', '去流浪', '周笔畅', null, 'http://localhost:8080/media/去流浪.m4a', 'http://localhost:8080/media/img/去流浪-周笔畅.jpg');
INSERT INTO `music` VALUES ('45', '用尽我的一切奔向你', '周笔畅', null, 'http://localhost:8080/media/用尽我的一切奔向你.m4a', 'http://localhost:8080/media/img/用尽我的一切奔向你-周笔畅.jpg');
INSERT INTO `music` VALUES ('46', '怒放的生命', '汪峰', null, 'http://localhost:8080/media/怒放的生命.m4a', 'http://localhost:8080/media/img/怒放的生命-汪峰.jpg');
INSERT INTO `music` VALUES ('50', '飞得更高', '汪峰', null, 'http://localhost:8080/media/飞得更高.m4a', 'http://localhost:8080/media/img/飞得更高-汪峰.jpg');
INSERT INTO `music` VALUES ('64', '逆战', '张杰', null, 'http://localhost:8080/media/逆战.m4a', 'http://localhost:8080/media/img/逆战-张杰.jpg');
INSERT INTO `music` VALUES ('65', '夜空中最亮的星 (Live)', '张杰', null, 'http://localhost:8080/media/夜空中最亮的星 (Live).m4a', 'http://localhost:8080/media/img/夜空中最亮的星 (Live)-张杰.jpg');
INSERT INTO `music` VALUES ('66', '这，就是爱 (Live)', '张杰', null, 'http://localhost:8080/media/这，就是爱 (Live).m4a', 'http://localhost:8080/media/img/这，就是爱 (Live)-张杰.jpg');
INSERT INTO `music` VALUES ('67', '枕边人', '胡彦斌', null, 'http://localhost:8080/media/枕边人.m4a', 'http://localhost:8080/media/img/枕边人-胡彦斌.jpg');
INSERT INTO `music` VALUES ('68', '决不回头', '胡彦斌', null, 'http://localhost:8080/media/决不回头.m4a', 'http://localhost:8080/media/img/决不回头-胡彦斌.jpg');
INSERT INTO `music` VALUES ('69', '你要的全拿走', '胡彦斌', null, 'http://localhost:8080/media/你要的全拿走.m4a', 'http://localhost:8080/media/img/你要的全拿走-胡彦斌.jpg');
INSERT INTO `music` VALUES ('70', '还是要幸福 (Live)', '胡彦斌-黄龄', null, 'http://localhost:8080/media/还是要幸福 (Live).m4a', 'http://localhost:8080/media/img/还是要幸福 (Live)-胡彦斌-黄龄.jpg');
INSERT INTO `music` VALUES ('71', '红颜', '胡彦斌', null, 'http://localhost:8080/media/红颜.m4a', 'http://localhost:8080/media/img/红颜-胡彦斌.jpg');
INSERT INTO `music` VALUES ('72', '体面', '于文文', null, 'http://localhost:8080/media/体面.m4a', 'http://localhost:8080/media/img/体面-于文文.jpg');
INSERT INTO `music` VALUES ('73', '小半', '陈粒', null, 'http://localhost:8080/media/小半.m4a', 'http://localhost:8080/media/img/小半-陈粒.jpg');
INSERT INTO `music` VALUES ('75', '默', '那英', null, 'http://localhost:8080/media/默.m4a', 'http://localhost:8080/media/img/默-那英.jpg');
INSERT INTO `music` VALUES ('76', '有个爱你的人不容易', '那英', null, 'http://localhost:8080/media/有个爱你的人不容易.m4a', 'http://localhost:8080/media/img/有个爱你的人不容易-那英.jpg');
INSERT INTO `music` VALUES ('77', '春暖花开', '那英', null, 'http://localhost:8080/media/春暖花开.m4a', 'http://localhost:8080/media/img/春暖花开-那英.jpg');
INSERT INTO `music` VALUES ('78', '征服', '那英', null, 'http://localhost:8080/media/征服.m4a', 'http://localhost:8080/media/img/征服-那英.jpg');
INSERT INTO `music` VALUES ('79', '山水又一程 (Live)', '那英', null, 'http://localhost:8080/media/山水又一程 (Live).m4a', 'http://localhost:8080/media/img/山水又一程 (Live)-那英.jpg');
INSERT INTO `music` VALUES ('80', '星辰大海', '周冬雨-王俊凯-易烊千玺-刘昊然', null, 'http://localhost:8080/media/星辰大海.m4a', 'http://localhost:8080/media/img/星辰大海-周冬雨-王俊凯-易烊千玺-刘昊然.jpg');
INSERT INTO `music` VALUES ('81', '星辰大海是你', '魏晨', null, 'http://localhost:8080/media/星辰大海是你.m4a', 'http://localhost:8080/media/img/星辰大海是你-魏晨.jpg');
INSERT INTO `music` VALUES ('82', '曾经的你', '许巍', null, 'http://localhost:8080/media/曾经的你.m4a', 'http://localhost:8080/media/img/曾经的你-许巍.jpg');
INSERT INTO `music` VALUES ('83', '蓝莲花', '许巍', null, 'http://localhost:8080/media/蓝莲花.m4a', 'http://localhost:8080/media/img/蓝莲花-许巍.jpg');
INSERT INTO `music` VALUES ('84', '故乡', '许巍', null, 'http://localhost:8080/media/故乡.m4a', 'http://localhost:8080/media/img/故乡-许巍.jpg');
INSERT INTO `music` VALUES ('85', '像风一样自由', '许巍', null, 'http://localhost:8080/media/像风一样自由.m4a', 'http://localhost:8080/media/img/像风一样自由-许巍.jpg');
INSERT INTO `music` VALUES ('86', '生活不止眼前的苟且', '许巍', null, 'http://localhost:8080/media/生活不止眼前的苟且.m4a', 'http://localhost:8080/media/img/生活不止眼前的苟且-许巍.jpg');
INSERT INTO `music` VALUES ('109', '追', '韩磊-谭维维', null, 'http://localhost:8080/media/追.m4a', 'http://localhost:8080/media/img/追-韩磊-谭维维.jpg');
INSERT INTO `music` VALUES ('110', '中华民族', '莫文蔚-韩磊-谭维维-孙楠', null, 'http://localhost:8080/media/中华民族.m4a', 'http://localhost:8080/media/img/中华民族-莫文蔚-韩磊-谭维维-孙楠.jpg');
INSERT INTO `music` VALUES ('111', '向天再借五百年', '韩磊', null, 'http://localhost:8080/media/向天再借五百年.m4a', 'http://localhost:8080/media/img/向天再借五百年-韩磊.jpg');
INSERT INTO `music` VALUES ('112', '时间里的小偷', '庄心妍', null, 'http://localhost:8080/media/时间里的小偷.m4a', 'http://localhost:8080/media/img/时间里的小偷-庄心妍.jpg');
INSERT INTO `music` VALUES ('113', '世界这么大还是遇见你', '程响', null, 'http://localhost:8080/media/世界这么大还是遇见你.m4a', 'http://localhost:8080/media/img/世界这么大还是遇见你-程响.jpg');
INSERT INTO `music` VALUES ('114', '彻悟', '程响', null, 'http://localhost:8080/media/彻悟.m4a', 'http://localhost:8080/media/img/彻悟-程响.jpg');
INSERT INTO `music` VALUES ('115', '不再联系', '程响', null, 'http://localhost:8080/media/不再联系.m4a', 'http://localhost:8080/media/img/不再联系-程响.jpg');
INSERT INTO `music` VALUES ('116', '新娘不是我', '程响', null, 'http://localhost:8080/media/新娘不是我.m4a', 'http://localhost:8080/media/img/新娘不是我-程响.jpg');
INSERT INTO `music` VALUES ('117', '美丽女人', '程响', null, 'http://localhost:8080/media/美丽女人.m4a', 'http://localhost:8080/media/img/美丽女人-程响.jpg');
INSERT INTO `music` VALUES ('118', '南方姑娘', '赵雷', null, 'http://localhost:8080/media/南方姑娘.m4a', 'http://localhost:8080/media/img/南方姑娘-赵雷.jpg');
INSERT INTO `music` VALUES ('119', '成都', '赵雷', null, 'http://localhost:8080/media/成都.m4a', 'http://localhost:8080/media/img/成都-赵雷.jpg');
INSERT INTO `music` VALUES ('120', '理想', '赵雷', null, 'http://localhost:8080/media/理想.m4a', 'http://localhost:8080/media/img/理想-赵雷.jpg');
INSERT INTO `music` VALUES ('121', '画', '赵雷', null, 'http://localhost:8080/media/画.m4a', 'http://localhost:8080/media/img/画-赵雷.jpg');
INSERT INTO `music` VALUES ('122', '我们的时光', '赵雷', null, 'http://localhost:8080/media/我们的时光.m4a', 'http://localhost:8080/media/img/我们的时光-赵雷.jpg');
INSERT INTO `music` VALUES ('123', '情花几时开（DJheap九天 咚鼓版）', '魏新雨', null, 'http://localhost:8080/media/情花几时开（DJheap九天 咚鼓版）.m4a', 'http://localhost:8080/media/img/情花几时开（DJheap九天 咚鼓版）-魏新雨.jpg');
INSERT INTO `music` VALUES ('124', '百花香', '魏新雨', null, 'http://localhost:8080/media/百花香.m4a', 'http://localhost:8080/media/img/百花香-魏新雨.jpg');
INSERT INTO `music` VALUES ('125', '余情未了', '魏新雨', null, 'http://localhost:8080/media/余情未了.m4a', 'http://localhost:8080/media/img/余情未了-魏新雨.jpg');
INSERT INTO `music` VALUES ('126', '最美的情缘', '魏新雨', null, 'http://localhost:8080/media/最美的情缘.m4a', 'http://localhost:8080/media/img/最美的情缘-魏新雨.jpg');
INSERT INTO `music` VALUES ('127', '恋人心', '魏新雨', null, 'http://localhost:8080/media/恋人心.m4a', 'http://localhost:8080/media/img/恋人心-魏新雨.jpg');
INSERT INTO `music` VALUES ('133', '奔跑吧兄弟', '筷子兄弟', null, 'http://localhost:8080/media/奔跑吧兄弟.m4a', 'http://localhost:8080/media/img/奔跑吧兄弟-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('137', '老男孩 (Live)', '筷子兄弟-刘忻', null, 'http://localhost:8080/media/老男孩 (Live).m4a', 'http://localhost:8080/media/img/老男孩 (Live)-筷子兄弟-刘忻.jpg');
INSERT INTO `music` VALUES ('138', '明天，你好', '牛奶咖啡', null, 'http://localhost:8080/media/明天，你好.m4a', 'http://localhost:8080/media/img/明天，你好-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('139', '越长大越孤单', '牛奶咖啡', null, 'http://localhost:8080/media/越长大越孤单.m4a', 'http://localhost:8080/media/img/越长大越孤单-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('140', '忘了牵手', '牛奶咖啡', null, 'http://localhost:8080/media/忘了牵手.m4a', 'http://localhost:8080/media/img/忘了牵手-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('141', '从你的全世界路过', '牛奶咖啡', null, 'http://localhost:8080/media/从你的全世界路过.m4a', 'http://localhost:8080/media/img/从你的全世界路过-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('142', '再见，昨天', '牛奶咖啡', null, 'http://localhost:8080/media/再见，昨天.m4a', 'http://localhost:8080/media/img/再见，昨天-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('143', '星星', '牛奶咖啡', null, 'http://localhost:8080/media/星星.m4a', 'http://localhost:8080/media/img/星星-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('144', '一个人的风景', '牛奶咖啡', null, 'http://localhost:8080/media/一个人的风景.m4a', 'http://localhost:8080/media/img/一个人的风景-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('145', '咖喱咖喱', '牛奶咖啡', null, 'http://localhost:8080/media/咖喱咖喱.m4a', 'http://localhost:8080/media/img/咖喱咖喱-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('146', '遇见你', '牛奶咖啡', null, 'http://localhost:8080/media/遇见你.m4a', 'http://localhost:8080/media/img/遇见你-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('147', '习惯了寂寞', '牛奶咖啡', null, 'http://localhost:8080/media/习惯了寂寞.m4a', 'http://localhost:8080/media/img/习惯了寂寞-牛奶咖啡.jpg');
INSERT INTO `music` VALUES ('148', '佛系少女', '冯提莫', null, 'http://localhost:8080/media/佛系少女.m4a', 'http://localhost:8080/media/img/佛系少女-冯提莫.jpg');
INSERT INTO `music` VALUES ('149', '沙漠骆驼', '冯提莫', null, 'http://localhost:8080/media/沙漠骆驼.m4a', 'http://localhost:8080/media/img/沙漠骆驼-冯提莫.jpg');
INSERT INTO `music` VALUES ('151', '星月神话', '金莎', null, 'http://localhost:8080/media/星月神话.m4a', 'http://localhost:8080/media/img/星月神话-金莎.jpg');
INSERT INTO `music` VALUES ('152', '被风吹过的夏天', '金莎-林俊杰', null, 'http://localhost:8080/media/被风吹过的夏天.m4a', 'http://localhost:8080/media/img/被风吹过的夏天-金莎-林俊杰.jpg');
INSERT INTO `music` VALUES ('153', '画中仙', '金莎', null, 'http://localhost:8080/media/画中仙.m4a', 'http://localhost:8080/media/img/画中仙-金莎.jpg');
INSERT INTO `music` VALUES ('154', '相思垢', '金莎', null, 'http://localhost:8080/media/相思垢.m4a', 'http://localhost:8080/media/img/相思垢-金莎.jpg');
INSERT INTO `music` VALUES ('155', '不可思议', '金莎', null, 'http://localhost:8080/media/不可思议.m4a', 'http://localhost:8080/media/img/不可思议-金莎.jpg');
INSERT INTO `music` VALUES ('156', '天空之外', '弦子', null, 'http://localhost:8080/media/天空之外.m4a', 'http://localhost:8080/media/img/天空之外-弦子.jpg');
INSERT INTO `music` VALUES ('157', '不得不爱', '潘玮柏-弦子', null, 'http://localhost:8080/media/不得不爱.m4a', 'http://localhost:8080/media/img/不得不爱-潘玮柏-弦子.jpg');
INSERT INTO `music` VALUES ('158', '沿海地带', '弦子', null, 'http://localhost:8080/media/沿海地带.m4a', 'http://localhost:8080/media/img/沿海地带-弦子.jpg');
INSERT INTO `music` VALUES ('159', '万物生', '萨顶顶', null, 'http://localhost:8080/media/万物生.m4a', 'http://localhost:8080/media/img/万物生-萨顶顶.jpg');
INSERT INTO `music` VALUES ('160', '左手指月（Cover：萨顶顶）', '炎雪', null, 'http://localhost:8080/media/左手指月（Cover：萨顶顶）.m4a', 'http://localhost:8080/media/img/左手指月（Cover：萨顶顶）-炎雪.jpg');
INSERT INTO `music` VALUES ('161', '自由行走的花', '萨顶顶', null, 'http://localhost:8080/media/自由行走的花.m4a', 'http://localhost:8080/media/img/自由行走的花-萨顶顶.jpg');
INSERT INTO `music` VALUES ('162', '一剪梅', '费玉清', null, 'http://localhost:8080/media/一剪梅.m4a', 'http://localhost:8080/media/img/一剪梅-费玉清.jpg');
INSERT INTO `music` VALUES ('164', '涛声依旧', '费玉清', null, 'http://localhost:8080/media/涛声依旧.m4a', 'http://localhost:8080/media/img/涛声依旧-费玉清.jpg');
INSERT INTO `music` VALUES ('165', '南屏晚钟', '费玉清', null, 'http://localhost:8080/media/南屏晚钟.m4a', 'http://localhost:8080/media/img/南屏晚钟-费玉清.jpg');
INSERT INTO `music` VALUES ('166', '昨夜小楼又东风', '费玉清', null, 'http://localhost:8080/media/昨夜小楼又东风.m4a', 'http://localhost:8080/media/img/昨夜小楼又东风-费玉清.jpg');
INSERT INTO `music` VALUES ('167', '梦驼铃', '费玉清', null, 'http://localhost:8080/media/梦驼铃.m4a', 'http://localhost:8080/media/img/梦驼铃-费玉清.jpg');
INSERT INTO `music` VALUES ('169', '青花瓷 (Live)', '费玉清', null, 'http://localhost:8080/media/青花瓷 (Live).m4a', 'http://localhost:8080/media/img/青花瓷 (Live)-费玉清.jpg');
INSERT INTO `music` VALUES ('172', '恋曲1990', '罗大佑', null, 'http://localhost:8080/media/恋曲1990.m4a', 'http://localhost:8080/media/img/恋曲1990-罗大佑.jpg');
INSERT INTO `music` VALUES ('173', '光阴的故事', '罗大佑', null, 'http://localhost:8080/media/光阴的故事.m4a', 'http://localhost:8080/media/img/光阴的故事-罗大佑.jpg');
INSERT INTO `music` VALUES ('174', '你的样子 (Live)', '罗大佑', null, 'http://localhost:8080/media/你的样子 (Live).m4a', 'http://localhost:8080/media/img/你的样子 (Live)-罗大佑.jpg');
INSERT INTO `music` VALUES ('175', '童年 (Live)', '罗大佑', null, 'http://localhost:8080/media/童年 (Live).m4a', 'http://localhost:8080/media/img/童年 (Live)-罗大佑.jpg');
INSERT INTO `music` VALUES ('176', '东方之珠', '罗大佑', null, 'http://localhost:8080/media/东方之珠.m4a', 'http://localhost:8080/media/img/东方之珠-罗大佑.jpg');
INSERT INTO `music` VALUES ('177', '兄弟抱一下', '庞龙', null, 'http://localhost:8080/media/兄弟抱一下.m4a', 'http://localhost:8080/media/img/兄弟抱一下-庞龙.jpg');
INSERT INTO `music` VALUES ('178', '两只蝴蝶', '庞龙', null, 'http://localhost:8080/media/两只蝴蝶.m4a', 'http://localhost:8080/media/img/两只蝴蝶-庞龙.jpg');
INSERT INTO `music` VALUES ('179', '你是我的玫瑰花', '庞龙', null, 'http://localhost:8080/media/你是我的玫瑰花.m4a', 'http://localhost:8080/media/img/你是我的玫瑰花-庞龙.jpg');
INSERT INTO `music` VALUES ('180', '家在东北', '庞龙', null, 'http://localhost:8080/media/家在东北.m4a', 'http://localhost:8080/media/img/家在东北-庞龙.jpg');
INSERT INTO `music` VALUES ('181', '幸福的两口子', '庞龙', null, 'http://localhost:8080/media/幸福的两口子.m4a', 'http://localhost:8080/media/img/幸福的两口子-庞龙.jpg');
INSERT INTO `music` VALUES ('182', '野子 (Live)', '苏运莹', null, 'http://localhost:8080/media/野子 (Live).m4a', 'http://localhost:8080/media/img/野子 (Live)-苏运莹.jpg');
INSERT INTO `music` VALUES ('183', '有可能的夜晚 (Live)', '曾轶可', null, 'http://localhost:8080/media/有可能的夜晚 (Live).m4a', 'http://localhost:8080/media/img/有可能的夜晚 (Live)-曾轶可.jpg');
INSERT INTO `music` VALUES ('184', '私奔', '曾轶可', null, 'http://localhost:8080/media/私奔.m4a', 'http://localhost:8080/media/img/私奔-曾轶可.jpg');
INSERT INTO `music` VALUES ('185', '狮子座 (Live)', '曾轶可', null, 'http://localhost:8080/media/狮子座 (Live).m4a', 'http://localhost:8080/media/img/狮子座 (Live)-曾轶可.jpg');
INSERT INTO `music` VALUES ('187', 'Snowdreams', '班得瑞', null, 'http://localhost:8080/media/Snowdreams.m4a', 'http://localhost:8080/media/img/Snowdreams-班得瑞.jpg');

-- ----------------------------
-- Table structure for `sharesongs`
-- ----------------------------
DROP TABLE IF EXISTS `sharesongs`;
CREATE TABLE `sharesongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(11) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  `music_name` varchar(200) DEFAULT NULL,
  `share_date` date DEFAULT NULL,
  `music_singer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sharesongs
-- ----------------------------
INSERT INTO `sharesongs` VALUES ('3', '1234', '43', '笔记 (Live)', '2020-03-06', '周笔畅');
INSERT INTO `sharesongs` VALUES ('4', '1234', '46', '怒放的生命', '2020-03-06', '汪峰');
INSERT INTO `sharesongs` VALUES ('5', '1234', '62', '星星 (Live)', '2020-03-06', '张杰');
INSERT INTO `sharesongs` VALUES ('6', '1234', '45', '用尽我的一切奔向你', '2020-03-07', '周笔畅');
INSERT INTO `sharesongs` VALUES ('7', '1234', '45', '用尽我的一切奔向你', '2020-03-07', '周笔畅');
INSERT INTO `sharesongs` VALUES ('8', '1234', '51', '冲动的惩罚', '2020-03-12', '刀郎');
INSERT INTO `sharesongs` VALUES ('9', '1234', '63', '三生三世', '2020-03-28', '张杰');
INSERT INTO `sharesongs` VALUES ('12', '1234', '34', '我和我的祖国', '2020-04-03', '华语群星');
INSERT INTO `sharesongs` VALUES ('13', '1234', '75', '默', '2020-04-14', '那英');
INSERT INTO `sharesongs` VALUES ('14', '1234', '34', '我和我的祖国', '2020-04-15', '华语群星');
INSERT INTO `sharesongs` VALUES ('15', '1234', '31', '刚刚好', '2020-04-15', '薛之谦');
INSERT INTO `sharesongs` VALUES ('16', '1234', '64', '逆战', '2020-04-15', '张杰');
INSERT INTO `sharesongs` VALUES ('17', '1234', '66', '这，就是爱 (Live)', '2020-04-15', '张杰');
INSERT INTO `sharesongs` VALUES ('18', '1234', '86', '生活不止眼前的苟且', '2020-04-15', '许巍');
INSERT INTO `sharesongs` VALUES ('19', '12345', '67', '枕边人', '2020-05-04', '胡彦斌');
INSERT INTO `sharesongs` VALUES ('20', '12345', '72', '体面', '2020-05-04', '于文文');
INSERT INTO `sharesongs` VALUES ('21', '15648161601', '80', '星辰大海', '2020-05-08', '周冬雨-王俊凯-易烊千玺-刘昊然');
INSERT INTO `sharesongs` VALUES ('22', '15648161601', '77', '春暖花开', '2020-05-08', '那英');
INSERT INTO `sharesongs` VALUES ('23', '15648161601', '84', '故乡', '2020-05-08', '许巍');
INSERT INTO `sharesongs` VALUES ('24', '1234', '83', '蓝莲花', '2020-05-08', '许巍');
INSERT INTO `sharesongs` VALUES ('25', '1234', '75', '默', '2020-05-08', '那英');

-- ----------------------------
-- Table structure for `singer`
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(500) DEFAULT NULL COMMENT '名称',
  `singer_img` varchar(500) DEFAULT NULL COMMENT '头像',
  `singer_company` varchar(500) DEFAULT NULL COMMENT '公司',
  `singer_briefintroduction` text COMMENT '简介',
  `singer_nationality` varchar(500) DEFAULT '中国' COMMENT '国籍',
  `singer_placeofbirth` text COMMENT '出生地',
  `singer_birthday` varchar(500) DEFAULT NULL COMMENT '生日',
  `singer_occupational` varchar(500) DEFAULT NULL COMMENT '职业',
  `singer_height` varchar(500) DEFAULT NULL COMMENT '身高',
  `singer_weight` varchar(500) DEFAULT NULL COMMENT '体重',
  `singer_bloodtype` varchar(500) DEFAULT NULL COMMENT '血型',
  `singer_constellation` varchar(500) DEFAULT NULL COMMENT '星座',
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '音阙诗听-赵方婧', 'http://localhost:8080/media/singeravatar/赵方婧.jpg', '动听音乐', '赵方婧，英文名wimi，中国内地90后女歌手，音乐创作人，就读于华中科技大学同济医学院，2012年开始接触演唱，以艺名“照妖镜”活跃于网络翻唱圈，嗓音时而温婉，时而大气，高音颇具辨识度。演唱有自我风格，深情流露，打动人心。励志做一个唱出内心深处痛苦喜悦的音乐人。演唱风格多变，2016年3月推出第一支原创单曲《毒药》。', '中国', '广西南宁', '1997年11月13日', '学生', '158cm', '48kg', 'O型', '天蝎座');
INSERT INTO `singer` VALUES ('2', '薛之谦', 'http://localhost:8080/media/singeravatar/薛之谦.jpg', '海蝶音乐', '简介：薛之谦，1983年7月17日出生于上海市，中国内地男歌手。\r\n\r\n2006年6月9日，薛之谦发行首张个人原创同名专辑《薛之谦》；2007年在中国原创音乐流行榜上凭借《认真的雪》获得内地金曲奖；2008年11月26日发行第三张个人原创专辑《深深爱过你》；12月20日举行首场演唱会“谦年传说”；2012年7月17日发行专辑《几个薛之谦》。2013年11月发行专辑《意外》。\r\n\r\n2015年4月1日，薛之谦主演《男人帮·朋友》预告片发布；6月10日正式签约海蝶音乐公司，升为制作人并发行原创EP《绅士》；同年，他还主演都市励志剧《妈妈像花儿一样》。2016年，凭借EP《绅士》、《一半》获得第16届全球华语歌曲排行榜最受欢迎男歌手、五大最受欢迎男歌手奖、上海地区杰出歌手奖及最受欢迎创作歌手奖，而歌曲《初学者》则获得年度二十大金曲奖。2017年4月，开启“我好像在哪见过你”全国巡回演唱会；同年，薛之谦获得第7届全球流行音乐年度盛典年度最佳男歌手及MusicRadio榜中国TOP排行榜内地最佳男歌手。2018年7月，薛之谦“摩天大楼”世界巡回演唱会于北京站启程，整个巡演横跨4大洲，8个国家，21个城市，累计上演场次23场。', '中国', '上海 ', '1983年7月17日（农历6月8日）', '歌手、演员、主持人', '172cm', '55kg', 'O型', '巨蟹座');
INSERT INTO `singer` VALUES ('3', '华语群星', 'http://localhost:8080/media/singeravatar/华语群星.jpg', null, '指群星或者不同的艺术家，也特指华语群星。如果出现在专辑里，那就像专辑里的“群星”，并不是指的一个人。 一般在音乐论坛和专辑下载里经常可以看到群星的字样，就是指这种音乐专辑。', '中国', null, null, null, null, null, null, null);
INSERT INTO `singer` VALUES ('4', '林俊杰', 'http://localhost:8080/media/singeravatar/林俊杰.jpg', '华纳唱片', '林俊杰（JJ Lin），新加坡人，流行歌手、词曲创作者、音乐制作人。2003年发行首张创作专辑《乐行者》 ，2004年凭《江南》一曲成名 。2014年以专辑《因你而在 Stories Untold》夺得第25届台湾金曲奖最佳国语男歌手奖 。\r\n\r\n2007年成立个人音乐制作公司JFJ Productions，负责单曲及专辑制作；2008年创立潮流品牌SMG；2012年发行故事影像书《记得》，成功跻身畅销书作家行列 。', '新加坡 ', '新加坡 ', '1981年3月27日', '歌手、制作人、潮牌主理人', '173cm', '61kg', 'O型', '白羊座');
INSERT INTO `singer` VALUES ('5', '周笔畅', 'http://localhost:8080/media/singeravatar/周笔畅.jpg', '看见文娱·音乐中心', '周笔畅（BiBi Zhou），华语流行女歌手、词曲创作人、演员，Begins品牌主理人兼设计总监，1985年7月26日出生于湖南长沙。亚洲音乐节最佳歌手 新加坡金曲奖海外杰出歌手 音乐风云榜最佳女歌手 音乐风云榜最受欢迎女歌手 东方风云榜亚洲人气歌手 东方风云榜最佳女歌手 中国TOP排行榜最佳女歌手 中国TOP排行榜最受欢迎女歌手 香港tvb8金曲榜全国最爱女歌手 香港新城国语力最受欢迎女歌手 破内地歌手台湾G-music最高销量', '中国', '湖南长沙', '1985年7月26日', '歌手、词曲人、演员、设计总监', '165cm', '50kg', 'A型', '狮子座');
INSERT INTO `singer` VALUES ('6', '李荣浩', 'http://localhost:8080/media/singeravatar/李荣浩.jpg', '简单快乐文化', '李荣浩，1985年7月11日出生于安徽省蚌埠市，中国流行乐男歌手、音乐制作人、演员、吉他手。第二届音悦v榜 年度最佳音悦人、第25届金曲奖最佳新人奖、第二届QQ音乐年度盛典年度乐坛新势力奖', '中国', '安徽省蚌埠市', '1985年7月11日', '歌手、音乐制作人', '180cm', '70kg', 'B型', '巨蟹座');
INSERT INTO `singer` VALUES ('7', '汪峰', 'http://localhost:8080/media/singeravatar/汪峰.jpg', '大国文化', '地最受欢迎歌手、二十年风云成就歌手\r\n\r\n简介：汪峰，祖籍江苏常熟，1971年6月29日出生于北京。中国大陆摇滚歌手、音乐创作人、作词人、作曲人，鲍家街43号乐队发起人。\r\n\r\n汪峰自幼在中央音乐学院附小、附中学习小提琴，大学考入中央音乐学院小提琴中提琴专业，大学期间在专业音乐学习和训练之余就开始进行摇滚乐创作并组建乐队。完成本科学业后，进入中央芭蕾舞团任副首席小提琴师，后辞职后转型为职业歌手。', '中国', '中国北京', '1971年6月29日', '歌手、音乐人', '176cm', '65kg', 'A型', '巨蟹座');
INSERT INTO `singer` VALUES ('8', '张杰', 'http://localhost:8080/media/singeravatar/张杰.jpg', '行星文化', '张杰，1982年12月20日出生于四川成都，毕业于四川师范大学，内地流行男歌手，行星文化（音乐厂牌）创始人。\r\n\r\n2004年获我型我秀全国总冠军出道。2007年参加快乐男声；推出EP《最美的太阳》。2008年推出专辑《明天过后》；担任北京奥运会火炬手。2010年推出专辑《这，就是爱》；担任博鳌亚洲论坛表演嘉宾；获韩国MAMA颁奖礼亚洲之星奖。2012年在人民大会堂开启巡演；作品《风华正茂》获湖南省五个一工程奖。2013年首登央视春晚演唱《给我你的爱》；赴美国伯克利音乐学院进修。2014年献唱南京青奥会主题曲《点亮未来》；获第42届全美音乐奖(AMA)年度国际艺人奖。2016年在北京工人体育场开启张杰我想世界巡回演唱会，为内地首位工人体育场开唱80后歌手；献唱好莱坞《星际迷航3》、《间谍同盟》电影推广曲。2017年在洛杉矶杜比剧院开唱，为首位在奥斯卡杜比剧院开唱内地歌手；献唱好莱坞《变形金刚5》片尾曲《Torches》 和第十三届全运会主题曲《健康赢未来》；入驻重庆杜莎夫人蜡像馆；十月世界巡演登陆米兰、伦敦，为首位在欧洲开唱的内地歌手。', '中国', '四川成都', '1982年12月20日', '歌手', '180cm', '65kg', 'A型', '射手座');
INSERT INTO `singer` VALUES ('9', '胡彦斌', 'http://localhost:8080/media/singeravatar/胡彦斌.jpg', '太歌文化', '胡彦斌，1983年7月4日生于上海市，中国内地男歌手、音乐制作人、牛班app创始人。\r\n\r\n1999年参加“上海亚洲音乐节新人歌手大赛”出道；2002年发行首张个人专辑《文武双全》，成为首位在内地、香港、台湾推出个人专辑的国内歌手；', '中国', '上海', '1983年7月4日', '歌手、创作人、音乐制作人', '180cm', '65kg', 'B型', '巨蟹座');
INSERT INTO `singer` VALUES ('10', '于文文', 'http://localhost:8080/media/singeravatar/于文文.jpg', '华谊音乐', '于文文（Kelly），加拿大籍华裔。1989年11月7日生于中国辽宁大连，华语创作型女歌手、演员。\r\n\r\n2010年末，于文文从加拿大回到北京发展。2012年9月，于文文主演微电影《雨下吧》，并演唱同名主题曲《雨下吧》；2013年1月，于文文主演微电影《十二星座发财梦之窈窕淑男》，同年参演偶像剧《一又二分之一的夏天》；2014年11月7日，正式推出首张个人专辑《斗志》。2016年参与中央电视台综艺频道原创真人秀节目《中国好歌曲》。同年发表迷你专辑《写一夜心跳》。\r\n\r\n2017年7月，主演电影《青春逗》；同年12月，主演电影《前任3：再见前任》，并为电影创作插曲《体面》。', '加拿大 ', '中国辽宁省大连市', '1989年11月7日', '歌手、演员', '168cm', '48kg', 'O型', '天蝎座');
INSERT INTO `singer` VALUES ('11', '陈粒', 'http://localhost:8080/media/singeravatar/陈粒.jpg', '北京有此山文化传媒有限公司', '陈粒，1990年7月26日出生于贵州省贵阳市，中国内地民谣女歌手、独立音乐人、唱作人，前空想家乐队主唱，毕业于上海对外经贸大学。', '中国', '贵州省贵阳市', '1990年7月26日', '歌手', '168cm', '45kg', 'B型', '狮子座');
INSERT INTO `singer` VALUES ('12', '那英', 'http://localhost:8080/media/singeravatar/那英.jpg', '华视娱乐传媒（广州）有限公司', '那英，1967年11月27日出生于中国辽宁省沈阳市，华语流行女歌手。\r\n\r\n20世纪80年代以模仿苏芮演唱风格进入歌坛。获得MTV亚洲大奖中国内地最受欢迎歌手、台湾金曲奖最佳国语女演唱人、新加坡金曲奖最佳演绎女歌手提名、香港十大中文金曲全国最佳女歌手、CCTV-MTV音乐盛典最佳女歌手、东方风云榜最佳女歌手、东方风云榜最受欢迎女歌手、金碟奖最佳流行女歌手、金曲榜内地最受欢迎歌手、中国流行榜最佳女歌手金奖、台湾金曲奖最佳作词人、音乐风云榜年度最佳女歌手、北京流行音乐典礼杰出成就大奖', '中国', '辽宁沈阳市沈河区', '1967年11月27日', '歌手、演员', '168cm', '46kg', 'O型', '射手座');
INSERT INTO `singer` VALUES ('13', '许巍', 'http://localhost:8080/media/singeravatar/许巍.jpg', '歌华莱恩', '许巍，1968年生，陕西西安人。内地摇滚音乐界的重要人物。1995年许巍作词作曲的《执着》由田震演唱而广为流传。1997年4月红星生产社发行许巍首张专辑《在别处》。1998年作品被选入中国当代诗歌文选。2000年11月发行第二张专辑《那一年》 。2002年发行第三张专辑《时光·漫步》，凭借专辑获得第3届音乐风云榜最佳摇滚专辑、最佳摇滚歌手奖，歌曲《礼物》获得最佳摇滚单曲、内地年度十大金曲奖 。2010年在蒙牛酸酸乳音乐风云榜十年盛典上被组委会授予“中国十年最具影响力音乐人物”的荣誉 。2013年1月29日许巍签约歌华莱恩，“此时此刻”巡演正式启动。2014年8月，许巍与精英团队、英国旅游局，前往英国朝圣摇滚精神，并联手打造《在那摇滚的故乡》音乐旅行系列品质记录片。2015年3月，许巍为纪录片《第三极》演唱的同名主题曲发布。同年7月，为真人秀《我们15个》创作的单曲《灿烂》发布。2018年4月，为动画大电影《猫与桃花源》所创作的EP《无人知晓》发布。', '中国', '陕西西安', '1968年7月21日', '歌手', '170cm', '62kg', 'A型', '巨蟹座');
INSERT INTO `singer` VALUES ('14', '班得瑞', 'http://localhost:8080/media/singeravatar/班得瑞.jpg', '新世纪 经纪公司', '项目成员：Oliver Schwarz等\r\n\r\n班得瑞（Bandari）是瑞士音乐公司Audio Video Communications AG旗下的一个新纪元音乐项目。在亚洲，尤其是台湾和中国大陆，唱片公司及媒体经常把班得瑞宣传为一个低调的音乐团体。其作品以环境音乐、冥想音乐为主，主要以睡眠、减压为主要音乐功能。风格方面，班得瑞的音乐有许多改编自日本和欧美的新世纪音乐、凯尔特音乐、乡村音乐或老式情歌的乐曲，另外还有相当数量的是重新演奏一些成名曲目。', '瑞士', null, '1990年至今', null, null, null, null, null);
INSERT INTO `singer` VALUES ('15', '韩磊', 'http://localhost:8080/media/singeravatar/韩磊.jpg', '中视金鼎（北京）文化传媒', '韩磊，又名森布尔，1968年2月23日出生于呼和浩特市，中国男歌手。\r\n\r\n从艺历程：1991年开始踏入中国流行音乐界，1991年7月韩磊参加了北京举行的《新人新声》大型演出。截至2014年，韩磊总共8次登上央视春晚，演唱过接近700余首影视歌曲。', '中国', '内蒙古自治区呼和浩特市玉泉区', '1968年2月23日', '歌手', '192cm', null, 'A型', '双鱼座');
INSERT INTO `singer` VALUES ('16', '冯提莫', 'http://localhost:8080/media/singeravatar/冯提莫.jpg', '谣音乐', '冯提莫，本名冯亚男，1991年12月19日出生于重庆万州，中国内地女歌手、网络主播', '中国', '重庆万州', '1991年12月19日', '中国内地女歌手、主播', '155cm', '38.7kg', null, '射手座');
INSERT INTO `singer` VALUES ('17', '刀郎', 'http://localhost:8080/media/singeravatar/刀郎.jpg', '啊呀啦嗦', '刀郎，原名罗林。1971年6月22日出生于四川省内江市资中县，歌手、音乐人。获得第六届五个一工程奖（2001） 年度最佳歌手（2004） 内地唱片销量奖（2004-2005） 全国“金唱片”奖（2005） 中国音乐电视铜奖 第十一届五个一工程奖（2010） 第十二届五个一工程奖（2012） 全国“文华奖”（2009）', '中国', '四川省内江市资中县重龙镇', '1971年6月22日', '作词、作曲人、歌手、音乐制作人', '175cm', null, null, '巨蟹座');
INSERT INTO `singer` VALUES ('18', '庄心妍', 'http://localhost:8080/media/singeravatar/庄心妍.jpg', '致力音乐', '庄心妍（Ada），1993年1月9日出生于广东省汕尾市陆丰市，内地女歌手，致力音乐旗下艺人。\r\n\r\n2012年10月29日发行首支单曲《一万个舍不得》 、11月16日演唱《繁星点点》。\r\n\r\n2013年1月15日荣获繁星网新声代歌唱比赛第二名，3月13日发行个人原创专辑《一万个舍不得》，5月3日发行单曲《心有所爱》，6月13日发行单曲《以后的以后》。11月26日发行个人第二张原创专辑《一直想着他》。12月5日发行单曲《今天就要回家》。\r\n\r\n2014年1月，携专辑《一直想着他》做客“星乐坊”。 4月与音乐人萧全共同推出了电子舞曲《爱音乐》。\r\n\r\n2015年11月8日，在沈阳铁西体育馆举办了自己的第一场“甜妍蜜语”演唱会。2016年1月5日，在河北体育馆举办了演唱会。2016年4月21日，酷狗首发数字专辑《做最好的我》。2016年10月7日，发行第十张原创专辑《Touch Of Love》，包含《孤单坠爱》、《错误的邂逅》等六首主打歌曲。2017年9月，开展“sawthelight”巡回演唱会。2018年，参加酷狗直播年度音乐盛典，获得最受欢迎榜样女歌手。同年，在酷狗发行数字专辑《多么舍不得》，该专辑在酷狗音乐平台上线短短半个月即获得超50万张销量。2019年，参加中央广播电视总台文艺节目《唱响新时代》，并演唱歌曲《今天就要回家》；同年，举行“花young时光”的系列主题音乐会。', '中国', '广东陆丰', '1993年1月9日', '歌手', '165CM', '53kg', 'O型', '摩羯座');
INSERT INTO `singer` VALUES ('19', '庞龙', 'http://localhost:8080/media/singeravatar/庞龙.jpg', '北京龙翔天乐文化发展有限公司', '浙江音乐学院流行音乐系教师，硕士研究生导师，沈阳音乐学院南校区终身教授，著名歌手、制作人，第十届、十一届全国青联委员，辽宁省青联常委，中华慈善总会第三届理事，中国音乐家协会会员。\r\n\r\n身为歌者、发行12张专辑、获奖无数，家喻户晓；\r\n\r\n身为师者、传道授业、孜孜不倦、提携新人。\r\n\r\n庞龙的歌者姿态、一直从容，一直前进、走着唱着。', '中国', '辽宁省阜新市太平区', '1971年5月2日', '演艺明星 歌手 音乐教授 词曲创作者制作人', '171cm', '64kg', 'O型', '金牛座');
INSERT INTO `singer` VALUES ('20', '弦子', 'http://localhost:8080/media/singeravatar/弦子.jpg', '有沐音乐', '弦子（Stringer），原名张弦子。1986年4月22日，出生于广西壮族自治区百色市德保县。毕业于北京现代音乐研修学院，中国流行乐女歌手、演员。', '中国', '广西省百色市', '1986年4月22日', '歌手、演员', '169cm', '48kg', 'O型', '金牛座');
INSERT INTO `singer` VALUES ('21', '曾轶可', 'http://localhost:8080/media/singeravatar/曾轶可.jpg', '摩登天空', '曾轶可（Yico Tseng)，1990年1月3日出生于湖南省常德市汉寿县，创作型女歌手，演员。获得音乐先锋榜“先锋创作新人歌手” 全球华语榜“内地最佳新晋歌手” 音乐风云榜“最受欢迎女歌手” 北京流行乐2009年度最佳创作新人 劲歌王金曲榜“劲歌唱作人', '中国', '湖南省常德市汉寿县', '1990年1月3日', '词曲创作人、歌手', '166cm', '43kg', 'O型', '摩羯座');
INSERT INTO `singer` VALUES ('22', '梁静茹', 'http://localhost:8080/media/singeravatar/梁静茹.jpg', '天熹娱乐（台湾）百娱时代（内地）', '梁静茹（Fish Leong），1978年6月16日出生于马来西亚。华语流行女歌手。获得全球华语榜中榜最佳女歌手，中国歌曲排行榜最佳女歌手，中国歌曲排行榜最受欢迎女歌手，新加坡金曲奖最受欢迎女歌手', '马来西亚', '马来西亚森美兰州瓜拉庇劳县', '1978年6月16日', '歌手', '155cm', '48kg', 'O型', '双子座');
INSERT INTO `singer` VALUES ('23', '炎雪', 'http://localhost:8080/media/singeravatar/炎雪.jpg', '韵桀教育', '2019年参加中国新歌声', '中国', '浙江宁波', null, null, null, null, null, null);
INSERT INTO `singer` VALUES ('24', '牛奶咖啡', 'http://localhost:8080/media/singeravatar/牛奶咖啡.jpg', '华谊兄弟传媒集团', '牛奶咖啡（milk coffee）是内地小清新组合 ，由富妍，格非2名成员组成。代表作品：《越长大越孤单》、《明天，你好》、《你不能爱我》、《城市的天空》', '中国', null, null, '歌手', null, null, null, null);
INSERT INTO `singer` VALUES ('25', '程响', 'http://localhost:8080/media/singeravatar/程响.jpg', '金翼龙唱片', '亚洲音乐节大陆优秀新人奖 中国校园才艺总决赛大学组金奖。代表作：《亲爱的你可知》《不再联系》《新娘不是我》《江南夜色》《怎么能忘了》《三生缘》《懂事的年纪》《世界这么大还是遇见你》等', '中国', '安徽淮南', '1989年3月26日', '歌手', '166cm', null, null, '白羊座');
INSERT INTO `singer` VALUES ('26', '筷子兄弟', 'http://localhost:8080/media/singeravatar/筷子兄弟.jpg', '音华娱乐', '筷子兄弟是由肖央与王太利组成集“编剧、导演、演员、音乐创作、歌手”于一身的复合型组合。主要成就：2008年最佳红人奖，2008年度最受欢迎网络短片奖。成立时间：2007年。组合成员：肖央、王太利', '中国', null, null, null, null, null, null, null);
INSERT INTO `singer` VALUES ('27', '罗大佑', 'http://localhost:8080/media/singeravatar/罗大佑.jpg', null, '罗大佑（Lo Tayou），华语流行乐坛最具鲜明特色的开创者，他的音乐影响了无数后辈音乐人，被誉为华语音乐教父。代表作品：东方之珠、明天会更好、追梦人、爱人同志、光阴的故事、童年、恋曲1990、鹿港小镇、皇后大道东。获得香港电影金像奖最佳原创电影歌曲 台湾电影金马奖最佳原创电影歌曲 美国VMA亚洲最佳录影带奖 中国金唱片奖艺术成就奖 音乐风云榜终身成就奖', '中国', '台湾台北', '1954年7月20日', '歌手、音乐制作人', '172cm', null, 'O型', '巨蟹座');
INSERT INTO `singer` VALUES ('28', '苏运莹', 'http://localhost:8080/media/singeravatar/苏运莹.jpg', '索尼音乐娱乐公司', '苏运莹，黎族，1991年4月8日出生于海南三亚，中国女歌手，毕业于北京现代音乐学院。代表作：野子、萤火虫、冥明、幻。获得第二季《中国好歌曲》亚军 2016年“第16届音乐风云榜年度盛典”年度最佳新人奖', '中国', '海南三亚', '1991年4月8日', '歌手', null, null, null, '白羊座');
INSERT INTO `singer` VALUES ('29', '萨顶顶', 'http://localhost:8080/media/singeravatar/萨顶顶.jpg', '环球唱片', '萨顶顶（Sa Dingding），原名周鹏，1983年12月27日出生于河南省平顶山市，中国内地流行乐女歌手、词曲创作人。代表作：万物生、左手指月、锦衣卫、剑雨浮生、神香、来者摩羯、天地记、大名。获得英国BBC世界音乐大奖亚太地区最佳音乐人 华鼎奖亚洲最受欢迎歌唱女演员 中国广播影视大奖电视文艺星光奖电视文艺专题片提名荣誉奖 COSMO时尚女性大奖年度时尚音乐人 中国金唱片奖最佳专辑奖', '中国', '河南省平顶山市', '1983年12月27日', '歌手', null, null, 'B型', '摩羯座');
INSERT INTO `singer` VALUES ('30', '费玉清', 'http://localhost:8080/media/singeravatar/费玉清.jpg', '索尼音乐娱乐公司', '费玉清，本名张彦亭，1955年7月17日出生于台湾台北市，祖籍安徽安庆桐城。中国台湾男歌手、主持人。代表作品：一剪梅、春天里、凤凰于飞、在水一方、千里之外、梦驼铃、一生的朋友、唱一遍一遍、龙兄虎弟。获得1984年台湾金钟奖最佳男歌星奖、1992年台湾金鼎奖最佳男演唱人奖、2006年超级盛典终身成就奖、97年台湾金钟奖最佳综艺主持', '中国', '台湾台北', '1955年7月17日', '歌手，主持人', '173cm', null, 'B型', '巨蟹座');
INSERT INTO `singer` VALUES ('31', '赵雷', 'http://localhost:8080/media/singeravatar/赵雷.jpg', null, '赵雷，1986年7月20日生于北京，中国内地民谣歌手、音乐人。代表作品：《画》、《南方姑娘》、《成都》', '中国', '北京', '1986年7月20日', '歌手', '175cm', null, null, '巨蟹座');
INSERT INTO `singer` VALUES ('32', '金莎', 'http://localhost:8080/media/singeravatar/金莎.jpg', '金莎音乐工作室', '金莎（kym）1983年3月14日出生于上海，曾就读于星海音乐学院、新加坡东亚商学院、新加坡海蝶森林演艺培训学校，中国流行女歌手、演员。代表作品：专辑《星月神话》、《换季》、《不可思议》、《空气》、《他不爱我》。获得2006百事音乐风云榜内地最佳新人 2006全球华语音乐榜中榜内地最佳新人奖 新城国语力新势力歌手', '中国', '上海徐汇', '1983年3月14日', '歌手、演员', '166cm', '46kg', null, '双鱼座');
INSERT INTO `singer` VALUES ('33', '韩红', 'http://localhost:8080/media/singeravatar/韩红.jpg', '香港寰亚传媒集团有限公司', '韩红，歌手，1971年9月26日出生于西藏自治区昌都市，毕业于中国人民解放军艺术学院。代表作：《天路》、《家乡》、《醒了》、 《天亮了》、《来吧》。获得中歌榜最佳女歌手 CCTV-MTV音乐盛典最佳女歌手 全球华语榜中榜最受欢迎女歌手 东方风云榜亚洲风云歌手大奖 我是歌手第三季歌王', '中国', '西藏自治区昌都市', '1971年09月26日', '作曲家 、歌唱家、 词作家 、音乐制作人、慈善家、导演、主持人，全国政协委员，国家一级演员， 韩红爱心慈善基zhidao金会发起人，华录百纳娱乐公司董事长兼CEO，2016中国慈善名人榜第一， 先后毕业于中国音乐学院 、解放军艺术学院、中共中央党校研究生。', null, null, 'A型', '天秤座');
INSERT INTO `singer` VALUES ('34', '魏新雨', 'http://localhost:8080/media/singeravatar/魏新雨.jpg', null, '魏新雨，华语女歌手，5月18号，被誉为“唯美女神”。代表作：《百花香》《余情未了》《为你祈祷》《最美的情缘》《恋人心》等等..一首《恋人心》得到各界广泛关注，席卷各大榜单榜首，火遍大街小巷，成为2016-2017年度最火歌曲之一。2019-2020年《余情未了》《百花香》一经推出火爆全网，试听量突破十亿次！', '中国', '内蒙古通辽市', '1987年5月18日', '歌手', '158cm', '40kg', 'O型', '金牛座');
INSERT INTO `singer` VALUES ('35', '魏晨', 'http://localhost:8080/media/singeravatar/魏晨.jpg', '魏晨工作室', '魏晨（Vision Wei），1986年2月22日出生于甘肃省兰州市，中国流行男歌手，演员。代表作品：《帽子戏法》、《登封造极》、《V SPACE》、《破晓》、《千方百计》。蝉联音乐先锋榜最受欢迎男歌手 音乐先锋榜年度内地最佳男歌手 亚洲音乐节亚洲最佳歌手大奖 蝉联musicradio内地最受欢迎男歌手 musicradio内地最受欢迎唱片 劲歌王金曲金榜内地青年杰出歌手 全球华语榜中榜先锋歌手', '中国', '甘肃兰州', '1986年02月22日', '歌手、演员', '183cm', '60kg', 'O型', '双鱼座');
INSERT INTO `singer` VALUES ('36', null, null, null, null, '中国', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `user_phone` varchar(11) NOT NULL COMMENT '手机号，也是登录账号',
  `user_pwd` varchar(50) NOT NULL COMMENT '密码',
  `user_avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `user_birthday` date DEFAULT NULL COMMENT '生日',
  `user_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `user_introduced` text,
  `user_Administrator` tinyint(4) DEFAULT NULL COMMENT '是否为管理员',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '123', '123', '2020-02-05', '123@qq.om', '123', '1');
INSERT INTO `user` VALUES ('2', '测试员', '1234', '1234', 'http://localhost:8080/media/useravatar/1234.jpg', '2020-03-03', '1234@126.com', '这是第一位测试员', '0');
INSERT INTO `user` VALUES ('7', '杰克逊', '12345', '123', 'http://localhost:8080/media/useravatar/12345.jpg', '2020-02-26', '12345@qq.com', '美国的杰克逊', '0');
INSERT INTO `user` VALUES ('12', '测试员', '15648161601', '104615', 'http://localhost:8080/media/useravatar/15648161601.jpg', '2020-03-13', '1019172727@qq.com', '这是一位测试员', '0');
INSERT INTO `user` VALUES ('18', '111', '111', '111111', 'http://localhost:8080/media/useravatar/111.jpg', null, '111', null, '0');
INSERT INTO `user` VALUES ('19', '110', '119', '110', null, null, '110@qq.com', null, '1');

-- ----------------------------
-- Table structure for `visitors`
-- ----------------------------
DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(11) DEFAULT NULL,
  `visitors` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitors
-- ----------------------------
INSERT INTO `visitors` VALUES ('1', '1234', '12345');
INSERT INTO `visitors` VALUES ('3', '1234', '12345');
INSERT INTO `visitors` VALUES ('4', '1234', '12345');
INSERT INTO `visitors` VALUES ('5', '1234', '12345');
INSERT INTO `visitors` VALUES ('6', '1234', '12345');
INSERT INTO `visitors` VALUES ('7', '12345', '1234');
INSERT INTO `visitors` VALUES ('8', '15648161601', '1234');
