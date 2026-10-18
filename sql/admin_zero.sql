/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80046 (8.0.46)
 Source Host           : 127.0.0.1:3306
 Source Schema         : admin_zero

 Target Server Type    : MySQL
 Target Server Version : 80046 (8.0.46)
 File Encoding         : 65001

 Date: 18/10/2026 20:57:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rules
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rules`;
CREATE TABLE `casbin_rules`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ptype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v0` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v2` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v3` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v4` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `v5` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `casbinrule_ptype_v0_v1_v2_v3_v4_v5`(`ptype` ASC, `v0` ASC, `v1` ASC, `v2` ASC, `v3` ASC, `v4` ASC, `v5` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 249 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rules
-- ----------------------------
INSERT INTO `casbin_rules` VALUES (152, 'p', '001', '/fms-api/cloud_file', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (148, 'p', '001', '/fms-api/cloud_file/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (150, 'p', '001', '/fms-api/cloud_file/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (153, 'p', '001', '/fms-api/cloud_file/delete_by_url', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (151, 'p', '001', '/fms-api/cloud_file/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (149, 'p', '001', '/fms-api/cloud_file/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (154, 'p', '001', '/fms-api/cloud_file/upload', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (159, 'p', '001', '/fms-api/cloud_file_tag', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (155, 'p', '001', '/fms-api/cloud_file_tag/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (157, 'p', '001', '/fms-api/cloud_file_tag/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (158, 'p', '001', '/fms-api/cloud_file_tag/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (156, 'p', '001', '/fms-api/cloud_file_tag/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (134, 'p', '001', '/fms-api/file/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (136, 'p', '001', '/fms-api/file/delete_by_url', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (137, 'p', '001', '/fms-api/file/download/:id', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (132, 'p', '001', '/fms-api/file/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (135, 'p', '001', '/fms-api/file/status', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (133, 'p', '001', '/fms-api/file/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (142, 'p', '001', '/fms-api/file_tag', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (138, 'p', '001', '/fms-api/file_tag/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (140, 'p', '001', '/fms-api/file_tag/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (141, 'p', '001', '/fms-api/file_tag/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (139, 'p', '001', '/fms-api/file_tag/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (130, 'p', '001', '/fms-api/init/database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (147, 'p', '001', '/fms-api/storage_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (143, 'p', '001', '/fms-api/storage_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (145, 'p', '001', '/fms-api/storage_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (146, 'p', '001', '/fms-api/storage_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (144, 'p', '001', '/fms-api/storage_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (131, 'p', '001', '/fms-api/upload', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (91, 'p', '001', '/mms-api/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (92, 'p', '001', '/mms-api/captcha/email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (93, 'p', '001', '/mms-api/captcha/sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (90, 'p', '001', '/mms-api/init/database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (98, 'p', '001', '/mms-api/member', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (101, 'p', '001', '/mms-api/member/bind/wechat', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (94, 'p', '001', '/mms-api/member/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (96, 'p', '001', '/mms-api/member/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (97, 'p', '001', '/mms-api/member/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (102, 'p', '001', '/mms-api/member/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (103, 'p', '001', '/mms-api/member/login_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (104, 'p', '001', '/mms-api/member/login_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (100, 'p', '001', '/mms-api/member/logout', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (99, 'p', '001', '/mms-api/member/profile', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (105, 'p', '001', '/mms-api/member/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (106, 'p', '001', '/mms-api/member/register_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (107, 'p', '001', '/mms-api/member/register_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (108, 'p', '001', '/mms-api/member/reset_password_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (109, 'p', '001', '/mms-api/member/reset_password_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (95, 'p', '001', '/mms-api/member/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (110, 'p', '001', '/mms-api/member/vip', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (115, 'p', '001', '/mms-api/member_rank', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (111, 'p', '001', '/mms-api/member_rank/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (113, 'p', '001', '/mms-api/member_rank/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (114, 'p', '001', '/mms-api/member_rank/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (112, 'p', '001', '/mms-api/member_rank/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (116, 'p', '001', '/mms-api/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (117, 'p', '001', '/mms-api/oauth/login/callback', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (118, 'p', '001', '/mms-api/oauth/login/wechat/mini_program', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (123, 'p', '001', '/mms-api/oauth_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (119, 'p', '001', '/mms-api/oauth_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (121, 'p', '001', '/mms-api/oauth_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (122, 'p', '001', '/mms-api/oauth_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (120, 'p', '001', '/mms-api/oauth_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (128, 'p', '001', '/mms-api/token', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (124, 'p', '001', '/mms-api/token/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (126, 'p', '001', '/mms-api/token/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (127, 'p', '001', '/mms-api/token/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (129, 'p', '001', '/mms-api/token/logout', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (125, 'p', '001', '/mms-api/token/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (193, 'p', '001', '/pay-api/demo_order/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (194, 'p', '001', '/pay-api/demo_order/get', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (195, 'p', '001', '/pay-api/demo_order/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (197, 'p', '001', '/pay-api/demo_order/refund', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (196, 'p', '001', '/pay-api/demo_order/update_paid', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (198, 'p', '001', '/pay-api/demo_order/update_refund_paid', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (192, 'p', '001', '/pay-api/init/database', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (199, 'p', '001', '/pay-api/order/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (202, 'p', '001', '/pay-api/order/extension/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (203, 'p', '001', '/pay-api/order/extension/get', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (200, 'p', '001', '/pay-api/order/get', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (201, 'p', '001', '/pay-api/order/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (204, 'p', '001', '/pay-api/order/notify', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (205, 'p', '001', '/pay-api/order/submit', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (206, 'p', '001', '/pay-api/refund/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (208, 'p', '001', '/pay-api/refund/get', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (207, 'p', '001', '/pay-api/refund/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (209, 'p', '001', '/pay-api/refund/notify', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (36, 'p', '001', '/sys-api/api', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (32, 'p', '001', '/sys-api/api/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (34, 'p', '001', '/sys-api/api/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (35, 'p', '001', '/sys-api/api/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (33, 'p', '001', '/sys-api/api/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (28, 'p', '001', '/sys-api/authority/api/create_or_update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (29, 'p', '001', '/sys-api/authority/api/role', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (30, 'p', '001', '/sys-api/authority/menu/create_or_update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (31, 'p', '001', '/sys-api/authority/menu/role', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (27, 'p', '001', '/sys-api/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (79, 'p', '001', '/sys-api/captcha/email', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (80, 'p', '001', '/sys-api/captcha/sms', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (74, 'p', '001', '/sys-api/configuration', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (70, 'p', '001', '/sys-api/configuration/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (72, 'p', '001', '/sys-api/configuration/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (73, 'p', '001', '/sys-api/configuration/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (88, 'p', '001', '/sys-api/configuration/system/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (71, 'p', '001', '/sys-api/configuration/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (76, 'p', '001', '/sys-api/core/init/database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (77, 'p', '001', '/sys-api/core/init/job_database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (78, 'p', '001', '/sys-api/core/init/mcms_database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (75, 'p', '001', '/sys-api/core/ping', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (64, 'p', '001', '/sys-api/department', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (60, 'p', '001', '/sys-api/department/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (62, 'p', '001', '/sys-api/department/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (63, 'p', '001', '/sys-api/department/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (61, 'p', '001', '/sys-api/department/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (47, 'p', '001', '/sys-api/dict/:name', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (89, 'p', '001', '/sys-api/dict/public/:name', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (37, 'p', '001', '/sys-api/dictionary', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (38, 'p', '001', '/sys-api/dictionary/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (40, 'p', '001', '/sys-api/dictionary/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (46, 'p', '001', '/sys-api/dictionary/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (39, 'p', '001', '/sys-api/dictionary/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (42, 'p', '001', '/sys-api/dictionary_detail', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (43, 'p', '001', '/sys-api/dictionary_detail/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (41, 'p', '001', '/sys-api/dictionary_detail/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (45, 'p', '001', '/sys-api/dictionary_detail/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (44, 'p', '001', '/sys-api/dictionary_detail/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (170, 'p', '001', '/sys-api/email/send', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (171, 'p', '001', '/sys-api/email_log', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (172, 'p', '001', '/sys-api/email_log/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (174, 'p', '001', '/sys-api/email_log/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (175, 'p', '001', '/sys-api/email_log/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (173, 'p', '001', '/sys-api/email_log/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (176, 'p', '001', '/sys-api/email_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (177, 'p', '001', '/sys-api/email_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (179, 'p', '001', '/sys-api/email_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (180, 'p', '001', '/sys-api/email_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (178, 'p', '001', '/sys-api/email_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (26, 'p', '001', '/sys-api/menu', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (21, 'p', '001', '/sys-api/menu/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (23, 'p', '001', '/sys-api/menu/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (24, 'p', '001', '/sys-api/menu/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (25, 'p', '001', '/sys-api/menu/role/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (22, 'p', '001', '/sys-api/menu/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (52, 'p', '001', '/sys-api/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (87, 'p', '001', '/sys-api/oauth/login/callback', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (53, 'p', '001', '/sys-api/oauth_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (48, 'p', '001', '/sys-api/oauth_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (50, 'p', '001', '/sys-api/oauth_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (51, 'p', '001', '/sys-api/oauth_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (49, 'p', '001', '/sys-api/oauth_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (69, 'p', '001', '/sys-api/position', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (65, 'p', '001', '/sys-api/position/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (67, 'p', '001', '/sys-api/position/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (68, 'p', '001', '/sys-api/position/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (66, 'p', '001', '/sys-api/position/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (20, 'p', '001', '/sys-api/role', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (16, 'p', '001', '/sys-api/role/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (18, 'p', '001', '/sys-api/role/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (19, 'p', '001', '/sys-api/role/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (17, 'p', '001', '/sys-api/role/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (181, 'p', '001', '/sys-api/sms/send', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (182, 'p', '001', '/sys-api/sms_log', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (183, 'p', '001', '/sys-api/sms_log/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (185, 'p', '001', '/sys-api/sms_log/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (186, 'p', '001', '/sys-api/sms_log/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (184, 'p', '001', '/sys-api/sms_log/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (187, 'p', '001', '/sys-api/sms_provider', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (188, 'p', '001', '/sys-api/sms_provider/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (190, 'p', '001', '/sys-api/sms_provider/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (191, 'p', '001', '/sys-api/sms_provider/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (189, 'p', '001', '/sys-api/sms_provider/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (164, 'p', '001', '/sys-api/task', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (160, 'p', '001', '/sys-api/task/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (162, 'p', '001', '/sys-api/task/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (163, 'p', '001', '/sys-api/task/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (161, 'p', '001', '/sys-api/task/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (169, 'p', '001', '/sys-api/task_log', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (165, 'p', '001', '/sys-api/task_log/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (167, 'p', '001', '/sys-api/task_log/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (168, 'p', '001', '/sys-api/task_log/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (166, 'p', '001', '/sys-api/task_log/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (59, 'p', '001', '/sys-api/token', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (54, 'p', '001', '/sys-api/token/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (56, 'p', '001', '/sys-api/token/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (57, 'p', '001', '/sys-api/token/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (58, 'p', '001', '/sys-api/token/logout', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (55, 'p', '001', '/sys-api/token/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (13, 'p', '001', '/sys-api/user', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (15, 'p', '001', '/sys-api/user/access_token', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (5, 'p', '001', '/sys-api/user/change_password', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (3, 'p', '001', '/sys-api/user/create', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (8, 'p', '001', '/sys-api/user/delete', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (6, 'p', '001', '/sys-api/user/info', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (7, 'p', '001', '/sys-api/user/list', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (1, 'p', '001', '/sys-api/user/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (81, 'p', '001', '/sys-api/user/login_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (82, 'p', '001', '/sys-api/user/login_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (12, 'p', '001', '/sys-api/user/logout', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (9, 'p', '001', '/sys-api/user/perm', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (10, 'p', '001', '/sys-api/user/profile', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (11, 'p', '001', '/sys-api/user/profile', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (14, 'p', '001', '/sys-api/user/refresh_token', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (2, 'p', '001', '/sys-api/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (83, 'p', '001', '/sys-api/user/register_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (84, 'p', '001', '/sys-api/user/register_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (85, 'p', '001', '/sys-api/user/reset_password_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (86, 'p', '001', '/sys-api/user/reset_password_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (4, 'p', '001', '/sys-api/user/update', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (235, 'p', '002', '/mms-api/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (236, 'p', '002', '/mms-api/captcha/email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (237, 'p', '002', '/mms-api/captcha/sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (234, 'p', '002', '/mms-api/init/database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (238, 'p', '002', '/mms-api/member/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (239, 'p', '002', '/mms-api/member/login_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (240, 'p', '002', '/mms-api/member/login_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (241, 'p', '002', '/mms-api/member/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (242, 'p', '002', '/mms-api/member/register_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (243, 'p', '002', '/mms-api/member/register_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (244, 'p', '002', '/mms-api/member/reset_password_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (245, 'p', '002', '/mms-api/member/reset_password_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (246, 'p', '002', '/mms-api/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (247, 'p', '002', '/mms-api/oauth/login/callback', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (248, 'p', '002', '/mms-api/oauth/login/wechat/mini_program', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (219, 'p', '002', '/sys-api/captcha', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (224, 'p', '002', '/sys-api/captcha/email', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (225, 'p', '002', '/sys-api/captcha/sms', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (221, 'p', '002', '/sys-api/core/init/database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (222, 'p', '002', '/sys-api/core/init/job_database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (223, 'p', '002', '/sys-api/core/init/mcms_database', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (233, 'p', '002', '/sys-api/dict/public/:name', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (218, 'p', '002', '/sys-api/menu/role/list', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (220, 'p', '002', '/sys-api/oauth/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (232, 'p', '002', '/sys-api/oauth/login/callback', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (212, 'p', '002', '/sys-api/user/change_password', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (213, 'p', '002', '/sys-api/user/info', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (210, 'p', '002', '/sys-api/user/login', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (226, 'p', '002', '/sys-api/user/login_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (227, 'p', '002', '/sys-api/user/login_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (217, 'p', '002', '/sys-api/user/logout', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (214, 'p', '002', '/sys-api/user/perm', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (215, 'p', '002', '/sys-api/user/profile', 'GET', '', '', '');
INSERT INTO `casbin_rules` VALUES (216, 'p', '002', '/sys-api/user/profile', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (211, 'p', '002', '/sys-api/user/register', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (228, 'p', '002', '/sys-api/user/register_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (229, 'p', '002', '/sys-api/user/register_by_sms', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (230, 'p', '002', '/sys-api/user/reset_password_by_email', 'POST', '', '', '');
INSERT INTO `casbin_rules` VALUES (231, 'p', '002', '/sys-api/user/reset_password_by_sms', 'POST', '', '', '');

-- ----------------------------
-- Table structure for cloud_file_tag_cloud_files
-- ----------------------------
DROP TABLE IF EXISTS `cloud_file_tag_cloud_files`;
CREATE TABLE `cloud_file_tag_cloud_files`  (
  `cloud_file_tag_id` bigint UNSIGNED NOT NULL,
  `cloud_file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`cloud_file_tag_id`, `cloud_file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cloud_file_tag_cloud_files
-- ----------------------------

-- ----------------------------
-- Table structure for file_tag_files
-- ----------------------------
DROP TABLE IF EXISTS `file_tag_files`;
CREATE TABLE `file_tag_files`  (
  `file_tag_id` bigint UNSIGNED NOT NULL,
  `file_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`file_tag_id`, `file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_tag_files
-- ----------------------------

-- ----------------------------
-- Table structure for fms_cloud_file_tags
-- ----------------------------
DROP TABLE IF EXISTS `fms_cloud_file_tags`;
CREATE TABLE `fms_cloud_file_tags`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'CloudFileTag\'s name | 标签名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The remark of tag | 标签的备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cloudfiletag_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Cloud File\'s Tags Table | 云文件标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fms_cloud_file_tags
-- ----------------------------

-- ----------------------------
-- Table structure for fms_cloud_files
-- ----------------------------
DROP TABLE IF EXISTS `fms_cloud_files`;
CREATE TABLE `fms_cloud_files`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `state` tinyint(1) NULL DEFAULT 1 COMMENT 'State true: normal false: ban | 状态 true 正常 false 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The file\'s name | 文件名',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The file\'s url | 文件地址',
  `size` bigint UNSIGNED NOT NULL COMMENT 'The file\'s size | 文件大小',
  `file_type` tinyint UNSIGNED NOT NULL COMMENT 'The file\'s type | 文件类型',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The user who upload the file | 上传用户的 ID',
  `cloud_file_storage_providers` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cloudfile_name`(`name` ASC) USING BTREE,
  INDEX `cloudfile_file_type`(`file_type` ASC) USING BTREE,
  INDEX `cloudfile_url`(`url` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Cloud File Table | 云文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fms_cloud_files
-- ----------------------------

-- ----------------------------
-- Table structure for fms_file_tags
-- ----------------------------
DROP TABLE IF EXISTS `fms_file_tags`;
CREATE TABLE `fms_file_tags`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'FileTag\'s name | 标签名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The remark of tag | 标签的备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `filetag_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'File\'s Tags Table | 文件标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fms_file_tags
-- ----------------------------

-- ----------------------------
-- Table structure for fms_files
-- ----------------------------
DROP TABLE IF EXISTS `fms_files`;
CREATE TABLE `fms_files`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'File\'s name | 文件名称',
  `file_type` tinyint UNSIGNED NOT NULL COMMENT 'File\'s type | 文件类型',
  `size` bigint UNSIGNED NOT NULL COMMENT 'File\'s size | 文件大小',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'File\'s path | 文件路径',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'User\'s UUID | 用户的 UUID',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The md5 of the file | 文件的 md5',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `file_user_id`(`user_id` ASC) USING BTREE,
  INDEX `file_file_type`(`file_type` ASC) USING BTREE,
  INDEX `file_path`(`path` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'File Table | 文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fms_files
-- ----------------------------

-- ----------------------------
-- Table structure for fms_storage_providers
-- ----------------------------
DROP TABLE IF EXISTS `fms_storage_providers`;
CREATE TABLE `fms_storage_providers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `state` tinyint(1) NULL DEFAULT 1 COMMENT 'State true: normal false: ban | 状态 true 正常 false 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The cloud storage service name | 服务名称',
  `bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The cloud storage bucket name | 云存储服务的存储桶',
  `secret_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret ID | 密钥 ID',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret key | 密钥 Key',
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The service URL | 服务器地址',
  `folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The folder in cloud | 云服务目标文件夹',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The service region | 服务器所在地区',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Is it the default provider | 是否为默认提供商',
  `use_cdn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Does it use CDN | 是否使用 CDN',
  `cdn_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'CDN URL | CDN 地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Cloud File\'s Provider Configuration Table | 云文件服务商配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fms_storage_providers
-- ----------------------------

-- ----------------------------
-- Table structure for mcms_email_logs
-- ----------------------------
DROP TABLE IF EXISTS `mcms_email_logs`;
CREATE TABLE `mcms_email_logs`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The target email address | 目标邮箱地址',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The subject | 发送的标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The content | 发送的内容',
  `send_status` tinyint UNSIGNED NOT NULL COMMENT 'The send status, 0 unknown 1 success 2 failed | 发送的状态, 0 未知， 1 成功， 2 失败',
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The sms service provider | 短信服务提供商',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Email Log Table | 邮件日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mcms_email_logs
-- ----------------------------

-- ----------------------------
-- Table structure for mcms_email_providers
-- ----------------------------
DROP TABLE IF EXISTS `mcms_email_providers`;
CREATE TABLE `mcms_email_providers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The email provider name | 电子邮件服务的提供商',
  `auth_type` tinyint UNSIGNED NOT NULL COMMENT 'The auth type, supported plain, CRAMMD5 | 鉴权类型, 支持 plain, CRAMMD5',
  `email_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The email address | 邮箱地址',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The email\'s password | 电子邮件的密码',
  `host_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The host name is the email service\'s host address | 电子邮箱服务的服务器地址',
  `identify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The identify info, for CRAMMD5 | 身份信息, 支持 CRAMMD5',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The secret, for CRAMMD5 | 邮箱密钥, 用于 CRAMMD5',
  `port` int UNSIGNED NULL DEFAULT NULL COMMENT 'The port of the host | 服务器端口',
  `tls` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Whether to use TLS | 是否采用 tls 加密',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Is it the default provider | 是否为默认提供商',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Email Provider Configuration Table | 邮件服务商配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mcms_email_providers
-- ----------------------------
INSERT INTO `mcms_email_providers` VALUES (1, '2026-10-17 20:56:22', '2026-10-17 20:56:22', 'tencent', 1, 'input your email address', 'input your password', 'smtp.qq.com', NULL, NULL, 465, 1, 1);

-- ----------------------------
-- Table structure for mcms_sms_logs
-- ----------------------------
DROP TABLE IF EXISTS `mcms_sms_logs`;
CREATE TABLE `mcms_sms_logs`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The target phone number | 目标电话',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The content | 发送的内容',
  `send_status` tinyint UNSIGNED NOT NULL COMMENT 'The send status, 0 unknown 1 success 2 failed | 发送的状态, 0 未知， 1 成功， 2 失败',
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The sms service provider | 短信服务提供商',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'SMS Log Table | 短信日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mcms_sms_logs
-- ----------------------------

-- ----------------------------
-- Table structure for mcms_sms_providers
-- ----------------------------
DROP TABLE IF EXISTS `mcms_sms_providers`;
CREATE TABLE `mcms_sms_providers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SMS provider name | 短信服务的提供商',
  `secret_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret ID | 密钥 ID',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The secret key | 密钥 Key',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The service region | 服务器所在地区',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Is it the default provider | 是否为默认提供商',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'SMS Provider Configuration Table | 短信服务商配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mcms_sms_providers
-- ----------------------------
INSERT INTO `mcms_sms_providers` VALUES (1, '2026-10-17 20:56:22', '2026-10-17 20:56:22', 'tencent', 'input your secret ID', 'input your secret key', 'ap-nanjing', 1);

-- ----------------------------
-- Table structure for mms_members
-- ----------------------------
DROP TABLE IF EXISTS `mms_members`;
CREATE TABLE `mms_members`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Member\'s login name | 登录名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Password | 密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Nickname | 昵称',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Mobile number | 手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Email | 邮箱号',
  `avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'Avatar | 头像路径',
  `wechat_open_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Wechat Open ID | 微信 Open ID',
  `expired_at` datetime NULL DEFAULT NULL COMMENT 'Member expired time | 会员到期时间',
  `rank_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT 'Member Rank ID | 会员等级ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `nickname`(`nickname` ASC) USING BTREE,
  UNIQUE INDEX `member_username_email`(`username` ASC, `email` ASC) USING BTREE,
  UNIQUE INDEX `member_wechat_open_id`(`wechat_open_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mms_members
-- ----------------------------
INSERT INTO `mms_members` VALUES ('338badcd-90ed-4652-8d43-0480d115c53b', '2026-10-17 20:56:22', '2026-10-17 20:56:22', 1, 'VIPMember', '$2a$10$l8oRwXnBkKWammULBHaOtuIrPAoTxLY8g9JgMfPBPrtVeWePQOAHO', 'VIP Member', '18888888889', 'vip@gmail.com', '', NULL, '2099-01-01 00:00:00', 2);
INSERT INTO `mms_members` VALUES ('863133ae-242c-4ca9-96f4-894bc1ead125', '2026-10-17 20:56:22', '2026-10-17 20:56:22', 1, 'normalMember', '$2a$10$l8oRwXnBkKWammULBHaOtuIrPAoTxLY8g9JgMfPBPrtVeWePQOAHO', 'Normal Member', '18888888888', 'simpleadmin@gmail.com', '', NULL, '2099-01-01 00:00:00', 1);

-- ----------------------------
-- Table structure for mms_oauth_providers
-- ----------------------------
DROP TABLE IF EXISTS `mms_oauth_providers`;
CREATE TABLE `mms_oauth_providers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The provider\'s name | 提供商名称',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The client id | 客户端 id',
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The client secret | 客户端密钥',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The redirect url | 跳转地址',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The scopes | 权限范围',
  `auth_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The auth url of the provider | 认证地址',
  `token_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The token url of the provider | 获取 token地址',
  `auth_style` bigint UNSIGNED NOT NULL COMMENT 'The auth style, 0: auto detect 1: third party log in 2: log in with username and password',
  `info_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The URL to request user information by token | 用户信息请求地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mms_oauth_providers
-- ----------------------------
INSERT INTO `mms_oauth_providers` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 'google', 'your client id', 'your client secret', 'http://localhost:3100/oauth/login/callback', 'email openid', 'https://accounts.google.com/o/oauth2/auth', 'https://oauth2.googleapis.com/token', 1, 'https://www.googleapis.com/oauth2/v2/userinfo?access_token=TOKEN');
INSERT INTO `mms_oauth_providers` VALUES (2, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 'github', 'your client id', 'your client secret', 'http://localhost:3100/oauth/login/callback', 'email openid', 'https://github.com/login/oauth/authorize', 'https://github.com/login/oauth/access_token', 2, 'https://api.github.com/user');

-- ----------------------------
-- Table structure for mms_ranks
-- ----------------------------
DROP TABLE IF EXISTS `mms_ranks`;
CREATE TABLE `mms_ranks`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Rank name | 等级名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Rank code | 等级码',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Rank description | 等级描述',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Remark | 备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `memberrank_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mms_ranks
-- ----------------------------
INSERT INTO `mms_ranks` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 'memberRank.normal', '001', '普通会员 | Normal Member', '普通会员 | Normal Member');
INSERT INTO `mms_ranks` VALUES (2, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 'memberRank.vip', '002', 'VIP', 'VIP');

-- ----------------------------
-- Table structure for mms_tokens
-- ----------------------------
DROP TABLE IF EXISTS `mms_tokens`;
CREATE TABLE `mms_tokens`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT ' User\'s UUID | 用户的UUID',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Token string | Token 字符串',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown' COMMENT 'Username | 用户名',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Log in source such as GitHub | Token 来源 （本地为core, 第三方如github等）',
  `expired_at` timestamp NOT NULL COMMENT ' Expire time | 过期时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mms_token_uuid`(`uuid` ASC) USING BTREE,
  INDEX `mms_token_expired_at`(`expired_at` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mms_tokens
-- ----------------------------
INSERT INTO `mms_tokens` VALUES ('ddd20a9b-494b-4287-bdc8-994447309183', '2026-10-17 22:22:26', '2026-10-17 22:22:26', 1, 'c318f0b2-4926-4a06-9b01-06c4f8b749ce', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJjMzE4ZjBiMi00OTI2LTRhMDYtOWIwMS0wNmM0ZjhiNzQ5Y2UiLCJyb2xlQ29kZSI6ImludmFsaWQiLCJ1c2VybmFtZSI6Im10ZXN0MiIsImV4cCI6MTc5MjMzMzM0NSwiaWF0IjoxNzkyMjQ2OTQ1fQ.B3eLlFfW_gmW4H6Bvf_HQIk6DdDZScx6TuDGqMOZQbY', 'mtest2', 'mms_member', '2026-10-18 22:22:26');
INSERT INTO `mms_tokens` VALUES ('e40383d2-128b-4071-86b1-232a5ae34d9a', '2026-10-18 11:37:40', '2026-10-18 11:37:40', 1, '863133ae-242c-4ca9-96f4-894bc1ead125', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4NjMxMzNhZS0yNDJjLTRjYTktOTZmNC04OTRiYzFlYWQxMjUiLCJyb2xlQ29kZSI6ImludmFsaWQiLCJ1c2VybmFtZSI6Im5vcm1hbE1lbWJlciIsImV4cCI6MTc5MjM4MTA2MCwiaWF0IjoxNzkyMjk0NjYwfQ.nod2NB4IW3YwTULkTDxXrR1e-OvlUPtJVmBDgXHnU5c', 'normalMember', 'mms_member', '2026-10-19 11:37:40');

-- ----------------------------
-- Table structure for pay_demo_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_demo_order`;
CREATE TABLE `pay_demo_order`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT 'Delete Time | 删除日期',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户编号',
  `spu_id` bigint UNSIGNED NOT NULL COMMENT '商品编号',
  `spu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商品名称',
  `price` int NOT NULL COMMENT '价格，单位：分',
  `pay_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否支付',
  `pay_order_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '支付订单编号',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '付款时间',
  `pay_channel_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '支付渠道',
  `pay_refund_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '支付退款单号',
  `refund_price` int NULL DEFAULT NULL COMMENT '退款金额，单位：分',
  `refund_time` datetime NULL DEFAULT NULL COMMENT '退款完成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '支付示例订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_demo_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT 'Delete Time | 删除日期',
  `channel_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道编码',
  `merchant_order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单编号',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商品标题',
  `body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商品描述',
  `price` int NOT NULL COMMENT '支付金额，单位：分',
  `channel_fee_rate` float NULL DEFAULT NULL COMMENT '渠道手续费，单位：百分比',
  `channel_fee_price` int NULL DEFAULT NULL COMMENT '渠道手续金额，单位：分',
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户 IP',
  `expire_time` datetime NOT NULL COMMENT '订单失效时间',
  `success_time` datetime NULL DEFAULT NULL COMMENT '订单支付成功时间',
  `notify_time` datetime NULL DEFAULT NULL COMMENT '订单支付通知时间',
  `extension_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '支付成功的订单拓展单编号',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '订单号',
  `refund_price` int NOT NULL COMMENT '退款总金额，单位：分',
  `channel_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道用户编号',
  `channel_order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道订单号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '支付订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_extension
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_extension`;
CREATE TABLE `pay_order_extension`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT 'Delete Time | 删除日期',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '支付订单号',
  `order_id` bigint UNSIGNED NOT NULL COMMENT '支付订单编号 pay_order 表id',
  `channel_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '渠道编码',
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户 IP',
  `channel_extras` json NULL COMMENT '支付渠道的额外参数',
  `channel_error_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调用渠道的错误码',
  `channel_error_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '调用渠道报错时，错误信息',
  `channel_notify_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '支付渠道异步通知的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '支付订单拓展表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_order_extension
-- ----------------------------

-- ----------------------------
-- Table structure for pay_refund
-- ----------------------------
DROP TABLE IF EXISTS `pay_refund`;
CREATE TABLE `pay_refund`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time | 创建日期',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `deleted_at` datetime NULL DEFAULT NULL COMMENT 'Delete Time | 删除日期',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '退款单号',
  `channel_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '渠道编码',
  `order_id` bigint UNSIGNED NOT NULL COMMENT '支付订单编号 pay_order 表id',
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '支付订单 no',
  `merchant_order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商户订单编号（商户系统生成）',
  `merchant_refund_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '商户退款订单号（商户系统生成）',
  `pay_price` int NOT NULL COMMENT '支付金额,单位分',
  `refund_price` int NOT NULL COMMENT '退款金额,单位分',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '退款原因',
  `user_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户 IP',
  `channel_order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '渠道订单号，pay_order 中的 channel_order_no 对应',
  `channel_refund_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道退款单号，渠道返回',
  `success_time` datetime NULL DEFAULT NULL COMMENT '退款成功时间',
  `channel_error_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道调用报错时，错误码',
  `channel_error_msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '渠道调用报错时，错误信息',
  `channel_notify_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '支付渠道异步通知的内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '支付退款表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_refund
-- ----------------------------

-- ----------------------------
-- Table structure for role_menus
-- ----------------------------
DROP TABLE IF EXISTS `role_menus`;
CREATE TABLE `role_menus`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menus
-- ----------------------------
INSERT INTO `role_menus` VALUES (1, 1);
INSERT INTO `role_menus` VALUES (1, 2);
INSERT INTO `role_menus` VALUES (1, 3);
INSERT INTO `role_menus` VALUES (1, 4);
INSERT INTO `role_menus` VALUES (1, 5);
INSERT INTO `role_menus` VALUES (1, 6);
INSERT INTO `role_menus` VALUES (1, 7);
INSERT INTO `role_menus` VALUES (1, 8);
INSERT INTO `role_menus` VALUES (1, 9);
INSERT INTO `role_menus` VALUES (1, 10);
INSERT INTO `role_menus` VALUES (1, 11);
INSERT INTO `role_menus` VALUES (1, 12);
INSERT INTO `role_menus` VALUES (1, 13);
INSERT INTO `role_menus` VALUES (1, 14);
INSERT INTO `role_menus` VALUES (1, 16);
INSERT INTO `role_menus` VALUES (1, 17);
INSERT INTO `role_menus` VALUES (1, 101);
INSERT INTO `role_menus` VALUES (1, 102);
INSERT INTO `role_menus` VALUES (1, 103);
INSERT INTO `role_menus` VALUES (1, 104);
INSERT INTO `role_menus` VALUES (1, 105);
INSERT INTO `role_menus` VALUES (1, 200);
INSERT INTO `role_menus` VALUES (1, 201);
INSERT INTO `role_menus` VALUES (1, 202);
INSERT INTO `role_menus` VALUES (1, 203);
INSERT INTO `role_menus` VALUES (1, 204);
INSERT INTO `role_menus` VALUES (1, 205);
INSERT INTO `role_menus` VALUES (1, 210);
INSERT INTO `role_menus` VALUES (1, 220);
INSERT INTO `role_menus` VALUES (1, 221);
INSERT INTO `role_menus` VALUES (1, 222);
INSERT INTO `role_menus` VALUES (1, 223);
INSERT INTO `role_menus` VALUES (2, 1);
INSERT INTO `role_menus` VALUES (2, 2);
INSERT INTO `role_menus` VALUES (2, 3);
INSERT INTO `role_menus` VALUES (2, 4);
INSERT INTO `role_menus` VALUES (2, 5);
INSERT INTO `role_menus` VALUES (2, 6);
INSERT INTO `role_menus` VALUES (2, 7);
INSERT INTO `role_menus` VALUES (2, 8);
INSERT INTO `role_menus` VALUES (2, 9);
INSERT INTO `role_menus` VALUES (2, 10);
INSERT INTO `role_menus` VALUES (2, 11);
INSERT INTO `role_menus` VALUES (2, 12);
INSERT INTO `role_menus` VALUES (2, 13);
INSERT INTO `role_menus` VALUES (2, 14);
INSERT INTO `role_menus` VALUES (2, 16);
INSERT INTO `role_menus` VALUES (2, 17);
INSERT INTO `role_menus` VALUES (2, 223);

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API path | API 路径',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API description | API 描述',
  `api_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'API group | API 分组',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Other' COMMENT 'Service name | 服务名称',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'POST' COMMENT 'HTTP method | HTTP 请求类型',
  `is_required` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Whether is required | 是否必选',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `api_path_method`(`path` ASC, `method` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5020 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'API Table | API接口表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
INSERT INTO `sys_apis` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/login', 'apiDesc.userLogin', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (2, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/register', 'apiDesc.userRegister', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (3, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/create', 'apiDesc.createUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/update', 'apiDesc.updateUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/change_password', 'apiDesc.userChangePassword', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (6, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/info', 'apiDesc.userInfo', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (7, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/list', 'apiDesc.userList', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (8, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/delete', 'apiDesc.deleteUser', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (9, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/perm', 'apiDesc.userPermissions', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (10, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/profile', 'apiDesc.userProfile', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (11, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/profile', 'apiDesc.updateProfile', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (12, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/logout', 'apiDesc.logout', 'user', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (13, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user', 'apiDesc.getUserById', 'user', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (14, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/refresh_token', 'apiDesc.refreshToken', 'user', 'Core', 'GET', 0);
INSERT INTO `sys_apis` VALUES (15, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/access_token', 'apiDesc.accessToken', 'user', 'Core', 'GET', 0);
INSERT INTO `sys_apis` VALUES (16, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/role/create', 'apiDesc.createRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (17, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/role/update', 'apiDesc.updateRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (18, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/role/delete', 'apiDesc.deleteRole', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (19, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/role/list', 'apiDesc.roleList', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (20, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/role', 'apiDesc.getRoleById', 'role', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (21, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/menu/create', 'apiDesc.createMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (22, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/menu/update', 'apiDesc.updateMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (23, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/menu/delete', 'apiDesc.deleteMenu', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (24, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/menu/list', 'apiDesc.menuList', 'menu', 'Core', 'GET', 0);
INSERT INTO `sys_apis` VALUES (25, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/menu/role/list', 'apiDesc.menuRoleList', 'authority', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (31, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/menu', 'apiDesc.getMenuById', 'menu', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (32, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/captcha', 'apiDesc.captcha', 'captcha', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (33, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/authority/api/create_or_update', 'apiDesc.createOrUpdateApiAuthority', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (34, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/authority/api/role', 'apiDesc.APIAuthorityOfRole', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (35, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/authority/menu/create_or_update', 'apiDesc.createOrUpdateMenuAuthority', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (36, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/authority/menu/role', 'apiDesc.menuAuthorityOfRole', 'authority', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (37, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/api/create', 'apiDesc.createApi', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (38, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/api/update', 'apiDesc.updateApi', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (39, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/api/delete', 'apiDesc.deleteAPI', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (40, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/api/list', 'apiDesc.APIList', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (41, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/api', 'apiDesc.getApiById', 'api', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (42, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary', 'apiDesc.getDictionaryById', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (43, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary/create', 'apiDesc.createDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (44, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary/update', 'apiDesc.updateDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (45, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary/delete', 'apiDesc.deleteDictionary', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (46, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary_detail/delete', 'apiDesc.deleteDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (47, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary_detail', 'apiDesc.getDictionaryDetailById', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (48, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary_detail/create', 'apiDesc.createDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (49, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary_detail/update', 'apiDesc.updateDictionaryDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (50, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary_detail/list', 'apiDesc.getDictionaryListDetail', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (51, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dictionary/list', 'apiDesc.getDictionaryList', 'dictionary', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (52, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dict/:name', 'apiDesc.getDictionaryDetailByDictionaryName', 'dictionary', 'Core', 'GET', 0);
INSERT INTO `sys_apis` VALUES (53, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth_provider/create', 'apiDesc.createProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (54, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth_provider/update', 'apiDesc.updateProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (55, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth_provider/delete', 'apiDesc.deleteProvider', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (56, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth_provider/list', 'apiDesc.getProviderList', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (57, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth/login', 'apiDesc.oauthLogin', 'oauth', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (58, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth_provider', 'apiDesc.getProviderById', 'oauth', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (59, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/token/create', 'apiDesc.createToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (60, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/token/update', 'apiDesc.updateToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (61, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/token/delete', 'apiDesc.deleteToken', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (62, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/token/list', 'apiDesc.getTokenList', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (63, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/token/logout', 'apiDesc.forceLoggingOut', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (64, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/token', 'apiDesc.getTokenById', 'token', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (65, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/department/create', 'apiDesc.createDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (66, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/department/update', 'apiDesc.updateDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (67, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/department/delete', 'apiDesc.deleteDepartment', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (68, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/department/list', 'apiDesc.getDepartmentList', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (69, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/department', 'apiDesc.getDepartmentById', 'department', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (70, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/position/create', 'apiDesc.createPosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (71, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/position/update', 'apiDesc.updatePosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (72, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/position/delete', 'apiDesc.deletePosition', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (73, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/position/list', 'apiDesc.getPositionList', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (74, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/position', 'apiDesc.getPositionById', 'position', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (85, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/configuration/create', 'apiDesc.createConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (86, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/configuration/update', 'apiDesc.updateConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (87, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/configuration/delete', 'apiDesc.deleteConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (88, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/configuration/list', 'apiDesc.getConfigurationList', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (89, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/configuration', 'apiDesc.getConfigurationById', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (151, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/core/ping', 'apiDesc.ping', 'core', 'Core', 'GET', 0);
INSERT INTO `sys_apis` VALUES (152, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/core/init/database', 'apiDesc.initDatabase', 'core', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (153, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/core/init/job_database', 'apiDesc.initJobDatabase', 'core', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (154, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/core/init/mcms_database', 'apiDesc.initMcmsDatabase', 'core', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (155, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/captcha/email', 'apiDesc.captchaEmail', 'captcha', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (156, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/captcha/sms', 'apiDesc.captchaSms', 'captcha', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (157, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/login_by_email', 'apiDesc.userLoginByEmail', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (158, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/login_by_sms', 'apiDesc.userLoginBySms', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (159, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/register_by_email', 'apiDesc.userRegisterByEmail', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (160, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/register_by_sms', 'apiDesc.userRegisterBySms', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (161, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/reset_password_by_email', 'apiDesc.userResetPasswordByEmail', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (162, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/user/reset_password_by_sms', 'apiDesc.userResetPasswordBySms', 'user', 'Core', 'POST', 1);
INSERT INTO `sys_apis` VALUES (163, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/oauth/login/callback', 'apiDesc.oauthCallback', 'oauth', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (164, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/configuration/system/list', 'apiDesc.systemConfiguration', 'configuration', 'Core', 'POST', 0);
INSERT INTO `sys_apis` VALUES (165, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/sys-api/dict/public/:name', 'apiDesc.publicDict', 'dictionary', 'Core', 'GET', 1);
INSERT INTO `sys_apis` VALUES (1001, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/init/database', 'apiDesc.initDatabase', 'base', 'Mms', 'GET', 1);
INSERT INTO `sys_apis` VALUES (1002, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/captcha', 'apiDesc.getCaptcha', 'captcha', 'Mms', 'GET', 1);
INSERT INTO `sys_apis` VALUES (1003, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/captcha/email', 'apiDesc.getEmailCaptcha', 'captcha', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1004, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/captcha/sms', 'apiDesc.getSmsCaptcha', 'captcha', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1005, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/create', 'apiDesc.createMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1006, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/update', 'apiDesc.updateMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1007, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/delete', 'apiDesc.deleteMember', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1008, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/list', 'apiDesc.getMemberList', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1009, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member', 'apiDesc.getMemberById', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1010, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/profile', 'apiDesc.modifyProfile', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1011, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/logout', 'apiDesc.logout', 'member', 'Mms', 'GET', 0);
INSERT INTO `sys_apis` VALUES (1012, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/bind/wechat', 'apiDesc.bindWechat', 'member', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1013, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/login', 'apiDesc.login', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1014, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/login_by_email', 'apiDesc.loginByEmail', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1015, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/login_by_sms', 'apiDesc.loginBySms', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1016, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/register', 'apiDesc.register', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1017, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/register_by_email', 'apiDesc.registerByEmail', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1018, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/register_by_sms', 'apiDesc.registerBySms', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1019, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/reset_password_by_email', 'apiDesc.resetPasswordByEmail', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1020, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/reset_password_by_sms', 'apiDesc.resetPasswordBySms', 'member', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1021, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member/vip', 'apiDesc.testVip', 'member', 'Mms', 'GET', 0);
INSERT INTO `sys_apis` VALUES (1022, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member_rank/create', 'apiDesc.createMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1023, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member_rank/update', 'apiDesc.updateMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1024, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member_rank/delete', 'apiDesc.deleteMemberRank', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1025, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member_rank/list', 'apiDesc.getMemberRankList', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1026, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/member_rank', 'apiDesc.getMemberRankById', 'member_rank', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1027, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth/login', 'apiDesc.oauthLogin', 'oauth_provider', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1028, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth/login/callback', 'apiDesc.oauthCallback', 'oauth_provider', 'Mms', 'GET', 1);
INSERT INTO `sys_apis` VALUES (1029, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth/login/wechat/mini_program', 'apiDesc.wechatMiniProgramLogin', 'oauth_provider', 'Mms', 'POST', 1);
INSERT INTO `sys_apis` VALUES (1030, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth_provider/create', 'apiDesc.createOauthProvider', 'oauth_provider', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1031, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth_provider/update', 'apiDesc.updateOauthProvider', 'oauth_provider', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1032, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth_provider/delete', 'apiDesc.deleteOauthProvider', 'oauth_provider', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1033, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth_provider/list', 'apiDesc.getOauthProviderList', 'oauth_provider', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1034, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/oauth_provider', 'apiDesc.getOauthProviderById', 'oauth_provider', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1035, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/token/create', 'apiDesc.createToken', 'token', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1036, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/token/update', 'apiDesc.updateToken', 'token', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1037, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/token/delete', 'apiDesc.deleteToken', 'token', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1038, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/token/list', 'apiDesc.getTokenList', 'token', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1039, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/token', 'apiDesc.getTokenById', 'token', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (1040, '2026-10-15 14:49:53', '2026-10-15 14:49:53', '/mms-api/token/logout', 'apiDesc.forceLoggingOut', 'token', 'Mms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2001, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/init/database', 'apiDesc.initDatabase', 'file', 'Fms', 'GET', 0);
INSERT INTO `sys_apis` VALUES (2002, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/upload', 'apiDesc.uploadFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2003, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file/list', 'apiDesc.fileList', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2004, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file/update', 'apiDesc.updateFileInfo', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2005, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file/delete', 'apiDesc.deleteFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2006, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file/status', 'apiDesc.setPublicStatus', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2007, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file/delete_by_url', 'apiDesc.deleteFile', 'file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2008, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file/download/:id', 'apiDesc.downloadFile', 'file', 'Fms', 'GET', 0);
INSERT INTO `sys_apis` VALUES (2009, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file_tag/create', 'apiDesc.createFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2010, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file_tag/update', 'apiDesc.updateFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2011, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file_tag/delete', 'apiDesc.deleteFileTag', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2012, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file_tag/list', 'apiDesc.getFileTagList', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2013, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/file_tag', 'apiDesc.getFileTagById', 'file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2014, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/storage_provider/create', 'apiDesc.createStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2015, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/storage_provider/update', 'apiDesc.updateStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2016, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/storage_provider/delete', 'apiDesc.deleteStorageProvider', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2017, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/storage_provider/list', 'apiDesc.getStorageProviderList', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2018, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/storage_provider', 'apiDesc.getStorageProviderById', 'storage_provider', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2019, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file/create', 'apiDesc.createCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2020, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file/update', 'apiDesc.updateCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2021, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file/delete', 'apiDesc.deleteCloudFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2022, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file/list', 'apiDesc.getCloudFileList', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2023, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file', 'apiDesc.getCloudFileById', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2024, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file/delete_by_url', 'apiDesc.deleteFile', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2025, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file/upload', 'apiDesc.uploadFileToCloud', 'cloud_file', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2026, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file_tag/create', 'apiDesc.createCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2027, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file_tag/update', 'apiDesc.updateCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2028, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file_tag/delete', 'apiDesc.deleteCloudFileTag', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2029, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file_tag/list', 'apiDesc.getCloudFileTagList', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (2030, '2026-10-17 08:00:00', '2026-10-17 08:00:00', '/fms-api/cloud_file_tag', 'apiDesc.getCloudFileTagById', 'cloud_file_tag', 'Fms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3001, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task/create', 'apiDesc.createTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3002, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task/update', 'apiDesc.updateTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3003, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task/delete', 'apiDesc.deleteTask', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3004, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task/list', 'apiDesc.getTaskList', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3005, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task', 'apiDesc.getTaskById', 'task', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3006, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task_log/create', 'apiDesc.createTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3007, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task_log/update', 'apiDesc.updateTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3008, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task_log/delete', 'apiDesc.deleteTaskLog', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3009, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task_log/list', 'apiDesc.getTaskLogList', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (3010, '2026-10-17 20:53:47', '2026-10-17 20:53:47', '/sys-api/task_log', 'apiDesc.getTaskLogById', 'task_log', 'Job', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4001, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email/send', 'apiDesc.sendEmail', 'message_sender', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4002, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_log', 'apiDesc.getEmailLogById', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4003, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_log/create', 'apiDesc.createEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4004, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_log/update', 'apiDesc.updateEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4005, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_log/delete', 'apiDesc.deleteEmailLog', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4006, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_log/list', 'apiDesc.getEmailLogList', 'email_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4007, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_provider', 'apiDesc.getEmailProviderById', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4008, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_provider/create', 'apiDesc.createEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4009, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_provider/update', 'apiDesc.updateEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4010, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_provider/delete', 'apiDesc.deleteEmailProvider', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4011, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/email_provider/list', 'apiDesc.getEmailProviderList', 'email_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4012, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms/send', 'apiDesc.sendSms', 'message_sender', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4013, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_log', 'apiDesc.getSmsLogById', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4014, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_log/create', 'apiDesc.createSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4015, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_log/update', 'apiDesc.updateSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4016, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_log/delete', 'apiDesc.deleteSmsLog', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4017, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_log/list', 'apiDesc.getSmsLogList', 'sms_log', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4018, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_provider', 'apiDesc.getSmsProviderById', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4019, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_provider/create', 'apiDesc.createSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4020, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_provider/update', 'apiDesc.updateSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4021, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_provider/delete', 'apiDesc.deleteSmsProvider', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (4022, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/sys-api/sms_provider/list', 'apiDesc.getSmsProviderList', 'sms_provider', 'Mcms', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5001, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/init/database', '初始化支付数据库', 'Pay', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5002, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/demo_order/create', '创建示例订单', 'PayDemoOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5003, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/demo_order/get', '获取示例订单', 'PayDemoOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5004, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/demo_order/list', '示例订单列表', 'PayDemoOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5005, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/demo_order/update_paid', '更新示例订单支付状态', 'PayDemoOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5006, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/demo_order/refund', '示例订单退款', 'PayDemoOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5007, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/demo_order/update_refund_paid', '更新示例订单退款状态', 'PayDemoOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5008, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/create', '创建支付订单', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5009, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/get', '获取支付订单', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5010, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/list', '支付订单分页', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5011, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/extension/create', '创建支付订单拓展', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5012, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/extension/get', '获取支付订单拓展', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5013, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/notify', '支付渠道回调', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5014, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/order/submit', '提交支付', 'PayOrder', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5015, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/refund/create', '创建退款', 'PayRefund', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5016, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/refund/list', '退款分页', 'PayRefund', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5017, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/refund/get', '获取退款', 'PayRefund', 'Pay', 'POST', 0);
INSERT INTO `sys_apis` VALUES (5018, '2026-10-17 20:56:22', '2026-10-17 20:56:22', '/pay-api/refund/notify', '退款渠道回调', 'PayRefund', 'Pay', 'POST', 0);

-- ----------------------------
-- Table structure for sys_configuration
-- ----------------------------
DROP TABLE IF EXISTS `sys_configuration`;
CREATE TABLE `sys_configuration`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sort Number | 排序编号',
  `state` tinyint(1) NULL DEFAULT 1 COMMENT 'State true: normal false: ban | 状态 true 正常 false 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configurarion name | 配置名称',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configuration key | 配置的键名',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configuraion value | 配置的值',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Configuration category | 配置的分类',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Remark | 备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `configuration_key`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Dynamic Configuration Table | 动态配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_configuration
-- ----------------------------
INSERT INTO `sys_configuration` VALUES (1, '2026-10-18 12:23:36', '2026-10-18 12:23:36', 1, 1, '默认语言', 'sys.ui.defaultLocale', 'zh_CN', 'system', '系统默认语言：zh_CN 中文 / en 英文');

-- ----------------------------
-- Table structure for sys_departments
-- ----------------------------
DROP TABLE IF EXISTS `sys_departments`;
CREATE TABLE `sys_departments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sort Number | 排序编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Department name | 部门名称',
  `ancestors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Parents\' IDs | 父级列表',
  `leader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Department leader | 部门负责人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Leader\'s phone number | 负责人电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Leader\'s email | 部门负责人电子邮箱',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Remark | 备注',
  `parent_id` bigint UNSIGNED NULL DEFAULT 0 COMMENT 'Parent department ID | 父级部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Department Table | 部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_departments
-- ----------------------------
INSERT INTO `sys_departments` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 1, 1, 'department.managementDepartment', '', 'admin', '18888888888', 'simpleadmin@gmail.com', 'Super Administrator', 1000000);

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The title shown in the ui | 展示名称 （建议配合i18n）',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The name of dictionary for search | 字典搜索名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The description of dictionary | 字典的描述',
  `is_public` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Whether to be public for everyone | 是否公开词典，无需登录即可访问',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Dictionary Table | 字典信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
INSERT INTO `sys_dictionaries` VALUES (1, '2026-10-18 13:33:55', '2026-10-18 13:33:55', 1, '我是展示名称', '我是字典名称', '1111111111111111111111', 0);
INSERT INTO `sys_dictionaries` VALUES (2, '2026-10-18 14:27:16', '2026-10-18 14:27:16', 1, '我是展示名称1', '我是字典名称1', '11111111111111', 0);

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sort Number | 排序编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The title shown in the ui | 展示名称 （建议配合i18n）',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'key | 键',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'value | 值',
  `dictionary_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT 'Dictionary ID | 字典ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Dictionary Key/Value Table | 字典键值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
INSERT INTO `sys_dictionary_details` VALUES (1, '2026-10-18 17:03:25', '2026-10-18 17:04:06', 1, 2, '测试键改', 'test_key', 'test_val2', 1);

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sort Number | 排序编号',
  `menu_level` int UNSIGNED NOT NULL COMMENT 'Menu level | 菜单层级',
  `menu_type` int UNSIGNED NOT NULL COMMENT 'Menu type | 菜单类型 （菜单或目录）0 目录 1 菜单',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'Index path | 菜单路由路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Index name | 菜单名称',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'Redirect path | 跳转路径 （外链）',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'The path of vue file | 组件路径',
  `disabled` tinyint(1) NULL DEFAULT 0 COMMENT 'Disable status | 是否停用',
  `service_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'Other' COMMENT 'Service Name | 服务名称',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Permission symbol | 权限标识',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Menu name | 菜单显示标题',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Menu icon | 菜单图标',
  `hide_menu` tinyint(1) NULL DEFAULT 0 COMMENT 'Hide menu | 是否隐藏菜单',
  `hide_breadcrumb` tinyint(1) NULL DEFAULT 0 COMMENT 'Hide the breadcrumb | 隐藏面包屑',
  `ignore_keep_alive` tinyint(1) NULL DEFAULT 0 COMMENT 'Do not keep alive the tab | 取消页面缓存',
  `hide_tab` tinyint(1) NULL DEFAULT 0 COMMENT 'Hide the tab header | 隐藏页头',
  `frame_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'Show iframe | 内嵌 iframe',
  `carry_param` tinyint(1) NULL DEFAULT 0 COMMENT 'The route carries parameters or not | 携带参数',
  `hide_children_in_menu` tinyint(1) NULL DEFAULT 0 COMMENT 'Hide children menu or not | 隐藏所有子菜单',
  `affix` tinyint(1) NULL DEFAULT 0 COMMENT 'Affix tab | Tab 固定',
  `dynamic_level` int UNSIGNED NULL DEFAULT 20 COMMENT 'The maximum number of pages the router can open | 能打开的子TAB数',
  `real_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT 'The real path of the route without dynamic part | 菜单路由不包含参数部分',
  `parent_id` bigint UNSIGNED NULL DEFAULT 100000 COMMENT 'Parent menu ID | 父菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menu_name`(`name` ASC) USING BTREE,
  UNIQUE INDEX `menu_path`(`path` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Menu Table | 菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 1, 1, 0, '/dashboard_dir', 'DashBoardDir', '', 'LAYOUT', 0, 'Core', NULL, 'route.managementCenter', 'ic:baseline-view-in-ar', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (2, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 0, 2, 1, '/dashboard', 'Dashboard', '', '/dashboard/workbench/index', 0, 'Core', NULL, 'route.dashboard', 'ant-design:home-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1);
INSERT INTO `sys_menus` VALUES (3, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 999, 1, 0, '/system', 'SystemManagement', '', 'LAYOUT', 0, 'Core', NULL, 'route.systemManagementTitle', 'ant-design:tool-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (4, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 1, 2, 1, '/menu', 'MenuManagement', '', '/sys/menu/index', 0, 'Core', NULL, 'route.menuManagementTitle', 'ant-design:bars-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (5, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 2, 2, 1, '/role', 'RoleManagement', '', '/sys/role/index', 0, 'Core', NULL, 'route.roleManagementTitle', 'ant-design:user-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (6, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 3, 2, 1, '/user', 'UserManagement', '', '/sys/user/index', 0, 'Core', NULL, 'route.userManagementTitle', 'ant-design:user-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (7, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 4, 2, 1, '/department', 'DepartmentManagement', '', '/sys/department/index', 0, 'Core', NULL, 'route.departmentManagement', 'ic:outline-people-alt', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (8, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 5, 2, 1, '/api', 'APIManagement', '', '/sys/api/index', 0, 'Core', NULL, 'route.apiManagementTitle', 'ant-design:api-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (9, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 6, 2, 1, '/dictionary', 'DictionaryManagement', '', '/sys/dictionary/index', 0, 'Core', NULL, 'route.dictionaryManagementTitle', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 1, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (10, '2026-10-15 14:49:53', '2026-10-18 13:31:16', 1000, 1, 0, '/other', 'OtherPages', '', 'LAYOUT', 0, 'Core', '', 'route.otherPages', 'ant-design:question-circle-outlined', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (11, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 3, 1, 1, '/profile', 'Profile', '', '/sys/profile/index', 0, 'Core', NULL, 'route.userProfileTitle', 'ant-design:profile-outlined', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 10);
INSERT INTO `sys_menus` VALUES (12, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 6, 2, 1, '/oauth', 'OauthManagement', '', '/sys/oauth/index', 0, 'Core', NULL, 'route.oauthManagement', 'ant-design:unlock-filled', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (13, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 7, 2, 1, '/token', 'TokenManagement', '', '/sys/token/index', 0, 'Core', NULL, 'route.tokenManagement', 'ant-design:lock-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (14, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 8, 2, 1, '/position', 'PositionManagement', '', '/sys/position/index', 0, 'Core', NULL, 'route.positionManagement', 'ic:twotone-work-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (16, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 9, 2, 1, '/configuration', 'ConfigurationManagement', '', '/sys/configuration/index', 0, 'Core', NULL, 'route.configurationManagement', 'carbon:data-2', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (17, '2026-10-15 14:49:53', '2026-10-18 13:20:49', 99, 1, 1, '/module_store', 'ModuleStore', '', 'IFrame', 0, 'Core', '', 'route.moduleStore', 'ion:bag-handle-outline', 1, 0, 0, 1, 'https://simple-admin.simple-hub.top/#/store/index', 0, 1, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (101, '2026-10-15 14:49:53', '2026-10-18 17:54:55', 1, 1, 0, '/member_dir', 'MemberManagementDirectory', '', 'LAYOUT', 0, 'Mms', '', 'route.memberManagement', 'ic:round-person-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (102, '2026-10-15 14:49:53', '2026-10-18 13:12:07', 1, 2, 1, '/member', 'MemberManagement', '', '/mms/member/index', 0, 'Mms', '', 'route.memberManagement', 'ic:round-person-outline', 0, 1, 0, 0, '', 0, 0, 0, 20, '', 101);
INSERT INTO `sys_menus` VALUES (103, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 2, 2, 1, '/member_rank', 'MemberRankManagement', '', '/mms/memberRank/index', 0, 'Mms', NULL, 'route.memberRankManagement', 'ant-design:crown-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 101);
INSERT INTO `sys_menus` VALUES (104, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 3, 2, 1, '/member_token', 'MemberTokenManagement', '', '/mms/token/index', 0, 'Mms', NULL, 'route.tokenManagement', 'ant-design:lock-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 101);
INSERT INTO `sys_menus` VALUES (105, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 3, 2, 1, '/member_oauth', 'MemberOauthManagement', '', '/mms/oauth/index', 0, 'Mms', NULL, 'route.oauthManagement', 'ant-design:unlock-filled', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 101);
INSERT INTO `sys_menus` VALUES (200, '2026-10-17 08:00:00', '2026-10-17 08:00:00', 3, 1, 1, '/fms_dir', 'FileManagementDirectory', '', 'LAYOUT', 0, 'Fms', '', 'route.fileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (201, '2026-10-17 08:00:00', '2026-10-17 08:00:00', 1, 2, 1, '/fms/file', 'FileManagement', '', '/fms/file/index', 0, 'Fms', NULL, 'route.fileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 200);
INSERT INTO `sys_menus` VALUES (202, '2026-10-17 08:00:00', '2026-10-17 08:00:00', 2, 2, 1, '/fms/file_tag', 'FileTagManagement', '', '/fms/fileTag/index', 0, 'Fms', NULL, 'route.fileTagManagement', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 200);
INSERT INTO `sys_menus` VALUES (203, '2026-10-17 08:00:00', '2026-10-17 08:00:00', 3, 2, 1, '/fms/storage_provider', 'StorageProviderManagement', '', '/fms/storageProvider/index', 0, 'Fms', NULL, 'route.storageProviderManagement', 'mdi:cloud-outline', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 200);
INSERT INTO `sys_menus` VALUES (204, '2026-10-17 08:00:00', '2026-10-17 08:00:00', 4, 2, 1, '/fms/cloud_file', 'CloudFileManagement', '', '/fms/cloudFile/index', 0, 'Fms', NULL, 'route.cloudFileManagement', 'ant-design:folder-open-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 200);
INSERT INTO `sys_menus` VALUES (205, '2026-10-17 08:00:00', '2026-10-17 08:00:00', 5, 2, 1, '/fms/cloud_file_tag', 'CloudFileTagManagement', '', '/fms/cloudFileTag/index', 0, 'Fms', NULL, 'route.cloudFileTagManagement', 'ant-design:book-outlined', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 200);
INSERT INTO `sys_menus` VALUES (210, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 8, 2, 1, '/task', 'TaskManagement', '', '/sys/task/index', 0, 'Job', NULL, 'route.taskManagement', 'ic:baseline-access-alarm', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 3);
INSERT INTO `sys_menus` VALUES (220, '2026-10-15 06:50:11', '2026-10-15 06:50:11', 4, 1, 1, '/mcms_dir', 'MessageCenterManagement', '', 'LAYOUT', 0, 'Mcms', NULL, 'route.messageCenterManagement', 'clarity:email-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 1000000);
INSERT INTO `sys_menus` VALUES (221, '2026-10-15 06:50:11', '2026-10-15 06:50:11', 1, 2, 2, '/mcms_email_provider', 'EmailProviderManagement', '', '/mcms/emailProvider/index', 0, 'Mcms', NULL, 'route.emailProviderManagement', 'clarity:email-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 220);
INSERT INTO `sys_menus` VALUES (222, '2026-10-15 06:50:11', '2026-10-15 06:50:11', 2, 2, 2, '/mcms_sms_provider', 'SmsProviderManagement', '', '/mcms/smsProvider/index', 0, 'Mcms', NULL, 'route.smsProviderManagement', 'clarity:mobile-line', 0, 0, 0, 0, '', 0, 0, 0, 20, '', 220);
INSERT INTO `sys_menus` VALUES (223, '2026-10-18 14:04:37', '2026-10-18 14:04:37', 1, 2, 1, '/dictionary/detail/:dictionaryId', 'DictionaryDetail', '', '/sys/dictionaryDetail/index', 0, 'Core', '', 'route.dictionaryDetailManagementTitle', '', 1, 0, 0, 0, '', 0, 0, 0, 20, '', 9);

-- ----------------------------
-- Table structure for sys_oauth_providers
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_providers`;
CREATE TABLE `sys_oauth_providers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The provider\'s name | 提供商名称',
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The client id | 客户端 id',
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The client secret | 客户端密钥',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The redirect url | 跳转地址',
  `scopes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The scopes | 权限范围',
  `auth_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The auth url of the provider | 认证地址',
  `token_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The token url of the provider | 获取 token地址',
  `auth_style` bigint UNSIGNED NOT NULL COMMENT 'The auth style, 0: auto detect 1: third party log in 2: log in with username and password | 鉴权方式 0 自动 1 第三方登录 2 使用用户名密码',
  `info_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The URL to request user information by token | 用户信息请求地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Oauth Provider Configuration Table | 三方登录配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oauth_providers
-- ----------------------------
INSERT INTO `sys_oauth_providers` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 'google', 'your client id', 'your client secret', 'http://localhost:3100/oauth/login/callback', 'email openid', 'https://accounts.google.com/o/oauth2/auth', 'https://oauth2.googleapis.com/token', 1, 'https://www.googleapis.com/oauth2/v2/userinfo?access_token=TOKEN');
INSERT INTO `sys_oauth_providers` VALUES (2, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 'github', 'your client id', 'your client secret', 'http://localhost:3100/oauth/login/callback', 'email openid', 'https://github.com/login/oauth/authorize', 'https://github.com/login/oauth/access_token', 2, 'https://api.github.com/user');

-- ----------------------------
-- Table structure for sys_positions
-- ----------------------------
DROP TABLE IF EXISTS `sys_positions`;
CREATE TABLE `sys_positions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `sort` int UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sort Number | 排序编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Position Name | 职位名称',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The code of position | 职位编码',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Remark | 备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `position_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Position Table | 职位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_positions
-- ----------------------------
INSERT INTO `sys_positions` VALUES (1, '2026-10-15 14:49:53', '2026-10-15 14:49:53', 1, 1, 'position.ceo', '001', 'CEO');

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Role name | 角色名',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Role code for permission control in front end | 角色码，用于前端权限控制',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'Remark | 备注',
  `sort` int UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Order number | 排序编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `role_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Role Table | 角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, '2026-10-15 14:49:53', '2026-10-16 02:36:14', 1, 'role.admin', '001', '超级管理员', 1);
INSERT INTO `sys_roles` VALUES (2, '2026-10-15 14:49:53', '2026-10-18 17:35:11', 1, 'role.stuff', '002', '', 0);

-- ----------------------------
-- Table structure for sys_task_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_logs`;
CREATE TABLE `sys_task_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `started_at` timestamp NOT NULL COMMENT 'Task Started Time | 任务启动时间',
  `finished_at` timestamp NOT NULL COMMENT 'Task Finished Time | 任务完成时间',
  `result` tinyint UNSIGNED NOT NULL COMMENT 'The Task Process Result | 任务执行结果',
  `task_task_logs` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 808 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Task Log Table | 任务日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_task_logs
-- ----------------------------
INSERT INTO `sys_task_logs` VALUES (1, '2026-10-17 20:54:53', '2026-10-17 20:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (2, '2026-10-17 20:55:52', '2026-10-17 20:55:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (3, '2026-10-17 20:56:52', '2026-10-17 20:56:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (4, '2026-10-17 20:57:52', '2026-10-17 20:57:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (5, '2026-10-17 20:58:53', '2026-10-17 20:58:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (6, '2026-10-17 20:59:52', '2026-10-17 20:59:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (7, '2026-10-17 21:00:53', '2026-10-17 21:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (8, '2026-10-17 21:01:52', '2026-10-17 21:01:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (9, '2026-10-17 21:02:53', '2026-10-17 21:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (10, '2026-10-17 21:03:52', '2026-10-17 21:03:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (11, '2026-10-17 21:04:54', '2026-10-17 21:04:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (12, '2026-10-17 21:05:53', '2026-10-17 21:05:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (13, '2026-10-17 21:06:53', '2026-10-17 21:06:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (14, '2026-10-17 21:07:53', '2026-10-17 21:07:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (15, '2026-10-17 21:08:53', '2026-10-17 21:08:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (16, '2026-10-17 21:09:52', '2026-10-17 21:09:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (17, '2026-10-17 21:10:53', '2026-10-17 21:10:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (18, '2026-10-17 21:11:52', '2026-10-17 21:11:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (19, '2026-10-17 21:12:53', '2026-10-17 21:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (20, '2026-10-17 21:13:53', '2026-10-17 21:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (21, '2026-10-17 21:14:52', '2026-10-17 21:14:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (22, '2026-10-17 21:15:53', '2026-10-17 21:15:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (23, '2026-10-17 21:16:53', '2026-10-17 21:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (24, '2026-10-17 21:17:52', '2026-10-17 21:17:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (25, '2026-10-17 21:18:53', '2026-10-17 21:18:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (26, '2026-10-17 21:19:53', '2026-10-17 21:19:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (27, '2026-10-17 21:20:53', '2026-10-17 21:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (28, '2026-10-17 21:21:52', '2026-10-17 21:21:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (29, '2026-10-17 21:22:52', '2026-10-17 21:22:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (30, '2026-10-17 21:23:53', '2026-10-17 21:23:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (31, '2026-10-17 21:24:53', '2026-10-17 21:24:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (32, '2026-10-17 21:25:52', '2026-10-17 21:25:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (33, '2026-10-17 21:26:52', '2026-10-17 21:26:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (34, '2026-10-17 21:27:53', '2026-10-17 21:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (35, '2026-10-17 21:28:53', '2026-10-17 21:28:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (36, '2026-10-17 21:29:53', '2026-10-17 21:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (37, '2026-10-17 21:30:52', '2026-10-17 21:30:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (38, '2026-10-17 21:31:53', '2026-10-17 21:31:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (39, '2026-10-17 21:32:53', '2026-10-17 21:32:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (40, '2026-10-17 21:33:53', '2026-10-17 21:33:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (41, '2026-10-17 21:34:53', '2026-10-17 21:34:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (42, '2026-10-17 21:35:53', '2026-10-17 21:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (43, '2026-10-17 21:36:53', '2026-10-17 21:36:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (44, '2026-10-17 21:37:52', '2026-10-17 21:37:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (45, '2026-10-17 21:38:52', '2026-10-17 21:38:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (46, '2026-10-17 21:39:53', '2026-10-17 21:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (47, '2026-10-17 21:40:53', '2026-10-17 21:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (48, '2026-10-17 21:41:53', '2026-10-17 21:41:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (49, '2026-10-17 21:42:52', '2026-10-17 21:42:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (50, '2026-10-17 21:43:53', '2026-10-17 21:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (51, '2026-10-17 21:44:53', '2026-10-17 21:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (52, '2026-10-17 21:45:52', '2026-10-17 21:45:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (53, '2026-10-17 21:46:52', '2026-10-17 21:46:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (54, '2026-10-17 21:47:52', '2026-10-17 21:47:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (55, '2026-10-17 21:48:52', '2026-10-17 21:48:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (56, '2026-10-17 21:49:53', '2026-10-17 21:49:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (57, '2026-10-17 21:50:53', '2026-10-17 21:50:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (58, '2026-10-17 21:51:53', '2026-10-17 21:51:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (59, '2026-10-17 21:52:53', '2026-10-17 21:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (60, '2026-10-17 21:53:52', '2026-10-17 21:53:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (61, '2026-10-17 21:54:53', '2026-10-17 21:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (62, '2026-10-17 21:55:53', '2026-10-17 21:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (63, '2026-10-17 21:56:53', '2026-10-17 21:56:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (64, '2026-10-17 21:57:53', '2026-10-17 21:57:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (65, '2026-10-17 21:58:52', '2026-10-17 21:58:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (66, '2026-10-17 21:59:53', '2026-10-17 21:59:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (67, '2026-10-17 22:00:52', '2026-10-17 22:00:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (68, '2026-10-17 22:01:53', '2026-10-17 22:01:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (69, '2026-10-17 22:02:53', '2026-10-17 22:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (70, '2026-10-17 22:03:53', '2026-10-17 22:03:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (71, '2026-10-17 22:04:52', '2026-10-17 22:04:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (72, '2026-10-17 22:05:52', '2026-10-17 22:05:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (73, '2026-10-17 22:06:53', '2026-10-17 22:06:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (74, '2026-10-17 22:07:53', '2026-10-17 22:07:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (75, '2026-10-17 22:08:53', '2026-10-17 22:08:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (76, '2026-10-17 22:09:53', '2026-10-17 22:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (77, '2026-10-17 22:10:52', '2026-10-17 22:10:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (78, '2026-10-17 22:11:52', '2026-10-17 22:11:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (79, '2026-10-17 22:12:53', '2026-10-17 22:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (80, '2026-10-17 22:13:52', '2026-10-17 22:13:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (81, '2026-10-17 22:14:52', '2026-10-17 22:14:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (82, '2026-10-17 22:15:52', '2026-10-17 22:15:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (83, '2026-10-17 22:16:53', '2026-10-17 22:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (84, '2026-10-17 22:17:53', '2026-10-17 22:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (85, '2026-10-17 22:18:53', '2026-10-17 22:18:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (86, '2026-10-17 22:19:52', '2026-10-17 22:19:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (87, '2026-10-17 22:20:53', '2026-10-17 22:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (88, '2026-10-17 22:21:53', '2026-10-17 22:21:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (89, '2026-10-17 22:22:53', '2026-10-17 22:22:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (90, '2026-10-17 22:23:52', '2026-10-17 22:23:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (91, '2026-10-17 22:24:52', '2026-10-17 22:24:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (92, '2026-10-17 22:25:53', '2026-10-17 22:25:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (93, '2026-10-17 22:26:53', '2026-10-17 22:26:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (94, '2026-10-17 22:27:53', '2026-10-17 22:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (95, '2026-10-17 22:28:52', '2026-10-17 22:28:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (96, '2026-10-17 22:29:53', '2026-10-17 22:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (97, '2026-10-17 22:30:53', '2026-10-17 22:30:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (98, '2026-10-17 22:31:52', '2026-10-17 22:31:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (99, '2026-10-17 22:32:53', '2026-10-17 22:32:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (100, '2026-10-17 22:33:53', '2026-10-17 22:33:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (101, '2026-10-17 22:34:53', '2026-10-17 22:34:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (102, '2026-10-17 22:35:53', '2026-10-17 22:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (103, '2026-10-17 22:36:52', '2026-10-17 22:36:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (104, '2026-10-17 22:37:52', '2026-10-17 22:37:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (105, '2026-10-17 22:38:52', '2026-10-17 22:38:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (106, '2026-10-17 22:39:53', '2026-10-17 22:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (107, '2026-10-17 22:40:52', '2026-10-17 22:40:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (108, '2026-10-17 22:41:52', '2026-10-17 22:41:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (109, '2026-10-17 22:42:52', '2026-10-17 22:42:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (110, '2026-10-17 22:43:52', '2026-10-17 22:43:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (111, '2026-10-17 22:44:52', '2026-10-17 22:44:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (112, '2026-10-17 22:45:52', '2026-10-17 22:45:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (113, '2026-10-17 22:46:53', '2026-10-17 22:46:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (114, '2026-10-17 22:47:52', '2026-10-17 22:47:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (115, '2026-10-17 22:48:52', '2026-10-17 22:48:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (116, '2026-10-17 22:49:53', '2026-10-17 22:49:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (117, '2026-10-17 22:50:52', '2026-10-17 22:50:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (118, '2026-10-17 22:51:53', '2026-10-17 22:51:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (119, '2026-10-17 22:52:53', '2026-10-17 22:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (120, '2026-10-17 22:53:53', '2026-10-17 22:53:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (121, '2026-10-17 22:54:53', '2026-10-17 22:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (122, '2026-10-17 22:55:53', '2026-10-17 22:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (123, '2026-10-17 22:56:52', '2026-10-17 22:56:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (124, '2026-10-17 22:57:52', '2026-10-17 22:57:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (125, '2026-10-17 22:58:52', '2026-10-17 22:58:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (126, '2026-10-17 22:59:53', '2026-10-17 22:59:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (127, '2026-10-17 23:00:52', '2026-10-17 23:00:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (128, '2026-10-17 23:01:53', '2026-10-17 23:01:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (129, '2026-10-17 23:02:53', '2026-10-17 23:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (130, '2026-10-17 23:03:53', '2026-10-17 23:03:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (131, '2026-10-17 23:04:52', '2026-10-17 23:04:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (132, '2026-10-17 23:05:53', '2026-10-17 23:05:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (133, '2026-10-17 23:06:53', '2026-10-17 23:06:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (134, '2026-10-17 23:07:52', '2026-10-17 23:07:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (135, '2026-10-17 23:08:52', '2026-10-17 23:08:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (136, '2026-10-17 23:09:52', '2026-10-17 23:09:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (137, '2026-10-17 23:10:52', '2026-10-17 23:10:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (138, '2026-10-17 23:11:53', '2026-10-17 23:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (139, '2026-10-17 23:12:53', '2026-10-17 23:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (140, '2026-10-17 23:13:53', '2026-10-17 23:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (141, '2026-10-17 23:14:52', '2026-10-17 23:14:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (142, '2026-10-17 23:15:52', '2026-10-17 23:15:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (143, '2026-10-17 23:16:53', '2026-10-17 23:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (144, '2026-10-17 23:17:53', '2026-10-17 23:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (145, '2026-10-17 23:18:53', '2026-10-17 23:18:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (146, '2026-10-17 23:19:53', '2026-10-17 23:19:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (147, '2026-10-17 23:20:53', '2026-10-17 23:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (148, '2026-10-17 23:21:52', '2026-10-17 23:21:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (149, '2026-10-17 23:22:52', '2026-10-17 23:22:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (150, '2026-10-17 23:23:53', '2026-10-17 23:23:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (151, '2026-10-17 23:24:52', '2026-10-17 23:24:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (152, '2026-10-17 23:25:53', '2026-10-17 23:25:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (153, '2026-10-17 23:26:53', '2026-10-17 23:26:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (154, '2026-10-17 23:27:53', '2026-10-17 23:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (155, '2026-10-17 23:28:52', '2026-10-17 23:28:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (156, '2026-10-17 23:29:52', '2026-10-17 23:29:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (157, '2026-10-17 23:30:52', '2026-10-17 23:30:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (158, '2026-10-17 23:31:52', '2026-10-17 23:31:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (159, '2026-10-17 23:32:52', '2026-10-17 23:32:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (160, '2026-10-17 23:33:52', '2026-10-17 23:33:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (161, '2026-10-17 23:34:52', '2026-10-17 23:34:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (162, '2026-10-17 23:35:53', '2026-10-17 23:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (163, '2026-10-17 23:36:53', '2026-10-17 23:36:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (164, '2026-10-17 23:37:53', '2026-10-17 23:37:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (165, '2026-10-17 23:38:53', '2026-10-17 23:38:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (166, '2026-10-17 23:39:52', '2026-10-17 23:39:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (167, '2026-10-17 23:40:53', '2026-10-17 23:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (168, '2026-10-17 23:41:53', '2026-10-17 23:41:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (169, '2026-10-17 23:42:52', '2026-10-17 23:42:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (170, '2026-10-17 23:43:52', '2026-10-17 23:43:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (171, '2026-10-17 23:44:53', '2026-10-17 23:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (172, '2026-10-17 23:45:52', '2026-10-17 23:45:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (173, '2026-10-17 23:46:52', '2026-10-17 23:46:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (174, '2026-10-17 23:47:53', '2026-10-17 23:47:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (175, '2026-10-17 23:48:52', '2026-10-17 23:48:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (176, '2026-10-17 23:49:53', '2026-10-17 23:49:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (177, '2026-10-17 23:50:53', '2026-10-17 23:50:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (178, '2026-10-17 23:51:52', '2026-10-17 23:51:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (179, '2026-10-17 23:52:53', '2026-10-17 23:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (180, '2026-10-17 23:53:52', '2026-10-17 23:53:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (181, '2026-10-17 23:54:53', '2026-10-17 23:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (182, '2026-10-17 23:55:53', '2026-10-17 23:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (183, '2026-10-17 23:56:53', '2026-10-17 23:56:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (184, '2026-10-17 23:57:53', '2026-10-17 23:57:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (185, '2026-10-17 23:58:52', '2026-10-17 23:58:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (186, '2026-10-17 23:59:52', '2026-10-17 23:59:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (187, '2026-10-18 00:00:53', '2026-10-18 00:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (188, '2026-10-18 00:01:52', '2026-10-18 00:01:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (189, '2026-10-18 00:02:53', '2026-10-18 00:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (190, '2026-10-18 00:03:52', '2026-10-18 00:03:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (191, '2026-10-18 00:04:52', '2026-10-18 00:04:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (192, '2026-10-18 00:05:53', '2026-10-18 00:05:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (193, '2026-10-18 00:06:52', '2026-10-18 00:06:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (194, '2026-10-18 00:07:53', '2026-10-18 00:07:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (195, '2026-10-18 00:08:53', '2026-10-18 00:08:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (196, '2026-10-18 00:09:53', '2026-10-18 00:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (197, '2026-10-18 00:10:52', '2026-10-18 00:10:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (198, '2026-10-18 00:11:53', '2026-10-18 00:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (199, '2026-10-18 00:12:53', '2026-10-18 00:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (200, '2026-10-18 00:13:52', '2026-10-18 00:13:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (201, '2026-10-18 00:14:53', '2026-10-18 00:14:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (202, '2026-10-18 00:15:52', '2026-10-18 00:15:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (203, '2026-10-18 00:16:53', '2026-10-18 00:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (204, '2026-10-18 00:17:53', '2026-10-18 00:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (205, '2026-10-18 00:18:53', '2026-10-18 00:18:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (206, '2026-10-18 00:19:53', '2026-10-18 00:19:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (207, '2026-10-18 00:20:52', '2026-10-18 00:20:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (208, '2026-10-18 00:21:52', '2026-10-18 00:21:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (209, '2026-10-18 00:22:52', '2026-10-18 00:22:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (210, '2026-10-18 00:23:53', '2026-10-18 00:23:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (211, '2026-10-18 00:24:52', '2026-10-18 00:24:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (212, '2026-10-18 00:25:53', '2026-10-18 00:25:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (213, '2026-10-18 00:26:52', '2026-10-18 00:26:52', 1, 1);
INSERT INTO `sys_task_logs` VALUES (214, '2026-10-18 11:04:01', '2026-10-18 11:04:01', 1, 1);
INSERT INTO `sys_task_logs` VALUES (215, '2026-10-18 11:04:54', '2026-10-18 11:04:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (216, '2026-10-18 11:05:54', '2026-10-18 11:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (217, '2026-10-18 11:06:54', '2026-10-18 11:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (218, '2026-10-18 11:07:53', '2026-10-18 11:07:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (219, '2026-10-18 11:08:54', '2026-10-18 11:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (220, '2026-10-18 11:09:54', '2026-10-18 11:09:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (221, '2026-10-18 11:10:54', '2026-10-18 11:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (222, '2026-10-18 11:11:54', '2026-10-18 11:11:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (223, '2026-10-18 11:12:54', '2026-10-18 11:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (224, '2026-10-18 11:13:53', '2026-10-18 11:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (225, '2026-10-18 11:14:53', '2026-10-18 11:14:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (226, '2026-10-18 11:15:53', '2026-10-18 11:15:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (227, '2026-10-18 11:16:53', '2026-10-18 11:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (228, '2026-10-18 11:17:53', '2026-10-18 11:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (229, '2026-10-18 11:18:54', '2026-10-18 11:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (230, '2026-10-18 11:19:54', '2026-10-18 11:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (231, '2026-10-18 11:20:53', '2026-10-18 11:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (232, '2026-10-18 11:21:53', '2026-10-18 11:21:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (233, '2026-10-18 11:22:53', '2026-10-18 11:22:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (234, '2026-10-18 11:23:54', '2026-10-18 11:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (235, '2026-10-18 11:24:53', '2026-10-18 11:24:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (236, '2026-10-18 11:25:54', '2026-10-18 11:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (237, '2026-10-18 11:26:54', '2026-10-18 11:26:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (238, '2026-10-18 11:27:53', '2026-10-18 11:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (239, '2026-10-18 11:28:53', '2026-10-18 11:28:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (240, '2026-10-18 11:29:54', '2026-10-18 11:29:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (241, '2026-10-18 11:30:53', '2026-10-18 11:30:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (242, '2026-10-18 11:31:54', '2026-10-18 11:31:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (243, '2026-10-18 11:32:54', '2026-10-18 11:32:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (244, '2026-10-18 11:33:54', '2026-10-18 11:33:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (245, '2026-10-18 11:34:53', '2026-10-18 11:34:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (246, '2026-10-18 11:35:53', '2026-10-18 11:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (247, '2026-10-18 11:36:54', '2026-10-18 11:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (248, '2026-10-18 11:37:54', '2026-10-18 11:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (249, '2026-10-18 11:38:54', '2026-10-18 11:38:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (250, '2026-10-18 11:39:53', '2026-10-18 11:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (251, '2026-10-18 11:40:54', '2026-10-18 11:40:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (252, '2026-10-18 11:41:53', '2026-10-18 11:41:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (253, '2026-10-18 11:42:53', '2026-10-18 11:42:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (254, '2026-10-18 11:43:54', '2026-10-18 11:43:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (255, '2026-10-18 11:44:54', '2026-10-18 11:44:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (256, '2026-10-18 11:45:54', '2026-10-18 11:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (257, '2026-10-18 11:46:54', '2026-10-18 11:46:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (258, '2026-10-18 11:47:53', '2026-10-18 11:47:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (259, '2026-10-18 11:48:53', '2026-10-18 11:48:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (260, '2026-10-18 11:49:53', '2026-10-18 11:49:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (261, '2026-10-18 11:50:53', '2026-10-18 11:50:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (262, '2026-10-18 11:51:53', '2026-10-18 11:51:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (263, '2026-10-18 11:52:54', '2026-10-18 11:52:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (264, '2026-10-18 11:53:53', '2026-10-18 11:53:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (265, '2026-10-18 11:54:53', '2026-10-18 11:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (266, '2026-10-18 11:55:53', '2026-10-18 11:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (267, '2026-10-18 11:56:54', '2026-10-18 11:56:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (268, '2026-10-18 11:57:54', '2026-10-18 11:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (269, '2026-10-18 11:58:54', '2026-10-18 11:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (270, '2026-10-18 11:59:54', '2026-10-18 11:59:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (271, '2026-10-18 12:00:53', '2026-10-18 12:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (272, '2026-10-18 12:01:54', '2026-10-18 12:01:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (273, '2026-10-18 12:02:53', '2026-10-18 12:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (274, '2026-10-18 12:03:54', '2026-10-18 12:03:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (275, '2026-10-18 12:04:54', '2026-10-18 12:04:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (276, '2026-10-18 12:05:54', '2026-10-18 12:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (277, '2026-10-18 12:06:54', '2026-10-18 12:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (278, '2026-10-18 12:07:54', '2026-10-18 12:07:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (279, '2026-10-18 12:08:53', '2026-10-18 12:08:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (280, '2026-10-18 12:09:53', '2026-10-18 12:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (281, '2026-10-18 12:10:54', '2026-10-18 12:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (282, '2026-10-18 12:11:53', '2026-10-18 12:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (283, '2026-10-18 12:12:53', '2026-10-18 12:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (284, '2026-10-18 12:13:54', '2026-10-18 12:13:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (285, '2026-10-18 12:14:54', '2026-10-18 12:14:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (286, '2026-10-18 12:15:54', '2026-10-18 12:15:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (287, '2026-10-18 12:16:53', '2026-10-18 12:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (288, '2026-10-18 12:17:53', '2026-10-18 12:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (289, '2026-10-18 12:18:53', '2026-10-18 12:18:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (290, '2026-10-18 12:19:54', '2026-10-18 12:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (291, '2026-10-18 12:20:54', '2026-10-18 12:20:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (292, '2026-10-18 12:21:54', '2026-10-18 12:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (293, '2026-10-18 12:22:53', '2026-10-18 12:22:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (294, '2026-10-18 12:23:54', '2026-10-18 12:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (295, '2026-10-18 12:24:53', '2026-10-18 12:24:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (296, '2026-10-18 12:25:54', '2026-10-18 12:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (297, '2026-10-18 12:26:54', '2026-10-18 12:26:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (298, '2026-10-18 12:27:53', '2026-10-18 12:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (299, '2026-10-18 12:28:54', '2026-10-18 12:28:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (300, '2026-10-18 12:29:54', '2026-10-18 12:29:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (301, '2026-10-18 12:30:54', '2026-10-18 12:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (302, '2026-10-18 12:31:54', '2026-10-18 12:31:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (303, '2026-10-18 12:32:53', '2026-10-18 12:32:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (304, '2026-10-18 12:33:54', '2026-10-18 12:33:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (305, '2026-10-18 12:34:53', '2026-10-18 12:34:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (306, '2026-10-18 12:35:54', '2026-10-18 12:35:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (307, '2026-10-18 12:36:54', '2026-10-18 12:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (308, '2026-10-18 12:37:54', '2026-10-18 12:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (309, '2026-10-18 12:38:54', '2026-10-18 12:38:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (310, '2026-10-18 12:39:54', '2026-10-18 12:39:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (311, '2026-10-18 12:40:54', '2026-10-18 12:40:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (312, '2026-10-18 12:41:54', '2026-10-18 12:41:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (313, '2026-10-18 12:42:53', '2026-10-18 12:42:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (314, '2026-10-18 12:43:53', '2026-10-18 12:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (315, '2026-10-18 12:44:53', '2026-10-18 12:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (316, '2026-10-18 12:45:54', '2026-10-18 12:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (317, '2026-10-18 12:46:54', '2026-10-18 12:46:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (318, '2026-10-18 12:47:54', '2026-10-18 12:47:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (319, '2026-10-18 12:48:54', '2026-10-18 12:48:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (320, '2026-10-18 12:49:54', '2026-10-18 12:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (321, '2026-10-18 12:50:53', '2026-10-18 12:50:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (322, '2026-10-18 12:51:54', '2026-10-18 12:51:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (323, '2026-10-18 12:52:54', '2026-10-18 12:52:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (324, '2026-10-18 12:53:54', '2026-10-18 12:53:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (325, '2026-10-18 12:54:54', '2026-10-18 12:54:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (326, '2026-10-18 12:55:54', '2026-10-18 12:55:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (327, '2026-10-18 12:56:53', '2026-10-18 12:56:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (328, '2026-10-18 12:57:54', '2026-10-18 12:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (329, '2026-10-18 12:58:54', '2026-10-18 12:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (330, '2026-10-18 12:59:53', '2026-10-18 12:59:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (331, '2026-10-18 13:00:53', '2026-10-18 13:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (332, '2026-10-18 13:01:54', '2026-10-18 13:01:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (333, '2026-10-18 13:02:53', '2026-10-18 13:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (334, '2026-10-18 13:03:53', '2026-10-18 13:03:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (335, '2026-10-18 13:04:53', '2026-10-18 13:04:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (336, '2026-10-18 13:05:54', '2026-10-18 13:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (337, '2026-10-18 13:06:53', '2026-10-18 13:06:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (338, '2026-10-18 13:07:55', '2026-10-18 13:07:55', 1, 1);
INSERT INTO `sys_task_logs` VALUES (339, '2026-10-18 13:08:54', '2026-10-18 13:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (340, '2026-10-18 13:09:53', '2026-10-18 13:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (341, '2026-10-18 13:10:53', '2026-10-18 13:10:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (342, '2026-10-18 13:11:53', '2026-10-18 13:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (343, '2026-10-18 13:12:54', '2026-10-18 13:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (344, '2026-10-18 13:13:54', '2026-10-18 13:13:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (345, '2026-10-18 13:14:54', '2026-10-18 13:14:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (346, '2026-10-18 13:15:54', '2026-10-18 13:15:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (347, '2026-10-18 13:16:54', '2026-10-18 13:16:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (348, '2026-10-18 13:17:54', '2026-10-18 13:17:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (349, '2026-10-18 13:18:54', '2026-10-18 13:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (350, '2026-10-18 13:19:54', '2026-10-18 13:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (351, '2026-10-18 13:20:54', '2026-10-18 13:20:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (352, '2026-10-18 13:21:54', '2026-10-18 13:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (353, '2026-10-18 13:22:54', '2026-10-18 13:22:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (354, '2026-10-18 13:23:54', '2026-10-18 13:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (355, '2026-10-18 13:24:54', '2026-10-18 13:24:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (356, '2026-10-18 13:25:54', '2026-10-18 13:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (357, '2026-10-18 13:26:54', '2026-10-18 13:26:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (358, '2026-10-18 13:27:54', '2026-10-18 13:27:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (359, '2026-10-18 13:28:54', '2026-10-18 13:28:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (360, '2026-10-18 13:29:53', '2026-10-18 13:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (361, '2026-10-18 13:30:53', '2026-10-18 13:30:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (362, '2026-10-18 13:31:53', '2026-10-18 13:31:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (363, '2026-10-18 13:32:53', '2026-10-18 13:32:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (364, '2026-10-18 13:33:53', '2026-10-18 13:33:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (365, '2026-10-18 13:34:54', '2026-10-18 13:34:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (366, '2026-10-18 13:35:54', '2026-10-18 13:35:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (367, '2026-10-18 13:36:54', '2026-10-18 13:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (368, '2026-10-18 13:37:54', '2026-10-18 13:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (369, '2026-10-18 13:38:54', '2026-10-18 13:38:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (370, '2026-10-18 13:39:54', '2026-10-18 13:39:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (371, '2026-10-18 13:40:54', '2026-10-18 13:40:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (372, '2026-10-18 13:41:54', '2026-10-18 13:41:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (373, '2026-10-18 13:42:54', '2026-10-18 13:42:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (374, '2026-10-18 13:43:55', '2026-10-18 13:43:55', 1, 1);
INSERT INTO `sys_task_logs` VALUES (375, '2026-10-18 13:44:54', '2026-10-18 13:44:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (376, '2026-10-18 13:45:54', '2026-10-18 13:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (377, '2026-10-18 13:46:54', '2026-10-18 13:46:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (378, '2026-10-18 13:47:53', '2026-10-18 13:47:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (379, '2026-10-18 13:48:54', '2026-10-18 13:48:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (380, '2026-10-18 13:49:53', '2026-10-18 13:49:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (381, '2026-10-18 13:50:54', '2026-10-18 13:50:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (382, '2026-10-18 13:51:54', '2026-10-18 13:51:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (383, '2026-10-18 13:52:54', '2026-10-18 13:52:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (384, '2026-10-18 13:53:53', '2026-10-18 13:53:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (385, '2026-10-18 13:54:54', '2026-10-18 13:54:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (386, '2026-10-18 13:55:54', '2026-10-18 13:55:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (387, '2026-10-18 13:56:54', '2026-10-18 13:56:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (388, '2026-10-18 13:57:54', '2026-10-18 13:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (389, '2026-10-18 13:58:54', '2026-10-18 13:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (390, '2026-10-18 13:59:54', '2026-10-18 13:59:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (391, '2026-10-18 14:00:53', '2026-10-18 14:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (392, '2026-10-18 14:01:53', '2026-10-18 14:01:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (393, '2026-10-18 14:02:53', '2026-10-18 14:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (394, '2026-10-18 14:03:53', '2026-10-18 14:03:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (395, '2026-10-18 14:04:53', '2026-10-18 14:04:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (396, '2026-10-18 14:05:54', '2026-10-18 14:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (397, '2026-10-18 14:06:53', '2026-10-18 14:06:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (398, '2026-10-18 14:07:54', '2026-10-18 14:07:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (399, '2026-10-18 14:08:54', '2026-10-18 14:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (400, '2026-10-18 14:09:54', '2026-10-18 14:09:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (401, '2026-10-18 14:10:54', '2026-10-18 14:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (402, '2026-10-18 14:11:54', '2026-10-18 14:11:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (403, '2026-10-18 14:12:54', '2026-10-18 14:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (404, '2026-10-18 14:13:53', '2026-10-18 14:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (405, '2026-10-18 14:14:54', '2026-10-18 14:14:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (406, '2026-10-18 14:15:53', '2026-10-18 14:15:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (407, '2026-10-18 14:16:53', '2026-10-18 14:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (408, '2026-10-18 14:17:54', '2026-10-18 14:17:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (409, '2026-10-18 14:18:54', '2026-10-18 14:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (410, '2026-10-18 14:19:54', '2026-10-18 14:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (411, '2026-10-18 14:20:53', '2026-10-18 14:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (412, '2026-10-18 14:21:54', '2026-10-18 14:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (413, '2026-10-18 14:22:54', '2026-10-18 14:22:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (414, '2026-10-18 14:23:54', '2026-10-18 14:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (415, '2026-10-18 14:24:53', '2026-10-18 14:24:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (416, '2026-10-18 14:25:54', '2026-10-18 14:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (417, '2026-10-18 14:26:53', '2026-10-18 14:26:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (418, '2026-10-18 14:27:53', '2026-10-18 14:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (419, '2026-10-18 14:28:53', '2026-10-18 14:28:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (420, '2026-10-18 14:29:53', '2026-10-18 14:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (421, '2026-10-18 14:30:53', '2026-10-18 14:30:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (422, '2026-10-18 14:31:53', '2026-10-18 14:31:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (423, '2026-10-18 14:32:54', '2026-10-18 14:32:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (424, '2026-10-18 14:33:54', '2026-10-18 14:33:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (425, '2026-10-18 14:34:54', '2026-10-18 14:34:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (426, '2026-10-18 14:35:54', '2026-10-18 14:35:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (427, '2026-10-18 14:36:54', '2026-10-18 14:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (428, '2026-10-18 14:37:54', '2026-10-18 14:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (429, '2026-10-18 14:38:54', '2026-10-18 14:38:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (430, '2026-10-18 14:39:53', '2026-10-18 14:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (431, '2026-10-18 14:40:53', '2026-10-18 14:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (432, '2026-10-18 14:41:53', '2026-10-18 14:41:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (433, '2026-10-18 14:42:54', '2026-10-18 14:42:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (434, '2026-10-18 14:43:53', '2026-10-18 14:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (435, '2026-10-18 14:44:53', '2026-10-18 14:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (436, '2026-10-18 14:45:53', '2026-10-18 14:45:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (437, '2026-10-18 14:46:54', '2026-10-18 14:46:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (438, '2026-10-18 14:47:54', '2026-10-18 14:47:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (439, '2026-10-18 14:48:53', '2026-10-18 14:48:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (440, '2026-10-18 14:49:54', '2026-10-18 14:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (441, '2026-10-18 14:50:54', '2026-10-18 14:50:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (442, '2026-10-18 14:51:53', '2026-10-18 14:51:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (443, '2026-10-18 14:52:53', '2026-10-18 14:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (444, '2026-10-18 14:53:54', '2026-10-18 14:53:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (445, '2026-10-18 14:54:54', '2026-10-18 14:54:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (446, '2026-10-18 14:55:53', '2026-10-18 14:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (447, '2026-10-18 14:56:54', '2026-10-18 14:56:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (448, '2026-10-18 14:57:53', '2026-10-18 14:57:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (449, '2026-10-18 14:58:54', '2026-10-18 14:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (450, '2026-10-18 14:59:53', '2026-10-18 14:59:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (451, '2026-10-18 15:00:54', '2026-10-18 15:00:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (452, '2026-10-18 15:01:53', '2026-10-18 15:01:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (453, '2026-10-18 15:02:53', '2026-10-18 15:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (454, '2026-10-18 15:03:54', '2026-10-18 15:03:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (455, '2026-10-18 15:04:53', '2026-10-18 15:04:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (456, '2026-10-18 15:05:53', '2026-10-18 15:05:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (457, '2026-10-18 15:06:54', '2026-10-18 15:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (458, '2026-10-18 15:07:53', '2026-10-18 15:07:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (459, '2026-10-18 15:08:54', '2026-10-18 15:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (460, '2026-10-18 15:09:53', '2026-10-18 15:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (461, '2026-10-18 15:10:54', '2026-10-18 15:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (462, '2026-10-18 15:11:53', '2026-10-18 15:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (463, '2026-10-18 15:12:53', '2026-10-18 15:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (464, '2026-10-18 15:13:53', '2026-10-18 15:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (465, '2026-10-18 15:14:53', '2026-10-18 15:14:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (466, '2026-10-18 15:15:53', '2026-10-18 15:15:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (467, '2026-10-18 15:16:54', '2026-10-18 15:16:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (468, '2026-10-18 15:17:53', '2026-10-18 15:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (469, '2026-10-18 15:18:54', '2026-10-18 15:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (470, '2026-10-18 15:19:54', '2026-10-18 15:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (471, '2026-10-18 15:20:53', '2026-10-18 15:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (472, '2026-10-18 15:21:54', '2026-10-18 15:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (473, '2026-10-18 15:22:53', '2026-10-18 15:22:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (474, '2026-10-18 15:23:54', '2026-10-18 15:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (475, '2026-10-18 15:24:54', '2026-10-18 15:24:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (476, '2026-10-18 15:25:54', '2026-10-18 15:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (477, '2026-10-18 15:26:53', '2026-10-18 15:26:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (478, '2026-10-18 15:27:54', '2026-10-18 15:27:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (479, '2026-10-18 15:28:54', '2026-10-18 15:28:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (480, '2026-10-18 15:29:53', '2026-10-18 15:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (481, '2026-10-18 15:30:54', '2026-10-18 15:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (482, '2026-10-18 15:31:54', '2026-10-18 15:31:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (483, '2026-10-18 15:32:53', '2026-10-18 15:32:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (484, '2026-10-18 15:33:53', '2026-10-18 15:33:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (485, '2026-10-18 15:34:54', '2026-10-18 15:34:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (486, '2026-10-18 15:35:54', '2026-10-18 15:35:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (487, '2026-10-18 15:36:54', '2026-10-18 15:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (488, '2026-10-18 15:37:53', '2026-10-18 15:37:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (489, '2026-10-18 15:38:53', '2026-10-18 15:38:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (490, '2026-10-18 15:39:53', '2026-10-18 15:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (491, '2026-10-18 15:40:53', '2026-10-18 15:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (492, '2026-10-18 15:41:54', '2026-10-18 15:41:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (493, '2026-10-18 15:42:53', '2026-10-18 15:42:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (494, '2026-10-18 15:43:53', '2026-10-18 15:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (495, '2026-10-18 15:44:53', '2026-10-18 15:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (496, '2026-10-18 15:45:54', '2026-10-18 15:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (497, '2026-10-18 15:46:54', '2026-10-18 15:46:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (498, '2026-10-18 15:47:54', '2026-10-18 15:47:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (499, '2026-10-18 15:48:54', '2026-10-18 15:48:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (500, '2026-10-18 15:49:54', '2026-10-18 15:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (501, '2026-10-18 15:50:53', '2026-10-18 15:50:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (502, '2026-10-18 15:51:54', '2026-10-18 15:51:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (503, '2026-10-18 15:52:53', '2026-10-18 15:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (504, '2026-10-18 15:53:53', '2026-10-18 15:53:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (505, '2026-10-18 15:54:54', '2026-10-18 15:54:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (506, '2026-10-18 15:55:53', '2026-10-18 15:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (507, '2026-10-18 15:56:54', '2026-10-18 15:56:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (508, '2026-10-18 15:57:54', '2026-10-18 15:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (509, '2026-10-18 15:58:53', '2026-10-18 15:58:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (510, '2026-10-18 15:59:54', '2026-10-18 15:59:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (511, '2026-10-18 16:00:53', '2026-10-18 16:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (512, '2026-10-18 16:01:53', '2026-10-18 16:01:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (513, '2026-10-18 16:02:54', '2026-10-18 16:02:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (514, '2026-10-18 16:03:55', '2026-10-18 16:03:55', 1, 1);
INSERT INTO `sys_task_logs` VALUES (515, '2026-10-18 16:04:53', '2026-10-18 16:04:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (516, '2026-10-18 16:05:54', '2026-10-18 16:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (517, '2026-10-18 16:06:53', '2026-10-18 16:06:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (518, '2026-10-18 16:07:54', '2026-10-18 16:07:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (519, '2026-10-18 16:08:54', '2026-10-18 16:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (520, '2026-10-18 16:09:54', '2026-10-18 16:09:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (521, '2026-10-18 16:10:54', '2026-10-18 16:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (522, '2026-10-18 16:11:54', '2026-10-18 16:11:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (523, '2026-10-18 16:12:54', '2026-10-18 16:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (524, '2026-10-18 16:13:54', '2026-10-18 16:13:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (525, '2026-10-18 16:14:54', '2026-10-18 16:14:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (526, '2026-10-18 16:15:53', '2026-10-18 16:15:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (527, '2026-10-18 16:16:53', '2026-10-18 16:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (528, '2026-10-18 16:17:53', '2026-10-18 16:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (529, '2026-10-18 16:18:54', '2026-10-18 16:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (530, '2026-10-18 16:19:54', '2026-10-18 16:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (531, '2026-10-18 16:20:53', '2026-10-18 16:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (532, '2026-10-18 16:21:54', '2026-10-18 16:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (533, '2026-10-18 16:22:54', '2026-10-18 16:22:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (534, '2026-10-18 16:23:54', '2026-10-18 16:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (535, '2026-10-18 16:24:53', '2026-10-18 16:24:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (536, '2026-10-18 16:25:54', '2026-10-18 16:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (537, '2026-10-18 16:26:53', '2026-10-18 16:26:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (538, '2026-10-18 16:27:54', '2026-10-18 16:27:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (539, '2026-10-18 16:28:53', '2026-10-18 16:28:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (540, '2026-10-18 16:29:54', '2026-10-18 16:29:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (541, '2026-10-18 16:30:54', '2026-10-18 16:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (542, '2026-10-18 16:31:53', '2026-10-18 16:31:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (543, '2026-10-18 16:32:53', '2026-10-18 16:32:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (544, '2026-10-18 16:33:53', '2026-10-18 16:33:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (545, '2026-10-18 16:34:53', '2026-10-18 16:34:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (546, '2026-10-18 16:35:53', '2026-10-18 16:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (547, '2026-10-18 16:36:54', '2026-10-18 16:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (548, '2026-10-18 16:37:54', '2026-10-18 16:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (549, '2026-10-18 16:38:54', '2026-10-18 16:38:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (550, '2026-10-18 16:39:53', '2026-10-18 16:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (551, '2026-10-18 16:40:53', '2026-10-18 16:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (552, '2026-10-18 16:41:54', '2026-10-18 16:41:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (553, '2026-10-18 16:42:53', '2026-10-18 16:42:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (554, '2026-10-18 16:43:53', '2026-10-18 16:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (555, '2026-10-18 16:44:53', '2026-10-18 16:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (556, '2026-10-18 16:45:54', '2026-10-18 16:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (557, '2026-10-18 16:46:53', '2026-10-18 16:46:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (558, '2026-10-18 16:47:54', '2026-10-18 16:47:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (559, '2026-10-18 16:48:53', '2026-10-18 16:48:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (560, '2026-10-18 16:49:53', '2026-10-18 16:49:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (561, '2026-10-18 16:50:54', '2026-10-18 16:50:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (562, '2026-10-18 16:51:54', '2026-10-18 16:51:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (563, '2026-10-18 16:52:54', '2026-10-18 16:52:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (564, '2026-10-18 16:53:54', '2026-10-18 16:53:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (565, '2026-10-18 16:54:54', '2026-10-18 16:54:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (566, '2026-10-18 16:55:53', '2026-10-18 16:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (567, '2026-10-18 16:56:53', '2026-10-18 16:56:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (568, '2026-10-18 16:57:53', '2026-10-18 16:57:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (569, '2026-10-18 16:58:54', '2026-10-18 16:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (570, '2026-10-18 16:59:54', '2026-10-18 16:59:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (571, '2026-10-18 17:00:53', '2026-10-18 17:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (572, '2026-10-18 17:01:54', '2026-10-18 17:01:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (573, '2026-10-18 17:02:54', '2026-10-18 17:02:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (574, '2026-10-18 17:03:54', '2026-10-18 17:03:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (575, '2026-10-18 17:04:53', '2026-10-18 17:04:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (576, '2026-10-18 17:05:53', '2026-10-18 17:05:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (577, '2026-10-18 17:06:54', '2026-10-18 17:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (578, '2026-10-18 17:07:54', '2026-10-18 17:07:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (579, '2026-10-18 17:08:54', '2026-10-18 17:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (580, '2026-10-18 17:09:54', '2026-10-18 17:09:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (581, '2026-10-18 17:10:53', '2026-10-18 17:10:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (582, '2026-10-18 17:11:53', '2026-10-18 17:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (583, '2026-10-18 17:12:54', '2026-10-18 17:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (584, '2026-10-18 17:13:53', '2026-10-18 17:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (585, '2026-10-18 17:14:54', '2026-10-18 17:14:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (586, '2026-10-18 17:15:54', '2026-10-18 17:15:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (587, '2026-10-18 17:16:53', '2026-10-18 17:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (588, '2026-10-18 17:17:54', '2026-10-18 17:17:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (589, '2026-10-18 17:18:54', '2026-10-18 17:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (590, '2026-10-18 17:19:53', '2026-10-18 17:19:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (591, '2026-10-18 17:20:53', '2026-10-18 17:20:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (592, '2026-10-18 17:21:54', '2026-10-18 17:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (593, '2026-10-18 17:22:53', '2026-10-18 17:22:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (594, '2026-10-18 17:23:54', '2026-10-18 17:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (595, '2026-10-18 17:24:53', '2026-10-18 17:24:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (596, '2026-10-18 17:25:53', '2026-10-18 17:25:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (597, '2026-10-18 17:26:53', '2026-10-18 17:26:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (598, '2026-10-18 17:27:53', '2026-10-18 17:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (599, '2026-10-18 17:28:54', '2026-10-18 17:28:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (600, '2026-10-18 17:29:53', '2026-10-18 17:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (601, '2026-10-18 17:30:54', '2026-10-18 17:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (602, '2026-10-18 17:31:54', '2026-10-18 17:31:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (603, '2026-10-18 17:32:54', '2026-10-18 17:32:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (604, '2026-10-18 17:33:54', '2026-10-18 17:33:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (605, '2026-10-18 17:34:53', '2026-10-18 17:34:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (606, '2026-10-18 17:35:53', '2026-10-18 17:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (607, '2026-10-18 17:36:53', '2026-10-18 17:36:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (608, '2026-10-18 17:37:54', '2026-10-18 17:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (609, '2026-10-18 17:38:53', '2026-10-18 17:38:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (610, '2026-10-18 17:39:53', '2026-10-18 17:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (611, '2026-10-18 17:40:53', '2026-10-18 17:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (612, '2026-10-18 17:41:53', '2026-10-18 17:41:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (613, '2026-10-18 17:42:53', '2026-10-18 17:42:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (614, '2026-10-18 17:43:53', '2026-10-18 17:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (615, '2026-10-18 17:44:54', '2026-10-18 17:44:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (616, '2026-10-18 17:45:53', '2026-10-18 17:45:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (617, '2026-10-18 17:46:53', '2026-10-18 17:46:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (618, '2026-10-18 17:47:53', '2026-10-18 17:47:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (619, '2026-10-18 17:48:54', '2026-10-18 17:48:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (620, '2026-10-18 17:49:54', '2026-10-18 17:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (621, '2026-10-18 17:50:53', '2026-10-18 17:50:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (622, '2026-10-18 17:51:54', '2026-10-18 17:51:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (623, '2026-10-18 17:52:54', '2026-10-18 17:52:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (624, '2026-10-18 17:53:53', '2026-10-18 17:53:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (625, '2026-10-18 17:54:53', '2026-10-18 17:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (626, '2026-10-18 17:55:53', '2026-10-18 17:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (627, '2026-10-18 17:56:54', '2026-10-18 17:56:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (628, '2026-10-18 17:57:54', '2026-10-18 17:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (629, '2026-10-18 17:58:54', '2026-10-18 17:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (630, '2026-10-18 17:59:54', '2026-10-18 17:59:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (631, '2026-10-18 18:00:53', '2026-10-18 18:00:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (632, '2026-10-18 18:01:54', '2026-10-18 18:01:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (633, '2026-10-18 18:02:53', '2026-10-18 18:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (634, '2026-10-18 18:03:54', '2026-10-18 18:03:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (635, '2026-10-18 18:04:54', '2026-10-18 18:04:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (636, '2026-10-18 18:05:54', '2026-10-18 18:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (637, '2026-10-18 18:06:54', '2026-10-18 18:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (638, '2026-10-18 18:07:54', '2026-10-18 18:07:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (639, '2026-10-18 18:08:53', '2026-10-18 18:08:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (640, '2026-10-18 18:09:53', '2026-10-18 18:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (641, '2026-10-18 18:10:54', '2026-10-18 18:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (642, '2026-10-18 18:11:53', '2026-10-18 18:11:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (643, '2026-10-18 18:12:54', '2026-10-18 18:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (644, '2026-10-18 18:13:54', '2026-10-18 18:13:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (645, '2026-10-18 18:14:53', '2026-10-18 18:14:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (646, '2026-10-18 18:15:54', '2026-10-18 18:15:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (647, '2026-10-18 18:16:53', '2026-10-18 18:16:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (648, '2026-10-18 18:17:54', '2026-10-18 18:17:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (649, '2026-10-18 18:18:54', '2026-10-18 18:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (650, '2026-10-18 18:19:54', '2026-10-18 18:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (651, '2026-10-18 18:20:54', '2026-10-18 18:20:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (652, '2026-10-18 18:21:54', '2026-10-18 18:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (653, '2026-10-18 18:22:54', '2026-10-18 18:22:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (654, '2026-10-18 18:23:54', '2026-10-18 18:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (655, '2026-10-18 18:24:54', '2026-10-18 18:24:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (656, '2026-10-18 18:25:54', '2026-10-18 18:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (657, '2026-10-18 18:26:54', '2026-10-18 18:26:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (658, '2026-10-18 18:27:54', '2026-10-18 18:27:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (659, '2026-10-18 18:28:54', '2026-10-18 18:28:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (660, '2026-10-18 18:29:53', '2026-10-18 18:29:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (661, '2026-10-18 18:30:54', '2026-10-18 18:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (662, '2026-10-18 18:31:54', '2026-10-18 18:31:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (663, '2026-10-18 18:32:54', '2026-10-18 18:32:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (664, '2026-10-18 18:33:54', '2026-10-18 18:33:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (665, '2026-10-18 18:34:54', '2026-10-18 18:34:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (666, '2026-10-18 18:35:54', '2026-10-18 18:35:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (667, '2026-10-18 18:36:54', '2026-10-18 18:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (668, '2026-10-18 18:37:54', '2026-10-18 18:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (669, '2026-10-18 18:38:53', '2026-10-18 18:38:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (670, '2026-10-18 18:39:53', '2026-10-18 18:39:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (671, '2026-10-18 18:40:54', '2026-10-18 18:40:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (672, '2026-10-18 18:41:54', '2026-10-18 18:41:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (673, '2026-10-18 18:42:54', '2026-10-18 18:42:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (674, '2026-10-18 18:43:54', '2026-10-18 18:43:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (675, '2026-10-18 18:44:53', '2026-10-18 18:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (676, '2026-10-18 18:45:54', '2026-10-18 18:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (677, '2026-10-18 18:46:54', '2026-10-18 18:46:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (678, '2026-10-18 18:47:53', '2026-10-18 18:47:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (679, '2026-10-18 18:48:54', '2026-10-18 18:48:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (680, '2026-10-18 18:49:54', '2026-10-18 18:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (681, '2026-10-18 18:50:54', '2026-10-18 18:50:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (682, '2026-10-18 18:51:54', '2026-10-18 18:51:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (683, '2026-10-18 18:52:53', '2026-10-18 18:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (684, '2026-10-18 18:53:54', '2026-10-18 18:53:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (685, '2026-10-18 18:54:53', '2026-10-18 18:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (686, '2026-10-18 18:55:54', '2026-10-18 18:55:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (687, '2026-10-18 18:56:54', '2026-10-18 18:56:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (688, '2026-10-18 18:57:54', '2026-10-18 18:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (689, '2026-10-18 18:58:53', '2026-10-18 18:58:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (690, '2026-10-18 18:59:53', '2026-10-18 18:59:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (691, '2026-10-18 19:00:54', '2026-10-18 19:00:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (692, '2026-10-18 19:01:54', '2026-10-18 19:01:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (693, '2026-10-18 19:02:53', '2026-10-18 19:02:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (694, '2026-10-18 19:03:53', '2026-10-18 19:03:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (695, '2026-10-18 19:04:53', '2026-10-18 19:04:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (696, '2026-10-18 19:05:54', '2026-10-18 19:05:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (697, '2026-10-18 19:06:54', '2026-10-18 19:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (698, '2026-10-18 19:07:53', '2026-10-18 19:07:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (699, '2026-10-18 19:08:54', '2026-10-18 19:08:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (700, '2026-10-18 19:09:54', '2026-10-18 19:09:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (701, '2026-10-18 19:10:54', '2026-10-18 19:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (702, '2026-10-18 19:11:54', '2026-10-18 19:11:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (703, '2026-10-18 19:12:54', '2026-10-18 19:12:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (704, '2026-10-18 19:13:54', '2026-10-18 19:13:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (705, '2026-10-18 19:14:54', '2026-10-18 19:14:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (706, '2026-10-18 19:15:54', '2026-10-18 19:15:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (707, '2026-10-18 19:16:54', '2026-10-18 19:16:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (708, '2026-10-18 19:17:54', '2026-10-18 19:17:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (709, '2026-10-18 19:18:53', '2026-10-18 19:18:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (710, '2026-10-18 19:19:54', '2026-10-18 19:19:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (711, '2026-10-18 19:20:54', '2026-10-18 19:20:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (712, '2026-10-18 19:21:54', '2026-10-18 19:21:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (713, '2026-10-18 19:22:54', '2026-10-18 19:22:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (714, '2026-10-18 19:23:54', '2026-10-18 19:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (715, '2026-10-18 19:24:54', '2026-10-18 19:24:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (716, '2026-10-18 19:25:54', '2026-10-18 19:25:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (717, '2026-10-18 19:26:54', '2026-10-18 19:26:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (718, '2026-10-18 19:27:53', '2026-10-18 19:27:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (719, '2026-10-18 19:28:53', '2026-10-18 19:28:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (720, '2026-10-18 19:29:54', '2026-10-18 19:29:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (721, '2026-10-18 19:30:54', '2026-10-18 19:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (722, '2026-10-18 19:31:54', '2026-10-18 19:31:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (723, '2026-10-18 19:32:54', '2026-10-18 19:32:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (724, '2026-10-18 19:33:54', '2026-10-18 19:33:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (725, '2026-10-18 19:34:54', '2026-10-18 19:34:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (726, '2026-10-18 19:35:53', '2026-10-18 19:35:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (727, '2026-10-18 19:36:54', '2026-10-18 19:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (728, '2026-10-18 19:37:53', '2026-10-18 19:37:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (729, '2026-10-18 19:38:53', '2026-10-18 19:38:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (730, '2026-10-18 19:39:54', '2026-10-18 19:39:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (731, '2026-10-18 19:40:53', '2026-10-18 19:40:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (732, '2026-10-18 19:41:53', '2026-10-18 19:41:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (733, '2026-10-18 19:42:53', '2026-10-18 19:42:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (734, '2026-10-18 19:43:54', '2026-10-18 19:43:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (735, '2026-10-18 19:44:53', '2026-10-18 19:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (736, '2026-10-18 19:45:53', '2026-10-18 19:45:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (737, '2026-10-18 19:46:53', '2026-10-18 19:46:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (738, '2026-10-18 19:47:54', '2026-10-18 19:47:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (739, '2026-10-18 19:48:53', '2026-10-18 19:48:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (740, '2026-10-18 19:49:54', '2026-10-18 19:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (741, '2026-10-18 19:50:54', '2026-10-18 19:50:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (742, '2026-10-18 19:51:53', '2026-10-18 19:51:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (743, '2026-10-18 19:52:53', '2026-10-18 19:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (744, '2026-10-18 19:53:54', '2026-10-18 19:53:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (745, '2026-10-18 19:54:54', '2026-10-18 19:54:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (746, '2026-10-18 19:55:54', '2026-10-18 19:55:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (747, '2026-10-18 19:56:53', '2026-10-18 19:56:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (748, '2026-10-18 19:57:54', '2026-10-18 19:57:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (749, '2026-10-18 19:58:54', '2026-10-18 19:58:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (750, '2026-10-18 19:59:53', '2026-10-18 19:59:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (751, '2026-10-18 20:00:54', '2026-10-18 20:00:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (752, '2026-10-18 20:01:53', '2026-10-18 20:01:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (753, '2026-10-18 20:02:54', '2026-10-18 20:02:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (754, '2026-10-18 20:03:53', '2026-10-18 20:03:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (755, '2026-10-18 20:04:54', '2026-10-18 20:04:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (756, '2026-10-18 20:05:53', '2026-10-18 20:05:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (757, '2026-10-18 20:06:54', '2026-10-18 20:06:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (758, '2026-10-18 20:07:54', '2026-10-18 20:07:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (759, '2026-10-18 20:08:53', '2026-10-18 20:08:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (760, '2026-10-18 20:09:53', '2026-10-18 20:09:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (761, '2026-10-18 20:10:54', '2026-10-18 20:10:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (762, '2026-10-18 20:11:54', '2026-10-18 20:11:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (763, '2026-10-18 20:12:53', '2026-10-18 20:12:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (764, '2026-10-18 20:13:53', '2026-10-18 20:13:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (765, '2026-10-18 20:14:53', '2026-10-18 20:14:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (766, '2026-10-18 20:15:54', '2026-10-18 20:15:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (767, '2026-10-18 20:16:54', '2026-10-18 20:16:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (768, '2026-10-18 20:17:53', '2026-10-18 20:17:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (769, '2026-10-18 20:18:54', '2026-10-18 20:18:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (770, '2026-10-18 20:19:53', '2026-10-18 20:19:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (771, '2026-10-18 20:20:54', '2026-10-18 20:20:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (772, '2026-10-18 20:21:53', '2026-10-18 20:21:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (773, '2026-10-18 20:22:54', '2026-10-18 20:22:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (774, '2026-10-18 20:23:54', '2026-10-18 20:23:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (775, '2026-10-18 20:24:54', '2026-10-18 20:24:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (776, '2026-10-18 20:25:53', '2026-10-18 20:25:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (777, '2026-10-18 20:26:54', '2026-10-18 20:26:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (778, '2026-10-18 20:27:54', '2026-10-18 20:27:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (779, '2026-10-18 20:28:53', '2026-10-18 20:28:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (780, '2026-10-18 20:29:54', '2026-10-18 20:29:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (781, '2026-10-18 20:30:54', '2026-10-18 20:30:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (782, '2026-10-18 20:31:53', '2026-10-18 20:31:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (783, '2026-10-18 20:32:54', '2026-10-18 20:32:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (784, '2026-10-18 20:33:53', '2026-10-18 20:33:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (785, '2026-10-18 20:34:54', '2026-10-18 20:34:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (786, '2026-10-18 20:35:54', '2026-10-18 20:35:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (787, '2026-10-18 20:36:54', '2026-10-18 20:36:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (788, '2026-10-18 20:37:54', '2026-10-18 20:37:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (789, '2026-10-18 20:38:53', '2026-10-18 20:38:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (790, '2026-10-18 20:39:54', '2026-10-18 20:39:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (791, '2026-10-18 20:40:54', '2026-10-18 20:40:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (792, '2026-10-18 20:41:54', '2026-10-18 20:41:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (793, '2026-10-18 20:42:54', '2026-10-18 20:42:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (794, '2026-10-18 20:43:53', '2026-10-18 20:43:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (795, '2026-10-18 20:44:53', '2026-10-18 20:44:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (796, '2026-10-18 20:45:54', '2026-10-18 20:45:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (797, '2026-10-18 20:46:53', '2026-10-18 20:46:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (798, '2026-10-18 20:47:53', '2026-10-18 20:47:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (799, '2026-10-18 20:48:53', '2026-10-18 20:48:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (800, '2026-10-18 20:49:54', '2026-10-18 20:49:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (801, '2026-10-18 20:50:54', '2026-10-18 20:50:54', 1, 1);
INSERT INTO `sys_task_logs` VALUES (802, '2026-10-18 20:51:53', '2026-10-18 20:51:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (803, '2026-10-18 20:52:53', '2026-10-18 20:52:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (804, '2026-10-18 20:53:53', '2026-10-18 20:53:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (805, '2026-10-18 20:54:53', '2026-10-18 20:54:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (806, '2026-10-18 20:55:53', '2026-10-18 20:55:53', 1, 1);
INSERT INTO `sys_task_logs` VALUES (807, '2026-10-18 20:56:54', '2026-10-18 20:56:54', 1, 1);

-- ----------------------------
-- Table structure for sys_tasks
-- ----------------------------
DROP TABLE IF EXISTS `sys_tasks`;
CREATE TABLE `sys_tasks`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Task Name | 任务名称',
  `task_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Task Group | 任务分组',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Cron expression | 定时任务表达式',
  `pattern` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Cron Pattern | 任务的模式 （用于区分和确定要执行的任务）',
  `payload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The data used in cron (JSON string) | 任务需要的数据(JSON 字符串)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_pattern`(`pattern` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Task Configuration Table | 任务配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tasks
-- ----------------------------
INSERT INTO `sys_tasks` VALUES (1, '2026-10-17 20:53:47', '2026-10-17 20:53:47', 1, 'hello_world', 'base', '@every 60s', 'hello_world', '{\"name\": \"Mike (DPTask 60s)\"}');

-- ----------------------------
-- Table structure for sys_tokens
-- ----------------------------
DROP TABLE IF EXISTS `sys_tokens`;
CREATE TABLE `sys_tokens`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT ' User\'s UUID | 用户的UUID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown' COMMENT 'Username | 用户名',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Token string | Token 字符串',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Log in source such as GitHub | Token 来源 （本地为core, 第三方如github等）',
  `expired_at` timestamp NOT NULL COMMENT ' Expire time | 过期时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `token_uuid`(`uuid` ASC) USING BTREE,
  INDEX `token_expired_at`(`expired_at` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'Token Log Table | 令牌信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_tokens
-- ----------------------------
INSERT INTO `sys_tokens` VALUES ('04314234-f9c8-4a92-904a-4ecda9af28cf', '2026-10-18 11:21:39', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODAwOTgsImlhdCI6MTc5MjI5MzY5OH0.0mvU_DIzK5AK5V52cnmIuZsBKJBRjLK75LFYdK8J01M', 'core_user', '2026-10-19 11:21:38');
INSERT INTO `sys_tokens` VALUES ('04ffe701-d4bd-45f8-892c-bd67f82bc67d', '2026-10-18 12:08:22', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODI5MDIsImlhdCI6MTc5MjI5NjUwMn0.DjwK4arLPaOue9MJw4SPm7YlZO_JqP_-tkFJJN8QFEA', 'core_user', '2026-10-19 12:08:22');
INSERT INTO `sys_tokens` VALUES ('058586fc-b16a-468c-88b3-27ceca45d91f', '2026-10-17 21:52:23', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE1NDIsImlhdCI6MTc5MjI0NTE0Mn0.ly1yuG22oJpuRLLuMR1vuAbZx1-UcsNHaIbvKuDuUeU', 'core_user', '2026-10-18 21:52:22');
INSERT INTO `sys_tokens` VALUES ('08c8c87a-3878-4203-afcb-645738e69053', '2026-10-18 17:48:03', '2026-10-18 17:48:48', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IjAwMiIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMzI4MiwiaWF0IjoxNzkyMzE2ODgyfQ.xE1uLCseJcPw6ajT4g1If9nwbw1TS-7VrnsHKmzdrmk', 'core_user', '2026-10-19 17:48:02');
INSERT INTO `sys_tokens` VALUES ('0a889738-e681-4d27-b501-04b85f24a6a3', '2026-10-18 17:24:01', '2026-10-18 17:35:44', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IiIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMTg0MSwiaWF0IjoxNzkyMzE1NDQxfQ._e6_mqKvi8E7vC0wrMHo7GCYqEyCEq9vembnzFfLE6U', 'core_user', '2026-10-19 17:24:01');
INSERT INTO `sys_tokens` VALUES ('0f261f61-609d-4ba6-8736-ce9ddf4f1d59', '2026-10-18 11:21:46', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODAxMDUsImlhdCI6MTc5MjI5MzcwNX0.o19qspfS6Wse8du57Jefu9H5XhJ7BSKbHHPCaEqjjoI', 'core_user', '2026-10-19 11:21:45');
INSERT INTO `sys_tokens` VALUES ('1e5c3a76-1d2f-4e03-9cd5-94bc04adef63', '2026-10-18 12:27:22', '2026-10-18 13:21:56', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODQwNDEsImlhdCI6MTc5MjI5NzY0MX0.WW4DOtrHfcYcjeV4NUwdb265FPHVRR4NylmP5hQSjZk', 'core_user', '2026-10-19 12:27:21');
INSERT INTO `sys_tokens` VALUES ('1ff73f53-cf86-420d-bd02-fcc3fb725d2e', '2026-10-18 17:34:51', '2026-10-18 17:35:44', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMjQ5MCwiaWF0IjoxNzkyMzE2MDkwfQ.7Bsodrs3fJNEZenPt5_3EfTdXr8-uRi_rSgdIegjR1w', 'core_user', '2026-10-19 17:34:50');
INSERT INTO `sys_tokens` VALUES ('23042a5f-9080-4f69-95a3-083cd3328c34', '2026-10-18 12:10:19', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODMwMTksImlhdCI6MTc5MjI5NjYxOX0.Z9DEcziKuciIk5bcjZJw-VKeF74DFiHxau5GBmrHrMg', 'core_user', '2026-10-19 12:10:19');
INSERT INTO `sys_tokens` VALUES ('2fb6d377-31d0-41d6-8be5-81ce617a84ec', '2026-10-17 21:51:34', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE0OTMsImlhdCI6MTc5MjI0NTA5M30.U379rBWX6ZYe51cKHwqwKAlbIRvpjpen5wa5QtXmnxo', 'core_user_access_token', '2026-10-18 21:51:33');
INSERT INTO `sys_tokens` VALUES ('3f5dd60e-6af7-4f37-bc26-ee96395dfcfe', '2026-10-18 12:26:28', '2026-10-18 13:21:56', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODM5ODgsImlhdCI6MTc5MjI5NzU4OH0.Bs2_Vp1IbJ99mFPyLTPgGhHhNoxUW_MrhbMADky2qgs', 'core_user', '2026-10-19 12:26:28');
INSERT INTO `sys_tokens` VALUES ('5abb64cb-0b39-4547-9e01-b5e6798a4b05', '2026-10-18 12:50:38', '2026-10-18 13:21:56', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODU0MzgsImlhdCI6MTc5MjI5OTAzOH0.vIT8EgFO0HVM2b_K158cEXxFCy_aQ88alWiv2uZFduQ', 'core_user', '2026-10-19 12:50:38');
INSERT INTO `sys_tokens` VALUES ('5caa4e9b-1d58-4564-8ea7-58aa003538e8', '2026-10-18 12:08:59', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODI5MzksImlhdCI6MTc5MjI5NjUzOX0.5WVaA79-9ITJ6_HjiHjdwfINGwkXVB2snPc4kFmmBPE', 'core_user', '2026-10-19 12:08:59');
INSERT INTO `sys_tokens` VALUES ('65dbab6b-0612-44f1-b2ef-7e1e37e982db', '2026-10-17 21:53:22', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE2MDIsImlhdCI6MTc5MjI0NTIwMn0.BW6bxTCYpz3rueseIFOr7BNlEmnEJ_nYTSgEdA5ObCQ', 'core_user', '2026-10-18 21:53:22');
INSERT INTO `sys_tokens` VALUES ('6d78b2e6-d49e-420e-a861-22cf40211da9', '2026-10-17 20:57:33', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgyNTIsImlhdCI6MTc5MjI0MTg1Mn0.YjuOGOSmx4Rn4fOPQ5sueNfLI0eyHP3Wofu_GIkRMvA', 'core_user_access_token', '2026-10-18 20:57:32');
INSERT INTO `sys_tokens` VALUES ('722a078b-0daa-4a54-a1f0-c301325cb3e7', '2026-10-18 12:17:22', '2026-10-18 12:25:20', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODM0NDIsImlhdCI6MTc5MjI5NzA0Mn0.DkraCrepb9FQeTXfgXijJmSDgoDaKTB_Xx3Kv-eDRIg', 'core_user', '2026-10-19 12:17:22');
INSERT INTO `sys_tokens` VALUES ('7597b838-2fb0-40df-a3fa-a9d455988ded', '2026-10-18 17:33:07', '2026-10-18 17:47:49', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTI0MDIzODYsImlhdCI6MTc5MjMxNTk4Nn0.dEmnnXOGjG4yMINu78OF3kfvaJgfajVcAVarPuE4xT8', 'core_user', '2026-10-19 17:33:06');
INSERT INTO `sys_tokens` VALUES ('7cd1d567-5841-4813-b8e7-baf14835bbdf', '2026-10-18 13:30:02', '2026-10-18 17:21:59', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODc4MDIsImlhdCI6MTc5MjMwMTQwMn0.x38zN3embfPDIBaH-pDasNRE1ZjeJqAE2zbpzBrBWNo', 'core_user', '2026-10-19 13:30:02');
INSERT INTO `sys_tokens` VALUES ('8360067c-6424-42f6-bb29-d7672f09362d', '2026-10-18 12:25:40', '2026-10-18 12:26:02', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODM5MzksImlhdCI6MTc5MjI5NzUzOX0.ydr3-Z6Vwk3bXz-TfTLuC8YVgkbG7-CBym4Dfk1zkmo', 'core_user', '2026-10-19 12:25:39');
INSERT INTO `sys_tokens` VALUES ('838e7e87-259b-4b79-9b12-2209a61411cf', '2026-10-18 17:23:23', '2026-10-18 17:35:44', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IiIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMTgwMiwiaWF0IjoxNzkyMzE1NDAyfQ.509SQj2etpKnFiH3Tq24NgsTQxgjKiVjGV1YpHx1TUM', 'core_user', '2026-10-19 17:23:22');
INSERT INTO `sys_tokens` VALUES ('892a03d6-db58-4827-af53-bd3d9832eb95', '2026-10-18 11:15:34', '2026-10-18 11:15:58', 2, 'f4c94154-fe13-44e6-85b2-ad28d7f6a956', 'testmulti', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJmNGM5NDE1NC1mZTEzLTQ0ZTYtODViMi1hZDI4ZDdmNmE5NTYiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoidGVzdG11bHRpIiwiZXhwIjoxNzkyMzc5NzM0LCJpYXQiOjE3OTIyOTMzMzR9.K2oqKfpcJXzMI2IMvKHTgEghXaW2inNTEELsHmVliPY', 'core_user', '2026-10-19 11:15:34');
INSERT INTO `sys_tokens` VALUES ('93c8a0f7-7dbb-42f1-bec3-596911898aba', '2026-10-18 17:35:54', '2026-10-18 17:38:23', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMjU1NCwiaWF0IjoxNzkyMzE2MTU0fQ.LQ2prVyxVmHalROy0K6bpii8E5LGDT-jT2j-ijvw-Bs', 'core_user', '2026-10-19 17:35:54');
INSERT INTO `sys_tokens` VALUES ('94757522-81e8-4050-8a8e-e2cbf28f2d9f', '2026-10-18 11:07:39', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzNzkyNTgsImlhdCI6MTc5MjI5Mjg1OH0.z02h7Q53Fx1Qa_VAqFhNRir4-T1hhaEDu1qQlmCg4yE', 'core_user', '2026-10-19 11:07:38');
INSERT INTO `sys_tokens` VALUES ('a23db39c-cef7-4ced-b255-45af81aa6abc', '2026-10-18 17:44:31', '2026-10-18 17:44:31', 2, '1071cd25-cd44-4805-ada3-49f390cbbd7d', 'regstaff01', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxMDcxY2QyNS1jZDQ0LTQ4MDUtYWRhMy00OWYzOTBjYmJkN2QiLCJyb2xlQ29kZSI6IjAwMiIsInVzZXJuYW1lIjoicmVnc3RhZmYwMSIsImV4cCI6MTc5MjQwMzA3MSwiaWF0IjoxNzkyMzE2NjcxfQ.EDNOLLKiovmthnD2z02bMeKxPkQgC8kjgk78JOZg-lg', 'core_user', '2026-10-19 17:44:31');
INSERT INTO `sys_tokens` VALUES ('a46c8035-9a94-4c0e-a6c4-f80a5dc686f3', '2026-10-18 17:32:45', '2026-10-18 17:32:45', 1, 'f4447e5f-f6b3-4ca2-8919-cdf3334036f1', 'regtest01', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJmNDQ0N2U1Zi1mNmIzLTRjYTItODkxOS1jZGYzMzM0MDM2ZjEiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoicmVndGVzdDAxIiwiZXhwIjoxNzkyNDAyMzY1LCJpYXQiOjE3OTIzMTU5NjV9.6q3PQF_GGxgsqSctdbvLB89a2DhOPOSBxmxZfqKRJ5E', 'core_user', '2026-10-19 17:32:45');
INSERT INTO `sys_tokens` VALUES ('a6d6c200-3dbe-453a-b68d-e2a4b613f867', '2026-10-18 17:23:42', '2026-10-18 17:35:44', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IiIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMTgyMSwiaWF0IjoxNzkyMzE1NDIxfQ.0f7Kk2oYQJBeZd135aMLp55pXZl9tS4GXL1cclssPAs', 'core_user', '2026-10-19 17:23:41');
INSERT INTO `sys_tokens` VALUES ('ab0a7a1b-4739-4c1f-9705-597ba49e4a58', '2026-10-17 21:54:46', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE2ODUsImlhdCI6MTc5MjI0NTI4NX0.HRgJtN1w23ruXmXvsUNtq_Z1jh55BwVrB-5PWU6pllE', 'core_user', '2026-10-18 21:54:45');
INSERT INTO `sys_tokens` VALUES ('b18afd3d-3983-4049-ad3c-97600d41f035', '2026-10-17 20:58:10', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgyOTAsImlhdCI6MTc5MjI0MTg5MH0.XWsmn63CHWBVDWkbm9gCC6WSR5uYsBr2qL9T4QrsHc4', 'core_user_refresh_token', '2026-10-18 20:58:10');
INSERT INTO `sys_tokens` VALUES ('bb9a8864-7259-4b4e-9a77-224070a7a813', '2026-10-17 21:51:32', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE0OTIsImlhdCI6MTc5MjI0NTA5Mn0.XsrxU0184iL6w7jmEuu3Y2-6cpZtq1kHdOps7Pwwu_E', 'core_user', '2026-10-18 21:51:32');
INSERT INTO `sys_tokens` VALUES ('bdd77f82-0789-485c-8312-ae09fab009e0', '2026-10-17 21:57:30', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE4NDksImlhdCI6MTc5MjI0NTQ0OX0.NAvXZYzu7DVjVtY-JfpvWlrS19BtdwDPJcZXpPXuc9M', 'core_user', '2026-10-18 21:57:29');
INSERT INTO `sys_tokens` VALUES ('bf7ea260-e5a1-4dee-a7e5-d7e12437adb6', '2026-10-17 21:51:33', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE0OTMsImlhdCI6MTc5MjI0NTA5M30.U379rBWX6ZYe51cKHwqwKAlbIRvpjpen5wa5QtXmnxo', 'core_user_refresh_token', '2026-10-18 21:51:33');
INSERT INTO `sys_tokens` VALUES ('c1c61701-0acd-4867-9395-ec9fdfdedc59', '2026-10-17 22:13:15', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzI3OTQsImlhdCI6MTc5MjI0NjM5NH0.hSLL9EQ5gaGnOHYktuYJ6U5-3PODjPs1mypOQrTo8DY', 'core_user', '2026-10-18 22:13:14');
INSERT INTO `sys_tokens` VALUES ('c3f44a28-2b64-4b94-8437-26a300df9114', '2026-10-18 13:28:46', '2026-10-18 17:21:59', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODc3MjYsImlhdCI6MTc5MjMwMTMyNn0.YWX0mek6aEoLi1n-Iv3_Dc2LlmGOnQNsHQO9IkrTWvQ', 'core_user', '2026-10-19 13:28:46');
INSERT INTO `sys_tokens` VALUES ('ca8af23c-09b0-4187-8342-a800f5e852f8', '2026-10-17 21:53:00', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE1NzksImlhdCI6MTc5MjI0NTE3OX0.qS-Ma5UUciZz52R8ThWz-CnW8UxzJ0qeoS3Yt5VX4tw', 'core_user', '2026-10-18 21:52:59');
INSERT INTO `sys_tokens` VALUES ('d48b6a14-7524-4013-a784-6ad25b738cb6', '2026-10-18 12:00:55', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzODI0NTQsImlhdCI6MTc5MjI5NjA1NH0.1bSu3IT3GNR3sCMu70Wr7B1O9On_X9vwx57WFtR2vsQ', 'core_user', '2026-10-19 12:00:54');
INSERT INTO `sys_tokens` VALUES ('d65c867a-eca4-4220-86ba-0a3c6f2b6e74', '2026-10-17 20:57:32', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgyNTIsImlhdCI6MTc5MjI0MTg1Mn0.YjuOGOSmx4Rn4fOPQ5sueNfLI0eyHP3Wofu_GIkRMvA', 'core_user_refresh_token', '2026-10-18 20:57:32');
INSERT INTO `sys_tokens` VALUES ('deb8e728-3266-4c68-b011-50a458710a08', '2026-10-17 21:57:31', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE4NTAsImlhdCI6MTc5MjI0NTQ1MH0.fRy7HomEfTRmdfFNaVUxLef8nkzNZEFNP3D7p-EayPA', 'core_user_access_token', '2026-10-18 21:57:30');
INSERT INTO `sys_tokens` VALUES ('dfd0e9f0-6830-41e1-a66c-38b01b13a92e', '2026-10-17 20:54:51', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgwOTAsImlhdCI6MTc5MjI0MTY5MH0.fV6nCEQzwrXu-v2_BmT01DE7zRcWGRLRhjqNJBk0mRM', 'core_user', '2026-10-18 20:54:50');
INSERT INTO `sys_tokens` VALUES ('e310dfab-12bc-49fb-b1b6-8264fb7022ea', '2026-10-18 17:22:44', '2026-10-18 17:35:44', 2, 'e3d72912-6d2f-4637-99d0-896db03060c3', 'fred', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJlM2Q3MjkxMi02ZDJmLTQ2MzctOTlkMC04OTZkYjAzMDYwYzMiLCJyb2xlQ29kZSI6IiIsInVzZXJuYW1lIjoiZnJlZCIsImV4cCI6MTc5MjQwMTc2MywiaWF0IjoxNzkyMzE1MzYzfQ.2gM69VEa_JzZViYvwpU3hyC0zoICnsV8CbHHfev1leU', 'core_user', '2026-10-19 17:22:43');
INSERT INTO `sys_tokens` VALUES ('e502a2a8-f267-49f2-8c22-4e6b7dde8f86', '2026-10-17 20:58:10', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgyOTAsImlhdCI6MTc5MjI0MTg5MH0.XWsmn63CHWBVDWkbm9gCC6WSR5uYsBr2qL9T4QrsHc4', 'core_user', '2026-10-18 20:58:10');
INSERT INTO `sys_tokens` VALUES ('e51765bd-fdcd-41eb-8740-10df77315387', '2026-10-18 17:48:59', '2026-10-18 17:48:59', 1, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTI0MDMzMzksImlhdCI6MTc5MjMxNjkzOX0.-GOPcSUKX4yWsS6zAu2VupflZxm-y69WZyZc87La9rs', 'core_user', '2026-10-19 17:48:59');
INSERT INTO `sys_tokens` VALUES ('ebd18290-7698-44bd-a514-f35e5c5d275b', '2026-10-17 21:57:31', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMzE4NTAsImlhdCI6MTc5MjI0NTQ1MH0.fRy7HomEfTRmdfFNaVUxLef8nkzNZEFNP3D7p-EayPA', 'core_user_refresh_token', '2026-10-18 21:57:30');
INSERT INTO `sys_tokens` VALUES ('edbfffd9-403b-47b7-8f37-58f31180d409', '2026-10-18 12:03:06', '2026-10-18 12:03:06', 1, '8decfdd7-8a84-4431-8cfe-382f1fcb2784', 'fileuser2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4ZGVjZmRkNy04YTg0LTQ0MzEtOGNmZS0zODJmMWZjYjI3ODQiLCJyb2xlQ29kZSI6IiIsInVzZXJuYW1lIjoiZmlsZXVzZXIyIiwiZXhwIjoxNzkyMzgyNTg1LCJpYXQiOjE3OTIyOTYxODV9.ttbDAflmeg5AiE8LpZcDtCHfe4cU3PxFzLk67dykccU', 'core_user', '2026-10-19 12:03:05');
INSERT INTO `sys_tokens` VALUES ('f4d2f3d2-34b7-42fd-be9c-e6eede810178', '2026-10-18 17:38:36', '2026-10-18 17:47:49', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTI0MDI3MTUsImlhdCI6MTc5MjMxNjMxNX0.v-Jfq72Y3gk72LnChP7FzQ5Xx5ZPtO52w4YvFtt4bdk', 'core_user', '2026-10-19 17:38:35');
INSERT INTO `sys_tokens` VALUES ('f699682b-51b5-4f85-8c79-8c2545f467f8', '2026-10-17 20:58:10', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgyOTAsImlhdCI6MTc5MjI0MTg5MH0.XWsmn63CHWBVDWkbm9gCC6WSR5uYsBr2qL9T4QrsHc4', 'core_user_access_token', '2026-10-18 20:58:10');
INSERT INTO `sys_tokens` VALUES ('f8acb353-0e85-4488-9a53-1af9ec9932d6', '2026-10-17 20:57:31', '2026-10-18 12:17:04', 2, '01a1400a-8316-7632-933f-d451f527c175', 'admin', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIwMWExNDAwYS04MzE2LTc2MzItOTMzZi1kNDUxZjUyN2MxNzUiLCJyb2xlQ29kZSI6IjAwMSIsInVzZXJuYW1lIjoiYWRtaW4iLCJleHAiOjE3OTIzMjgyNTEsImlhdCI6MTc5MjI0MTg1MX0.DsF-JNGxKksdMBQHwQcs4atJwxqMxxHLIMNOlIf0ALQ', 'core_user', '2026-10-18 20:57:31');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'UUID',
  `created_at` timestamp NOT NULL COMMENT 'Create Time | 创建日期',
  `updated_at` timestamp NOT NULL COMMENT 'Update Time | 修改日期',
  `status` tinyint UNSIGNED NULL DEFAULT 1 COMMENT 'Status 1: normal 2: ban | 状态 1 正常 2 禁用',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Delete Time | 删除日期',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'User\'s login name | 登录名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Password | 密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Nickname | 昵称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'The description of user | 用户的描述信息',
  `home_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '/dashboard' COMMENT 'The home page that the user enters after logging in | 用户登陆后进入的首页',
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Mobile number | 手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Email | 邮箱号',
  `avatar` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'Avatar | 头像路径',
  `expired_at` datetime NULL DEFAULT NULL COMMENT 'The expired time | 到期时间',
  `department_id` bigint UNSIGNED NULL DEFAULT 1 COMMENT 'Department ID | 部门ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `nickname`(`nickname` ASC) USING BTREE,
  UNIQUE INDEX `user_username_email`(`username` ASC, `email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'User Table | 用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('01a1400a-8316-7632-933f-d451f527c175', '2026-10-15 14:49:53', '2026-10-15 14:49:53', 1, NULL, 'admin', '$2a$10$eUJiAWprIWJE/T3dS.PU..6jFC8QDcBb9/2yb1XyyNf/wqcpfUqZC', 'admin', NULL, '/dashboard', NULL, 'simple_admin@gmail.com', NULL, NULL, 1);
INSERT INTO `sys_users` VALUES ('1071cd25-cd44-4805-ada3-49f390cbbd7d', '2026-10-18 17:44:21', '2026-10-18 17:44:21', 1, '2026-10-18 17:45:49', 'regstaff01', '$2a$10$sHNhmKxWX1.BCGIdIxh2WueQpyRQDKK1hd0I3OJcUTY/euuZE2Epu', 'regstaff01', NULL, '/dashboard', NULL, 'regstaff01@test.local', NULL, NULL, 1);
INSERT INTO `sys_users` VALUES ('64b8791b-3444-461b-9aee-32d242d8683e', '2026-10-18 11:22:59', '2026-10-18 11:22:59', 1, '2026-10-18 11:23:36', 'guarduser', '$2a$10$UQST.b2j/ibRKKaM5kSBI.dOIHzW3gWayLO7Sk/wYOhpj0bdKDemW', 'GuardUser', NULL, '/dashboard', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_users` VALUES ('72527826-422b-46bf-b1ec-0491099609a8', '2026-10-17 22:14:02', '2026-10-17 22:14:48', 1, '2026-10-17 22:16:15', 'testuser3', '$2a$10$Y.NSlBVASRtaajBif0up0.R7HINtRc2dptAmHQzhGVd.MPbDnlyTi', 'testuser3', '', '/dashboard', '13800000003', 'tu3@test.com', '', NULL, 1);
INSERT INTO `sys_users` VALUES ('8decfdd7-8a84-4431-8cfe-382f1fcb2784', '2026-10-18 12:03:01', '2026-10-18 12:03:01', 1, '2026-10-18 12:04:27', 'fileuser2', '$2a$10$mAFqEOwmqrhucqLOAEFzAORfwVprGmX2dxC736uqqeV0v98p9Va.K', 'FileUser2', NULL, '/dashboard', NULL, NULL, NULL, NULL, 1);
INSERT INTO `sys_users` VALUES ('e3d72912-6d2f-4637-99d0-896db03060c3', '2026-10-18 17:22:28', '2026-10-18 17:22:28', 1, NULL, 'fred', '$2a$10$C4ozhMJvqJoDDw8p.CHEbOkaNdIwpOtD35cq3L4uxlcIh9XIrkzCO', 'fred', NULL, '/dashboard', NULL, 'fred@126.com', NULL, NULL, 1);
INSERT INTO `sys_users` VALUES ('f4447e5f-f6b3-4ca2-8919-cdf3334036f1', '2026-10-18 17:32:26', '2026-10-18 17:32:26', 1, '2026-10-18 17:33:07', 'regtest01', '$2a$10$yYvYZ3nO164hUHI8EeKhFeCtl.vwpBhru8AESUerRhoObGInn5tlq', 'regtest01', NULL, '/dashboard', NULL, 'regtest01@test.com', NULL, NULL, 1);
INSERT INTO `sys_users` VALUES ('f4c94154-fe13-44e6-85b2-ad28d7f6a956', '2026-10-18 11:14:10', '2026-10-18 11:16:07', 1, '2026-10-18 11:16:23', 'testmulti2', '$2a$10$otuP4WfFqqDEBXYEkHUzGevgUqXfzwFeRjOpdGglGJ9lZk0RwLocK', 'MultiRole', '', '/dashboard', '13800000004', 'multi@test.com', '', '2027-01-15 15:59:59', 1);

-- ----------------------------
-- Table structure for user_positions
-- ----------------------------
DROP TABLE IF EXISTS `user_positions`;
CREATE TABLE `user_positions`  (
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `position_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `position_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_positions
-- ----------------------------
INSERT INTO `user_positions` VALUES ('01a1400a-8316-7632-933f-d451f527c175', 1);
INSERT INTO `user_positions` VALUES ('e3d72912-6d2f-4637-99d0-896db03060c3', 1);

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('01a1400a-8316-7632-933f-d451f527c175', 1);
INSERT INTO `user_roles` VALUES ('e3d72912-6d2f-4637-99d0-896db03060c3', 2);

SET FOREIGN_KEY_CHECKS = 1;
