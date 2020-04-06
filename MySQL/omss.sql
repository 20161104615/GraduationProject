/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : omss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-04-06 23:53:50
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
  `music_name` varchar(500) DEFAULT NULL,
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
  `music_name` varchar(500) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favoritesongs
-- ----------------------------
INSERT INTO `favoritesongs` VALUES ('3', '55', '2002年的第一场雪', '123');
INSERT INTO `favoritesongs` VALUES ('4', '15', '年少有为', '123');
INSERT INTO `favoritesongs` VALUES ('5', '73', '小半', '123');
INSERT INTO `favoritesongs` VALUES ('93', '28', '分手快乐', '123');
INSERT INTO `favoritesongs` VALUES ('94', '39', '关键词', '123');
INSERT INTO `favoritesongs` VALUES ('119', '43', '笔记 (Live)', '15648161601');
INSERT INTO `favoritesongs` VALUES ('124', '34', '我和我的祖国', '1234');

-- ----------------------------
-- Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `music_name` varchar(500) DEFAULT NULL COMMENT '歌曲名称',
  `music_singer` varchar(500) DEFAULT NULL COMMENT '歌手',
  `music_lyrics` text COMMENT '歌词',
  `music_storagepath` varchar(500) DEFAULT NULL COMMENT '歌曲路径',
  `music_img` varchar(500) DEFAULT NULL COMMENT '歌曲图片',
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES ('14', '麻雀', '李荣浩', null, 'http://localhost:8080/media/麻雀.m4a', 'http://localhost:8080/media/img/麻雀-李荣浩.jpg');
INSERT INTO `music` VALUES ('15', '年少有为', '李荣浩', null, 'http://localhost:8080/media/年少有为.m4a', 'http://localhost:8080/media/img/年少有为-李荣浩.jpg');
INSERT INTO `music` VALUES ('16', '不将就', '李荣浩', null, 'http://localhost:8080/media/不将就.m4a', 'http://localhost:8080/media/img/不将就-李荣浩.jpg');
INSERT INTO `music` VALUES ('17', '老街', '李荣浩', null, 'http://localhost:8080/media/老街.m4a', 'http://localhost:8080/media/img/老街-李荣浩.jpg');
INSERT INTO `music` VALUES ('18', '李白', '李荣浩', null, 'http://localhost:8080/media/李白.m4a', 'http://localhost:8080/media/img/李白-李荣浩.jpg');
INSERT INTO `music` VALUES ('19', '会呼吸的痛', '梁静茹', null, 'http://localhost:8080/media/会呼吸的痛.m4a', 'http://localhost:8080/media/img/会呼吸的痛-梁静茹.jpg');
INSERT INTO `music` VALUES ('20', '暖暖', '梁静茹', null, 'http://localhost:8080/media/暖暖.m4a', 'http://localhost:8080/media/img/暖暖-梁静茹.jpg');
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
INSERT INTO `music` VALUES ('36', '将故事写成我们', '林俊杰', null, 'http://localhost:8080/media/将故事写成我们.m4a', 'http://localhost:8080/media/img/将故事写成我们-林俊杰.jpg');
INSERT INTO `music` VALUES ('37', '修炼爱情', '林俊杰', null, 'http://localhost:8080/media/修炼爱情.m4a', 'http://localhost:8080/media/img/修炼爱情-林俊杰.jpg');
INSERT INTO `music` VALUES ('38', '可惜没如果', '林俊杰', null, 'http://localhost:8080/media/可惜没如果.m4a', 'http://localhost:8080/media/img/可惜没如果-林俊杰.jpg');
INSERT INTO `music` VALUES ('39', '关键词', '林俊杰', null, 'http://localhost:8080/media/关键词.m4a', 'http://localhost:8080/media/img/关键词-林俊杰.jpg');
INSERT INTO `music` VALUES ('40', '那些你很冒险的梦', '林俊杰', null, 'http://localhost:8080/media/那些你很冒险的梦.m4a', 'http://localhost:8080/media/img/那些你很冒险的梦-林俊杰.jpg');
INSERT INTO `music` VALUES ('41', '最美的期待', '周笔畅', null, 'http://localhost:8080/media/最美的期待.m4a', 'http://localhost:8080/media/img/最美的期待-周笔畅.jpg');
INSERT INTO `music` VALUES ('42', '岁月神偷', '周笔畅', null, 'http://localhost:8080/media/岁月神偷.m4a', 'http://localhost:8080/media/img/岁月神偷-周笔畅.jpg');
INSERT INTO `music` VALUES ('43', '笔记 (Live)', '周笔畅', null, 'http://localhost:8080/media/笔记 (Live).m4a', 'http://localhost:8080/media/img/笔记 (Live)-周笔畅.jpg');
INSERT INTO `music` VALUES ('44', '去流浪', '周笔畅', null, 'http://localhost:8080/media/去流浪.m4a', 'http://localhost:8080/media/img/去流浪-周笔畅.jpg');
INSERT INTO `music` VALUES ('45', '用尽我的一切奔向你', '周笔畅', null, 'http://localhost:8080/media/用尽我的一切奔向你.m4a', 'http://localhost:8080/media/img/用尽我的一切奔向你-周笔畅.jpg');
INSERT INTO `music` VALUES ('46', '怒放的生命', '汪峰', null, 'http://localhost:8080/media/怒放的生命.m4a', 'http://localhost:8080/media/img/怒放的生命-汪峰.jpg');
INSERT INTO `music` VALUES ('47', '光明', '汪峰', null, 'http://localhost:8080/media/光明.m4a', 'http://localhost:8080/media/img/光明-汪峰.jpg');
INSERT INTO `music` VALUES ('48', '春天里', '汪峰', null, 'http://localhost:8080/media/春天里.m4a', 'http://localhost:8080/media/img/春天里-汪峰.jpg');
INSERT INTO `music` VALUES ('49', '北京北京', '汪峰', null, 'http://localhost:8080/media/北京北京.m4a', 'http://localhost:8080/media/img/北京北京-汪峰.jpg');
INSERT INTO `music` VALUES ('50', '飞得更高', '汪峰', null, 'http://localhost:8080/media/飞得更高.m4a', 'http://localhost:8080/media/img/飞得更高-汪峰.jpg');
INSERT INTO `music` VALUES ('51', '冲动的惩罚', '刀郎', null, 'http://localhost:8080/media/冲动的惩罚.m4a', 'http://localhost:8080/media/img/冲动的惩罚-刀郎.jpg');
INSERT INTO `music` VALUES ('52', '西海情歌', '刀郎', null, 'http://localhost:8080/media/西海情歌.m4a', 'http://localhost:8080/media/img/西海情歌-刀郎.jpg');
INSERT INTO `music` VALUES ('53', '喀什噶尔胡杨', '刀郎', null, 'http://localhost:8080/media/喀什噶尔胡杨.m4a', 'http://localhost:8080/media/img/喀什噶尔胡杨-刀郎.jpg');
INSERT INTO `music` VALUES ('54', '披着羊皮的狼', '刀郎', null, 'http://localhost:8080/media/披着羊皮的狼.m4a', 'http://localhost:8080/media/img/披着羊皮的狼-刀郎.jpg');
INSERT INTO `music` VALUES ('55', '2002年的第一场雪', '刀郎', null, 'http://localhost:8080/media/2002年的第一场雪.m4a', 'http://localhost:8080/media/img/2002年的第一场雪-刀郎.jpg');
INSERT INTO `music` VALUES ('62', '星星 (Live)', '张杰', null, 'http://localhost:8080/media/星星 (Live).m4a', 'http://localhost:8080/media/img/星星 (Live)-张杰.jpg');
INSERT INTO `music` VALUES ('63', '三生三世', '张杰', null, 'http://localhost:8080/media/三生三世.m4a', 'http://localhost:8080/media/img/三生三世-张杰.jpg');
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
INSERT INTO `music` VALUES ('74', '天亮了', '韩红', null, 'http://localhost:8080/media/天亮了.m4a', 'http://localhost:8080/media/img/天亮了-韩红.jpg');
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
INSERT INTO `music` VALUES ('108', 'Snowdreams', '班得瑞', null, 'http://localhost:8080/media/Snowdreams.m4a', 'http://localhost:8080/media/img/Snowdreams-班得瑞.jpg');
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
INSERT INTO `music` VALUES ('128', '老男孩', '筷子兄弟', null, 'http://localhost:8080/media/老男孩.m4a', 'http://localhost:8080/media/img/老男孩-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('129', '父亲', '筷子兄弟', null, 'http://localhost:8080/media/父亲.m4a', 'http://localhost:8080/media/img/父亲-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('130', '小苹果', '筷子兄弟', null, 'http://localhost:8080/media/小苹果.m4a', 'http://localhost:8080/media/img/小苹果-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('131', '猛龙过江', '筷子兄弟', null, 'http://localhost:8080/media/猛龙过江.m4a', 'http://localhost:8080/media/img/猛龙过江-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('132', '我从来没去过纽约', '筷子兄弟', null, 'http://localhost:8080/media/我从来没去过纽约.m4a', 'http://localhost:8080/media/img/我从来没去过纽约-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('133', '奔跑吧兄弟', '筷子兄弟', null, 'http://localhost:8080/media/奔跑吧兄弟.m4a', 'http://localhost:8080/media/img/奔跑吧兄弟-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('134', '小水果', '筷子兄弟', null, 'http://localhost:8080/media/小水果.m4a', 'http://localhost:8080/media/img/小水果-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('135', '祝福你亲爱的', '筷子兄弟', null, 'http://localhost:8080/media/祝福你亲爱的.m4a', 'http://localhost:8080/media/img/祝福你亲爱的-筷子兄弟.jpg');
INSERT INTO `music` VALUES ('136', '我一定要得到你', '筷子兄弟', null, 'http://localhost:8080/media/我一定要得到你.m4a', 'http://localhost:8080/media/img/我一定要得到你-筷子兄弟.jpg');
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
INSERT INTO `music` VALUES ('150', '空心 (Live)', '冯提莫', null, 'http://localhost:8080/media/空心 (Live).m4a', 'http://localhost:8080/media/img/空心 (Live)-冯提莫.jpg');
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
INSERT INTO `music` VALUES ('163', '千里之外', '费玉清', null, 'http://localhost:8080/media/千里之外.m4a', 'http://localhost:8080/media/img/千里之外-费玉清.jpg');
INSERT INTO `music` VALUES ('164', '涛声依旧', '费玉清', null, 'http://localhost:8080/media/涛声依旧.m4a', 'http://localhost:8080/media/img/涛声依旧-费玉清.jpg');
INSERT INTO `music` VALUES ('165', '南屏晚钟', '费玉清', null, 'http://localhost:8080/media/南屏晚钟.m4a', 'http://localhost:8080/media/img/南屏晚钟-费玉清.jpg');
INSERT INTO `music` VALUES ('166', '昨夜小楼又东风', '费玉清', null, 'http://localhost:8080/media/昨夜小楼又东风.m4a', 'http://localhost:8080/media/img/昨夜小楼又东风-费玉清.jpg');
INSERT INTO `music` VALUES ('167', '梦驼铃', '费玉清', null, 'http://localhost:8080/media/梦驼铃.m4a', 'http://localhost:8080/media/img/梦驼铃-费玉清.jpg');
INSERT INTO `music` VALUES ('168', '新鸳鸯·蝴蝶梦 (Live)', '费玉清-阿云嘎', null, 'http://localhost:8080/media/新鸳鸯·蝴蝶梦 (Live).m4a', 'http://localhost:8080/media/img/新鸳鸯·蝴蝶梦 (Live)-费玉清-阿云嘎.jpg');
INSERT INTO `music` VALUES ('169', '青花瓷 (Live)', '费玉清', null, 'http://localhost:8080/media/青花瓷 (Live).m4a', 'http://localhost:8080/media/img/青花瓷 (Live)-费玉清.jpg');
INSERT INTO `music` VALUES ('170', '上海滩 (Live)', '费玉清', null, 'http://localhost:8080/media/上海滩 (Live).m4a', 'http://localhost:8080/media/img/上海滩 (Live)-费玉清.jpg');
INSERT INTO `music` VALUES ('171', '一帘幽梦', '费玉清', null, 'http://localhost:8080/media/一帘幽梦.m4a', 'http://localhost:8080/media/img/一帘幽梦-费玉清.jpg');
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

-- ----------------------------
-- Table structure for `sharesongs`
-- ----------------------------
DROP TABLE IF EXISTS `sharesongs`;
CREATE TABLE `sharesongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(11) DEFAULT NULL,
  `music_id` int(11) DEFAULT NULL,
  `music_name` varchar(500) DEFAULT NULL,
  `share_date` date DEFAULT NULL,
  `music_singer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
INSERT INTO `sharesongs` VALUES ('10', '333', '46', '怒放的生命', '2020-04-01', '汪峰');
INSERT INTO `sharesongs` VALUES ('11', '333', '51', '冲动的惩罚', '2020-04-01', '刀郎');
INSERT INTO `sharesongs` VALUES ('12', '1234', '34', '我和我的祖国', '2020-04-03', '华语群星');

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
INSERT INTO `user` VALUES ('2', '测试员', '1234', '1234', 'http://localhost:8080/media/useravatar/1234.jpg', '2020-03-17', '1234@126.com', '这是测试员', '0');
INSERT INTO `user` VALUES ('7', '杰克逊', '12345', '123', '123', '2020-02-26', '12345@qq.com', '美国的杰克逊', '0');
INSERT INTO `user` VALUES ('12', '测试员', '15648161601', '123', 'http://localhost:8080/media/useravatar/15648161601.jpg', '2020-03-13', '1019172727@qq.com', '这是一位测试员', '0');
INSERT INTO `user` VALUES ('18', '111', '111', '111111', 'http://localhost:8080/media/useravatar/111.jpg', null, '111', null, '0');
INSERT INTO `user` VALUES ('19', '110', '119', '110', null, null, '110@qq.com', null, '1');
