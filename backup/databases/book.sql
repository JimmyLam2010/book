/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-04 19:52:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pre_admin
-- ----------------------------
DROP TABLE IF EXISTS `pre_admin`;
CREATE TABLE `pre_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(150) DEFAULT NULL COMMENT '密码盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `email` varchar(150) DEFAULT NULL COMMENT '邮箱',
  `register_time` int(11) DEFAULT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of pre_admin
-- ----------------------------
INSERT INTO `pre_admin` VALUES ('1', 'admin', '80829142eb690a49891f171aa16a7314', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', '1256112010');
INSERT INTO `pre_admin` VALUES ('5', '林一鸣', '80829142eb690a49891f171aa16a7314', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', null);
INSERT INTO `pre_admin` VALUES ('6', '杰拉德', 'ed6478dcec8680bf64ecc2e6fb383422', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', '1566472887');
INSERT INTO `pre_admin` VALUES ('14', '马内', '6390b95efa2a34ba03d1e667bdf9c947', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', '1566543200');
INSERT INTO `pre_admin` VALUES ('15', '菲尔米诺', '6390b95efa2a34ba03d1e667bdf9c947', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', '1566543217');
INSERT INTO `pre_admin` VALUES ('16', '亨德森', '6390b95efa2a34ba03d1e667bdf9c947', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', '1566543305');
INSERT INTO `pre_admin` VALUES ('17', '范迪克', '6390b95efa2a34ba03d1e667bdf9c947', 'ADWAF31F21Adawad', null, 'jimmy201028@gmail.com', '1566543392');

-- ----------------------------
-- Table structure for pre_book
-- ----------------------------
DROP TABLE IF EXISTS `pre_book`;
CREATE TABLE `pre_book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '小说标题',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `register_time` int(11) DEFAULT NULL COMMENT '时间',
  `content` text COMMENT '描述内容',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片封面',
  `cateid` int(10) unsigned DEFAULT NULL COMMENT '分类外键',
  `flag` varchar(50) DEFAULT NULL,
  `display` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key_book_cateid` (`cateid`) USING BTREE,
  CONSTRAINT `foreign_book_cateid` FOREIGN KEY (`cateid`) REFERENCES `pre_cate` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='书籍表';

-- ----------------------------
-- Records of pre_book
-- ----------------------------
INSERT INTO `pre_book` VALUES ('28', '我到异界当神兽', '七月华少', '1566822634', '', '/uploads/20190826203034egjnzCGHLNOTVX7.png', '4', 'new', 'true');
INSERT INTO `pre_book` VALUES ('29', '绝世卦师', '周易有点玄', '1566822071', '', '/uploads/20190826202111cfhijlmvFLQTWY1.png', '3', 'hot', 'true');
INSERT INTO `pre_book` VALUES ('30', '医道传', '叫我航哥', '1566822301', '', '/uploads/20190826202501abdflswzBCHMNTW.png', '1', 'new', 'true');
INSERT INTO `pre_book` VALUES ('31', '御用狂兵', '一箭东来', '1566822603', '', '/uploads/20190826203003aejmnopruFMNRWY.png', '6', 'hot', 'true');
INSERT INTO `pre_book` VALUES ('32', '绝世公子萧如雪', '萧烟若虹', '1566870020', '', '/uploads/20190827094020bikqtxADNOSW015.jpg', '1', 'hot', 'true');
INSERT INTO `pre_book` VALUES ('33', '武中修仙', '落地成仙', '1566870344', '', '/uploads/20190827094544lmnoEIJKQZ01789.jpg', '1', 'top', 'true');
INSERT INTO `pre_book` VALUES ('34', '珑门镖局', '朝枫', '1566870555', '', '/uploads/20190827094915gmswBDFINQ12567.jpg', '1', 'new', 'true');
INSERT INTO `pre_book` VALUES ('35', '大魏厂公', '落叶知凉', '1566870693', '', '/uploads/20190827095133dhjkmozDEI01369.jpg', '1', 'hot', 'true');
INSERT INTO `pre_book` VALUES ('36', '情剑风云诀之神琴魔剑', '南北隐士', '1566870880', '', '/uploads/20190827095440adhlmquvzDGIV57.jpg', '1', 'top', 'true');
INSERT INTO `pre_book` VALUES ('37', '天源狂侠', '南宫英风', '1566870997', '', '/uploads/20190827095637chjosvyzDHPT459.jpg', '1', 'new', 'true');
INSERT INTO `pre_book` VALUES ('38', '大剑帅', '云虚阙', '1566871082', '', '/uploads/20190827095802achmptACEKLMP39.jpg', '1', 'top', 'true');
INSERT INTO `pre_book` VALUES ('39', '江湖血雨十年孤梦', '墨语薪', '1566871830', '', '/uploads/20190827101030fhjkyzAFKMOSZ15.jpg', '1', 'new', 'true');
INSERT INTO `pre_book` VALUES ('40', '武凉传', '赵摇光', '1566872693', '', '/uploads/20190827102453fjlpwBEFGINQW07.jpg', '1', 'top', 'true');
INSERT INTO `pre_book` VALUES ('41', '刃之间', '淡域栖', '1566872919', '', '/uploads/20190827102839afhnsyDJLTUYZ59.jpg', '1', 'hot', 'true');
INSERT INTO `pre_book` VALUES ('42', '我有一张小地图', '柴余', '1566887594', '', '/uploads/20190827143314cdepsFIJNUXY012.jpg', '1', 'new', 'true');
INSERT INTO `pre_book` VALUES ('43', '摧魔', '杨笑', '1566979793', '', '/uploads/20190828160953hmqszADENUZ4567.png', '1', 'new', 'true');

-- ----------------------------
-- Table structure for pre_cate
-- ----------------------------
DROP TABLE IF EXISTS `pre_cate`;
CREATE TABLE `pre_cate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of pre_cate
-- ----------------------------
INSERT INTO `pre_cate` VALUES ('1', '武侠');
INSERT INTO `pre_cate` VALUES ('2', '言情');
INSERT INTO `pre_cate` VALUES ('3', '悬疑');
INSERT INTO `pre_cate` VALUES ('4', '魔幻');
INSERT INTO `pre_cate` VALUES ('5', '体育');
INSERT INTO `pre_cate` VALUES ('6', '现代');

