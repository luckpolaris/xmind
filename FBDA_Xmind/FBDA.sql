-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 121.41.121.78    Database: FBDA
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ams_accessLog`
--

DROP TABLE IF EXISTS `ams_accessLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_accessLog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT '0' COMMENT '操作员编号',
  `type` tinyint(2) DEFAULT '0' COMMENT '账号类型  0：管理员登录 1：催收公司登录',
  `access_url` varchar(500) DEFAULT NULL COMMENT '接口请求地址',
  `ip` varchar(150) DEFAULT NULL,
  `user_chrome` varchar(500) DEFAULT NULL COMMENT '浏览器信息',
  `mac_address` varchar(500) DEFAULT NULL COMMENT '请求时的mac地址',
  `request_params` text COMMENT '请求参数',
  `create_at` int(11) DEFAULT NULL COMMENT '创建的时间戳',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11235 DEFAULT CHARSET=utf8mb4 COMMENT='后台管理员请求日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_accessLog`
--

LOCK TABLES `ams_accessLog` WRITE;
/*!40000 ALTER TABLE `ams_accessLog` DISABLE KEYS */;
INSERT INTO `ams_accessLog` VALUES (11,0,0,NULL,NULL,NULL,NULL,NULL,NULL),(6163,0,0,NULL,NULL,NULL,' ',' ',NULL),(11234,0,0,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ams_accessLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ams_approve`
--

DROP TABLE IF EXISTS `ams_approve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_approve` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL COMMENT '订单id',
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(11) DEFAULT NULL,
  `approve_by` bigint(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `status` varchar(255) DEFAULT NULL COMMENT '1成功0拒绝',
  `price` decimal(10,2) DEFAULT NULL COMMENT '审批金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员审批订单的审批表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_approve`
--

LOCK TABLES `ams_approve` WRITE;
/*!40000 ALTER TABLE `ams_approve` DISABLE KEYS */;
/*!40000 ALTER TABLE `ams_approve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ams_jurisdiction`
--

DROP TABLE IF EXISTS `ams_jurisdiction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_jurisdiction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL COMMENT '菜单名称',
  `button` varchar(50) DEFAULT NULL COMMENT ' 1 按钮 0 菜单',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级id',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `delete_state` int(11) DEFAULT NULL COMMENT '删除状态',
  `hierarchy` int(11) NOT NULL COMMENT '层级',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `deleted_at` int(255) DEFAULT NULL COMMENT '删除时间',
  `url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `icon` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='后台菜单按钮表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_jurisdiction`
--

LOCK TABLES `ams_jurisdiction` WRITE;
/*!40000 ALTER TABLE `ams_jurisdiction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ams_jurisdiction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ams_log`
--

DROP TABLE IF EXISTS `ams_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `name` varchar(30) DEFAULT NULL COMMENT '管理员昵称',
  `type` int(1) DEFAULT NULL COMMENT '类型',
  `ip_address` varchar(100) DEFAULT NULL COMMENT 'ip地址',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_log`
--

LOCK TABLES `ams_log` WRITE;
/*!40000 ALTER TABLE `ams_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ams_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ams_message_info`
--

DROP TABLE IF EXISTS `ams_message_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_message_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '昵称',
  `account` varchar(50) DEFAULT NULL COMMENT '账户',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `auth` varchar(500) DEFAULT NULL COMMENT '权限',
  `status` int(11) DEFAULT NULL COMMENT '1.启用\r\n            0.未启用',
  `type` int(11) DEFAULT '2' COMMENT '1 超级管理员 2 管理员',
  `phone` char(20) DEFAULT NULL COMMENT '手机号码',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id 1为管理员 2 为催收员 3 审批员 4 话务员 5 放款员',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `delete_type` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `phone_Unique` (`phone`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_message_info`
--

LOCK TABLES `ams_message_info` WRITE;
/*!40000 ALTER TABLE `ams_message_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ams_message_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ams_role`
--

DROP TABLE IF EXISTS `ams_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '角色',
  `created_at` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_role`
--

LOCK TABLES `ams_role` WRITE;
/*!40000 ALTER TABLE `ams_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ams_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ams_role_admin`
--

DROP TABLE IF EXISTS `ams_role_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ams_role_admin` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `admin_id` int(11) DEFAULT NULL COMMENT 'admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ams_role_admin`
--

LOCK TABLES `ams_role_admin` WRITE;
/*!40000 ALTER TABLE `ams_role_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ams_role_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_center_report`
--

DROP TABLE IF EXISTS `channel_center_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_center_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `registration_number` bigint(20) DEFAULT NULL COMMENT '注册数',
  `login_num` bigint(20) DEFAULT '0' COMMENT '登录数',
  `login_rate` decimal(13,2) DEFAULT '0.00' COMMENT '登录率',
  `certification_number` int(11) DEFAULT NULL,
  `certification_rate` decimal(13,2) DEFAULT '0.00' COMMENT '认证率',
  `application_number` int(11) DEFAULT '0' COMMENT '申请数',
  `new_customer_num` int(11) DEFAULT '0' COMMENT '新客申请数',
  `old_customer_num` int(11) DEFAULT '0' COMMENT '老客申请数',
  `order_pass_num` int(11) DEFAULT '0' COMMENT '订单通过数',
  `order_pass_rate` decimal(13,2) DEFAULT '0.00' COMMENT '订单通过率',
  `new_order_pass_num` int(11) DEFAULT '0' COMMENT '新客通过数',
  `new_order_pass_rate` decimal(13,2) DEFAULT '0.00' COMMENT '新客通过率',
  `old_order_pass_num` int(11) DEFAULT '0' COMMENT '老客通过数',
  `old_order_pass_rate` decimal(13,2) DEFAULT '0.00' COMMENT '老客通过率',
  `loan_number` int(11) DEFAULT '0' COMMENT '放款数',
  `load_amount` decimal(13,2) DEFAULT '0.00' COMMENT '放款额',
  `due_to_num` int(11) DEFAULT '0' COMMENT '今日总到期数',
  `due_to_num1` int(11) DEFAULT '0' COMMENT '今日到期数',
  `due_to_repay_num` int(11) DEFAULT '0' COMMENT '到期还款数',
  `due_to_repay_amount` decimal(13,2) DEFAULT '0.00' COMMENT '到期还款额',
  `due_to_un_repay_amount` varchar(13) DEFAULT '0.000' COMMENT '今日到期未还款额',
  `renewals_num` int(11) DEFAULT '0' COMMENT '到期续期数',
  `renewals_amount` decimal(13,2) DEFAULT '0.00' COMMENT '到期续额',
  `renewals_rate` decimal(13,2) DEFAULT '0.00' COMMENT '到期还款率',
  `payments_amount` decimal(13,2) DEFAULT '0.00' COMMENT '总款额',
  `payments_num` int(11) DEFAULT '0' COMMENT '今日总还款数',
  `all_renewals_num` int(11) DEFAULT '0' COMMENT '总续期数',
  `all_renewals_amount` int(11) DEFAULT '0' COMMENT '总续期数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='渠道中心报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_center_report`
--

LOCK TABLES `channel_center_report` WRITE;
/*!40000 ALTER TABLE `channel_center_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_center_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_config`
--

DROP TABLE IF EXISTS `channel_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '渠道名称',
  `identifier` varchar(100) DEFAULT NULL COMMENT '唯一标识',
  `url` varchar(255) DEFAULT NULL COMMENT '推广地址',
  `status` tinyint(2) DEFAULT '2' COMMENT '状态  1 关闭， 2 开启',
  `settle_fun` tinyint(2) DEFAULT '0' COMMENT '结算方式  0 无， 1 CPA(注册)  2 (下款)cps， 3 浏览量(uv) ',
  `price` decimal(32,8) DEFAULT NULL COMMENT '单价',
  `linkman` varchar(100) DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话号码',
  `situation_config` int(1) DEFAULT '0' COMMENT '场景设置 0 网页  1 微信  2 qq 3 支付保 4 app',
  `auto_pass` tinyint(1) DEFAULT '0' COMMENT '自动通过  1 开启， 2 关闭',
  `pass_score` int(10) DEFAULT NULL COMMENT '自动通过风控分',
  `auo_refuse` tinyint(1) DEFAULT '0' COMMENT '自动拒绝  1 开启， 2 关闭',
  `days_withhold_overdue` int(3) DEFAULT NULL COMMENT '逾期代扣天数',
  `refuse_score` int(10) DEFAULT NULL COMMENT '自动拒绝风控分',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `max_ip_count` int(3) DEFAULT NULL COMMENT '同一ip最大注册数',
  `max_device_count` int(3) DEFAULT '1' COMMENT '同一设备最大访问数',
  `uv` int(11) DEFAULT '5' COMMENT '浏览量',
  `cpa` int(11) DEFAULT '0' COMMENT '注册量',
  `cps` int(11) DEFAULT '0' COMMENT '下款量',
  `background_picture` varchar(255) CHARACTER SET utf16 DEFAULT NULL COMMENT '渠道背景图',
  `repayment_days` int(11) DEFAULT NULL COMMENT '还款天数',
  `staging_num` int(2) unsigned zerofill DEFAULT '01' COMMENT '还款期数',
  `init_credit` decimal(10,2) DEFAULT NULL COMMENT '初始额度',
  `auto_pass_old` int(1) DEFAULT '1' COMMENT '是否开启复贷免审 0开启 1关闭',
  `dayrate_interest` decimal(32,8) DEFAULT NULL COMMENT '日利率',
  `rate_pundage` decimal(32,8) DEFAULT NULL COMMENT '手续费比率',
  `blacklist_filter` int(1) DEFAULT NULL COMMENT '是否开启过滤黑名单 1 开启 0 不开启 ',
  `dayrate_dedit` decimal(32,8) DEFAULT NULL COMMENT '日违约金比率',
  `maxrate_dedit` decimal(32,8) DEFAULT NULL COMMENT '最大逾期违约金比率',
  `auto_pay_score` int(11) DEFAULT NULL COMMENT '开启满足风控分自动放款 1 开启  2  不开启',
  `days_repeat_refuse_overdue` int(11) DEFAULT NULL COMMENT '复贷自动拒绝(逾期天数)',
  `auto_pay_old` int(11) DEFAULT NULL COMMENT '是否开启老客自动放款 1 开启 2 不开启',
  `times_refuse` int(11) DEFAULT NULL COMMENT '复贷超过几次拒绝',
  `days_send_before` int(11) DEFAULT NULL COMMENT '到期前几天发送短信',
  `days_send_overdue` int(11) DEFAULT NULL COMMENT '逾期几天后发短信',
  `days_unrepayment_overdue` int(11) DEFAULT NULL COMMENT '逾期不自动扣费天数',
  `apply_second_refuse` int(11) DEFAULT NULL COMMENT '拒绝用户可重新申请借款天数',
  `extension_day` int(255) DEFAULT NULL COMMENT '展期天数',
  `extension_price` decimal(10,2) DEFAULT NULL COMMENT '展期金额',
  `risk_switch` int(11) DEFAULT '0' COMMENT '0 关闭 1开启',
  `pms_id` int(11) DEFAULT NULL,
  `is_white` int(11) DEFAULT NULL COMMENT '1开始 0关闭',
  `short_link` varchar(255) DEFAULT NULL COMMENT '短链接',
  `short_link_time` int(11) DEFAULT NULL COMMENT '短链接到期时间',
  `new_auto_pay` int(11) DEFAULT '0' COMMENT '新用户自动放款 0不放款 1自动放款 ',
  `old_auto_pay` int(11) DEFAULT '0' COMMENT '老用户通过是否自动放款 0不放款 1 放款',
  `new_auto_orders` int(11) DEFAULT '0' COMMENT '新用户自动下单 0 不下单 1 下单',
  `old_auto_orders` int(11) DEFAULT '0' COMMENT '老用户自动下单 0 不下单 1 下单',
  `send_num` int(11) DEFAULT '1' COMMENT '允许预下单复借的次数',
  `old_auto_pass` int(11) DEFAULT '0' COMMENT '老用户自动通过 0不通过 1 通过',
  PRIMARY KEY (`id`,`name`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `identifier` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='渠道配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_config`
--

LOCK TABLES `channel_config` WRITE;
/*!40000 ALTER TABLE `channel_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_conversion`
--

DROP TABLE IF EXISTS `channel_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_conversion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '渠道主键',
  `channel_id` int(11) DEFAULT '0' COMMENT '渠道Id',
  `name` varchar(100) DEFAULT NULL COMMENT '渠道名称',
  `intercept_num` int(11) DEFAULT '0' COMMENT '拦截数',
  `black_before_num` int(11) DEFAULT '0' COMMENT '前置黑名单数',
  `black_num` int(11) DEFAULT '0' COMMENT '黑名单数',
  `uv` int(11) DEFAULT '0' COMMENT 'uv 数量',
  `registration_number` int(11) DEFAULT '0' COMMENT '注册数量',
  `login_num` int(11) DEFAULT '0' COMMENT '登录数量',
  `live_auth` int(11) DEFAULT '0' COMMENT '活体数量',
  `bank_auth` int(11) DEFAULT '0' COMMENT '银行卡数量',
  `carrier_auth` int(11) DEFAULT '0' COMMENT '运营商数量',
  `relation_auth` int(11) DEFAULT '0' COMMENT '关系认证数量',
  `apply` int(11) DEFAULT '0' COMMENT '申请数',
  `pass` int(11) DEFAULT '0' COMMENT '通过数',
  `cps` int(11) DEFAULT '0' COMMENT '放款数',
  `intercept_rate` decimal(13,2) DEFAULT '0.00' COMMENT '拦截率',
  `black_before_rate` decimal(13,2) DEFAULT '0.00' COMMENT '前置拦截率',
  `black_rate` decimal(13,2) DEFAULT '0.00' COMMENT '黑名单率',
  `login_rate` decimal(13,2) DEFAULT '0.00' COMMENT '登录率',
  `live_auth_rate` decimal(13,2) DEFAULT '0.00' COMMENT '人脸率',
  `bank_auth_rate` decimal(13,2) DEFAULT '0.00' COMMENT '银行卡率',
  `carrier_auth_rate` decimal(13,2) DEFAULT '0.00' COMMENT '运营商率',
  `relation_auth_rate` decimal(13,2) DEFAULT '0.00' COMMENT '关系率',
  `apply_rate` decimal(13,2) DEFAULT '0.00' COMMENT '申请率',
  `pass_rate` decimal(13,2) DEFAULT '0.00' COMMENT '通过率',
  `cps_rate` decimal(13,2) DEFAULT '0.00' COMMENT '放款率',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='渠道转换表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_conversion`
--

LOCK TABLES `channel_conversion` WRITE;
/*!40000 ALTER TABLE `channel_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_credit_increament`
--

DROP TABLE IF EXISTS `channel_credit_increament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_credit_increament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL COMMENT '渠道id',
  `settle_num` int(3) DEFAULT NULL COMMENT '结清次数',
  `max_overdue_day` int(4) DEFAULT NULL COMMENT '最长逾期天数',
  `credit_incre` decimal(10,2) DEFAULT NULL COMMENT '提额',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='渠道逾期配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_credit_increament`
--

LOCK TABLES `channel_credit_increament` WRITE;
/*!40000 ALTER TABLE `channel_credit_increament` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_credit_increament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_risk_management`
--

DROP TABLE IF EXISTS `channel_risk_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_risk_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `auto_pass_score` decimal(10,2) DEFAULT NULL COMMENT '自动通过分数',
  `auto_reject_score` decimal(10,2) DEFAULT NULL COMMENT '自动拒绝分数',
  `orderby` int(2) DEFAULT NULL COMMENT '默认排序字段',
  `status` int(1) DEFAULT NULL COMMENT '是否开启 1 开启 2 不开启',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `risk_id` int(11) DEFAULT NULL COMMENT '风控类型 主键 1 暗金 2字谜',
  `type` int(11) DEFAULT NULL COMMENT '0 是新客户 1 是老客户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='渠道风控配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_risk_management`
--

LOCK TABLES `channel_risk_management` WRITE;
/*!40000 ALTER TABLE `channel_risk_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_risk_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_stage`
--

DROP TABLE IF EXISTS `channel_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL COMMENT '渠道id',
  `stage_num` int(3) DEFAULT NULL COMMENT '第n期',
  `pay_percent` decimal(10,2) DEFAULT NULL COMMENT '还款比率',
  `repayment_day` int(4) DEFAULT NULL COMMENT '还款天数',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='渠道还款率配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_stage`
--

LOCK TABLES `channel_stage` WRITE;
/*!40000 ALTER TABLE `channel_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_statistics`
--

DROP TABLE IF EXISTS `channel_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL COMMENT '渠道基本信息id',
  `access_type` int(1) DEFAULT NULL COMMENT '访问类别 1 浏览量， 2 注册量',
  `address` varchar(100) DEFAULT NULL COMMENT '注册或访问来源（ip 或 设备）',
  `num` int(11) DEFAULT NULL COMMENT '统计数（同一设备 1 uv，同一ip 5个）',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `more` (`channel_id`,`address`,`access_type`,`created_at`) USING BTREE,
  KEY `channel` (`channel_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='渠道访问类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel_statistics`
--

LOCK TABLES `channel_statistics` WRITE;
/*!40000 ALTER TABLE `channel_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_orders`
--

DROP TABLE IF EXISTS `oms_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_code` char(20) CHARACTER SET utf8 NOT NULL COMMENT '订单号',
  `actual_price` decimal(32,8) DEFAULT NULL COMMENT '实到金额',
  `borrow_price` decimal(32,8) DEFAULT NULL COMMENT '放款金额',
  `created_at` int(11) DEFAULT NULL COMMENT '申请日期',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `settle_at` int(11) DEFAULT NULL COMMENT '结算时间',
  `overdue_day` int(11) DEFAULT NULL COMMENT '逾期天数',
  `order_status` int(11) DEFAULT NULL COMMENT '0 待审核 1 待审批 2 待放款 3 正在放款 4 已经放款 5 已结清 6 放款失败 7 已拒绝 8 正在还款',
  `stage_num` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '多少期',
  `dayrate_interest` decimal(32,6) DEFAULT NULL COMMENT '日利率',
  `dayrate_dedit` decimal(32,6) DEFAULT NULL COMMENT '日违约金比率',
  `maxrate_dedit` decimal(32,6) DEFAULT NULL COMMENT '最大逾期违约金比率',
  `days_send_before` int(11) DEFAULT NULL COMMENT '到期前几天发送短信',
  `days_send_overdue` int(11) DEFAULT NULL COMMENT '逾期几天后发短信',
  `days_unrepayment_overdue` int(11) DEFAULT NULL COMMENT '逾期不自动扣费天数',
  `bank_card` varchar(1000) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行卡号',
  `loan_at` int(11) DEFAULT NULL COMMENT '放款时间',
  `plan_on_at` int(11) DEFAULT NULL COMMENT '计划结清日期',
  `approve_by` int(11) DEFAULT NULL COMMENT '审批人',
  `approve_at` int(11) DEFAULT NULL COMMENT '审批时间',
  `loan_by` int(11) DEFAULT NULL COMMENT '放款人',
  `serial_code` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '流水号',
  `loan_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '放款人名称',
  `risk_id` int(11) DEFAULT NULL COMMENT '风控id',
  `risk_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '风控名称',
  `risk_num` decimal(5,2) DEFAULT NULL COMMENT '风控分数',
  `loan_day` int(11) DEFAULT NULL COMMENT '放款天数',
  `order_rate` decimal(10,4) DEFAULT NULL COMMENT '利息',
  `handler_status` int(11) DEFAULT NULL COMMENT '处理状态（未定义）',
  `bank_card_id` int(11) DEFAULT NULL COMMENT '银行卡id',
  `pay_date` int(11) DEFAULT NULL COMMENT '到账时间',
  `extension_num` int(11) DEFAULT '0' COMMENT '展期次数',
  `osd_code` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `first_loan` int(11) DEFAULT NULL COMMENT '借款数',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道表id',
  `oms_send_id` int(11) DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '拒绝原因',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `osd_code` (`osd_code`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `loan_at` (`loan_at`) USING BTREE,
  KEY `approve_by` (`approve_by`) USING BTREE,
  KEY `loan_by` (`loan_by`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_orders`
--

LOCK TABLES `oms_orders` WRITE;
/*!40000 ALTER TABLE `oms_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_overdue_analyse_report`
--

DROP TABLE IF EXISTS `oms_overdue_analyse_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_overdue_analyse_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `report_date` int(11) DEFAULT NULL COMMENT '报表日期',
  `total` int(11) DEFAULT NULL COMMENT '总订单数',
  `first_borrow` int(11) DEFAULT NULL COMMENT '首借数',
  `repeat_borrow` int(11) DEFAULT NULL COMMENT '复借数',
  `continue_borrow` int(11) DEFAULT NULL COMMENT '续期数',
  `first_overdue` int(11) DEFAULT NULL COMMENT '首逾数',
  `first_overdue_percent` decimal(4,3) DEFAULT NULL COMMENT '首逾率',
  `repeat_overdue` int(11) DEFAULT NULL COMMENT '复逾数',
  `repeat_overdue_percent` decimal(4,3) DEFAULT NULL COMMENT '复逾率',
  `continue_overdue` int(11) DEFAULT NULL COMMENT '续期逾期数',
  `continue_overdue_percent` decimal(4,3) DEFAULT NULL COMMENT '续期逾期率',
  `first_overdue_one` int(11) DEFAULT NULL COMMENT '逾期1-2天首借数',
  `repeat_overdue_one` int(11) DEFAULT NULL COMMENT '逾期1-2天复借数',
  `continue_overdue_one` int(11) DEFAULT NULL COMMENT '逾期1-2天续期数',
  `first_overdue_three` int(11) DEFAULT NULL COMMENT '逾期3-4天首借数',
  `repeat_overdue_three` int(11) DEFAULT NULL COMMENT '逾期3-4天复借数',
  `continue_overdue_three` int(11) DEFAULT NULL COMMENT '逾期3-4天续期数',
  `first_overdue_five` int(11) DEFAULT NULL COMMENT '逾期5-6天首借数',
  `repeat_overdue_five` int(11) DEFAULT NULL COMMENT '逾期5-6天复借数',
  `continue_overdue_five` int(11) DEFAULT NULL COMMENT '逾期5-6天续期数',
  `first_overdue_seven` int(11) DEFAULT NULL COMMENT '逾期7-14天首借数',
  `repeat_overdue_seven` int(11) DEFAULT NULL COMMENT '逾期7-14天复借数',
  `continue_overdue_seven` int(11) DEFAULT NULL COMMENT '逾期7-14天续期数',
  `first_overdue_fourteen` int(11) DEFAULT NULL COMMENT '逾期14天以上首借数',
  `repeat_overdue_fourteen` int(11) DEFAULT NULL COMMENT '逾期14天复借数',
  `continue_overdue_fourteen` int(11) DEFAULT NULL COMMENT '逾期14天续期数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `report_date` (`report_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='逾期订单分析日报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_overdue_analyse_report`
--

LOCK TABLES `oms_overdue_analyse_report` WRITE;
/*!40000 ALTER TABLE `oms_overdue_analyse_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_overdue_analyse_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_reduce`
--

DROP TABLE IF EXISTS `oms_reduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_reduce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sub_order_id` bigint(20) DEFAULT NULL COMMENT '子订单信息',
  `apply_price` decimal(32,8) DEFAULT NULL COMMENT '申请金额',
  `real_price` decimal(32,8) DEFAULT NULL COMMENT '实际减免金额',
  `reduce_status` enum('待审批','成功','失败') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '待审批' COMMENT '减免状态',
  `reason` varchar(200) DEFAULT NULL COMMENT '原因',
  `updated_at` int(11) DEFAULT NULL COMMENT '审批时间',
  `updated_by` varchar(30) DEFAULT NULL COMMENT '审批人',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='订单减免表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_reduce`
--

LOCK TABLES `oms_reduce` WRITE;
/*!40000 ALTER TABLE `oms_reduce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_reduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_remission_order`
--

DROP TABLE IF EXISTS `oms_remission_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_remission_order` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL COMMENT '主订单id',
  `sub_order_id` bigint(20) DEFAULT NULL,
  `price` decimal(32,8) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='主订单和子订单的关联关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_remission_order`
--

LOCK TABLES `oms_remission_order` WRITE;
/*!40000 ALTER TABLE `oms_remission_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_remission_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_repayment_record`
--

DROP TABLE IF EXISTS `oms_repayment_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_repayment_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` decimal(32,2) DEFAULT NULL COMMENT '还款金额',
  `sub_order_id` bigint(20) DEFAULT NULL COMMENT '子订单信息',
  `serial_code` char(30) DEFAULT NULL COMMENT '流水号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '主订单id',
  `order_code` char(20) DEFAULT NULL COMMENT '主订单编号',
  `created_at` int(11) DEFAULT NULL COMMENT '还款时间',
  `created_by` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '还款渠道 1银行卡   2 支付宝支付，3微信支付4代扣',
  `dev_price` decimal(30,2) DEFAULT NULL COMMENT '剩余还款金额',
  `note` varchar(6000) DEFAULT NULL COMMENT '失败理由',
  `status` tinyint(4) DEFAULT NULL COMMENT '是否成功 0成功 1失败 2 关闭 3未支付',
  `pay_method` tinyint(4) DEFAULT NULL COMMENT '还款方式   0线下还款 1 主动还款 2 系统代扣',
  `pay_type` tinyint(4) DEFAULT NULL COMMENT '1 订单 2展期',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单还款记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_repayment_record`
--

LOCK TABLES `oms_repayment_record` WRITE;
/*!40000 ALTER TABLE `oms_repayment_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_repayment_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_seller_report`
--

DROP TABLE IF EXISTS `oms_seller_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_seller_report` (
  ` id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sub_order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `times` int(11) unsigned DEFAULT '0' COMMENT '催收次数',
  `collection_by` varchar(30) DEFAULT NULL COMMENT '催收人',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `created_by` int(11) DEFAULT NULL COMMENT '创建人',
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0 戴催收 1 已经还款',
  `price` decimal(32,2) DEFAULT '0.00' COMMENT '催回金额',
  PRIMARY KEY (` id`),
  KEY ` id1` (` id`) USING BTREE,
  KEY `sub_order_id` (`sub_order_id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='催收表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_seller_report`
--

LOCK TABLES `oms_seller_report` WRITE;
/*!40000 ALTER TABLE `oms_seller_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_seller_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_send_orders`
--

DROP TABLE IF EXISTS `oms_send_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_send_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 待生成订单 1 已经生成过订单 2 原订单已经被拒绝',
  `num` int(11) DEFAULT NULL COMMENT '剩余续借次数',
  `sum_num` int(11) DEFAULT NULL COMMENT '最大续借次数',
  `price` decimal(32,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='订单续借表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_send_orders`
--

LOCK TABLES `oms_send_orders` WRITE;
/*!40000 ALTER TABLE `oms_send_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_send_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_sub_order_report`
--

DROP TABLE IF EXISTS `oms_sub_order_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_sub_order_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `report_date` int(11) DEFAULT NULL COMMENT '报表日期',
  `total` int(11) DEFAULT NULL COMMENT '总订单数',
  `first_borrow` int(11) DEFAULT NULL COMMENT '首借数',
  `repeat_borrow` int(11) DEFAULT NULL COMMENT '复借数',
  `continue_borrow` int(11) DEFAULT NULL COMMENT '续期数',
  `first_overdue` int(11) DEFAULT NULL COMMENT '首逾数',
  `first_overdue_percent` decimal(4,3) DEFAULT NULL COMMENT '首逾率',
  `repeat_overdue` int(11) DEFAULT NULL COMMENT '复逾数',
  `repeat_overdue_percent` decimal(4,3) DEFAULT NULL COMMENT '复逾率',
  `continue_overdue` int(11) DEFAULT NULL COMMENT '续期逾期数',
  `continue_overdue_percent` decimal(4,3) DEFAULT NULL COMMENT '续期逾期率',
  `first_overdue_one` int(11) DEFAULT NULL COMMENT '逾期1-2天首借数',
  `repeat_overdue_one` int(11) DEFAULT NULL COMMENT '逾期1-2天复借数',
  `continue_overdue_one` int(11) DEFAULT NULL COMMENT '逾期1-2天续期数',
  `first_overdue_three` int(11) DEFAULT NULL COMMENT '逾期3-4天首借数',
  `repeat_overdue_three` int(11) DEFAULT NULL COMMENT '逾期3-4天复借数',
  `continue_overdue_three` int(11) DEFAULT NULL COMMENT '逾期3-4天续期数',
  `first_overdue_five` int(11) DEFAULT NULL COMMENT '逾期5-6天首借数',
  `repeat_overdue_five` int(11) DEFAULT NULL COMMENT '逾期5-6天复借数',
  `continue_overdue_five` int(11) DEFAULT NULL COMMENT '逾期5-6天续期数',
  `first_overdue_seven` int(11) DEFAULT NULL COMMENT '逾期7-14天首借数',
  `repeat_overdue_seven` int(11) DEFAULT NULL COMMENT '逾期7-14天复借数',
  `continue_overdue_seven` int(11) DEFAULT NULL COMMENT '逾期7-14天续期数',
  `first_overdue_fourteen` int(11) DEFAULT NULL COMMENT '逾期14天以上首借数',
  `repeat_overdue_fourteen` int(11) DEFAULT NULL COMMENT '逾期14天复借数',
  `continue_overdue_fourteen` int(11) DEFAULT NULL COMMENT '逾期14天续期数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `report_date` (`report_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='逾期子订单订单分析日报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_sub_order_report`
--

LOCK TABLES `oms_sub_order_report` WRITE;
/*!40000 ALTER TABLE `oms_sub_order_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_sub_order_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_sub_orders`
--

DROP TABLE IF EXISTS `oms_sub_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_sub_orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `sub_order_code` varchar(20) DEFAULT NULL COMMENT '子订单编号',
  `plan_on_at` int(11) DEFAULT NULL COMMENT '计化还款日期',
  `actual_at` int(11) DEFAULT NULL COMMENT '实际还款日期',
  `settle_at` int(11) DEFAULT NULL COMMENT '结算时间',
  `created_at` int(11) DEFAULT NULL,
  `actual_price` decimal(32,2) DEFAULT NULL COMMENT '实际金额      本金加利息',
  `adv_price` decimal(32,2) DEFAULT NULL COMMENT '已经还款的金额',
  `dev_price` decimal(32,2) DEFAULT NULL COMMENT '剩余金额',
  `status` int(11) DEFAULT NULL COMMENT '是否结清 0 表示未结清 1 表示已结清2表示逾期',
  `overdue_day` int(11) DEFAULT '0' COMMENT '逾期天数',
  `accrual_price` decimal(32,8) DEFAULT NULL COMMENT '利息钱',
  `poundage_price` decimal(32,8) DEFAULT NULL COMMENT '手续费',
  `overdue_price` decimal(32,8) DEFAULT NULL COMMENT '逾期金额',
  `stage_num` int(11) DEFAULT NULL COMMENT '期数',
  `reduce` decimal(32,8) DEFAULT NULL COMMENT '减免金额',
  `updated_at` int(11) DEFAULT NULL,
  `repay_num` int(11) DEFAULT '0',
  `credit_limit` int(11) DEFAULT '0',
  `urge_type` tinyint(2) DEFAULT '0' COMMENT '催收方式 0：待分配 1：内催 2：外催 3：话务员催收',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5142 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='子订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_sub_orders`
--

LOCK TABLES `oms_sub_orders` WRITE;
/*!40000 ALTER TABLE `oms_sub_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oms_sub_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_record`
--

DROP TABLE IF EXISTS `risk_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risk_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) DEFAULT '0' COMMENT '订单id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `risk_id` int(11) DEFAULT NULL COMMENT '对应的风控id',
  `request_id` varchar(52) DEFAULT NULL COMMENT '风控返回的id',
  `score` decimal(5,2) DEFAULT NULL COMMENT '风控分',
  `my_history` longtext,
  `history` longtext COMMENT '历史操作',
  `suggest` tinyint(2) DEFAULT '1' COMMENT '1',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `orders_id` (`orders_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9468 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='风控结果';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_record`
--

LOCK TABLES `risk_record` WRITE;
/*!40000 ALTER TABLE `risk_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rms_today_detail`
--

DROP TABLE IF EXISTS `rms_today_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rms_today_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `today_request` varchar(100) DEFAULT NULL COMMENT '今日申请借款信息	',
  `today_detail_rule` varchar(100) DEFAULT NULL COMMENT '今日行为风控规则建议',
  `today_request_loan_p` int(3) DEFAULT NULL COMMENT '今日申请借款平台数',
  `today_request_loan_fre` int(3) DEFAULT NULL COMMENT '今日申请借款次数',
  `today_request_loan_divice` int(3) DEFAULT NULL COMMENT '今日申请借款设备个数',
  `today_request_loan_fre_max` int(3) DEFAULT NULL COMMENT '今日每小时申请借款次数最大值',
  `today_request_loan_p_max` int(3) DEFAULT NULL COMMENT '今日每小时申请借款平台数最大值',
  `today_request_loan_fre_more` int(3) DEFAULT NULL COMMENT '今日申请借款次数过多',
  `today_request_loan_p_more` int(3) DEFAULT NULL COMMENT '今日申请借款平台数过多',
  `today_request_loan_divice_more` int(3) DEFAULT NULL COMMENT '今日申请设备过多',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='今日报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rms_today_detail`
--

LOCK TABLES `rms_today_detail` WRITE;
/*!40000 ALTER TABLE `rms_today_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `rms_today_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rms_uv_log`
--

DROP TABLE IF EXISTS `rms_uv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rms_uv_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `type` int(11) DEFAULT NULL COMMENT '1 浏览量',
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='uv统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rms_uv_log`
--

LOCK TABLES `rms_uv_log` WRITE;
/*!40000 ALTER TABLE `rms_uv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `rms_uv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_app_version`
--

DROP TABLE IF EXISTS `system_app_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `ios_address` varchar(255) DEFAULT NULL COMMENT 'ios地址',
  `az_address` varchar(255) DEFAULT NULL COMMENT '安卓地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_app_version`
--

LOCK TABLES `system_app_version` WRITE;
/*!40000 ALTER TABLE `system_app_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_app_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_base`
--

DROP TABLE IF EXISTS `system_config_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_base` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auto_approve_status` int(1) DEFAULT NULL COMMENT '逾期减免自动审批 1 开启 0 不开启',
  `auto_pay_status` int(1) DEFAULT NULL COMMENT '待放款自动放款 1 开启 0 不开启',
  `min_age_user` int(4) DEFAULT NULL COMMENT '借款对象年纪',
  `max_age_user` int(4) DEFAULT NULL,
  `second_reminder` enum('开启','关闭') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '关闭',
  `extension_status` int(1) DEFAULT NULL COMMENT '是否开启展期 1 开启 0 不开启 ',
  `white_list_registration` varchar(255) DEFAULT NULL COMMENT '是否开启白名单注册 1开启',
  `extension_day` varchar(255) DEFAULT NULL COMMENT '展期天数',
  `risk` int(11) DEFAULT '0' COMMENT '0 第一个风控流程 1 操盘手的那个',
  `alipay_code` longtext COMMENT ' 支付宝二维码',
  `weixin_code` longtext COMMENT '微信二维码',
  `high_price` int(10) DEFAULT NULL COMMENT '最高金额展示',
  `baidu_tencent` int(11) DEFAULT NULL COMMENT '1 百度 0腾讯',
  `ocr` int(11) DEFAULT '0' COMMENT '0 腾讯 1阿里 ',
  `overdue_blacklist` int(11) DEFAULT '0' COMMENT '逾期几天加入黑名单',
  `borrowing_adjust_amount` tinyint(2) NOT NULL DEFAULT '1' COMMENT '复借后可否调整额度 0：不可以 1：可以',
  `customer` longtext COMMENT '客服',
  `type_is_auto` int(11) DEFAULT '0' COMMENT '用户是否开启自动下单 0 关闭 1 开起 ',
  `app_customer` varchar(255) DEFAULT NULL COMMENT ' app客服',
  `is_risk` int(11) DEFAULT '0' COMMENT '是否开启二级风控0关闭1开启',
  `risk_min` int(11) DEFAULT NULL COMMENT '最低分',
  `risk_max` int(11) DEFAULT NULL COMMENT '最高分',
  `is_look_interest` int(11) DEFAULT NULL COMMENT '是否看到利息 1 看到 0 未看到',
  `enable_ip_lock` int(1) DEFAULT '1' COMMENT '是否开启Ip锁 1：开启 2：关闭',
  `enable_socket` int(1) DEFAULT '1' COMMENT '是否开启令牌限制 1：开启 2：关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_base`
--

LOCK TABLES `system_config_base` WRITE;
/*!40000 ALTER TABLE `system_config_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_config_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_img`
--

DROP TABLE IF EXISTS `system_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` int(11) DEFAULT NULL,
  `dr` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除',
  `img_url` longtext COMMENT '图片路径',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '图片名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统图片';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_img`
--

LOCK TABLES `system_img` WRITE;
/*!40000 ALTER TABLE `system_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_active_photos`
--

DROP TABLE IF EXISTS `ums_active_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_active_photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `classfy` tinyint(4) DEFAULT NULL COMMENT '正面照为0 ，背面照为1',
  `original_img` longtext COLLATE utf8_bin COMMENT '原始图片',
  `condensed_img` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '压缩图片',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `yd_data` longtext COLLATE utf8_bin,
  `score` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '活体分数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `classfy` (`classfy`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77624 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户活体图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_active_photos`
--

LOCK TABLES `ums_active_photos` WRITE;
/*!40000 ALTER TABLE `ums_active_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_active_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_app_disable_bank`
--

DROP TABLE IF EXISTS `ums_app_disable_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_app_disable_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blackbank` varchar(255) DEFAULT NULL COMMENT '禁用银行名称',
  `isenable` varchar(255) NOT NULL COMMENT '是否启用 1启用 0禁用',
  `createat` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户禁用银行';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_app_disable_bank`
--

LOCK TABLES `ums_app_disable_bank` WRITE;
/*!40000 ALTER TABLE `ums_app_disable_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_app_disable_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_auth_status`
--

DROP TABLE IF EXISTS `ums_auth_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_auth_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '客户ID',
  `id_auth` tinyint(1) DEFAULT '1' COMMENT '身份认证',
  `carrier_auth` tinyint(1) DEFAULT '1' COMMENT '运营商认证A',
  `taobao_auth` tinyint(1) DEFAULT '1' COMMENT '淘宝认证',
  `work_auth` tinyint(1) DEFAULT '1' COMMENT '工作信息认证',
  `relation_auth` tinyint(1) DEFAULT '1' COMMENT '关系认证A',
  `identity_people` tinyint(4) DEFAULT '1' COMMENT '人证合一',
  `live_auth` tinyint(1) DEFAULT '1' COMMENT '活体检测A',
  `bank_auth` tinyint(1) DEFAULT '1' COMMENT '银行卡是否捆绑A',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cid` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78290 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户注册状态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_auth_status`
--

LOCK TABLES `ums_auth_status` WRITE;
/*!40000 ALTER TABLE `ums_auth_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_auth_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_bank_card`
--

DROP TABLE IF EXISTS `ums_bank_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_bank_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '银行名称',
  `number` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '银行卡卡号',
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '预留手机号',
  `address` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '开户地址',
  `type` tinyint(4) DEFAULT NULL COMMENT '银行卡类型 1表示存蓄卡，2表示信用卡',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认 1表示默认 0 表示不默认',
  `is_use` tinyint(4) DEFAULT NULL COMMENT '是否可用',
  `pay_token` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '绑卡编号，由绑卡返回',
  `dr` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否解绑 0 绑定 1 解绑',
  `created_at` int(11) DEFAULT NULL COMMENT '绑定日期',
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `bank_code` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '开户省',
  `city` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '开户市',
  `card_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '卡名称',
  `tel` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '官方客服电话',
  `type_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '卡类型',
  `logo` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `card_bin` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '银行卡bin码',
  `bin_digits` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '银行卡bin码长度',
  `card_digits` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '银行卡号长度',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `more` (`user_id`,`number`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31123124 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户银行卡信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_bank_card`
--

LOCK TABLES `ums_bank_card` WRITE;
/*!40000 ALTER TABLE `ums_bank_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_bank_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_black_list`
--

DROP TABLE IF EXISTS `ums_black_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_black_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identity_card` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户黑名单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_black_list`
--

LOCK TABLES `ums_black_list` WRITE;
/*!40000 ALTER TABLE `ums_black_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_black_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_call_record`
--

DROP TABLE IF EXISTS `ums_call_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_call_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(1000) COLLATE utf8_bin DEFAULT '未知' COMMENT '联系人姓名',
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '通话的手机',
  `period_time` int(11) DEFAULT NULL COMMENT '时间段',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型1：呼入，2：呼出，3：未接通 ',
  `start_time` int(111) DEFAULT NULL COMMENT '开始时间',
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8551 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户手机通话记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_call_record`
--

LOCK TABLES `ums_call_record` WRITE;
/*!40000 ALTER TABLE `ums_call_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_call_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_credit_invest`
--

DROP TABLE IF EXISTS `ums_credit_invest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_credit_invest` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `content` longtext COMMENT '云慧认证返回的内容',
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户云慧画像';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_credit_invest`
--

LOCK TABLES `ums_credit_invest` WRITE;
/*!40000 ALTER TABLE `ums_credit_invest` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_credit_invest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_credit_record`
--

DROP TABLE IF EXISTS `ums_credit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_credit_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '信用额度授权记录',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `before_price` decimal(32,8) DEFAULT NULL COMMENT '授权额度',
  `after_price` decimal(32,8) DEFAULT NULL COMMENT '更新后额度',
  `num` int(11) DEFAULT NULL COMMENT '贷款次数 -1,表示手动提额，0表示初次贷款，1表示还清一次',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户信用额度修改记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_credit_record`
--

LOCK TABLES `ums_credit_record` WRITE;
/*!40000 ALTER TABLE `ums_credit_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_credit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_extension`
--

DROP TABLE IF EXISTS `ums_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_extension` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `extension_price` decimal(10,2) DEFAULT NULL COMMENT '展期金额',
  `extension_day` int(255) DEFAULT NULL COMMENT '展期天数',
  `extension_create_time` int(11) DEFAULT NULL COMMENT '展期后还款时间',
  `extension_payment_method` int(255) DEFAULT NULL COMMENT '1 银行卡 2支付宝 3 微信',
  `actual_extension_time` int(11) DEFAULT NULL COMMENT '实际还款时间',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `type` int(2) DEFAULT '0' COMMENT '0表示主动支付 1 表示线下',
  `status` int(11) DEFAULT NULL COMMENT '0 第一次展期 1多次展期',
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户展期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_extension`
--

LOCK TABLES `ums_extension` WRITE;
/*!40000 ALTER TABLE `ums_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_face`
--

DROP TABLE IF EXISTS `ums_face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_face` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `result_auth` double(3,2) DEFAULT NULL COMMENT '认证结果	',
  `id_no` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号码',
  `id_name` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证姓名	',
  `start_card` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '证件有效期证件有效期		',
  `url_frontcard` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证人像面照下载地址',
  `url_backcard` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证国徽面照下载地址	',
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户人脸认证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_face`
--

LOCK TABLES `ums_face` WRITE;
/*!40000 ALTER TABLE `ums_face` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_face` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_loan_records`
--

DROP TABLE IF EXISTS `ums_loan_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_loan_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `amount` decimal(32,8) DEFAULT NULL COMMENT '贷款金额',
  `real_loan` decimal(32,8) DEFAULT NULL COMMENT '实际放款',
  `exam_at` int(11) DEFAULT NULL COMMENT '审批日期',
  `deadline` int(11) DEFAULT NULL COMMENT '贷款期限',
  `status` int(1) DEFAULT NULL COMMENT '状态 0 未结清  1 还款中 2 已结清 3 已逾期',
  `roll_over` int(11) DEFAULT NULL COMMENT '展期次数',
  `address` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '所在位置',
  `created_at` int(11) DEFAULT NULL COMMENT '贷款日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户放款记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_loan_records`
--

LOCK TABLES `ums_loan_records` WRITE;
/*!40000 ALTER TABLE `ums_loan_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_loan_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_location`
--

DROP TABLE IF EXISTS `ums_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_location` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '定位',
  `address` text COLLATE utf8_bin COMMENT '所在位置',
  `order_id` bigint(20) DEFAULT NULL,
  `action` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '动作',
  `created_at` int(111) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户定位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_location`
--

LOCK TABLES `ums_location` WRITE;
/*!40000 ALTER TABLE `ums_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_login_log`
--

DROP TABLE IF EXISTS `ums_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `is_login` int(11) DEFAULT NULL,
  `create_time` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15977 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户登录日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_login_log`
--

LOCK TABLES `ums_login_log` WRITE;
/*!40000 ALTER TABLE `ums_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_mobile_record`
--

DROP TABLE IF EXISTS `ums_mobile_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_mobile_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(30) DEFAULT NULL COMMENT '通讯录的姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2008986 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户手机通讯录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_mobile_record`
--

LOCK TABLES `ums_mobile_record` WRITE;
/*!40000 ALTER TABLE `ums_mobile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_mobile_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_operator_info`
--

DROP TABLE IF EXISTS `ums_operator_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_operator_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `name` varchar(10) DEFAULT NULL COMMENT '姓名，运营商官网爬取，官网不提供 ，则为null',
  `id_card` varchar(20) DEFAULT NULL COMMENT '证件号，运营商官网爬取，官网不提供 ，则为null',
  `carrier` varchar(50) DEFAULT NULL COMMENT '运营商 CHINA_MOBILE（ 中国移动）CHINA_TELECOM（中国电信） CHINA_UNICOM （中国联通）',
  `province` varchar(20) DEFAULT NULL COMMENT '所属省份',
  `city` varchar(20) DEFAULT NULL COMMENT '所属城市',
  `address` varchar(100) DEFAULT NULL COMMENT '地址，运营商官网爬取，官网不提供 ，则为null	',
  `open_time` int(11) DEFAULT NULL COMMENT '入网时间，格式：yyyy-MM-dd\r\n运营商官网爬取，官网不提供 ，则为null',
  `open_months` varchar(10) DEFAULT NULL COMMENT '入网时长（单位:月）1年2月=> 14\r\n运营商官网爬取，官网不提供 ，则为null',
  `level` varchar(10) DEFAULT NULL COMMENT '帐号星级',
  `package_name` varchar(100) DEFAULT NULL COMMENT '套餐名称',
  `state` int(11) DEFAULT NULL COMMENT '帐号状态, -1未知 0正常 1单向停机 2停机 3预销户 4销户 5过户 6改号 99号码不存在',
  `available_balance` int(11) DEFAULT NULL COMMENT '当前可用余额（单位: 分）',
  `last_modify_time` int(11) DEFAULT NULL COMMENT '最近一次更新时间，格式: yyyy-MM-dd HH:mm:ss',
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`mobile`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户运营商数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_operator_info`
--

LOCK TABLES `ums_operator_info` WRITE;
/*!40000 ALTER TABLE `ums_operator_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_operator_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_phone_device`
--

DROP TABLE IF EXISTS `ums_phone_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_phone_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) DEFAULT NULL COMMENT '设备id每个手机的唯一标识',
  `phone_type` varchar(255) DEFAULT NULL COMMENT '手机类型',
  `create_at` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `mobile` varchar(22) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31252 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理手机设备';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_phone_device`
--

LOCK TABLES `ums_phone_device` WRITE;
/*!40000 ALTER TABLE `ums_phone_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_phone_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_relationship`
--

DROP TABLE IF EXISTS `ums_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_relationship` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `relation` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '关系',
  `name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '预留手机号',
  `address` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `is_exist` int(1) DEFAULT NULL COMMENT '是否存在通讯录中 1 表示存在 0表示不存在',
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56766 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户联系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_relationship`
--

LOCK TABLES `ums_relationship` WRITE;
/*!40000 ALTER TABLE `ums_relationship` DISABLE KEYS */;
INSERT INTO `ums_relationship` VALUES (1,23314,'同事','1','1','1',0,1),(2,23314,'朋友','2','2','2',2,2),(27944,26193,'夫妻','m','16739476298',NULL,NULL,1583480174),(27945,26193,'亲戚','q','16739476256',NULL,NULL,1583480174),(27946,26193,'亲戚','迪','16603615786',NULL,NULL,1583572202),(27947,26193,'父母','江小洁','15957044210',NULL,NULL,1583572202),(27948,26193,'亲戚','迪','16603615786',NULL,NULL,1583572204),(27949,26193,'父母','江小洁','15957044210',NULL,NULL,1583572204),(27950,26193,'亲戚','迪','16603615786',NULL,NULL,1583572207),(27951,26193,'父母','江小洁','15957044210',NULL,NULL,1583572207),(27952,26193,'亲戚','迪','16603615786',NULL,NULL,1583572208),(27953,26193,'父母','江小洁','15957044210',NULL,NULL,1583572208),(27954,26193,'亲戚','迪','16603615786',NULL,NULL,1583572224),(27955,26193,'父母','江小洁','15957044210',NULL,NULL,1583572224),(27956,8089,'夫妻','老婆','15221123760',NULL,NULL,1583574734),(27957,8089,'父母','哈哈','15212757604',NULL,NULL,1583574734),(27958,8089,'夫妻','老婆','15221123760',NULL,NULL,1583574748),(27959,8089,'父母','哈哈','15212757604',NULL,NULL,1583574748),(27960,8089,'夫妻','老婆','15221123760',NULL,NULL,1583574764),(27961,8089,'父母','哈哈','15212757604',NULL,NULL,1583574764),(27962,8089,'夫妻','老婆','15221123760',NULL,NULL,1583574778),(27963,8089,'父母','哈哈','15212757604',NULL,NULL,1583574778),(28008,1000,'亲戚','a','16739476257',NULL,NULL,1583818577),(28009,1000,'父母','q','16739476256',NULL,NULL,1583818577),(28106,26205,'父母','王总','135 8588 9583',NULL,NULL,1585218584),(28107,26205,'好友','杨总','132 8589 6685',NULL,NULL,1585218584),(28139,26209,'好友','abc','182 5823 1737',NULL,NULL,1586265355),(28146,26207,'父母','……~“”','18258231737',NULL,NULL,1587549693),(28147,26207,'好友','中国联通','18258231734',NULL,NULL,1587549693),(28148,26208,'父母','……~“”','18258231737',NULL,NULL,1588477458),(28149,26208,'好友','中国联通','18258231734',NULL,NULL,1588477458),(56765,56765,'父母','啊哈哈李','165 2525 3535',NULL,NULL,1586265355);
/*!40000 ALTER TABLE `ums_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_short_message`
--

DROP TABLE IF EXISTS `ums_short_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_short_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `content_message` longtext COMMENT '短信内容',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `create_time` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 优质 1 劣质',
  `type` int(11) DEFAULT NULL COMMENT ' 0 无关 1优质 2劣质',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12093534 DEFAULT CHARSET=utf8mb4 COMMENT='用户短信表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_short_message`
--

LOCK TABLES `ums_short_message` WRITE;
/*!40000 ALTER TABLE `ums_short_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_short_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_user_base_info`
--

DROP TABLE IF EXISTS `ums_user_base_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_user_base_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `real_name` varchar(100) DEFAULT '' COMMENT '真是姓名',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别  1 男 2 女',
  `birthday` varchar(20) DEFAULT NULL COMMENT '出生日期',
  `idcard` varchar(20) DEFAULT NULL COMMENT '身份证',
  `agencies` varchar(30) DEFAULT NULL COMMENT '发证机关',
  `valid_date` varchar(30) DEFAULT NULL COMMENT '身份证有效期',
  `is_marry` tinyint(1) DEFAULT '0' COMMENT '是否结婚 1表示已婚 0表示未婚',
  `company` varchar(30) DEFAULT NULL COMMENT '公司名称',
  `company_address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `company_mobile` varchar(20) DEFAULT NULL COMMENT '公司电话',
  `job` varchar(30) DEFAULT NULL COMMENT '在职岗位',
  `permanent_address` varchar(255) DEFAULT NULL COMMENT '常驻地址',
  `income` int(11) DEFAULT NULL COMMENT '月收入',
  `search_id` varchar(100) DEFAULT NULL COMMENT '运营商返回值',
  `home_address` varchar(2000) DEFAULT NULL COMMENT '家庭住址',
  `apply_time` int(11) DEFAULT NULL COMMENT '首次申请贷款时间',
  `phone_os` varchar(100) DEFAULT NULL COMMENT '手机版本',
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60828 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_user_base_info`
--

LOCK TABLES `ums_user_base_info` WRITE;
/*!40000 ALTER TABLE `ums_user_base_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_user_base_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_users_info`
--

DROP TABLE IF EXISTS `ums_users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_users_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `account` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '账号',
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '用户昵称',
  `real_name` varchar(10) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号',
  `regist_status` int(10) DEFAULT '0' COMMENT '客户认证状态 0 新建 1 活体认证 2 绑卡认证 3 运营商认证  4 关系认证',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道编号',
  `user_status` int(2) DEFAULT NULL COMMENT '用户状态，0待审核状态，1 认证完成，2待放款，3待还款，4已结清，5逾期中，6放款失败，7拒绝放款',
  `high_price` decimal(32,8) DEFAULT NULL COMMENT '最高额度',
  `search_id` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '运营商返回值',
  `risk_status` int(11) DEFAULT NULL COMMENT '风控状态',
  `is_extract` int(3) DEFAULT NULL COMMENT '是否可以提额',
  `first_loan` int(11) NOT NULL DEFAULT '0' COMMENT '是否首次贷款  0表示首贷 1表示附带一次',
  `collection` int(11) DEFAULT NULL COMMENT '催收记录',
  `dr` int(1) NOT NULL DEFAULT '0' COMMENT '1被拉黑',
  `created_at` int(11) DEFAULT NULL COMMENT '注册日期',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) unsigned DEFAULT '1',
  `task_Id` varchar(111) COLLATE utf8_bin DEFAULT NULL COMMENT '新颜唯一id',
  `score_live` int(11) DEFAULT NULL COMMENT '活体分数',
  `push_id` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'pushId',
  `carrier_id` int(11) DEFAULT NULL,
  `is_white` int(11) DEFAULT NULL COMMENT '1yes 0no',
  `is_app_ip` varchar(200) COLLATE utf8_bin DEFAULT '无来源' COMMENT '0 正常用户 1 命中用户',
  `is_app_status` varchar(255) COLLATE utf8_bin DEFAULT '0' COMMENT '正常用户',
  `auto_loan` int(1) DEFAULT '0' COMMENT '二次自动放款 0：启用 1：冻结',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `index_mobile` (`mobile`) USING BTREE,
  KEY `index_into_source` (`channel_id`) USING BTREE,
  KEY `index_real_name` (`real_name`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=60834 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='用户常用信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_users_info`
--

LOCK TABLES `ums_users_info` WRITE;
/*!40000 ALTER TABLE `ums_users_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_users_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_white_list`
--

DROP TABLE IF EXISTS `ums_white_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_white_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) DEFAULT NULL,
  `id_card` varchar(18) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户白名单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_white_list`
--

LOCK TABLES `ums_white_list` WRITE;
/*!40000 ALTER TABLE `ums_white_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_white_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_communication`
--

DROP TABLE IF EXISTS `urge_communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_communication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_order_id` int(11) DEFAULT NULL COMMENT '催收订单id',
  `urge_orger_id` int(11) DEFAULT NULL COMMENT '催收分配表Id',
  `person_id` int(11) DEFAULT NULL COMMENT '外催催收员id',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id',
  `user_id` int(11) DEFAULT '0' COMMENT '沟通对象id  ',
  `name` varchar(50) DEFAULT NULL COMMENT '沟通对象名称',
  `content` longtext COMMENT '沟通内容',
  `mobile` varchar(30) DEFAULT NULL COMMENT '联系电话',
  `type` tinyint(2) DEFAULT '0' COMMENT '类型 0：内催 1：外催 2：今日到期',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) DEFAULT '0' COMMENT '修改时间',
  `delete_at` int(11) DEFAULT '0' COMMENT '删除时间',
  `create_by` int(11) DEFAULT '0' COMMENT '创建者编号',
  `update_by` int(11) DEFAULT '0' COMMENT '修改者编号',
  `delete_by` int(11) DEFAULT '0' COMMENT '删除者编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='沟通记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_communication`
--

LOCK TABLES `urge_communication` WRITE;
/*!40000 ALTER TABLE `urge_communication` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_company`
--

DROP TABLE IF EXISTS `urge_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT '0' COMMENT '当角色是催收员时所属的催收公司',
  `name` varchar(255) DEFAULT NULL COMMENT '催收公司名称',
  `person` varchar(50) DEFAULT NULL COMMENT '联系人',
  `phone` char(11) DEFAULT NULL COMMENT '联系电话',
  `account` varchar(255) DEFAULT NULL COMMENT '登录账号',
  `password` varchar(255) DEFAULT '123456' COMMENT '密码',
  `salt` varchar(255) DEFAULT NULL COMMENT '密码盐',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态：0：启用 1：冻结  2：未修改密码',
  `role` tinyint(2) DEFAULT '0' COMMENT '角色 0：催收公司 1：催收员',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '修改时间',
  `delete_at` int(11) DEFAULT NULL COMMENT '删除时间',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者编号',
  `update_by` int(11) DEFAULT NULL COMMENT '修改者编号',
  `delete_by` int(11) DEFAULT NULL COMMENT '删除者编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account` (`account`(191)) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='催收公司';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_company`
--

LOCK TABLES `urge_company` WRITE;
/*!40000 ALTER TABLE `urge_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_company_report`
--

DROP TABLE IF EXISTS `urge_company_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_company_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT '0' COMMENT '催收公司id',
  `company_name` varchar(255) DEFAULT NULL COMMENT '催收公司名称',
  `order_total` int(11) DEFAULT '0' COMMENT '订单总数',
  `pending_distribution_order` int(11) DEFAULT '0' COMMENT '待分配订单总数量',
  `pending_distribution_amount` decimal(13,0) DEFAULT '0' COMMENT '待分配订单总金额',
  `pending_urge_order` int(11) DEFAULT '0' COMMENT '待催收订单总数量',
  `pending_urge_amount` decimal(13,2) DEFAULT '0.00' COMMENT '待催收总金额',
  `success_order` int(11) DEFAULT '0' COMMENT '催收成功订单总数',
  `success_amount` decimal(13,2) DEFAULT '0.00' COMMENT '成功催收订单总金额',
  `success_percent` decimal(7,4) DEFAULT '0.0000' COMMENT '催收成功率',
  `today_success_count` int(11) DEFAULT '0' COMMENT '当日成功催回订单数',
  `today_success_amount` decimal(13,2) DEFAULT '0.00' COMMENT '当日成功催回订单总金额',
  `deduction_amount` decimal(13,2) DEFAULT '0.00' COMMENT '减免总金额',
  `today_extension_count` int(11) DEFAULT '0' COMMENT '展期订单数量',
  `today_extension_amount` decimal(13,2) DEFAULT '0.00' COMMENT '展期金额',
  `report_date` int(11) DEFAULT '0' COMMENT '报表日期（当日凌晨时间戳）',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间戳',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='催收公司日报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_company_report`
--

LOCK TABLES `urge_company_report` WRITE;
/*!40000 ALTER TABLE `urge_company_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_company_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_order`
--

DROP TABLE IF EXISTS `urge_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_order_id` int(11) DEFAULT '0' COMMENT '催收订单id',
  `company_id` int(11) DEFAULT '0' COMMENT '外催收公司id',
  `person_id` int(11) DEFAULT '0' COMMENT '外催催收员Id',
  `admin_id` int(11) DEFAULT '0' COMMENT '内催管理员id(当urge_type催收方式是外催才有)',
  `status` tinyint(2) DEFAULT '0' COMMENT '催收状态 0：待分配 1：已分配 2：催收中 3：已释放 4：已结清 5：已展期 ',
  `limit_day` int(5) DEFAULT '0' COMMENT '限制天数 -1：表示无限制',
  `limit_date` int(11) DEFAULT '0' COMMENT '催收限制截止日期（催收天数的凌晨时间戳）',
  `person_limit_day` int(11) DEFAULT '0' COMMENT '催收员期限天数  -1：表示无限制',
  `person_limit_date` int(11) DEFAULT '0' COMMENT '催收员期限日期',
  `urge_type` tinyint(2) DEFAULT '1' COMMENT '催收方式 1: 内催  2：外催',
  `count_urge` int(11) DEFAULT '0' COMMENT '催收次数',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) DEFAULT '0' COMMENT '修改时间',
  `delete_at` int(11) DEFAULT '0' COMMENT '删除时间',
  `create_by` int(11) DEFAULT '0' COMMENT '创建者编号',
  `update_by` int(11) DEFAULT '0' COMMENT '修改者编号',
  `delete_by` int(11) DEFAULT '0' COMMENT '删除者编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `person_id` (`person_id`) USING BTREE,
  KEY `company_id` (`company_id`) USING BTREE,
  KEY `limit_day` (`limit_day`) USING BTREE,
  KEY `limit_date` (`limit_date`) USING BTREE,
  KEY `sub_order_id` (`sub_order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='外催订单分配表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_order`
--

LOCK TABLES `urge_order` WRITE;
/*!40000 ALTER TABLE `urge_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_person_report`
--

DROP TABLE IF EXISTS `urge_person_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_person_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT '0' COMMENT '催收公司id',
  `person_id` int(11) DEFAULT '0' COMMENT '外催催收员id',
  `person_name` varchar(50) DEFAULT NULL COMMENT '催收员姓名',
  `amount` decimal(13,2) DEFAULT '0.00' COMMENT '订单总金额',
  `total` int(11) DEFAULT '0' COMMENT '订单总数量',
  `success_amount` decimal(13,2) DEFAULT '0.00' COMMENT '催收总金额',
  `count_success` int(11) DEFAULT '0' COMMENT '催收总订单数量',
  `today_pending_count` int(11) DEFAULT NULL COMMENT '当日待催收订单数',
  `today_pending_amount` decimal(13,2) DEFAULT NULL COMMENT '当日待催收金额',
  `today_success_count` int(11) DEFAULT '0' COMMENT '当日催收成功订单数',
  `today_success_amount` decimal(13,2) DEFAULT '0.00' COMMENT '当日催收成功金额',
  `today_extension_count` int(11) DEFAULT '0' COMMENT '当日展期订单数',
  `today_extension_amount` decimal(13,2) DEFAULT '0.00' COMMENT '当日展期订单总金额',
  `report_date` int(11) DEFAULT '0' COMMENT '报表日期（报表日凌晨0分0秒时间戳秒)',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `person_id` (`person_id`) USING BTREE,
  KEY `report_date` (`report_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='催收公司催收员日报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_person_report`
--

LOCK TABLES `urge_person_report` WRITE;
/*!40000 ALTER TABLE `urge_person_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_person_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_serial`
--

DROP TABLE IF EXISTS `urge_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_serial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_order_id` int(11) DEFAULT '0' COMMENT '催收订单id',
  `urge_order_id` int(11) DEFAULT '0' COMMENT '分配催收表id',
  `company_id` int(11) DEFAULT '0' COMMENT '催收公司id',
  `urge_type` tinyint(2) DEFAULT NULL COMMENT '催收方式 1：内催 2：外催',
  `admin_id` int(11) DEFAULT NULL COMMENT '内催管理员Id',
  `person_id` int(11) DEFAULT NULL COMMENT '外催催收员id',
  `amount` decimal(13,2) DEFAULT NULL COMMENT '催收金额(分)',
  `order_status` tinyint(2) DEFAULT '0' COMMENT '訂單狀態 0：催收中 1：已清算 2：已展期',
  `repay_type` tinyint(2) DEFAULT '0' COMMENT '还款方式 0: 线下还款 1：主动还款',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) DEFAULT '0' COMMENT '修改时间',
  `delete_at` int(11) DEFAULT '0' COMMENT '删除时间',
  `create_by` int(11) DEFAULT '0' COMMENT '创建者编号',
  `update_by` int(11) DEFAULT '0' COMMENT '修改者编号',
  `delete_by` int(11) DEFAULT '0' COMMENT '删除者编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sub_order_id` (`sub_order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='订单催收流水';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_serial`
--

LOCK TABLES `urge_serial` WRITE;
/*!40000 ALTER TABLE `urge_serial` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_serial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_system_report`
--

DROP TABLE IF EXISTS `urge_system_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_system_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pending_total` int(11) DEFAULT '0' COMMENT '待分配订单总数',
  `pending_amount` decimal(13,2) DEFAULT '0.00' COMMENT '待分配订单总金额',
  `allocated_total` int(11) DEFAULT '0' COMMENT '已分配订单总数',
  `allocated_amount` decimal(13,2) DEFAULT '0.00' COMMENT '已分配订单总金额',
  `today_order` int(11) DEFAULT '0' COMMENT '当日催回成功订单总数',
  `today_amount` decimal(13,2) DEFAULT '0.00' COMMENT '当日催回成功订单总金额',
  `today_extension_count` int(11) DEFAULT '0' COMMENT '当日展期订单数 ',
  `today_extension_amount` decimal(13,2) DEFAULT '0.00' COMMENT '当日展期订单总金额 ',
  `report_date` int(11) DEFAULT '0' COMMENT '报表日期（当日凌晨零分）',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_system_report`
--

LOCK TABLES `urge_system_report` WRITE;
/*!40000 ALTER TABLE `urge_system_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_system_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urge_today_order`
--

DROP TABLE IF EXISTS `urge_today_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urge_today_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_order_id` int(11) DEFAULT NULL COMMENT '订单编号',
  `admin_id` int(11) DEFAULT NULL COMMENT '话务员编号',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态 0：催收中 1：已释放',
  `endtime` int(11) DEFAULT NULL COMMENT '催收截止时间',
  `count_urge` int(11) DEFAULT '0' COMMENT '催收次数',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) DEFAULT '0' COMMENT '修改时间',
  `delete_at` int(11) DEFAULT '0' COMMENT '删除时间',
  `create_by` int(11) DEFAULT '0' COMMENT '创建者编号',
  `update_by` int(11) DEFAULT '0' COMMENT '修改者编号',
  `delete_by` int(11) DEFAULT '0' COMMENT '删除者编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `endtime` (`endtime`) USING BTREE,
  KEY `sub_order_id` (`sub_order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='话务员今日到期分配订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urge_today_order`
--

LOCK TABLES `urge_today_order` WRITE;
/*!40000 ALTER TABLE `urge_today_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `urge_today_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13  9:12:53
