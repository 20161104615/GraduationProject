/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : omss

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-02-20 14:31:24
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '123', '123', '1997-07-08', '123@qq.com', '123');
INSERT INTO `user` VALUES ('2', '夕阳红乐队', '1234', '1234', '12346', '1978-03-14', '12347@qq.com', '内蒙古夕阳红乐队');
