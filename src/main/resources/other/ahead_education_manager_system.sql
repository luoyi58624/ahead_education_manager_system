/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : ahead_education_manager_system

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 29/05/2019 11:36:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `admin_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_age` int(10) NULL DEFAULT NULL,
  `admin_native_place` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_idcard` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_brithday` datetime(0) NULL DEFAULT NULL,
  `admin_office_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_mobile_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_eamil` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_qq` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_entry_time` datetime(0) NULL DEFAULT NULL,
  `admin_eduction_level` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1 有效 员工\r\n            0 无效\r\n            2 教师\r\n            ',
  `admin_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5加密密码',
  PRIMARY KEY (`admin_id`) USING BTREE,
  INDEX `FK_Reference_1`(`role_id`) USING BTREE,
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (10, 1, '杨经理', '男', 25, '江西', '3625281979X8432', '1982-09-16 00:00:00', '0791-87875656', '13872051811', '1254567883@qq.com', '江西南昌', '434342315', '2016-09-13 00:00:00', '本科', '网站总管    ', '2', NULL);
INSERT INTO `admin` VALUES (13, 2, '许雪龙', '男', 33, '江西', '346565645666666', '1988-09-16 00:00:00', '0791-87875656', '13856563235', '34545999xx@qq.com', '江西南昌', '454767878', '2015-07-03 00:00:00', '专科', '    ', '1', NULL);
INSERT INTO `admin` VALUES (18, 3, '张小英', '女', 24, '江西', '4546576576876', '1989-09-16 00:00:00', '0791-85653435', '13787323434', '7232376543@qq.com', '江西南昌', '232342423', '2018-07-02 00:00:00', '本科', ' ', '3', NULL);
INSERT INTO `admin` VALUES (19, 4, '李创', '男', 37, '安徽', '5001420193434448', '1981-09-16 00:00:00', '0791-87875656', '13998945778', '3434354763@qq.com', '江西南昌', '5657687666', '2016-07-13 00:00:00', '硕士', '    ', '2', NULL);
INSERT INTO `admin` VALUES (20, 2, '郭立强', '男', 37, '内蒙古', '768888888888888', '1982-06-02 00:00:00', '0791-87875656', '13878978978', '234243@qq.com', '江西南昌', '67879567567', '2018-07-03 00:00:00', '专科', '   ', '1', NULL);
INSERT INTO `admin` VALUES (23, 4, '黎子强', '男', 34, '江西', '23422242348888', '2018-07-04 00:00:00', '0791-87875656', '13767689978', 'sdfdsf@136.com', '江西高安', '3543543534', '2018-07-03 00:00:00', '本科', '           ', '2', NULL);
INSERT INTO `admin` VALUES (25, 4, '毛敏', '女', 30, '江西', '45666593454656', '2018-08-22 00:00:00', '0791-65675787', '13657687689', '355459999@qq.com', '江西南昌', '6789879079', '2017-07-20 00:00:00', '硕士', ' ', '2', NULL);
INSERT INTO `admin` VALUES (26, 4, '谭时明', '男', 35, '江西', '92034543564568', '2018-08-08 00:00:00', '0791-87875656', '13576057878', 'sdfdsf@136.com', '江西南昌', '6789879079', '2018-07-19 00:00:00', '本科', '2sd ', '2', NULL);
INSERT INTO `admin` VALUES (27, 4, '黄娟', '女', 36, '浙江', '93456576578868', '1994-06-30 00:00:00', '0791-34355657', '13657687689', '12xxxx3@qq.com', '江西南昌', '67879567567', '2016-07-06 00:00:00', '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (28, 4, '万坤', '男', 28, '天津', '23422242348888', '1984-07-05 00:00:00', '0791-87855456', '13787323434', 'wefdsfa@126.com', '江西南昌', '5657687666', '2017-08-01 00:00:00', '硕士', '  ', '2', NULL);
INSERT INTO `admin` VALUES (29, 4, '龚霞', '女', 26, '北京', '23422242348888', '2018-08-01 00:00:00', '0791-87873456', '13576567889', '12xxxx3@qq.com', '江西南昌', '67879567567', '2018-08-08 00:00:00', '博士', '   ', '2', NULL);
INSERT INTO `admin` VALUES (30, 4, '刘红', '女', 25, '江西', '23422242348888', '1986-07-30 00:00:00', '0791-87875656', '13657687689', '12xxxx3@qq.com', '江西南昌', '67879567567', '2016-08-09 00:00:00', '硕士', '  ', '2', NULL);
INSERT INTO `admin` VALUES (31, 4, '袁耀', '男', 31, '江西', '2342224234656575757', '1985-07-31 00:00:00', '0791-87843456', '13576567889', '234243@qq.com', '江西南昌', '67879567567', '2018-08-16 00:00:00', '专科', ' sdfasfad ', '2', NULL);
INSERT INTO `admin` VALUES (32, 4, '罗园菁', '女', 35, '安徽', '3625281979XXXXXXXX', '2018-08-03 00:00:00', '0791-87875656', '13787323434', '212323@qq.com', '江西南昌', '6789879079', '2018-08-03 00:00:00', '博士', ' ', '2', NULL);
INSERT INTO `admin` VALUES (33, 3, '王倩倩', '女', 25, '江西', '3625281979XXXXXXXX', '2018-08-08 00:31:49', '0791-87434556', '13787323434', '355459999@qq.com', '江西南昌', '232342423', '2016-08-11 00:00:00', '硕士', ' ', '3', NULL);
INSERT INTO `admin` VALUES (34, 4, '王晖', '女', 35, '天津', '2333333333333', '2018-08-08 00:00:00', '0791-87875656', '13787323434', '12xxxx3@qq.com', '江西南昌', '323234323', '2017-08-01 00:00:00', '本科', '   ', '2', NULL);
INSERT INTO `admin` VALUES (35, 4, '徐超', '男', 35, '江西', '2342224234656575757', '2018-08-08 00:31:49', '0791-65675787', '13787323434', '355459999@qq.com', '江西南昌', '67879567567', '2017-08-08 00:00:00', '博士', '  ', '2', NULL);
INSERT INTO `admin` VALUES (36, 4, '梁江海', '男', 35, '天津', '3625281979XXXXXXXX', '2018-08-08 00:31:49', '0791-87875656', '13576567889', 'wefdsfa@126.com', '江西南昌', '67879567567', '2017-07-31 00:00:00', '本科', '  ', '2', NULL);
INSERT INTO `admin` VALUES (37, 4, '郑川', '女', 35, '江西', '2333333333333', '2018-08-08 00:31:49', '0791-87875656', '13787323434', '24243242@qq.com', '江西南昌', '454767878', '2017-09-07 00:00:00', '硕士', '  ', '2', NULL);
INSERT INTO `admin` VALUES (38, 4, '熊婧', '女', 35, '安徽', '2342224234656575757', '2018-08-08 00:31:49', '0791-87875656', '13576567889', '12xxxx3@qq.com', '江西南昌', '67879567567', '2017-05-09 00:00:00', '本科', '  ', '2', NULL);
INSERT INTO `admin` VALUES (39, 4, '陈紫琪', '女', 35, '江西', '2342224234', '2018-08-08 00:31:49', '0791-87875656', '13657687689', 'wefdsfa@126.com', '江西南昌', '565768766', '2018-08-08 00:00:00', '专科', '   ', '2', NULL);
INSERT INTO `admin` VALUES (40, 4, '吴忠胜', '男', 35, '江西', '2333333333333', '2018-08-08 00:31:49', '0791-87875656', '13787323434', '355459999@qq.com', '江西南昌', '323234323', '2017-10-25 00:00:00', '本科', '  ', '2', NULL);
INSERT INTO `admin` VALUES (41, 4, '郑瑶瑶', '女', 35, '天津', '2342224234656575757', '2018-08-08 00:31:49', '0791-85653435', '13787323434', 'sdfdsf@136.com', '江西南昌', '67879567567', '2017-07-06 00:00:00', '硕士', '   ', '2', NULL);
INSERT INTO `admin` VALUES (42, 4, '史占鹏', '男', 35, '安徽', '23422242348888', '2018-08-08 00:31:49', '0791-65675787', '13576567889', '12xxxx3@qq.com', '江西南昌', '6789879079', '2017-07-31 00:00:00', '本科', '  ', '2', NULL);
INSERT INTO `admin` VALUES (43, 4, '胡建明', '男', 35, '江西', '23422242348888', '2018-08-08 00:31:49', '0791-87875656', '13787323434', 'sdfdsf@136.com', '江西南昌', '6789879079', '2017-08-24 00:00:00', '专科', '     ', '2', NULL);
INSERT INTO `admin` VALUES (44, 4, '金建华', '男', 35, '天津', '2342224234', '2018-08-08 00:31:49', '0791-65675787', '13576051848', 'sdfdsf@136.com', '江西南昌', '67879567567', '2015-08-11 00:00:00', '本科', '  ', '2', NULL);
INSERT INTO `admin` VALUES (45, 4, '兰洁', '女', 35, '江西', '2342224234', '2018-08-08 00:00:00', '0791-65675787', '13657687689', '343435463@qq.com', '江西南昌', '67879567567', '2018-08-31 00:00:00', '专科', '    ', '2', NULL);
INSERT INTO `admin` VALUES (46, 4, '戴胜男', '女', 35, '安徽', '3625281979XXXXX665', '2018-08-08 00:00:00', '0791-87875656', '13576051848', 'sdfdsf@136.com', '江西南昌', '67879567567', '2017-08-25 00:00:00', '本科', '    ', '2', NULL);
INSERT INTO `admin` VALUES (49, 4, '随和', '男', 35, '天津', '3625281979XXXXXXXX', '2018-08-08 00:31:49', '0791-34355657', '13576567889', '12xxxx3@qq.com', '江西南昌', '5657687666', '2017-08-08 00:00:00', '博士', '   ', '2', NULL);
INSERT INTO `admin` VALUES (52, 4, '李隽', '女', 35, '天津', '2342224234', '2018-08-08 00:00:00', '0791-34355657', '13787323434', 'sdfdsf@136.com', '江西南昌', '67879567567', '2018-07-30 00:00:00', '本科', '  ', '2', NULL);
INSERT INTO `admin` VALUES (53, 4, '涂斌', '男', 35, '江西', '2342224234656575757', '2018-08-08 00:31:49', '0791-34355657', '13787323434', 'wefdsfa@126.com', '江西南昌', '67879567567', '2017-05-20 00:00:00', '博士', '  ', '2', NULL);
INSERT INTO `admin` VALUES (54, 4, '熊勇', '男', 35, '江西', '3625281979XXXXX6567', '2018-08-08 00:00:00', '0791-87875656', '13657687689', '355459999@qq.com', '江西南昌', '67879567567', '2017-05-03 00:00:00', '本科', '         ', '2', NULL);
INSERT INTO `admin` VALUES (55, 3, '纪翠玲', '女', 23, '江西', '2342224234656575757', '2018-05-30 00:00:00', '0791-34355657', '13576567889', 'wefdsfa@126.com', '江西南昌', '6789879079', '2018-06-15 00:00:00', '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (56, 3, '朱琳', '女', 25, '江西', '2333333333333', NULL, '0791-65675787', '13787323434', '355459999@qq.com', '江西南昌', '67879567567', NULL, '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (57, 3, '刘萍', '女', 24, '江西', '2333333333333', NULL, '345465768', '13787323434', 'wefdsfa@126.com', '江西南昌', '6789879079', NULL, '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (58, 3, '付豪', '男', 25, '江西', '2342224234656575757', NULL, '0791-34355657', '13576567889', 'wefdsfa@126.com', '江西南昌', '6789879079', NULL, '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (59, 3, '程鳞雅', '女', 24, '江西', '2333333333333', NULL, '0791-65675787', '13576567889', 'wefdsfa@126.com', '安徽宿州', '67879567567', NULL, '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (60, 3, '孟辽远', '男', 29, '江西', '23422242348888', NULL, '0791-34355657', '13576567889', '355459999@qq.com', '江西南昌', '6789879079', NULL, '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (61, 3, '闫玉姣', '女', 33, '江西', '2323', NULL, '', '13576567889', '234243@qq.com', '', '', NULL, '本科', ' ', '3', NULL);
INSERT INTO `admin` VALUES (62, 3, '郑金梅', '女', 25, '江西', '2333333333333', NULL, '', '13576567889', '24243242@qq.com', '', '', NULL, '本科', '  ', '3', NULL);
INSERT INTO `admin` VALUES (63, 3, '刘满满', '女', 25, '江西', '2342224234656575757', NULL, '12', '13576051848', '234243@qq.com', '', '', NULL, '本科', '', '3', NULL);
INSERT INTO `admin` VALUES (64, 3, '曾美玲', '女', 25, '江西', '2342224234', NULL, '', '13576051848', '12xxxx3@qq.com', '', '', NULL, '本科', '曾美玲', '3', NULL);
INSERT INTO `admin` VALUES (65, 3, '李宇', '男', 26, '江西', '1212', NULL, '', '1354678768', '212323@qq.com', '', '', NULL, '本科', '李宇 ', '3', NULL);
INSERT INTO `admin` VALUES (66, 3, '刘杰', '女', 25, '江西', '2333333333333', NULL, '', '13657687689', '343435463@qq.com', '', '', NULL, '本科', '刘杰', '3', NULL);
INSERT INTO `admin` VALUES (67, 4, '张彦', '男', 35, '江西', '23', NULL, '345465768', '13787323434', '234243@qq.com', '', '23', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (68, 4, '戴瑞轩', '女', 30, '江西', '23', NULL, '143565676', '13576051848', '7232343@qq.com', '', '', NULL, '本科', ' ', '2', NULL);
INSERT INTO `admin` VALUES (69, 4, '曾继勇', '男', 32, '江西', '12', NULL, '212', '21', '234243@qq.com', '', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (70, 4, '李长云', '男', 32, '江西', '23', NULL, '232', '4', '343435463@qq.com', '', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (71, 4, '陈诩', '男', 25, '江西', '2342224234656575757', NULL, '212', '2', 'sdfdsf@136.com', '23', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (72, 4, '彭杰', '男', 26, '江西', '23', NULL, '0791-85653435', '12', '212323@qq.com', '34', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (73, 4, '熊英', '女', 28, '江西', '232323', NULL, '34', '21', '34545999xx@qq.com', '23', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (74, 4, '周洁', '女', 28, '江西', '232', NULL, '0791-85653435', '23', '212323@qq.com', '34', '', NULL, '本科', ' ', '2', NULL);
INSERT INTO `admin` VALUES (75, 4, '王伟', '男', 27, '江西', '232', NULL, '0791-232434523', '34', '212323@qq.com', '23', '', NULL, '本科', ' ', '2', NULL);
INSERT INTO `admin` VALUES (76, 4, '万杜鹏', '男', 35, '江西', '23', NULL, '345465768', '235', '34545999xx@qq.com', '54', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (77, 4, '徐俊杰', '男', 35, '江西', '23', NULL, '33', '12', '212323@qq.com', '34', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (78, 4, '王宇轩', '男', 31, '江西', '232', NULL, '143565676', '23', '212323@qq.com', '43', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (79, 4, '吴雅林', '男', 36, '江西', '23', NULL, '32', '12', '212323@qq.com1', '212', '23', NULL, '博士', '', '2', NULL);
INSERT INTO `admin` VALUES (80, 4, '张平', '男', 31, '江西', '23', NULL, '4', '34', '212323@qq.com1', '23', '', NULL, '本科', '', '2', NULL);
INSERT INTO `admin` VALUES (81, 4, '周亚琪', '男', 31, '江西', '2', NULL, '34', '3', '212323@qq.com', '23', '23', NULL, '本科', '', '2', NULL);

-- ----------------------------
-- Table structure for anthorty_info
-- ----------------------------
DROP TABLE IF EXISTS `anthorty_info`;
CREATE TABLE `anthorty_info`  (
  `anthorty_id` int(11) NOT NULL AUTO_INCREMENT,
  `anthorty_pid` int(11) NULL DEFAULT NULL,
  `anthorty_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anthorty_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `anthorty_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`anthorty_id`) USING BTREE,
  INDEX `FK_Reference_2`(`anthorty_pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anthorty_info
-- ----------------------------
INSERT INTO `anthorty_info` VALUES (1, -1, '根目录', '', '');
INSERT INTO `anthorty_info` VALUES (2, 1, '系统管理', '管理', NULL);
INSERT INTO `anthorty_info` VALUES (9, 1, '通知管理', '', '');
INSERT INTO `anthorty_info` VALUES (11, 2, '员工管理', 'system/list.do', 'system/list.do');
INSERT INTO `anthorty_info` VALUES (12, 2, '角色管理', 'roleinfo/list.do', 'roleinfo/list.do');
INSERT INTO `anthorty_info` VALUES (13, 2, '角色变更', 'roleinfo/staffinforolelist.do', 'roleinfo/staffinforolelist.do');
INSERT INTO `anthorty_info` VALUES (14, 2, '权限管理', 'anthorty/list.do', 'anthorty/list.do');
INSERT INTO `anthorty_info` VALUES (15, 2, '权限变更', 'anthotychange/list.do', 'anthotychange/list.do');
INSERT INTO `anthorty_info` VALUES (16, 2, '数据字典', 'datadictionary/list.do', 'datadictionary/list.do');
INSERT INTO `anthorty_info` VALUES (17, 9, '模板管理', 'template/list.do', 'template/list.do');
INSERT INTO `anthorty_info` VALUES (18, 9, '短信管理', 'messafeinfo/list.do', 'messafeinfo/list.do');
INSERT INTO `anthorty_info` VALUES (19, 9, '邮件管理', 'email/list.do', 'email/list.do');
INSERT INTO `anthorty_info` VALUES (26, 1, '学生管理', '', '');
INSERT INTO `anthorty_info` VALUES (32, 1, '教务管理', '', '');
INSERT INTO `anthorty_info` VALUES (54, 26, '班主任评价', 'communicateinfo/list.do', 'communicateinfo/list.do');
INSERT INTO `anthorty_info` VALUES (55, 26, '期末成绩', 'studentwritegrade/list.do', 'studentwritegrade/list.do');
INSERT INTO `anthorty_info` VALUES (56, 26, '周测成绩(未实现)', 'view/StudentRealm/studentwritegrade1/studentwritegrade_list1.jsp', 'view/StudentRealm/studentwritegrade1/studentwritegrade_list1.jsp');
INSERT INTO `anthorty_info` VALUES (57, 26, '考勤管理', 'attendanceinfo/list.do', 'attendanceinfo/list.do');
INSERT INTO `anthorty_info` VALUES (59, 32, '课程管理', 'disciplineinfo/list.do', 'disciplineinfo/list.do');
INSERT INTO `anthorty_info` VALUES (60, 32, '教室管理', 'classroominfo/list.do', 'classroominfo/list.do');
INSERT INTO `anthorty_info` VALUES (61, 32, '课程表', 'syllabusinfo/list.do', 'syllabusinfo/list.do');
INSERT INTO `anthorty_info` VALUES (62, 32, '教师管理', 'teacher/list.do', 'teacher/list.do');
INSERT INTO `anthorty_info` VALUES (63, 32, '班级管理', 'classinfo/list.do', 'classinfo/list.do');
INSERT INTO `anthorty_info` VALUES (64, 32, '班级事务', 'classtransactioninfo/list.do', 'classtransactioninfo/list.do');
INSERT INTO `anthorty_info` VALUES (65, 1, '教务活动', '', '');
INSERT INTO `anthorty_info` VALUES (66, 65, '活动管理', 'marketactive/list.do', 'marketactive/list.do');
INSERT INTO `anthorty_info` VALUES (70, 26, '缴费登记', 'studentpayment/list.do', 'studentpayment/list.do');
INSERT INTO `anthorty_info` VALUES (72, 32, '学生评教(月度)', '', 'evaluationxueqi/list.do');
INSERT INTO `anthorty_info` VALUES (73, 26, '学习经历', 'studentlearninfo/list.do', 'studentlearninfo/list.do');
INSERT INTO `anthorty_info` VALUES (74, 26, '家庭成员', 'studentfamilyinfo/list.do', 'studentfamilyinfo/list.do');
INSERT INTO `anthorty_info` VALUES (76, 1, '数据分析与统计', '', '');
INSERT INTO `anthorty_info` VALUES (77, 76, '学生信息分析与统计', 'view/studentbootm.jsp', 'view/studentbootm.jsp');
INSERT INTO `anthorty_info` VALUES (78, 76, '教师信息分析与统计', 'view/teacherbootm.jsp', 'view/teacherbootm.jsp');
INSERT INTO `anthorty_info` VALUES (79, 9, '通知管理', 'noticeinfo/list.do', 'noticeinfo/list.do');
INSERT INTO `anthorty_info` VALUES (80, 26, '社会实践及技能培训', 'studentpracticeinfo/list.do', 'studentpracticeinfo/list.do');
INSERT INTO `anthorty_info` VALUES (81, 26, '毕业论文及科研训练', 'studentgraduationinfo/list.do', 'studentgraduationinfo/list.do');
INSERT INTO `anthorty_info` VALUES (82, 26, '学生信息', 'StudentRealm/list.do', 'StudentRealm/list.do');
INSERT INTO `anthorty_info` VALUES (84, 1, '文件上传', '', '');
INSERT INTO `anthorty_info` VALUES (85, 84, '文件上传', 'uploadfile/list.do', 'uploadfile/list.do');
INSERT INTO `anthorty_info` VALUES (86, 32, '学生评教(学期)', '', 'evaluationinfo/list.do');
INSERT INTO `anthorty_info` VALUES (88, 32, '听课记录(未实现)', 'view/recruitstudent/auditioninfo/auditioninfo_list.jsp', 'view/recruitstudent/auditioninfo/auditioninfo_list.jsp');
INSERT INTO `anthorty_info` VALUES (89, 1, '学工管理', '2323', '');
INSERT INTO `anthorty_info` VALUES (90, 89, '查寝', 'sd', 'aaad/s#');