-- ----------------------------
-- Table structure for pre_chapter
-- ----------------------------
DROP TABLE IF EXISTS `pre_chapter`;
CREATE TABLE `pre_chapter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `register_time` int(11) DEFAULT NULL COMMENT '章节更新时间',
  `chapter_title` varchar(255) DEFAULT NULL COMMENT '章节标题',
  `content` varchar(255) DEFAULT NULL COMMENT '章节的内容是一个路径',
  `bookid` int(10) unsigned DEFAULT NULL COMMENT '书籍外键',
  PRIMARY KEY (`id`),
  KEY `key_chapter_bookid` (`bookid`) USING BTREE,
  CONSTRAINT `foreign_chapter_bookid` FOREIGN KEY (`bookid`) REFERENCES `pre_book` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1698 DEFAULT CHARSET=utf8 COMMENT='章节表';

-- ----------------------------
-- Records of pre_chapter
-- ----------------------------
INSERT INTO `pre_chapter` VALUES ('778', '1566821900', '楔子', '/book/20190826/gjkmnrxAFKNQSTVW0367.json', '28');
INSERT INTO `pre_chapter` VALUES ('779', '1566821901', '第一章 异象', '/book/20190826/bknopqrtuxCDQVZ02389.json', '28');
INSERT INTO `pre_chapter` VALUES ('780', '1566821901', '第二章 初遇', '/book/20190826/dfgjlnrsvBFQSUVXZ456.json', '28');
INSERT INTO `pre_chapter` VALUES ('781', '1566821901', '第三章 高考', '/book/20190826/ekquvzCEKMNORTU23578.json', '28');
INSERT INTO `pre_chapter` VALUES ('782', '1566821901', '第四章 高考放榜', '/book/20190826/dghmqstvzBDHOPQSXY12.json', '28');
INSERT INTO `pre_chapter` VALUES ('783', '1566821902', '第五章 龙吸水', '/book/20190826/begijqtxzACEJKMNWX58.json', '28');
INSERT INTO `pre_chapter` VALUES ('784', '1566821902', '第六章 初临异界', '/book/20190826/acdglqrvCGJOTUVXY014.json', '28');
INSERT INTO `pre_chapter` VALUES ('785', '1566821902', '第七章 未知的大世界', '/book/20190826/acfoptBEHNQUV1245689.json', '28');
INSERT INTO `pre_chapter` VALUES ('786', '1566821903', '第八章 龙族', '/book/20190826/dfjlpqstuxyCDGHITVY8.json', '28');
INSERT INTO `pre_chapter` VALUES ('787', '1566821903', '第九章 私人教师', '/book/20190826/hjklotxyDEHJKLRUWX19.json', '28');
INSERT INTO `pre_chapter` VALUES ('788', '1566821903', '第十章 凤族', '/book/20190826/hlqrBCFGHKNRTXZ01269.json', '28');
INSERT INTO `pre_chapter` VALUES ('789', '1566821903', '第十一章 唐糖的来历', '/book/20190826/gjlnstxABDFGLNUV1279.json', '28');
INSERT INTO `pre_chapter` VALUES ('790', '1566821904', '第十二章 激活凤羽的方法', '/book/20190826/egkvFHIKNQRTVXYZ0789.json', '28');
INSERT INTO `pre_chapter` VALUES ('791', '1566821904', '第十三章 能量转换', '/book/20190826/abegntvwJMPQRTX01269.json', '28');
INSERT INTO `pre_chapter` VALUES ('792', '1566821904', '第十四章 挑选庭院', '/book/20190826/aefgnsvwyFGHIKMRSU15.json', '28');
INSERT INTO `pre_chapter` VALUES ('793', '1566821905', '第十五章 凤九现身', '/book/20190826/aehiklpvxBGHJKQSTX59.json', '28');
INSERT INTO `pre_chapter` VALUES ('794', '1566821905', '第十六章 人族功法', '/book/20190826/befhprsuvCDEQUVYZ089.json', '28');
INSERT INTO `pre_chapter` VALUES ('795', '1566821905', '第十七章 天凤九变', '/book/20190826/cpqsxzEKNOQSTUWZ5679.json', '28');
INSERT INTO `pre_chapter` VALUES ('796', '1566821905', '第十八章 传授功法', '/book/20190826/eghjpqrszBFMORU01289.json', '28');
INSERT INTO `pre_chapter` VALUES ('797', '1566821906', '第十九章 纳戒', '/book/20190826/bcflqruwyBDEFHOQU134.json', '28');
INSERT INTO `pre_chapter` VALUES ('798', '1566821906', '第二十章 获得雪庐', '/book/20190826/egimqruwBEGJQRVWXZ27.json', '28');
INSERT INTO `pre_chapter` VALUES ('799', '1566821906', '第二十一章 修葺计划', '/book/20190826/dgjmrxBCEGLMQSTWYZ46.json', '28');
INSERT INTO `pre_chapter` VALUES ('800', '1566821906', '第二十二章 挖洞', '/book/20190826/ghirtvwADHOVZ1245689.json', '28');
INSERT INTO `pre_chapter` VALUES ('801', '1566821907', '第二十三章 悦华居', '/book/20190826/aboqsuwJLMPQSUX24569.json', '28');
INSERT INTO `pre_chapter` VALUES ('802', '1566821907', '第二十四章 再见黄皓', '/book/20190826/emnpqstuwBEGMOPTVW14.json', '28');
INSERT INTO `pre_chapter` VALUES ('803', '1566821907', '第二十五章 学习人族功法', '/book/20190826/adgkpquyABCIJTZ01356.json', '28');
INSERT INTO `pre_chapter` VALUES ('804', '1566821908', '第二十六章 功法疑问', '/book/20190826/acfgmopruyAFKLSUVY01.json', '28');
INSERT INTO `pre_chapter` VALUES ('805', '1566821908', '第二十七章 修炼方向选择', '/book/20190826/afghlpuxzDGKMOPSWXY8.json', '28');
INSERT INTO `pre_chapter` VALUES ('806', '1566821908', '第二十八章 活火山', '/book/20190826/cdefhkqtuyCEGHNOQS13.json', '28');
INSERT INTO `pre_chapter` VALUES ('807', '1566821908', '第二十九章 火灵', '/book/20190826/gjrvyBCKLMQRTVXY3678.json', '28');
INSERT INTO `pre_chapter` VALUES ('808', '1566821909', '第三十章　凤九再现', '/book/20190826/dghinstuvBHJMNPTVXZ0.json', '28');
INSERT INTO `pre_chapter` VALUES ('809', '1566821909', '第三十一章　龙霸题字', '/book/20190826/egiluvyzCDEKRSU14567.json', '28');
INSERT INTO `pre_chapter` VALUES ('810', '1566821909', '第三十二章 修炼的日子', '/book/20190826/aeklqsvxBDEFHLQVX156.json', '28');
INSERT INTO `pre_chapter` VALUES ('811', '1566821909', '第三十三、三十四合章 传道授业，思念远方', '/book/20190826/ceimqrsvAFGHOPRZ1238.json', '28');
INSERT INTO `pre_chapter` VALUES ('812', '1566821910', '第三十五章 练气三层', '/book/20190826/cdefmnpquCDELSTVY589.json', '28');
INSERT INTO `pre_chapter` VALUES ('813', '1566821910', '第三十六章 言传身教', '/book/20190826/bdnoruxyCDGMQUX02567.json', '28');
INSERT INTO `pre_chapter` VALUES ('814', '1566821910', '第三十七章 课堂的日常', '/book/20190826/binopqruwxyzDJOTWY36.json', '28');
INSERT INTO `pre_chapter` VALUES ('815', '1566821911', '第三十八章 洪荒踏天步', '/book/20190826/bginpuvyCFLQRSUVXY14.json', '28');
INSERT INTO `pre_chapter` VALUES ('816', '1566821911', '第三十九章 修炼步法', '/book/20190826/bchlstvDFUWZ01235789.json', '28');
INSERT INTO `pre_chapter` VALUES ('817', '1566821911', '第四十章 练气九层', '/book/20190826/deijlnptvwyzGSTW1679.json', '28');
INSERT INTO `pre_chapter` VALUES ('818', '1566821912', '第四十一章 筑基上', '/book/20190826/agjmqsuvwxDJKRVZ0569.json', '28');
INSERT INTO `pre_chapter` VALUES ('819', '1566821912', '第四十二章 筑基下', '/book/20190826/dgjptuwxzEGHJLNOT125.json', '28');
INSERT INTO `pre_chapter` VALUES ('820', '1566821912', '第四十三章 凤巢行', '/book/20190826/adjADHKLMPQTUVW14678.json', '28');
INSERT INTO `pre_chapter` VALUES ('821', '1566821913', '第四十四章 邪恶凤灵', '/book/20190826/cfjorstvyzACDFGJPRST.json', '28');
INSERT INTO `pre_chapter` VALUES ('822', '1566821913', '第四十五章 凤族二祖', '/book/20190826/cehiptvzBCDHLNORY024.json', '28');
INSERT INTO `pre_chapter` VALUES ('823', '1566821913', '第四十六章 突飞猛进', '/book/20190826/bhprsvwyAEGHIRUVWY78.json', '28');
INSERT INTO `pre_chapter` VALUES ('824', '1566821913', '第四十七章 初临凤族', '/book/20190826/efinqrxyzCEHILMNSY03.json', '28');
INSERT INTO `pre_chapter` VALUES ('825', '1566821914', '第四十八章 比武', '/book/20190826/bciruBDEFGJKLMPTVY47.json', '28');
INSERT INTO `pre_chapter` VALUES ('826', '1566822184', '1    走投无路接任务，山顶别墅显功夫', '/book/20190826/acinosvCKLMUWY012356.json', '29');
INSERT INTO `pre_chapter` VALUES ('827', '1566822185', '2    赌场为掩卦门身，扮作厉鬼来勾魂', '/book/20190826/bdgiknsvyzEGLRTVZ479.json', '29');
INSERT INTO `pre_chapter` VALUES ('828', '1566822185', '3    神秘女子连环计，慕尘秒变背锅侠', '/book/20190826/bijlmnpqrsyEFILNUX03.json', '29');
INSERT INTO `pre_chapter` VALUES ('829', '1566822185', '4    被逼无奈跳冰海，迫从不解何人害', '/book/20190826/dghjkmnqwCJLMRSW3459.json', '29');
INSERT INTO `pre_chapter` VALUES ('830', '1566822186', '5   二门奇人歪瓜枣，冷面夜煞一二 逼', '/book/20190826/acgklqrswDHJLNTUZ269.json', '29');
INSERT INTO `pre_chapter` VALUES ('831', '1566822186', '6    出发遇神秘河流，伙计无端把命丢', '/book/20190826/dhlnqtvwACEFGISYZ357.json', '29');
INSERT INTO `pre_chapter` VALUES ('832', '1566822186', '7    船舱休息闻咚声，隐形怪蛇暗打洞', '/book/20190826/behjknopqADGHMSTUX05.json', '29');
INSERT INTO `pre_chapter` VALUES ('833', '1566822187', '8    慕尘落单困船舱，冷夜救之获好感', '/book/20190826/bfgquwxCGIKMNQRSUZ46.json', '29');
INSERT INTO `pre_chapter` VALUES ('834', '1566822187', '9    弃船上岸入密林，剧毒蜈蚣暗杀人', '/book/20190826/ceilnvyzAGKTUW013689.json', '29');
INSERT INTO `pre_chapter` VALUES ('835', '1566822187', '10   林双诈尸无影踪，宿蜈蚣庙析案情', '/book/20190826/abceilmotuwBFGIJL069.json', '29');
INSERT INTO `pre_chapter` VALUES ('836', '1566822188', '11   雨夜敲门众人惊，蜈蚣大仙索供奉', '/book/20190826/bhmpstuvwBCFINP01368.json', '29');
INSERT INTO `pre_chapter` VALUES ('837', '1566822188', '12   循风辨水不知返，四凶养煞偏不还', '/book/20190826/fmoqrstzDHILOPSV0458.json', '29');
INSERT INTO `pre_chapter` VALUES ('838', '1566822188', '13   望闻问切显神通，探铲定穴断盗洞', '/book/20190826/losvwxEFJKMOSTUVXY28.json', '29');
INSERT INTO `pre_chapter` VALUES ('839', '1566822189', '14   画地为牢遇火着，地下二层分道逃', '/book/20190826/cefkopqrwzDEHLQV2579.json', '29');
INSERT INTO `pre_chapter` VALUES ('840', '1566822189', '15   八门四室来回绕，九宫筛子多烦扰', '/book/20190826/fghjkosxyCDHJLMPRUW9.json', '29');
INSERT INTO `pre_chapter` VALUES ('841', '1566822189', '16   尸油渠里食尸虫，爬满墓道众人疯', '/book/20190826/bdfghlmsvyCFIKSVX149.json', '29');
INSERT INTO `pre_chapter` VALUES ('842', '1566822189', '17   落入巨坑探环境，地下森林多死婴', '/book/20190826/cgruwABFGRSTVZ134679.json', '29');
INSERT INTO `pre_chapter` VALUES ('843', '1566822190', '18   古老阵法众人困，会合一处又分散', '/book/20190826/abdflqsvwFHMSTVWXY38.json', '29');
INSERT INTO `pre_chapter` VALUES ('844', '1566822190', '19   宝地逆转变凶地，青龙怨灵镇国门', '/book/20190826/bcotuvxADJOSTUW03457.json', '29');
INSERT INTO `pre_chapter` VALUES ('845', '1566822190', '20   无穷无尽血灵藤，不死不灭畸形婴', '/book/20190826/acjklmquDGJMPQTY1289.json', '29');
INSERT INTO `pre_chapter` VALUES ('846', '1566822191', '21   祭祀台下暗道现，浮雕壁画知当年', '/book/20190826/depqruvwxBCEINOPRT29.json', '29');
INSERT INTO `pre_chapter` VALUES ('847', '1566822191', '22   密室拜师得真传，千年夙愿为哪般', '/book/20190826/abgipsvwDEHOQRUY0246.json', '29');
INSERT INTO `pre_chapter` VALUES ('848', '1566822191', '23   墓门都能贴对联，坟头可以蹦迪乎', '/book/20190826/bfgjkxyzCFGNOTUW0134.json', '29');
INSERT INTO `pre_chapter` VALUES ('849', '1566822192', '24   下线还要戏弄人，风舆图里线索存', '/book/20190826/cgmnuvwyzDHJKPQWY256.json', '29');
INSERT INTO `pre_chapter` VALUES ('850', '1566822192', '25   蜈蚣干尸轮番上，瓮中之鳖何处藏', '/book/20190826/cqrstvBEGJKPQRSU0235.json', '29');
INSERT INTO `pre_chapter` VALUES ('851', '1566822192', '26   文字游戏哪家强，中国武寒坑人王', '/book/20190826/abcfjkmruxzABEJOVWZ0.json', '29');
INSERT INTO `pre_chapter` VALUES ('852', '1566822334', '第一章     为她下山', '/book/20190826/cfgilmouyzBFHKRWXZ25.json', '30');
INSERT INTO `pre_chapter` VALUES ('853', '1566822334', '第二章     抓小偷', '/book/20190826/abeilmnprsvxGHRUZ146.json', '30');
INSERT INTO `pre_chapter` VALUES ('854', '1566822335', '第三章     天阴神脉', '/book/20190826/acfkmpqrxBCFHIV03679.json', '30');
INSERT INTO `pre_chapter` VALUES ('855', '1566822335', '第四章     放手一搏', '/book/20190826/dfkorwABEFGIJKNXY134.json', '30');
INSERT INTO `pre_chapter` VALUES ('856', '1566822335', '第五章     治病', '/book/20190826/abcghjpqvwxADEJKLQ14.json', '30');
INSERT INTO `pre_chapter` VALUES ('857', '1566822335', '第六章     给女儿磕一个', '/book/20190826/agjlnpstuwyACHOT1489.json', '30');
INSERT INTO `pre_chapter` VALUES ('858', '1566822336', '第七章     她不愿意！', '/book/20190826/aefhiotCFIKLMOPX0368.json', '30');
INSERT INTO `pre_chapter` VALUES ('859', '1566822336', '第八章     灵符', '/book/20190826/dfjnsuvwxyGHJKNQXZ08.json', '30');
INSERT INTO `pre_chapter` VALUES ('860', '1566822336', '第九章     南穗木家', '/book/20190826/efijkpqwzEGJLQ135679.json', '30');
INSERT INTO `pre_chapter` VALUES ('861', '1566822337', '第十章     功法', '/book/20190826/ahijknqrswxBIOSVWX49.json', '30');
INSERT INTO `pre_chapter` VALUES ('862', '1566822337', '第十一章     你可愿意？', '/book/20190826/cfknprvwDEKMNOPQVY79.json', '30');
INSERT INTO `pre_chapter` VALUES ('863', '1566822337', '第十二章     恐惧之渊', '/book/20190826/beghvwxyzCFGHJKPS149.json', '30');
INSERT INTO `pre_chapter` VALUES ('864', '1566822338', '第十三章     怨灵符', '/book/20190826/acehjmqrszCDHJKSWZ46.json', '30');
INSERT INTO `pre_chapter` VALUES ('865', '1566822338', '第十四章     百道怨气人化妖', '/book/20190826/acdgilmnuBCEJKMOR267.json', '30');
INSERT INTO `pre_chapter` VALUES ('866', '1566822338', '第十五章     灭', '/book/20190826/acefijnrsuvyABITZ157.json', '30');
INSERT INTO `pre_chapter` VALUES ('867', '1566822339', '第十六章     转变', '/book/20190826/cikprstwBCDEGJLRV258.json', '30');
INSERT INTO `pre_chapter` VALUES ('868', '1566822339', '第十七章     弱肉强食', '/book/20190826/ijlotxBFIMNRTUVW3789.json', '30');
INSERT INTO `pre_chapter` VALUES ('869', '1566822339', '悼念（跟书没关，只是我的事情）', '/book/20190826/cdefhmquwyDEFKUX0389.json', '30');
INSERT INTO `pre_chapter` VALUES ('870', '1566822339', '第十八章     既在江湖内就是薄命人', '/book/20190826/flmnqrxACFGLQTWY1358.json', '30');
INSERT INTO `pre_chapter` VALUES ('871', '1566822340', '第十九章     墨血弩箭', '/book/20190826/acghijqwxBDFTUWZ4578.json', '30');
INSERT INTO `pre_chapter` VALUES ('872', '1566870062', '契子', '/book/20190827/eflntwxyCDIJKRWX0123.json', '32');
INSERT INTO `pre_chapter` VALUES ('873', '1566870062', '1.圣人遭困', '/book/20190827/acdjklmqwyDGJLT23469.json', '32');
INSERT INTO `pre_chapter` VALUES ('874', '1566870062', '2.雪狂', '/book/20190827/ginqrtyzJKMNOPSUX147.json', '32');
INSERT INTO `pre_chapter` VALUES ('875', '1566870062', '3.黑烟老叟', '/book/20190827/abefmnopsvwyGHIMQS14.json', '32');
INSERT INTO `pre_chapter` VALUES ('876', '1566870062', '4.公子的恐怖', '/book/20190827/aeghjntuwyzFGILMNQR4.json', '32');
INSERT INTO `pre_chapter` VALUES ('877', '1566870062', '5.仙品法宝', '/book/20190827/ahmpquvEFHIOPQSVWXY0.json', '32');
INSERT INTO `pre_chapter` VALUES ('878', '1566870062', '6.天下六经', '/book/20190827/fijlnopqtwxCKNRWY046.json', '32');
INSERT INTO `pre_chapter` VALUES ('879', '1566870062', '7.跟踪', '/book/20190827/abiopvxADFJMTZ245789.json', '32');
INSERT INTO `pre_chapter` VALUES ('880', '1566870062', '8.避天珠', '/book/20190827/aghknuzHIKLMNRVWZ025.json', '32');
INSERT INTO `pre_chapter` VALUES ('881', '1566870062', '9.踏出青阳镇', '/book/20190827/acjmqxACHIJLSTXZ4589.json', '32');
INSERT INTO `pre_chapter` VALUES ('882', '1566870062', '10.趋之若鹜', '/book/20190827/eijklmotuCDFLQRTW127.json', '32');
INSERT INTO `pre_chapter` VALUES ('883', '1566870062', '11.凝望学府', '/book/20190827/bcfgijkrsuvyDEMO1567.json', '32');
INSERT INTO `pre_chapter` VALUES ('884', '1566870062', '12.到达', '/book/20190827/bchovxACGRSWZ0126789.json', '32');
INSERT INTO `pre_chapter` VALUES ('885', '1566870062', '13.宗门遗迹', '/book/20190827/acfgilnqsxzBCENQ1689.json', '32');
INSERT INTO `pre_chapter` VALUES ('886', '1566870062', '14.剑灵', '/book/20190827/ehklsvADEGPVWX025689.json', '32');
INSERT INTO `pre_chapter` VALUES ('887', '1566870062', '15.天劫', '/book/20190827/abcenopruvxAEFGI1235.json', '32');
INSERT INTO `pre_chapter` VALUES ('888', '1566870062', '16.出关', '/book/20190827/achikosuwyzDILMOUY28.json', '32');
INSERT INTO `pre_chapter` VALUES ('889', '1566870062', '17.长公主', '/book/20190827/cfijkntuwxyzCOPSWZ56.json', '32');
INSERT INTO `pre_chapter` VALUES ('890', '1566870062', '18.丑陋的真相', '/book/20190827/afgkmnopzEFGIJMX0127.json', '32');
INSERT INTO `pre_chapter` VALUES ('891', '1566870062', '19.你见过神吗？', '/book/20190827/jkmoszAGHMPQRUXY3678.json', '32');
INSERT INTO `pre_chapter` VALUES ('892', '1566870062', '20.黑暗侵蚀', '/book/20190827/achmqwABEGHJOPVY5679.json', '32');
INSERT INTO `pre_chapter` VALUES ('893', '1566870062', '21.他是一位神', '/book/20190827/djkpuxACEGJKPQUV1349.json', '32');
INSERT INTO `pre_chapter` VALUES ('894', '1566870062', '22.四方神灵', '/book/20190827/afgjkltyDELQRTUV2469.json', '32');
INSERT INTO `pre_chapter` VALUES ('895', '1566870062', '23.帝国的信仰', '/book/20190827/ceijlmnqrwyzBJLPRSX9.json', '32');
INSERT INTO `pre_chapter` VALUES ('896', '1566870062', '24.打压', '/book/20190827/chjmoqwADMOPRSUWX159.json', '32');
INSERT INTO `pre_chapter` VALUES ('897', '1566870062', '25.灯笼', '/book/20190827/bdghijkpstuCFLQTUVW5.json', '32');
INSERT INTO `pre_chapter` VALUES ('898', '1566870062', '26.惩罚', '/book/20190827/dehlouvzBCEFPQSTVW37.json', '32');
INSERT INTO `pre_chapter` VALUES ('899', '1566870062', '27.新的公子楼', '/book/20190827/agjmoqruABCEGLNQUZ12.json', '32');
INSERT INTO `pre_chapter` VALUES ('900', '1566870062', '28.昊天神宗', '/book/20190827/agkmxABDGHJKVXY01345.json', '32');
INSERT INTO `pre_chapter` VALUES ('901', '1566870062', '29.公子的试炼', '/book/20190827/abcmnrswxDFINQSTUWY5.json', '32');
INSERT INTO `pre_chapter` VALUES ('902', '1566870062', '30.寻道阵', '/book/20190827/fgikpyzDGIQRSUWYZ147.json', '32');
INSERT INTO `pre_chapter` VALUES ('903', '1566870062', '31.震天鼓', '/book/20190827/fkstyzAGHNOPQUVWXY46.json', '32');
INSERT INTO `pre_chapter` VALUES ('904', '1566870062', '32.起阵', '/book/20190827/bdflptBDIJKLMNQUW126.json', '32');
INSERT INTO `pre_chapter` VALUES ('905', '1566870062', '33.狐仙', '/book/20190827/eflnoyzBHLNRTVWYZ045.json', '32');
INSERT INTO `pre_chapter` VALUES ('906', '1566870062', '34.七大弟子', '/book/20190827/befimoqstvyCDEPRUW02.json', '32');
INSERT INTO `pre_chapter` VALUES ('907', '1566870062', '35.战事起', '/book/20190827/aefijnorsuBCDMQVWZ67.json', '32');
INSERT INTO `pre_chapter` VALUES ('908', '1566870062', '36.激斗鳄鱼', '/book/20190827/cortvwBCKRSTVWY56789.json', '32');
INSERT INTO `pre_chapter` VALUES ('909', '1566870062', '37.狂妄的苍北', '/book/20190827/abcipuBDIJLRSUWXY248.json', '32');
INSERT INTO `pre_chapter` VALUES ('910', '1566870062', '38.圣人空间', '/book/20190827/bcdhmopsxzFMUVWXZ018.json', '32');
INSERT INTO `pre_chapter` VALUES ('911', '1566870062', '39.交战', '/book/20190827/bkqtwxABEFHKNPRY1249.json', '32');
INSERT INTO `pre_chapter` VALUES ('912', '1566870062', '40.北狄王扎莫', '/book/20190827/cfgnpquxABEHIORTZ679.json', '32');
INSERT INTO `pre_chapter` VALUES ('913', '1566870411', '0，死亡开端', '/book/20190827/bdfilmpqvCDGOQUWX049.json', '33');
INSERT INTO `pre_chapter` VALUES ('914', '1566870411', '1，剧透', '/book/20190827/cgkmntxyACEHKOQV2469.json', '33');
INSERT INTO `pre_chapter` VALUES ('915', '1566870411', '2，状况外', '/book/20190827/jmwyzBCDFGILMNPSUZ15.json', '33');
INSERT INTO `pre_chapter` VALUES ('916', '1566870411', '3，残酷伏击', '/book/20190827/aeijnuDFHLQYZ1234567.json', '33');
INSERT INTO `pre_chapter` VALUES ('917', '1566870411', '4，狠中带强', '/book/20190827/cglmpuvwxyzFGUVYZ279.json', '33');
INSERT INTO `pre_chapter` VALUES ('918', '1566870411', '5，一波刚平一波又起', '/book/20190827/afgoqruwxyBEJOQXZ245.json', '33');
INSERT INTO `pre_chapter` VALUES ('919', '1566870411', '6，反将一军', '/book/20190827/adfnpqzCHILMPVWYZ046.json', '33');
INSERT INTO `pre_chapter` VALUES ('920', '1566870411', '7，英雄救丑', '/book/20190827/hjkrwyzIKNSVWYZ12689.json', '33');
INSERT INTO `pre_chapter` VALUES ('921', '1566870411', '8，绝世容颜', '/book/20190827/cdfghlnqxzADGJKSX589.json', '33');
INSERT INTO `pre_chapter` VALUES ('922', '1566870411', '9，守桥大业', '/book/20190827/afgkmnowxEGHLQRSTU09.json', '33');
INSERT INTO `pre_chapter` VALUES ('923', '1566870411', '10，血性', '/book/20190827/ahqvyBDFHJKLMNQSY457.json', '33');
INSERT INTO `pre_chapter` VALUES ('924', '1566870411', '11，人性的选择', '/book/20190827/abdruvwxyzHKQRTWY134.json', '33');
INSERT INTO `pre_chapter` VALUES ('925', '1566870411', '12，魂', '/book/20190827/benpuvzDFHIJMQRTV056.json', '33');
INSERT INTO `pre_chapter` VALUES ('926', '1566870411', '13，导演', '/book/20190827/cdfhlrxDFNPRSTUVZ345.json', '33');
INSERT INTO `pre_chapter` VALUES ('927', '1566870411', '14，戏剧', '/book/20190827/dfhpqsuzBCEHILUZ1478.json', '33');
INSERT INTO `pre_chapter` VALUES ('928', '1566870411', '15，灵性', '/book/20190827/abhijklmnrstuCDGHMOZ.json', '33');
INSERT INTO `pre_chapter` VALUES ('929', '1566870411', '16，冤家路窄', '/book/20190827/dlopqrtvBFIKRUWXY489.json', '33');
INSERT INTO `pre_chapter` VALUES ('930', '1566870411', '17，花里胡哨', '/book/20190827/bkuzCFGJMNPSTYZ14689.json', '33');
INSERT INTO `pre_chapter` VALUES ('931', '1566870411', '18，四两拨千斤', '/book/20190827/abcjlmnostyLMNQSX089.json', '33');
INSERT INTO `pre_chapter` VALUES ('932', '1566870411', '19，江湖', '/book/20190827/efghjkmwyCDILMNSU057.json', '33');
INSERT INTO `pre_chapter` VALUES ('933', '1566870411', '20，仙功小成', '/book/20190827/cehjlotwxBIJNPRUWXY6.json', '33');
INSERT INTO `pre_chapter` VALUES ('934', '1566870411', '21，龙女美眉', '/book/20190827/clmopqsyzABCRUWX0689.json', '33');
INSERT INTO `pre_chapter` VALUES ('935', '1566870411', '22，尬约', '/book/20190827/abcdfinoswzCGPUW1289.json', '33');
INSERT INTO `pre_chapter` VALUES ('936', '1566870411', '23，仙剑派', '/book/20190827/abfhinpsBEFHIKPXY015.json', '33');
INSERT INTO `pre_chapter` VALUES ('937', '1566870411', '24，NPC', '/book/20190827/abcflwxzACEGKMNWXY03.json', '33');
INSERT INTO `pre_chapter` VALUES ('938', '1566870411', '25，大智若愚', '/book/20190827/emptvxEFOPQSTVWY2678.json', '33');
INSERT INTO `pre_chapter` VALUES ('939', '1566870411', '26，图样图森破', '/book/20190827/abdegmstxHINOQSVZ678.json', '33');
INSERT INTO `pre_chapter` VALUES ('940', '1566870411', '27，铁汉柔情', '/book/20190827/acghkmnpsuwABCGIJK36.json', '33');
INSERT INTO `pre_chapter` VALUES ('941', '1566870411', '28，天赋', '/book/20190827/bdhjknqrsxyCEINXY029.json', '33');
INSERT INTO `pre_chapter` VALUES ('942', '1566870411', '29，破无敌', '/book/20190827/cfhlmtvwxCHLOVX01356.json', '33');
INSERT INTO `pre_chapter` VALUES ('943', '1566870411', '30，双龙', '/book/20190827/delrtvwBHKLPQTVZ1368.json', '33');
INSERT INTO `pre_chapter` VALUES ('944', '1566870411', '31，凡人与神', '/book/20190827/cfmnopqzDIKLRY123468.json', '33');
INSERT INTO `pre_chapter` VALUES ('945', '1566870411', '32，走火入魔', '/book/20190827/bcfoptvwyAFGKNPQRY39.json', '33');
INSERT INTO `pre_chapter` VALUES ('946', '1566870411', '33，辟邪剑谱', '/book/20190827/acdnouvwzADFGOQV1346.json', '33');
INSERT INTO `pre_chapter` VALUES ('947', '1566870411', '34，怼天怼地怼空气', '/book/20190827/dfkmqtuFHIKMOPWXYZ68.json', '33');
INSERT INTO `pre_chapter` VALUES ('948', '1566870411', '35，绝地求生', '/book/20190827/adegmrwzEFJMOPTWZ057.json', '33');
INSERT INTO `pre_chapter` VALUES ('949', '1566870411', '36，天降神女', '/book/20190827/abefhipquwDGKLRSYZ46.json', '33');
INSERT INTO `pre_chapter` VALUES ('950', '1566870411', '37，救世主', '/book/20190827/afhlpruACJKMQSUWXZ45.json', '33');
INSERT INTO `pre_chapter` VALUES ('951', '1566870411', '38，最艰难的路', '/book/20190827/dehkpquwzBCHUVWYZ036.json', '33');
INSERT INTO `pre_chapter` VALUES ('952', '1566870411', '39，像极了爱情', '/book/20190827/aeluvwzCILMNOPQSVZ19.json', '33');
INSERT INTO `pre_chapter` VALUES ('953', '1566870411', '40，很好很强大', '/book/20190827/ijklstvzCGHIKMPY1457.json', '33');
INSERT INTO `pre_chapter` VALUES ('954', '1566870411', '41，男人', '/book/20190827/gmnpwCDEJLPRSUXY0159.json', '33');
INSERT INTO `pre_chapter` VALUES ('955', '1566870411', '42，武之变化', '/book/20190827/acehjlmqtBCIPVWX1589.json', '33');
INSERT INTO `pre_chapter` VALUES ('956', '1566870411', '43，七伤拳', '/book/20190827/adenqrvxyABCILY01238.json', '33');
INSERT INTO `pre_chapter` VALUES ('957', '1566870411', '44，盖世英雄', '/book/20190827/dehilnpqwxACLRVWX579.json', '33');
INSERT INTO `pre_chapter` VALUES ('958', '1566870411', '45，娘子救我', '/book/20190827/cdfhtwCEHJKLNQSXY359.json', '33');
INSERT INTO `pre_chapter` VALUES ('959', '1566870411', '46，神拳显威', '/book/20190827/dehklnortyFKMYZ02458.json', '33');
INSERT INTO `pre_chapter` VALUES ('960', '1566870411', '47，自助者天助', '/book/20190827/egilmtwxCIJMSTUXY057.json', '33');
INSERT INTO `pre_chapter` VALUES ('961', '1566870411', '48，仙功下凡', '/book/20190827/efiknoquAFGHLOQSWX25.json', '33');
INSERT INTO `pre_chapter` VALUES ('962', '1566870411', '49，大道至简', '/book/20190827/cdfijmosuEFIKLMNPSVZ.json', '33');
INSERT INTO `pre_chapter` VALUES ('963', '1566870411', '50，死穴', '/book/20190827/hjlmquyzCHKOPQSTX356.json', '33');
INSERT INTO `pre_chapter` VALUES ('964', '1566870411', '51，禅理', '/book/20190827/aegpquvyzDGIJSUZ2457.json', '33');
INSERT INTO `pre_chapter` VALUES ('965', '1566870411', '52，迎难而上', '/book/20190827/deghikuACHJKLORTX346.json', '33');
INSERT INTO `pre_chapter` VALUES ('966', '1566870411', '53，影子刺客', '/book/20190827/ahklpvCEFGIJNTWXZ478.json', '33');
INSERT INTO `pre_chapter` VALUES ('967', '1566870411', '54，神功对决', '/book/20190827/cdeinoruwxBIJKSUY235.json', '33');
INSERT INTO `pre_chapter` VALUES ('968', '1566870411', '55，被安排了', '/book/20190827/chmsyABDEGHIOXZ12567.json', '33');
INSERT INTO `pre_chapter` VALUES ('969', '1566870411', '56，修武速成', '/book/20190827/egilpqrtvzBEJNVZ2459.json', '33');
INSERT INTO `pre_chapter` VALUES ('970', '1566870411', '57，人贵有自知之明', '/book/20190827/cdfmntuwzEFJMS012345.json', '33');
INSERT INTO `pre_chapter` VALUES ('971', '1566870411', '58，女中妖精', '/book/20190827/abcgmoprvxyCEFHIOQZ9.json', '33');
INSERT INTO `pre_chapter` VALUES ('972', '1566870411', '59，放手一搏', '/book/20190827/cegkpswzCGHKLQSUZ013.json', '33');
INSERT INTO `pre_chapter` VALUES ('973', '1566870411', '60，武道致胜', '/book/20190827/afghnopquxzADEKSU789.json', '33');
INSERT INTO `pre_chapter` VALUES ('974', '1566870411', '61，人生如戏', '/book/20190827/deknyzEHIKOTUWZ34568.json', '33');
INSERT INTO `pre_chapter` VALUES ('975', '1566870411', '62，葵花宝典', '/book/20190827/cdfjknprstAJNSUW1456.json', '33');
INSERT INTO `pre_chapter` VALUES ('976', '1566870411', '63，杯中酒局中人', '/book/20190827/defghqstuwxACDGJ0469.json', '33');
INSERT INTO `pre_chapter` VALUES ('977', '1566870411', '64，缩圈', '/book/20190827/cdfimnuvACDFHMRUVYZ4.json', '33');
INSERT INTO `pre_chapter` VALUES ('978', '1566870411', '65，意识流', '/book/20190827/cfghmtxABDEFGHKM2348.json', '33');
INSERT INTO `pre_chapter` VALUES ('979', '1566870411', '66，社会人', '/book/20190827/bdfhikoqszDFJQSTXZ01.json', '33');
INSERT INTO `pre_chapter` VALUES ('980', '1566870411', '67，江湖不止打杀，亦有情义！', '/book/20190827/acdfjkmostwABSUX1579.json', '33');
INSERT INTO `pre_chapter` VALUES ('981', '1566870411', '68，境界', '/book/20190827/cdfjkorstuvHKNPRUY14.json', '33');
INSERT INTO `pre_chapter` VALUES ('982', '1566870411', '69，武之气', '/book/20190827/bcdmrtvyzCDHMOPRWZ49.json', '33');
INSERT INTO `pre_chapter` VALUES ('983', '1566870411', '70，武与侠', '/book/20190827/abefjksuDFKLPQTXZ017.json', '33');
INSERT INTO `pre_chapter` VALUES ('984', '1566870411', '71，一练七伤，七者皆伤！', '/book/20190827/eprwCJKMNQSTUVYZ2469.json', '33');
INSERT INTO `pre_chapter` VALUES ('985', '1566870411', '72，七的对决', '/book/20190827/bfjmqsuvAEHJLOQVX019.json', '33');
INSERT INTO `pre_chapter` VALUES ('986', '1566870411', '73，复盘', '/book/20190827/afghoqsuyGMNTVW01589.json', '33');
INSERT INTO `pre_chapter` VALUES ('987', '1566870411', '74，逆行倒施', '/book/20190827/gimqrstACEFKSUZ01589.json', '33');
INSERT INTO `pre_chapter` VALUES ('988', '1566870411', '75，一波起飞', '/book/20190827/dfgjmoqsvHLMNTWY1259.json', '33');
INSERT INTO `pre_chapter` VALUES ('989', '1566870411', '76，缘来是你', '/book/20190827/bcefilnwCEHKNOY01457.json', '33');
INSERT INTO `pre_chapter` VALUES ('990', '1566870411', '77，全都是套路', '/book/20190827/bcdinovwzDGHMNPT1479.json', '33');
INSERT INTO `pre_chapter` VALUES ('991', '1566870411', '78，峰回路转', '/book/20190827/chjloqyHIJOPSTY04689.json', '33');
INSERT INTO `pre_chapter` VALUES ('992', '1566870411', '79，神乎其神', '/book/20190827/cfiklnsuwxBEGPW01256.json', '33');
INSERT INTO `pre_chapter` VALUES ('993', '1566870411', '80，江湖路不平', '/book/20190827/bijknuvxyGHJMOQUYZ59.json', '33');
INSERT INTO `pre_chapter` VALUES ('994', '1566870411', '81，真实', '/book/20190827/cijnostuwBCDJTUY0345.json', '33');
INSERT INTO `pre_chapter` VALUES ('995', '1566870411', '82，蜕变', '/book/20190827/bkmnqtuzADFKLNRUX489.json', '33');
INSERT INTO `pre_chapter` VALUES ('996', '1566870411', '83，鏖战', '/book/20190827/aefhjprwxyGHLUZ12379.json', '33');
INSERT INTO `pre_chapter` VALUES ('997', '1566870411', '上架感言', '/book/20190827/lnoqsEMNPRSUXYZ15678.json', '33');
INSERT INTO `pre_chapter` VALUES ('998', '1566870651', '第1章 我不是你们公子', '/book/20190827/bdhimrsvwBCGHTUV2345.json', '34');
INSERT INTO `pre_chapter` VALUES ('999', '1566870651', '第2章 叶望枫的两把剑', '/book/20190827/dgmnotuGHLSUVWX35679.json', '34');
INSERT INTO `pre_chapter` VALUES ('1000', '1566870651', '第3章 满城风雨的蛙跳', '/book/20190827/abhjmpquvBEFHQRY1268.json', '34');
INSERT INTO `pre_chapter` VALUES ('1001', '1566870651', '第4章 渐行渐远的天地', '/book/20190827/afmnquzBCEIOPR234789.json', '34');
INSERT INTO `pre_chapter` VALUES ('1002', '1566870651', '第5章 洞穿一切的眼神', '/book/20190827/efhtwyzABCFJKLMTUX69.json', '34');
INSERT INTO `pre_chapter` VALUES ('1003', '1566870651', '第6章 镖局送来的狗兔', '/book/20190827/fiprsxyFGILMTY123578.json', '34');
INSERT INTO `pre_chapter` VALUES ('1004', '1566870651', '第7章 一语中的的真相', '/book/20190827/abhkoqstuvzAEIJLQV05.json', '34');
INSERT INTO `pre_chapter` VALUES ('1005', '1566870651', '第8章 一石激起千层浪', '/book/20190827/bdgmqrstyzBGHKQRX056.json', '34');
INSERT INTO `pre_chapter` VALUES ('1006', '1566870651', '第9章 釜底抽薪暗杀计', '/book/20190827/ehklmopDFHKNPQSTUXZ7.json', '34');
INSERT INTO `pre_chapter` VALUES ('1007', '1566870651', '第10章 致命银针无人取', '/book/20190827/efghilnpvACDGLMNPZ07.json', '34');
INSERT INTO `pre_chapter` VALUES ('1008', '1566870651', '第11章 前程往事已如烟', '/book/20190827/dghijrstuyAFQT134578.json', '34');
INSERT INTO `pre_chapter` VALUES ('1009', '1566870651', '第12章 双重打击皆意外', '/book/20190827/degkmvxABCEFGKLOR346.json', '34');
INSERT INTO `pre_chapter` VALUES ('1010', '1566870651', '第13章 强行挽留终成空', '/book/20190827/abgjmpqtuvEMNQWXYZ38.json', '34');
INSERT INTO `pre_chapter` VALUES ('1011', '1566870651', '第14章 意料之外的惊喜', '/book/20190827/aceglmqstvJQSTWXY245.json', '34');
INSERT INTO `pre_chapter` VALUES ('1012', '1566870651', '第15章 老婆的新奇解释', '/book/20190827/abfhlmoqrADFINOSZ059.json', '34');
INSERT INTO `pre_chapter` VALUES ('1013', '1566870651', '第16章 不务正业惹人气', '/book/20190827/bfjnpvxBDILOQSW14678.json', '34');
INSERT INTO `pre_chapter` VALUES ('1014', '1566870651', '第17章 不得不去的理由', '/book/20190827/acdeinostABDLMNRTZ03.json', '34');
INSERT INTO `pre_chapter` VALUES ('1015', '1566870651', '第18章 走投无路火气生', '/book/20190827/cejnpszADEGIKVWYZ128.json', '34');
INSERT INTO `pre_chapter` VALUES ('1016', '1566870651', '第19章 冤家路窄恩怨起', '/book/20190827/dhinprstuxzACFHILVYZ.json', '34');
INSERT INTO `pre_chapter` VALUES ('1017', '1566870651', '第20章 旁生枝节恨意消', '/book/20190827/bfghklntxzCEFLPTU069.json', '34');
INSERT INTO `pre_chapter` VALUES ('1018', '1566870651', '第21章 装神弄鬼驱敌策', '/book/20190827/begjkpsxyBCKOSUZ1347.json', '34');
INSERT INTO `pre_chapter` VALUES ('1019', '1566870651', '第22章 大敌当前夺路逃', '/book/20190827/ceijlquvANOPSTVWY017.json', '34');
INSERT INTO `pre_chapter` VALUES ('1020', '1566870651', '第23章 护犊心切父子情', '/book/20190827/abefkloryzCEKNPVX789.json', '34');
INSERT INTO `pre_chapter` VALUES ('1021', '1566870651', '第24章 四处打听头绪无', '/book/20190827/ijnrsxyzCDJLQTY01348.json', '34');
INSERT INTO `pre_chapter` VALUES ('1022', '1566870651', '第25章 万分之一的可能', '/book/20190827/bcdgjklmwyzADFGHXY68.json', '34');
INSERT INTO `pre_chapter` VALUES ('1023', '1566870651', '第26章 一语惊醒梦中人', '/book/20190827/degjmotvwyzACILSXYZ5.json', '34');
INSERT INTO `pre_chapter` VALUES ('1024', '1566870651', '第27章 不去尝试不知果', '/book/20190827/bchijlmpqsxzBFGIQUV4.json', '34');
INSERT INTO `pre_chapter` VALUES ('1025', '1566870651', '第28章 并没有那么简单', '/book/20190827/fkortuwyBCHKLNPRU078.json', '34');
INSERT INTO `pre_chapter` VALUES ('1026', '1566870651', '第29章 没有法律的世界', '/book/20190827/afjqvxABCKLPTUWXY137.json', '34');
INSERT INTO `pre_chapter` VALUES ('1027', '1566870651', '第30章 翠屏山里天机阁', '/book/20190827/dekpstADEFHJKPUVWX15.json', '34');
INSERT INTO `pre_chapter` VALUES ('1028', '1566870651', '第31章 刻骨铭心第一课', '/book/20190827/bcdfjlqstBGILMOVW157.json', '34');
INSERT INTO `pre_chapter` VALUES ('1029', '1566870651', '第32章 颠倒反常拜师局', '/book/20190827/acghimpuBGKLUYZ01457.json', '34');
INSERT INTO `pre_chapter` VALUES ('1030', '1566870651', '第33章 戎马一生的男人', '/book/20190827/dghmnoxBEIOPRSTZ2679.json', '34');
INSERT INTO `pre_chapter` VALUES ('1031', '1566870651', '第34章 追求一次做最好', '/book/20190827/bfhinuwxAGIJKMRT2479.json', '34');
INSERT INTO `pre_chapter` VALUES ('1032', '1566870651', '第35章 可疑的不速之客', '/book/20190827/bijopqsvxyEGHILQ0279.json', '34');
INSERT INTO `pre_chapter` VALUES ('1033', '1566870651', '第36章 从天而降的师父', '/book/20190827/eijlptxzCEFGJLPQSY16.json', '34');
INSERT INTO `pre_chapter` VALUES ('1034', '1566870651', '第37章 曲折好奇惊喜出', '/book/20190827/eiknstvyCFHKLNXY3679.json', '34');
INSERT INTO `pre_chapter` VALUES ('1035', '1566870651', '第38章 猝不及防武功失', '/book/20190827/cimoqtvwxyEGRWY14589.json', '34');
INSERT INTO `pre_chapter` VALUES ('1036', '1566870651', '第39章 无上剑心诀心法', '/book/20190827/bceoqADEFHKLMOSTXY47.json', '34');
INSERT INTO `pre_chapter` VALUES ('1037', '1566870651', '第40章 如风一样的男人', '/book/20190827/bgilnrstABEOSTUW1258.json', '34');
INSERT INTO `pre_chapter` VALUES ('1038', '1566870651', '第41章 人声鼎沸花柳巷', '/book/20190827/defghqxCGHQUXYZ13489.json', '34');
INSERT INTO `pre_chapter` VALUES ('1039', '1566870651', '第42章 似曾相识燕归来', '/book/20190827/cdefgjnvwDJKMQUXY178.json', '34');
INSERT INTO `pre_chapter` VALUES ('1040', '1566870651', '第43章 所作所为只为家', '/book/20190827/acdelotvwxyzILMOV145.json', '34');
INSERT INTO `pre_chapter` VALUES ('1041', '1566870651', '第44章 以彼之道施彼身', '/book/20190827/cdefjmpqtyzJRSTUY279.json', '34');
INSERT INTO `pre_chapter` VALUES ('1042', '1566870651', '第45章 两把长剑的作用', '/book/20190827/cijmnotuvCHJKLMNRV19.json', '34');
INSERT INTO `pre_chapter` VALUES ('1043', '1566870651', '第46章 身心憔悴压迫生', '/book/20190827/filmoqsxBDFGIJNY0468.json', '34');
INSERT INTO `pre_chapter` VALUES ('1044', '1566870651', '第47章 其实我可以帮忙', '/book/20190827/bdhkmnsvwyJKORWY1489.json', '34');
INSERT INTO `pre_chapter` VALUES ('1045', '1566870651', '第48章 把酒言欢好言劝', '/book/20190827/ahopuvxAEFGHJOPQS025.json', '34');
INSERT INTO `pre_chapter` VALUES ('1046', '1566870651', '第49章 是不一样的烟火', '/book/20190827/fiklmrstyDEGPRWY0138.json', '34');
INSERT INTO `pre_chapter` VALUES ('1047', '1566870651', '第50章 冰天雪地不良人', '/book/20190827/bchiklmosuvwyDFJR178.json', '34');
INSERT INTO `pre_chapter` VALUES ('1048', '1566870651', '第51章 兄弟该是什么样', '/book/20190827/acehnopwxCHILQUVX269.json', '34');
INSERT INTO `pre_chapter` VALUES ('1049', '1566870651', '第52章 得知危险去意生', '/book/20190827/efjkmqstBDGKOQVWY568.json', '34');
INSERT INTO `pre_chapter` VALUES ('1050', '1566870651', '第53章 人去楼空家难守', '/book/20190827/aeghoruzIKQUWXZ04578.json', '34');
INSERT INTO `pre_chapter` VALUES ('1051', '1566870651', '第54章 树欲静而风不止', '/book/20190827/abdefgknqEGKPRVY0378.json', '34');
INSERT INTO `pre_chapter` VALUES ('1052', '1566870651', '第55章 提刀向前狗命毙', '/book/20190827/hlqrtuyABDEIKOUWY138.json', '34');
INSERT INTO `pre_chapter` VALUES ('1053', '1566870651', '第56章 只谈价钱不讲情', '/book/20190827/abghimpuwBCDGILMRUV6.json', '34');
INSERT INTO `pre_chapter` VALUES ('1054', '1566870651', '第57章 风萧萧兮虞山寒', '/book/20190827/afgjmnpvxCDHJLMYZ069.json', '34');
INSERT INTO `pre_chapter` VALUES ('1055', '1566870651', '第58章 繁花似锦冰灯会', '/book/20190827/dfghklmyEHIKPSUXZ358.json', '34');
INSERT INTO `pre_chapter` VALUES ('1056', '1566870651', '第59章 狐假虎威疑惑生', '/book/20190827/bdeglmtwDGMNOSVY4678.json', '34');
INSERT INTO `pre_chapter` VALUES ('1057', '1566870651', '第60章 嬉闹无度亲切生', '/book/20190827/acdgjkmnpuyEGNOVYZ59.json', '34');
INSERT INTO `pre_chapter` VALUES ('1058', '1566870651', '第61章 最可怕的是未知', '/book/20190827/acelprtzDEHJOPRTXZ14.json', '34');
INSERT INTO `pre_chapter` VALUES ('1059', '1566870651', '第62章 乔装打扮阴谋现', '/book/20190827/degknpqtxzDHMQRVW126.json', '34');
INSERT INTO `pre_chapter` VALUES ('1060', '1566870651', '第63章 围而不攻叫骂声', '/book/20190827/adknopqvwABPQRU02345.json', '34');
INSERT INTO `pre_chapter` VALUES ('1061', '1566870651', '第64章 天罗地网待君来', '/book/20190827/cdgnpqswxzEFHIPQSV25.json', '34');
INSERT INTO `pre_chapter` VALUES ('1062', '1566870651', '第65章 神仙打架有机趁', '/book/20190827/aejnrzEFGHQUWXZ04568.json', '34');
INSERT INTO `pre_chapter` VALUES ('1063', '1566870651', '第66章 龙潭虎穴小心行', '/book/20190827/fhjmrsuvwyzDHLRTY136.json', '34');
INSERT INTO `pre_chapter` VALUES ('1064', '1566870651', '第67章 百般阻挠不见敌', '/book/20190827/adfhioptEHNSVXY12345.json', '34');
INSERT INTO `pre_chapter` VALUES ('1065', '1566870651', '第68章 借力打力巧计出', '/book/20190827/chjkmpswABFGKSTUV048.json', '34');
INSERT INTO `pre_chapter` VALUES ('1066', '1566870651', '第69章 强行突破境界升', '/book/20190827/ghlowBNPQSVXYZ136789.json', '34');
INSERT INTO `pre_chapter` VALUES ('1067', '1566870651', '第70章 发自内心的战栗', '/book/20190827/dghjlmopqrtxzHO13678.json', '34');
INSERT INTO `pre_chapter` VALUES ('1068', '1566870651', '第71章 是非之地不宜留', '/book/20190827/bghmptvxzBFGHLUW1346.json', '34');
INSERT INTO `pre_chapter` VALUES ('1069', '1566870651', '第72章 同仇敌忾赴死局', '/book/20190827/abcfhklnpswxCFGKOVX3.json', '34');
INSERT INTO `pre_chapter` VALUES ('1070', '1566870651', '第73章 片甲不留虞山派', '/book/20190827/bdfhijkptxAIJPZ36789.json', '34');
INSERT INTO `pre_chapter` VALUES ('1071', '1566870651', '第74章 不怒自威仙人跳', '/book/20190827/bdnrsxBCDEJNSUWY0259.json', '34');
INSERT INTO `pre_chapter` VALUES ('1072', '1566870651', '第75章 北风萧萧呜咽声', '/book/20190827/bfhjklvxABHQRSTVYZ24.json', '34');
INSERT INTO `pre_chapter` VALUES ('1073', '1566870740', '第一章连死都难', '/book/20190827/cefhknostAEOQRVWXY19.json', '35');
INSERT INTO `pre_chapter` VALUES ('1074', '1566870740', '第二章疯子', '/book/20190827/acdgiklnopwJLMORSVZ3.json', '35');
INSERT INTO `pre_chapter` VALUES ('1075', '1566870740', '第三章报仇', '/book/20190827/dfhkpqtyCKLPQSY02569.json', '35');
INSERT INTO `pre_chapter` VALUES ('1076', '1566870740', '第四章铁爪功', '/book/20190827/bcefmnrwyACHIKPUXY89.json', '35');
INSERT INTO `pre_chapter` VALUES ('1077', '1566870740', '第五章司膳领班', '/book/20190827/aehnptwACDEHIMRSTU19.json', '35');
INSERT INTO `pre_chapter` VALUES ('1078', '1566870740', '第六章折磨', '/book/20190827/abhjkqrvxyzAEHLY1789.json', '35');
INSERT INTO `pre_chapter` VALUES ('1079', '1566870740', '第七章面见太后', '/book/20190827/aghptvxyEFGKNPTW1247.json', '35');
INSERT INTO `pre_chapter` VALUES ('1080', '1566870740', '第八章评价', '/book/20190827/bdehuwxCDGIKLQUW0268.json', '35');
INSERT INTO `pre_chapter` VALUES ('1081', '1566870740', '第九章天心难测，机遇在前', '/book/20190827/ijnotxDFHKPQSVWZ1589.json', '35');
INSERT INTO `pre_chapter` VALUES ('1082', '1566870740', '第十章时间紧迫', '/book/20190827/cghptuwEGIKMOPRYZ345.json', '35');
INSERT INTO `pre_chapter` VALUES ('1083', '1566870740', '第十一章强行抓人', '/book/20190827/ceghnopqvDIKMOTWX046.json', '35');
INSERT INTO `pre_chapter` VALUES ('1084', '1566870740', '第十二章司礼监胡庸', '/book/20190827/ehlmovxyABCEFMNPSXY8.json', '35');
INSERT INTO `pre_chapter` VALUES ('1085', '1566870740', '第十三章赏赐', '/book/20190827/dlmnuvwzHMOPSUYZ1389.json', '35');
INSERT INTO `pre_chapter` VALUES ('1086', '1566870740', '第十四章接骨续筋', '/book/20190827/abceglpqrxDELNQXY458.json', '35');
INSERT INTO `pre_chapter` VALUES ('1087', '1566870740', '第十五章御马监天牢', '/book/20190827/bghnoqtvwyEHKMPSV258.json', '35');
INSERT INTO `pre_chapter` VALUES ('1088', '1566870740', '第十六章审讯', '/book/20190827/cdeflsyDEGLMSTWYZ389.json', '35');
INSERT INTO `pre_chapter` VALUES ('1089', '1566870740', '第十七章破绽', '/book/20190827/efklmprwxyDLOPTZ2789.json', '35');
INSERT INTO `pre_chapter` VALUES ('1090', '1566870740', '第十八章胡庸的反击', '/book/20190827/dejloqtyCDGJLTVW2349.json', '35');
INSERT INTO `pre_chapter` VALUES ('1091', '1566870740', '第十九章两个疯子', '/book/20190827/dhkmnouwENOPQXZ01238.json', '35');
INSERT INTO `pre_chapter` VALUES ('1092', '1566870740', '第二十章可怕', '/book/20190827/cefpsuwxyzACEFGLSZ15.json', '35');
INSERT INTO `pre_chapter` VALUES ('1093', '1566870740', '第二十一章真正的目的', '/book/20190827/aimADFLMNPSUY2345789.json', '35');
INSERT INTO `pre_chapter` VALUES ('1094', '1566870740', '第二十二章准许', '/book/20190827/bfglmqsuwyzHJLMOPQSZ.json', '35');
INSERT INTO `pre_chapter` VALUES ('1095', '1566870740', '第二十三章时机已到', '/book/20190827/abdehinpsAEKNOSUZ168.json', '35');
INSERT INTO `pre_chapter` VALUES ('1096', '1566870740', '第二十四章责罚', '/book/20190827/cdekrtvxyBCDEFGHLMZ5.json', '35');
INSERT INTO `pre_chapter` VALUES ('1097', '1566870740', '第二十五章神宫监', '/book/20190827/efmrvwzACHJLOPQTXZ57.json', '35');
INSERT INTO `pre_chapter` VALUES ('1098', '1566870740', '第二十六章抉择', '/book/20190827/ghlmtvxyAEFLMU023567.json', '35');
INSERT INTO `pre_chapter` VALUES ('1099', '1566870740', '第二十七章惨案爆发', '/book/20190827/begijmnuyBCDFGMQUVW9.json', '35');
INSERT INTO `pre_chapter` VALUES ('1100', '1566870740', '第二十八章请令', '/book/20190827/egjouBCDFHMPRY034678.json', '35');
INSERT INTO `pre_chapter` VALUES ('1101', '1566870740', '第二十九章屈打成招', '/book/20190827/dhjkloqstuxyBKRTVWY6.json', '35');
INSERT INTO `pre_chapter` VALUES ('1102', '1566870740', '第三十章兵至司礼监', '/book/20190827/adhrsuvxzBFLOPV04567.json', '35');
INSERT INTO `pre_chapter` VALUES ('1103', '1566870740', '第三十一章捉拿胡庸（改）', '/book/20190827/gikpvxyzDJKMPSTY0147.json', '35');
INSERT INTO `pre_chapter` VALUES ('1104', '1566870740', '第三十二章绝望的胡庸', '/book/20190827/gjpqrvwyzHIKSTUXYZ56.json', '35');
INSERT INTO `pre_chapter` VALUES ('1105', '1566870740', '第三十三章升御马监提督', '/book/20190827/dehotuzCFJMOQSTUZ134.json', '35');
INSERT INTO `pre_chapter` VALUES ('1106', '1566870740', '第三十四章宁可错杀一千，绝不放过一个', '/book/20190827/aeryzCDEGHKMPUWXY135.json', '35');
INSERT INTO `pre_chapter` VALUES ('1107', '1566870740', '第三十五章提拔常福', '/book/20190827/fpqrtwyzGLNPQSUWX679.json', '35');
INSERT INTO `pre_chapter` VALUES ('1108', '1566870740', '第三十六章天蚕神功', '/book/20190827/bhjkopqrtCIOUZ023479.json', '35');
INSERT INTO `pre_chapter` VALUES ('1109', '1566870740', '第三十七章寒玉池', '/book/20190827/bdjkqrszABDFHIPRTW07.json', '35');
INSERT INTO `pre_chapter` VALUES ('1110', '1566870740', '第三十八章自毁筋骨只为破茧', '/book/20190827/kmprtCEFGIQRVZ023457.json', '35');
INSERT INTO `pre_chapter` VALUES ('1111', '1566870740', '第三十九章破茧', '/book/20190827/jklqtuBIKLOQSWZ12349.json', '35');
INSERT INTO `pre_chapter` VALUES ('1112', '1566870740', '第四十章天蚕身法', '/book/20190827/bcdfgqzABEFJNOPRST28.json', '35');
INSERT INTO `pre_chapter` VALUES ('1113', '1566870740', '第四十一章出关', '/book/20190827/cgkoqrstwzDFGNORW357.json', '35');
INSERT INTO `pre_chapter` VALUES ('1114', '1566870740', '第四十二章吸取内力', '/book/20190827/cfijmpxABGKORUZ24789.json', '35');
INSERT INTO `pre_chapter` VALUES ('1115', '1566870740', '第四十三章后天后期巅峰', '/book/20190827/gilmsuwAFOQRSVXY2348.json', '35');
INSERT INTO `pre_chapter` VALUES ('1116', '1566870740', '第四十四章提拔汪云', '/book/20190827/bemruzEFIJNOQRVWY124.json', '35');
INSERT INTO `pre_chapter` VALUES ('1117', '1566870740', '第四十五章张重山带来的消息', '/book/20190827/abgilmnopvyzCGPQY028.json', '35');
INSERT INTO `pre_chapter` VALUES ('1118', '1566870740', '第四十六章棍棒加赏赐', '/book/20190827/abegntwzAFGKNQRWY589.json', '35');
INSERT INTO `pre_chapter` VALUES ('1119', '1566870740', '第四十七章太后召见', '/book/20190827/cgilmtzABGHLQXZ13478.json', '35');
INSERT INTO `pre_chapter` VALUES ('1120', '1566870740', '第四十八章武学奇才', '/book/20190827/adorstzABHIKLOPST079.json', '35');
INSERT INTO `pre_chapter` VALUES ('1121', '1566870740', '第四十九章离宫', '/book/20190827/bgjklpstuyHINOPTUWX2.json', '35');
INSERT INTO `pre_chapter` VALUES ('1122', '1566870740', '第五十章刺杀', '/book/20190827/cefiklnstzBGJKTUVY59.json', '35');
INSERT INTO `pre_chapter` VALUES ('1123', '1566870740', '第五十一章不过如此', '/book/20190827/acfgkuzAHKNOVWX01456.json', '35');
INSERT INTO `pre_chapter` VALUES ('1124', '1566870740', '第五十二章无端护主的许玉儿', '/book/20190827/agknovxCHILMNOW45678.json', '35');
INSERT INTO `pre_chapter` VALUES ('1125', '1566870740', '第五十三章满身的疤痕', '/book/20190827/dejpwzADHINSWY123568.json', '35');
INSERT INTO `pre_chapter` VALUES ('1126', '1566870740', '第五十四章心慈手软', '/book/20190827/acfghkovxzDFKMNOPX19.json', '35');
INSERT INTO `pre_chapter` VALUES ('1127', '1566870740', '第五十五章利大于弊', '/book/20190827/bfikrsxyCDEGJNOQRWY1.json', '35');
INSERT INTO `pre_chapter` VALUES ('1128', '1566870740', '第五十六章暗中刺探', '/book/20190827/acdfijmnsvwyGKTXY469.json', '35');
INSERT INTO `pre_chapter` VALUES ('1129', '1566870740', '第五十七章亲自出马', '/book/20190827/abefhlnsvwxBEHMNR028.json', '35');
INSERT INTO `pre_chapter` VALUES ('1130', '1566870740', '第五十八章夜行', '/book/20190827/dgknptxyzFKQRSWZ0128.json', '35');
INSERT INTO `pre_chapter` VALUES ('1131', '1566870740', '第五十九章诸多线索', '/book/20190827/dgijlpqtxyzACHNQS358.json', '35');
INSERT INTO `pre_chapter` VALUES ('1132', '1566870740', '第六十章惊弓之鸟', '/book/20190827/jkmnopruyzACHIRWXY13.json', '35');
INSERT INTO `pre_chapter` VALUES ('1133', '1566870740', '第六十一章百丈楼顶', '/book/20190827/adehiltxDEFGLOSX0459.json', '35');
INSERT INTO `pre_chapter` VALUES ('1134', '1566870740', '第六十二章狠战先天', '/book/20190827/bcehijnoprtCEJKMPY12.json', '35');
INSERT INTO `pre_chapter` VALUES ('1135', '1566870740', '第六十三章确定青花身份', '/book/20190827/acfgmopqvxyzEGHKSWX1.json', '35');
INSERT INTO `pre_chapter` VALUES ('1136', '1566870740', '第六十四章这些还不够', '/book/20190827/ijklnqzCHIJKNRTY2359.json', '35');
INSERT INTO `pre_chapter` VALUES ('1137', '1566870740', '第六十五章肚子里的线索', '/book/20190827/chijmoxyDEFGLMRTUY37.json', '35');
INSERT INTO `pre_chapter` VALUES ('1138', '1566870740', '第六十六章消失的刘瑾', '/book/20190827/elnopqsAFJLSVW235679.json', '35');
INSERT INTO `pre_chapter` VALUES ('1139', '1566870740', '第六十七章千鳞护手', '/book/20190827/efgikoqrxzEFGHMSXY26.json', '35');
INSERT INTO `pre_chapter` VALUES ('1140', '1566870740', '第六十八章夜探梁家老宅', '/book/20190827/acfghtuyzCEFHKNS3469.json', '35');
INSERT INTO `pre_chapter` VALUES ('1141', '1566870740', '第六十九章狂喜震惊的张太后', '/book/20190827/bfhmntAJMNSTVZ012368.json', '35');
INSERT INTO `pre_chapter` VALUES ('1142', '1566870740', '第七十章意外之喜', '/book/20190827/adjlnoxzABDGHMVW2456.json', '35');
INSERT INTO `pre_chapter` VALUES ('1143', '1566870740', '第七十一章刘瑾进城', '/book/20190827/bcdijlmprJPQRSVY2678.json', '35');
INSERT INTO `pre_chapter` VALUES ('1144', '1566870740', '第七十二章暗殿里的秘密', '/book/20190827/beiklmnpqswyABCER026.json', '35');
INSERT INTO `pre_chapter` VALUES ('1145', '1566870740', '第七十三章一切将开始', '/book/20190827/hjkmsuvwyzDENRTV1235.json', '35');
INSERT INTO `pre_chapter` VALUES ('1146', '1566870740', '上架感言', '/book/20190827/adfghqsEJLMNOPRTV579.json', '35');
INSERT INTO `pre_chapter` VALUES ('1147', '1566870740', '第七十四章爆炸', '/book/20190827/acdgjoqrvCFKMPQUVX38.json', '35');
INSERT INTO `pre_chapter` VALUES ('1148', '1566870925', '第一章，再现情剑侠侣（上）', '/book/20190827/bijkloquvyFNOR123459.json', '36');
INSERT INTO `pre_chapter` VALUES ('1149', '1566870925', '第二章，再现情剑侠侣（下）', '/book/20190827/adefmrtzBCFKLNOQWZ04.json', '36');
INSERT INTO `pre_chapter` VALUES ('1150', '1566870925', '第三章，情剑傲女义', '/book/20190827/bcdgmpqstACFHKPWY479.json', '36');
INSERT INTO `pre_chapter` VALUES ('1151', '1566870925', '第四章，千金之情', '/book/20190827/eghijmptuvxzILQTX189.json', '36');
INSERT INTO `pre_chapter` VALUES ('1152', '1566870925', '第五章，盗剑风波', '/book/20190827/efhjknrvwEFGKLOQYZ37.json', '36');
INSERT INTO `pre_chapter` VALUES ('1153', '1566870925', '第六章，千金遇袭记（上）', '/book/20190827/befijklqryFGHJNOPTX5.json', '36');
INSERT INTO `pre_chapter` VALUES ('1154', '1566870925', '第七章，千金遇袭记（下）', '/book/20190827/dfglvwyzAEGKLOQTUW48.json', '36');
INSERT INTO `pre_chapter` VALUES ('1155', '1566870925', '第八章，多情自有天意（上）', '/book/20190827/befjoqrsDEFGIJX01479.json', '36');
INSERT INTO `pre_chapter` VALUES ('1156', '1566870925', '第九章，多情自有天意（下）', '/book/20190827/fgiloqstuwxBFJPTUX47.json', '36');
INSERT INTO `pre_chapter` VALUES ('1157', '1566870925', '第十章，天下武林剑术大会之前（上）', '/book/20190827/ahloruwADEHILOTWXY69.json', '36');
INSERT INTO `pre_chapter` VALUES ('1158', '1566870925', '第十一章，天下武林剑术大会之前（下）', '/book/20190827/bcdfgikuvACEFGUV3678.json', '36');
INSERT INTO `pre_chapter` VALUES ('1159', '1566870925', '第十二章，谁盗走紫云宝剑？', '/book/20190827/acefhlprsvHJKQRV2457.json', '36');
INSERT INTO `pre_chapter` VALUES ('1160', '1566870925', '第十三章，剑出风云（上）', '/book/20190827/befhmnpqsvwEGV013456.json', '36');
INSERT INTO `pre_chapter` VALUES ('1161', '1566870925', '第十四章，剑出风云（下）', '/book/20190827/fhjnrwzDIJMRTUWX1245.json', '36');
INSERT INTO `pre_chapter` VALUES ('1162', '1566870925', '第十五章，剑拼灭杀（上）', '/book/20190827/bcfkqsuvEIPUVXY02368.json', '36');
INSERT INTO `pre_chapter` VALUES ('1163', '1566870925', '第十六章，剑拼灭杀（下）', '/book/20190827/fhlpxzCFHPQUYZ245689.json', '36');
INSERT INTO `pre_chapter` VALUES ('1164', '1566870925', '第十七章，江湖险恶斗', '/book/20190827/cdhmoqBCGHINRUW34567.json', '36');
INSERT INTO `pre_chapter` VALUES ('1165', '1566870925', '第十八章，神琴召唤', '/book/20190827/gnouxyCFKNOTUX012489.json', '36');
INSERT INTO `pre_chapter` VALUES ('1166', '1566870925', '第十九章，江湖客栈来侠士', '/book/20190827/dfintuvwyDEFKNQVX579.json', '36');
INSERT INTO `pre_chapter` VALUES ('1167', '1566870925', '第二十章，群雄聚华山（上）', '/book/20190827/fghituxzFGIKMOPQTYZ6.json', '36');
INSERT INTO `pre_chapter` VALUES ('1168', '1566870925', '第二十一章，群雄聚华山（下）', '/book/20190827/acdemuwJLNQRSW012369.json', '36');
INSERT INTO `pre_chapter` VALUES ('1169', '1566870925', '第二十二章 ，蓝千浩追查黑衣人（上）', '/book/20190827/fijkosxyBCFKMNQRTYZ7.json', '36');
INSERT INTO `pre_chapter` VALUES ('1170', '1566870925', '第二十三章，蓝千浩追查黑衣人（下）', '/book/20190827/bcfnopuIJLMNOTWZ1257.json', '36');
INSERT INTO `pre_chapter` VALUES ('1171', '1566870925', '第二十四章，风起云涌揽苍穹（上）', '/book/20190827/gjnopquxyDHKLMNORXY0.json', '36');
INSERT INTO `pre_chapter` VALUES ('1172', '1566870925', '第二十五章，风起云涌揽苍穹（中）', '/book/20190827/cegkpuyABFHILNTUW458.json', '36');
INSERT INTO `pre_chapter` VALUES ('1173', '1566870925', '第二十六章，风起云涌揽苍穹（下）', '/book/20190827/bfjlmnwxCDHOQSVY2479.json', '36');
INSERT INTO `pre_chapter` VALUES ('1174', '1566870925', '第二十七章，决战（上）', '/book/20190827/bfklpqtvxCEIMQVYZ458.json', '36');
INSERT INTO `pre_chapter` VALUES ('1175', '1566870925', '第二十八章，决战（中）', '/book/20190827/cegijkqwxAFKLNUW1245.json', '36');
INSERT INTO `pre_chapter` VALUES ('1176', '1566870925', '第二十九章，决战（下）', '/book/20190827/adhinorsyzEFLMNOUV24.json', '36');
INSERT INTO `pre_chapter` VALUES ('1177', '1566870925', '第三十章，村子的怪事（上）', '/book/20190827/abhirswxEHJOSZ145689.json', '36');
INSERT INTO `pre_chapter` VALUES ('1178', '1566870925', '第三十一章，村子里的怪事（下）', '/book/20190827/bcehjqrtuDJPQSZ02359.json', '36');
INSERT INTO `pre_chapter` VALUES ('1179', '1566870925', '第三十二章，妙手仁心大小姐（1）', '/book/20190827/fjknopsuvyzABEGJR139.json', '36');
INSERT INTO `pre_chapter` VALUES ('1180', '1566870925', '第三十三章，妙手仁心大小姐（2）', '/book/20190827/ablpquzBCEJKQRTVY679.json', '36');
INSERT INTO `pre_chapter` VALUES ('1181', '1566870925', '第三十四章，妙手仁心大小姐（3）', '/book/20190827/ademnopxCIMOPRS06789.json', '36');
INSERT INTO `pre_chapter` VALUES ('1182', '1566870925', '第三十五章，妙手仁心大小姐（4）', '/book/20190827/befgjmvzADHJMNQRS258.json', '36');
INSERT INTO `pre_chapter` VALUES ('1183', '1566870925', '第三十六章，妙手仁心大小姐（5）', '/book/20190827/acfiopqrvyCFMQU02357.json', '36');
INSERT INTO `pre_chapter` VALUES ('1184', '1566870925', '第三十七章，妙手仁心大小姐（6）', '/book/20190827/bilnrtuzALQUVWXYZ289.json', '36');
INSERT INTO `pre_chapter` VALUES ('1185', '1566870925', '第三十八章，妙手仁心大小姐（7）', '/book/20190827/fikmrvDGIOPTUWXY4589.json', '36');
INSERT INTO `pre_chapter` VALUES ('1186', '1566870925', '第三十九章，妙手仁心大小姐（8）', '/book/20190827/defgiknpxCFHIKNPQY79.json', '36');
INSERT INTO `pre_chapter` VALUES ('1187', '1566870925', '第四十章，美名天下谁怎比，江湖风波枫林中。', '/book/20190827/cdklowzADGMQSUX12569.json', '36');
INSERT INTO `pre_chapter` VALUES ('1188', '1566870925', '第四十一章，四海扬名江湖路，枫林栈前无数澜', '/book/20190827/achijnpruBCDEOQT2478.json', '36');
INSERT INTO `pre_chapter` VALUES ('1189', '1566870925', '第42章，神琴声乐问英雄，英雄岂非无敌手', '/book/20190827/bcefqrsxBKLMOPQRWX45.json', '36');
INSERT INTO `pre_chapter` VALUES ('1190', '1566870925', '第43章，九霄云动掀风浪，连夜飓风人神动', '/book/20190827/dfiotuvCFHMNQTXY0124.json', '36');
INSERT INTO `pre_chapter` VALUES ('1191', '1566870925', '第44章，长河落日对长歌，夜来风雨千里路。（上）', '/book/20190827/giklnptxzCDPTUVWY489.json', '36');
INSERT INTO `pre_chapter` VALUES ('1192', '1566870925', '第四十五章，长河落日对长歌，夜来风雨千里路（下）', '/book/20190827/bfhiqrtCDFHLOPQU1357.json', '36');
INSERT INTO `pre_chapter` VALUES ('1193', '1566870925', '第46章，夜幕星河各现艺，篝火欢歌染红尘。', '/book/20190827/achioprsxADHNQUVW037.json', '36');
INSERT INTO `pre_chapter` VALUES ('1194', '1566870925', '第47章，剑侠夜探铸剑庄，巧遇高手败伤回。', '/book/20190827/bcgjkoptABEINQRW5789.json', '36');
INSERT INTO `pre_chapter` VALUES ('1195', '1566870925', '第49章，游江观澜得知己，血色夜色惊魂去', '/book/20190827/cnostvzDFKMPRVWXZ025.json', '36');
INSERT INTO `pre_chapter` VALUES ('1196', '1566870925', '第50章，风云际会铸剑庄，汤女钟情候翊昆。（上）', '/book/20190827/begklnuABCHIMTWY2367.json', '36');
INSERT INTO `pre_chapter` VALUES ('1197', '1566870925', '第51章，风云际会铸剑庄，汤女钟情候翊昆（中）', '/book/20190827/egjkmpuyFIJKLUWZ1679.json', '36');
INSERT INTO `pre_chapter` VALUES ('1198', '1566870925', '第52章，风云际会铸剑庄，汤女钟情候翊昆（下）', '/book/20190827/bcefopvAHKOSVWX24789.json', '36');
INSERT INTO `pre_chapter` VALUES ('1199', '1566870925', '第53章，万里飘渺情剑路，江湖处处锋芒生。（上）', '/book/20190827/cfgjlmnpuEFIPSVX1247.json', '36');
INSERT INTO `pre_chapter` VALUES ('1200', '1566870925', '第54章，万里飘渺情剑路，江湖处处锋芒生。（中）', '/book/20190827/cghirCDEFGHJMUXZ2378.json', '36');
INSERT INTO `pre_chapter` VALUES ('1201', '1566870925', '第55章，万里飘渺情剑路，江湖处处锋芒生。（下）', '/book/20190827/efikoprwAHKRTUVW0246.json', '36');
INSERT INTO `pre_chapter` VALUES ('1202', '1566870925', '第56章，飘离千山与君往，三劫六灾问情心。', '/book/20190827/acfoqrstuxADHIKNXYZ9.json', '36');
INSERT INTO `pre_chapter` VALUES ('1203', '1566870925', '第57章，劫难重重处处煞，情侣剑仙论趋势。', '/book/20190827/fkpqACDEMNOQTWXZ2689.json', '36');
INSERT INTO `pre_chapter` VALUES ('1204', '1566870925', '第58章，仙侣再现人间道，情剑博弈净月谷。', '/book/20190827/acdlmqwxyFGIJRUX0178.json', '36');
INSERT INTO `pre_chapter` VALUES ('1205', '1566870925', '第59章，酒寮杀机染斜阳 ，千浩劫难夜赶路。', '/book/20190827/npqswxADEFHJMNQTU578.json', '36');
INSERT INTO `pre_chapter` VALUES ('1206', '1566870925', '第60章，神琴护卫寻主。', '/book/20190827/hjklmqvwzAHMNORST138.json', '36');
INSERT INTO `pre_chapter` VALUES ('1207', '1566870925', '第61章，江湖人海茫茫 ，秋风瑟瑟寒夜。', '/book/20190827/acfgjsvwxyDGLPSTYZ14.json', '36');
INSERT INTO `pre_chapter` VALUES ('1208', '1566870925', '第61章 ，剑侠崛起啸神州。（1）', '/book/20190827/abcdegilpwzBGHKSTU02.json', '36');
INSERT INTO `pre_chapter` VALUES ('1209', '1566870925', '第62章，剑侠崛起啸神州（2）', '/book/20190827/efinsvxzEFGJRTVW0456.json', '36');
INSERT INTO `pre_chapter` VALUES ('1210', '1566870925', '第63章，剑侠崛起啸神州（3）', '/book/20190827/bijmnquCEFGHKLMPTU02.json', '36');
INSERT INTO `pre_chapter` VALUES ('1211', '1566870925', '第64章，剑侠崛起啸神州（4）', '/book/20190827/aglmrsEFGILMNPTUXY39.json', '36');
INSERT INTO `pre_chapter` VALUES ('1212', '1566870925', '第65章，剑侠崛起啸神州（5）', '/book/20190827/cmnsuwxyAEIKLTVWZ568.json', '36');
INSERT INTO `pre_chapter` VALUES ('1213', '1566870925', '第66章，剑侠崛起啸神州（6）', '/book/20190827/adfjkmqrtuvBEHLQRZ18.json', '36');
INSERT INTO `pre_chapter` VALUES ('1214', '1566870925', '第67章，剑侠崛起啸神州（6）', '/book/20190827/ehlqruyCDFINQXYZ0568.json', '36');
INSERT INTO `pre_chapter` VALUES ('1215', '1566870925', '第68章，剑侠崛起啸神州（7）', '/book/20190827/jlmntvzACDEILMNRWY04.json', '36');
INSERT INTO `pre_chapter` VALUES ('1216', '1566870925', '第69章，剑侠崛起啸神州（8）', '/book/20190827/cgoqstCDHJNQRTUV0247.json', '36');
INSERT INTO `pre_chapter` VALUES ('1217', '1566870925', '第70章，剑侠崛起啸神州（9）', '/book/20190827/dirsvyCDEKLNOSTUZ456.json', '36');
INSERT INTO `pre_chapter` VALUES ('1218', '1566870925', '第71章，剑侠崛起啸神州（10）', '/book/20190827/bdjknotADHJMOTUVX459.json', '36');
INSERT INTO `pre_chapter` VALUES ('1219', '1566870925', '第72章，剑侠崛起啸神州（11）', '/book/20190827/afgijkpxyCFHKLOQY469.json', '36');
INSERT INTO `pre_chapter` VALUES ('1220', '1566870925', '第73章，剑侠崛起啸神州（12）', '/book/20190827/bfgjpstuADFHIJKNOQW1.json', '36');
INSERT INTO `pre_chapter` VALUES ('1221', '1566871032', '第一章 要我送死？', '/book/20190827/cfmpsvwzACFGJLMPY245.json', '37');
INSERT INTO `pre_chapter` VALUES ('1222', '1566871032', '第二章 师父吃人？', '/book/20190827/cfikqsuwBDFGHILNRSU3.json', '37');
INSERT INTO `pre_chapter` VALUES ('1223', '1566871032', '第三章 秒杀恶徒', '/book/20190827/ijrtvyGJMOQSTVWYZ269.json', '37');
INSERT INTO `pre_chapter` VALUES ('1224', '1566871032', '第四章 主谋是大侠？', '/book/20190827/acjmortvxACFJMQUVWZ2.json', '37');
INSERT INTO `pre_chapter` VALUES ('1225', '1566871032', '第五章 偷袭得逞', '/book/20190827/ajlqvzGHIMQSVZ235679.json', '37');
INSERT INTO `pre_chapter` VALUES ('1226', '1566871032', '第六章 天下第一名医', '/book/20190827/bdhovzBDERTVWXY01569.json', '37');
INSERT INTO `pre_chapter` VALUES ('1227', '1566871032', '第七章 三师弟汪宏牛', '/book/20190827/jmnquzCGHMOPSX012469.json', '37');
INSERT INTO `pre_chapter` VALUES ('1228', '1566871032', '第八章 温热之气', '/book/20190827/adegijltCDFNRTUXY159.json', '37');
INSERT INTO `pre_chapter` VALUES ('1229', '1566871032', '第九章 擅自行动', '/book/20190827/bdglmqswzIKMOQS04689.json', '37');
INSERT INTO `pre_chapter` VALUES ('1230', '1566871032', '第十章 痛打汪宏牛', '/book/20190827/bgimnrBHIKNOUVWZ0169.json', '37');
INSERT INTO `pre_chapter` VALUES ('1231', '1566871032', '第十一章 小师妹的冤魂', '/book/20190827/hjuzBGHJMNOPSTUX1348.json', '37');
INSERT INTO `pre_chapter` VALUES ('1232', '1566871032', '第十二章 封五娘的传说', '/book/20190827/joprswEFGKQSWYZ02346.json', '37');
INSERT INTO `pre_chapter` VALUES ('1233', '1566871032', '第十三章 饶她一命', '/book/20190827/bcdghjknCEIJLOQVWY05.json', '37');
INSERT INTO `pre_chapter` VALUES ('1234', '1566871032', '第十四章 最恶毒的女人', '/book/20190827/cgjqswyBEKNPTZ123568.json', '37');
INSERT INTO `pre_chapter` VALUES ('1235', '1566871032', '第十五章 姐弟', '/book/20190827/degjmsvwyBCLSTZ01258.json', '37');
INSERT INTO `pre_chapter` VALUES ('1236', '1566871032', '第十六章 “狂暴之镰”欧阳凯', '/book/20190827/bcefhvEFHIKNQSTVZ278.json', '37');
INSERT INTO `pre_chapter` VALUES ('1237', '1566871032', '第十七章 鬼头令', '/book/20190827/fghijnoqvxDFGIKOUWX0.json', '37');
INSERT INTO `pre_chapter` VALUES ('1238', '1566871032', '第十八章 元督二圣', '/book/20190827/aegjnoqsuBEFLUXY0348.json', '37');
INSERT INTO `pre_chapter` VALUES ('1239', '1566871032', '第十九章 苍柴师叔', '/book/20190827/afkostyEGHJKLOQUWXZ5.json', '37');
INSERT INTO `pre_chapter` VALUES ('1240', '1566871032', '第二十章 上一代的恩怨', '/book/20190827/hilrtvwxzABDGKOQTVY4.json', '37');
INSERT INTO `pre_chapter` VALUES ('1241', '1566871032', '第二十一章 四师弟宋情叔', '/book/20190827/abehmvwxABGHIMQVX036.json', '37');
INSERT INTO `pre_chapter` VALUES ('1242', '1566871032', '第二十二章 四大侍从', '/book/20190827/bcflmnprsuwzDEWZ4567.json', '37');
INSERT INTO `pre_chapter` VALUES ('1243', '1566871032', '第二十三章 林冰灵出现', '/book/20190827/ghijnstvyzCEFGORTZ25.json', '37');
INSERT INTO `pre_chapter` VALUES ('1244', '1566871032', '第二十四章 不是对手', '/book/20190827/aptvABKLMTUVXY014568.json', '37');
INSERT INTO `pre_chapter` VALUES ('1245', '1566871032', '第二十五章 惊天逆转', '/book/20190827/egjnoqvxyACGHNVWY026.json', '37');
INSERT INTO `pre_chapter` VALUES ('1246', '1566871032', '第二十六章 方敏之死', '/book/20190827/fiknostxABHIQSVWZ026.json', '37');
INSERT INTO `pre_chapter` VALUES ('1247', '1566871032', '第二十七章 岳铃儿的水', '/book/20190827/agimrtxyDFHJKNSUXZ23.json', '37');
INSERT INTO `pre_chapter` VALUES ('1248', '1566871032', '第二十八章 苍行健中毒', '/book/20190827/aegimntyFGLNQUXZ0126.json', '37');
INSERT INTO `pre_chapter` VALUES ('1249', '1566871032', '第二十九章 江南黑狮帮', '/book/20190827/bdehijlpqtzBJQRVW267.json', '37');
INSERT INTO `pre_chapter` VALUES ('1250', '1566871032', '第三十章 地灵老人', '/book/20190827/befghijnswxzAKOPUW46.json', '37');
INSERT INTO `pre_chapter` VALUES ('1251', '1566871032', '第三十一章 苍天月的女儿', '/book/20190827/bcdlpqtAGKLOQRTVWZ68.json', '37');
INSERT INTO `pre_chapter` VALUES ('1252', '1566871032', '第三十二章 出场即秒杀', '/book/20190827/bdlqstwACFGHJKMNWY45.json', '37');
INSERT INTO `pre_chapter` VALUES ('1253', '1566871032', '第三十三章 继承我的衣钵', '/book/20190827/ejnsvwxBEJLPQWXY4689.json', '37');
INSERT INTO `pre_chapter` VALUES ('1254', '1566871032', '第三十四章 银枪点喉', '/book/20190827/bcklnoruwEGHMNPTW458.json', '37');
INSERT INTO `pre_chapter` VALUES ('1255', '1566871032', '第三十五章 古月十六刀', '/book/20190827/aejnquyEFGJMQSWY0157.json', '37');
INSERT INTO `pre_chapter` VALUES ('1256', '1566871032', '第三十六章 噩多斯城', '/book/20190827/bcdefgklrvwABDGLP029.json', '37');
INSERT INTO `pre_chapter` VALUES ('1257', '1566871032', '第三十七章 傲杀仇人', '/book/20190827/dfghnpvxyzCJLOQRTVY1.json', '37');
INSERT INTO `pre_chapter` VALUES ('1258', '1566871032', '第三十八章 毒人沈魂', '/book/20190827/egorstyCEIJMPQRV1469.json', '37');
INSERT INTO `pre_chapter` VALUES ('1259', '1566871032', '第三十九章 唐小箐的母亲', '/book/20190827/alnqsvwABCILMRTUVW07.json', '37');
INSERT INTO `pre_chapter` VALUES ('1260', '1566871032', '第四十章 孤雪之雪', '/book/20190827/bcehjklquwxzDGHMPQY0.json', '37');
INSERT INTO `pre_chapter` VALUES ('1261', '1566871032', '第四十一章 暗器大师', '/book/20190827/acefgjlosyzACDGHMRY4.json', '37');
INSERT INTO `pre_chapter` VALUES ('1262', '1566871032', '第四十二章 无可辩解', '/book/20190827/enorABDFGMRTWXY01368.json', '37');
INSERT INTO `pre_chapter` VALUES ('1263', '1566871032', '第四十三章 卑鄙的狂神纹', '/book/20190827/acelorsCIJKNOQUVWZ56.json', '37');
INSERT INTO `pre_chapter` VALUES ('1264', '1566871032', '第四十四章 吴晴与赵钩', '/book/20190827/deijmrstxyzAQRUVW359.json', '37');
INSERT INTO `pre_chapter` VALUES ('1265', '1566871032', '第四十五章 逐个击破', '/book/20190827/acdehikuxEGQRSUVY059.json', '37');
INSERT INTO `pre_chapter` VALUES ('1266', '1566871032', '第四十六章 叶家飞镖', '/book/20190827/cdfghnvwzDJKLNPTXZ16.json', '37');
INSERT INTO `pre_chapter` VALUES ('1267', '1566871032', '第四十七章 四大凶官', '/book/20190827/aegkopqrCFHLMQRUV679.json', '37');
INSERT INTO `pre_chapter` VALUES ('1268', '1566871120', '第一章 沉香酒馆', '/book/20190827/cfloptvxyCFGIKLO0378.json', '38');
INSERT INTO `pre_chapter` VALUES ('1269', '1566871120', '第二章 擎天剑', '/book/20190827/bchkrstwxyKMNPRU0689.json', '38');
INSERT INTO `pre_chapter` VALUES ('1270', '1566871120', '第三章 老烟鬼', '/book/20190827/deilpqAEGKLNOPUWZ578.json', '38');
INSERT INTO `pre_chapter` VALUES ('1271', '1566871120', '第四章 拉贺礼的骡车', '/book/20190827/cghnoszBEGHLNOPRXY38.json', '38');
INSERT INTO `pre_chapter` VALUES ('1272', '1566871120', '第五章 座上贵宾', '/book/20190827/abkmotuvxBCEISTUVX39.json', '38');
INSERT INTO `pre_chapter` VALUES ('1273', '1566871120', '第六章 白鹤的债簿', '/book/20190827/gjmotwyCFHJMNPRT0346.json', '38');
INSERT INTO `pre_chapter` VALUES ('1274', '1566871120', '第七章 局中妙计', '/book/20190827/bgkmotDEFGIJMNPQZ259.json', '38');
INSERT INTO `pre_chapter` VALUES ('1275', '1566871120', '第八章 谁该赔钱？', '/book/20190827/cfijqtuwyCGIMPSV0123.json', '38');
INSERT INTO `pre_chapter` VALUES ('1276', '1566871120', '第九章 袖底红漆', '/book/20190827/cfghryzACEGHJOPWX258.json', '38');
INSERT INTO `pre_chapter` VALUES ('1277', '1566871120', '第十章 互相猜忌', '/book/20190827/abgjklpstxBDEJNUY258.json', '38');
INSERT INTO `pre_chapter` VALUES ('1278', '1566871120', '第十一章 借刀杀人', '/book/20190827/abkruwzABGHILQRVWYZ2.json', '38');
INSERT INTO `pre_chapter` VALUES ('1279', '1566871120', '第十二章 洗清了嫌疑', '/book/20190827/abcfpqwyzEKNPRSVWZ35.json', '38');
INSERT INTO `pre_chapter` VALUES ('1280', '1566871120', '第十三章 天公不作美', '/book/20190827/abfnptuvABCEHJMNSTZ6.json', '38');
INSERT INTO `pre_chapter` VALUES ('1281', '1566871120', '第十四章 有奸细！', '/book/20190827/ceiloprvBDEGJKNRT167.json', '38');
INSERT INTO `pre_chapter` VALUES ('1282', '1566871120', '第十五章 一把蹊跷的火', '/book/20190827/dijkrwABEHJLNQSTVW38.json', '38');
INSERT INTO `pre_chapter` VALUES ('1283', '1566871120', '第十六章 定心丸', '/book/20190827/bgiklmnzBHJNQRU01478.json', '38');
INSERT INTO `pre_chapter` VALUES ('1284', '1566871120', '第十七章 丧门斧', '/book/20190827/cditvwzBCFKLNSUY2346.json', '38');
INSERT INTO `pre_chapter` VALUES ('1285', '1566871120', '第十八章 猜对了！', '/book/20190827/deijpqwEHIMNPUV12568.json', '38');
INSERT INTO `pre_chapter` VALUES ('1286', '1566871120', '第十九章 暧昧关系', '/book/20190827/dfrvwzDFIOPSTUWY2357.json', '38');
INSERT INTO `pre_chapter` VALUES ('1287', '1566871120', '第二一章 一出好戏', '/book/20190827/fglpuvwyDGHJKPRUXYZ6.json', '38');
INSERT INTO `pre_chapter` VALUES ('1288', '1566871120', '第二二章 原地倒下去！', '/book/20190827/bdgijprsxEFJSUZ02389.json', '38');
INSERT INTO `pre_chapter` VALUES ('1289', '1566871120', '第二三章 猫爷', '/book/20190827/bchjlopruxzDGJUV2348.json', '38');
INSERT INTO `pre_chapter` VALUES ('1290', '1566871120', '第二四章 空头银票', '/book/20190827/abfhjmoyDELOTVWYZ018.json', '38');
INSERT INTO `pre_chapter` VALUES ('1291', '1566871120', '第二五章 灰太浪', '/book/20190827/cdefhimopuyAEIJOY579.json', '38');
INSERT INTO `pre_chapter` VALUES ('1292', '1566871120', '第二六章 卖关子', '/book/20190827/befgiktvzBEJKQRTVY89.json', '38');
INSERT INTO `pre_chapter` VALUES ('1293', '1566871120', '第二七章 告状', '/book/20190827/dlstwxyADFKMOQRUV018.json', '38');
INSERT INTO `pre_chapter` VALUES ('1294', '1566871120', '第二八章 气氛紧张！', '/book/20190827/ijoqwyCEFGHIKTVW2457.json', '38');
INSERT INTO `pre_chapter` VALUES ('1295', '1566871120', '第二九章 串通一气', '/book/20190827/jopruyABJOPUV0234567.json', '38');
INSERT INTO `pre_chapter` VALUES ('1296', '1566871120', '第三十章 最佳人选', '/book/20190827/cdgiortuwyAEHKMP2468.json', '38');
INSERT INTO `pre_chapter` VALUES ('1297', '1566871120', '第三一章 大脑袋', '/book/20190827/cdfhjlnsvyEGMOV12567.json', '38');
INSERT INTO `pre_chapter` VALUES ('1298', '1566871120', '第三三章 切割部位', '/book/20190827/ceimqstxABDKMQRUZ578.json', '38');
INSERT INTO `pre_chapter` VALUES ('1299', '1566871120', '第三四章 杀鸡焉用牛刀', '/book/20190827/bfgjnrwzABEGPSTUW157.json', '38');
INSERT INTO `pre_chapter` VALUES ('1300', '1566871120', '第三五章 上门交易', '/book/20190827/cdfhiknptvDINQRTWZ89.json', '38');
INSERT INTO `pre_chapter` VALUES ('1301', '1566871120', '第三六章 借题发挥', '/book/20190827/acdestuvwyFHIKLMNZ37.json', '38');
INSERT INTO `pre_chapter` VALUES ('1302', '1566871120', '第三七章 高明', '/book/20190827/befgipquwBDJKMOW1237.json', '38');
INSERT INTO `pre_chapter` VALUES ('1303', '1566871120', '第三八章 安全感', '/book/20190827/behnoqrtyGHNQUYZ0169.json', '38');
INSERT INTO `pre_chapter` VALUES ('1304', '1566871120', '第三九章 变态', '/book/20190827/cimqtuvyBCJNQRUWZ019.json', '38');
INSERT INTO `pre_chapter` VALUES ('1305', '1566871120', '第四十章 掉包', '/book/20190827/bdglmsuvyABHMRUZ0128.json', '38');
INSERT INTO `pre_chapter` VALUES ('1306', '1566871120', '第四一章 没有意见', '/book/20190827/dhlmrsvxCDIJLOWX0189.json', '38');
INSERT INTO `pre_chapter` VALUES ('1307', '1566871120', '第四二章 剑拔弩张', '/book/20190827/aiklnruyABFKMNPWXY04.json', '38');
INSERT INTO `pre_chapter` VALUES ('1308', '1566871120', '第四三章 声东击西', '/book/20190827/ainoqsxyzFIJKMPQSV57.json', '38');
INSERT INTO `pre_chapter` VALUES ('1309', '1566871120', '第四四章 防不胜防', '/book/20190827/cfgijklqxDFGJKPUVY26.json', '38');
INSERT INTO `pre_chapter` VALUES ('1310', '1566871120', '第四五章 卖麦芽糖的小贩', '/book/20190827/bcfhmoqtvzIKLNRVYZ47.json', '38');
INSERT INTO `pre_chapter` VALUES ('1311', '1566871120', '第四六章 反客为主', '/book/20190827/afotvwzBDLMQVWZ12358.json', '38');
INSERT INTO `pre_chapter` VALUES ('1312', '1566871120', '第四七章 可疑的独轮车', '/book/20190827/ckoswxzDFGILOSX24789.json', '38');
INSERT INTO `pre_chapter` VALUES ('1313', '1566871120', '第四八章 点穴手法', '/book/20190827/bjlmnryBEFGJNOWX0249.json', '38');
INSERT INTO `pre_chapter` VALUES ('1314', '1566871120', '第四九章 提出保证', '/book/20190827/lpswxzABGHKSTXY02456.json', '38');
INSERT INTO `pre_chapter` VALUES ('1315', '1566871120', '第五十章 营救行动', '/book/20190827/bcdemnpswBFOSUVWY047.json', '38');
INSERT INTO `pre_chapter` VALUES ('1316', '1566871120', '第五一章 小毛贼 大卧底', '/book/20190827/abdhklstyzEHJKNSTVY0.json', '38');
INSERT INTO `pre_chapter` VALUES ('1317', '1566871120', '第五二章 郎中贾菩萨', '/book/20190827/bikmuxEHMOPQSVWX3789.json', '38');
INSERT INTO `pre_chapter` VALUES ('1318', '1566871120', '第五三章 表演节目', '/book/20190827/cegjkluyADFJQUVYZ147.json', '38');
INSERT INTO `pre_chapter` VALUES ('1319', '1566871120', '第五四章 药方上的破绽', '/book/20190827/acqstuvwxyBEMRVXZ368.json', '38');
INSERT INTO `pre_chapter` VALUES ('1320', '1566871120', '第五五章 阔佬', '/book/20190827/cdfiqtxyBDGKQUX24578.json', '38');
INSERT INTO `pre_chapter` VALUES ('1321', '1566871120', '第五六章 皮货商', '/book/20190827/ahruvwxDGHLNQSTW0569.json', '38');
INSERT INTO `pre_chapter` VALUES ('1322', '1566871120', '第五八章 一拳打脸', '/book/20190827/cfknpszDHMNQRWYZ2348.json', '38');
INSERT INTO `pre_chapter` VALUES ('1323', '1566871120', '第五九章 装哑巴', '/book/20190827/dgilnqtvAEFJPRSV2367.json', '38');
INSERT INTO `pre_chapter` VALUES ('1324', '1566871120', '第六十章 好奇心害死猫', '/book/20190827/cdfjtwxCDEGIMOU25789.json', '38');
INSERT INTO `pre_chapter` VALUES ('1325', '1566871120', '第六一章 受处分', '/book/20190827/cdijntxzFHMNQRUV1289.json', '38');
INSERT INTO `pre_chapter` VALUES ('1326', '1566871120', '第六二章 裙下之臣', '/book/20190827/abfhmoqtwxGIKLORZ025.json', '38');
INSERT INTO `pre_chapter` VALUES ('1327', '1566871120', '第六三章 纸条', '/book/20190827/acdknortuzAHLSVXZ347.json', '38');
INSERT INTO `pre_chapter` VALUES ('1328', '1566871120', '第六四章 身份公开', '/book/20190827/ghjlorzBDNPRUV234567.json', '38');
INSERT INTO `pre_chapter` VALUES ('1329', '1566871120', '第六五章 客栈外的老叫化', '/book/20190827/acejsuvwzHIJNPSVX025.json', '38');
INSERT INTO `pre_chapter` VALUES ('1330', '1566871120', '第六六章 临时搭档', '/book/20190827/beijlnrsyzABCHPTUVY5.json', '38');
INSERT INTO `pre_chapter` VALUES ('1331', '1566871120', '第六七章 希望破灭', '/book/20190827/bdghjloqrsvCDHILU078.json', '38');
INSERT INTO `pre_chapter` VALUES ('1332', '1566871120', '第六八章 小事情', '/book/20190827/bdoqruxBCFHJOSUVW458.json', '38');
INSERT INTO `pre_chapter` VALUES ('1333', '1566871120', '第七十章 萧长老', '/book/20190827/aefghouxyBCGHNQRTY38.json', '38');
INSERT INTO `pre_chapter` VALUES ('1334', '1566871120', '第七一章 慢慢吃面', '/book/20190827/cgjpqCFHJKLMNOTY1469.json', '38');
INSERT INTO `pre_chapter` VALUES ('1335', '1566871120', '第七二章 假药', '/book/20190827/ijlntuvzACGILQYZ0357.json', '38');
INSERT INTO `pre_chapter` VALUES ('1336', '1566871120', '第七三章 通便丸', '/book/20190827/gkprtuzBFGKLPWXYZ237.json', '38');
INSERT INTO `pre_chapter` VALUES ('1337', '1566871120', '第七四章 走错了路', '/book/20190827/acfhjkloptyJKMNOSZ26.json', '38');
INSERT INTO `pre_chapter` VALUES ('1338', '1566871120', '第七五章 趁虚而入', '/book/20190827/acmqstzCEOPSTWXY0469.json', '38');
INSERT INTO `pre_chapter` VALUES ('1339', '1566871120', '第七六章 对弈', '/book/20190827/ghikstABDFLNOPQY1567.json', '38');
INSERT INTO `pre_chapter` VALUES ('1340', '1566871120', '第七七章 甘拜下风', '/book/20190827/eijpqrtwzBDGHJLO1268.json', '38');
INSERT INTO `pre_chapter` VALUES ('1341', '1566871120', '第七八章 瓮中之鳖', '/book/20190827/achpqstwxyzCFNXZ0345.json', '38');
INSERT INTO `pre_chapter` VALUES ('1342', '1566871120', '第七九章 真刺激', '/book/20190827/adgkloprvyBEFHINUWY2.json', '38');
INSERT INTO `pre_chapter` VALUES ('1343', '1566871120', '第八十章 粉红罗刹钩吻花【本卷完】', '/book/20190827/acefghklrsvzCGNSVW36.json', '38');
INSERT INTO `pre_chapter` VALUES ('1344', '1566871900', '第1章. 王后薨逝', '/book/20190827/ejlostuzEFGORX235679.json', '39');
INSERT INTO `pre_chapter` VALUES ('1345', '1566871900', '第2章. 出宫', '/book/20190827/acfhjmtuvHINQTUXYZ16.json', '39');
INSERT INTO `pre_chapter` VALUES ('1346', '1566871900', '第3章. 妖孽', '/book/20190827/cdlpvwxDFGOPQUWZ0579.json', '39');
INSERT INTO `pre_chapter` VALUES ('1347', '1566871900', '第4章. 傀儡尸', '/book/20190827/dfijkoptxzBCEHOS1457.json', '39');
INSERT INTO `pre_chapter` VALUES ('1348', '1566871900', '第5章. 兵临城下', '/book/20190827/abfgilmrtxBCFGIJTUW5.json', '39');
INSERT INTO `pre_chapter` VALUES ('1349', '1566871900', '第6章. 夔皮战鼓魔音铃', '/book/20190827/afhinprzBGKLNPQRTX49.json', '39');
INSERT INTO `pre_chapter` VALUES ('1350', '1566871900', '第7章. 知微辨听术', '/book/20190827/bdkntvxzBCDGHISVXY07.json', '39');
INSERT INTO `pre_chapter` VALUES ('1351', '1566871900', '第8章. 火系神脉', '/book/20190827/abceijnswDGHKNWY3689.json', '39');
INSERT INTO `pre_chapter` VALUES ('1352', '1566871900', '第9章. 引来天火 （求投资求推荐）', '/book/20190827/abefiknprwAEHSTWX569.json', '39');
INSERT INTO `pre_chapter` VALUES ('1353', '1566871900', '第10章. 天女子献', '/book/20190827/eijqrsuxyABEFHRT2369.json', '39');
INSERT INTO `pre_chapter` VALUES ('1354', '1566871900', '第11章. 不学无术', '/book/20190827/hiwABCHIKLMSTUVZ5679.json', '39');
INSERT INTO `pre_chapter` VALUES ('1355', '1566871900', '第12章. 魂兵', '/book/20190827/cdfhjlmquDEGIPQRT012.json', '39');
INSERT INTO `pre_chapter` VALUES ('1356', '1566871900', '第13章. 入土为安', '/book/20190827/acklqrsuwBDEHKMQUW67.json', '39');
INSERT INTO `pre_chapter` VALUES ('1357', '1566871900', '第14章. 宫散', '/book/20190827/adehinuwzDEHSWXY0236.json', '39');
INSERT INTO `pre_chapter` VALUES ('1358', '1566871900', '第15章. 希望', '/book/20190827/ahiklprABFHIMNPQTVY9.json', '39');
INSERT INTO `pre_chapter` VALUES ('1359', '1566871900', '第16章. 突围', '/book/20190827/bcfgrszDEILMQUXYZ237.json', '39');
INSERT INTO `pre_chapter` VALUES ('1360', '1566871900', '第17章. 生路', '/book/20190827/abcnpsuBCGIJLPRTXZ39.json', '39');
INSERT INTO `pre_chapter` VALUES ('1361', '1566871900', '第18章. 祸水', '/book/20190827/cfhklsuyBINOUVZ04579.json', '39');
INSERT INTO `pre_chapter` VALUES ('1362', '1566871900', '第19章. 折辱', '/book/20190827/ijlmoptuBJLMTVXZ4679.json', '39');
INSERT INTO `pre_chapter` VALUES ('1363', '1566871900', '第20章. 不屈的勇士', '/book/20190827/ejlmuyABCGOQTXYZ1789.json', '39');
INSERT INTO `pre_chapter` VALUES ('1364', '1566871900', '第21章. 毒誓', '/book/20190827/beghjknrsvxADGSTV015.json', '39');
INSERT INTO `pre_chapter` VALUES ('1365', '1566871900', '第22章. 沙尘暴', '/book/20190827/acdegjlrvxACGIJN1368.json', '39');
INSERT INTO `pre_chapter` VALUES ('1366', '1566871900', '第23章. 蓝衣女', '/book/20190827/bchjmopsyzBEFJUWZ146.json', '39');
INSERT INTO `pre_chapter` VALUES ('1367', '1566871900', '第24章. 古朵儿', '/book/20190827/egikrwDFMPRUWX012346.json', '39');
INSERT INTO `pre_chapter` VALUES ('1368', '1566871900', '第25章. 美女的假面', '/book/20190827/efknqstwDFJMOQUZ0345.json', '39');
INSERT INTO `pre_chapter` VALUES ('1369', '1566871900', '第26章. 毒舌姑娘的故事', '/book/20190827/bchjmorsACENOQRUY389.json', '39');
INSERT INTO `pre_chapter` VALUES ('1370', '1566871900', '第27章. 冥魔', '/book/20190827/adfgjknpqrtvyAEPTU05.json', '39');
INSERT INTO `pre_chapter` VALUES ('1371', '1566871900', '第28章. 图音城', '/book/20190827/acdhlmtCEGIKNTU35679.json', '39');
INSERT INTO `pre_chapter` VALUES ('1372', '1566871900', '第29章. 图音塔', '/book/20190827/bcdghkmyzADEHJMNRUY0.json', '39');
INSERT INTO `pre_chapter` VALUES ('1373', '1566871900', '第30章. 骨架', '/book/20190827/bdfhmnszCDEGHPWX0178.json', '39');
INSERT INTO `pre_chapter` VALUES ('1374', '1566871900', '第31章. 幻音', '/book/20190827/achjlpqrvzDFHNRTXZ47.json', '39');
INSERT INTO `pre_chapter` VALUES ('1375', '1566871900', '第32章. 机关', '/book/20190827/cdejkmopqwACEHLQUX68.json', '39');
INSERT INTO `pre_chapter` VALUES ('1376', '1566871900', '第33章. 地下工程', '/book/20190827/adimruxyAMOSTWYZ3568.json', '39');
INSERT INTO `pre_chapter` VALUES ('1377', '1566871900', '第34章. 内力', '/book/20190827/fhnoquvzBEGLOQTU1246.json', '39');
INSERT INTO `pre_chapter` VALUES ('1378', '1566871900', '第35章. 比试', '/book/20190827/abefklpqvwxAIKMNW478.json', '39');
INSERT INTO `pre_chapter` VALUES ('1379', '1566871900', '第36章. 吃人的访客', '/book/20190827/defgknrsuwzABIKPR589.json', '39');
INSERT INTO `pre_chapter` VALUES ('1380', '1566871900', '第37章. 众志成城', '/book/20190827/jltACDHJLMOQSTUY3589.json', '39');
INSERT INTO `pre_chapter` VALUES ('1381', '1566871900', '第38章. 瘴毒翁', '/book/20190827/deiklpstvDFIJNQRZ025.json', '39');
INSERT INTO `pre_chapter` VALUES ('1382', '1566871900', '第39章. 作戏', '/book/20190827/hjklwxyEHIJKMQRTVX48.json', '39');
INSERT INTO `pre_chapter` VALUES ('1383', '1566871900', '第40章. 心机', '/book/20190827/abdefjkruwyHIQTV4579.json', '39');
INSERT INTO `pre_chapter` VALUES ('1384', '1566871900', '第41章. 化骨手黑阎王', '/book/20190827/dfgimnosDINOWYZ34579.json', '39');
INSERT INTO `pre_chapter` VALUES ('1385', '1566871900', '第42章. 元炁碰撞', '/book/20190827/cfghjlmorvwyCEIOQS58.json', '39');
INSERT INTO `pre_chapter` VALUES ('1386', '1566871900', '第43章. 命运', '/book/20190827/befknqvwDFHIJKMRVXZ7.json', '39');
INSERT INTO `pre_chapter` VALUES ('1387', '1566871900', '第44章. 锻体', '/book/20190827/acdeptuvxABEFGIOZ157.json', '39');
INSERT INTO `pre_chapter` VALUES ('1388', '1566871900', '第45章. 师傅不靠谱', '/book/20190827/abcgikorsyABCKLOUW04.json', '39');
INSERT INTO `pre_chapter` VALUES ('1389', '1566871900', '第46章. 运炁', '/book/20190827/degijtDGHKNRUY134679.json', '39');
INSERT INTO `pre_chapter` VALUES ('1390', '1566871900', '第47章. 临核', '/book/20190827/abjqsxzACIRSTWXY0237.json', '39');
INSERT INTO `pre_chapter` VALUES ('1391', '1566871900', '第48章. 锻体的成果', '/book/20190827/cgijknopruxzAHLPRW69.json', '39');
INSERT INTO `pre_chapter` VALUES ('1392', '1566871900', '第49章. 逃亡计划', '/book/20190827/efgijrsvGHJLPRWY2567.json', '39');
INSERT INTO `pre_chapter` VALUES ('1393', '1566871900', '第50章. 地下通道', '/book/20190827/bdfgjktwBGIJKWXYZ135.json', '39');
INSERT INTO `pre_chapter` VALUES ('1394', '1566871900', '第51章. 妃子笑', '/book/20190827/abhjklmuvwHPRSUY0236.json', '39');
INSERT INTO `pre_chapter` VALUES ('1395', '1566872729', '序章 天命', '/book/20190827/abefgmnrvzIKMORVY134.json', '40');
INSERT INTO `pre_chapter` VALUES ('1396', '1566872729', '第一章 老僧与少年', '/book/20190827/djprtvwxyBEKRSUYZ058.json', '40');
INSERT INTO `pre_chapter` VALUES ('1397', '1566872729', '第二章 我的名字', '/book/20190827/aemrvyAEGHKLMPQTYZ45.json', '40');
INSERT INTO `pre_chapter` VALUES ('1398', '1566872729', '第三章 潮有信', '/book/20190827/bdefhjopquxAJPUVWZ18.json', '40');
INSERT INTO `pre_chapter` VALUES ('1399', '1566872729', '第四章 临安', '/book/20190827/aegilozAFKMNSVXZ0479.json', '40');
INSERT INTO `pre_chapter` VALUES ('1400', '1566872729', '第五章 古怪的跛脚少年', '/book/20190827/ceklpvxyDEFIJOPTWZ15.json', '40');
INSERT INTO `pre_chapter` VALUES ('1401', '1566872729', '第六章 为了好人去杀人', '/book/20190827/ahnopsuwxDLMNUVW3568.json', '40');
INSERT INTO `pre_chapter` VALUES ('1402', '1566872729', '第七章 吞圣天功，吞天魔功', '/book/20190827/bcmrxyFGHIJKNPQSYZ29.json', '40');
INSERT INTO `pre_chapter` VALUES ('1403', '1566872729', '第八章 吕思归与不协调的金像', '/book/20190827/cefikmrsxyAEORSY1237.json', '40');
INSERT INTO `pre_chapter` VALUES ('1404', '1566872729', '第九章 小怪物', '/book/20190827/chjklptuxyzAFGHPQZ23.json', '40');
INSERT INTO `pre_chapter` VALUES ('1405', '1566872729', '第十章 临安异事', '/book/20190827/dfghklpstuBFIMOVXZ57.json', '40');
INSERT INTO `pre_chapter` VALUES ('1406', '1566872729', '第十一章 原来我们一样', '/book/20190827/bijkloprstGJLNUWZ458.json', '40');
INSERT INTO `pre_chapter` VALUES ('1407', '1566872729', '第十二章 寻亲', '/book/20190827/fijkmotvwACIKMOTY056.json', '40');
INSERT INTO `pre_chapter` VALUES ('1408', '1566872729', '第十三章 山海阁', '/book/20190827/fjmptvzABCEHKOQWZ578.json', '40');
INSERT INTO `pre_chapter` VALUES ('1409', '1566872729', '第十四章 劫富济贫的侠盗', '/book/20190827/deijnopqBCDIMTUX2458.json', '40');
INSERT INTO `pre_chapter` VALUES ('1410', '1566872729', '第十五章 登秦府', '/book/20190827/bcdghouvHJKMRSVY0269.json', '40');
INSERT INTO `pre_chapter` VALUES ('1411', '1566872729', '第十六章 逼供的诱饵', '/book/20190827/agjklmopwBJLMPQSUZ19.json', '40');
INSERT INTO `pre_chapter` VALUES ('1412', '1566872729', '第十七章 悬赏', '/book/20190827/aefijknovJORSTYZ0359.json', '40');
INSERT INTO `pre_chapter` VALUES ('1413', '1566872729', '第十八章 神玉公子', '/book/20190827/agjknopqsBCELMNORX19.json', '40');
INSERT INTO `pre_chapter` VALUES ('1414', '1566872729', '第十九章 黑海玉令', '/book/20190827/aknoptxCDEFKNPQVX179.json', '40');
INSERT INTO `pre_chapter` VALUES ('1415', '1566872729', '第二十章 第七层地狱', '/book/20190827/bdjkmozBEJPVWY013567.json', '40');
INSERT INTO `pre_chapter` VALUES ('1416', '1566872729', '第二十一章 丧心病狂的地府', '/book/20190827/egkmortuwxyDIQTWXZ45.json', '40');
INSERT INTO `pre_chapter` VALUES ('1417', '1566872729', '第二十二章 刺杀与守护', '/book/20190827/efkloxBILNPQSTUVX189.json', '40');
INSERT INTO `pre_chapter` VALUES ('1418', '1566872729', '第二十三章 神行术', '/book/20190827/aeghoqvyADILNUYZ3459.json', '40');
INSERT INTO `pre_chapter` VALUES ('1419', '1566872729', '第二十四章 善意的谎言', '/book/20190827/btuvxGHIJKQTVYZ24578.json', '40');
INSERT INTO `pre_chapter` VALUES ('1420', '1566872729', '第二十五章 兄妹相逢，灰姑娘', '/book/20190827/ejoqsvxCEGIMPVXY2359.json', '40');
INSERT INTO `pre_chapter` VALUES ('1421', '1566872729', '第二十六章 没赶上家宴的哥', '/book/20190827/bdglrtuxABGKRTV45678.json', '40');
INSERT INTO `pre_chapter` VALUES ('1422', '1566872729', '第二十七章 不见血的复仇', '/book/20190827/acfjksyCEGHIKMNQR467.json', '40');
INSERT INTO `pre_chapter` VALUES ('1423', '1566872729', '第二十八章 血神', '/book/20190827/adfoqvwyHKLMQTWX0579.json', '40');
INSERT INTO `pre_chapter` VALUES ('1424', '1566872729', '第二十九章 王重阳', '/book/20190827/bchlnpuACDFHKLQSTX12.json', '40');
INSERT INTO `pre_chapter` VALUES ('1425', '1566872729', '第三十章 不死之体', '/book/20190827/ijnpqrsvwxFJPQ013689.json', '40');
INSERT INTO `pre_chapter` VALUES ('1426', '1566872729', '第三十一章 安心之地', '/book/20190827/abfhikvwIKMOPQTWXYZ5.json', '40');
INSERT INTO `pre_chapter` VALUES ('1427', '1566872729', '第三十二章 血神的秘密', '/book/20190827/ghkpsuvwDHJNPRSXY249.json', '40');
INSERT INTO `pre_chapter` VALUES ('1428', '1566872729', '第三十三章 群魔至', '/book/20190827/bhnstuvwACQUVZ123489.json', '40');
INSERT INTO `pre_chapter` VALUES ('1429', '1566872729', '第三十三章 十天人', '/book/20190827/bcefjprxCFKORSWXY159.json', '40');
INSERT INTO `pre_chapter` VALUES ('1430', '1566872729', '第三十四章 王处一', '/book/20190827/abjlosxyzACDHKLOW089.json', '40');
INSERT INTO `pre_chapter` VALUES ('1431', '1566872729', '第三十五章 谁不欲长生', '/book/20190827/abdegivABGHJOUVWZ026.json', '40');
INSERT INTO `pre_chapter` VALUES ('1432', '1566872729', '第三十六章 美丽的桃南村', '/book/20190827/cdijkntuACEILQRWXY57.json', '40');
INSERT INTO `pre_chapter` VALUES ('1433', '1566872729', '第三十七章 赵承玉', '/book/20190827/adkoswxzABDHILNRSY35.json', '40');
INSERT INTO `pre_chapter` VALUES ('1434', '1566872729', '第三十八章 神秘来客', '/book/20190827/cdhkxyABHJLNOPRTV234.json', '40');
INSERT INTO `pre_chapter` VALUES ('1435', '1566872729', '第三十九章 莫名其妙的死斗', '/book/20190827/abghijkuyADELSWX1256.json', '40');
INSERT INTO `pre_chapter` VALUES ('1436', '1566872957', '第一章：霍家小少爷', '/book/20190827/afkpqrtuvyIJQRUVY279.json', '41');
INSERT INTO `pre_chapter` VALUES ('1437', '1566872957', '第二章：霍顿之死', '/book/20190827/drsuvwzAHILMOPSTZ289.json', '41');
INSERT INTO `pre_chapter` VALUES ('1438', '1566872957', '第三章：三花聚顶', '/book/20190827/hprtCFGHJKMRUVY02789.json', '41');
INSERT INTO `pre_chapter` VALUES ('1439', '1566872957', '第四章：青云', '/book/20190827/aderyAFGIMNOQSUV2357.json', '41');
INSERT INTO `pre_chapter` VALUES ('1440', '1566872957', '第五章：五本秘籍', '/book/20190827/deqwyzBEGHIJKMPQTUY7.json', '41');
INSERT INTO `pre_chapter` VALUES ('1441', '1566872957', '第六章：霍家霍林，周家周冲', '/book/20190827/abchotvzDENPWYZ13459.json', '41');
INSERT INTO `pre_chapter` VALUES ('1442', '1566872957', '第七章：血战', '/book/20190827/adejmpyIKPRUWYZ02579.json', '41');
INSERT INTO `pre_chapter` VALUES ('1443', '1566872957', '第八章：霍家现状', '/book/20190827/cektuxyzADEHMRUXZ027.json', '41');
INSERT INTO `pre_chapter` VALUES ('1444', '1566872957', '第九章：影刀', '/book/20190827/efhnpqszABFJNQY12679.json', '41');
INSERT INTO `pre_chapter` VALUES ('1445', '1566872957', '第十章：拜师', '/book/20190827/hikmnpsACJLMSYZ12369.json', '41');
INSERT INTO `pre_chapter` VALUES ('1446', '1566872957', '第十一章：千云三狐', '/book/20190827/bcjklmpsvxBCFGKRYZ02.json', '41');
INSERT INTO `pre_chapter` VALUES ('1447', '1566872957', '第十二章：李墨？剑仙？', '/book/20190827/chjklyBGIJMQRSW13467.json', '41');
INSERT INTO `pre_chapter` VALUES ('1448', '1566872957', '第十三章：比武', '/book/20190827/adgijklmostEKSUV0134.json', '41');
INSERT INTO `pre_chapter` VALUES ('1449', '1566872957', '第十四章：鬼面', '/book/20190827/bswxyABCEGHIKLORSX69.json', '41');
INSERT INTO `pre_chapter` VALUES ('1450', '1566872957', '第十五章：唐老的身世', '/book/20190827/gkoqsuxyCEIKLPRUVZ25.json', '41');
INSERT INTO `pre_chapter` VALUES ('1451', '1566872957', '第十六章：比武开始', '/book/20190827/gjklxyDFJKLMNQSUVY78.json', '41');
INSERT INTO `pre_chapter` VALUES ('1452', '1566872957', '第十七章：鬼头刀之死', '/book/20190827/acdeiklquyHKPQSVW016.json', '41');
INSERT INTO `pre_chapter` VALUES ('1453', '1566872957', '第十八章：剑宗，刀宗', '/book/20190827/dfgijklqrsuFJPUWX239.json', '41');
INSERT INTO `pre_chapter` VALUES ('1454', '1566872957', '第十九章：剑宗云山', '/book/20190827/aequvwBCFGKLNT034689.json', '41');
INSERT INTO `pre_chapter` VALUES ('1455', '1566872957', '第二十章：三强联手', '/book/20190827/ghjklmnrswBEILMRU145.json', '41');
INSERT INTO `pre_chapter` VALUES ('1456', '1566872957', '第二十一章：单挑', '/book/20190827/bcefgjkoqDGJSTW12348.json', '41');
INSERT INTO `pre_chapter` VALUES ('1457', '1566872957', '第二十二章：青云的进步', '/book/20190827/eghlmquwxyADEMSV0269.json', '41');
INSERT INTO `pre_chapter` VALUES ('1458', '1566872957', '第二十三章：盆地之战', '/book/20190827/bdlnqxzABCFKNSUWXY24.json', '41');
INSERT INTO `pre_chapter` VALUES ('1459', '1566872957', '第二十四章：千手血莲', '/book/20190827/abcikmqtvzJMQTWZ0578.json', '41');
INSERT INTO `pre_chapter` VALUES ('1460', '1566872957', '第二十五章：剑冢', '/book/20190827/abjknruwxzHIOPRSU057.json', '41');
INSERT INTO `pre_chapter` VALUES ('1461', '1566872957', '第二十六章：铸剑师和绝世剑客', '/book/20190827/clopszCDEHKLMNPRSV01.json', '41');
INSERT INTO `pre_chapter` VALUES ('1462', '1566872957', '第二十七章：问道', '/book/20190827/acdegjlmuvwEFIMOQU04.json', '41');
INSERT INTO `pre_chapter` VALUES ('1463', '1566872957', '第二十八章：神秘人', '/book/20190827/mquvACDHIKMQRSVZ2489.json', '41');
INSERT INTO `pre_chapter` VALUES ('1464', '1566872957', '第二十九章:寂', '/book/20190827/fgopvwxDFGQRSWX12567.json', '41');
INSERT INTO `pre_chapter` VALUES ('1465', '1566872957', '第三十章：霍家先祖', '/book/20190827/cgimnvwzCGJLOYZ02347.json', '41');
INSERT INTO `pre_chapter` VALUES ('1466', '1566872957', '第三十一章：先祖陵墓', '/book/20190827/acdhnpruBJMOPQTU0138.json', '41');
INSERT INTO `pre_chapter` VALUES ('1467', '1566872957', '第三十二章：守墓人的怨念', '/book/20190827/hjknrtzACEHIKNPTU378.json', '41');
INSERT INTO `pre_chapter` VALUES ('1468', '1566872957', '第三十三章：献祭', '/book/20190827/cimpsxBDFGILSTX03569.json', '41');
INSERT INTO `pre_chapter` VALUES ('1469', '1566872957', '第三十四章：而我就是', '/book/20190827/cdeknqrwBDGRWX024569.json', '41');
INSERT INTO `pre_chapter` VALUES ('1470', '1566872957', '第三十五章:爆发', '/book/20190827/behmrsxyBGHIKRTUW389.json', '41');
INSERT INTO `pre_chapter` VALUES ('1471', '1566872957', '第三十六章:这是我的问道', '/book/20190827/fjklpqtxyzBEFGMOQXZ0.json', '41');
INSERT INTO `pre_chapter` VALUES ('1472', '1566872957', '第三十七章:唐老苏醒', '/book/20190827/efhlorvxyABEGJKTXZ48.json', '41');
INSERT INTO `pre_chapter` VALUES ('1473', '1566872957', '第三十八章：真正的寂', '/book/20190827/ijktEGHMNQTWZ0234567.json', '41');
INSERT INTO `pre_chapter` VALUES ('1474', '1566872957', '第三十九章:唐老离去', '/book/20190827/bclmpvwBELNOPRUVY128.json', '41');
INSERT INTO `pre_chapter` VALUES ('1475', '1566872957', '第四十章:霍家，我回来了！', '/book/20190827/fgijlruwyzCLMQW06789.json', '41');
INSERT INTO `pre_chapter` VALUES ('1476', '1566872957', '第四十一章：族长出关', '/book/20190827/afgklmnotvwxDHKNUX35.json', '41');
INSERT INTO `pre_chapter` VALUES ('1477', '1566872957', '第四十二章：假霍顿', '/book/20190827/bdgjlnsuvEGIKLPRSX05.json', '41');
INSERT INTO `pre_chapter` VALUES ('1478', '1566872957', '第四十三章:反击', '/book/20190827/abcegkmoquyKQTWYZ124.json', '41');
INSERT INTO `pre_chapter` VALUES ('1479', '1566872957', '第四十四章:靖安初战', '/book/20190827/bcehijlnoqruyDENRUY6.json', '41');
INSERT INTO `pre_chapter` VALUES ('1480', '1566872957', '第四十五章:霍焱', '/book/20190827/abgtuwxGHUVWXY012789.json', '41');
INSERT INTO `pre_chapter` VALUES ('1481', '1566872957', '第四十六章:刺杀', '/book/20190827/bfnpwBDHJLPSUYZ02468.json', '41');
INSERT INTO `pre_chapter` VALUES ('1482', '1566872957', '第四十七章：周坤', '/book/20190827/abcimovwxAHNOVXY3456.json', '41');
INSERT INTO `pre_chapter` VALUES ('1483', '1566872957', '第四十八章：行侠仗义', '/book/20190827/hklmprsBCFIJLNQSWY79.json', '41');
INSERT INTO `pre_chapter` VALUES ('1484', '1566872957', '第四十九章：因为你很强', '/book/20190827/ipqryzBEFHILNOSTXZ59.json', '41');
INSERT INTO `pre_chapter` VALUES ('1485', '1566872957', '第五十章：逐出周家', '/book/20190827/befghipqACFJKLNUX178.json', '41');
INSERT INTO `pre_chapter` VALUES ('1486', '1566872957', '第五十一章：前往霍家', '/book/20190827/adklmnoqsuzFGHJKOWX2.json', '41');
INSERT INTO `pre_chapter` VALUES ('1488', '1566887632', '001 鹿鸣部落', '/book/20190827/cfgijlqszAIJMOUWZ059.json', '42');
INSERT INTO `pre_chapter` VALUES ('1489', '1566887632', '002 一小步', '/book/20190827/ablsuvwxABIJOSVXZ023.json', '42');
INSERT INTO `pre_chapter` VALUES ('1490', '1566887632', '003 技能', '/book/20190827/abckoqtuyAEKLMOQW056.json', '42');
INSERT INTO `pre_chapter` VALUES ('1491', '1566887632', '004 发现一座村落', '/book/20190827/dehinqrtuvwBDFKWX237.json', '42');
INSERT INTO `pre_chapter` VALUES ('1492', '1566887632', '005 黄阶中品', '/book/20190827/egjmotwDEFIMNQSU4579.json', '42');
INSERT INTO `pre_chapter` VALUES ('1493', '1566887632', '006 妖兽袭击', '/book/20190827/bcjlpqtwxyBDHKNUX137.json', '42');
INSERT INTO `pre_chapter` VALUES ('1494', '1566887632', '007 采集术', '/book/20190827/abdfhvCEHILMPRWY0357.json', '42');
INSERT INTO `pre_chapter` VALUES ('1495', '1566887632', '008 二炼武者', '/book/20190827/bfkrtuvwAJLNPQSZ2359.json', '42');
INSERT INTO `pre_chapter` VALUES ('1496', '1566887632', '009 将死之人', '/book/20190827/dfilpsxGHLNOQUVY0568.json', '42');
INSERT INTO `pre_chapter` VALUES ('1497', '1566887632', '010 犄角城', '/book/20190827/efhluvCFIJLMQTUZ3589.json', '42');
INSERT INTO `pre_chapter` VALUES ('1498', '1566887632', '011 奇货可居', '/book/20190827/achjlmstDFMQX1256789.json', '42');
INSERT INTO `pre_chapter` VALUES ('1499', '1566887632', '012 纯阳劲', '/book/20190827/dfgqstuwyBEFKLTZ0127.json', '42');
INSERT INTO `pre_chapter` VALUES ('1500', '1566887632', '013 肉身境三炼', '/book/20190827/adfgknpwHKLOPRYZ3469.json', '42');
INSERT INTO `pre_chapter` VALUES ('1501', '1566887632', '014 祭坛考核', '/book/20190827/efhiklopuwxDHIMNUWX3.json', '42');
INSERT INTO `pre_chapter` VALUES ('1502', '1566887632', '015 噬金鼠', '/book/20190827/ejkmnqtCDEFIJMOS1256.json', '42');
INSERT INTO `pre_chapter` VALUES ('1503', '1566887632', '016 发现一座妖兽巢穴', '/book/20190827/abefijprtwyAKQWXZ136.json', '42');
INSERT INTO `pre_chapter` VALUES ('1504', '1566887632', '017 遇袭', '/book/20190827/gijmnqsvwCFGHMQUX269.json', '42');
INSERT INTO `pre_chapter` VALUES ('1505', '1566887632', '018 狠计', '/book/20190827/gjklmnopstvxNSVX0139.json', '42');
INSERT INTO `pre_chapter` VALUES ('1506', '1566887632', '019 巨大收获', '/book/20190827/eloqtBCDEFHIJKLMT249.json', '42');
INSERT INTO `pre_chapter` VALUES ('1507', '1566887632', '020 金子', '/book/20190827/bhklquvwxyCGJLNVX458.json', '42');
INSERT INTO `pre_chapter` VALUES ('1508', '1566887632', '021 引神香不够', '/book/20190827/bdehijkqyBINOPRTX459.json', '42');
INSERT INTO `pre_chapter` VALUES ('1509', '1566887632', '022 地阶是个什么鬼', '/book/20190827/afglqsuzACEHJPTX1578.json', '42');
INSERT INTO `pre_chapter` VALUES ('1510', '1566887632', '023 天地玄黄', '/book/20190827/lprstuADFHLMOQRTX358.json', '42');
INSERT INTO `pre_chapter` VALUES ('1511', '1566887632', '024 肉身境四炼', '/book/20190827/defilmnoqwCEFGPS1347.json', '42');
INSERT INTO `pre_chapter` VALUES ('1512', '1566887632', '025 杀手至', '/book/20190827/bdghzBFGIJMOPSWYZ018.json', '42');
INSERT INTO `pre_chapter` VALUES ('1513', '1566887632', '026 反杀', '/book/20190827/abcrsvCDFGHIOVWZ0147.json', '42');
INSERT INTO `pre_chapter` VALUES ('1514', '1566887632', '027 匿身荒野', '/book/20190827/acekorsyzACJMNSTX347.json', '42');
INSERT INTO `pre_chapter` VALUES ('1515', '1566887632', '028 野外晋级', '/book/20190827/bfklzAEFHJMNPQTWX258.json', '42');
INSERT INTO `pre_chapter` VALUES ('1516', '1566887632', '029 一座废弃的城池', '/book/20190827/gijrtxABEFHLMPQY1567.json', '42');
INSERT INTO `pre_chapter` VALUES ('1517', '1566887632', '030 进入废墟', '/book/20190827/abdfnqrsvxDKLORTXYZ1.json', '42');
INSERT INTO `pre_chapter` VALUES ('1518', '1566887632', '031 探查', '/book/20190827/afjklrtwADKQSUVWY168.json', '42');
INSERT INTO `pre_chapter` VALUES ('1519', '1566887632', '032 六千年', '/book/20190827/beiklqwDGJMOPQRTUV28.json', '42');
INSERT INTO `pre_chapter` VALUES ('1520', '1566887632', '033 核心区域', '/book/20190827/bghlqrvAEIMNORUWY016.json', '42');
INSERT INTO `pre_chapter` VALUES ('1521', '1566887632', '034 发现一间密室', '/book/20190827/acegotvwyDEJMNPQX368.json', '42');
INSERT INTO `pre_chapter` VALUES ('1522', '1566887632', '035 驭火诀', '/book/20190827/dkoqrstyzBFGLMQUWX39.json', '42');
INSERT INTO `pre_chapter` VALUES ('1523', '1566887632', '036 暂时离开', '/book/20190827/dehknrsxzBGJKLMPTWZ1.json', '42');
INSERT INTO `pre_chapter` VALUES ('1524', '1566887632', '037 几棵垃圾而已', '/book/20190827/bgipqvyzDEKLMPY45678.json', '42');
INSERT INTO `pre_chapter` VALUES ('1525', '1566887632', '038 林家招揽', '/book/20190827/cfijnostvEHIJMQTV068.json', '42');
INSERT INTO `pre_chapter` VALUES ('1526', '1566887632', '039 捡个大漏', '/book/20190827/cdgjkmqrtACGPSYZ0259.json', '42');
INSERT INTO `pre_chapter` VALUES ('1527', '1566887632', '040 驯服灯火', '/book/20190827/cdgikmrvDGHKNOST0248.json', '42');
INSERT INTO `pre_chapter` VALUES ('1528', '1566887632', '041 林方远', '/book/20190827/abhnptxyBGHOQUVY0239.json', '42');
INSERT INTO `pre_chapter` VALUES ('1529', '1566887632', '042 犄角城遗址', '/book/20190827/bcefhpruvwyCDEGIOR08.json', '42');
INSERT INTO `pre_chapter` VALUES ('1530', '1566887632', '043 谋划', '/book/20190827/acdfhmqtvGJQRSWY1268.json', '42');
INSERT INTO `pre_chapter` VALUES ('1531', '1566887632', '044 充满恶意的地图', '/book/20190827/bfopqrtuDEFHJORVW457.json', '42');
INSERT INTO `pre_chapter` VALUES ('1532', '1566887632', '045 六千年始末', '/book/20190827/cdijnrwzDEGJLQUVZ678.json', '42');
INSERT INTO `pre_chapter` VALUES ('1533', '1566887632', '046 金色精血', '/book/20190827/ghjmorsvyBJKLQSY0178.json', '42');
INSERT INTO `pre_chapter` VALUES ('1534', '1566887632', '047 实力暴涨', '/book/20190827/efouvzACHIJKLQSUVY17.json', '42');
INSERT INTO `pre_chapter` VALUES ('1535', '1566887632', '048 可怜的周家', '/book/20190827/jnpquvwFIKOQSUZ12345.json', '42');
INSERT INTO `pre_chapter` VALUES ('1536', '1566887632', '049 杀周震北', '/book/20190827/abcdflmpvyFGJPQ13478.json', '42');
INSERT INTO `pre_chapter` VALUES ('1537', '1566887632', '050 神庙取宝', '/book/20190827/bijmpquxzDGIKQRTU569.json', '42');
INSERT INTO `pre_chapter` VALUES ('1538', '1566887632', '051 到手', '/book/20190827/efijklnqrzCHIW124689.json', '42');
INSERT INTO `pre_chapter` VALUES ('1539', '1566887632', '052 巨鸟', '/book/20190827/dklmnvzDFHJKOPUVW468.json', '42');
INSERT INTO `pre_chapter` VALUES ('1540', '1566887632', '053 广阔天地', '/book/20190827/cnpsxyBCDHIJQRSUV167.json', '42');
INSERT INTO `pre_chapter` VALUES ('1541', '1566887632', '054 海上孤岛', '/book/20190827/fmoprxzBEGOTUVW01236.json', '42');
INSERT INTO `pre_chapter` VALUES ('1542', '1566887632', '055 巨鸟巢穴', '/book/20190827/amvyADEFJLNOPSTUZ056.json', '42');
INSERT INTO `pre_chapter` VALUES ('1543', '1566887632', '056 探索', '/book/20190827/kmptuxCFIMNPTWX01345.json', '42');
INSERT INTO `pre_chapter` VALUES ('1544', '1566887632', '057 一座废弃的宗门', '/book/20190827/filoruyBEFKQTUWXZ289.json', '42');
INSERT INTO `pre_chapter` VALUES ('1545', '1566887632', '058 武魂境', '/book/20190827/cdiluvxBCEJKLNSTXZ67.json', '42');
INSERT INTO `pre_chapter` VALUES ('1546', '1566887632', '059 收获颇丰', '/book/20190827/beghlvwCHILMNZ145679.json', '42');
INSERT INTO `pre_chapter` VALUES ('1547', '1566887632', '060 大失所望', '/book/20190827/cdipsuvADGHMNPSWYZ19.json', '42');
INSERT INTO `pre_chapter` VALUES ('1548', '1566887632', '061 解析', '/book/20190827/dlnqruwBCFHLNU013679.json', '42');
INSERT INTO `pre_chapter` VALUES ('1549', '1566887632', '062 歃血杀阵', '/book/20190827/aelopsxzDEFGHOQRSTVY.json', '42');
INSERT INTO `pre_chapter` VALUES ('1550', '1566887632', '063 藏身所', '/book/20190827/cioqwyzAJKLMNOSUV048.json', '42');
INSERT INTO `pre_chapter` VALUES ('1551', '1566887632', '064 金子醒了', '/book/20190827/bhiopstuxAGKQTUXY023.json', '42');
INSERT INTO `pre_chapter` VALUES ('1552', '1566887632', '065 雏鸟来袭', '/book/20190827/bdfmsyBFHPQTUVWXY458.json', '42');
INSERT INTO `pre_chapter` VALUES ('1553', '1566887632', '066 强大的雏鸟', '/book/20190827/bfhjkloqtvEFINOSVW38.json', '42');
INSERT INTO `pre_chapter` VALUES ('1554', '1566887632', '067 杀阵重启', '/book/20190827/cdflnorwxzCDEJQUX149.json', '42');
INSERT INTO `pre_chapter` VALUES ('1555', '1566887632', '068 万剑齐鸣', '/book/20190827/acqsuwBCGMQRTV012456.json', '42');
INSERT INTO `pre_chapter` VALUES ('1556', '1566887632', '069 白牛化身', '/book/20190827/acdflmtuwEFINOUVZ569.json', '42');
INSERT INTO `pre_chapter` VALUES ('1557', '1566887632', '070 突然出现的人族', '/book/20190827/ehpqvxyAEGHOPQRSZ279.json', '42');
INSERT INTO `pre_chapter` VALUES ('1558', '1566887632', '071 传送', '/book/20190827/abceghipqvyzANVWXYZ6.json', '42');
INSERT INTO `pre_chapter` VALUES ('1559', '1566887632', '072 忠惠国南斗宗', '/book/20190827/dfjklouxzDFGHKLNW024.json', '42');
INSERT INTO `pre_chapter` VALUES ('1560', '1566887632', '073 妖民', '/book/20190827/aegikmnzAGLMPTYZ3569.json', '42');
INSERT INTO `pre_chapter` VALUES ('1561', '1566887632', '074 线索', '/book/20190827/bcdeghkmtxzEGOPW0158.json', '42');
INSERT INTO `pre_chapter` VALUES ('1562', '1566887632', '075 一条地火', '/book/20190827/cdipqvxDFGMPTWXY2489.json', '42');
INSERT INTO `pre_chapter` VALUES ('1563', '1566887632', '076 恶鬼林', '/book/20190827/bdefinpyzDHIKLMPV125.json', '42');
INSERT INTO `pre_chapter` VALUES ('1564', '1566887632', '077 妖灵', '/book/20190827/fhilouADFKLMPTY03479.json', '42');
INSERT INTO `pre_chapter` VALUES ('1565', '1566887632', '078 青林关', '/book/20190827/cefqxyzHLNOPQSVX0147.json', '42');
INSERT INTO `pre_chapter` VALUES ('1566', '1566887632', '079 地下密室', '/book/20190827/bcdfghjknotBHTVYZ578.json', '42');
INSERT INTO `pre_chapter` VALUES ('1567', '1566887632', '080 武魂融合', '/book/20190827/bhjnoqtxADEJKLMRSX35.json', '42');
INSERT INTO `pre_chapter` VALUES ('1568', '1566887632', '081 意外的机会', '/book/20190827/adjtwxzEGLMSTUWZ0268.json', '42');
INSERT INTO `pre_chapter` VALUES ('1569', '1566887632', '082 人生如戏', '/book/20190827/afjuvxBCHJKQRUXYZ456.json', '42');
INSERT INTO `pre_chapter` VALUES ('1570', '1566887632', '083 全靠演技', '/book/20190827/aejkouzAHIKORSWXY013.json', '42');
INSERT INTO `pre_chapter` VALUES ('1571', '1566887632', '084 一个不留', '/book/20190827/efgnostuvzGKLOUVY268.json', '42');
INSERT INTO `pre_chapter` VALUES ('1572', '1566887632', '085 站着别动', '/book/20190827/bjnoqrszBGJMQSUW1257.json', '42');
INSERT INTO `pre_chapter` VALUES ('1573', '1566887632', '086 你给我出去', '/book/20190827/delmoquxHKMNOQSWY057.json', '42');
INSERT INTO `pre_chapter` VALUES ('1574', '1566887632', '087 火烧谷', '/book/20190827/klmnouvxADEHRSZ02689.json', '42');
INSERT INTO `pre_chapter` VALUES ('1575', '1566887632', '088 火灵', '/book/20190827/dfgjrwxFGHIKLNQSTU34.json', '42');
INSERT INTO `pre_chapter` VALUES ('1576', '1566887632', '089 南斗一剑', '/book/20190827/mprtuxyzCDGJMNPQY478.json', '42');
INSERT INTO `pre_chapter` VALUES ('1577', '1566887632', '090 谷底巢穴', '/book/20190827/befjmsuzBEFHPSVWZ135.json', '42');
INSERT INTO `pre_chapter` VALUES ('1578', '1566887632', '091 七星杀剑', '/book/20190827/abcgjklopqxBCDEGOZ67.json', '42');
INSERT INTO `pre_chapter` VALUES ('1579', '1566887632', '092 杀机突现', '/book/20190827/adfkpqrsvwAEGHQT3569.json', '42');
INSERT INTO `pre_chapter` VALUES ('1580', '1566887632', '093 武魂凝实', '/book/20190827/acefhktzDEGLQTVX0149.json', '42');
INSERT INTO `pre_chapter` VALUES ('1581', '1566887632', '094 火焰巨龙', '/book/20190827/acdekmopqsuzAERSTX36.json', '42');
INSERT INTO `pre_chapter` VALUES ('1582', '1566887632', '095 灯火重现', '/book/20190827/bjmnyACGJLQSTX024789.json', '42');
INSERT INTO `pre_chapter` VALUES ('1583', '1566887632', '096 颗粒归仓', '/book/20190827/befknopqruxAPSUVZ028.json', '42');
INSERT INTO `pre_chapter` VALUES ('1584', '1566887632', '097 武魂境四层', '/book/20190827/aeglrtyFJKMNPQUWXY89.json', '42');
INSERT INTO `pre_chapter` VALUES ('1585', '1566887632', '098 肉身境九炼', '/book/20190827/efgnpqswyDFHILOQWX09.json', '42');
INSERT INTO `pre_chapter` VALUES ('1586', '1566887632', '099 系统2.0', '/book/20190827/bfikmnotyJMQRSWYZ678.json', '42');
INSERT INTO `pre_chapter` VALUES ('1587', '1566887632', '100 离开', '/book/20190827/aefijoprsGILMNQRSTZ6.json', '42');
INSERT INTO `pre_chapter` VALUES ('1588', '1566887632', '101 掘地三尺', '/book/20190827/inqrxyAJMNPQRXZ01468.json', '42');
INSERT INTO `pre_chapter` VALUES ('1589', '1566887632', '102 火龙赤炎', '/book/20190827/gijmopstzDFILMPTW469.json', '42');
INSERT INTO `pre_chapter` VALUES ('1590', '1566887632', '103 边境', '/book/20190827/cikmnoqxzABEGKMOPRW5.json', '42');
INSERT INTO `pre_chapter` VALUES ('1591', '1566887632', '104 飞羽宗', '/book/20190827/adhnovDEFJMNPXZ12479.json', '42');
INSERT INTO `pre_chapter` VALUES ('1592', '1566887632', '105 迦楼罗之翼', '/book/20190827/dhikmnpxyDFLMQSUWXY5.json', '42');
INSERT INTO `pre_chapter` VALUES ('1593', '1566887632', '106 半人半兽', '/book/20190827/efhopqyAEFKLOXYZ0589.json', '42');
INSERT INTO `pre_chapter` VALUES ('1594', '1566887632', '107 星火少年', '/book/20190827/cilrzBDHJLMPVWXY4579.json', '42');
INSERT INTO `pre_chapter` VALUES ('1595', '1566887632', '108 可悲可叹', '/book/20190827/abdfluBCGHLNPUWXY016.json', '42');
INSERT INTO `pre_chapter` VALUES ('1596', '1566887632', '109 妖兽异动', '/book/20190827/aefiklrsvCDEJOQVZ149.json', '42');
INSERT INTO `pre_chapter` VALUES ('1597', '1566887632', '110 妖兽领地', '/book/20190827/acdprstzBDEFGLNRZ016.json', '42');
INSERT INTO `pre_chapter` VALUES ('1598', '1566887632', '111 探路者', '/book/20190827/fgilmopquvzDEJKOSU14.json', '42');
INSERT INTO `pre_chapter` VALUES ('1599', '1566887632', '112 牺牲者', '/book/20190827/acghlsuvCFJLPST01257.json', '42');
INSERT INTO `pre_chapter` VALUES ('1600', '1566887632', '113 血湖', '/book/20190827/befhijopqruxAEGJMW37.json', '42');
INSERT INTO `pre_chapter` VALUES ('1601', '1566887632', '114 瓮中之鳖', '/book/20190827/abfopsyABGHJLSTWZ125.json', '42');
INSERT INTO `pre_chapter` VALUES ('1602', '1566887632', '115 无法回头', '/book/20190827/cjmopuBDEFJKNOQUX346.json', '42');
INSERT INTO `pre_chapter` VALUES ('1603', '1566887632', '116 肉身境巅峰', '/book/20190827/fghklpqtBDGHKMPRTW05.json', '42');
INSERT INTO `pre_chapter` VALUES ('1604', '1566887632', '117 炼宝', '/book/20190827/cdimnqrsuABJPRVWX234.json', '42');
INSERT INTO `pre_chapter` VALUES ('1605', '1566887632', '118 逃脱', '/book/20190827/dfhqrstwzACDEIJNXYZ7.json', '42');
INSERT INTO `pre_chapter` VALUES ('1606', '1566887632', '119 孩子们', '/book/20190827/befjkpstCEFHKNWY1237.json', '42');
INSERT INTO `pre_chapter` VALUES ('1607', '1566887632', '120 可记得他们', '/book/20190827/abcefoprsvzDHIMOUY15.json', '42');
INSERT INTO `pre_chapter` VALUES ('1608', '1566887632', '121 一个看门的而已', '/book/20190827/delpxACEGMQTUXYZ1234.json', '42');
INSERT INTO `pre_chapter` VALUES ('1609', '1566887632', '122 星火传讯', '/book/20190827/fgpqvFHIJMORSUWXY249.json', '42');
INSERT INTO `pre_chapter` VALUES ('1610', '1566887632', '123 商议', '/book/20190827/dejkopwyADIMPQRTUXY6.json', '42');
INSERT INTO `pre_chapter` VALUES ('1611', '1566887632', '124 天大好处', '/book/20190827/aefhmtuxzDGIRWX01689.json', '42');
INSERT INTO `pre_chapter` VALUES ('1612', '1566887632', '125 青云谷中', '/book/20190827/abhjostuwzCDOQRVW047.json', '42');
INSERT INTO `pre_chapter` VALUES ('1613', '1566887632', '126 突飞猛进', '/book/20190827/abfkosuzACFLOPRUZ359.json', '42');
INSERT INTO `pre_chapter` VALUES ('1614', '1566887632', '127 前线', '/book/20190827/efghjnrstxDEJLNTUX37.json', '42');
INSERT INTO `pre_chapter` VALUES ('1615', '1566887632', '128 首战', '/book/20190827/admnoqstuwzBFJMRX348.json', '42');
INSERT INTO `pre_chapter` VALUES ('1616', '1566887632', '129 污秽猪龙', '/book/20190827/bijknopsvxGIJNQSUVZ2.json', '42');
INSERT INTO `pre_chapter` VALUES ('1617', '1566887632', '130 兽潮爆发', '/book/20190827/glmtxADHJPQRTUV01267.json', '42');
INSERT INTO `pre_chapter` VALUES ('1618', '1566887632', '131 无法抵挡', '/book/20190827/abdjmnpqyzAEIPRUXYZ0.json', '42');
INSERT INTO `pre_chapter` VALUES ('1619', '1566887632', '132 打开血幕', '/book/20190827/hijkpswCEHIKMQU23469.json', '42');
INSERT INTO `pre_chapter` VALUES ('1620', '1566887632', '133 以吾鲜血', '/book/20190827/acdfgikmowEGJKLNPRW4.json', '42');
INSERT INTO `pre_chapter` VALUES ('1621', '1566887632', '134 人族永续', '/book/20190827/dfjknsxyAFLNPTUWZ034.json', '42');
INSERT INTO `pre_chapter` VALUES ('1622', '1566887632', '135 破灭', '/book/20190827/bfglnrwyDEFKOQSTVY35.json', '42');
INSERT INTO `pre_chapter` VALUES ('1623', '1566887632', '136 新生', '/book/20190827/cgijloquyAEFGOWYZ347.json', '42');
INSERT INTO `pre_chapter` VALUES ('1624', '1566887632', '137 重新启程', '/book/20190827/dgjkpquvCDGKNQSUW258.json', '42');
INSERT INTO `pre_chapter` VALUES ('1625', '1566887632', '138 黑色翎羽', '/book/20190827/aboqsyzEFMOPRSUWX067.json', '42');
INSERT INTO `pre_chapter` VALUES ('1626', '1566887632', '139 海底', '/book/20190827/bdglmoprsvCLNPQUVY05.json', '42');
INSERT INTO `pre_chapter` VALUES ('1627', '1566887632', '140 蜉蝣水母', '/book/20190827/bcfkmqstuzDKLNVXY246.json', '42');
INSERT INTO `pre_chapter` VALUES ('1628', '1566887632', '141 拆螃蟹', '/book/20190827/cghjmqvyzABCGIJOWY07.json', '42');
INSERT INTO `pre_chapter` VALUES ('1629', '1566887632', '142 母体', '/book/20190827/fopuvyGHJPQTUYZ13589.json', '42');
INSERT INTO `pre_chapter` VALUES ('1630', '1566887632', '143 角色互换', '/book/20190827/eglnosuwxCDNORSUY017.json', '42');
INSERT INTO `pre_chapter` VALUES ('1631', '1566887632', '144 拉网', '/book/20190827/cdefkpqxDKMOQSVY0168.json', '42');
INSERT INTO `pre_chapter` VALUES ('1632', '1566888741', '第一章  虎落平阳', '/book/20190827/bfntwzABEIJMQY014569.json', '43');
INSERT INTO `pre_chapter` VALUES ('1633', '1566888742', '第二章  得元婴', '/book/20190827/cdinpqrwxAFJLQSWY236.json', '43');
INSERT INTO `pre_chapter` VALUES ('1634', '1566888742', '第三章  邪道修士', '/book/20190827/ajlmopsvyzEFKNRVY057.json', '43');
INSERT INTO `pre_chapter` VALUES ('1635', '1566888742', '第四章  捡到宝', '/book/20190827/bikmnqyAEMSTW0234569.json', '43');
INSERT INTO `pre_chapter` VALUES ('1636', '1566888742', '第五章  惨遭截胡', '/book/20190827/bcdfijklnpqtyJLMT018.json', '43');
INSERT INTO `pre_chapter` VALUES ('1637', '1566888743', '第六章  进谗言', '/book/20190827/dglwADGIKLMRTVWXY039.json', '43');
INSERT INTO `pre_chapter` VALUES ('1638', '1566888743', '第七章  诛邪修', '/book/20190827/bjmnoquwyzAHJLOQVY59.json', '43');
INSERT INTO `pre_chapter` VALUES ('1639', '1566888743', '第八章  误会', '/book/20190827/abfikorwADEPQSTUXZ89.json', '43');
INSERT INTO `pre_chapter` VALUES ('1640', '1566888744', '第九章  一叶障目', '/book/20190827/fjnrtvyAGLOPQSTVYZ36.json', '43');
INSERT INTO `pre_chapter` VALUES ('1641', '1566888744', '第十章  一念成魔', '/book/20190827/bcjmoqrstuxAEHNRSTU4.json', '43');
INSERT INTO `pre_chapter` VALUES ('1642', '1566888744', '第十一章  积重难返', '/book/20190827/behmqrtuvCEHNVY01359.json', '43');
INSERT INTO `pre_chapter` VALUES ('1643', '1566888744', '第十二章  湖底探险', '/book/20190827/abjknoprtuxABDIKMNO7.json', '43');
INSERT INTO `pre_chapter` VALUES ('1644', '1566888745', '第十三章  食人鱼？', '/book/20190827/ceglrtuwxDGIJMNRY038.json', '43');
INSERT INTO `pre_chapter` VALUES ('1645', '1566888745', '第十四章  败家子韩意', '/book/20190827/cdegkmnrwxzCFOTV2468.json', '43');
INSERT INTO `pre_chapter` VALUES ('1646', '1566888745', '第十五章  你认识吗', '/book/20190827/ahmqtABCDFGKMQXZ0236.json', '43');
INSERT INTO `pre_chapter` VALUES ('1647', '1566888746', '第十六章  狱中事', '/book/20190827/ejmsxACDIKLQTVY12459.json', '43');
INSERT INTO `pre_chapter` VALUES ('1648', '1566888746', '第十七章  望月楼', '/book/20190827/afgjklvxyzABCITV2589.json', '43');
INSERT INTO `pre_chapter` VALUES ('1649', '1566888746', '第十八章  莽夫', '/book/20190827/cefiklqrstIJKMPQSU46.json', '43');
INSERT INTO `pre_chapter` VALUES ('1650', '1566888746', '第十九章  误会', '/book/20190827/cdfgkqrsuvwBLQRZ0267.json', '43');
INSERT INTO `pre_chapter` VALUES ('1651', '1566888747', '第二十章  故人', '/book/20190827/cefjmqsuxyGINRSTW236.json', '43');
INSERT INTO `pre_chapter` VALUES ('1652', '1566888747', '第二十一章  回家', '/book/20190827/acdfghkrtCGHNV023469.json', '43');
INSERT INTO `pre_chapter` VALUES ('1653', '1566888747', '第二十二章  叙旧', '/book/20190827/bijotuwxyDORSUXY0239.json', '43');
INSERT INTO `pre_chapter` VALUES ('1654', '1566888747', '第二十三章  再见', '/book/20190827/abgknouzEFGHPTVY1458.json', '43');
INSERT INTO `pre_chapter` VALUES ('1655', '1566888748', '第二十四章  踏天宗之行', '/book/20190827/bhlmnpswyADHNOPTX346.json', '43');
INSERT INTO `pre_chapter` VALUES ('1656', '1566888748', '第二十五章   刁难', '/book/20190827/acdhpuxyALMQRUWY1345.json', '43');
INSERT INTO `pre_chapter` VALUES ('1657', '1566888748', '第二十六章  天机镜', '/book/20190827/abdfmnpqryCFJMRWY259.json', '43');
INSERT INTO `pre_chapter` VALUES ('1658', '1566888749', '第二十七章  大战虚空老魔', '/book/20190827/afghjkqrzCOPQRTV0124.json', '43');
INSERT INTO `pre_chapter` VALUES ('1659', '1566888749', '第二十八章  逐日剑出', '/book/20190827/bcdehkluxzFHRY125679.json', '43');
INSERT INTO `pre_chapter` VALUES ('1660', '1566888749', '第二十九章  托付重任', '/book/20190827/blopstvABDFGJKSUYZ26.json', '43');
INSERT INTO `pre_chapter` VALUES ('1661', '1566888749', '第三十章  抵赖', '/book/20190827/abdimopqtxDFKMPX4679.json', '43');
INSERT INTO `pre_chapter` VALUES ('1662', '1566888750', '第三十一章  下一个目标', '/book/20190827/acdkmtwzDFHJLVW56789.json', '43');
INSERT INTO `pre_chapter` VALUES ('1663', '1566888750', '第三十二章  妖言惑众', '/book/20190827/bijoruyzBEFGHKMNW046.json', '43');
INSERT INTO `pre_chapter` VALUES ('1664', '1566888750', '第三十三章  来去如风', '/book/20190827/adegiknopqvBJMQTY349.json', '43');
INSERT INTO `pre_chapter` VALUES ('1665', '1566888751', '第三十四章  黑白颠倒', '/book/20190827/bcdegprvxzIJPRV34567.json', '43');
INSERT INTO `pre_chapter` VALUES ('1666', '1566888751', '第三十五章  有心杀贼', '/book/20190827/cekmpqtwCFIJLUVWY145.json', '43');
INSERT INTO `pre_chapter` VALUES ('1667', '1566888751', '第三十六章  绝境求生', '/book/20190827/fkopsuyzACJLMOPQ1239.json', '43');
INSERT INTO `pre_chapter` VALUES ('1668', '1566888751', '第三十七章  狼子野心', '/book/20190827/befhlmopqrtvyGKMY156.json', '43');
INSERT INTO `pre_chapter` VALUES ('1669', '1566888752', '第三十八章  不堪回首', '/book/20190827/cdfgjnpqCIJPSUVWXZ15.json', '43');
INSERT INTO `pre_chapter` VALUES ('1670', '1566888752', '第三十九章  移魂大法', '/book/20190827/cflopqtABMNORVXZ2356.json', '43');
INSERT INTO `pre_chapter` VALUES ('1671', '1566888752', '第四十章  故技重施', '/book/20190827/amortCEFJKLMX0123469.json', '43');
INSERT INTO `pre_chapter` VALUES ('1672', '1566888752', '第四十一章  黑暗侵噬', '/book/20190827/dijklmAEFGKLMNOSTW34.json', '43');
INSERT INTO `pre_chapter` VALUES ('1673', '1566888753', '第四十二章  封王大典', '/book/20190827/afghlnoquABDFLQV2357.json', '43');
INSERT INTO `pre_chapter` VALUES ('1674', '1566888753', '第四十三章  目中无人', '/book/20190827/ehimnopruvMNOYZ12789.json', '43');
INSERT INTO `pre_chapter` VALUES ('1675', '1566888753', '第四十四章  不可一世', '/book/20190827/aclmpxyDEFHIJQSXY379.json', '43');
INSERT INTO `pre_chapter` VALUES ('1676', '1566888754', '第四十五章  大杀四方', '/book/20190827/ghkmrsyzDHJMNSTVWZ78.json', '43');
INSERT INTO `pre_chapter` VALUES ('1677', '1566888754', '第四十六章  能屈能伸', '/book/20190827/bcfkrwzDGJKPQRY15689.json', '43');
INSERT INTO `pre_chapter` VALUES ('1678', '1566888754', '第四十七章  搭救', '/book/20190827/degjmstwABHIMQYZ0478.json', '43');
INSERT INTO `pre_chapter` VALUES ('1679', '1566888754', '第四十八章  参加自己的葬礼', '/book/20190827/acdikowxyACEGKOW2479.json', '43');
INSERT INTO `pre_chapter` VALUES ('1680', '1566888755', '第四十九章  进宫求药', '/book/20190827/bdefhlpxEGINPQUXY579.json', '43');
INSERT INTO `pre_chapter` VALUES ('1681', '1566888755', '第五十章  往事', '/book/20190827/cefhjmpqrstuvxFMWY18.json', '43');
INSERT INTO `pre_chapter` VALUES ('1682', '1566888755', '第五十一章  拉人下水', '/book/20190827/bcdhjkntuwACEKOQW129.json', '43');
INSERT INTO `pre_chapter` VALUES ('1683', '1566888755', '第五十二章  高处不胜寒', '/book/20190827/behiknopqvwyzDFPVW39.json', '43');
INSERT INTO `pre_chapter` VALUES ('1684', '1566888756', '第五十三章  识破', '/book/20190827/chnrvxyzABDEHILNPRSU.json', '43');
INSERT INTO `pre_chapter` VALUES ('1685', '1566888756', '第五十四章  斩妖', '/book/20190827/abhnquwxzBCFINOPSV04.json', '43');
INSERT INTO `pre_chapter` VALUES ('1686', '1566888756', '第五十五章  招魂', '/book/20190827/fhmnoqsyADFKMOSTVZ09.json', '43');
INSERT INTO `pre_chapter` VALUES ('1687', '1566888756', '第五十六章  山雨欲来', '/book/20190827/acfgjlqsvzIKLVXYZ125.json', '43');
INSERT INTO `pre_chapter` VALUES ('1688', '1566888757', '第五十七章  王爷会养猪', '/book/20190827/cdhmnouwACEFGLMT0347.json', '43');
INSERT INTO `pre_chapter` VALUES ('1689', '1566888757', '第五十八章  杀妖', '/book/20190827/afhlmnqzFGKNPQRYZ678.json', '43');
INSERT INTO `pre_chapter` VALUES ('1690', '1566888757', '第五十九章  傲天宗之行', '/book/20190827/degnpxyABEFJTWY12368.json', '43');
INSERT INTO `pre_chapter` VALUES ('1691', '1566888758', '第六十章  新皇登基', '/book/20190827/cfhprABFHLOPUXY01468.json', '43');
INSERT INTO `pre_chapter` VALUES ('1692', '1566888758', '第六十一章  扰邻者', '/book/20190827/bfmoqstwABDFIPUZ0349.json', '43');
INSERT INTO `pre_chapter` VALUES ('1693', '1566888758', '第六十二章  “楚汉相争”', '/book/20190827/bfgnopstCEFHNRSVXZ27.json', '43');
INSERT INTO `pre_chapter` VALUES ('1694', '1566888758', '第六十三章  打抱不平', '/book/20190827/bdfhinprsuBFHPQTVW15.json', '43');
INSERT INTO `pre_chapter` VALUES ('1695', '1566888759', '第六十四章 补救', '/book/20190827/bflnstAFIJMOQRTUX458.json', '43');
INSERT INTO `pre_chapter` VALUES ('1696', '1566888759', '第六十五章  邪魔味道', '/book/20190827/cdfjkortEFGMNPWXZ579.json', '43');
INSERT INTO `pre_chapter` VALUES ('1697', '1566888759', '第六十六章  背信', '/book/20190827/dhijqsyzBDGHIOQVZ578.json', '43');

-- ----------------------------
-- Table structure for pre_config
-- ----------------------------
DROP TABLE IF EXISTS `pre_config`;
CREATE TABLE `pre_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_config
-- ----------------------------
INSERT INTO `pre_config` VALUES ('1', 'website_title', '网站标题', '小说网', '/uploads/20190828161515dfjntvzDESUV057.PNG', 'http://book.zongheng.com/showchapter/855193.html');
INSERT INTO `pre_config` VALUES ('2', 'website_logo', '网站logo', null, null, null);
INSERT INTO `pre_config` VALUES ('3', 'friendly_link', '友情链接', '读后感', null, null);
INSERT INTO `pre_config` VALUES ('4', 'copyright', '版权', 'Copyright © m.baidu.com ', null, null);

