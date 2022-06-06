CREATE DATABASE IF NOT EXISTS auth_db;

USE auth_db;
-- ----------------------------
-- Table structure for auth_proxy
-- ----------------------------
DROP TABLE IF EXISTS `mysql_auth`;
CREATE TABLE `mysql_auth`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_del` int(1) NULL DEFAULT 0,
  `add_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_proxy
-- ----------------------------
INSERT INTO `mysql_auth` VALUES (1, 'proxy_user', '$2y$12$MPkqSpA7GopLHIe9PbfTU.uIZgXHtJCbEq5Qqu77SylWHvlnhPEpi', 0, 1636284364, 1636284364);