-- ----------------------------
-- Table structure for attendance_info
-- ----------------------------
DROP TABLE IF EXISTS `attendance_info`;
CREATE TABLE `attendance_info`  (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `attendance_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attendance_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attendance_time` datetime(0) NULL DEFAULT NULL,
  `attendance_remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attendance_xuenian` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attendance_xueqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attendance_month` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`attendance_id`) USING BTREE,
  INDEX `FK_Reference_22`(`student_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  CONSTRAINT `attendance_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance_info
-- ----------------------------
INSERT INTO `attendance_info` VALUES (1, 20, 10, '家里有事，回老家啦', '缺席', '2019-04-28 00:00:00', 'aaadsadada', '2017-2018学年', '第一学期', '4月');

-- ----------------------------
-- Table structure for audition_info
-- ----------------------------
DROP TABLE IF EXISTS `audition_info`;
CREATE TABLE `audition_info`  (
  `audition_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `audition_time` datetime(0) NULL DEFAULT NULL,
  `audition_addr` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audition_course` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audition_desc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`audition_id`) USING BTREE,
  INDEX `FK_Reference_10`(`student_id`) USING BTREE,
  CONSTRAINT `audition_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `syllabus_id` int(11) NULL DEFAULT NULL,
  `classroom_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_number` int(11) NULL DEFAULT NULL,
  `class_start_time` datetime(0) NULL DEFAULT NULL,
  `class_end_time` datetime(0) NULL DEFAULT NULL,
  `class_isuesd` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE,
  INDEX `FK_Reference_18`(`syllabus_id`) USING BTREE,
  INDEX `FK_Reference_19`(`classroom_id`) USING BTREE,
  INDEX `FK_Reference_20`(`staff_id`) USING BTREE,
  CONSTRAINT `class_info_ibfk_2` FOREIGN KEY (`syllabus_id`) REFERENCES `syllabus_info` (`syllabus_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `class_info_ibfk_3` FOREIGN KEY (`classroom_id`) REFERENCES `classroom_info` (`classroom_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (8, 1, 15, 33, '17Java班', 38, '2018-08-01 00:00:00', '2019-03-15 00:00:00', NULL, '1', '', '软件技术(Java软件开发方向)');
INSERT INTO `class_info` VALUES (12, 4, 7, 33, '17测试1班', 38, '2018-08-03 00:00:00', '2019-06-30 00:00:00', NULL, '1', '', '软件技术(软件测试方向)');
INSERT INTO `class_info` VALUES (13, 7, 13, 57, '17测试2班', 44, '2018-08-01 00:00:00', '2019-05-09 00:00:00', NULL, '1', 'aa', '软件技术(软件测试方向)');
INSERT INTO `class_info` VALUES (14, 8, 8, 56, '17测试3班', 41, '2018-08-01 00:00:00', '2019-06-06 00:00:00', NULL, '1', '', '软件技术(软件测试方向)');
INSERT INTO `class_info` VALUES (15, 9, 14, 18, '17测试4班', 47, '2018-08-01 00:00:00', '2019-06-04 00:00:00', NULL, '1', '软件技术(Java软件开发方向)', '软件技术(软件测试方向)');
INSERT INTO `class_info` VALUES (16, 10, 12, 33, '17UI(1)班', 45, NULL, NULL, NULL, '1', '', '软件技术(前端开发与UI设计方向)');
INSERT INTO `class_info` VALUES (17, 11, 12, 57, '17UI(2)班', 35, NULL, NULL, NULL, '1', '', '软件技术(前端开发与UI设计方向)');
INSERT INTO `class_info` VALUES (18, 12, 9, 55, '17UI(3)班', 38, NULL, NULL, NULL, '1', '', '软件技术(前端开发与UI设计方向)');
INSERT INTO `class_info` VALUES (19, 13, 12, 59, '17UI(4)班', 38, NULL, NULL, NULL, '1', '', '软件技术(前端开发与UI设计方向)');
INSERT INTO `class_info` VALUES (20, 14, 10, 55, '17前端开发(1)班', 52, NULL, NULL, NULL, '1', '', '软件技术(前端开发与UI设计方向)');
INSERT INTO `class_info` VALUES (21, 15, 1, 18, '17前端开发(2)班', 46, NULL, NULL, NULL, '1', '', '软件技术(前端开发与UI设计方向)');
INSERT INTO `class_info` VALUES (22, 16, 3, 18, '17运维与通信(1)班', 38, NULL, NULL, NULL, '1', '', '软件技术(通信与运维方向)');
INSERT INTO `class_info` VALUES (23, 17, 2, 58, '17运维与通信(2)班', 40, NULL, NULL, NULL, '1', '', '软件技术(通信与运维方向)');
INSERT INTO `class_info` VALUES (24, 1, 1, 33, '17电商1班', 45, NULL, NULL, NULL, '1', '', '软件技术(网络运营策划方向)');
INSERT INTO `class_info` VALUES (25, 19, 1, 56, '17电商2班', 42, NULL, NULL, NULL, '1', '', '软件技术(网络运营策划方向)');
INSERT INTO `class_info` VALUES (26, 38, 1, 55, '17电商3班', 45, NULL, NULL, NULL, '1', '', '软件技术(网络运营策划方向)');
INSERT INTO `class_info` VALUES (27, 20, 1, 61, '17VR班', 53, NULL, NULL, NULL, '0', '', '软件技术(VR虚拟与现实方向)');
INSERT INTO `class_info` VALUES (28, 39, 1, 18, '17电商4班', 45, NULL, NULL, NULL, '1', '', '软件技术(网络运营策划方向)');
INSERT INTO `class_info` VALUES (29, 40, 1, 61, '17VR班', 53, NULL, NULL, NULL, '1', '', '软件技术(VR虚拟与现实方向)');
INSERT INTO `class_info` VALUES (30, 41, 12, 62, '180301班', 44, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (31, 42, 1, 57, '180302班', 43, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (32, 43, 1, 56, '180303班', 44, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (33, 44, 1, 63, '180304班', 44, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (34, 45, 1, 55, '180305班', 43, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (35, 46, 1, 55, '180306班', 43, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (36, 47, 1, 64, '180307班', 43, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (37, 48, 1, 59, '180308班', 43, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (38, 49, 1, 65, '180309班', 43, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (39, 50, 1, 58, '180310班', 44, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (40, 51, 1, 33, '180311班', 42, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (41, 52, 1, 18, '180312班', 36, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (42, 53, 1, 66, '180313班', 35, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (43, 54, 1, 58, '180314班', 35, NULL, NULL, NULL, '1', '', '软件技术(18级)');
INSERT INTO `class_info` VALUES (44, 55, 1, 61, '180315班', 40, NULL, NULL, NULL, '1', '', '计算机应用技术');

-- ----------------------------
-- Table structure for class_transaction_info
-- ----------------------------
DROP TABLE IF EXISTS `class_transaction_info`;
CREATE TABLE `class_transaction_info`  (
  `class_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NULL DEFAULT NULL,
  `class_transaction_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_transaction_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_transaction_person` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_transaction_time` datetime(0) NULL DEFAULT NULL,
  `class_transaction_remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`class_transaction_id`) USING BTREE,
  INDEX `FK_Reference_21`(`class_id`) USING BTREE,
  CONSTRAINT `class_transaction_info_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_transaction_info
-- ----------------------------
INSERT INTO `class_transaction_info` VALUES (4, 13, '拓展活动', '学生拓展活动', '胡老师', '2018-09-13 00:00:00', '');

-- ----------------------------
-- Table structure for classroom_info
-- ----------------------------
DROP TABLE IF EXISTS `classroom_info`;
CREATE TABLE `classroom_info`  (
  `classroom_id` int(11) NOT NULL AUTO_INCREMENT,
  `classroom_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classroom_max` int(11) NULL DEFAULT NULL,
  `classroom_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classroom_remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classroom_mark` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`classroom_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classroom_info
-- ----------------------------
INSERT INTO `classroom_info` VALUES (1, 'A4-101', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (2, 'A4-102', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (3, 'A4-103', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (6, 'A4-104', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (7, 'A4-105', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (8, 'A4-201', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (9, 'A4-202', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (10, 'A4-203', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (11, 'A4-204', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (12, 'A4-205', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (13, 'A4-301', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (14, 'A4-302', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (15, 'A4-303', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (16, 'A4-304', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (17, 'A4-305', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (18, 'A5-101', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (19, 'A5-102', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (20, 'A5-103', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (21, 'A5-104', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (22, 'A5-105', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (23, 'A5-106', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (24, 'A5-107', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (25, 'A5-201', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (26, 'A5-202', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (27, 'A5-203', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (28, 'A5-204', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (29, 'A5-205', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (30, 'A5-206', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (31, 'A5-207', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (32, 'A5-301', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (33, 'A5-302', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (34, 'A5-303', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (35, 'A5-304', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (36, 'A5-305', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (37, 'A5-306', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (38, 'A5-307', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (39, 'A6-101', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (40, 'A6-102', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (41, 'A6-103', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (42, 'A6-201', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (43, 'A6-202', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (44, 'A6-203', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (45, 'A6-301', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (46, 'A6-302', 45, '电脑、投影仪', '', '1');
INSERT INTO `classroom_info` VALUES (47, 'A6-303', 45, '电脑、投影仪', '', '1');

-- ----------------------------
-- Table structure for communicate_info
-- ----------------------------
DROP TABLE IF EXISTS `communicate_info`;
CREATE TABLE `communicate_info`  (
  `communicate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `communicate_time` datetime(0) NULL DEFAULT NULL COMMENT '评价时间',
  `communicate_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价内容',
  `communicate_xuenian` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `communicate_xueqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leave_count` int(11) NULL DEFAULT NULL COMMENT '病事假统计',
  `truancy_count` int(11) NULL DEFAULT NULL COMMENT '旷课统计',
  `reward_punish` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖惩记载',
  PRIMARY KEY (`communicate_id`) USING BTREE,
  INDEX `FK_Reference_12`(`student_id`) USING BTREE,
  INDEX `FK_Reference_13`(`staff_id`) USING BTREE,
  CONSTRAINT `communicate_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of communicate_info
-- ----------------------------
INSERT INTO `communicate_info` VALUES (1, 20, 10, '2019-05-15 00:00:00', '表现很好！', '2018-2019学年', '第一学期', 2, 2, '23');

-- ----------------------------
-- Table structure for data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary`  (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES (5, '计划中', 'active_state', '活动状态');
INSERT INTO `data_dictionary` VALUES (6, '激活', 'active_state', '');
INSERT INTO `data_dictionary` VALUES (7, '完成', 'active_state', '');
INSERT INTO `data_dictionary` VALUES (8, '取消', 'active_state', '');
INSERT INTO `data_dictionary` VALUES (9, '野外拓展', 'active_type', '活动类型');
INSERT INTO `data_dictionary` VALUES (10, '说课比赛', 'active_type', '');
INSERT INTO `data_dictionary` VALUES (11, '技能大赛', 'active_type', '');
INSERT INTO `data_dictionary` VALUES (12, '小组活动', 'active_type', '');
INSERT INTO `data_dictionary` VALUES (13, '非常好', 'active_refect_estimate', '预期反应');
INSERT INTO `data_dictionary` VALUES (14, '好', 'active_refect_estimate', '');
INSERT INTO `data_dictionary` VALUES (15, '一般', 'active_refect_estimate', '');
INSERT INTO `data_dictionary` VALUES (16, '差', 'active_refect_estimate', '');
INSERT INTO `data_dictionary` VALUES (22, '现金', 'payment_method', '缴费方式');
INSERT INTO `data_dictionary` VALUES (23, '信用卡', 'payment_method', '');
INSERT INTO `data_dictionary` VALUES (24, '银行卡', 'payment_method', '');
INSERT INTO `data_dictionary` VALUES (25, '微信转账', 'payment_method', '');
INSERT INTO `data_dictionary` VALUES (26, '支付宝转账', 'payment_method', '');

-- ----------------------------
-- Table structure for discipline_info
-- ----------------------------
DROP TABLE IF EXISTS `discipline_info`;
CREATE TABLE `discipline_info`  (
  `discipline_id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discipline_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discipline_tuition` double(11, 2) NULL DEFAULT NULL COMMENT '学分',
  `discipline_bring` int(11) NULL DEFAULT NULL,
  `discipline_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discipline_desc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discipline_isuesd` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`discipline_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discipline_info
-- ----------------------------
INSERT INTO `discipline_info` VALUES (9, '172016830', 'Java项目实训', 6.50, 104, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (10, '172016060', '数据库应用技术', 5.00, 78, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (11, '172016070', 'Web前端开发基础', 8.00, 130, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (12, '172016080', 'Java web开发基础', 6.50, 104, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (13, '172121060', '电商推广', 6.00, 96, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (14, '172121070', '电商美工', 6.00, 96, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (15, '172121080', '电商摄影', 6.00, 96, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (16, '172121830', '电商客服实训', 7.00, 112, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (17, '172121840', '电商运营实训', 7.00, 112, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (18, '172121850', '电商美工实训', 7.00, 112, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (19, '172121860', '电商摄影实训', 7.00, 112, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (20, '172017100', 'photoshop高级技法', 10.00, 160, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (21, '172017110', 'Illustrator', 8.00, 120, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (22, '172017020', '平面设计', 8.00, 120, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (23, '172017040', 'APP界面设计', 4.00, 60, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (24, '172017030', '网页界面设计', 4.00, 60, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (25, '172017830', 'UI项目实训', 12.00, 180, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (26, '172016090', 'JavaEE轻量级框架应用开发', 14.00, 224, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (27, '172016100', 'Spring+MyBatis企业应用实战', 14.00, 224, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (28, '172017050', 'JavaScript', 13.00, 200, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (29, '172017080', 'AJAX', 9.00, 140, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (30, '172017060', 'Jquery', 5.00, 80, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (31, '172017070', 'BootStrap', 5.00, 80, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (32, '172017090', 'VUE/React', 9.00, 150, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (33, '172017830', '前端开发项目实训', 12.00, 190, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (34, '172018020', '软件测试基础', 7.00, 105, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (35, '172018030', '自动化测试工具', 7.00, 105, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (36, '172018040', '性能测试工具', 7.00, 105, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (37, '172018050', '接口测试工具', 7.00, 105, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (38, '172018830', '自动化测试项目实训', 9.00, 140, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (39, '172018840', '性能测试项目实训', 9.00, 140, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (40, '172018850', '接口测试项目实训', 9.00, 140, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (41, '172019010', '计算机网络基础', 15.00, 240, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (42, '172019020', '移动通信技术', 15.00, 240, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (43, '172019030', 'Linux服务器配置与管理', 15.00, 240, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (44, '172019040', '无线网络优化', 15.00, 240, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (45, '172000010', '思想道德修养与法律基础 ', 3.00, 48, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (46, '172000051', '体育与健康1 ', 2.00, 32, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (47, '172000110', '创新创业与成功学（含知识管理）', 2.00, 32, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (48, '172000170', '知识管理（含文献检索）', 1.00, 16, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (49, '172000120', '大学语文', 2.00, 32, '选修', '', '1');
INSERT INTO `discipline_info` VALUES (50, '172000081', '大学英语1 ', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (51, '172000090', '计算机应用基础', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (52, '172016010', 'C语言程序设计', 6.00, 96, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (53, '172017010', 'HTML基础', 3.00, 48, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (54, '172016032', 'MySQL(1)', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (55, '172017022', 'Photoshop(1)', 6.00, 96, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (56, '172121010', '电子商务基础', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (57, '172121020', '电子商务法规', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (58, '172160200', 'Linux系统程序', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (59, '172160210', 'MAYA动画设计', 4.00, 64, '必修', '', '1');
INSERT INTO `discipline_info` VALUES (60, '172160160', '大学韩国语1', 4.00, 64, '必修', '', '1');

-- ----------------------------
-- Table structure for email_info
-- ----------------------------
DROP TABLE IF EXISTS `email_info`;
CREATE TABLE `email_info`  (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NULL DEFAULT NULL,
  `email_title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_time` datetime(0) NULL DEFAULT NULL,
  `email_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_addr` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`email_id`) USING BTREE,
  INDEX `FK_Reference_7`(`staff_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_info
-- ----------------------------
INSERT INTO `email_info` VALUES (10, 10, '国庆节送礼', '国庆节', '2018-08-03 19:37:15', '小王', '21257638@qq.com', NULL);
INSERT INTO `email_info` VALUES (11, 10, '国庆节送礼', '国庆节 你好牛！', '2019-05-21 10:56:43', '黄志峰', '862821775@qq.com', NULL);

-- ----------------------------
-- Table structure for evaluation_info
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_info`;
CREATE TABLE `evaluation_info`  (
  `evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `discipline_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `evaluation_xueqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_month` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score1` int(11) NULL DEFAULT NULL,
  `score2` int(11) NULL DEFAULT NULL,
  `score3` int(11) NULL DEFAULT NULL,
  `score4` int(11) NULL DEFAULT NULL,
  `score5` int(11) NULL DEFAULT NULL,
  `score6` int(11) NULL DEFAULT NULL,
  `sum` int(11) NULL DEFAULT NULL,
  `evaluation_time` datetime(0) NULL DEFAULT NULL,
  `evaluation_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`evaluation_id`) USING BTREE,
  INDEX `FK_Reference_11`(`student_id`) USING BTREE,
  INDEX `discipline_id`(`discipline_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE,
  CONSTRAINT `evaluation_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `evaluation_info_ibfk_2` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_info` (`discipline_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `evaluation_info_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation_info
-- ----------------------------
INSERT INTO `evaluation_info` VALUES (1, 20, 9, 80, 8, '2018-2019学年第一学期', NULL, '软件技术(Java软件开发方向)', 12, 18, 13, 12, 15, 12, 82, '2019-05-21 11:26:27', 'ssd');
INSERT INTO `evaluation_info` VALUES (2, 20, 9, 76, 8, '2018-2019学年第一学期', NULL, '软件技术(Java软件开发方向)', 4, 2, 3, 4, 4, 5, 22, '2019-05-21 11:26:45', '233');

-- ----------------------------
-- Table structure for evaluation_xueqi
-- ----------------------------
DROP TABLE IF EXISTS `evaluation_xueqi`;
CREATE TABLE `evaluation_xueqi`  (
  `evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `discipline_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `evaluation_xueqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_month` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_time` datetime(0) NULL DEFAULT NULL,
  `evaluation_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`evaluation_id`) USING BTREE,
  INDEX `FK_Reference_11`(`student_id`) USING BTREE,
  INDEX `discipline_id`(`discipline_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE,
  CONSTRAINT `evaluation_xueqi_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `evaluation_xueqi_ibfk_2` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_info` (`discipline_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `evaluation_xueqi_ibfk_4` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluation_xueqi
-- ----------------------------
INSERT INTO `evaluation_xueqi` VALUES (1, 20, 9, 80, 8, '2018-2019学年第一学期', '1月', '软件技术(Java软件开发方向)', '满意', '2019-05-21 11:23:06', '上课多讲些故事');
INSERT INTO `evaluation_xueqi` VALUES (2, 20, 9, 79, 8, '2017-2018学年第二学期', '2月', '软件技术(Java软件开发方向)', '不满意', '2019-05-21 11:23:30', '上课讲得不好');

-- ----------------------------
-- Table structure for market_active
-- ----------------------------
DROP TABLE IF EXISTS `market_active`;
CREATE TABLE `market_active`  (
  `active_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NULL DEFAULT NULL,
  `active_name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_state` int(11) NULL DEFAULT NULL,
  `active_start` datetime(0) NULL DEFAULT NULL,
  `active_end` datetime(0) NULL DEFAULT NULL,
  `active_type` int(11) NULL DEFAULT NULL,
  `active_coste_emtimate` double NULL DEFAULT NULL,
  `active_coste` double NULL DEFAULT NULL,
  `active_refect_estimate` int(11) NULL DEFAULT NULL,
  `active_student` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`active_id`) USING BTREE,
  INDEX `FK_Reference_5`(`staff_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of market_active
-- ----------------------------
INSERT INTO `market_active` VALUES (3, 10, '梅岭一日游', 5, '2018-07-05 00:00:00', '2018-07-05 00:00:00', 9, 11, 11, 14, '11', '11');

-- ----------------------------
-- Table structure for messafe_info
-- ----------------------------
DROP TABLE IF EXISTS `messafe_info`;
CREATE TABLE `messafe_info`  (
  `messafe_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NULL DEFAULT NULL,
  `messafe_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messafe_man` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messafe_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messafe_time` datetime(0) NULL DEFAULT NULL,
  `messafe_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`messafe_id`) USING BTREE,
  INDEX `FK_Reference_6`(`staff_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messafe_info
-- ----------------------------
INSERT INTO `messafe_info` VALUES (1, 13, '生日快乐', '李四', '111111111', '2018-07-05 13:06:14', NULL);
INSERT INTO `messafe_info` VALUES (16, 10, '春节要送礼', '张小三', '123443309', '2018-07-05 13:06:14', NULL);
INSERT INTO `messafe_info` VALUES (17, 10, '生日快乐', '徐刚', '13576051867', '2018-08-01 04:58:50', NULL);
INSERT INTO `messafe_info` VALUES (18, 10, '春节要送礼', '李四', '13576051848', '2019-05-21 10:55:04', NULL);

-- ----------------------------
-- Table structure for notice_info
-- ----------------------------
DROP TABLE IF EXISTS `notice_info`;
CREATE TABLE `notice_info`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NULL DEFAULT NULL,
  `notice_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `notice_time` datetime(0) NULL DEFAULT NULL,
  `notice_filename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE,
  INDEX `FK_Reference_7`(`staff_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice_info
-- ----------------------------
INSERT INTO `notice_info` VALUES (19, 10, '关于组织申报2018年度校级科研课题的通知', '<p style=\"text-indent:2em;\">\r\n	各教学单位：\r\n       为了进一步提升我校科研水平，调动广大教师科研的积极性，夯实科研基础。经学校研究，现将申报2018年度校级科研项目的有关事宜通知如下：\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	一、申报要求\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	1、原则上每位教师利用暑假期间至少申报一项校级科研课题，鼓励跨学科、跨专业多申报。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2、课题主持人须是我校在岗教职工，鼓励与校企合作单位联合申报，合作单位人员不能作为课题主持人申报。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	二、申报与评审程序\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	1、申请人填写《江西先锋软件职业技术学院科研项目申请书》，申请书一律用A4纸正反打印。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2、各教学单位要组织本单位教师积极申报。在组织申报过程中，要对申报材料严格把关，保证质量。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	3、课题申报截止时间：2018年8月30日。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	4、申报材料由各教学单位统一报科研处岑莉处，学校将组织专家对申报课题进行评审立项，并按评审等级给予奖励。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	附：1、江西先锋软件职业技术学院科研课题选题\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2、江西先锋软件职业技术学院科研课题申请书\r\n                                                                                                                                                                                         学校办公室\r\n                                                                                                                                                                                       2018年7月10日\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '2018-07-13 00:00:00', NULL);
INSERT INTO `notice_info` VALUES (20, 10, '关于做好2018年下半年全国计算机等级考试 报名工作的通知', '<p style=\"text-indent:2em;\">\r\n	2018年下半年全国计算机等级考试（National Computer Rank Examination，简称NCRE）定于2018年9月15日开始举行。为确保我院考试顺利进行，现将有关事项通知如下：\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	一、报名工作\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	1、考试对象：本校在籍学生；（严禁非本校学籍学生报考）\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	2、考试日期： 2018年9月15日开始\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	3、考试地点：江西先锋软件职业技术学院\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	4、报名时间：\r\n           (1)网上报名时间：2018年6月5日08:00-10日24:00（学生网上报名）\r\n           (2)网上审核时间：2018年6月11日08:00-24:00（教务处网上审核）\r\n           (3)网上缴费时间：2018年6月12日08:00-18日18:00 （学生网上缴费）\r\n           (4)网上打印准考证时间：2018年9月7-14日\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	5、报名流程\r\n根据教育考试中心相关要求，我省全国计算机等级考试一律采用网上报名和网上缴费的办法。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	(1)登录网站。考生登录江西省教育考试院网站（http://www.jxeea.cn）。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	(2)网上注册。考生在江西省教育考试院网站上点击“网上报名”，选择“江西省全国计算机等级考试网上报名”，下载学习《全国计算机等级考试报名系统考生使用说明书》。考生注册用户（注册用户时使用的邮箱必须为本人真实邮箱，以防止忘记密码后接收重置密码），勾选“同意报名协议”，按提示填写基本信息，选择考点（我校考点代码为360063江西先锋软件学院）及报考科目，上传本人照片，并提交信息审核。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	考生上传照片规格要求：\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	①照片将来用于合格证书，应为考生本人近期正面免冠半身证件照，不得使用生活照。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	②背景要求：背景布为浅蓝色，要求垂感和吸光好。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	③成像要求：成像区上部空1/10，头部占7/10，肩部占1/5，左右各空1/10。采集图像大小最小为192*144（高*宽），彩色，成像区大小为48mm*33mm(高*宽)；\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	④照片文件应为JPEG格式，后缀名为jpg。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	⑤照片文件大小要求：20KB-200KB。\r\n网上报名截止前，未提交申请信息审核的考生可反复登录报名系统修改个人报名信息，提交审核后或报名时间截止后，考生个人报名信息一律不再修改。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	(3)教务处审核。教务处根据报名信息审核报考学生学籍信息，确认是否为在校生，为在校生则确认审核通过,否则不予通过。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	(4)网上缴费。考生信息经教务处审核通过后方可网上支付考试费，考生缴费截止时间为6月18日18:00。逾期未支付考试费的考生，本次考试报名无效。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	6、新政策新变化\r\n 根据教育部考试中心《关于做好2018年全国计算机等级考试工作的通知》（教试中心函〔2017〕239号）\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	文件要求：\r\n      （1）自2018年3月开始，NCRE执行2018版考试大纲，并按新体系开考各个考试级别。取消了二级的“Visual Foxpro数据库程序设计”（代码：27）、三级的“软件测试技术”（代码：37）及四级的“软件测试工程师”（代码：43）等3个考试科目。四级专业基础课程暂停软件工程（课程代码：405）。四级数据库工程师科目考试课程由“404、405”调整为“401、404”；\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	（2）自2018年3月考试起，调整三级获证条件要求，考生只需通过三级考试即可获得该三级科目的合格证书，不再要求二级证书。其他级别获证条件保持不变。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '2018-07-13 00:00:00', NULL);
INSERT INTO `notice_info` VALUES (21, 10, '关于印发《江西先锋软件职业技术学院考勤管理制度》的通知', '<p>\r\n	<strong>各处室、各二级学院：</strong> \r\n</p>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp; 《江西先锋软件职业技术学院考勤管理制度》经校长办公会审议通过，现以印发实施。\r\n附：江西先锋软件职业技术学院考勤管理制度\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p align=\"right\">\r\n	江西先锋软件职业技术学院\r\n</p>\r\n<p align=\"right\">\r\n	2018年5月8日\r\n</p>', '2018-07-13 00:00:00', NULL);
INSERT INTO `notice_info` VALUES (23, 10, '关于做好我院2018年上半年全国大学英语四、六级考试报名工作的通知', '关于做好我院2018年上半年全国大学英语四、六级考试报名工作的通知', '2018-07-14 00:00:00', NULL);
INSERT INTO `notice_info` VALUES (29, 10, '我校召开庆祝中国共产党成立97周年暨“七 一”表彰大会', '<p style=\"text-indent:2em;\">\r\n	6月28日上午，我校在创客中心路演大厅召开庆祝中国共产党成立97周年暨“七一”表彰大会。校党委书记卢晓健、党委副书记、校长陈绵水、常务副校长李旺根、副校长胡焘、鲍庆军、梅龙、朱军、李宜忠等校领导出席大会，全校300余名师生党员和入党积极分子代表参加会议，校党委副书记周晓东主持大会。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	大会第一项，全体起立奏唱《国歌》\r\n校党委副书记、校长陈绵水教授宣读《关于表彰2017-2018年度先进党支部、优秀共产党员、优秀党务工作者的决定》，随后举行颁奖仪式。优秀党员教师代表蒋鼎峰上台发言，他觉得自己的工作和生活都是和学生联系在一起的。在工作中，用行动去履行一名教师的职责，去诠释一名共产党员对教育事业的忠诚。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	作为一名教师党员，要领悟党的指导方针，把结合思政进课堂的思维模式融合课堂教学，把党的新思想发扬与继承，做“四有”好教师；优秀党务工作者代表曾继勇上台发言,他表示，做好党务工作，一要深化理论武装，建设学习型党组织；二要围绕学校发展大局，发挥基层党组织先进性；三要加强自身建设，增强党组织的战斗力。在今后的工作中会继续保持戒骄戒躁的工作作风，在平凡的岗位上，做出共产党员应有的贡献。\r\n       会上，校党委书记卢晓健代表校党委向全校党员师生致以节日的问候，向受到表彰的先进基层党组织和优秀个人表示热烈的祝贺并致以崇高的敬意。她在讲话中简要回顾了中国共产党成立九十七年来的奋斗历程，阐述了十八大以来，以习近平总书记为核心的党中央站在新的历史起点，开创了党和国家各项事业的新局面。同时她总结了我校近年来在党建和思政工作中所取得的阶段性成果，2018年6月13日教育部对全国申本高校设置公示结束，学校拟设置为江西软件工程学院名列其中，这是学校发展史上最重要的一步，为了这一步，全校教职工主动作为，我们要学习他们以校为家，一心为师生的奉献精神，学习他们勤奋工作，刻苦钻研的敬业精神，指导我们在各自的工作岗位上做合格的共产党员。并对各级党组织和广大党员提出以下5点要求：一是要认真学习习近平新时代中国特色社会主义思想；二是要抓好校风建设，提升学校核心竞争力；三是要推进教学体制改革，提升办学内涵水平；四是加大招生就业力度，提升学生进出质量；五要优化办学环境，提升办学治校能力。她强调，各基层党组织和全体党员要切实把思想和行动统一到学校党委的决策部署上来，以更加务实的举措，把党建工作落到实处，以党建工作新成效促进学校事业新发展，为学校的建设和发展做出贡献。\r\n      学校党委班子成员、各党群部门负责人、各二级学院院长、共同朗读《红色家书》选篇《胜利的时候，请您们不要忘记我们》。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	大会最后一项，全体起立奏唱《国际歌》，江西先锋软件学院庆祝中国共产党成立97周年暨“七一”表彰大会至此圆满落幕！\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	<br />\r\n</p>', '2018-07-19 00:00:00', NULL);
INSERT INTO `notice_info` VALUES (30, 10, '省级专项督导组一行莅临我院检查指导工作', '<p style=\"text-indent:2em;\">\r\n	3月7日，省级专项督导组一行4人来到我校检查指导工作。党委书记、督导专员卢晓健，校长陈绵水等校领导在行政楼一楼会议室进行了座谈，党办、院办、教务处、学团处、后勤管理处、保卫处等部门负责人参与了座谈。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	党委书记卢晓健首先对莅临我校督查指导工作的各位领导表示热烈的欢迎，她表示学校高度重视开学各项工作，各职能部门深入各学院进行检查，各学院精心组织、积极协作，抓实、抓细、抓好各项相关工作，确保了学校开学工作的顺利开展。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	校长陈绵水向省级专项督导组介绍了学院的综治基本情况。他表示，省级专项督导组莅临学院检查指导是对我院综治工作的促进。他强调，学院要以这次检查指导为契机，将综治工作作为重中之重的工作来抓，要以这次检查情况为标尺，发扬优点，改正不足，杜绝隐患。\r\n常务副校长李旺根就开学条件保障、学校安全工作、教风学风建设等方面工作进行了汇报，并向督导组成员展示了我校的综治情况资料。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	督导组成员就开学的有关事项向校领导和相关部门进行了询问。校长陈绵水和相关部门负责人回答了有关问题。\r\n       座谈会后，督导组一行实地检查了教学楼、实验室、学生宿舍、食堂、超市等学生学习、生活场所。\r\n</p>', '2018-07-19 00:00:00', NULL);

-- ----------------------------
-- Table structure for role_anthority_info
-- ----------------------------
DROP TABLE IF EXISTS `role_anthority_info`;
CREATE TABLE `role_anthority_info`  (
  `role_anthority_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `anthorty_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`role_anthority_id`) USING BTREE,
  INDEX `FK_Reference_3`(`role_id`) USING BTREE,
  INDEX `FK_Reference_4`(`anthorty_id`) USING BTREE,
  CONSTRAINT `role_anthority_info_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `role_anthority_info_ibfk_2` FOREIGN KEY (`anthorty_id`) REFERENCES `anthorty_info` (`anthorty_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1722 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_anthority_info
-- ----------------------------
INSERT INTO `role_anthority_info` VALUES (1560, 3, 9);
INSERT INTO `role_anthority_info` VALUES (1561, 3, 17);
INSERT INTO `role_anthority_info` VALUES (1562, 3, 19);
INSERT INTO `role_anthority_info` VALUES (1563, 3, 26);
INSERT INTO `role_anthority_info` VALUES (1564, 3, 54);
INSERT INTO `role_anthority_info` VALUES (1565, 3, 57);
INSERT INTO `role_anthority_info` VALUES (1566, 3, 70);
INSERT INTO `role_anthority_info` VALUES (1567, 3, 73);
INSERT INTO `role_anthority_info` VALUES (1568, 3, 74);
INSERT INTO `role_anthority_info` VALUES (1569, 3, 80);
INSERT INTO `role_anthority_info` VALUES (1570, 3, 81);
INSERT INTO `role_anthority_info` VALUES (1571, 3, 82);
INSERT INTO `role_anthority_info` VALUES (1572, 3, 32);
INSERT INTO `role_anthority_info` VALUES (1573, 3, 61);
INSERT INTO `role_anthority_info` VALUES (1574, 3, 63);
INSERT INTO `role_anthority_info` VALUES (1575, 3, 64);
INSERT INTO `role_anthority_info` VALUES (1576, 3, 76);
INSERT INTO `role_anthority_info` VALUES (1577, 3, 77);
INSERT INTO `role_anthority_info` VALUES (1578, 3, 78);
INSERT INTO `role_anthority_info` VALUES (1633, 2, 9);
INSERT INTO `role_anthority_info` VALUES (1634, 2, 17);
INSERT INTO `role_anthority_info` VALUES (1635, 2, 19);
INSERT INTO `role_anthority_info` VALUES (1636, 2, 79);
INSERT INTO `role_anthority_info` VALUES (1637, 2, 26);
INSERT INTO `role_anthority_info` VALUES (1638, 2, 54);
INSERT INTO `role_anthority_info` VALUES (1639, 2, 55);
INSERT INTO `role_anthority_info` VALUES (1640, 2, 56);
INSERT INTO `role_anthority_info` VALUES (1641, 2, 57);
INSERT INTO `role_anthority_info` VALUES (1642, 2, 70);
INSERT INTO `role_anthority_info` VALUES (1643, 2, 73);
INSERT INTO `role_anthority_info` VALUES (1644, 2, 74);
INSERT INTO `role_anthority_info` VALUES (1645, 2, 80);
INSERT INTO `role_anthority_info` VALUES (1646, 2, 81);
INSERT INTO `role_anthority_info` VALUES (1647, 2, 82);
INSERT INTO `role_anthority_info` VALUES (1648, 2, 32);
INSERT INTO `role_anthority_info` VALUES (1649, 2, 59);
INSERT INTO `role_anthority_info` VALUES (1650, 2, 60);
INSERT INTO `role_anthority_info` VALUES (1651, 2, 61);
INSERT INTO `role_anthority_info` VALUES (1652, 2, 62);
INSERT INTO `role_anthority_info` VALUES (1653, 2, 63);
INSERT INTO `role_anthority_info` VALUES (1654, 2, 64);
INSERT INTO `role_anthority_info` VALUES (1655, 2, 72);
INSERT INTO `role_anthority_info` VALUES (1656, 2, 86);
INSERT INTO `role_anthority_info` VALUES (1657, 2, 88);
INSERT INTO `role_anthority_info` VALUES (1658, 2, 65);
INSERT INTO `role_anthority_info` VALUES (1659, 2, 66);
INSERT INTO `role_anthority_info` VALUES (1660, 2, 76);
INSERT INTO `role_anthority_info` VALUES (1661, 2, 77);
INSERT INTO `role_anthority_info` VALUES (1662, 2, 78);
INSERT INTO `role_anthority_info` VALUES (1663, 2, 84);
INSERT INTO `role_anthority_info` VALUES (1664, 2, 85);
INSERT INTO `role_anthority_info` VALUES (1665, 4, 9);
INSERT INTO `role_anthority_info` VALUES (1666, 4, 17);
INSERT INTO `role_anthority_info` VALUES (1667, 4, 19);
INSERT INTO `role_anthority_info` VALUES (1668, 4, 26);
INSERT INTO `role_anthority_info` VALUES (1669, 4, 55);
INSERT INTO `role_anthority_info` VALUES (1670, 4, 56);
INSERT INTO `role_anthority_info` VALUES (1671, 4, 57);
INSERT INTO `role_anthority_info` VALUES (1672, 4, 32);
INSERT INTO `role_anthority_info` VALUES (1673, 4, 59);
INSERT INTO `role_anthority_info` VALUES (1674, 4, 88);
INSERT INTO `role_anthority_info` VALUES (1675, 4, 65);
INSERT INTO `role_anthority_info` VALUES (1676, 4, 66);
INSERT INTO `role_anthority_info` VALUES (1677, 4, 76);
INSERT INTO `role_anthority_info` VALUES (1678, 4, 77);
INSERT INTO `role_anthority_info` VALUES (1679, 4, 78);
INSERT INTO `role_anthority_info` VALUES (1680, 1, 2);
INSERT INTO `role_anthority_info` VALUES (1681, 1, 11);
INSERT INTO `role_anthority_info` VALUES (1682, 1, 12);
INSERT INTO `role_anthority_info` VALUES (1683, 1, 13);
INSERT INTO `role_anthority_info` VALUES (1684, 1, 14);
INSERT INTO `role_anthority_info` VALUES (1685, 1, 15);
INSERT INTO `role_anthority_info` VALUES (1686, 1, 16);
INSERT INTO `role_anthority_info` VALUES (1687, 1, 9);
INSERT INTO `role_anthority_info` VALUES (1688, 1, 17);
INSERT INTO `role_anthority_info` VALUES (1689, 1, 18);
INSERT INTO `role_anthority_info` VALUES (1690, 1, 19);
INSERT INTO `role_anthority_info` VALUES (1691, 1, 79);
INSERT INTO `role_anthority_info` VALUES (1692, 1, 26);
INSERT INTO `role_anthority_info` VALUES (1693, 1, 54);
INSERT INTO `role_anthority_info` VALUES (1694, 1, 55);
INSERT INTO `role_anthority_info` VALUES (1695, 1, 56);
INSERT INTO `role_anthority_info` VALUES (1696, 1, 57);
INSERT INTO `role_anthority_info` VALUES (1697, 1, 70);
INSERT INTO `role_anthority_info` VALUES (1698, 1, 73);
INSERT INTO `role_anthority_info` VALUES (1699, 1, 74);
INSERT INTO `role_anthority_info` VALUES (1700, 1, 80);
INSERT INTO `role_anthority_info` VALUES (1701, 1, 81);
INSERT INTO `role_anthority_info` VALUES (1702, 1, 82);
INSERT INTO `role_anthority_info` VALUES (1703, 1, 32);
INSERT INTO `role_anthority_info` VALUES (1704, 1, 59);
INSERT INTO `role_anthority_info` VALUES (1705, 1, 60);
INSERT INTO `role_anthority_info` VALUES (1706, 1, 61);
INSERT INTO `role_anthority_info` VALUES (1707, 1, 62);
INSERT INTO `role_anthority_info` VALUES (1708, 1, 63);
INSERT INTO `role_anthority_info` VALUES (1709, 1, 64);
INSERT INTO `role_anthority_info` VALUES (1710, 1, 72);
INSERT INTO `role_anthority_info` VALUES (1711, 1, 86);
INSERT INTO `role_anthority_info` VALUES (1712, 1, 88);
INSERT INTO `role_anthority_info` VALUES (1713, 1, 65);
INSERT INTO `role_anthority_info` VALUES (1714, 1, 66);
INSERT INTO `role_anthority_info` VALUES (1715, 1, 76);
INSERT INTO `role_anthority_info` VALUES (1716, 1, 77);
INSERT INTO `role_anthority_info` VALUES (1717, 1, 78);
INSERT INTO `role_anthority_info` VALUES (1718, 1, 84);
INSERT INTO `role_anthority_info` VALUES (1719, 1, 85);
INSERT INTO `role_anthority_info` VALUES (1720, 1, 89);
INSERT INTO `role_anthority_info` VALUES (1721, 1, 90);

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES (1, '超级管理员', '具有本系统的所有操作权限', '1');
INSERT INTO `role_info` VALUES (2, '教务人员', '对学生、教师及教务进行有关操作', '1');
INSERT INTO `role_info` VALUES (3, '班主任', '对学生进行有关操作', '1');
INSERT INTO `role_info` VALUES (4, '任课教师', '录学生成绩、上课考勤等', '1');
INSERT INTO `role_info` VALUES (5, '学工', '负责查勤、查勤等', '1');

-- ----------------------------
-- Table structure for student_family_member
-- ----------------------------
DROP TABLE IF EXISTS `student_family_member`;
CREATE TABLE `student_family_member`  (
  `student_family_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `family_name` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `family_app` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '称谓',
  `family_age` int(11) NULL DEFAULT NULL,
  `family_zcmm` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `workplace` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '何处工作任职',
  `reg_time` datetime(0) NULL DEFAULT NULL,
  `family_note` varchar(2000) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_family_id`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  CONSTRAINT `student_family_member_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student_graduation_thesis
-- ----------------------------
DROP TABLE IF EXISTS `student_graduation_thesis`;
CREATE TABLE `student_graduation_thesis`  (
  `student_paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `paper_title` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `paper_teacher` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '称谓',
  `paper_start` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `paper_time` datetime(0) NULL DEFAULT NULL COMMENT '政治面貌',
  `paper_score` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '何处工作任职',
  `paper_comments` varchar(2000) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `reg_time` datetime(0) NULL DEFAULT NULL,
  `paper_note` varchar(2000) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_paper_id`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  CONSTRAINT `student_graduation_thesis_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `staff_id` int(11) NULL DEFAULT NULL COMMENT '员工编号',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '班级编号',
  `student_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_name1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '曾用名',
  `student_national` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_birthday` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_health` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_native` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_indate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_marital` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_address` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_post` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `family_tellphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_tellphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_isleague` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_join_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_idcard` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_before_school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_hobby` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_pro` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_edu_sys` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_pro_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_ispay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_desc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_mark` int(11) NULL DEFAULT NULL,
  `student_state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_hard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_loan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_muster` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_project` double(4, 1) NULL DEFAULT 0.0,
  PRIMARY KEY (`student_id`) USING BTREE,
  INDEX `FK_Reference_16`(`class_id`) USING BTREE,
  INDEX `FK_Reference_8`(`staff_id`) USING BTREE,
  CONSTRAINT `student_info_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1423 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (20, 10, 8, '201700000404', '黄彬朕', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '222', '222', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', '1', '', '201700000404', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (21, 10, 8, '201722000083', '谢正堂', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '22', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201722000083', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (22, 10, 8, '201700005763', '符润东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '11', '11', '11', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005763', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (23, 10, 8, '201700005911', '吴文建', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '11', '11', '共青团员', '', '11', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005911', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (24, 10, 8, '201700000367', '龚嘉新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000367', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (25, 10, 8, '201700000260', '关琳迁', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '22', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000260', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (26, 10, 8, '201700005690', '陈礼剑', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '11', '11', '共青团员', '', '11', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005690', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (27, 10, 8, '201700000245', '陈聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '11', '11', '共青团员', '', '11', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000245', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (28, 10, 8, '201700006228', '余文楷', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006228', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (29, 10, 8, '201700000402', '黄智锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000402', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (30, 10, 8, '201700005582', '邓志超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '11', '11', '11', '共青团员', '', '11', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005582', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (31, 10, 8, '201700005585', '黄雅军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '11', '11', '共青团员', '', '111', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005585', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (32, 10, 8, '201700005877', '查俊豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005877', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (33, 10, 8, '201700005614', '王标', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '11', '11', '共青团员', '', '11', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005614', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (34, 10, 8, '201700005720', '封颖鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005720', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (35, 10, 8, '201700005559', '付建民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '33', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005559', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (36, 10, 8, '201700005607', '杨峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '22', '共青团员', '', '22', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005607', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (37, 10, 8, '201700005562', '梅威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005562', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (39, 10, 8, '201700000307', '林佳志', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '22', '22', '共青团员', '', '33', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000307', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (40, 10, 8, '201700006226', '高鼎', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '3', '3', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006226', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (41, 10, 8, '201700005688', '钟久荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005688', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (42, 10, 8, '201700005873', '况江', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005873', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (43, 10, 8, '201700005654', '陈志可', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005654', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (44, 10, 8, '201700006154', '黄武斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006154', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (45, 10, 8, '201700006035', '黄志强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006035', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (46, 10, 8, '201700005875', '饶嘉琪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005875', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (47, 10, 8, '201700006059', '刘东平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006059', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (48, 10, 8, '201700000311', '万鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000311', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (49, 10, 8, '201700006212', '罗新伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006212', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (50, 10, 8, '201700005660', '徐文鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005660', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (51, 10, 8, '201700005775', '刘文辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '1', '共青团员', '', '1', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005775', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (52, 10, 8, '201700000349', '蔡祖渠', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000349', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (53, 10, 8, '201700000241', '刘赛松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000241', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (54, 10, 8, '201700000261', '黎小江', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700000261', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (55, 10, 8, '201700006232', '邱鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006232', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (56, 10, 8, '--', '孟志杨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '1', '共青团员', '', '1', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '自考', '孟志杨', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (57, 10, 8, '201700006151', '罗懿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700006151', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (58, 10, 8, '201700005565', '郭宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(Java软件开发方向)', '三年', '', '专科', NULL, '', '201700005565', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (59, 10, 16, '201700000269', '陈庆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 'w', 'w', '共青团员', '', 'w', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000269', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (60, 10, 16, '201700000329', '王聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000329', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (61, 10, 16, '201700000320', '邓雅柔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000320', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (62, 10, 16, '201700005983', '王佳荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005983', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (63, 10, 16, '201700005995', '潘印华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005995', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (64, 10, 16, '201700005976', '梁松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '1', '共青团员', '', '1', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005976', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (65, 10, 16, '201700005998', '许涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005998', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (66, 10, 16, '201700000253', '杨鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '1', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000253', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (67, 10, 16, '201700005963', '袁敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005963', '123', -1, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (68, 10, 20, '201700006215', '于佳进', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 's', 's', '共青团员', '', 's', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006215', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (69, 10, 20, '201700005575', '沈逸轩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '1', '共青团员', '', '1', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005575', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (70, 10, 20, '201700005605', '袁本晖', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '1', '1', '共青团员', '', '1', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005605', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (71, 10, 20, '201700000287', '邵家豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000287', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (72, 10, 20, '201722000082', '周城', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'w', 'w', 'w', '共青团员', '', 'w', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000082', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (73, 10, 20, '201700006217', '徐战鹤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006217', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (74, 10, 20, '201700000306', '金诚豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000306', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (75, 10, 20, '201700005584', '周能', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005584', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (76, 10, 20, '201700005592', '巫显杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005592', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (77, 10, 20, '201700005609', '谭小红', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005609', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (78, 10, 20, '201700000317', '廖颖', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000317', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (79, 10, 20, '201700005560', '廖勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005560', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (80, 10, 20, '201700005580', '吴洪斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005580', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (81, 10, 20, '201700005601', '陈强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005601', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (82, 10, 20, '201700005611', '吕海明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '222', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005611', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (83, 10, 20, '201700006220', '饶佳盛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006220', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (84, 10, 20, '201700005587', '吴宇杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005587', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (85, 10, 20, '201700005590', '温珍敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005590', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (86, 10, 20, '201700005579', '刘敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '222', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005579', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (87, 10, 20, '201700000247', '孙柔', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000247', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (88, 10, 20, '201700005570', '曾子豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '2', '共青团员', '', '222', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005570', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (89, 10, 20, '201700005737', '朱雷志', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005737', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (90, 10, 20, '201700006249', '龙宝强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006249', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (91, 10, 20, '201722000087', '徐勇杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '2', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000087', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (92, 10, 20, '201700005756', '曾洋洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005756', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (93, 10, 20, '201700005735', '冯旭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005735', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (94, 10, 20, '201700000244', '曾林兵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000244', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (95, 10, 20, '201700005912', '许韩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005912', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (96, 10, 20, '201700005876', '林波伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005876', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (97, 10, 20, '201700005916', '徐海心', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005916', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (98, 10, 20, '201700005885', '黄珂', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '3', '共青团员', '', '323', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005885', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (99, 10, 20, '201700000330', '钟晓洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000330', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (100, 10, 20, '201700000246', '詹鑫林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 's', 's', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000246', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (101, 10, 20, '201700005913', '杨旭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'd', 'd', 'd', '共青团员', '', 's', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005913', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (102, 10, 20, '201700005895', '陈嘉豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'd', 's', 'd', '共青团员', '', 'd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005895', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (103, 10, 20, '201700005945', '郭敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 's', 'd', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005945', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (104, 10, 20, '201700005919', '邓文龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 'sd', 'sd', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005919', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (105, 10, 20, '201700005932', '黄锦田', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'd', 'd', 'd', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005932', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (106, 10, 20, '201700000377', '欧阳之远', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'd', 'd', 'sd', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000377', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (107, 10, 20, '201700005941', '曾成朗', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 'sd', 'we', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005941', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (108, 10, 20, '201700005947', '高叙根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', 'we', 'we', '共青团员', '', 'we', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005947', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (109, 10, 20, '201700000249', '屈善郎', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000249', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (110, 10, 20, '201700000164', '李仁冲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '13898234403', '23', '223', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000164', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (111, 10, 20, '201700006181', '何志军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006181', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (112, 10, 20, '201700006184', '卢勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006184', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (113, 10, 20, '201700006177', '方灵杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '1389823440', '23', '23', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006177', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (114, 10, 20, '201700006166', '李启良', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'we', 'we', 'sd', '共青团员', '', 'we', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006166', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (115, 10, 20, '201700006164', '吴雨旗', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006164', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (116, 10, 20, '--', '张恒', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '自考生', '张恒', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (117, 10, 20, '201700005889', '唐佳宾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '13898234403', '23', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005889', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (118, 10, 20, '201700006168', '周强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '5', '5', '5', '共青团员', '', '5', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006168', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (119, 10, 20, '201700006021', '杨坤鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '23', '4', '共青团员', '', '4', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006021', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (120, 10, 21, '201700006034', '吕猛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', 'sd', 's', 'sd', '共青团员', '', 'sd', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006034', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (121, 10, 21, '201700006010', '李城龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '2', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006010', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (122, 10, 21, '201700006044', '李泰鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006044', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (123, 10, 21, '201700006032', '彭金涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '23', '共青团员', '', '4', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006032', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (124, 10, 21, '201700000251', '方佳裕', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '3', '共青团员', '', '2', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000251', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (125, 10, 21, '201700006036', '曾鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '3', '3', '3', '23', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006036', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (126, 10, 21, '201700005990', '刘健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '33', '3', '共青团员', '', '33', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005990', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (127, 10, 21, '201700006024', '元全帅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006024', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (128, 10, 21, '201700005999', '朱贤华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '3', '共青团员', '', '323', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005999', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (129, 10, 21, '201700006016', '肖瑞森', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232', '23', '32', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006016', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (130, 10, 21, '201700000270', '管昊彦', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000270', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (131, 10, 21, '201700005965', '潘玉山', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005965', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (132, 10, 21, '201700005979', '尧猛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '13898234403', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005979', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (133, 10, 21, '201700001515', '王敏杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700001515', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (134, 10, 21, '--', '张佳佳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '2', '23', '共青团员', '', '323', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '自考生', '张佳佳', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (135, 10, 21, '201700005993', '王成义', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '13898234403', '23', '3', '共青团员', '', '32', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005993', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (136, 10, 21, '201700006007', '田小龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006007', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (137, 10, 21, '201700005789', '高小丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005789', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (138, 10, 21, '201700005779', '郑印', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '3', '4', '共青团员', '', '4', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005779', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (139, 10, 21, '201700005839', '周文韬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '12', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005839', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (140, 10, 21, '201700005811', '王九云', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '2', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005811', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (141, 10, 21, '201700005837', '徐超新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '12', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005837', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (142, 10, 21, '201700005822', '肖绍宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '234', '共青团员', '', '424', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005822', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (143, 10, 21, '201700005836', '陈新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232', '23', '234', '共青团员', '', '422', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005836', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (144, 10, 21, '201700000356', '郭晓辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '4', '23', '共青团员', '', '24', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000356', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (145, 10, 21, '201700005813', '符安华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005813', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (146, 10, 21, '201700005827', '彭洪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005827', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (147, 10, 21, '201700005815', '刘浪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '3', '4', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005815', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (148, 10, 21, '201700000357', '黄誉玮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000357', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (149, 10, 21, '201700005810', '罗威威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005810', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (150, 10, 21, '201700000257', '袁晟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '12', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000257', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (151, 10, 21, '201700005777', '刘泽峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '43', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005777', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (152, 10, 21, '201700005765', '易新龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '5', '3', '44', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005765', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (153, 10, 21, '201700000322', '杨可枫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '4', '34', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000322', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (154, 10, 21, '201700005719', '温龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '554', '23', '43', '共青团员', '', '334', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005719', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (155, 10, 21, '201700005642', '李雨晨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005642', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (156, 10, 21, '201700005661', '何欣航', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '自考生', '201700005661', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (157, 10, 21, '201700005686', '辛金庚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '23', '共青团员', '', '43', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005686', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (158, 10, 21, '201700006209', '汪荣顶', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '34', '共青团员', '', '35', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006209', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (159, 10, 21, '201700005675', '饶文俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005675', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (160, 10, 21, '201700006009', '黄才进', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '4', '34', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006009', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (161, 10, 21, '201700005989', '罗胜标', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '4', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005989', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (162, 10, 21, '201700005968', '谢章平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '45', '54', '45', '共青团员', '', '45', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005968', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (163, 10, 21, '201700000148', '程小吕', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000148', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (164, 10, 21, '201700000331', '黄英华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000331', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (165, 10, 21, '201700000302', '鲁康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '12', '12', '12', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000302', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (166, 10, 12, '201700006030', '王俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006030', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (167, 10, 12, '201700000339', '彭宇轩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '45', '554', '45', '共青团员', '', '45', '', '45', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000339', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (168, 10, 12, '201700006039', '张树俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '45', '45', '45', '共青团员', '', '45', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006039', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (169, 10, 12, '201700000298', '陈力康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000298', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (170, 10, 12, '201700006029', '周瑞成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '434', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006029', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (171, 10, 12, '201700006063', '万站友', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '34', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006063', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (172, 10, 12, '201700006061', '郭小平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '45', '23', '34', '共青团员', '', '45', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006061', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (173, 10, 12, '201700000354', '李创', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '34', '34', '共青团员', '', '45', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000354', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (174, 10, 12, '201700000272', '刘志文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '3434', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000272', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (175, 10, 12, '201700006051', '金文彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '235454523', '23223', '23', '23', '共青团员', '', '3', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006051', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (176, 10, 12, '201700006073', '周志毓', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006073', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (177, 10, 12, '201700006052', '胡双勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006052', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (178, 10, 12, '201700000174', '李兆辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000174', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (179, 10, 12, '201700006070', '袁聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '2', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006070', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (180, 10, 12, '201700006060', '王巍', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006060', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (181, 10, 12, '201700006068', '胡强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006068', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (182, 10, 12, '201700000143', '程国祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000143', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (183, 10, 12, '201722000101', '章佳秦', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201722000101', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (184, 10, 12, '201700006040', '辛琦', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006040', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (185, 10, 12, '201700006069', '王媛', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '24', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006069', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (186, 10, 12, '201700005988', '廖县兵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '43', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005988', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (187, 10, 12, '201700005992', '李光耀', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005992', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (188, 10, 12, '201700005967', '刘志发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005967', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (189, 10, 12, '201700005974', '刘飞翔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232233', '23', '4', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005974', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (190, 10, 12, '201700000355', '谢亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '235454523', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000355', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (191, 10, 12, '201700000252', '聂伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000252', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (192, 10, 12, '201700006026', '王志', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '2', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006026', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (193, 10, 12, '201700006023', '高辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006023', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (194, 10, 12, '201700005972', '罗琰妍', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005972', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (195, 10, 12, '201700005971', '何嘉乐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005971', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (196, 10, 12, '201700000343', '施梅春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000343', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (197, 10, 12, '201700006011', '潘广玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006011', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (198, 10, 12, '201700000236', '乐建波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23424654657657', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000236', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (199, 10, 12, '201700005771', '吴瑞帆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005771', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (200, 10, 12, '201700005835', '徐林庚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005835', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (201, 10, 12, '201700005794', '廖华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005794', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (202, 10, 12, '201700006057', '龙易', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006057', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (203, 10, 12, '201700006055', '汤辉亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006055', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (204, 10, 13, '201700005975', '杨泳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005975', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (205, 10, 13, '201700005734', '高江涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '233', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005734', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (206, 10, 13, '201700000254', '袁妍', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000254', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (207, 10, 13, '201700005704', '辛坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005704', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (208, 10, 13, '201700005702', '胡晓宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005702', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (209, 10, 13, '201700000382', '丁方耀', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000382', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (210, 10, 13, '201700000374', '鲍海清', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000374', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (211, 10, 13, '201700005732', '吴旦', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005732', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (212, 10, 13, '201700005930', '漆凯鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '2', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005930', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (213, 10, 13, '201700005723', '陈鑫辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23223', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005723', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (214, 10, 13, '201700005926', '周继王', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005926', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (215, 10, 13, '201700005739', '胡锦文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005739', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (216, 10, 13, '201700005736', '刘朋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '2', '共青团员', '', '3', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005736', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (217, 10, 13, '201700005696', '鄢凯旋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005696', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (218, 10, 13, '201700005733', '徐鹏松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005733', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (219, 10, 13, '201700000155', '盛善辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '323', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000155', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (220, 10, 13, '201700006248', '涂力', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006248', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (221, 10, 13, '201700000156', '邹凯鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000156', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (222, 10, 13, '201700005731', '王智峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005731', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (223, 10, 13, '201700005970', '李腾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005970', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (224, 10, 13, '201700006041', '游凯军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006041', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (225, 10, 13, '201700005978', '李云', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005978', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (226, 10, 13, '201700000141', '高宇龙', '男', '', '', '', '良好', '江西', '', '未婚', '23', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000141', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (227, 10, 13, '201700000159', '陈鹏飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000159', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (228, 10, 13, '201700000375', '吴爱文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000375', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (229, 10, 13, '201700005982', '吴惜文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005982', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (230, 10, 13, '201700000410', '郭耀文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '3', '共青团员', '', '23', '23', '23', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000410', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (231, 10, 13, '201722000097', '丁家俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '233', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201722000097', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (232, 10, 13, '201700000398', '王凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000398', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (233, 10, 13, '201700006000', '谢辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2323', '23', '23', '共青团员', '', '23', '', '23', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006000', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (234, 10, 13, '201700001563', '王达发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700001563', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (235, 10, 13, '201700000264', '袁浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000264', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (236, 10, 13, '201700005986', '李堋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005986', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (237, 10, 13, '201700005966', '占海瑞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005966', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (238, 10, 13, '201700005996', '周杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '33', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005996', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (239, 10, 13, '201700005962', '杨哲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '23', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005962', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (240, 10, 13, '201700006022', '郑少杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006022', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (241, 10, 13, '201700006012', '黄君荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006012', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (242, 10, 13, '201700000314', '杨雨航', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000314', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (243, 10, 13, '201700005699', '卢美涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005699', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (244, 10, 13, '201700005973', '许文强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005973', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (245, 10, 13, '201700000371', '朱晖荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '233', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000371', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (246, 10, 13, '201700005980', '许方鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005980', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (247, 10, 13, '201700006003', '汪洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006003', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (248, 10, 14, '201722000099', '谢峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201722000099', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (249, 10, 14, '201700000262', '刘力根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000262', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (250, 10, 14, '201700005589', '黄绪洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005589', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (251, 10, 14, '201700005623', '黄明', '男', '', '', '', '良好', '江西', '', '未婚', '', '23', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005623', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (252, 10, 14, '201700005619', '魏紫璇', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005619', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (253, 10, 14, '201700000242', '郭文彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '当兵', '201700000242', '123', 2, '保留学籍', '否', '否', '是', NULL);
INSERT INTO `student_info` VALUES (254, 10, 14, '201700000372', '李志文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '3', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000372', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (255, 10, 14, '201700005620', '王能彩', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005620', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (256, 10, 14, '201700000309', '徐子康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '32', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000309', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (257, 10, 14, '201700000373', '辛迟明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000373', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (258, 10, 14, '201700005557', '揭志鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005557', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (259, 10, 14, '201700005583', '杨乐亭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005583', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (260, 10, 14, '201700005572', '雷嘉辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005572', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (261, 10, 14, '201700005604', '张涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005604', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (262, 10, 14, '201700000352', '周伟根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000352', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (263, 10, 14, '201700005902', '温豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005902', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (264, 10, 14, '201700005914', '胡峻豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005914', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (265, 10, 14, '201700005909', '杨章洪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005909', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (266, 10, 14, '201700001851', '唐凌波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700001851', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (267, 10, 14, '201700006222', '杨林强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006222', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (268, 10, 14, '201700000294', '徐文雷', '男', '', '', '', '良好', '江西', '', '未婚', '', '22', '34', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000294', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (269, 10, 14, '201700000332', '易富强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000332', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (270, 10, 14, '201700005893', '曾子威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005893', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (271, 10, 14, '201700005887', '彭婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005887', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (272, 10, 14, '201700000363', '熊梦婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '223', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000363', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (273, 10, 14, '201700005860', '王贤明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005860', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (274, 10, 14, '201700005958', '黄鹭海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005958', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (275, 10, 14, '201700005950', '罗勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232232323', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005950', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (276, 10, 14, '201700006180', '徐文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006180', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (277, 10, 14, '201700006176', '邓志勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '3', '共青团员', '', '23', '', '23', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006176', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (278, 10, 14, '201700006159', '汤利鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006159', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (279, 10, 14, '201700000300', '黄鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '2', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000300', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (280, 10, 14, '201700006173', '吴方升', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '2', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '当兵', '201700006173', '123', 2, '保留学籍', '否', '否', '是', NULL);
INSERT INTO `student_info` VALUES (281, 10, 14, '201700006158', '黄宇楠', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006158', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (282, 10, 14, '201700000362', '邹广财', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000362', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (283, 10, 14, '201700006165', '华国永', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006165', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (284, 10, 14, '201700000313', '彭昌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000313', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (285, 10, 14, '201700000310', '熊俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000310', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (286, 10, 14, '201700005933', '李威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005933', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (287, 10, 14, '201700005806', '吕傲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005806', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (288, 10, 14, '201700005600', '袁何非凡', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3423', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005600', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (289, 10, 15, '201700005762', '罗列蓝', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005762', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (290, 10, 14, '201700005807', '黄波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005807', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (291, 10, 15, '201700006201', '易权', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006201', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (292, 10, 15, '201700005826', '梁志诚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '3', '共青团员', '', '323', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005826', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (293, 10, 15, '201700005828', '龚建成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '2', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005828', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (294, 10, 15, '201700005786', '廖勤勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005786', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (295, 10, 15, '201700000305', '彭帅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000305', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (296, 10, 15, '201700000250', '王小燕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '3', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000250', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (297, 10, 15, '201700005801', '袁旺来', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005801', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (298, 10, 15, '201700005824', '彭珏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005824', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (299, 10, 15, '201700005793', '谢帆', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '332', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005793', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (300, 10, 15, '201700005823', '何发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005823', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (301, 10, 15, '201700005805', '甘宝明', '男', '', '', '', '良好', '江西', '', '未婚', '3', '3', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005805', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (302, 10, 15, '201700005842', '张宾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005842', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (303, 10, 15, '201700005700', '王军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005700', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (304, 10, 15, '201700005745', '黄凡涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005745', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (305, 10, 13, '201700005746', '丁文昊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '23', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005746', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (306, 10, 15, '201700005741', '黄安', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '323', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005741', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (307, 10, 15, '201700005697', '刘洪彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005697', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (308, 10, 15, '201700005711', '熊胜俭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005711', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (309, 10, 15, '201700005748', '何鸿辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '232', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005748', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (310, 10, 15, '201700005729', '王贱根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005729', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (311, 10, 15, '201700000258', '周奇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000258', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (312, 10, 15, '201700000401', '罗龙华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '323', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000401', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (313, 10, 15, '201700005718', '龚欢', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '232', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005718', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (314, 10, 15, '201700000308', '杨城巍', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '231', '23', '23', '共青团员', '', '123', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000308', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (315, 10, 15, '201700005744', '汪志丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '21', '23', '12', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005744', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (316, 10, 15, '201700000358', '李健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '12', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000358', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (317, 10, 15, '201722000092', '聂家俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '1', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201722000092', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (318, 10, 15, '201700005625', '凌桂勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005625', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (319, 10, 15, '201700005669', '丁一峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005669', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (320, 10, 15, '201700005687', '廖会星', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232', '12', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005687', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (321, 10, 15, '201700005670', '张斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232232312', '23', '12', '共青团员', '', '12', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005670', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (322, 10, 15, '201700005646', '张荣荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '11', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005646', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (323, 10, 15, '201700006211', '徐鹏程', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '32', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006211', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (324, 10, 15, '201700005658', '章志杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '23', '223', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005658', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (325, 10, 15, '201700005655', '熊思豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005655', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (326, 10, 15, '201700005626', '周艺翔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '12', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005626', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (327, 10, 15, '201700005694', '涂帅伦', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '212', '23', '32', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005694', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (328, 10, 15, '201700005691', '彭亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '32', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005691', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (329, 10, 15, '201700005653', '王亚田', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005653', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (330, 10, 15, '201700005651', '曹红兵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005651', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (331, 10, 15, '201700001720', '张微闽', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700001720', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (332, 10, 15, '201700005657', '车伟成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005657', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (333, 10, 15, '201700005798', '宋君', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2', 'qw', 'qw', '共青团员', '', '12', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700005798', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (334, 10, 15, '201700000248', '廖贤则', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700000248', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (335, 10, 15, '201700006205', '徐志康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(软件测试方向)', '三年', '', '专科', NULL, '', '201700006205', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (336, 10, 16, '201700000269', '陈庆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '43', '234', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000269', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (337, 10, 16, '201700000329', '王聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000329', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (338, 10, 16, '201700000320', '邓雅柔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '23', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000320', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (339, 10, 16, '201700005983', '王佳荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005983', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (340, 10, 16, '201700005995', '潘印华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005995', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (341, 10, 16, '201700005976', '梁松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '443', '23', '23', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005976', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (342, 10, 15, '201700005998', '许涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '234', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005998', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (343, 10, 16, '201700000253', '杨鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000253', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (344, 10, 16, '201700005963', '袁敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005963', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (345, 10, 16, '201722000095', '王镭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201722000095', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (346, 10, 16, '201700006013', '刘环敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3244', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006013', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (347, 10, 16, '201722000096', '许英明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '234', '23', '23', '共青团员', '', '434', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201722000096', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (348, 10, 16, '201700005987', '林伟平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005987', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (349, 10, 16, '201700000380', '黄华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '43', '共青团员', '', '3423', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000380', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (350, 10, 16, '201700005985', '李正东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '4', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005985', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (351, 10, 16, '201700006018', '曾东滨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006018', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (352, 10, 16, '201700005783', '李杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4322', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005783', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (353, 10, 16, '201700005818', '龚朝臣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '12', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005818', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (354, 10, 16, '201700000361', '熊志伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2343', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000361', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (355, 10, 16, '201700005781', '罗志雄', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005781', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (356, 10, 16, '201700000255', '甘雪飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000255', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (357, 10, 16, '201700005770', '巫健平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005770', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (358, 10, 16, '201700005820', '熊常喜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '3', '共青团员', '', '12', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005820', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (359, 10, 16, '201700000289', '叶颂斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000289', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (360, 10, 16, '201700006235', '彭立荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006235', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (361, 10, 16, '201722000091', '曹德根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '412', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201722000091', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (362, 10, 16, '201700000263', '陈世豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000263', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (363, 10, 16, '201700005800', '杨楚威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005800', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (364, 10, 16, '201700005792', '李书春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005792', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (365, 10, 16, '201722000090', '洪忠付', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201722000090', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (366, 10, 16, '201700005838', '陈飞飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '324', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005838', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (367, 10, 16, '201700005785', '程汉锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '234', '共青团员', '', '12', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005785', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (368, 10, 16, '201700000235', '危斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '12', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000235', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (369, 10, 16, '201700000381', '范林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '324', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000381', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (370, 10, 16, '201700000345', '李欢欢', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '23', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000345', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (371, 10, 16, '201700000340', '黄斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000340', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (372, 10, 16, '201722000100', '龙瑞华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201722000100', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (373, 10, 16, '201700006038', '龙威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006038', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (374, 10, 16, '201700006043', '王隆', '男', '', '', '', '良好', '江西', '', '未婚', '', '2354545', '34', '234', '45', '共青团员', '', '234', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006043', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (375, 10, 16, '201700005840', '龙小挺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3434', '23', '23', '共青团员', '', '43', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005840', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (376, 10, 16, '201700006071', '谢巍扬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '当兵', '201700006071', '123', 2, '保留学籍', '否', '否', '是', NULL);
INSERT INTO `student_info` VALUES (377, 10, 16, '201700005568', '潘佳乐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '324', '23', '23', '共青团员', '', '121', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005568', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (378, 10, 16, '201700005841', '蔡冬平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '43', '共青团员', '', '345', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005841', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (379, 10, 16, '201700005790', '蔡如梦', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005790', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (380, 10, 16, '15201500001557', '吴一品', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '当兵入伍复学', '15201500001557', '吴一品', 2, '保留学籍', '否', '否', '是', NULL);
INSERT INTO `student_info` VALUES (381, 10, 17, '201700000378', '王酩凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '2', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '当兵', '201700000378', '123', 2, '保留学籍', '否', '否', '是', NULL);
INSERT INTO `student_info` VALUES (382, 10, 17, '201700000336', '彭志辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000336', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (383, 10, 17, '201700005936', '彭年金', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '234', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005936', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (384, 10, 17, '201700000281', '谢查康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000281', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (385, 10, 17, '201700006037', '张鹏钧', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006037', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (386, 10, 17, '201700000407', '唐俊涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '43', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000407', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (387, 10, 17, '201700006047', '曾佳苗', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006047', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (388, 10, 17, '201700006058', '周亚男', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006058', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (389, 10, 17, '201700005695', '张新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '43', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005695', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (390, 10, 17, '201700005738', '何林昊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005738', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (391, 10, 17, '201700005755', '郑俊美', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '23', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005755', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (392, 10, 17, '201700005710', '叶佳豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '42344235345435', '44', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005710', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (393, 10, 17, '201722000089', '唐俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '34', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000089', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (394, 10, 17, '201700000165', '张德泉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000165', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (395, 10, 17, '201700000233', '揭江峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000233', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (396, 10, 17, '201700005754', '陈兆勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '454', '23', '43', '共青团员', '', '45', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005754', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (397, 10, 17, '201700000348', '郭志鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000348', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (398, 10, 17, '201700005725', '徐志成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005725', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (399, 10, 17, '201700005701', '陈高飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '45', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005701', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (400, 10, 17, '201700000318', '童思亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000318', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (401, 10, 17, '201700005917', '黄蓉花', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '454', '23', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005917', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (402, 10, 17, '201700006050', '张婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '423', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006050', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (403, 10, 17, '201722000098', '吴林峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '234', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000098', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (404, 10, 17, '--', '刘鹏林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '34', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '自考生', '刘鹏林', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (405, 10, 17, '201700000403', '曾维坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000403', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (406, 10, 17, '201700005905', '袁帅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '34', '3', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005905', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (407, 10, 17, '201700006225', '陈锐锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006225', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (408, 10, 17, '201700005908', '张加豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '43', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005908', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (409, 10, 17, '201700000922', '曾豪杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000922', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (410, 10, 17, '201700005864', '晏壹恒', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005864', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (411, 10, 17, '201700005891', '易群龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005891', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (412, 10, 13, '201700000376', '郑建辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000376', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (413, 10, 17, '201700000399', '彭逸', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000399', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (414, 10, 17, '201700005910', '朱顺海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005910', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (415, 10, 17, '201700006074', '曾青延', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006074', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (416, 10, 18, '201700005659', '周子建', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005659', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (417, 10, 18, '201700005663', '任柯光', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005663', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (418, 10, 18, '201700005692', '王姝婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '3', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005692', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (419, 10, 18, '201700006210', '蔡波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '323', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006210', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (420, 10, 18, '201700000359', '周强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000359', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (421, 10, 18, '201700000344', '晏德洪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000344', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (422, 10, 18, '201700005617', '孙爱民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005617', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (423, 10, 18, '201700000312', '黄超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000312', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (424, 10, 18, '201700000096', '庄健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000096', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (425, 10, 18, '201700005612', '张旋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005612', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (426, 10, 18, '201700005621', '周宏伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005621', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (427, 10, 18, '201700000325', '张鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000325', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (428, 10, 18, '201700000335', '杨鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000335', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (429, 10, 18, '201700006214', '何俊鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006214', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (430, 10, 18, '201700005622', '卢豪明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005622', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (431, 10, 18, '201700005606', '邹日辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005606', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (432, 10, 18, '201700005610', '饶韩磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005610', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (433, 10, 18, '201700000409', '邵志洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000409', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (434, 10, 18, '201700000360', '李鑫林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000360', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (435, 10, 18, '201700006219', '邱志凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006219', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (436, 10, 18, '201700005597', '汪颂', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005597', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (437, 10, 18, '201722000084', '王凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000084', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (438, 10, 18, '201700005571', '吴亚丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '3', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005571', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (439, 10, 18, '201700000146', '金星星', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000146', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (440, 10, 18, '201700000395', '高鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000395', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (441, 10, 18, '201700000326', '林强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000326', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (442, 10, 18, '201700000347', '易露', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000347', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (443, 10, 18, '201700000147', '汪志明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000147', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (444, 10, 18, '201700001909', '罗广峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700001909', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (445, 10, 18, '201700005598', '杜佳聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005598', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (446, 10, 18, '201700005588', '邹斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005588', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (447, 10, 18, '201700005591', '刘天衢', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005591', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (448, 10, 18, '201700000776', '艾麒', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000776', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (449, 10, 18, '201700000243', '甘江', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000243', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (450, 10, 18, '201700005940', '李志英', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '23', '共青团员', '', '32', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005940', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (451, 10, 18, '201700005922', '刘彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005922', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (452, 10, 18, '201700001094', '杨文笔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700001094', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (453, 10, 18, '201722000085', '邹佳羿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201722000085', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (454, 10, 19, '201700000161', '洪日生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000161', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (455, 10, 19, '201700006250', '廖文涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006250', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (456, 10, 19, '201700005750', '刘俊杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005750', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (457, 10, 19, '201700005780', '赖国辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005780', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (458, 10, 19, '201700005743', '吴坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005743', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (459, 10, 19, '201700005761', '曾心昊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005761', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (460, 10, 19, '201700000154', '张志豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000154', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (461, 10, 19, '201700005819', '黄海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005819', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (462, 10, 19, '201700005782', '王祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005782', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (463, 10, 19, '201700005817', '兰强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005817', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (464, 10, 19, '201700006161', '潘小红', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006161', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (465, 10, 19, '201700006160', '罗玉连', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006160', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (466, 10, 19, '201700000142', '倪子飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000142', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (467, 10, 19, '201700006167', '李建国', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006167', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (468, 10, 19, '201700000364', '涂洋卿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000364', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (469, 10, 19, '201700000639', '张雄博', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000639', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (470, 10, 19, '201700006163', '叶宜生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006163', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (471, 10, 19, '201700006185', '邓晓春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006185', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (472, 10, 19, '201700000288', '尧志勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000288', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (473, 10, 19, '201722000088', '吴科胜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '34', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000088', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (474, 10, 19, '201700000237', '詹兆丰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000237', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (475, 10, 19, '201700005788', '陈彦鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005788', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (476, 10, 19, '201700006208', '袁力', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006208', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (477, 10, 19, '201700005721', '曾令兴', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005721', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (478, 10, 19, '201700000276', '周聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000276', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (479, 10, 19, '201700006171', '安广飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006171', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (480, 10, 19, '201700000259', '袁菖志', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000259', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (481, 10, 19, '201700006233', '袁智星', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006233', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (482, 10, 19, '201700005772', '余浩天', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005772', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (483, 10, 19, '201700005742', '黄龙辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005742', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (484, 10, 19, '201700005784', '廖涌涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005784', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (485, 10, 19, '201700000240', '俞杨剑', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000240', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (486, 10, 19, '201722000109', '白松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '45', '共青团员', '', '34', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '预科生', '201722000109', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (487, 10, 19, '201700005724', '杨稳航', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005724', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (488, 10, 19, '201700006183', '徐前浪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700006183', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (489, 10, 19, '201700000392', '黄包秀', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000392', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (490, 10, 19, '201700000238', '文世博', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700000238', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (491, 10, 19, '201700005961', '温友明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(前端开发与UI设计方向)', '三年', '', '专科', NULL, '', '201700005961', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (493, 10, 22, '201700000231', '漆鹏辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000231', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (494, 10, 22, '201700006072', '赵宏丽', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006072', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (495, 10, 22, '201700006017', '余小勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006017', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (496, 10, 22, '201700000299', '刘钦', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000299', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (497, 10, 22, '201700000271', '罗攀峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000271', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (498, 10, 22, '201700006004', '林虎民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006004', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (499, 10, 22, '201700005796', '杨永强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005796', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (500, 10, 22, '201700005802', '易传海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005802', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (501, 10, 22, '201700005768', '邹羽', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005768', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (502, 10, 22, '201700005821', '黄琪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005821', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (503, 10, 22, '201700000341', '张涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000341', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (504, 10, 22, '201700000383', '黄康胜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000383', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (505, 10, 22, '201700005774', '王彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005774', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (506, 10, 22, '201700000166', '万鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000166', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (507, 10, 22, '201700005713', '邹佳城', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005713', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (508, 10, 22, '201700000278', '鄢晨勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000278', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (509, 10, 22, '201700000230', '饶程杨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000230', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (510, 10, 22, '201700005717', '崔志达', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005717', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (511, 10, 22, '201700005758', '徐志凡', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005758', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (512, 10, 22, '201700005767', '熊鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005767', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (513, 10, 22, '201700005722', '罗超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005722', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (514, 10, 22, '201700000342', '辛继生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000342', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (515, 10, 22, '201700005764', '金炜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005764', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (516, 10, 22, '201700005726', '刘明光', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005726', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (517, 10, 22, '201700005628', '魏东洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005628', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (518, 10, 22, '201700000370', '辛强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000370', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (519, 10, 22, '201700005644', '陈威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005644', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (520, 10, 22, '201700005664', '滕云', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005664', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (521, 10, 22, '201700000387', '欧阳标', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000387', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (522, 10, 22, '201700005671', '陈昌伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005671', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (523, 10, 22, '201700005569', '曹己坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005569', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (524, 10, 22, '201700005608', '于展彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005608', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (525, 10, 22, '201700000163', '李庆波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000163', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (526, 10, 22, '201700006246', '曾根发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006246', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (527, 10, 22, '201700005749', '徐杨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005749', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (528, 10, 22, '201700005751', '张璐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005751', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (529, 10, 22, '201700005574', '李俊涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005574', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (530, 10, 22, '201700000282', '毛文聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000282', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (531, 10, 23, '201700000162', '徐发辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000162', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (532, 10, 23, '201700000968', '叶吉平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000968', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (533, 10, 23, '201700000365', '黄其', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000365', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (534, 10, 23, '201700006045', '周秋富', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006045', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (535, 10, 23, '201700006054', '吴晨煜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006054', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (536, 10, 23, '201700000411', '吴江川', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000411', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (537, 10, 23, '201700005871', '叶礼鲜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005871', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (538, 10, 23, '201700005915', '王亮秋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005915', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (539, 10, 23, '201700005906', '詹永祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005906', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (540, 10, 23, '201700000285', '黄超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000285', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (541, 10, 23, '201700000346', '吴铝', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000346', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (542, 10, 23, '201722000093', '徐江兴', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34235', '434', '55', '共青团员', '', '23', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '预科生', '201722000093', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (543, 10, 23, '201700000265', '左家豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000265', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (544, 10, 23, '201700006229', '王崇远', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006229', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (545, 10, 23, '201700000334', '严虎', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000334', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (546, 10, 23, '201700005923', '黄志超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005923', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (547, 10, 23, '201700005942', '温凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005942', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (548, 10, 23, '201700005954', '潘腾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005954', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (549, 10, 23, '201700005921', '陈梦祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005921', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (550, 10, 23, '201700000405', '邹敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000405', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (551, 10, 23, '201700000297', '张琛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000297', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (552, 10, 23, '201700005935', '郑阳成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005935', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (553, 10, 23, '201700005949', '管鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005949', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (554, 10, 23, '201700000384', '丁祥发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000384', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (555, 10, 23, '201700005951', '周骏龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005951', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (556, 10, 23, '201700005939', '余家保', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005939', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (557, 10, 23, '201700000353', '乐乐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000353', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (558, 10, 23, '201700000400', '丁浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700000400', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (559, 10, 23, '201700005938', '江?璇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005938', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (560, 10, 23, '201700005927', '赖立辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005927', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (561, 10, 23, '201700001746', '朱健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700001746', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (562, 10, 23, '201700005946', '李鑫才', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700005946', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (563, 10, 23, '--', '安泽', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '34', '23', '共青团员', '', '45', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '自考生', '安泽', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (564, 10, 23, '--', '叶前锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '423', '23', '53', '共青团员', '', '34', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '自考生', '叶前锋', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (565, 10, 23, '201700006162', '易晓炬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006162', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (566, 10, 23, '201700006182', '罗振', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006182', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (567, 10, 23, '201700006175', '朱俊鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006175', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (568, 10, 23, '201700006148', '周建军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006148', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (569, 10, 23, '201700006142', '张敏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006142', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (570, 10, 23, '201700006147', '游阳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(通信与运维方向)', '三年', '', '专科', NULL, '', '201700006147', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (571, 10, 24, '--', '华昝', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '自考生', '华昝', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (572, 10, 24, '201700006092', '李松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006092', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (573, 10, 24, '201700006090', '陈强波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006090', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (574, 10, 24, '201700006087', '石燕青', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006087', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (575, 10, 24, '201700000280', '余利豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000280', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (576, 10, 24, '201700000301', '周洁', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000301', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (577, 10, 24, '201700006086', '曾鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006086', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (578, 10, 24, '201700006075', '杜飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006075', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (579, 10, 24, '201700006118', '罗全', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006118', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (580, 10, 24, '201700006083', '邱玉林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006083', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (581, 10, 24, '201700000351', '郑增', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000351', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (582, 10, 24, '201700006085', '杨流进', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006085', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (583, 10, 24, '201700000267', '吴子宏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000267', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (584, 10, 24, '201700000389', '黄华康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000389', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (585, 10, 24, '201700006149', '车浪彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006149', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (586, 10, 24, '201700006084', '黄建', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006084', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (587, 10, 24, '201700006102', '李子昆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006102', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (588, 10, 24, '201700006110', '彭刘川', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006110', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (589, 10, 24, '201700006079', '陈晨', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006079', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (590, 10, 24, '201700006082', '梁海燕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006082', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (591, 10, 24, '201700006081', '张雨欣', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006081', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (592, 10, 24, '201700006119', '任丫琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006119', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (593, 10, 24, '201700006104', '罗美娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006104', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (594, 10, 24, '201700000296', '曾苏莹', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000296', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (595, 10, 24, '201700006117', '关慧玉', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006117', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (596, 10, 24, '201700006121', '刘燕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006121', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (597, 10, 24, '201700006155', '杜双芬', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006155', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (598, 10, 24, '201700006115', '杨群', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006115', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (599, 10, 24, '201700000170', '鲁小婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000170', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (600, 10, 24, '201700006100', '饶雯', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006100', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (601, 10, 24, '201700006093', '彭诚', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006093', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (602, 10, 24, '201700000368', '王建', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000368', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (603, 10, 24, '201700006123', '周琳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006123', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (604, 10, 24, '201700006094', '饶云霞', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006094', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (605, 10, 24, '201700006088', '刘世伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006088', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (606, 10, 24, '201700006077', '曾权', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006077', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (607, 10, 24, '201700006095', '周宁静', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006095', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (608, 10, 24, '201700006078', '李康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006078', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (609, 10, 24, '201700006097', '姜文辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006097', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (610, 10, 24, '201700000277', '徐雄平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000277', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (611, 10, 24, '201722000103', '廖康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '232', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '预科生', '201722000103', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (612, 10, 24, '201722000192', '万宇航', '男', '', '', '', '良好', '江西', '', '未婚', '32', '', '23', '42', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201722000192', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (613, 10, 24, '201500002960', '吕圣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '5', '34', '34', '共青团员', '', '45', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '挂学籍', '201500002960', '123', 2, '挂学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (614, 10, 24, '201700005843', '王锦强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232233', '23', '3', '共青团员', '', '34', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '3班转14班', '201700005843', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (615, 10, 24, '201700006091', '冯小丹', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006091', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (616, 10, 25, '201700006114', '王进松', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006114', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (617, 10, 25, '201700006112', '黄真真', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006112', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (618, 10, 25, '201700006098', '冉周', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006098', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (619, 10, 25, '201700000290', '黄荣振', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000290', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (620, 10, 25, '201700000319', '杨睿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '34', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '挂学籍', '201700000319', '123', 2, '挂学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (621, 10, 25, '201700006116', '赵思鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006116', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (622, 10, 25, '201700006124', '曾繁华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006124', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (623, 10, 25, '201700006101', '陈启强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006101', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (624, 10, 25, '201700006126', '赖东新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006126', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (625, 10, 25, '201700006105', '杨杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006105', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (626, 10, 25, '201700000286', '黄志磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000286', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (627, 10, 25, '201700000390', '郭杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000390', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (628, 10, 25, '201700006129', '朱悦诚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006129', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (629, 10, 25, '201700006125', '周志灵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '12', '32', '34', '共青团员', '', '3', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '挂学籍', '201700006125', '123', 2, '挂学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (630, 10, 25, '201700001531', '朱楷斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700001531', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (631, 10, 25, '201700006103', '程小诗', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006103', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (632, 10, 25, '201700000273', '曾瑜', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000273', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (633, 10, 25, '201700006127', '张圣云', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006127', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (634, 10, 25, '201700006099', '涂红英', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006099', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (635, 10, 25, '201700000304', '余婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000304', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (636, 10, 25, '201700006135', '任娜', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006135', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (637, 10, 25, '201700006136', '冉进英', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006136', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (638, 10, 25, '201700006133', '吴?颖', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006133', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (639, 10, 25, '201700006111', '罗瑶', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006111', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (640, 10, 25, '201700000171', '刘美丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000171', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (641, 10, 25, '201700006138', '郭秀', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006138', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (642, 10, 25, '201700006188', '周萍', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006188', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (643, 10, 25, '201700006134', '阙永琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '3', '3', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '休学', '201700006134', '123', 2, '保留学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (644, 10, 25, '201700006131', '曾露青', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006131', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (645, 10, 25, '201700000168', '章林丹', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000168', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (646, 10, 25, '201700000366', '宋金武', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000366', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (647, 10, 25, '201700006096', '罗佳琪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006096', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (648, 10, 25, '201700006132', '涂静', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006132', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (649, 10, 25, '--', '刘晓林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '234', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '自考生', '刘晓林', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (650, 10, 25, '201700000328', '刘金', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000328', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (651, 10, 25, '201700000337', '姚文强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000337', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (652, 10, 25, '201700006146', '方娟娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006146', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (653, 10, 25, '201700000324', '彭豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000324', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (654, 10, 25, '201722000106', '邹佳华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '53', '43', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201722000106', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (655, 10, 25, '201722000105', '梅凯勋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '656', '4354', '共青团员', '', '45', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '预科，13班转入15班\r\n', '201722000105', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (656, 10, 25, '201700000386', '李伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000386', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (657, 10, 25, '201700006143', '万嘉俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006143', '123', 2, '挂学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (658, 10, 26, '201700005845', '熊攀清', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005845', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (659, 10, 26, '201700005846', '黎采涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005846', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (660, 10, 26, '201700005847', '田子江', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005847', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (661, 10, 26, '201700000291', '邹韬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000291', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (662, 10, 26, '201700000321', '邹绍科', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000321', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (663, 10, 26, '201700005884', '易伟雄', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005884', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (664, 10, 26, '201700000963', '邓玉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000963', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (665, 10, 26, '201700005848', '陈兴', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005848', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (666, 10, 26, '201700000232', '陈金海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000232', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (667, 10, 26, '201700005851', '李秀杰', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005851', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (668, 10, 26, '201700005852', '吴帆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005852', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (669, 10, 26, '201700000379', '彭昌荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000379', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (670, 10, 26, '201700000394', '辛集平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000394', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (671, 10, 26, '201700005855', '曹文进', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005855', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (672, 10, 26, '201700005856', '刘嘉俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005856', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (673, 10, 26, '201700005857', '廖秋荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005857', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (674, 10, 26, '201700005858', '何春华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005858', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (675, 10, 26, '201700000642', '羊登义', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000642', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (676, 10, 26, '201700005861', '黄澜', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005861', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (677, 10, 26, '201700005863', '付秋霞', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005863', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (678, 10, 26, '201700006194', '唐丽菲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006194', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (679, 10, 26, '201700000293', '卢惠雯', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000293', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (680, 10, 26, '201700000315', '钟敏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000315', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (681, 10, 26, '201700005866', '陈黔岭', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005866', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (682, 10, 26, '201700005867', '赵亚娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005867', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (683, 10, 26, '201700006191', '刘敏锋', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006191', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (684, 10, 26, '201700005868', '黄爱珍', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005868', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (685, 10, 26, '201700000327', '杨益', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000327', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (686, 10, 26, '201700006193', '龙文', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006193', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (687, 10, 26, '201700005869', '罗惠玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005869', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (688, 10, 26, '201700005870', '丁海利', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005870', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (689, 10, 26, '201700005872', '何莎', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005872', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (690, 10, 26, '201722000094', '章嘉豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '2322323', '223', '34', '共青团员', '', '43', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201722000094', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (691, 10, 26, '201700005886', '饶诚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005886', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (692, 10, 26, '201700005888', '叶文丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005888', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (693, 10, 26, '201700000268', '鄢夏娱', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000268', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (694, 10, 26, '201700005892', '代林冲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005892', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (695, 10, 26, '201700005894', '张志中', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005894', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (696, 10, 26, '201700005896', '杨柳青', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005896', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (697, 10, 26, '201700000266', '刘志文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000266', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (698, 10, 26, '201700005899', '孙伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005899', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (699, 10, 26, '201700005900', '潘秋燕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005900', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (700, 10, 26, '201700005709', '詹晟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '3434', '共青团员', '', '34', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '9班转入16班\r\n', '201700005709', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (701, 10, 26, '201700005901', '黄永星', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005901', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (702, 10, 26, '--', '王鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '32', '23', '共青团员', '', '2', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '当兵入伍复学，挂学籍\r\n', '王鹏', '123', 2, '挂学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (703, 10, 28, '201700006197', '刘兰兰', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006197', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (704, 10, 28, '201700005685', '裴康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005685', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (705, 10, 28, '201700005683', '熊佳豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005683', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (706, 10, 28, '201700005682', '张德林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005682', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (707, 10, 28, '201700000292', '袁昌旭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000292', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (708, 10, 28, '201700000323', '刘鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000323', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (709, 10, 28, '201700005680', '周杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005680', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (710, 10, 28, '201700005678', '万纠文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005678', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (711, 10, 28, '201700000145', '陈田', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000145', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (712, 10, 28, '201700005674', '熊紫强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005674', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (713, 10, 28, '201722000086', '罗文涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '323', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201722000086', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (714, 10, 28, '201700000396', '高峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000396', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (715, 10, 28, '201700005667', '严超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005667', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (716, 10, 28, '201700005665', '刘应安', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005665', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (717, 10, 28, '201700005662', '温洪浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005662', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (718, 10, 28, '201722000108', '邓剑锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '23', '共青团员', '', '2323', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '预科生', '201722000108', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (719, 10, 28, '201700005656', '潘露馨', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005656', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (720, 10, 28, '201700005652', '罗婉莉', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005652', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (721, 10, 28, '201700000295', '杜文丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000295', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (722, 10, 28, '201700000316', '黄蓉', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000316', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (723, 10, 28, '201700006198', '石双芬', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700006198', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (724, 10, 28, '201700005649', '刘海燕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005649', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (725, 10, 28, '201700000169', '章名璇', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000169', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (726, 10, 28, '201700005645', '刘小莉', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005645', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (727, 10, 28, '201700005643', '钟文君', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005643', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (728, 10, 28, '201700000279', '毛雅婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000279', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (729, 10, 28, '201700005640', '全欢', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005640', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (730, 10, 28, '201700005638', '陈雅慧', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005638', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (731, 10, 28, '201722000107', '辛星', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23423', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201722000107', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (732, 10, 28, '201700005636', '郑安睿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005636', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (733, 10, 28, '201700005635', '王心怡', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005635', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (734, 10, 28, '201700005634', '黄素慧', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005634', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (735, 10, 28, '201700005633', '周文涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005633', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (736, 10, 28, '201700000531', '刘世劲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000531', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (737, 10, 28, '201700000408', '李瑶', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700000408', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (738, 10, 28, '201700005630', '李龙涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005630', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (739, 10, 28, '201700005629', '余生强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005629', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (740, 10, 28, '201700005627', '丁远琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201700005627', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (741, 10, 28, '201722000111', '罗慧玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '23', '共青团员', '', '2323', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '预科生', '201722000111', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (742, 10, 28, '201722000102', '江仁彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '', '201722000102', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (743, 10, 28, '201700000338', '罗春荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '232232343', '32', '43', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '4班转17班', '201700000338', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (744, 10, 28, '201700005769', '张建宁', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '43', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '4班转17班\r\n', '201700005769', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (745, 10, 28, '201700006202', '万吉林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '554', '43', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '4班转17班\r\n', '201700006202', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (746, 10, 28, '201700005778', '崔长寿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '43', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '4班转17班\r\n', '201700005778', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (747, 10, 28, '201700005759', '叶霞', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(网络运营策划方向)', '三年', '', '专科', NULL, '9班转17班\r\n', '201700005759', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (748, 10, 29, '201700000785', ' 叶扬铭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000785', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (749, 10, 29, '201700001143', '王羿杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001143', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (750, 10, 29, '201700001230', '金茂盛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001230', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (751, 10, 29, '201700000705', '唐昭', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000705', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (752, 10, 29, '201700000937', '王盼', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000937', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (753, 10, 29, '201700000979', '许宾平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000979', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (754, 10, 29, '201700001654', '何霖', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001654', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (755, 10, 29, '201700001420', '余宇华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001420', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (756, 10, 29, '201700000007', '张新丰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000007', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (757, 10, 29, '201700000652', '李旦', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000652', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (758, 10, 29, '201700000190', '曹海鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000190', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (759, 10, 29, '201700000676', '张旭明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000676', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (760, 10, 29, '201700001617', '钟宇涵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001617', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (761, 10, 29, '201700000515', '黄俊平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000515', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (762, 10, 29, '201700000600', '邹春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000600', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (763, 10, 29, '201700000611', '李清文', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000611', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (764, 10, 29, '201700000610', '肖维琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000610', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (765, 10, 29, '201700001802', '谢李斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001802', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (766, 10, 29, '201700001794', '陈缘', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001794', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (767, 10, 29, '201700001806 ', '饶泽辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001806 ', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (768, 10, 29, '201700001804', '饶品朋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001804', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (769, 10, 29, '201700001338', '周裔杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001338', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (770, 10, 29, '201700001269', '董俊斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001269', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (771, 10, 29, '201700001752', '刘智中', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001752', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (772, 10, 29, '201700001793', '王鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001793', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (773, 10, 29, '201700000790', '林建勋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000790', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (774, 10, 29, '201700001687', '肖誉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001687', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (775, 10, 29, '201700001164', '文俊辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001164', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (776, 10, 29, '201700001312', '吴宇康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001312', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (777, 10, 29, '201700000507', '蒋建禄', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000507', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (778, 10, 29, '201700001043', '谢飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001043', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (779, 10, 29, '201700001333', '赵祝鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001333', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (780, 10, 29, '201700001331', '周海亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001331', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (781, 10, 29, '201700001442', '蒋建福', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001442', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (782, 10, 29, '201700000551', '李伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000551', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (783, 10, 29, '201700001415', '方建光', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001415', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (784, 10, 29, '201700000108', '张鼎文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000108', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (785, 10, 29, '201700001951', '宋有光', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001951', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (786, 10, 29, '201700001240', '郑骁驰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001240', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (787, 10, 29, '201700000815', '胡锦北', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000815', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (788, 10, 29, '201700000189', '黄鹏辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000189', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (789, 10, 29, '201700000596', '徐明荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000596', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (790, 10, 29, '201700001469', '张震', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001469', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (791, 10, 29, '201700001543', '何毅锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001543', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (792, 10, 29, '201700001290', '陈钢', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001290', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (793, 10, 29, '201700001796', '刘国贤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001796', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (794, 10, 29, '201700001914', '谢俊瑶', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001914', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (795, 10, 29, '201700001853', '陈溪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001853', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (796, 10, 29, '201700001712', '郭晨宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700001712', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (797, 10, 29, '201700000609', '陈箫峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201700000609', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (798, 10, 29, '201722000007', '黄剑波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '', '201722000007', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (799, 10, 29, '201722000023', '胡文超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '退学', '201722000023', '123', 2, '退学', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (800, 10, 29, '201700001713', '刘艺銮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '5454', '23', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(VR虚拟与现实方向)', '三年', '', '专科', NULL, '休学', '201700001713', '123', 2, '保留学籍', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (801, 10, 30, '201800001159', '周永超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001159', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (802, 10, 30, '201822002059', '叶泽世', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '34', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002059', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (803, 10, 30, '201800002173', '刘少轩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002173', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (804, 10, 30, '201800002199', '陈嘉若', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002199', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (805, 10, 30, '201800002191', '陈纬瑶', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002191', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (806, 10, 30, '201800002341', '何智鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002341', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (807, 10, 30, '201800002157', '吴景景', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002157', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (808, 10, 30, '201800002399', '吴杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002399', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (809, 10, 30, '201800002493', '钟琨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002493', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (810, 10, 30, '201800002022', '何发辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002022', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (811, 10, 30, '201800002215', '余新超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002215', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (812, 10, 30, '201800002326', '杨外根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002326', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (813, 10, 30, '201800002582', '王海林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002582', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (814, 10, 30, '201800002566', '肖浪浪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002566', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (815, 10, 30, '201800002162', '陈志腾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002162', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (816, 10, 30, '201800002210', '黄江辰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002210', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (817, 10, 30, '201800002208', '胡庆伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002208', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (818, 10, 30, '201800002574', '冉景波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002574', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (819, 10, 30, '201800002377', '程建刚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002377', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (820, 10, 30, '201800002150', '郭远', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002150', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (821, 10, 30, '201800002365', '张文辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002365', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (822, 10, 30, '201800002130', '彭浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002130', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (823, 10, 30, '201800002177', '付以林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002177', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (824, 10, 30, '201800002124', '李聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002124', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (825, 10, 30, '201800002018', '陈朋飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002018', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (826, 10, 30, '201800002166', '袁仁伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002166', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (827, 10, 30, '201800002311', '郑煌辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002311', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (828, 10, 30, '201800002394', '黄天晨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002394', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (829, 10, 30, '201800002033', '刘明君', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002033', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (830, 10, 30, '201800002209', '黄佳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '3', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002209', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (831, 10, 30, '201800002434', '危高辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002434', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (832, 10, 30, '201800002294', '彭立欢', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002294', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (833, 10, 30, '201800002090', '周威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002090', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (834, 10, 30, '201800002308', '吴军亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002308', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (835, 10, 30, '201800002345', '许超云', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002345', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (836, 10, 30, '201822002047', '许志朋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '54', '434', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002047', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (837, 10, 30, '201800002694', '肖飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002694', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (838, 10, 30, '201800002175', '曾嘉媛', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002175', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (839, 10, 30, '201800002010', '陈梅龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002010', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (840, 10, 30, '201800002350', '黄玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002350', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (841, 10, 30, '201800002327', '宋李梦', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002327', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (842, 10, 30, '201800002302', '徐琳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002302', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (843, 10, 30, '201600003738', '刘义玲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201600003738', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (844, 10, 30, '201800001021', '刘文龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001021', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (845, 10, 31, '201800002358', '李文豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002358', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (846, 10, 31, '201800002068', ' 龙启', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002068', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (847, 10, 31, '201800002421', '雷金波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002421', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (848, 10, 31, '201800002181', '肖宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002181', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (849, 10, 31, '201800002244', '杨晨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002244', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (850, 10, 31, '201800002339', '熊意强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002339', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (851, 10, 31, '201800002301', '包平平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002301', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (852, 10, 31, '201822002055', '辛宇浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '43', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002055', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (853, 10, 31, '201800002104', '鄢康城', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002104', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (854, 10, 31, '201800002219', '宋国平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002219', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (855, 10, 31, '201800002439', '席书凡', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002439', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (856, 10, 31, '201800002405', '李文波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002405', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (857, 10, 31, '201800002190', '何九龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002190', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (858, 10, 31, '201800002017', '曾安宁', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002017', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (859, 10, 31, '201800002560', '甘小康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002560', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (860, 10, 31, '201800002475', '徐宇康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002475', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (861, 10, 31, '201800002451', '邹俊鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002451', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (862, 10, 31, '201822001778', '吕吉祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201822001778', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (863, 10, 31, '201800002283', '黄世虎', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002283', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (864, 10, 31, '201800002111', '杨波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002111', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (865, 10, 31, '201800002506', '郑伟春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002506', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (866, 10, 31, '201800002317', '徐鸿彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002317', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (867, 10, 31, '201800002098', '简昊郅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002098', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (868, 10, 31, '201800002497', '李进', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002497', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (869, 10, 31, '201800002218', '曹敬康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002218', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (870, 10, 31, '201800002081', '卢鑫佑', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002081', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (871, 10, 31, '201800002410', '董文成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002410', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (872, 10, 31, '201800002508', '鲁新旺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002508', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (873, 10, 31, '201800002401', '郭振康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002401', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (874, 10, 31, '201800002482', '陈禄', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002482', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (875, 10, 31, '201800002504', '黄棋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002504', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (876, 10, 31, '201800002197', '甘慧敏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002197', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (877, 10, 31, '201800002604', '张鑫浪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002604', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (878, 10, 31, '201800002201', '曾磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002201', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (879, 10, 31, '201800002705', '罗华勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002705', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (880, 10, 31, '201600001263', '龙司聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201600001263', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (881, 10, 31, '201800002388', '尧慧敏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002388', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (882, 10, 31, '201800002207', '戴锦芬', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002207', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (883, 10, 31, '201800002057', '叶倩文', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002057', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (884, 10, 31, '201800002095', '辛集芬', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002095', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (885, 10, 31, '201800002091', '刘志美', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002091', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (886, 10, 31, '201822002051', '杨通', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '32', '43', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002051', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (887, 10, 31, '201822002050', '熊汉林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '434', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201822002050', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (888, 10, 32, '201800002163', '甘能', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002163', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (889, 10, 32, '201800002194', '舒宇健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002194', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (890, 10, 32, '201800002092', '廖泽群', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002092', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (891, 10, 32, '201800002192', '徐卿锐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002192', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (892, 10, 32, '201800002061', '俞丁旺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002061', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (893, 10, 32, '201800002125', '温军伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002125', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (894, 10, 32, '201800002212', '聂俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002212', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (895, 10, 32, '201800002198', '黄海林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002198', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (896, 10, 32, '201800002039', '罗敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002039', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (897, 10, 32, '201800002097', '卢海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002097', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (898, 10, 32, '201800002145', '李仁辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002145', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (899, 10, 32, '201800002144', '熊马君', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002144', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (900, 10, 32, '201800002128', '肖智强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002128', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (901, 10, 32, '201800002286', '李盛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002286', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (902, 10, 32, '201800002491', '雷理时', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002491', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (903, 10, 32, '201800002075', '龚卫星', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002075', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (904, 10, 32, '201800002067', '欧阳金芳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002067', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (905, 10, 32, '201800002063', '钟舒艺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002063', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (906, 10, 32, '201800002480', '喻涵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002480', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (907, 10, 32, '201800002070', '郭文胜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002070', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (908, 10, 32, '201800002430', '喻磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002430', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (909, 10, 32, '201800002382', '朱义田', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002382', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (910, 10, 32, '201800002509', '唐忠民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002509', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (911, 10, 32, '201800002375', '章绍杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002375', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (912, 10, 32, '201800002385', '危成平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002385', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (913, 10, 32, '201800002485', '吴云健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002485', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (914, 10, 32, '201800002424', '欧阳鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002424', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (915, 10, 32, '201800002436', '张天宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002436', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (916, 10, 32, '201800002392', '龚敏飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002392', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (917, 10, 32, '201800002569', '潘宿会', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002569', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (918, 10, 32, '201800002579', '肖江兰', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002579', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (919, 10, 32, '201800002416', '于鹏雨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002416', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (920, 10, 32, '201800002602', '吴军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002602', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (921, 10, 32, '201800002353', '邓思敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002353', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (922, 10, 32, '201822002053', '熊诗浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '332', '2', '234', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201822002053', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (923, 10, 32, '201800002581', '李杰 ', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002581', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (924, 10, 32, '201800002713', '肖海明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002713', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (925, 10, 32, '201800002364', '汪函翠', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002364', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (926, 10, 32, '201700000158', '李荣亚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3423534', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201700000158', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (927, 10, 32, '201800002211', '卢艳莹', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002211', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (928, 10, 32, '201800002412', '张佳娣', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002412', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (929, 10, 32, '201800002072', '祝雅婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002072', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (930, 10, 32, '201600001598', '喻林杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201600001598', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (931, 10, 32, '201800002697', '戴维', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002697', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (932, 10, 33, '201822002056', '万志刚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '234', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002056', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (933, 10, 33, '201800002378', '程旺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002378', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (934, 10, 33, '201800002126', '陈健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002126', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (935, 10, 33, '201800002427', '徐志鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002427', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (936, 10, 33, '201800002419', '饶启生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002419', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (937, 10, 33, '201800002400', '赵余', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002400', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (938, 10, 33, '201800002185', '杨家鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002185', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (939, 10, 33, '201800002065', '辛科', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002065', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (940, 10, 33, '201800002169', '熊勇刚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002169', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (941, 10, 33, '201800002387', '曾欢', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002387', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (942, 10, 33, '201800002310', '雷雨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002310', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (943, 10, 33, '201800002213', '余俊强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002213', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (944, 10, 33, '201800002429', '甘文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002429', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (945, 10, 33, '201800002486', '何少星', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002486', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (946, 10, 33, '201800002589', '马荣林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002589', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (947, 10, 33, '201800002561', '刘鸿亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002561', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (948, 10, 33, '201800002289', '李志红', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002289', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (949, 10, 33, '201800002159', '刘佳旺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002159', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (950, 10, 33, '201800002505', '蔡泷威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002505', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (951, 10, 33, '201800002183', '范腾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002183', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (952, 10, 33, '201800002082', '金世豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002082', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (953, 10, 33, '201800002559', '任阿会', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '33', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002559', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (954, 10, 33, '201800002101', '唐文龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002101', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (955, 10, 33, '201800002025', '王斌生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002025', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (956, 10, 33, '201800002440', '许滨涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002440', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (957, 10, 33, '201800002131', '曾彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002131', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (958, 10, 33, '201800002568', '彭龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002568', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (959, 10, 33, '201800002598', '张胜利', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002598', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (960, 10, 33, '201800002309', '涂宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002309', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (961, 10, 33, '201800002318', '陈毅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002318', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (962, 10, 33, '201800002307', '瞿文丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002307', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (963, 10, 33, '201800002374', '元阿海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002374', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (964, 10, 33, '201800002053', '黄鹏辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002053', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (965, 10, 33, '201800002285', '彭家屹', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002285', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (966, 10, 33, '201800002337', '李宽宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002337', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (967, 10, 33, '201800001795', '张磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001795', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (968, 10, 33, '201822002052', '徐印文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002052', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (969, 10, 33, '201800002044', '邓嘉伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002044', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (970, 10, 33, '201800002135', '陈杨杨', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002135', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (971, 10, 33, '201800002193', '黄雷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002193', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (972, 10, 33, '201800002386', '李梁情', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002386', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (973, 10, 33, '201800002593', '杨正丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002593', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (974, 10, 33, '201600000027', '王珏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201600000027', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (975, 10, 33, '201800001667', '谢宇轩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001667', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (976, 10, 34, '201800002123', '崔鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002123', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (977, 10, 34, '201800002133', '黄明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002133', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (978, 10, 34, '201800002158', '袁瑆樑', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '袁瑆樑', '201800002158', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (979, 10, 34, '201800002099', '邓伟平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002099', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (980, 10, 34, '201800002127', '黄应铖', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002127', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (981, 10, 34, '201800002363', '付文杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002363', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (982, 10, 34, '201800002408', '皮康明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002408', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (983, 10, 34, '201800002312', '黎佳毫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002312', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (984, 10, 34, '201800002573', '杨伟东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002573', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (985, 10, 34, '201800002359', '曾小丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002359', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (986, 10, 34, '201800002077', '武微', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002077', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (987, 10, 34, '201800002349', '刘宁', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002349', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (988, 10, 34, '201800002062', '董浩然', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002062', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (989, 10, 34, '201800002586', '易思林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002586', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (990, 10, 34, '201800002188', '丁文杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002188', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (991, 10, 34, '201800002119', '杜昕', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002119', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (992, 10, 34, '201800002149', '欧阳鼎', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002149', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (993, 10, 34, '201800002391', '郭伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002391', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (994, 10, 34, '201800002351', '章俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002351', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (995, 10, 34, '201800002171', '胡凡', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002171', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (996, 10, 34, '201800002490', '肖振东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002490', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (997, 10, 34, '201800002596', '陈锐锐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002596', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (998, 10, 34, '201800002397', '何乐城', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002397', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (999, 10, 34, '201800002132', '严浩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002132', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1000, 10, 34, '201800002333', '胡康广', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002333', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1001, 10, 34, '201800002433', '吴泽隆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002433', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1002, 10, 34, '201800002118', '敖志?', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002118', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1003, 10, 34, '201800002048', '赵姝娴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002048', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1004, 10, 34, '201800002282', '万小林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002282', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1005, 10, 34, '201800002306', '彭志军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002306', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1006, 10, 34, '201800002564', '谷易强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002564', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1007, 10, 34, '201800002476', '赖泽锦', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002476', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1008, 10, 34, '201800002143', '付卫东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002143', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1009, 10, 34, '201800001351', '敖少豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001351', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1010, 10, 34, '201800002021', '何金鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002021', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1011, 10, 34, '201800002395', '邱 嘉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002395', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1012, 10, 34, '201800002371', '陈章义', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002371', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1013, 10, 34, '201800002719', '文玉龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002719', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1014, 10, 34, '201800002435', '黄淑瑶', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002435', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1015, 10, 34, '201800002288', '游琳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002288', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1016, 10, 34, '201800002005', '曾婷婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002005', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1017, 10, 34, '201800002147', '张婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002147', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1018, 10, 34, '201800002720', '黄嫣', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002720', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1019, 10, 35, '201800002014', '钟兴伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002014', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1020, 10, 35, '201800002142', '邹梦龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002142', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1021, 10, 35, '201800002483', '陈鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002483', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1022, 10, 35, '201800002314', '李国俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002314', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1023, 10, 35, '201800002442', '袁佳宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002442', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1024, 10, 35, '201800002290', '易永成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002290', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1025, 10, 35, '201800002106', '卫威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002106', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1026, 10, 35, '201800002094', '罗嗣君', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002094', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1027, 10, 35, '201800002206', '彭乐华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002206', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1028, 10, 35, '201800002129', '陈贵溪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002129', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1029, 10, 35, '201800002406', '江诣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002406', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1030, 10, 35, '201800002380', '李嘉俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002380', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1031, 10, 35, '201800002300', '张聿豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002300', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1032, 10, 35, '201800002330', '朱童生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002330', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1033, 10, 35, '201800002165', '朱梦龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002165', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1034, 10, 35, '201800002176', '付聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002176', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1035, 10, 35, '201800002016', '刘庚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002016', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1036, 10, 35, '201800002009', '李磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002009', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1037, 10, 35, '201800002110', '陈龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002110', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1038, 10, 35, '201800002487', '吴宇新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002487', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1039, 10, 35, '201800002488', '熊耀威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002488', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1040, 10, 35, '201800002172', '熬雨轩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002172', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1041, 10, 35, '201800002148', '朱伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002148', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1042, 10, 35, '201800002020', '曾维新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002020', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1043, 10, 35, '201800002028', '严际腾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002028', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1044, 10, 35, '201800002477', '郭钰祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002477', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1045, 10, 35, '201800002105', '聂彪翔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002105', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1046, 10, 35, '201800002187', '喻星宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002187', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1047, 10, 35, '201800002372', '吴志龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002372', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1048, 10, 35, '201800002293', '龙炎兴', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002293', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1049, 10, 35, '201800002555', '胡海温', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002555', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1050, 10, 35, '201800002716', '田常伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002716', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1051, 10, 35, '201800002572', '方鹰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002572', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1052, 10, 35, '201800002536', '陈克树', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002536', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1053, 10, 35, '201800002369', '罗雷', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002369', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1054, 10, 35, '201800002381', '刘振', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002381', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1055, 10, 35, '201800001317', '皮旺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001317', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1056, 10, 35, '201800002335', '万杰宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002335', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1057, 10, 35, '201800002591', '代禄琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002591', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1058, 10, 35, '201800002592', '韩慧媛', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002592', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1059, 10, 35, '201800002590', '任艳屏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002590', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1060, 10, 35, '201800002470', '周远君', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002470', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1061, 10, 35, '201800002718', '辛琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002718', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1062, 10, 36, '201800002202', '石江波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '34', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002202', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1063, 10, 36, '201800002156', '甘绣鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002156', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1064, 10, 36, '201800002246', '彭刚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002246', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1065, 10, 36, '201800002115', '朱喜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002115', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1066, 10, 36, '201800002168', '陈长旺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002168', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1067, 10, 36, '201800002178', '雷建涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002178', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1068, 10, 36, '201800002352', '曾雄伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002352', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1069, 10, 36, '201800002114', '李辉超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002114', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1070, 10, 36, '201800002117', '舒奇祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002117', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1071, 10, 36, '201800002217', '徐洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002217', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1072, 10, 36, '201800002182', '杨俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002182', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1073, 10, 36, '201800002031', '黄得源', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002031', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1074, 10, 36, '201800002049', '曾 鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002049', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1075, 10, 36, '201800002577', '王令', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002577', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1076, 10, 36, '201800002036', '丁兆彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002036', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1077, 10, 36, '201800002134', '温跃平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002134', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1078, 10, 36, '201800002108', '曾涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002108', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1079, 10, 36, '201800002313', '邓旺辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002313', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1080, 10, 36, '201800002186', '刘伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002186', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1081, 10, 36, '201800002420', '徐高杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002420', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1082, 10, 36, '201800002058', '温群呈 ', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002058', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1083, 10, 36, '201800002346', '肖国锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002346', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1084, 10, 36, '201800002355', '李涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002355', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1085, 10, 36, '201800002357', '王刚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002357', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1086, 10, 36, '201800002413', '刘 啸', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002413', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1087, 10, 36, '201800002383', '许国春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002383', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1088, 10, 36, '201800002678', '陈宣福', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002678', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1089, 10, 36, '201800002354', '杨仁巍', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002354', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1090, 10, 36, '201800002417', '戴辉洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002417', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1091, 10, 36, '201800002291', '李彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002291', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1092, 10, 36, '201800002292', '许阳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002292', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1093, 10, 36, '201800002299', '卢云峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002299', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1094, 10, 36, '201800002425', '黄栋宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002425', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1095, 10, 36, '201800002597', '张泽林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002597', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1096, 10, 36, '201800002661', '张宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002661', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1097, 10, 36, '201800002599', '周睿智', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002599', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1098, 10, 36, '201800002362', '曾多丽', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002362', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1099, 10, 36, '201800002056', '李小婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002056', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1100, 10, 36, '201800002023', '李温琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002023', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1101, 10, 36, '201800002332', '罗英', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002332', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1102, 10, 36, '201800002437', '吴晨萌', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002437', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1103, 10, 36, '201800002717', '黄雨雨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002717', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1104, 10, 36, '201800002567', '习衷新', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002567', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1105, 10, 37, '201800002595', '罗贵林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002595', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1106, 10, 37, '201800002465', '李家杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002465', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1107, 10, 37, '201800002103', '曾平楠', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002103', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1108, 10, 37, '201800002116', '徐文璇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002116', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1109, 10, 37, '201800002214', '包嘉伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002214', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1110, 10, 37, '201800002438', '卢智峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002438', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1111, 10, 37, '201800002376', '甘子龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002376', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1112, 10, 37, '201800002069', '韩小康', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002069', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1113, 10, 37, '201800002107', '吴骏海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002107', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1114, 10, 37, '201800002151', '高龙根', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002151', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1115, 10, 37, '201800002367', '陈坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002367', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1116, 10, 37, '201800002441', '舒斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002441', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1117, 10, 37, '201800002029', '曾星龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002029', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1118, 10, 37, '201800002571', '王振锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002571', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1119, 10, 37, '201800002034', '刘亮亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002034', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1120, 10, 37, '201800002243', '张文琪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002243', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1121, 10, 37, '201800002305', '陈才国', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002305', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1122, 10, 37, '201800002051', '王振', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002051', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1123, 10, 37, '201800002665', '杨文军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002665', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1124, 10, 37, '201800002164', '黄浩杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002164', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1125, 10, 37, '201800002204', '黄志刚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002204', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1126, 10, 37, '201800002340', '戈俊炜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002340', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1127, 10, 37, '201800002379', '陈乐', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002379', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1128, 10, 37, '201800002141', '钟彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002141', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1129, 10, 37, '201800002153', '刘文磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002153', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1130, 10, 37, '201800002287', '严文强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002287', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1131, 10, 37, '201800002055', '陈威龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002055', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1132, 10, 37, '201800002284', '易顺', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002284', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1133, 10, 37, '201800002600', '黄英明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002600', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1134, 10, 37, '201800002431', '邹信义', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002431', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1135, 10, 37, '201800002426', '黄坚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002426', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1136, 10, 37, '201800002328', '袁喜生', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002328', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1137, 10, 37, '201800002489', '李岸隆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002489', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1138, 10, 37, '201800002658', '杨东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002658', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1139, 10, 37, '--', '李贵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '3423534', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '自考生', '李贵', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1140, 10, 37, '201800002040', '李媛', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002040', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1141, 10, 37, '201800002136', '罗丽琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002136', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1142, 10, 37, '201800002578', '张露仙', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002578', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1143, 10, 37, '201800002576', '田小凤', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002576', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1144, 10, 37, '201800002047', '杨 俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002047', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1145, 10, 37, '201800002078', '余啸', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002078', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1146, 10, 37, '201800002492', '刘晨宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002492', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1147, 10, 37, '201800002494', '王展鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002494', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1148, 10, 38, '201800002102', '周宏昌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002102', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1149, 10, 38, '201800002154', '袁世豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002154', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1150, 10, 38, '201800002298', '林顺武', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002298', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1151, 10, 38, '201800002297', '吴童', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002297', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1152, 10, 38, '201800002512', '刘海军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002512', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1153, 10, 38, '201800002583', '胡健清', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002583', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1154, 10, 38, '201800002076', '许鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002076', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1155, 10, 38, '201800002673', '柴永民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002673', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1156, 10, 38, '201800002038', '黄斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002038', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1157, 10, 38, '201800002179', '付辰?', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002179', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1158, 10, 38, '201800002601', '王玉永', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002601', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1159, 10, 38, '201800002205', '黄佳明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002205', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1160, 10, 38, '201800002295', '叶荣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002295', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1161, 10, 38, '201800002113', '李全斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002113', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1162, 10, 38, '201800002138', '张建军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002138', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1163, 10, 38, '201800002140', '赖鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002140', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1164, 10, 38, '201800002404', '饶俊标', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002404', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1165, 10, 38, '201800002390', '龚亚东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002390', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1166, 10, 38, '201800002344', '刘华辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002344', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1167, 10, 38, '201800002588', '罗志强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002588', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1168, 10, 38, '201800002689', '管林坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002689', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1169, 10, 38, '201800002174', '陈雅婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002174', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1170, 10, 38, '201800002570', '任雪琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002570', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1171, 10, 38, '201800002594', '张玲玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002594', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1172, 10, 38, '201800002422', '李泮发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002422', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1173, 10, 38, '201800002331', '龙红艳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002331', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1174, 10, 38, '201800002196', '张奇', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002196', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1175, 10, 38, '201800002660', '冷静', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002660', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1176, 10, 38, '201800002011', '黄圣豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002011', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1177, 10, 38, '201800002137', '王毅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002137', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1178, 10, 38, '201800002370', '甘智敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002370', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1179, 10, 38, '201800002411', '辛旭东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002411', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1180, 10, 38, '201800002366', '曹聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002366', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1181, 10, 38, '201800002109', '陈春胜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002109', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1182, 10, 38, '201800002695', '曾敏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002695', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1183, 10, 38, '201800002500', '梅东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002500', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1184, 10, 38, '201800002575', '李龙 ', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002575', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1185, 10, 38, '201800002155', '饶烽炫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002155', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1186, 10, 38, '201800002112', '李文昌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002112', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1187, 10, 38, '201800002450', '赵建辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002450', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1188, 10, 38, '201800002200', '黄聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002200', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1189, 10, 38, '201800001453', '吴如静', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001453', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1190, 10, 38, '201600003485', '左健勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201600003485', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1191, 10, 39, '201800002026', '赵星薪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002026', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1192, 10, 39, '201800002396', '王振国', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002396', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1193, 10, 39, '201800002585', '杨军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002585', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1194, 10, 39, '201800002338', '谢娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002338', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1195, 10, 39, '201800002184', '邹丽娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002184', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1196, 10, 39, '201800002484', '周凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002484', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1197, 10, 39, '201800002348', '江泽辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002348', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1198, 10, 39, '201800002303', '戴鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002303', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1199, 10, 39, '201800002510', '朱强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002510', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1200, 10, 39, '201800002015', '曾泽晨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002015', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1201, 10, 39, '201800002041', '曾泉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002041', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1202, 10, 39, '201800002711', '杨林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002711', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1203, 10, 39, '201800002093', '邹江', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002093', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1204, 10, 39, '201800002373', '章发辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002373', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1205, 10, 39, '201800002334', '易浩杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002334', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1206, 10, 39, '201800002584', '邵海军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002584', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1207, 10, 39, '201800002565', '李腊军', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002565', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1208, 10, 39, '201800002012', '高隆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002012', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1209, 10, 39, '201800002220', '杨蕾', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002220', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1210, 10, 39, '201800002083', '袁菲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002083', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1211, 10, 39, '201800002073', '李文杰', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002073', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1212, 10, 39, '201800002189', '邹思颖', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002189', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1213, 10, 39, '201800002502', '郑东平', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002502', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1214, 10, 39, '201800002393', '邓明波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002393', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1215, 10, 39, '201800002361', '黄晟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002361', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1216, 10, 39, '201800002304', '尧幼琴', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002304', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1217, 10, 39, '201800002342', '何彪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002342', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1218, 10, 39, '201800002139', '崔飞鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002139', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1219, 10, 39, '201800002671', '温攀', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002671', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1220, 10, 39, '201800002402', '陈嘉蒙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002402', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1221, 10, 39, '201800002414', '李条玉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002414', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1222, 10, 39, '201800002195', '邹 帅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002195', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1223, 10, 39, '201800002556', '唐坤', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002556', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1224, 10, 39, '201800002347', '曾聪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002347', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1225, 10, 39, '201800002501', '刘盛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002501', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1226, 10, 39, '201800002170', '甘伟奇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002170', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1227, 10, 39, '201800002432', '温永强', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002432', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1228, 10, 39, '201800002428', '张红金', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002428', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1229, 10, 39, '201800002013', '谢春梅', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002013', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1230, 10, 39, '201800002007', '王振宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002007', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1231, 10, 39, '201800002403', '李智勇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002403', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1232, 10, 39, '201800002664', '黄晨', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002664', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1233, 10, 39, '201800002336', '刘超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002336', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1234, 10, 39, '201800002356', '唐闽昌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002356', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1235, 10, 40, '201800002562', '廖美玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002562', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1236, 10, 40, '201800002315', '杨冬冬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002315', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1237, 10, 40, '201800001850', '马朝辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001850', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1238, 10, 40, '201800002043', '胡梦炜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002043', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1239, 10, 40, '201822002058', '严康辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '43', '23', '34', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002058', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1240, 10, 40, '201800002498', '周财棚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002498', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1241, 10, 40, '201800002146', '李子坡', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002146', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1242, 10, 40, '201800002203', '张莉辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002203', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1243, 10, 40, '201800002122', '李志龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002122', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1244, 10, 40, '201800002384', '吴雨轩', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002384', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1245, 10, 40, '201800002507', '温佩龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002507', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1246, 10, 40, '201800002343', '过佳威', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002343', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1247, 10, 40, '201800002503', '喻晓轲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002503', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1248, 10, 40, '201800002389', '仰志鸿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002389', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1249, 10, 40, '201800002329', '罗锋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002329', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1250, 10, 40, '201800002152', '史振宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002152', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1251, 10, 40, '201800002160', '杨宏伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002160', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1252, 10, 40, '201800002360', '陈俊伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002360', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1253, 10, 40, '201800002120', '陈源', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002120', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1254, 10, 40, '201800002180', ' 胡玉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002180', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1255, 10, 40, '201800002407', '徐金民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002407', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1256, 10, 40, '201800002008', '熊伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002008', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1257, 10, 40, '201800002280', '陈政文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002280', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1258, 10, 40, '201800002296', '苏科', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002296', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1259, 10, 40, '201800002368', '冯俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002368', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1260, 10, 40, '201800002281', '钟小燕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002281', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1261, 10, 40, '201800002499', '王园', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002499', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1262, 10, 40, '201800002100', '刘金连', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002100', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1263, 10, 40, '201800002669', '黄嘉欢', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002669', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1264, 10, 40, '201800002222', '龚丽红', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002222', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1265, 10, 40, '201800002563', '陈泽霖', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002563', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1266, 10, 40, '201800002423', '彭海均', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002423', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1267, 10, 40, '201800002418', '徐俊文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002418', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1268, 10, 40, '201800002121', '赖煜韬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002121', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1269, 10, 40, '201800002006', '彭能鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002006', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1270, 10, 40, '201800002161', '周佳俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002161', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1271, 10, 40, '201800002045', '郭凌翔', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002045', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1272, 10, 40, '201800002167', '袁俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002167', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1273, 10, 40, '201800002479', '杨健', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002479', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1274, 10, 40, '201800002481', '吴峻峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002481', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1275, 10, 40, '201800002316', '章隆盛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002316', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1276, 10, 40, '201800002272', '周纯', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002272', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1277, 10, 41, '201800002268', '虞振跃', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002268', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1278, 10, 41, '201800001969', '周亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001969', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1279, 10, 41, '201800002712', '吴泽佳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002712', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1280, 10, 41, '201800001983', '黄葵', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001983', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1281, 10, 41, '201800001982', '李安', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001982', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1282, 10, 41, '201800001991', '罗意', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001991', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1283, 10, 41, '201800002278', '黄豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002278', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1284, 10, 41, '201800001985', '罗丽娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001985', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1285, 10, 41, '201800002255', '袁紫怡', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002255', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1286, 10, 41, '201800002256', '丁凤婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002256', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1287, 10, 41, '201811044520', '唐佳婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201811044520', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1288, 10, 41, '201800001968', '黄梦婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001968', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1289, 10, 41, '201800002265', '邓甜甜', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002265', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1290, 10, 41, '201800002551', '张小雨', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002551', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1291, 10, 41, '201800002260', '余文江', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002260', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1292, 10, 41, '201800002696', '何英杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002696', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1293, 10, 41, '201800002259', '韩磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002259', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1294, 10, 41, '201800001973', '李晓峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001973', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1295, 10, 41, '201800002554', '袁杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002554', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1296, 10, 41, '201822002054', '杨广文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002054', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1297, 10, 41, '201800002258', '童恩杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002258', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1298, 10, 41, '201800002548', '杨芳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002548', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1299, 10, 41, '201800002271', '吴梦', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002271', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1300, 10, 41, '201800002474', '姜佩芸', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002474', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1301, 10, 41, '201800002004', '陈广莉', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002004', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1302, 10, 41, '201800002249', '汪国辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002249', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1303, 10, 41, '201800001965', '李嘉能', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001965', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1304, 10, 41, '201800001993', '徐钦文', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001993', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1305, 10, 41, '201800002003', '孙金', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002003', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1306, 10, 41, '201800002659', '施雨', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002659', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1307, 10, 41, '201800001971', '曾颖', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001971', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1308, 10, 41, '201800002398', '邱琴祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002398', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1309, 10, 41, '201800001998', '夏敏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001998', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1310, 10, 41, '201800002466', '陈烨', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002466', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1311, 10, 41, '201800002262', '张佳诚', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002262', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1312, 10, 41, '201800002710', '邹恒波', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002710', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1313, 10, 42, '201800002550', '杜倩', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002550', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1314, 10, 42, '201800001978', '欧阳宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001978', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1315, 10, 42, '201800002269', '陈志宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002269', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1316, 10, 42, '201800001835', '邱明川', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001835', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1317, 10, 42, '201800001984', '曾彬彬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001984', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1318, 10, 42, '201800002251', '何东桓', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002251', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1319, 10, 42, '201800001996', '胡义华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001996', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1320, 10, 42, '201800002245', '黎学有', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002245', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1321, 10, 42, '201800002663', '郑江川', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002663', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1322, 10, 42, '201800001966', '李星宇', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001966', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1323, 10, 42, '201800002467', '徐文祥', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002467', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1324, 10, 42, '201800001999', '潘福明', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001999', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1325, 10, 42, '201800001986', '邱青青', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001986', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1326, 10, 42, '201800001977', '辛杰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001977', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1327, 10, 42, '201800002257', '涂昊楠', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002257', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1328, 10, 42, '201800002264', '符一帆', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002264', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1329, 10, 42, '201800002250', '李 超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002250', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1330, 10, 42, '201800002000', '李麒鸿', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002000', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1331, 10, 42, '201800001988', '龚瑾', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001988', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1332, 10, 42, '201800002662', '康蚕', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002662', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1333, 10, 42, '201800001990', '丁怡如', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001990', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1334, 10, 42, '201800002267', '尧咏春', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002267', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1335, 10, 42, '201800001976', '辛雨荣', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001976', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1336, 10, 42, '201800001975', '曾红艳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001975', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1337, 10, 42, '201800001992', '冯慧敏', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001992', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1338, 10, 42, '201800002553', '刘飞', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002553', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1339, 10, 42, '201800002552', '邓欢欢', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002552', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1340, 10, 42, '201822002048', '赖雪静', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '34', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201822002048', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1341, 10, 42, '201800002274', '周晓惠', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002274', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1342, 10, 42, '201800002471', '聂佩瑶', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002471', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1343, 10, 42, '201800001967', '曾贝', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001967', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1344, 10, 42, '201800002670', '袁冬玲', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002670', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1345, 10, 42, '201800002266', '冯佳齐', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002266', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1346, 10, 42, '201800002261', '易娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002261', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1347, 10, 42, '201800002721', '陈鸿娟', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002721', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1348, 10, 43, '201822002057', '王希伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '4', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002057', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1349, 10, 43, '201800002277', '何穗华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002277', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1350, 10, 43, '201800002221', '邹丹丹', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002221', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1351, 10, 43, '201800002270', '曾茜', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002270', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1352, 10, 43, '201800002263', '陈少群', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002263', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1353, 10, 43, '201800001979', '邹鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001979', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1354, 10, 43, '201800002002', '张婉倩', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002002', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1355, 10, 43, '201822002049', '邹梦颖', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '343', '23', '2', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '预科生', '201822002049', '123', 2, '预科', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1356, 10, 43, '201800002253', '杨玉斌', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002253', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1357, 10, 43, '201800002252', '王瑶圣', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002252', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1358, 10, 43, '201800002254', '吴节辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002254', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1359, 10, 43, '201800002001', '陈伟能', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002001', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1360, 10, 43, '201800001997', '温小豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001997', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1361, 10, 43, '201800001964', '胡建龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001964', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1362, 10, 43, '201800002473', '饶鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002473', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1363, 10, 43, '201800002409', '胡海洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002409', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1364, 10, 43, '201800001994', '肖阳春', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001994', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1365, 10, 43, '201800001987', '聂海亮', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001987', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1366, 10, 43, '201800002279', '张磊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002279', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1367, 10, 43, '201800001972', '罗云婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001972', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1368, 10, 43, '201800002275', '高县芳', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002275', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1369, 10, 43, '201800001974', '张澳英', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001974', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1370, 10, 43, '201800001980', '黄雁田', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001980', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1371, 10, 43, '201800002273', '熊梦婷', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002273', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1372, 10, 43, '201800001963', '何新龙', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001963', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1373, 10, 43, '201800001989', '卢芊龙', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001989', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1374, 10, 43, '201800001981', '李梦英', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001981', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1375, 10, 43, '201800002472', '皮幽雅', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002472', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1376, 10, 43, '201800002468', '叶丰', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002468', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1377, 10, 43, '201800002276', '邓璐', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002276', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1378, 10, 43, '201800001970', '李琛', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001970', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1379, 10, 43, '201800002549', '方丹丹', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002549', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1380, 10, 43, '201800002415', '黄海', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800002415', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1381, 10, 43, '201800001995', '吴大冬', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '', '201800001995', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1382, 10, 43, '--', '王代芬', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '23', '23', '23', '共青团员', '', '23', '', '', '信息学院', '软件技术(18级)', '三年', '', '专科', NULL, '自考生', '王代芬', '123', 2, '自考', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1383, 10, 44, '201800001026', '杨凯', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001026', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1384, 10, 44, '201800001099', '黄俊', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001099', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1385, 10, 44, '201800001031', '梁帅', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001031', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1386, 10, 44, '201800001061', '唐忠权', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001061', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1387, 10, 44, '201800001059', '陈露', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001059', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1388, 10, 44, '201800000001', '余思民', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800000001', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1389, 10, 44, '201800001076', '丁志伟', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001076', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1390, 10, 44, '201800001160', '余贤鹏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001160', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1391, 10, 44, '201800001162', '赵骏', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001162', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1392, 10, 44, '201800001190', '吴子衍', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001190', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1393, 10, 44, '201800001175', '王经华', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001175', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1394, 10, 44, '201800002455', '祝海涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800002455', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1395, 10, 44, '201800001261', '李万成', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001261', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1396, 10, 44, '201800001236', '古金辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001236', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1397, 10, 44, '201800001263', '沈特林', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001263', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1398, 10, 44, '201800001271', '唐树玲', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001271', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1399, 10, 44, '201800001277', '朱地发', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001277', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1400, 10, 44, '201800001291', '杨洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001291', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1401, 10, 44, '201800001498', '张铭峰', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001498', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1402, 10, 44, '201800001379', '倪子阳', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001379', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1403, 10, 44, '201800001414', '江子怡', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001414', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1404, 10, 44, '201800001421', '李建', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001421', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1405, 10, 44, '201800001519', '胡淘瑜', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001519', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1406, 10, 44, '201800001663', '廖伟东', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001663', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1407, 10, 44, '201800001575', '叶赐濠', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001575', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1408, 10, 44, '201800001610', '温文鑫', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001610', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1409, 10, 44, '201800000110', '汪锦超', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800000110', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1410, 10, 44, '201800001706', '黄云飞', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001706', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1411, 10, 44, '201800001857', ' 李宇航', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001857', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1412, 10, 44, '201800001874', '彭涛', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001874', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1413, 10, 44, '201800001890', '于佳豪', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001890', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1414, 10, 44, '201800001919', '叶腾洋', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001919', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1415, 10, 44, '201800001938', '王坤武', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001938', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1416, 10, 44, '201800001958', '郑礼安', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001958', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1417, 10, 44, '201800001957', '艾恩辉', '男', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001957', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1418, 10, 44, '201800001308', '严淑贞', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001308', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1419, 10, 44, '201800001078', '孙卓婧', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001078', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1420, 10, 44, '201800001734', '许诗逸', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001734', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1421, 10, 44, '201800001786', '张宇', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800001786', '123', 2, '正常', '否', '否', '否', NULL);
INSERT INTO `student_info` VALUES (1422, 10, 44, '201800002650', '詹逸静', '女', '', '', '', '良好', '江西', '', '未婚', '', '', '', '', '', '共青团员', '', '', '', '', '信息学院', '计算机应用技术', '三年', '', '专科', NULL, '', '201800002650', '123', 2, '正常', '否', '否', '否', NULL);

-- ----------------------------
-- Table structure for student_learn_experience
-- ----------------------------
DROP TABLE IF EXISTS `student_learn_experience`;
CREATE TABLE `student_learn_experience`  (
  `student_learn_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `learn_allyears` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '起讫年月',
  `learn_school` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学校或机关名称',
  `learn_position` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '学习或任职',
  `reg_time` datetime(0) NULL DEFAULT NULL COMMENT '登记时间',
  `learn_note` varchar(2000) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`student_learn_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  INDEX `student_learn_experience_ibfk_1`(`student_id`) USING BTREE,
  CONSTRAINT `student_learn_experience_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_learn_experience
-- ----------------------------
INSERT INTO `student_learn_experience` VALUES (1, 20, 10, '2017年4月11日-2017年11月8日', '江西先锋软件学院', '无', '2018-05-08 00:00:00', '');

-- ----------------------------
-- Table structure for student_payment
-- ----------------------------
DROP TABLE IF EXISTS `student_payment`;
CREATE TABLE `student_payment`  (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `payment_situation` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payment_method` int(11) NULL DEFAULT NULL,
  `payment_time` datetime(0) NULL DEFAULT NULL,
  `discount_amount` double NULL DEFAULT NULL,
  `should_amount` double NULL DEFAULT NULL,
  `real_amount` double NULL DEFAULT NULL,
  `debt_amount` double NULL DEFAULT NULL,
  `payment_remark` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE,
  INDEX `FK_Reference_23`(`student_id`) USING BTREE,
  INDEX `FK_Reference_24`(`staff_id`) USING BTREE,
  CONSTRAINT `student_payment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_payment
-- ----------------------------
INSERT INTO `student_payment` VALUES (1, 20, 10, '2017-2018学年', 25, '2017-09-05 00:00:00', 0, 50000, 50000, 3000, '家里兄弟多，都要读书，开销大。');

-- ----------------------------
-- Table structure for student_practice_skills
-- ----------------------------
DROP TABLE IF EXISTS `student_practice_skills`;
CREATE TABLE `student_practice_skills`  (
  `student_practice_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `practice_start` datetime(0) NULL DEFAULT NULL,
  `practice_end` datetime(0) NULL DEFAULT NULL,
  `practice_address` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `practice_content` varchar(2000) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `practice_score` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `reg_time` datetime(0) NULL DEFAULT NULL,
  `practice_note` varchar(2000) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_practice_id`) USING BTREE,
  INDEX `student_id`(`student_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE,
  CONSTRAINT `student_practice_skills_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for student_write_grade
-- ----------------------------
DROP TABLE IF EXISTS `student_write_grade`;
CREATE TABLE `student_write_grade`  (
  `write_grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `staff_id` int(11) NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `discipline_id` int(11) NULL DEFAULT NULL,
  `write_grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `write_grade_time` datetime(0) NULL DEFAULT NULL,
  `write_grade_note` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `write_grade_xuenian` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `write_grade_xueqi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  `write_grade_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试类型（考试、考查、报考）',
  PRIMARY KEY (`write_grade_id`) USING BTREE,
  INDEX `FK_Reference_14`(`student_id`) USING BTREE,
  INDEX `FK_Reference_15`(`staff_id`) USING BTREE,
  INDEX `discipline_id`(`discipline_id`) USING BTREE,
  INDEX `class_id`(`class_id`) USING BTREE,
  CONSTRAINT `student_write_grade_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_write_grade_ibfk_4` FOREIGN KEY (`discipline_id`) REFERENCES `discipline_info` (`discipline_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_write_grade_ibfk_5` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_write_grade
-- ----------------------------
INSERT INTO `student_write_grade` VALUES (1, 20, 10, 8, 9, '89', '2019-05-02 00:00:00', '', '2017-2018学年', '第一学期', '考试');
INSERT INTO `student_write_grade` VALUES (2, 20, 10, 8, 11, '78', '2019-05-10 00:00:00', 'we', '2017-2018学年', '第一学期', '考试');

-- ----------------------------
-- Table structure for syllabus_info
-- ----------------------------
DROP TABLE IF EXISTS `syllabus_info`;
CREATE TABLE `syllabus_info`  (
  `syllabus_id` int(11) NOT NULL AUTO_INCREMENT,
  `syllabus_yi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_er` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_san` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_si` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_wu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_liu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_qi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_uesd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syllabus_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`syllabus_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syllabus_info
-- ----------------------------
INSERT INTO `syllabus_info` VALUES (1, '上午1-4节(MySQL), 下午5-7节(大学英语)', '上午1-4节(Java), 下午5-7节(Java)', '上午1-4节(Java)', '上午1-4节(PHP), 下午5-7节(Java)', '上午1-4节(Java), 下午5-7节(Java)', '', '', '1', '17级Java班课表');
INSERT INTO `syllabus_info` VALUES (4, '上午1-4节(Java), 下午5-7节(Java)', '上午1-4节(测试基础), 下午5-7节(Mysql)', '上午1-4节(测试基础), 下午5-7节(测试基础)', '上午1-4节(Java), 下午5-7节(Java)', '上午1-4节(Java), 下午5-7节(Java)', '', '', '1', '17测试1班课表');
INSERT INTO `syllabus_info` VALUES (7, '-', '-', '-', '-', '-', '', '', '1', '17测试2班课表');
INSERT INTO `syllabus_info` VALUES (8, '-', '-', '-', '-', '-', '', '', '1', '17测试3班课表');
INSERT INTO `syllabus_info` VALUES (9, '-', '-', '--', '-', '-', '', '', '1', '17测试4班课表');
INSERT INTO `syllabus_info` VALUES (10, '', '', '', '', '', '', '', '1', '17UI(1)班课表');
INSERT INTO `syllabus_info` VALUES (11, '', '', '', '', '', '', '', '1', '17UI(2)班课表');
INSERT INTO `syllabus_info` VALUES (12, '', '', '', '', '', '', '', '1', '17UI(3)班课表');
INSERT INTO `syllabus_info` VALUES (13, '', '', '', '', '', '', '', '1', '17UI(4)班课表');
INSERT INTO `syllabus_info` VALUES (14, '', '', '', '', '', '', '', '1', '17前端开发1班课表');
INSERT INTO `syllabus_info` VALUES (15, '', '', '', '', '', '', '', '1', '17前端开发2班课表');
INSERT INTO `syllabus_info` VALUES (16, '', '', '', '', '', '', '', '1', '17运维1班课表');
INSERT INTO `syllabus_info` VALUES (17, '', '', '', '', '', '', '', '1', '17运维2班课表');
INSERT INTO `syllabus_info` VALUES (18, '', '', '', '', '', '', '', '1', '17电商1班课表');
INSERT INTO `syllabus_info` VALUES (19, '', '', '', '', '', '', '', '1', '17电商2班课表');
INSERT INTO `syllabus_info` VALUES (20, '', '', '', '', '', '', '', '0', '17VR班课表');
INSERT INTO `syllabus_info` VALUES (21, '', '', '', '', '', '', '', '0', '180301班');
INSERT INTO `syllabus_info` VALUES (22, '', '', '', '', '', '', '', '0', '180302班');
INSERT INTO `syllabus_info` VALUES (23, '', '', '', '', '', '', '', '0', '180303班');
INSERT INTO `syllabus_info` VALUES (24, '', '', '', '', '', '', '', '0', '180304班');
INSERT INTO `syllabus_info` VALUES (25, '', '', '', '', '', '', '', '0', '180305班');
INSERT INTO `syllabus_info` VALUES (26, '', '', '', '', '', '', '', '0', '180306班');
INSERT INTO `syllabus_info` VALUES (27, '', '', '', '', '', '', '', '0', '180307班');
INSERT INTO `syllabus_info` VALUES (28, '', '', '', '', '', '', '', '0', '180308班');
INSERT INTO `syllabus_info` VALUES (29, '', '', '', '', '', '', '', '0', '180309班');
INSERT INTO `syllabus_info` VALUES (30, '', '', '', '', '', '', '', '0', '180310班');
INSERT INTO `syllabus_info` VALUES (31, '', '', '', '', '', '', '', '0', '180311班');
INSERT INTO `syllabus_info` VALUES (32, '', '', '', '', '', '', '', '0', '180312班');
INSERT INTO `syllabus_info` VALUES (33, '', '', '', '', '', '', '', '0', '180313班');
INSERT INTO `syllabus_info` VALUES (34, '', '', '', '', '', '', '', '0', '180314班');
INSERT INTO `syllabus_info` VALUES (35, '', '', '', '', '', '', '', '0', '180315班');
INSERT INTO `syllabus_info` VALUES (36, '', '', '', '', '', '', '', '0', '17电商3班课表');
INSERT INTO `syllabus_info` VALUES (37, '', '', '', '', '', '', '', '0', '17电商4班课表');
INSERT INTO `syllabus_info` VALUES (38, '', '', '', '', '', '', '', '1', '17电商3班课表');
INSERT INTO `syllabus_info` VALUES (39, '', '', '', '', '', '', '', '1', '17电商4班课表');
INSERT INTO `syllabus_info` VALUES (40, '', '', '', '', '', '', '', '1', '17VR班课表');
INSERT INTO `syllabus_info` VALUES (41, '', '', '', '', '', '', '', '1', '180301班课表');
INSERT INTO `syllabus_info` VALUES (42, '', '', '', '', '', '', '', '1', '180302班课表');
INSERT INTO `syllabus_info` VALUES (43, '', '', '', '', '', '', '', '1', '180303班课表');
INSERT INTO `syllabus_info` VALUES (44, '', '', '', '', '', '', '', '1', '180304班课表');
INSERT INTO `syllabus_info` VALUES (45, '', '', '', '', '', '', '', '1', '180305班课表');
INSERT INTO `syllabus_info` VALUES (46, '', '', '', '', '', '', '', '1', '180306班课表');
INSERT INTO `syllabus_info` VALUES (47, '', '', '', '', '', '', '', '1', '180307班课表');
INSERT INTO `syllabus_info` VALUES (48, '', '', '', '', '', '', '', '1', '180308班课表');
INSERT INTO `syllabus_info` VALUES (49, '', '', '', '', '', '', '', '1', '180309班课表');
INSERT INTO `syllabus_info` VALUES (50, '', '', '', '', '', '', '', '1', '180310班课表');
INSERT INTO `syllabus_info` VALUES (51, '', '', '', '', '', '', '', '1', '180311班课表');
INSERT INTO `syllabus_info` VALUES (52, '', '', '', '', '', '', '', '1', '180312班课表');
INSERT INTO `syllabus_info` VALUES (53, '', '', '', '', '', '', '', '1', '180313班课表');
INSERT INTO `syllabus_info` VALUES (54, '', '', '', '', '', '', '', '1', '180314班课表');
INSERT INTO `syllabus_info` VALUES (55, '', '', '', '', '', '', '', '1', '180315班课表');

-- ----------------------------
-- Table structure for template_info
-- ----------------------------
DROP TABLE IF EXISTS `template_info`;
CREATE TABLE `template_info`  (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`template_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template_info
-- ----------------------------
INSERT INTO `template_info` VALUES (1, '生日提醒', '生日快乐', '短信');
INSERT INTO `template_info` VALUES (3, '春节', '春节要送礼', '短信');
INSERT INTO `template_info` VALUES (4, '国庆节送礼', '国庆节', '邮件');

-- ----------------------------
-- Table structure for track_record_info
-- ----------------------------
DROP TABLE IF EXISTS `track_record_info`;
CREATE TABLE `track_record_info`  (
  `track_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `track_record_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `track_record_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `track_record_time` datetime(0) NULL DEFAULT NULL,
  `enrollment` int(11) NULL DEFAULT NULL,
  `next_record_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`track_record_id`) USING BTREE,
  INDEX `FK_Reference_9`(`student_id`) USING BTREE,
  CONSTRAINT `track_record_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`student_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for upload_file
-- ----------------------------
DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NULL DEFAULT NULL,
  `file_title` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `file_name` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `file_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`file_id`) USING BTREE,
  INDEX `staff_id`(`staff_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upload_file
-- ----------------------------
INSERT INTO `upload_file` VALUES (23, 10, '关于2018年度全国计算机技术与软件技术专业资格（水平）考试计划与工作安排的通知', '关于2018年度全国计算机技术与软件技术专业资格（水平）考试计划与工作安排的通知.doc', '2019-03-16 16:30:09');
INSERT INTO `upload_file` VALUES (25, 10, '江西先锋软件职业技术学院2018-2019学年校历', '江西先锋软件职业技术学院2018-2019学年校历.xls', '2019-03-16 16:30:21');
INSERT INTO `upload_file` VALUES (26, 10, '江西先锋软件职业技术学院2018年校级科研课题申请书', '江西先锋软件职业技术学院2018年校级科研课题申请书.doc', '2019-03-16 16:30:28');
INSERT INTO `upload_file` VALUES (27, 10, '江西先锋软件职业技术学院科研课题选题', '江西先锋软件职业技术学院科研课题选题.doc', '2019-03-16 16:30:38');
INSERT INTO `upload_file` VALUES (28, 10, '信息分院17级分班考勤登记表', '信息分院17级分班考勤登记表.xls', '2019-03-16 16:30:45');
INSERT INTO `upload_file` VALUES (29, 10, '信息分院17届分班周测成绩表', '信息分院17届分班周测成绩表.xlsx', '2019-03-16 16:30:51');
INSERT INTO `upload_file` VALUES (30, 10, '信息分院教师2018年暑期实训值班安排表', '信息分院教师2018年暑期实训值班安排表.xls', '2019-03-16 16:31:10');
INSERT INTO `upload_file` VALUES (31, 10, '17Java班计算机等级通过情况汇总', '17Java班计算机等级通过情况汇总.xls', '2019-05-21 10:21:07');
INSERT INTO `upload_file` VALUES (32, 10, '大大大撒', '17Java班计算机等级通过情况汇总.xls', '2019-05-21 11:30:58');

SET FOREIGN_KEY_CHECKS = 1;
