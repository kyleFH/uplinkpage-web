/*
 Navicat Premium Dump SQL

 Source Server         : test-sql-qx
 Source Server Type    : MySQL
 Source Server Version : 90100 (9.1.0)
 Source Host           : localhost:3306
 Source Schema         : my_database

 Target Server Type    : MySQL
 Target Server Version : 90100 (9.1.0)
 File Encoding         : 65001

 Date: 14/02/2025 22:56:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for qbreson_result
-- ----------------------------
DROP TABLE IF EXISTS `qbreson_result`;
CREATE TABLE `qbreson_result` (
  `d_name_id` int DEFAULT NULL,
  `IIIII` varchar(255) DEFAULT NULL,
  `qb_time` varchar(255) DEFAULT NULL,
  `qb_num` int DEFAULT NULL,
  `qb_reason` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of qbreson_result
-- ----------------------------
BEGIN;
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54523', '16日16时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54523', '21日19时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54523', '27日17时', 1, '194服务器传输软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54619', '10日03时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54619', '10日21时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54619', '16日17时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54619', '22日08时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54619', '27日17时', 1, '194服务器传输软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, '54622', '27日02时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '01日15时', 1, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '02日17时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '03日19时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '07日04时至05时', 2, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '07日16时', 1, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '09日14时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '11日21时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '13日05时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '13日07时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '16日16时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '18日17时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '21日19时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '23日06时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '24日00时', 1, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2312', '27日17时', 1, '194服务器传输软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2467', '01日00时至31日23时', 744, '地震局机房搬迁');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2468', '15日10时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2468', '27日17时', 1, '194服务器传输软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2468', '29日03时', 1, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2468', '30日23时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2703', '05日23时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2703', '13日04时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2703', '22日13时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2703', '27日07时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (5, 'A2703', '27日17时', 1, '194服务器传输软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54428', '30日20时至22时', 3, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54517', '24日04时至06时', 3, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54517', '30日20时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54523', '30日20时至21时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54525', '21日09时至14时', 6, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54619', '21日09时至10时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54619', '27日17时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54623', '09日01时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54623', '22日17时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (8, '54645', '21日09时至11时', 3, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54428', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54517', '21日07时至08时', 2, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54523', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54525', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54526', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54527', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54528', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54529', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54619', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54622', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (11, '54623', '21日08时', 1, '一体化平台故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3661', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3662', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3663', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3664', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3665', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3666', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3667', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3668', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3669', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (13, 'A3670', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54517', '24日04时至06时', 3, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54517', '30日20时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54525', '21日09时至14时', 6, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54529', '30日20时至23时', 4, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54529', '31日00时至01时', 2, '原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54619', '21日09时至10时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54619', '27日17时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54623', '22日17时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54623', '30日20时至23时', 4, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54623', '31日00时至01时', 2, '原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (17, '54645', '21日09时至11时', 3, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (40, '54517', '05日02时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (40, '54517', '11日02时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '19日23时', 4, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '20日07时至08时', 12, '该站停电');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '21日07时', 5, '该站设备故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '21日08时', 8, 'FTP连接不成功\r\n');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '21日08时至13时', 64, 'FTP连接不成功');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '21日15时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '21日17时', 5, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '25日06时', 3, '该站停电');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54523', '25日07时', 8, '该站周维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '15日14时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '18日02时', 1, '原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '18日07时', 1, '通讯网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '19日19时', 2, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '19日23时', 4, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '20日11时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '21日17时', 5, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '30日01时', 4, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '30日20时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54525', '31日05时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '05日20时至06日01时', 74, '该站信号故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '06日02时', 12, '该站传输主机故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '08日20时', 1, '原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '10日01时', 1, '该站设备故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '19日23时', 6, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '20日01时至03时', 29, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '21日17时', 6, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '22日02时', 8, '该站空调维修导致断电');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '23日05时至06时', 5, '该站设备维修');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '27日16时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54527', '30日19时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '08日06时至08时', 23, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '10日07时至09时', 22, '该站设备维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '11日07时至08时', 6, '该站雷达停机检修');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '18日07时', 1, '通讯网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '19日20时', 2, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '19日22时', 1, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '19日23时', 4, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '21日17时', 5, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '27日17时', 3, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '27日22时至23时', 4, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '28日02时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (41, '54619', '30日20时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '19日23时', 8, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '20日07时至08时', 18, '该站停电');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '21日07时', 8, '该站设备故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '21日08时', 16, 'FTP连接不成功\r\n');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '21日09时至13时', 94, 'FTP连接不成功');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '21日15时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '21日17时', 8, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '25日06时', 4, '该站停电');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54523', '25日07时', 14, '该站周维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '15日14时', 2, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '18日02时', 2, '原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '18日07时', 2, '通讯网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '19日19时', 2, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '19日23时', 8, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '20日11时', 2, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '21日17时', 8, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '30日01时', 6, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '30日20时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54525', '31日05时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '05日20时至06日01时', 116, '该站信号故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '06日02时', 18, '该站传输主机故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '08日20时', 2, '原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '10日01时', 2, '该站设备故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '19日23时', 10, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '20日01时至03时', 44, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '21日17时', 10, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '22日02时', 14, '该站空调维修导致断电');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '23日05时至06时', 6, '该站设备维修');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '27日16时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54527', '30日19时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '08日06时至08时', 34, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '10日07时至09时', 32, '该站设备维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '11日07时至08时', 8, '该站雷达停机检修');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '18日07时', 2, '通讯网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '19日20时', 2, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '19日22时', 2, '该站通讯信号不稳定');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '19日23时', 8, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '21日17时', 8, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '27日17时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '27日22时至23时', 6, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '28日02时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (44, '54619', '30日20时', 2, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (56, '54517', '10日01时', 1, '该站设备故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (56, '54517', '19日23时', 3, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (56, '54517', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (56, '54517', '21日17时', 4, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (56, '54517', '30日19时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (59, 'MSP3', '05日07时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (59, 'MSP3', '11日07时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (59, 'MSP3', '24日07时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (59, 'MSP3', '29日07时', 1, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '05日07时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '08日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '11日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '11日06时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '15日06时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '17日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '17日07时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '26日04时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '29日02时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9025', '29日04时至06时', 3, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '02日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '02日07时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '05日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '05日07时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '08日02时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '08日05时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '11日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '14日04时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '17日02时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '17日06时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '21日07时', 6, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '23日07时', 4, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '24日02时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '24日06时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '25日06时', 4, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '26日03时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '30日07时', 9, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (97, 'Z9220', '31日06时', 2, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (110, 'Z9025', '25日06时', 17, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (110, 'Z9220', '11日02时', 1, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (110, 'Z9220', '23日07时', 48, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (110, 'Z9220', '25日06时', 84, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (110, 'Z9220', '30日07时', 238, '该站月维护');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (110, 'Z9220', '31日06时', 56, '');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54525', '26日06时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54528', '16日10时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54529', '21日09时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54529', '29日08时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54623', '20日20时至23时', 4, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54623', '21日00时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (139, '54623', '22日16时至18时', 3, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54428', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54523', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54525', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54525', '26日06时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54526', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54527', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54528', '16日10时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54528', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54529', '21日09时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54529', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54529', '29日08时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54530', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54619', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54622', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54623', '20日20时至23时', 4, '该站未及时上传，台站反馈原因不明');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54623', '21日00时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54623', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54623', '22日16时至18时', 3, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54645', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (143, '54646', '21日18时', 1, 'CTS节点掉了');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54428', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54517', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54523', '09日02时', 1, '观测场跳闸');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54523', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54525', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54525', '26日06时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54526', '09日07时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54526', '13日13时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54526', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54527', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54527', '23日10时', 1, '该站延时上传');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54527', '26日00时', 1, '该站发报软件故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54528', '16日10时', 1, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54528', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54529', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54529', '27日02时', 1, '该站设备故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54530', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54619', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54622', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54623', '20日00时', 1, '市局CTS分发故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54623', '22日16时至18时', 3, '该站网络故障');
INSERT INTO `qbreson_result` (`d_name_id`, `IIIII`, `qb_time`, `qb_num`, `qb_reason`) VALUES (144, '54645', '20日00时', 1, '市局CTS分发故障');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