-- ----------------------------
-- Table structure for pre_website
-- ----------------------------
DROP TABLE IF EXISTS `pre_website`;
CREATE TABLE `pre_website` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `website_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ul_name` varchar(255) DEFAULT NULL,
  `content_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_website
-- ----------------------------
INSERT INTO `pre_website` VALUES ('1', '纵横', 'http://www.zongheng.com/', 'chapter-list clearfix', 'content');
INSERT INTO `pre_website` VALUES ('2', '起点', 'https://www.qidian.com/', 'cf', 'read-content j_readContent');
INSERT INTO `pre_website` VALUES ('3', '潇湘书院', 'https://www.xxsy.net/', 'catalog-list cl', 'chapter-main');
INSERT INTO `pre_website` VALUES ('4', '网易云阅读', 'http://yuedu.163.com/index', 'f-cb', 'ne-content J_NEContent');
INSERT INTO `pre_website` VALUES ('5', '逐浪小说网', 'http://www.zhulang.com/', '', 'read-content');
INSERT INTO `pre_website` VALUES ('6', '小说阅读网', 'http://www.zongheng.com/', 'cf', 'read-content j_readContent');
INSERT INTO `pre_website` VALUES ('7', '刺猬猫', 'https://www.ciweimao.com/', 'book-chapter-list', 'read-bd');
