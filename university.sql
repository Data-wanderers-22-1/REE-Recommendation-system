/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : vms

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 05/12/2024 19:43:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for university
-- ----------------------------
DROP TABLE IF EXISTS `university`;
CREATE TABLE `university`  (
  `school_code` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `score_line` int NULL DEFAULT NULL,
  `website_link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of university
-- ----------------------------
INSERT INTO `university` VALUES (10100, '中国人民大学', '双一流', '哲学', '北京市', 29, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367879.dhtml', 1);
INSERT INTO `university` VALUES (10100, '清华大学', '双一流', '哲学', '北京市', 28, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367880.dhtml', 2);
INSERT INTO `university` VALUES (10100, '北京航空航天大学', '双一流', '哲学', '北京市', 9, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367883.dhtml', 3);
INSERT INTO `university` VALUES (10100, '北京林业大学', '双一流', '哲学', '北京市', 15, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367895.dhtml', 4);
INSERT INTO `university` VALUES (10100, '北京师范大学', '双一流', '哲学', '北京市', 17, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367859.dhtml', 5);
INSERT INTO `university` VALUES (10100, '中央民族大学', '双一流', '哲学', '北京市', 13, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367920.dhtml', 6);
INSERT INTO `university` VALUES (10100, '南开大学', '双一流', '哲学', '天津市', 13, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367949.dhtml', 7);
INSERT INTO `university` VALUES (10100, '天津外国语大学', '双非', '哲学', '天津市', 10, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367956.dhtml', 8);
INSERT INTO `university` VALUES (10100, '河北师范大学', '双非', '哲学', '河北省', 85, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367982.dhtml', 9);
INSERT INTO `university` VALUES (10100, '山西师范大学', '双非', '哲学', '河北省', 39, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367998.dhtml', 10);
INSERT INTO `university` VALUES (20100, '中国人民大学', '双一流', '理论经济学', '北京市', 308, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367879.dhtml', 11);
INSERT INTO `university` VALUES (20100, '清华大学', '双一流', '理论经济学', '北京市', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367880.dhtml', 12);
INSERT INTO `university` VALUES (20100, '北京理工大学', '双一流', '理论经济学', '北京市', 24, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367884.dhtml', 13);
INSERT INTO `university` VALUES (20100, '北京工商大学', '双非', '理论经济学', '北京市', 10, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367888.dhtml', 14);
INSERT INTO `university` VALUES (20100, '北京师范大学', '双一流', '理论经济学', '北京市', 32, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367859.dhtml', 15);
INSERT INTO `university` VALUES (20100, '北京物资学院', '双非', '理论经济学', '北京市', 8, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367868.dhtml', 16);
INSERT INTO `university` VALUES (20100, '首都经济贸易大学', NULL, '理论经济学', '北京市', 48, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367927.dhtml', 17);
INSERT INTO `university` VALUES (20100, '中央民族大学', '双一流', '理论经济学', '北京市', 7, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367920.dhtml', 18);
INSERT INTO `university` VALUES (20100, '中国政法大学', '双一流', '理论经济学', '北京市', 8, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367921.dhtml', 19);
INSERT INTO `university` VALUES (20100, '南开大学', '双一流', '理论经济学', '天津市', 105, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367949.dhtml', 20);
INSERT INTO `university` VALUES (30100, '中国人民大学', '双一流', '法学', '北京市', 610, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367879.dhtml', 21);
INSERT INTO `university` VALUES (30100, '清华大学', '双一流', '法学', '北京市', 19, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367880.dhtml', 22);
INSERT INTO `university` VALUES (30100, '北京交通大学', '双一流', '法学', '北京市', 45, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367881.dhtml', 23);
INSERT INTO `university` VALUES (30100, '北京理工大学', '双一流', '法学', '北京市', 56, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367884.dhtml', 24);
INSERT INTO `university` VALUES (30100, '北京科技大学', '双一流', '法学', '北京市', 56, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367896.dhtml', 25);
INSERT INTO `university` VALUES (30100, '北方工业大学', '双非', '法学', '北京市', 210, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367886.dhtml', 26);
INSERT INTO `university` VALUES (30100, '北京化工大学', '双一流', '法学', '北京市', 90, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367877.dhtml', 27);
INSERT INTO `university` VALUES (30100, '北京邮电大学', '双一流', '法学', '北京市', 16, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367890.dhtml', 28);
INSERT INTO `university` VALUES (30100, '中国农业大学', '双一流', '法学', '北京市', 9, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367893.dhtml', 29);
INSERT INTO `university` VALUES (30100, '北京林业大学', '双一流', '法学', '北京市', 25, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367895.dhtml', 30);
INSERT INTO `university` VALUES (40100, '中国人民大学', '双一流', '教育学', '北京市', 3, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=47ee527e210998e9a618b1294e92a6cd', 31);
INSERT INTO `university` VALUES (40100, '清华大学', '双一流', '教育学', '北京市', 10, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=b933379a06f6fee591bf7836747ebc4f', 32);
INSERT INTO `university` VALUES (40100, '北京工业大学', '双一流', '教育学', '北京市', 8, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=ef22f9daade75ff9df6a3bdbe5cbf51b', 33);
INSERT INTO `university` VALUES (40100, '北京航天航空大学', '双一流', '教育学', '北京市', 1, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=0cd3b46be9f6a6b0f6d9b7e6ea343507', 34);
INSERT INTO `university` VALUES (40100, '北京理工大学', '双一流', '教育学', '北京市', 52, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=05d9815d5ff38089a45408d55a006906', 35);
INSERT INTO `university` VALUES (40100, '北京邮电大学', '双一流', '教育学', '北京市', 4, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=799e34b666ba173dabcc9db32a8055ef', 36);
INSERT INTO `university` VALUES (40100, ' 北京师范大学', '双一流', '教育学', '北京市', 4, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=0483399f0717ad58fc84c205686a3e46', 37);
INSERT INTO `university` VALUES (40100, '中央民族大学', '双一流', '教育学', '北京市', 12, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=a917d8ec97d68f9267720ca2d1ee3e4a', 38);
INSERT INTO `university` VALUES (40100, '天津大学', '双一流', '教育学', '天津市', 35, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=912305921a8f06ac77a17201ff6b38af', 39);
INSERT INTO `university` VALUES (40100, '天津职业技术师范大学', '双非', '教育学', '天津市', 31, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=37e8782c20d414363cda9d85c6de3a5d', 40);
INSERT INTO `university` VALUES (50100, '清华大学', '双一流', '文学', '北京市', 4, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=385b01a27b1bf406ae2f3e9350b18bbb', 41);
INSERT INTO `university` VALUES (50100, '中央财经大学', '双一流', '文学', '北京市', 4, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=1616fd987a8951f59b64942d3993cd98', 42);
INSERT INTO `university` VALUES (50100, '南开大学', '双一流', '文学', '天津市', 1, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=e0d1052afcf7170f973e7a7b8ce7de0d', 43);
INSERT INTO `university` VALUES (50100, '天津大学', '双一流', '文学', '天津市', 6, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=19868ce638d4d551e57225baaf41a988', 44);
INSERT INTO `university` VALUES (50100, '山西师范大学', '双非', '文学', '山西省', 46, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=894321e8ad166d23a536f2ba1bba31a7', 45);
INSERT INTO `university` VALUES (50100, '内蒙古师范大学', '双非', '文学', '内蒙古省', 37, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=f76da4a6dee7762dd7ca7007a3ec4799', 46);
INSERT INTO `university` VALUES (50100, '长春理工大学', '双非', '文学', '吉林省', 52, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=46f3d0e635d8744b2282f59d7b670875', 47);
INSERT INTO `university` VALUES (50100, '吉林师范大学', '双非', '文学', '吉林省', 22, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=446cc21293fdd331362e3b4fd8f9afd2', 48);
INSERT INTO `university` VALUES (50100, '长春师范大学', '双非', '文学', '吉林省', 27, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=b338422c50f2c631a4a3ab4c61fd779f', 49);
INSERT INTO `university` VALUES (50100, '佳木斯大学', '双非', '文学', '黑龙江省', 10, 'https://yz.chsi.com.cn/zsml/yjfxdetail?id=878c98b8ed3a042b50ceeb79f453924d', 50);
INSERT INTO `university` VALUES (60100, '中国人民大学', '双一流', '考古学', '北京市', 4, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367879.dhtml', 51);
INSERT INTO `university` VALUES (60100, '北京师范大学', '双一流', '考古学', '北京市', 4, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367859.dhtml', 52);
INSERT INTO `university` VALUES (60100, '首都师范大学', '双一流', '考古学', '北京市', 112, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367860.dhtml', 53);
INSERT INTO `university` VALUES (60100, '中央民族大学', '双一流', '考古学', '北京市', 5, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367920.dhtml', 54);
INSERT INTO `university` VALUES (60100, '南开大学', '双一流', '考古学', '北京市', 20, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367949.dhtml', 55);
INSERT INTO `university` VALUES (60100, '天津师范大学', '双非', '考古学', '天津市', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367950.dhtml', 56);
INSERT INTO `university` VALUES (60100, '河北大学', '双非', '考古学', '河北省', 12, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367977.dhtml', 57);
INSERT INTO `university` VALUES (60100, '河北师范大学', '双非', '考古学', '河北省', 48, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367982.dhtml', 58);
INSERT INTO `university` VALUES (60100, '山西大学', '双一流', '考古学', '山西省', 148, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367997.dhtml', 59);
INSERT INTO `university` VALUES (60100, '辽宁大学', '双一流', '考古学', '辽宁省', 6, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368032.dhtml', 60);
INSERT INTO `university` VALUES (70100, '中国人民大学', '双一流', '数学', '北京市', 19, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367879.dhtml', 61);
INSERT INTO `university` VALUES (70100, '清华大学', '双一流', '数学', '北京市', 10, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367880.dhtml', 62);
INSERT INTO `university` VALUES (70100, '北京交通大学', '双一流', '数学', '北京市', 80, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367881.dhtml', 63);
INSERT INTO `university` VALUES (70100, '北京工业大学', '双一流', '数学', '北京市', 27, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367882.dhtml', 64);
INSERT INTO `university` VALUES (70100, '北京航空航天大学', '双一流', '数学', '北京市', 70, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367883.dhtml', 65);
INSERT INTO `university` VALUES (70100, '北京理工大学', '双一流', '数学', '北京市', 40, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367884.dhtml', 66);
INSERT INTO `university` VALUES (70100, '北京科技大学', '双一流', '数学', '北京市', 250, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367896.dhtml', 67);
INSERT INTO `university` VALUES (70100, '北方工业大学', '双非', '数学', '北京市', 96, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367886.dhtml', 68);
INSERT INTO `university` VALUES (70100, '北京化工大学', '双一流', '数学', '北京市', 55, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367877.dhtml', 69);
INSERT INTO `university` VALUES (70100, '北京工商大学', '双非', '数学', '北京市', 10, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367888.dhtml', 70);
INSERT INTO `university` VALUES (80100, '清华大学', '双一流', '力学', '北京市', 2, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367880.dhtml', 71);
INSERT INTO `university` VALUES (80100, '北京交通大学', '双一流', '力学', '北京市', 52, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367881.dhtml', 72);
INSERT INTO `university` VALUES (80100, '北京工业大学', '双一流', '力学', '北京市', 100, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367882.dhtml', 73);
INSERT INTO `university` VALUES (80100, '北京理工大学', '双一流', '力学', '北京市', 17, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367884.dhtml', 74);
INSERT INTO `university` VALUES (80100, '天津大学', '双一流', '力学', '天津市', 18, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367959.dhtml', 75);
INSERT INTO `university` VALUES (80100, '中北大学', '双非', '力学', '山西省', 56, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367995.dhtml', 76);
INSERT INTO `university` VALUES (80100, '大连理工大学', '双一流', '力学', '辽宁省', 17, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368033.dhtml', 77);
INSERT INTO `university` VALUES (80100, '同济大学', '双一流', '力学', '上海市', 20, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368128.dhtml', 78);
INSERT INTO `university` VALUES (80100, '江苏科技大学', '双非', '力学', '江苏省', 49, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368183.dhtml', 79);
INSERT INTO `university` VALUES (80100, '安徽理工大学', '双非', '力学', '安徽省', 50, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368238.dhtml', 80);
INSERT INTO `university` VALUES (90100, '北京科技大学', '双一流', '作物学', '北京市', 20, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367896.dhtml', 81);
INSERT INTO `university` VALUES (90100, '北京农学院', '双非', '作物学', '北京市', 51, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367894.dhtml', 82);
INSERT INTO `university` VALUES (90100, '天津农学院', '双非', '作物学', '天津市', 68, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-677414.dhtml', 83);
INSERT INTO `university` VALUES (90100, '吉林大学', '双一流', '作物学', '吉林省', 60, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368065.dhtml', 84);
INSERT INTO `university` VALUES (90100, '浙江农林大学', '双非', '作物学', '浙江省', 96, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368216.dhtml', 85);
INSERT INTO `university` VALUES (90100, '山东农业大学', '双非', '作物学', '山东省', 67, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368295.dhtml', 86);
INSERT INTO `university` VALUES (90100, '河南大学', '双一流', '作物学', '河南省', 31, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368325.dhtml', 87);
INSERT INTO `university` VALUES (90100, '长江大学', '双非', '作物学', '湖北省', 38, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368360.dhtml', 88);
INSERT INTO `university` VALUES (90100, '湖南农业大学', '双非', '作物学', '湖南省', 96, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368392.dhtml', 89);
INSERT INTO `university` VALUES (90100, '贵州大学', '双一流', '作物学', '贵州省', 19, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368502.dhtml', 90);
INSERT INTO `university` VALUES (100100, '北京航空航天大学', '双一流', '医学', '北京市', 10, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367883.dhtml', 91);
INSERT INTO `university` VALUES (100100, '河北医科大学', '双非', '医学', '河北省', 6, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367961.dhtml', 92);
INSERT INTO `university` VALUES (100100, '山西医科大学', NULL, '医学', '山西省', 8, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367992.dhtml', 93);
INSERT INTO `university` VALUES (100100, '内蒙古科技大学', '双非', '医学', '内蒙古省', 42, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368001.dhtml', 94);
INSERT INTO `university` VALUES (100100, '内蒙古民族大学', '双非', '医学', '内蒙古省', 7, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368006.dhtml', 95);
INSERT INTO `university` VALUES (100100, '同济大学', '双一流', '医学', '上海市', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368128.dhtml', 96);
INSERT INTO `university` VALUES (100100, '上海交通大学', '双一流', '医学', '上海市', 5, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368129.dhtml', 97);
INSERT INTO `university` VALUES (100100, '华东师范大学', '双一流', '医学', '上海市', 5, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368137.dhtml', 98);
INSERT INTO `university` VALUES (100100, '南京大学', '双一流', '医学', '江苏省', 45, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368194.dhtml', 99);
INSERT INTO `university` VALUES (100100, '苏州大学', '双一流', '医学', '江苏省', 18, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368179.dhtml', 100);
INSERT INTO `university` VALUES (110100, '国防大学', '双非', '军事学', '北京市', 1, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367819.dhtml', 101);
INSERT INTO `university` VALUES (110100, '陆军指挥学院', '双非', '军事学', '江苏省', 2, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368168.dhtml', 102);
INSERT INTO `university` VALUES (110100, '军事科学院', '双非', '军事学', '北京市', 2, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368168.dhtml', 103);
INSERT INTO `university` VALUES (120100, '中国人民大学', '双一流', '艺术学', '北京市', 5, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367879.dhtml', 104);
INSERT INTO `university` VALUES (120100, '清华大学', '双一流', '艺术学', '北京市', 2, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367880.dhtml', 105);
INSERT INTO `university` VALUES (120100, '北京服装学院', '双非', '艺术学', '北京市', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367889.dhtml', 106);
INSERT INTO `university` VALUES (120100, '北京印刷学院', '双非', '艺术学', '北京市', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367891.dhtml', 107);
INSERT INTO `university` VALUES (120100, '中国农业大学', '双一流', '艺术学', '北京市', 4, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367893.dhtml', 108);
INSERT INTO `university` VALUES (120100, '北京师范大学', '双一流', '艺术学', '北京市', 5, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367859.dhtml', 109);
INSERT INTO `university` VALUES (120100, '首都师范大学', '双一流', '艺术学', '北京市', 10, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367860.dhtml', 110);
INSERT INTO `university` VALUES (120100, '北京语言大学', '双非', '艺术学', '北京市', 2, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367864.dhtml', 111);
INSERT INTO `university` VALUES (120100, '中国传媒大学', '双一流', '艺术学', '北京市', 8, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367876.dhtml', 112);
INSERT INTO `university` VALUES (120100, '中央财经大学', '双一流', '艺术学', '北京市', 4, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367866.dhtml', 113);
INSERT INTO `university` VALUES (130100, '北京大学', '双一流', '科学技术哲学', '北京市', 2, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367878.dhtml', 114);
INSERT INTO `university` VALUES (130100, '北京交通大学', '双一流', '科学技术哲学', '北京市', 1, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367881.dhtml', 115);
INSERT INTO `university` VALUES (130100, '北京科技大学', '双一流', '科学技术哲学', '北京市', 4, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367896.dhtml', 116);
INSERT INTO `university` VALUES (130100, '首都师范大学', '双一流', '科学技术哲学', '北京市', 1, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367860.dhtml', 117);
INSERT INTO `university` VALUES (130100, '山西大学', '双一流', '科学技术哲学', '山西省', 4, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367997.dhtml', 118);
INSERT INTO `university` VALUES (130100, '内蒙古大学', '双一流', '科学技术哲学', '内蒙', 1, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368005.dhtml', 119);
INSERT INTO `university` VALUES (130100, '内蒙古师范大学', '双非', '科学技术哲学', '内蒙', 1, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-367999.dhtml', 120);
INSERT INTO `university` VALUES (130100, '沈阳师范大学', '双非', '科学技术哲学', '辽宁省', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368031.dhtml', 121);
INSERT INTO `university` VALUES (130100, '渤海大学', '双非', '科学技术哲学', '辽宁省', 3, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368028.dhtml', 122);
INSERT INTO `university` VALUES (130100, '吉林大学', '双一流', '科学技术哲学', '吉林省', 1, 'https://yz.chsi.com.cn/sch/schoolInfo--schId-368065.dhtml', 123);

SET FOREIGN_KEY_CHECKS = 1;
