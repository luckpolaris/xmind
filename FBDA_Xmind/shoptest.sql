-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 121.41.121.78    Database: shoptest
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
-- Table structure for table `cms_help`
--

DROP TABLE IF EXISTS `cms_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `read_count` int(1) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='帮助表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_help`
--

LOCK TABLES `cms_help` WRITE;
/*!40000 ALTER TABLE `cms_help` DISABLE KEYS */;
INSERT INTO `cms_help` VALUES (1,1,'1','1',1,NULL,1,'1'),(2,2,'2',NULL,NULL,NULL,NULL,NULL),(3,3,'3','3',NULL,NULL,NULL,NULL),(4,4,'4','4',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_help_category`
--

DROP TABLE IF EXISTS `cms_help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_help_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `help_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_help_category`
--

LOCK TABLES `cms_help_category` WRITE;
/*!40000 ALTER TABLE `cms_help_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_member_report`
--

DROP TABLE IF EXISTS `cms_member_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_member_report` (
  `id` bigint(20) DEFAULT NULL,
  `report_type` int(1) DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
  `report_member_name` varchar(100) DEFAULT NULL COMMENT '举报人',
  `create_time` datetime DEFAULT NULL,
  `report_object` varchar(100) DEFAULT NULL,
  `report_status` int(1) DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
  `handle_status` int(1) DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户举报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_member_report`
--

LOCK TABLES `cms_member_report` WRITE;
/*!40000 ALTER TABLE `cms_member_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_member_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_prefrence_area`
--

DROP TABLE IF EXISTS `cms_prefrence_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_prefrence_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `pic` varbinary(500) DEFAULT NULL COMMENT '展示图片',
  `sort` int(11) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优选专区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_prefrence_area`
--

LOCK TABLES `cms_prefrence_area` WRITE;
/*!40000 ALTER TABLE `cms_prefrence_area` DISABLE KEYS */;
INSERT INTO `cms_prefrence_area` VALUES (1,'让音质更出众','音质不打折 完美现场感',NULL,NULL,1),(2,'让音质更出众22','让音质更出众22',NULL,NULL,NULL),(3,'让音质更出众33',NULL,NULL,NULL,NULL),(4,'让音质更出众44',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_prefrence_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_prefrence_area_product_relation`
--

DROP TABLE IF EXISTS `cms_prefrence_area_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_prefrence_area_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefrence_area_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='优选专区和产品关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_prefrence_area_product_relation`
--

LOCK TABLES `cms_prefrence_area_product_relation` WRITE;
/*!40000 ALTER TABLE `cms_prefrence_area_product_relation` DISABLE KEYS */;
INSERT INTO `cms_prefrence_area_product_relation` VALUES (1,1,12),(2,1,13),(3,1,14),(4,1,18),(5,1,7),(6,2,7),(7,1,22),(24,1,23),(25,1,38),(26,2,38),(27,3,38),(28,4,38),(29,1,40),(30,2,40);
/*!40000 ALTER TABLE `cms_prefrence_area_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject`
--

DROP TABLE IF EXISTS `cms_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL COMMENT '专题主图',
  `product_count` int(11) DEFAULT NULL COMMENT '关联产品数量',
  `recommend_status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `collect_count` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `album_pics` varchar(1000) DEFAULT NULL COMMENT '画册图片用逗号分割',
  `description` varchar(1000) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `content` text,
  `forward_count` int(11) DEFAULT NULL COMMENT '转发数',
  `category_name` varchar(200) DEFAULT NULL COMMENT '专题分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject`
--

LOCK TABLES `cms_subject` WRITE;
/*!40000 ALTER TABLE `cms_subject` DISABLE KEYS */;
INSERT INTO `cms_subject` VALUES (1,1,'轮廓分明，双摄手机映现细腻美照','https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t26434/217/1381240043/254214/290f9d5b/5bc6c11cN54567a27.jpg!q70.jpg',NULL,1,'2018-11-11 13:26:55',100,NULL,NULL,1000,100,NULL,'手机对于拍照党来说，已经不仅仅是通讯工具那么简单了。因为有时TA还充当着“单反”的角色，来不断地带给那些喜欢拍照的人惊喜。所以，在这里准备一波高颜值的双摄手机来给大家。让TA们灵敏捕捉影像的能力，为你展现出轮廓更加分明、且画质更加细腻的美照。',1,NULL,NULL,'精选专题'),(2,1,'交通拥挤有妙招，电动车小巧穿行无障碍','https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t14224/229/529700229/74868/a1cc7364/5a314f85N5bfd22c7.jpg!q70.jpg',NULL,1,'2018-11-12 13:27:00',100,NULL,NULL,1000,100,NULL,'随着人们消费水平的提高，公路上的小车是越来越多了，导致每到上下班高峰期的时候，大路的车辆堵了一环又一环，而且你根本不知道它到底会塞多久，所以我们需要变通一下，不妨骑上电动车来个绿色出行，它够小巧玲珑，即使交通再怎么拥挤，也总有它可以通过的地方。',1,NULL,NULL,'精选专题'),(3,1,'无酒不成席，甘香白酒开怀助兴','https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t1/881/4/12265/114011/5bd1446fEc71114bf/68925bfb4a2adc44.jpg!q70.jpg',NULL,1,'2018-11-13 13:27:05',100,NULL,NULL,1000,100,NULL,'白酒是由各种优质的高粱，小麦，大米等谷物为原料，经过传统工艺的长时间酿造，酒液在这样的环境中慢慢发酵，最终变成清香浓郁的白酒，被摆上人们的餐桌，供人畅饮，是一种受到大众喜爱的绝佳饮品。',1,NULL,NULL,'精选专题'),(4,2,'真规划不盲扫，全域清洁净无尘','https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t15205/35/2539924281/429185/72fa7857/5aab2c4bN6a32a6c5.png',NULL,1,'2018-11-01 13:27:09',100,NULL,NULL,1000,100,NULL,'科技时代，聪明女人会选择用智慧来减负，和繁琐的家务挥手再见，才能腾出更多休闲时间。规划式扫地机器人设计个性化，它能够跟据房间布置呈现清扫路线，实现规划式覆盖性清洁，少遗漏不盲扫，从而大幅度降低损耗，侦测技术遇到家具及时避让，杜绝猛烈撞击，任它灵巧穿梭于低矮空间，坐享居家净无尘。',1,NULL,NULL,'家电专题'),(5,2,'抑菌更纯净，直饮净水保家人健康','https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t11428/340/1504074828/20474/1e8cab1e/5a0305d3Nb1e7a762.jpg!q70.jpg',NULL,1,'2018-11-06 13:27:18',100,NULL,NULL,1000,100,NULL,'在城里居住，首先要担心的是饮水问题。桶装水太贵不够经济，还不一定是干净的。自己去干净的水源地取水也不切实际。此时只有选择在家里安装一台净水器才实在。装上一台直饮式的净水器，方便安全，关键是水质过滤得比较纯净，很大限度地处理了大部分的废弃物，留下健康的矿物质水。好生活，从一口干净的纯净水开始。',1,NULL,NULL,'家电专题'),(6,2,'储鲜冷冻灵活变，多门无霜更贴心','https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t13015/356/2397552584/605232/46c88e6e/5a5321bcN6a8866f0.png',NULL,1,'2018-11-07 13:27:21',100,NULL,NULL,1000,100,NULL,'春节临近，每个家庭都要储备不少食材，但各种食材的保鲜方式与温度不尽相同，而多门风冷冰箱能轻松满足您。它们容积大占地小，拥有多个可以独立调节温度的温区，满足对不同类食材的存放需求，同时省去除霜烦恼，还可以通过温度调节满足您对大冷藏及大冷冻的需求变化，从而带来更好的保鲜冷冻体验，为新年宴请保驾护航。',1,NULL,NULL,'家电专题'),(7,2,'想喝健康水，就用304不锈钢热水壶','https://img13.360buyimg.com/mobilecms/s1500x600_jfs/t12541/90/443985343/33603/65d6e884/5a0bb77aNff08550a.jpg!q70.jpg',NULL,1,'2019-01-29 11:21:55',100,NULL,NULL,1000,100,NULL,'大冬天的喝一口热水，不仅能够暧身还可以给身体补充足够的水份，但是对于热水壶的购买却是需要慎之又慎，材质不好的热水壶在烧水的过程当中极容易产生对身体不利的有害物，极大影响人们的身体健康。304不锈钢热水壶选用食品级不不锈钢，确保水质安全，烧水健康好水，为您的饮水健康保驾护航。',1,NULL,NULL,'家电专题'),(8,2,'你尽情赖床！早餐“煲”在它身上','https://img14.360buyimg.com/mobilecms/s1500x600_jfs/t15949/363/1450937723/89513/7d8c1219/5a531d28N2aaec2a6.jpg!q70.jpg',NULL,1,'2019-01-29 13:07:13',100,NULL,NULL,1000,100,NULL,'赖床不想起，饿了的时候想吃饭又要现做等待简直饥肠辘辘让人心烦，所以一款带有预约功能的电饭煲简直不要太贴心，你睡懒觉的时候它已经给你做好了香滑软糯的粥，起床就能享美味是不是很贴心呐。',1,NULL,NULL,'家电专题'),(9,2,'小白变大厨，微波炉为实力加持','https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t1/8774/21/11460/38908/5c2cbfcfEdab1ef03/d5800f0f7cf05b38.jpg!q70.jpg',NULL,1,'2019-01-29 13:08:18',100,NULL,NULL,1000,100,NULL,'对于厨艺小白而言，没有什么能比掌握好火候更来得困难的了！毕竟烹饪出食物的味道好坏，很大程度上还是对火候的掌控，想要轻松掌握火候，当然少不了一款微波炉的撑场，内设多功能，满足不同的烹饪需求，简单方便易操作，让厨艺小白秒变大师！',1,NULL,NULL,'家电专题'),(10,2,'十秒鲜榨，冬日把爱浓缩成杯果汁','https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t13708/126/308291722/542847/26ee6edd/5a07dc72N3252a9e0.png',NULL,1,'2019-01-29 13:10:02',100,NULL,NULL,1000,100,NULL,'寒瑟冬日女友不喜欢吃水果，用便携迷你果汁机，撩妹又养胃。一按一转，碾压切割，简单快速制作，压榨出纯原味果汁。一键启动，十秒出汁，保留食物营养，轻轻松松粉碎食物，营养在手，说走就走。',1,NULL,NULL,'家电专题'),(11,3,'饭点未到肚已空？美味饼干先充饥','https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t13240/79/443357432/38567/94792c4c/5a0ba054N89388654.jpg!q70.jpg',NULL,1,'2019-01-29 13:10:45',100,NULL,NULL,1000,100,NULL,'一上午都把精力集中在工作中，刚闲下来就发现自己已是饥肠辘辘了，可饭点却还没到，怎么办呢？不妨让这些美味饼干先帮你充充饥吧！酥香松脆有营养，每一口都让人回味无穷，既能满足你挑剔的味蕾又能起到果腹效果，快快为自己备上吧！',1,NULL,NULL,'美食专题'),(12,3,'赖床无罪，香酥面包营养又便捷','https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t9775/33/1197239610/38547/34899011/59ddbd01N0bd693bb.jpg!q70.jpg',NULL,1,'2019-01-29 13:11:41',100,NULL,NULL,1000,100,NULL,'赖床是很多年轻人的通病，特别是秋冬季节，都会恋恋不舍温暖的被窝。对于苦逼的上班族来说，就算再多睡几分钟，还是要起床的，甚至来不及吃早餐。面包营养丰富，能快速饱腹，且携带方便，再搭配一盒牛奶，一顿简单而不失营养的早餐能提供一天的能量，让赖床族多睡几分钟也无妨。',1,NULL,NULL,'美食专题'),(13,3,'夹心饼干，予多重滋味交织舌尖','https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t18877/139/652452758/27262/36e6ed6e/5a9d5b6dN327150e8.jpg!q70.jpg',NULL,1,'2019-01-29 13:12:38',100,NULL,NULL,1000,100,NULL,'饼干味道香脆可口，深受不少人的青睐。饼干的种类多样，而夹心饼干就是其中一种，相比普通饼干而言，夹心饼干有着更丰富的口感，当肚子空空如也的时候，来一些美味的夹心饼干，既能解馋，又能扛饿。下面就为大家推荐一组好吃的夹心饼干，作为办公室小零食非常不错。',1,NULL,NULL,'美食专题'),(14,4,'户外Party，便携音箱烘气氛','https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t17125/265/644948348/42066/6f2dc610/5a9c9da1N9a95ee2c.jpg!q70.jpg',NULL,1,'2019-01-29 13:13:53',100,NULL,NULL,1000,100,NULL,'初春的季节，除了户外的各种踏青旅行，在户外开异常Party也是很惬意。户外派对，气氛的烘托肯定不能离开音箱的衬托，选择一款户外的便携音箱，无线蓝牙连接，免去有线的束缚，携带使用更方便。',1,NULL,NULL,'数码专题'),(15,5,'今冬潮包look，凹出绚丽女王范','https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t8365/191/1901440450/575969/c71560c9/59c3144dNe6d8dd2f.png',NULL,1,'2019-01-29 13:15:12',100,NULL,NULL,1000,100,NULL,'潮流时尚的美包，搭配潮服，会让你魅力一直在线。因为潮包一直是女性出游扮美的秘籍，它不仅能够帮你收纳日常小物件，还能让你解放双手，这里推荐的时尚美包，随意搭配一件服饰，都可以让你潮范十足，凹出绚丽女王范。',1,NULL,NULL,'服饰专题');
/*!40000 ALTER TABLE `cms_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject_category`
--

DROP TABLE IF EXISTS `cms_subject_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='专题分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject_category`
--

LOCK TABLES `cms_subject_category` WRITE;
/*!40000 ALTER TABLE `cms_subject_category` DISABLE KEYS */;
INSERT INTO `cms_subject_category` VALUES (1,'精选专题','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jingxuan.png',3,1,100),(2,'家电专题','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',7,1,0),(3,'美食专题','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_meishi.png',3,1,0),(4,'数码专题','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png',1,1,0),(5,'服饰专题','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png',1,1,0);
/*!40000 ALTER TABLE `cms_subject_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject_comment`
--

DROP TABLE IF EXISTS `cms_subject_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject_comment`
--

LOCK TABLES `cms_subject_comment` WRITE;
/*!40000 ALTER TABLE `cms_subject_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_subject_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_subject_product_relation`
--

DROP TABLE IF EXISTS `cms_subject_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_subject_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='专题商品关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_subject_product_relation`
--

LOCK TABLES `cms_subject_product_relation` WRITE;
/*!40000 ALTER TABLE `cms_subject_product_relation` DISABLE KEYS */;
INSERT INTO `cms_subject_product_relation` VALUES (2,1,27),(3,1,28),(4,1,29),(6,2,31),(30,2,32),(31,3,33),(38,3,34),(40,1,38),(41,2,38),(42,3,38),(43,4,38),(44,5,38),(45,6,38),(46,7,38),(47,8,38),(48,9,38),(49,10,38),(50,11,38),(51,12,38),(52,13,38),(53,14,38),(54,15,38),(56,2,36),(63,2,35),(76,13,40),(77,14,40),(83,2,30),(84,1,26);
/*!40000 ALTER TABLE `cms_subject_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_topic`
--

DROP TABLE IF EXISTS `cms_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `attend_count` int(11) DEFAULT NULL COMMENT '参与人数',
  `attention_count` int(11) DEFAULT NULL COMMENT '关注人数',
  `read_count` int(11) DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `attend_type` varchar(100) DEFAULT NULL COMMENT '参与方式',
  `content` text COMMENT '话题内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_topic`
--

LOCK TABLES `cms_topic` WRITE;
/*!40000 ALTER TABLE `cms_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_topic_category`
--

DROP TABLE IF EXISTS `cms_topic_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_topic_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_topic_category`
--

LOCK TABLES `cms_topic_category` WRITE;
/*!40000 ALTER TABLE `cms_topic_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_topic_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_topic_comment`
--

DROP TABLE IF EXISTS `cms_topic_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_topic_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_topic_comment`
--

LOCK TABLES `cms_topic_comment` WRITE;
/*!40000 ALTER TABLE `cms_topic_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_topic_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `type` varchar(100) DEFAULT 'demo' COMMENT 'demo字段',
  `aasdas` varchar(100) DEFAULT 'demo' COMMENT 'demo字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试demo表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_cart_item`
--

DROP TABLE IF EXISTS `oms_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_sku_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '添加到购物车的价格',
  `sp1` varchar(200) DEFAULT NULL COMMENT '销售属性1',
  `sp2` varchar(200) DEFAULT NULL COMMENT '销售属性2',
  `sp3` varchar(200) DEFAULT NULL COMMENT '销售属性3',
  `product_pic` varchar(1000) DEFAULT NULL COMMENT '商品主图',
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sub_title` varchar(500) DEFAULT NULL COMMENT '商品副标题（卖点）',
  `product_sku_code` varchar(200) DEFAULT NULL COMMENT '商品sku条码',
  `member_nickname` varchar(500) DEFAULT NULL COMMENT '会员昵称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_status` int(1) DEFAULT '0' COMMENT '是否删除',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类',
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(200) DEFAULT '0',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  `type` int(1) DEFAULT '0' COMMENT '0->正常商品 1->秒杀商品 2->抢购商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_cart_item`
--

LOCK TABLES `oms_cart_item` WRITE;
/*!40000 ALTER TABLE `oms_cart_item` DISABLE KEYS */;
INSERT INTO `oms_cart_item` VALUES (12,26,90,1,1,3788.00,'金色','16G',NULL,NULL,'华为 HUAWEI P20','AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待','201806070026001','windir','2018-08-27 16:53:44',NULL,0,19,NULL,NULL,NULL,NULL),(13,27,98,1,3,2699.00,'黑色','32G',NULL,NULL,'小米8','骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购','201808270027001','windir','2018-08-27 17:11:53',NULL,0,19,NULL,NULL,NULL,NULL),(14,28,102,1,1,649.00,'金色','16G',NULL,NULL,'红米5A','8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购','201808270028001','windir','2018-08-27 17:18:02',NULL,0,19,NULL,NULL,NULL,NULL),(15,28,103,1,1,699.00,'金色','32G',NULL,NULL,'红米5A','8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购','201808270028001','windir','2018-08-28 10:22:45',NULL,0,19,NULL,NULL,NULL,NULL),(16,29,106,1,1,5499.00,'金色','32G',NULL,NULL,'Apple iPhone 8 Plus','【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。','201808270029001','windir','2018-08-28 10:50:50',NULL,0,19,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oms_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_company_address`
--

DROP TABLE IF EXISTS `oms_company_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_company_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `send_status` int(1) DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
  `receive_status` int(1) DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
  `name` varchar(64) DEFAULT NULL COMMENT '收发货人姓名',
  `phone` varchar(64) DEFAULT NULL COMMENT '收货人电话',
  `province` varchar(64) DEFAULT NULL COMMENT '省/直辖市',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `region` varchar(64) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司收发货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_company_address`
--

LOCK TABLES `oms_company_address` WRITE;
/*!40000 ALTER TABLE `oms_company_address` DISABLE KEYS */;
INSERT INTO `oms_company_address` VALUES (1,'深圳发货点',1,1,'大梨','18000000000','广东省','深圳市','南山区','科兴科学园'),(2,'北京发货点',0,0,'大梨','18000000000','北京市',NULL,'南山区','科兴科学园'),(3,'南京发货点',0,0,'大梨','18000000000','江苏省','南京市','南山区','科兴科学园');
/*!40000 ALTER TABLE `oms_company_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order`
--

DROP TABLE IF EXISTS `oms_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `member_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) DEFAULT NULL,
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '提交时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '用户帐号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `pay_amount` decimal(10,2) DEFAULT NULL COMMENT '应付金额（实际支付金额）',
  `freight_amount` decimal(10,2) DEFAULT NULL COMMENT '运费金额',
  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '促销优化金额（促销价、满减、阶梯价）',
  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分抵扣金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券抵扣金额',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '管理员后台调整订单使用的折扣金额',
  `pay_type` int(1) DEFAULT NULL COMMENT '支付方式：0->未支付；1->支付宝；2->微信 3->银行卡',
  `source_type` int(1) DEFAULT NULL COMMENT '订单来源：0->PC订单；1->app订单',
  `status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `order_type` int(1) DEFAULT NULL COMMENT '订单类型：0->正常订单；1->秒杀订单，2-抢购,3->新品',
  `delivery_company` varchar(64) DEFAULT NULL COMMENT '物流公司(配送方式)',
  `delivery_sn` varchar(64) DEFAULT NULL COMMENT '物流单号',
  `auto_confirm_day` int(11) DEFAULT NULL COMMENT '自动确认时间（天）',
  `integration` int(11) DEFAULT NULL COMMENT '可以获得的积分',
  `growth` int(11) DEFAULT NULL COMMENT '可以活动的成长值',
  `promotion_info` varchar(100) DEFAULT NULL COMMENT '活动信息',
  `bill_type` int(1) DEFAULT NULL COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `bill_header` varchar(200) DEFAULT NULL COMMENT '发票抬头',
  `bill_content` varchar(200) DEFAULT NULL COMMENT '发票内容',
  `bill_receiver_phone` varchar(32) DEFAULT NULL COMMENT '收票人电话',
  `bill_receiver_email` varchar(64) DEFAULT NULL COMMENT '收票人邮箱',
  `receiver_name` varchar(100) NOT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(32) NOT NULL COMMENT '收货人电话',
  `receiver_post_code` varchar(32) DEFAULT NULL COMMENT '收货人邮编',
  `receiver_province` varchar(32) DEFAULT NULL COMMENT '省份/直辖市',
  `receiver_city` varchar(32) DEFAULT NULL COMMENT '城市',
  `receiver_region` varchar(32) DEFAULT NULL COMMENT '区',
  `receiver_detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `note` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `confirm_status` int(1) DEFAULT NULL COMMENT '确认收货状态：0->未确认；1->已确认',
  `delete_status` int(1) NOT NULL DEFAULT '0' COMMENT '删除状态：0->未删除；1->已删除',
  `use_integration` int(11) DEFAULT NULL COMMENT '下单时使用的积分',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `comment_time` datetime DEFAULT NULL COMMENT '评价时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remind` int(11) NOT NULL DEFAULT '0' COMMENT '提醒次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order`
--

LOCK TABLES `oms_order` WRITE;
/*!40000 ALTER TABLE `oms_order` DISABLE KEYS */;
INSERT INTO `oms_order` VALUES (12,1,2,'201809150101000001','2018-09-15 12:24:27','test',18732.00,16377.75,20.00,2344.25,0.00,10.00,10.00,0,1,4,0,'顺丰快递',NULL,15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','江苏省','常州市','天宁区','东晓街道','xxx',0,0,NULL,NULL,'2019-10-10 15:21:52',NULL,NULL,'2018-10-30 14:43:49',0),(13,1,2,'201809150102000002','2018-09-15 14:24:29','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,4,0,'中通快递',NULL,15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,1000,'2018-10-11 14:04:19','2019-10-10 15:22:13',NULL,NULL,NULL,0),(14,1,2,'201809130101000001','2018-09-13 16:57:40','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,2,0,NULL,NULL,15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,'2018-10-13 13:44:04','2019-10-15 17:27:27',NULL,NULL,NULL,0),(15,1,2,'201809130102000002','2018-09-13 17:03:00','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,2,0,NULL,NULL,15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,1,0,NULL,'2018-10-13 13:44:54','2019-10-16 09:43:12','2018-10-18 14:05:31',NULL,NULL,0),(16,1,2,'201809140101000001','2018-09-14 16:16:16','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,1,0,NULL,NULL,15,13284,13284,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(17,1,2,'201809150101000003','2018-09-15 12:24:27','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,0,1,1,0,'顺丰快递','201707196398345',15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,'2018-10-12 14:01:28',NULL,NULL,NULL,0),(18,1,2,'201809150102000004','2018-09-15 14:24:29','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,1,0,NULL,NULL,15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,1000,NULL,'2019-09-18 16:29:54',NULL,NULL,NULL,0),(19,1,2,'201809130101000003','2018-09-13 16:57:40','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,1,0,NULL,NULL,15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,1,2,'201809130102000004','2018-09-13 17:03:00','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,2,0,NULL,NULL,15,NULL,NULL,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,'2019-10-15 17:27:14',NULL,NULL,NULL,0),(21,1,2,'201809140101000002','2018-09-14 16:16:16','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,1,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(22,1,2,'201809150101000005','2018-09-15 12:24:27','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,0,1,1,0,'顺丰快递','201707196398345',15,0,0,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,'2018-10-12 14:01:28',NULL,NULL,NULL,0),(23,1,2,'201809150102000006','2018-09-15 14:24:29','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,1,1,1,0,NULL,NULL,15,0,0,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,1000,NULL,'2019-09-23 17:31:06',NULL,NULL,NULL,0),(24,1,2,'201809130101000005','2018-09-13 16:57:40','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,2,1,1,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0),(25,1,2,'201809130102000006','2019-10-17 17:03:00','test',18732.00,16377.75,10.00,2344.25,0.00,10.00,5.00,1,1,1,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨22','18033441849','518000','北京市','北京城区','东城区','东城街道','xxx',0,0,NULL,NULL,NULL,NULL,NULL,'2018-10-30 15:08:31',0),(26,1,2,'201809140101000003','2018-09-14 16:16:16','test',18732.00,16377.75,0.00,2344.25,0.00,10.00,0.00,0,1,1,0,NULL,NULL,15,18682,18682,'单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠',NULL,NULL,NULL,NULL,NULL,'大梨','18033441849','518000','广东省','深圳市','福田区','东晓街道',NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oms_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_item`
--

DROP TABLE IF EXISTS `oms_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `product_id` bigint(20) DEFAULT NULL,
  `product_pic` varchar(500) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(64) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '销售价格',
  `product_quantity` int(11) DEFAULT NULL COMMENT '购买数量',
  `product_sku_id` bigint(20) DEFAULT NULL COMMENT '商品sku编号',
  `product_sku_code` varchar(50) DEFAULT NULL COMMENT '商品sku条码',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类id',
  `sp1` varchar(100) DEFAULT NULL COMMENT '商品的销售属性',
  `sp2` varchar(100) DEFAULT NULL,
  `sp3` varchar(100) DEFAULT NULL,
  `promotion_name` varchar(200) DEFAULT NULL COMMENT '商品促销名称',
  `promotion_amount` decimal(10,2) DEFAULT NULL COMMENT '商品促销分解金额',
  `coupon_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠券优惠分解金额',
  `integration_amount` decimal(10,2) DEFAULT NULL COMMENT '积分优惠分解金额',
  `real_amount` decimal(10,2) DEFAULT NULL COMMENT '该商品经过优惠后的分解金额',
  `fee` decimal(10,2) DEFAULT NULL COMMENT '每件商品的邮费',
  `gift_integration` int(11) DEFAULT '0',
  `gift_growth` int(11) DEFAULT '0',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `is_evaluate` int(1) NOT NULL DEFAULT '0' COMMENT '0->待评价 1->已评价 ',
  `return_status` int(1) DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='订单中所包含的商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_item`
--

LOCK TABLES `oms_order_item` WRITE;
/*!40000 ALTER TABLE `oms_order_item` DISABLE KEYS */;
INSERT INTO `oms_order_item` VALUES (21,12,'201809150101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,NULL,NULL,NULL,'单品促销',200.00,2.02,0.00,3585.98,NULL,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(22,12,'201809150101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,NULL,NULL,NULL,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,NULL,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(23,12,'201809150101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(24,12,'201809150101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(25,12,'201809150101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,NULL,NULL,NULL,'无优惠',0.00,2.94,0.00,5496.06,NULL,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(26,13,'201809150102000002',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,NULL,NULL,NULL,'单品促销',200.00,2.02,0.00,3585.98,NULL,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(27,13,'201809150102000002',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,NULL,NULL,NULL,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,NULL,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(28,13,'201809150102000002',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(29,13,'201809150102000002',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(30,13,'201809150102000002',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,NULL,NULL,NULL,'无优惠',0.00,2.94,0.00,5496.06,NULL,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(31,14,'201809130101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,NULL,NULL,NULL,'单品促销',200.00,2.02,0.00,3585.98,NULL,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(32,14,'201809130101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,NULL,NULL,NULL,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,NULL,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(33,14,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(34,14,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(35,14,'201809130101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,NULL,NULL,NULL,'无优惠',0.00,2.94,0.00,5496.06,NULL,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(36,15,'201809130101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,NULL,NULL,NULL,'单品促销',200.00,2.02,0.00,3585.98,NULL,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(37,15,'201809130101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,NULL,NULL,NULL,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,NULL,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(38,15,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(39,15,'201809130101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(40,15,'201809130101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,NULL,NULL,NULL,'无优惠',0.00,2.94,0.00,5496.06,NULL,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(41,16,'201809140101000001',26,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','6946605',3788.00,1,90,'201806070026001',19,NULL,NULL,NULL,'单品促销',200.00,2.02,0.00,3585.98,NULL,3788,3788,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(42,16,'201809140101000001',27,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','7437788',2699.00,3,98,'201808270027001',19,NULL,NULL,NULL,'打折优惠：满3件，打7.50折',674.75,1.44,0.00,2022.81,NULL,2699,2699,'[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(43,16,'201809140101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',649.00,1,102,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',57.60,0.35,0.00,591.05,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]',NULL,0,NULL),(44,16,'201809140101000001',28,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','7437789',699.00,1,103,'201808270028001',19,NULL,NULL,NULL,'满减优惠：满1000.00元，减120.00元',62.40,0.37,0.00,636.23,NULL,649,649,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL),(45,16,'201809140101000001',29,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','Apple iPhone 8 Plus','苹果','7437799',5499.00,1,106,'201808270029001',19,NULL,NULL,NULL,'无优惠',0.00,2.94,0.00,5496.06,NULL,5499,5499,'[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]',NULL,0,NULL);
/*!40000 ALTER TABLE `oms_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_operate_history`
--

DROP TABLE IF EXISTS `oms_order_operate_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_operate_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='订单操作历史记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_operate_history`
--

LOCK TABLES `oms_order_operate_history` WRITE;
/*!40000 ALTER TABLE `oms_order_operate_history` DISABLE KEYS */;
INSERT INTO `oms_order_operate_history` VALUES (5,12,'后台管理员','2018-10-12 14:01:29',2,'完成发货'),(6,13,'后台管理员','2018-10-12 14:01:29',2,'完成发货'),(7,12,'后台管理员','2018-10-12 14:13:10',4,'订单关闭:买家退货'),(8,13,'后台管理员','2018-10-12 14:13:10',4,'订单关闭:买家退货'),(9,22,'后台管理员','2018-10-15 16:31:48',4,'订单关闭:xxx'),(10,22,'后台管理员','2018-10-15 16:35:08',4,'订单关闭:xxx'),(11,22,'后台管理员','2018-10-15 16:35:59',4,'订单关闭:xxx'),(12,17,'后台管理员','2018-10-15 16:43:40',4,'订单关闭:xxx'),(13,25,'后台管理员','2018-10-15 16:52:14',4,'订单关闭:xxx'),(14,26,'后台管理员','2018-10-15 16:52:14',4,'订单关闭:xxx'),(15,23,'后台管理员','2018-10-16 14:41:28',2,'完成发货'),(16,13,'后台管理员','2018-10-16 14:42:17',2,'完成发货'),(17,18,'后台管理员','2018-10-16 14:42:17',2,'完成发货'),(18,26,'后台管理员','2018-10-30 14:37:44',4,'订单关闭:关闭订单'),(19,25,'后台管理员','2018-10-30 15:07:01',0,'修改收货人信息'),(20,25,'后台管理员','2018-10-30 15:08:13',0,'修改费用信息'),(21,25,'后台管理员','2018-10-30 15:08:31',0,'修改备注信息：xxx'),(22,25,'后台管理员','2018-10-30 15:08:39',4,'订单关闭:2222'),(23,18,'后台管理员','2019-09-18 16:29:55',2,'完成发货'),(24,23,'后台管理员','2019-09-23 17:31:07',2,'完成发货'),(25,13,'后台管理员','2019-09-23 17:31:17',2,'完成发货'),(26,12,'后台管理员','2019-10-10 15:21:53',2,'完成发货'),(27,13,'后台管理员','2019-10-10 15:22:14',2,'完成发货'),(28,20,'后台管理员','2019-10-15 17:27:13',2,'完成发货'),(29,14,'后台管理员','2019-10-15 17:27:27',2,'完成发货'),(30,12,'后台管理员','2019-10-16 09:42:57',4,'订单关闭:d '),(31,13,'后台管理员','2019-10-16 09:42:57',4,'订单关闭:d '),(32,15,'后台管理员','2019-10-16 09:43:11',2,'完成发货');
/*!40000 ALTER TABLE `oms_order_operate_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_return_apply`
--

DROP TABLE IF EXISTS `oms_order_return_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_return_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `company_address_id` bigint(20) DEFAULT NULL COMMENT '收货地址表id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '退货商品id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '会员用户名',
  `return_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `return_name` varchar(100) DEFAULT NULL COMMENT '退货人姓名',
  `return_phone` varchar(100) DEFAULT NULL COMMENT '退货人电话',
  `status` int(1) DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `product_pic` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `product_brand` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
  `product_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `product_real_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
  `reason` varchar(200) DEFAULT NULL COMMENT '原因',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `proof_pics` varchar(1000) DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
  `handle_note` varchar(500) DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(100) DEFAULT NULL COMMENT '处理人员',
  `receive_man` varchar(100) DEFAULT NULL COMMENT '收货人',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `receive_note` varchar(500) DEFAULT NULL COMMENT '收货备注',
  `integration` int(11) DEFAULT NULL COMMENT '回退的积分',
  `delivery_sn` varchar(64) DEFAULT NULL COMMENT '物流单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单退货申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_return_apply`
--

LOCK TABLES `oms_order_return_apply` WRITE;
/*!40000 ALTER TABLE `oms_order_return_apply` DISABLE KEYS */;
INSERT INTO `oms_order_return_apply` VALUES (3,12,1,26,'201809150101000001','2018-10-17 14:34:57','test',0.00,'大梨','18000000000',2,'2019-10-15 16:04:38','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg',NULL,'admin','admin','2019-10-15 16:04:42',NULL,NULL,NULL),(4,12,1,27,'201809150101000001','2018-10-17 14:40:21','test',0.00,'大梨','18000000000',2,'2019-10-15 16:05:01','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','已经处理了','admin','admin','2019-10-15 16:05:10','怎么回事',NULL,NULL),(5,12,3,28,'201809150101000001','2018-10-17 14:44:18','test',3585.98,'大梨','18000000000',0,'2018-10-18 13:55:28','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','已经处理了','admin','admin','2018-10-18 13:55:58','已经处理了',NULL,NULL),(8,13,NULL,28,'201809150102000002','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',0,'2018-10-18 13:57:12','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','理由不够充分','admin',NULL,NULL,NULL,NULL,NULL),(9,14,2,26,'201809130101000001','2018-10-17 14:34:57','test',3500.00,'大梨','18000000000',0,'2018-10-24 15:44:56','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','','呵呵','admin','admin','2018-10-24 15:46:35','收货了',NULL,NULL),(10,14,NULL,27,'201809130101000001','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,'2018-10-24 15:46:57','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','就是不退','admin',NULL,NULL,NULL,NULL,NULL),(11,14,2,28,'201809130101000001','2018-10-17 14:44:18','test',591.05,'大梨','18000000000',0,'2018-10-24 17:09:04','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','可以退款','admin',NULL,NULL,NULL,NULL,NULL),(12,15,3,26,'201809130102000002','2018-10-17 14:34:57','test',3500.00,'大梨','18000000000',0,'2018-10-24 17:22:54','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','','退货了','admin','admin','2018-10-24 17:23:06','收货了',NULL,NULL),(13,15,NULL,27,'201809130102000002','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,'2018-10-24 17:23:30','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','无法退货','admin',NULL,NULL,NULL,NULL,NULL),(15,16,1,26,'201809140101000001','2018-10-17 14:34:57','test',0.00,'大梨','18000000000',0,'2019-09-23 17:17:13','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','','ddd ','admin','admin','2019-09-23 17:17:24','qqqqq',NULL,NULL),(16,16,1,27,'201809140101000001','2018-10-17 14:40:21','test',0.00,'大梨','18000000000',0,'2019-09-23 17:18:18','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','','564165','admin','admin','2019-09-23 17:18:29','2131',NULL,NULL),(17,16,3,28,'201809140101000001','2018-10-17 14:44:18','test',591.05,'大梨','18000000000',0,'2019-09-24 09:28:23','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','','是是是','admin','admin','2019-09-24 09:28:47',';;;;',NULL,NULL),(18,17,NULL,26,'201809150101000003','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,'2019-09-24 09:29:31','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,'admin',NULL,NULL,NULL,NULL,NULL),(19,17,1,27,'201809150101000003','2018-10-17 14:40:21','test',0.00,'大梨','18000000000',0,'2019-09-24 10:50:37','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,'admin','admin','2019-09-24 10:50:54','oko',NULL,NULL),(20,17,1,28,'201809150101000003','2018-10-17 14:44:18','test',0.00,'大梨','18000000000',0,'2019-09-24 10:53:44','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,'admin',NULL,NULL,NULL,NULL,NULL),(21,18,NULL,26,'201809150102000004','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,'2019-10-10 15:23:51','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,'admin',NULL,NULL,NULL,NULL,NULL),(22,18,1,27,'201809150102000004','2018-10-17 14:40:21','test',0.00,'大梨','18000000000',0,'2019-10-10 15:23:58','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,'admin','admin','2019-10-10 15:24:06',NULL,NULL,NULL),(23,18,NULL,28,'201809150102000004','2018-10-17 14:44:18','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,19,NULL,26,'201809130101000003','2018-10-17 14:34:57','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','华为 HUAWEI P20','华为','颜色：金色;内存：16G',1,3788.00,3585.98,'质量问题','老是卡','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,19,NULL,27,'201809130101000003','2018-10-17 14:40:21','test',NULL,'大梨','18000000000',0,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','小米8','小米','颜色：黑色;内存：32G',1,2699.00,2022.81,'质量问题','不够高端','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,19,1,28,'201809130101000003','2018-10-17 14:44:18','test',0.00,'大梨','18000000000',0,'2019-09-24 09:27:25','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','红米5A','小米','颜色：金色;内存：16G',1,649.00,591.05,'质量问题','颜色太土','',NULL,'admin','admin','2019-09-24 09:27:38','11111',NULL,NULL);
/*!40000 ALTER TABLE `oms_order_return_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_return_reason`
--

DROP TABLE IF EXISTS `oms_order_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_return_reason` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '退货类型',
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='退货原因表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_return_reason`
--

LOCK TABLES `oms_order_return_reason` WRITE;
/*!40000 ALTER TABLE `oms_order_return_reason` DISABLE KEYS */;
INSERT INTO `oms_order_return_reason` VALUES (1,'质量问题',1,0,'2018-10-17 10:00:45'),(2,'尺码太大',1,1,'2018-10-17 10:01:03'),(3,'颜色不喜欢',1,1,'2018-10-17 10:01:13'),(4,'7天无理由退货',1,1,'2018-10-17 10:01:47'),(5,'价格问题',1,0,'2018-10-17 10:01:57'),(12,'发票问题',0,1,'2018-10-19 16:28:36'),(13,'其他问题',0,1,'2018-10-19 16:28:51'),(14,'物流问题',0,1,'2018-10-19 16:29:01'),(15,'售后问题',0,1,'2018-10-19 16:29:11');
/*!40000 ALTER TABLE `oms_order_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oms_order_setting`
--

DROP TABLE IF EXISTS `oms_order_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oms_order_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flash_order_overtime` int(11) DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
  `normal_order_overtime` int(11) DEFAULT NULL COMMENT '正常订单超时时间(分)',
  `confirm_overtime` int(11) DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
  `finish_overtime` int(11) DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
  `comment_overtime` int(11) DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oms_order_setting`
--

LOCK TABLES `oms_order_setting` WRITE;
/*!40000 ALTER TABLE `oms_order_setting` DISABLE KEYS */;
INSERT INTO `oms_order_setting` VALUES (1,60,120,15,7,7);
/*!40000 ALTER TABLE `oms_order_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_album`
--

DROP TABLE IF EXISTS `pms_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `cover_pic` varchar(1000) DEFAULT NULL,
  `pic_count` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='相册表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_album`
--

LOCK TABLES `pms_album` WRITE;
/*!40000 ALTER TABLE `pms_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_album_pic`
--

DROP TABLE IF EXISTS `pms_album_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_album_pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) DEFAULT NULL,
  `pic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='画册图片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_album_pic`
--

LOCK TABLES `pms_album_pic` WRITE;
/*!40000 ALTER TABLE `pms_album_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_album_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_brand`
--

DROP TABLE IF EXISTS `pms_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `first_letter` varchar(8) DEFAULT NULL COMMENT '首字母',
  `sort` int(11) DEFAULT NULL,
  `factory_status` int(1) DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
  `show_status` int(1) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL COMMENT '产品数量',
  `product_comment_count` int(11) DEFAULT NULL COMMENT '产品评论数量',
  `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) DEFAULT NULL COMMENT '专区大图',
  `brand_story` text COMMENT '品牌故事',
  `src` varchar(50) DEFAULT NULL COMMENT '路劲',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_brand`
--

LOCK TABLES `pms_brand` WRITE;
/*!40000 ALTER TABLE `pms_brand` DISABLE KEYS */;
INSERT INTO `pms_brand` VALUES (1,'万和','W',0,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg','','Victoria\'s Secret的故事',NULL),(2,'三星','S',100,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg',NULL,'三星的故事',NULL),(3,'华为','H',100,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/17f2dd9756d9d333bee8e60ce8c03e4c_222_222.jpg',NULL,'Victoria\'s Secret的故事',NULL),(4,'格力','G',30,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/dc794e7e74121272bbe3ce9bc41ec8c3_222_222.jpg',NULL,'Victoria\'s Secret的故事',NULL),(5,'方太','F',20,1,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg',NULL,'Victoria\'s Secret的故事',NULL),(6,'小米','M',500,0,1,100,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/1e34aef2a409119018a4c6258e39ecfb_222_222.png','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg','小米手机的故事',NULL),(21,'OPPO','O',0,1,1,88,500,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg','','string',NULL),(49,'七匹狼','S',200,0,0,77,400,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/18d8bc3eb13533fab466d702a0d3fd1f40345bcd.jpg',NULL,'BOOB的故事',NULL),(50,'海澜之家','H',200,1,1,66,300,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/99d3279f1029d32b929343b09d3c72de_222_222.jpg','','海澜之家的故事',NULL),(51,'苹果','A',200,1,1,55,200,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg',NULL,'苹果的故事',NULL),(58,'NIKE','N',0,1,1,33,100,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg','','NIKE的故事',NULL);
/*!40000 ALTER TABLE `pms_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_brand_flash_buying`
--

DROP TABLE IF EXISTS `pms_brand_flash_buying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_brand_flash_buying` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `big_title` varchar(30) DEFAULT NULL COMMENT '大标题',
  `small_title` varchar(30) DEFAULT NULL COMMENT '小标题',
  `basic_settings_pictures` varchar(255) DEFAULT NULL COMMENT '图片',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_brand_flash_buying`
--

LOCK TABLES `pms_brand_flash_buying` WRITE;
/*!40000 ALTER TABLE `pms_brand_flash_buying` DISABLE KEYS */;
INSERT INTO `pms_brand_flash_buying` VALUES (1,'1','1','1','2019-09-26 18:00:53','2019-09-26 18:01:13');
/*!40000 ALTER TABLE `pms_brand_flash_buying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_comment`
--

DROP TABLE IF EXISTS `pms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品的id',
  `member_nick_name` varchar(255) DEFAULT NULL COMMENT '会员昵称',
  `product_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `star` int(3) DEFAULT NULL COMMENT '评价星数：0->5',
  `member_ip` varchar(64) DEFAULT NULL COMMENT '评价的ip',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `show_status` int(1) DEFAULT NULL COMMENT '是否显示',
  `product_attribute` varchar(255) DEFAULT NULL COMMENT '购买时的商品属性',
  `collect_count` int(11) DEFAULT NULL COMMENT '收藏数量',
  `read_count` int(11) DEFAULT NULL COMMENT '浏览数量',
  `content` text COMMENT '内容',
  `pics` varchar(1000) DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
  `member_icon` varchar(255) DEFAULT NULL COMMENT '评论用户头像',
  `replay_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评价表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_comment`
--

LOCK TABLES `pms_comment` WRITE;
/*!40000 ALTER TABLE `pms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_comment_replay`
--

DROP TABLE IF EXISTS `pms_comment_replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_comment_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) DEFAULT NULL COMMENT '主频论的id',
  `member_nick_name` varchar(255) DEFAULT NULL COMMENT '会员昵称',
  `member_icon` varchar(255) DEFAULT NULL COMMENT '会员头像',
  `content` varchar(1000) DEFAULT NULL COMMENT '回复内容',
  `create_time` datetime DEFAULT NULL,
  `comment_for_id` bigint(20) DEFAULT NULL COMMENT '回复的id',
  `type` int(1) DEFAULT NULL COMMENT '评论人员类型；0->会员；1->管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品评价回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_comment_replay`
--

LOCK TABLES `pms_comment_replay` WRITE;
/*!40000 ALTER TABLE `pms_comment_replay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_comment_replay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_feight_template`
--

DROP TABLE IF EXISTS `pms_feight_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_feight_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `charge_type` int(1) DEFAULT NULL COMMENT '计费类型:0->按重量；1->按件数',
  `first_weight` decimal(10,2) DEFAULT NULL COMMENT '首重kg',
  `first_fee` decimal(10,2) DEFAULT NULL COMMENT '首费（元）',
  `continue_weight` decimal(10,2) DEFAULT NULL COMMENT '续重kg',
  `continme_fee` decimal(10,2) DEFAULT NULL COMMENT '续重（元）',
  `dest` varchar(255) DEFAULT NULL COMMENT '目的地（省、市）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运费模版';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_feight_template`
--

LOCK TABLES `pms_feight_template` WRITE;
/*!40000 ALTER TABLE `pms_feight_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_feight_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_first_level_type`
--

DROP TABLE IF EXISTS `pms_first_level_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_first_level_type` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `frist_level_id` bigint(11) DEFAULT NULL COMMENT '一级标题的id',
  `product_category_attribute_id` bigint(11) DEFAULT NULL COMMENT '关联导航的id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_first_level_type`
--

LOCK TABLES `pms_first_level_type` WRITE;
/*!40000 ALTER TABLE `pms_first_level_type` DISABLE KEYS */;
INSERT INTO `pms_first_level_type` VALUES (1,1,17,0,'2019-10-14 11:21:53'),(2,9,17,1,'2019-10-14 11:21:53'),(6,10,20,0,'2019-10-14 14:26:03'),(7,0,2,0,'2019-10-17 13:42:48');
/*!40000 ALTER TABLE `pms_first_level_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_flash`
--

DROP TABLE IF EXISTS `pms_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `advertising_map` varchar(255) DEFAULT NULL,
  `is_del` int(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_flash`
--

LOCK TABLES `pms_flash` WRITE;
/*!40000 ALTER TABLE `pms_flash` DISABLE KEYS */;
INSERT INTO `pms_flash` VALUES (1,'12312','2',0,'2019-09-27 17:40:42',NULL),(2,'1','1',NULL,'2019-09-27 17:49:58',NULL);
/*!40000 ALTER TABLE `pms_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_flash_shopping`
--

DROP TABLE IF EXISTS `pms_flash_shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_flash_shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(11) DEFAULT NULL COMMENT '商品Id',
  `flash_id` int(11) NOT NULL COMMENT '信息id',
  `del_is` int(255) DEFAULT NULL COMMENT '是否删除 1 删除',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_flash_shopping`
--

LOCK TABLES `pms_flash_shopping` WRITE;
/*!40000 ALTER TABLE `pms_flash_shopping` DISABLE KEYS */;
INSERT INTO `pms_flash_shopping` VALUES (1,1,1,0,'2019-09-27 17:40:43'),(2,2,1,0,'2019-09-27 17:49:58');
/*!40000 ALTER TABLE `pms_flash_shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_home_src`
--

DROP TABLE IF EXISTS `pms_home_src`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_home_src` (
  `id` int(11) NOT NULL,
  `src` varchar(50) DEFAULT NULL COMMENT '路径',
  `title` varchar(20) DEFAULT NULL COMMENT '标题',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `status` int(1) DEFAULT NULL COMMENT '1开启 0 关闭',
  `next_id` int(11) DEFAULT NULL COMMENT '下一级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首页路径表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_home_src`
--

LOCK TABLES `pms_home_src` WRITE;
/*!40000 ALTER TABLE `pms_home_src` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_home_src` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_member_price`
--

DROP TABLE IF EXISTS `pms_member_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_member_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `member_level_id` bigint(20) DEFAULT NULL,
  `member_price` decimal(10,2) DEFAULT NULL COMMENT '会员价格',
  `member_level_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8 COMMENT='商品会员价格表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_member_price`
--

LOCK TABLES `pms_member_price` WRITE;
/*!40000 ALTER TABLE `pms_member_price` DISABLE KEYS */;
INSERT INTO `pms_member_price` VALUES (26,7,1,500.00,NULL),(27,8,1,500.00,NULL),(28,9,1,500.00,NULL),(29,10,1,500.00,NULL),(30,11,1,500.00,NULL),(31,12,1,500.00,NULL),(32,13,1,500.00,NULL),(33,14,1,500.00,NULL),(37,18,1,500.00,NULL),(44,7,2,480.00,NULL),(45,7,3,450.00,NULL),(52,22,1,NULL,NULL),(53,22,2,NULL,NULL),(54,22,3,NULL,NULL),(58,24,1,NULL,NULL),(59,24,2,NULL,NULL),(60,24,3,NULL,NULL),(112,23,1,88.00,'黄金会员'),(113,23,2,88.00,'白金会员'),(114,23,3,66.00,'钻石会员'),(142,31,1,NULL,'黄金会员'),(143,31,2,NULL,'白金会员'),(144,31,3,NULL,'钻石会员'),(148,32,1,NULL,'黄金会员'),(149,32,2,NULL,'白金会员'),(150,32,3,NULL,'钻石会员'),(154,33,1,NULL,'黄金会员'),(155,33,2,NULL,'白金会员'),(156,33,3,NULL,'钻石会员'),(175,34,1,NULL,'黄金会员'),(176,34,2,NULL,'白金会员'),(177,34,3,NULL,'钻石会员'),(192,27,1,NULL,'黄金会员'),(193,27,2,NULL,'白金会员'),(194,27,3,NULL,'钻石会员'),(195,28,1,NULL,'黄金会员'),(196,28,2,NULL,'白金会员'),(197,28,3,NULL,'钻石会员'),(198,29,1,NULL,'黄金会员'),(199,29,2,NULL,'白金会员'),(200,29,3,NULL,'钻石会员'),(207,37,1,NULL,'黄金会员'),(208,37,2,NULL,'白金会员'),(209,37,3,NULL,'钻石会员'),(210,38,1,NULL,'黄金会员'),(211,38,2,NULL,'白金会员'),(212,38,3,NULL,'钻石会员'),(216,36,1,NULL,'黄金会员'),(217,36,2,NULL,'白金会员'),(218,36,3,NULL,'钻石会员'),(258,35,1,NULL,'黄金会员'),(259,35,2,NULL,'白金会员'),(260,35,3,NULL,'钻石会员'),(273,39,1,NULL,'黄金会员'),(274,39,2,NULL,'白金会员'),(275,39,3,NULL,'钻石会员'),(312,40,1,NULL,'黄金会员'),(313,40,2,NULL,'白金会员'),(314,40,3,NULL,'钻石会员'),(330,41,1,NULL,'黄金会员'),(331,41,2,NULL,'白金会员'),(332,41,3,NULL,'钻石会员'),(333,42,1,NULL,'黄金会员'),(334,42,2,NULL,'白金会员'),(335,42,3,NULL,'钻石会员'),(336,30,1,NULL,'黄金会员'),(337,30,2,NULL,'白金会员'),(338,30,3,NULL,'钻石会员'),(339,43,1,NULL,'黄金会员'),(340,43,2,NULL,'白金会员'),(341,43,3,NULL,'钻石会员'),(342,44,1,NULL,'黄金会员'),(343,44,2,NULL,'白金会员'),(344,44,3,NULL,'钻石会员'),(345,26,1,NULL,'黄金会员'),(346,26,2,NULL,'白金会员'),(347,26,3,NULL,'钻石会员');
/*!40000 ALTER TABLE `pms_member_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_news`
--

DROP TABLE IF EXISTS `pms_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_news` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '新闻名称',
  `news_title` varchar(255) DEFAULT NULL COMMENT '新闻标题',
  `context` text COMMENT '新闻内容',
  `product_num` int(11) DEFAULT NULL COMMENT '商品数量',
  `click_num` int(11) DEFAULT NULL COMMENT '点击次数',
  `create_order_num` int(255) DEFAULT NULL COMMENT '创建订单数量',
  `is_enable` int(255) DEFAULT NULL COMMENT '是否启用 1启用 0禁用',
  `is_del` varchar(20) DEFAULT NULL COMMENT '1 删除',
  `product_news_reletion` varchar(255) DEFAULT NULL COMMENT '关联商品',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_news`
--

LOCK TABLES `pms_news` WRITE;
/*!40000 ALTER TABLE `pms_news` DISABLE KEYS */;
INSERT INTO `pms_news` VALUES (1,'咋33','啊','<p>啊</p>',3,0,0,1,NULL,NULL,'2019-09-26 11:05:07'),(2,'123123','123123','<p>123123123</p>',2,0,0,0,NULL,NULL,'2019-09-26 11:06:20'),(3,'3333333333333','444444444444','<p>5555555555555555</p>',2,0,0,1,NULL,NULL,'2019-09-26 11:06:47'),(4,'77777777777','88888888888','<p>99999999999999</p>',33,0,0,1,NULL,NULL,'2019-09-26 11:07:36');
/*!40000 ALTER TABLE `pms_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_news_product_reletion`
--

DROP TABLE IF EXISTS `pms_news_product_reletion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_news_product_reletion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `product_id` bigint(11) DEFAULT NULL,
  `del_is` varchar(255) DEFAULT NULL COMMENT '1 删除 0未删除',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_news_product_reletion`
--

LOCK TABLES `pms_news_product_reletion` WRITE;
/*!40000 ALTER TABLE `pms_news_product_reletion` DISABLE KEYS */;
INSERT INTO `pms_news_product_reletion` VALUES (1,1,4,'1','2019-09-26 11:05:07'),(2,1,3,'1','2019-09-26 11:05:07'),(3,1,3,'1','2019-09-26 11:05:22'),(4,1,2,'1','2019-09-26 11:05:22'),(5,1,1,'1','2019-09-26 11:05:22'),(6,2,1,'0','2019-09-26 11:06:20'),(7,2,2,'0','2019-09-26 11:06:20'),(8,3,2,'0','2019-09-26 11:06:47'),(9,3,3,'0','2019-09-26 11:06:47'),(10,4,6,'1','2019-09-26 11:07:36'),(11,4,3,'1','2019-09-26 11:08:01'),(12,4,4,'1','2019-09-26 11:08:01'),(13,4,5,'1','2019-09-26 11:08:01'),(14,4,3,'0','2019-09-26 11:08:40'),(15,4,2,'0','2019-09-26 11:08:40'),(16,4,1,'0','2019-09-26 11:08:40'),(17,4,4,'0','2019-09-26 11:08:40'),(18,4,5,'0','2019-09-26 11:08:40'),(19,4,6,'0','2019-09-26 11:08:40'),(20,4,7,'0','2019-09-26 11:08:40'),(21,4,8,'0','2019-09-26 11:08:40'),(22,4,9,'0','2019-09-26 11:08:40'),(23,4,10,'0','2019-09-26 11:08:40'),(24,4,11,'0','2019-09-26 11:08:40'),(25,4,12,'0','2019-09-26 11:08:40'),(26,4,13,'0','2019-09-26 11:08:40'),(27,4,14,'0','2019-09-26 11:08:40'),(28,4,18,'0','2019-09-26 11:08:40'),(29,4,22,'0','2019-09-26 11:08:40'),(30,4,23,'0','2019-09-26 11:08:40'),(31,4,24,'0','2019-09-26 11:08:40'),(32,4,26,'0','2019-09-26 11:08:40'),(33,4,27,'0','2019-09-26 11:08:40'),(34,4,28,'0','2019-09-26 11:08:40'),(35,4,29,'0','2019-09-26 11:08:40'),(36,4,30,'0','2019-09-26 11:08:40'),(37,4,31,'0','2019-09-26 11:08:40'),(38,4,32,'0','2019-09-26 11:08:40'),(39,4,33,'0','2019-09-26 11:08:40'),(40,4,34,'0','2019-09-26 11:08:40'),(41,4,35,'0','2019-09-26 11:08:40'),(42,4,36,'0','2019-09-26 11:08:40'),(43,4,37,'0','2019-09-26 11:08:40'),(44,4,38,'0','2019-09-26 11:08:40'),(45,4,39,'0','2019-09-26 11:08:40'),(46,4,40,'0','2019-09-26 11:08:40'),(47,1,1,'0','2019-10-09 16:45:09'),(48,1,2,'0','2019-10-09 16:45:09'),(49,1,3,'0','2019-10-09 16:45:09');
/*!40000 ALTER TABLE `pms_news_product_reletion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product`
--

DROP TABLE IF EXISTS `pms_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '品牌分类id',
  `feight_template_id` bigint(20) DEFAULT NULL COMMENT '运费模版id',
  `product_attribute_category_id` bigint(20) DEFAULT NULL COMMENT '品牌属性分类id',
  `name` varchar(64) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `product_sn` varchar(64) NOT NULL COMMENT '货号',
  `delete_status` int(1) DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int(1) DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `new_status` int(1) DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `recommand_status` int(1) DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
  `verify_status` int(1) DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过 2->拒绝',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `price` decimal(10,2) DEFAULT NULL,
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '促销价格',
  `gift_growth` int(11) DEFAULT '0' COMMENT '赠送的成长值',
  `gift_point` int(11) DEFAULT '0' COMMENT '赠送的积分',
  `use_point_limit` int(11) DEFAULT NULL COMMENT '限制使用的积分数',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `description` text COMMENT '商品描述',
  `original_price` decimal(10,2) DEFAULT NULL COMMENT '市场价',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `low_stock` int(11) DEFAULT NULL COMMENT '库存预警值',
  `unit` varchar(16) DEFAULT NULL COMMENT '单位',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '商品重量，默认为克',
  `preview_status` int(1) DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
  `service_ids` varchar(64) DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
  `keywords` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `album_pics` varchar(255) DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `detail_title` varchar(255) DEFAULT NULL,
  `detail_desc` text,
  `detail_html` text COMMENT '产品详情网页内容',
  `detail_mobile_html` text COMMENT '移动端网页详情',
  `promotion_start_time` datetime DEFAULT NULL COMMENT '促销开始时间',
  `promotion_end_time` datetime DEFAULT NULL COMMENT '促销结束时间',
  `promotion_per_limit` int(11) DEFAULT NULL COMMENT '活动限购数量',
  `promotion_type` int(1) DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `product_category_name` varchar(255) DEFAULT NULL COMMENT '商品分类名称',
  `view` bigint(20) DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product`
--

LOCK TABLES `pms_product` WRITE;
/*!40000 ALTER TABLE `pms_product` DISABLE KEYS */;
INSERT INTO `pms_product` VALUES (1,49,7,0,0,'银色星芒刺绣网纱底裤','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,1,1,1,100,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'七匹狼','外套',NULL),(2,49,7,0,0,'银色星芒刺绣网纱底裤2','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86578',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤2','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','<p>银色星芒刺绣网纱底裤</p>','<p>银色星芒刺绣网纱底裤</p>',NULL,NULL,NULL,0,'七匹狼','外套',NULL),(3,1,7,0,0,'银色星芒刺绣网纱底裤3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86579',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤3','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套',NULL),(4,1,7,0,0,'银色星芒刺绣网纱底裤4','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86580',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤4','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套',NULL),(5,1,7,0,0,'银色星芒刺绣网纱底裤5','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86581',1,0,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤5','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套',NULL),(6,1,7,0,0,'银色星芒刺绣网纱底裤6','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86582',1,1,1,1,1,1,0,100.00,NULL,0,100,NULL,'111','111',120.00,100,20,'件',1000.00,0,NULL,'银色星芒刺绣网纱底裤6','银色星芒刺绣网纱底裤',NULL,'银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤','银色星芒刺绣网纱底裤',NULL,NULL,NULL,0,'万和','外套',NULL),(7,1,7,0,1,'女式超柔软拉毛运动开衫','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,NULL,'女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(8,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,NULL,'女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(9,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,NULL,'女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(10,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,0,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,NULL,'女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(11,1,7,0,1,'女式超柔软拉毛运动开衫1','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,0,1,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,NULL,'女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(12,1,7,0,1,'女式超柔软拉毛运动开衫2','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,0,1,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'1,2','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(13,1,7,0,1,'女式超柔软拉毛运动开衫3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,1,0,1,1,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(14,1,7,0,1,'女式超柔软拉毛运动开衫3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,1,2,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(18,1,7,0,1,'女式超柔软拉毛运动开衫3','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png','No86577',1,0,0,1,2,0,0,249.00,0.00,0,100,0,'匠心剪裁，垂感质地','匠心剪裁，垂感质地',299.00,100,0,'件',0.00,0,'string','女式超柔软拉毛运动开衫','string','string','string','string','string','string','2018-04-26 10:41:03','2018-04-26 10:41:03',0,0,'万和','外套',NULL),(22,6,7,0,1,'test','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg','',1,1,0,0,1,0,0,0.00,NULL,0,0,0,'test','',0.00,100,0,'',0.00,1,'1,2','','','','','','','',NULL,NULL,0,0,'小米','外套',NULL),(23,6,19,0,1,'毛衫测试','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg','NO.1098',1,1,1,1,1,0,0,99.00,NULL,99,99,1000,'毛衫测试11','xxx',109.00,100,0,'件',1000.00,1,'1,2,3','毛衫测试','毛衫测试','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg','毛衫测试','毛衫测试','<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/155x54.bmp\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录bg1080.jpg\" width=\"500\" height=\"500\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/APP登录界面.jpg\" width=\"500\" height=\"500\" /></p>','',NULL,NULL,0,2,'小米','手机通讯',NULL),(24,6,7,0,NULL,'xxx','','',1,1,0,0,1,0,0,0.00,NULL,0,0,0,'xxx','',0.00,100,0,'',0.00,0,'1,2','','','','','','','',NULL,NULL,0,0,'小米','外套',NULL),(26,3,7,0,3,'华为 HUAWEI P20 1111','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','6946605',0,1,1,1,1,100,0,3788.00,NULL,3788,3788,0,'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待',' 去',4288.00,1000,0,'件',0.00,1,'1,2','','','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ab46a3cN616bdc41.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf5fN2522b9dc.jpg','','','<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44f1cNf51f3bb0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa8Nfcf71c10.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad44fa9N40e78ee0.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f4N1c94bdda.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ad457f5Nd30de41d.jpg\" /><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5b10fb0eN0eb053fb.jpg\" /></p>','',NULL,NULL,0,1,'华为','外套',NULL),(27,6,19,0,3,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','7437788',0,1,1,1,2,0,0,2699.00,NULL,2699,2699,0,'骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购','小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',2699.00,100,0,'',0.00,0,NULL,'','','','','','<p><img class=\"wscnph\" src=\"http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b2254e8N414e6d3a.jpg\" width=\"500\" /></p>','',NULL,NULL,0,3,'小米','手机通讯',NULL),(28,6,19,0,3,'小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','7437789',0,1,1,1,1,0,0,649.00,NULL,649,649,0,'8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购','',649.00,100,0,'',0.00,0,NULL,'','','','','','','',NULL,NULL,0,4,'小米','手机通讯',NULL),(29,51,19,0,3,'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg','7437799',0,1,1,0,2,0,0,5499.00,NULL,5499,5499,0,'【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。','',5499.00,100,0,'',0.00,0,'1,2','','','','','','','',NULL,NULL,0,0,'苹果','手机通讯',NULL),(30,50,8,0,1,'HLA海澜之家简约动物印花短袖T恤','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ad83a4fN6ff67ecd.jpg!cc_350x449.jpg','HNTBJ2E042A',0,1,1,1,1,0,0,98.00,NULL,0,0,0,'2018夏季新品微弹舒适新款短T男生 6月6日-6月20日，满300减30，参与互动赢百元礼券，立即分享赢大奖','',98.00,99,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'海澜之家','T恤',NULL),(31,50,8,0,1,'HLA海澜之家蓝灰花纹圆领针织布短袖T恤','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5ac98b64N70acd82f.jpg!cc_350x449.jpg','HNTBJ2E080A',0,1,1,1,2,0,0,98.00,NULL,0,0,0,'2018夏季新品短袖T恤男HNTBJ2E080A 蓝灰花纹80 175/92A/L80A 蓝灰花纹80 175/92A/L','',98.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'海澜之家','T恤',NULL),(32,50,8,0,NULL,'HLA海澜之家短袖T恤男基础款','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a51eb88Na4797877.jpg','HNTBJ2E153A',0,1,0,0,2,0,0,68.00,NULL,0,0,0,'HLA海澜之家短袖T恤男基础款简约圆领HNTBJ2E153A藏青(F3)175/92A(50)','',68.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'海澜之家','T恤',NULL),(33,6,35,0,NULL,'小米（MI）小米电视4A ','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b02804dN66004d73.jpg','4609652',0,1,0,0,1,0,0,2499.00,NULL,0,0,0,'小米（MI）小米电视4A 55英寸 L55M5-AZ/L55M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视','',2499.00,100,0,'',0.00,0,NULL,'','','','','','','',NULL,NULL,0,0,'小米','手机数码',NULL),(34,6,35,0,NULL,'小米（MI）小米电视4A 65英寸','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b028530N51eee7d4.jpg','4609660',0,1,1,1,1,0,0,3999.00,NULL,0,0,0,' L65M5-AZ/L65M5-AD 2GB+8GB HDR 4K超高清 人工智能网络液晶平板电视','',3999.00,100,0,'',0.00,0,NULL,'','','','','','','',NULL,NULL,0,0,'小米','手机数码',NULL),(35,58,29,0,NULL,'耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b235bb9Nf606460b.jpg','6799342',0,1,0,0,1,0,0,369.00,NULL,0,0,0,'耐克NIKE 男子 休闲鞋 ROSHE RUN 运动鞋 511881-010黑色41码','',369.00,100,0,'',0.00,0,NULL,'','','','','','','',NULL,NULL,0,0,'NIKE','男鞋',NULL),(36,58,29,0,NULL,'耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5b19403eN9f0b3cb8.jpg','6799345',0,1,1,1,2,0,0,499.00,NULL,0,0,0,'耐克NIKE 男子 气垫 休闲鞋 AIR MAX 90 ESSENTIAL 运动鞋 AJ1285-101白色41码','',499.00,100,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'NIKE','男鞋',NULL),(37,6,30,0,1,'敌我双方c','','123123',1,0,0,0,2,0,0,0.00,NULL,0,0,0,'吃阿斯顿','阿斯顿啊',0.00,0,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'小米','',NULL),(38,4,7,0,1,'格力','','12311',0,1,1,1,2,33,0,111.00,NULL,3,3,3,'格力','是谁',123.00,44,0,'元',33.00,1,'1,2,3','婉儿','傻缺','','是是是','事情','','',NULL,NULL,0,4,'格力','外套',NULL),(39,49,51,0,2,'11','','',0,0,0,0,2,0,0,0.00,NULL,0,0,0,'1','11',0.00,0,0,'',0.00,0,NULL,'','','','','','','',NULL,NULL,0,0,'七匹狼','',NULL),(40,50,35,0,5,'海尔超级大功率闪光电视','','12342314134',0,1,1,1,2,1,0,1112.00,NULL,0,0,0,'哈哈哈哈','123424',1112.00,1112,0,'1',120.00,1,NULL,'','','','','','','',NULL,NULL,0,0,'海澜之家','',NULL),(41,58,48,0,1,'小汽车嘀嘀嘀','','P025654',0,0,1,0,1,0,0,0.00,NULL,0,0,0,'嘀嘀嘀','嘀嘀嘀',0.00,0,0,'',0.00,1,'1,2,3','','','','','','','',NULL,NULL,0,4,'NIKE','外套',NULL),(42,58,48,0,1,'小汽车嘀嘀嘀','','P025654',1,1,0,0,1,0,0,0.00,NULL,0,0,0,'嘀嘀嘀','嘀嘀嘀',0.00,0,0,'',0.00,1,'1,2,3','','','','','','','',NULL,NULL,0,4,'NIKE','外套',NULL),(43,6,7,0,NULL,'3123','','',0,1,0,1,1,0,0,0.00,NULL,0,0,0,'123123','2312312',0.00,0,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'小米','外套',NULL),(44,6,7,0,2,'12312','','',0,0,0,0,0,0,0,0.00,NULL,0,0,0,'3123123','',0.00,0,0,'',0.00,0,'','','','','','','','',NULL,NULL,0,0,'小米','外套',NULL);
/*!40000 ALTER TABLE `pms_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_attribute`
--

DROP TABLE IF EXISTS `pms_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint(20) DEFAULT NULL COMMENT '商品属性分类id',
  `name` varchar(64) DEFAULT NULL,
  `select_type` int(1) DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int(1) DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int(1) DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int(1) DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int(1) DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int(1) DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int(1) DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='商品属性参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_attribute`
--

LOCK TABLES `pms_product_attribute` WRITE;
/*!40000 ALTER TABLE `pms_product_attribute` DISABLE KEYS */;
INSERT INTO `pms_product_attribute` VALUES (1,1,'尺寸',2,1,'M,X,XL,2XL,3XL,4XL',0,0,0,0,0,0),(7,1,'颜色',2,1,'黑色,红色,白色,粉色',100,0,0,0,1,0),(13,0,'上市年份',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(14,0,'上市年份1',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(15,0,'上市年份2',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(16,0,'上市年份3',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(17,0,'上市年份4',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(18,0,'上市年份5',1,1,'2013年,2014年,2015年,2016年,2017年',0,0,0,0,0,1),(19,0,'适用对象',1,1,'青年女性,中年女性',0,0,0,0,0,1),(20,0,'适用对象1',2,1,'青年女性,中年女性',0,0,0,0,0,1),(21,0,'适用对象3',2,1,'青年女性,中年女性',0,0,0,0,0,1),(24,1,'商品编号',1,0,'',0,0,0,0,0,1),(25,1,'适用季节',1,1,'春季,夏季,秋季,冬季',0,0,0,0,0,1),(32,2,'适用人群',0,1,'老年,青年,中年',0,0,0,0,0,1),(33,2,'风格',0,1,'嘻哈风格,基础大众,商务正装',0,0,0,0,0,1),(35,2,'颜色',0,0,'',100,0,0,0,1,0),(37,1,'适用人群',1,1,'儿童,青年,中年,老年',0,0,0,0,0,1),(38,1,'上市时间',1,1,'2017年秋,2017年冬,2018年春,2018年夏',0,0,0,0,0,1),(39,1,'袖长',1,1,'短袖,长袖,中袖',0,0,0,0,0,1),(40,2,'尺码',0,1,'29,30,31,32,33,34',0,0,0,0,0,0),(41,2,'适用场景',0,1,'居家,运动,正装',0,0,0,0,0,1),(42,2,'上市时间',0,1,'2018年春,2018年夏',0,0,0,0,0,1),(43,3,'颜色',0,0,'',100,0,0,0,1,0),(44,3,'容量',0,1,'16G,32G,64G,128G',0,0,0,0,0,0),(45,3,'屏幕尺寸',0,0,'',0,0,0,0,0,1),(46,3,'网络',0,1,'3G,4G',0,0,0,0,0,1),(47,3,'系统',0,1,'Android,IOS',0,0,0,0,0,1),(48,3,'电池容量',0,0,'',0,0,0,0,0,1),(50,12,'请问',0,0,'',0,0,0,0,0,0),(51,12,'啊啊啊啊啊啊啊',0,0,'',0,0,0,0,0,1);
/*!40000 ALTER TABLE `pms_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_attribute_category`
--

DROP TABLE IF EXISTS `pms_product_attribute_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_attribute_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `attribute_count` int(11) DEFAULT '0' COMMENT '属性数量',
  `param_count` int(11) DEFAULT '0' COMMENT '参数数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品属性分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_attribute_category`
--

LOCK TABLES `pms_product_attribute_category` WRITE;
/*!40000 ALTER TABLE `pms_product_attribute_category` DISABLE KEYS */;
INSERT INTO `pms_product_attribute_category` VALUES (1,'服装-T恤',2,5),(2,'服装-裤装',2,4),(3,'手机数码-手机通讯',2,4),(4,'配件',0,0),(5,'居家',0,0),(6,'洗护',0,0),(10,'测试分类',0,0);
/*!40000 ALTER TABLE `pms_product_attribute_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_attribute_value`
--

DROP TABLE IF EXISTS `pms_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_attribute_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8 COMMENT='存储产品参数信息的表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_attribute_value`
--

LOCK TABLES `pms_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `pms_product_attribute_value` DISABLE KEYS */;
INSERT INTO `pms_product_attribute_value` VALUES (1,9,1,'X'),(2,10,1,'X'),(3,11,1,'X'),(4,12,1,'X'),(5,13,1,'X'),(6,14,1,'X'),(7,18,1,'X'),(8,7,1,'X'),(9,7,1,'XL'),(10,7,1,'XXL'),(11,22,7,'x,xx'),(12,22,24,'no110'),(13,22,25,'春季'),(14,22,37,'青年'),(15,22,38,'2018年春'),(16,22,39,'长袖'),(124,23,7,'米白色,浅黄色'),(125,23,24,'no1098'),(126,23,25,'春季'),(127,23,37,'青年'),(128,23,38,'2018年春'),(129,23,39,'长袖'),(130,1,13,NULL),(131,1,14,NULL),(132,1,15,NULL),(133,1,16,NULL),(134,1,17,NULL),(135,1,18,NULL),(136,1,19,NULL),(137,1,20,NULL),(138,1,21,NULL),(139,2,13,NULL),(140,2,14,NULL),(141,2,15,NULL),(142,2,16,NULL),(143,2,17,NULL),(144,2,18,NULL),(145,2,19,NULL),(146,2,20,NULL),(147,2,21,NULL),(183,31,24,NULL),(184,31,25,'夏季'),(185,31,37,'青年'),(186,31,38,'2018年夏'),(187,31,39,'短袖'),(213,27,43,'黑色,蓝色'),(214,27,45,'5.8'),(215,27,46,'4G'),(216,27,47,'Android'),(217,27,48,'3000ml'),(218,28,43,'金色,银色'),(219,28,45,'5.0'),(220,28,46,'4G'),(221,28,47,'Android'),(222,28,48,'2800ml'),(223,29,43,'金色,银色'),(224,29,45,'4.7'),(225,29,46,'4G'),(226,29,47,'IOS'),(227,29,48,'1960ml'),(239,37,7,'红灰色,土色,白色'),(240,37,24,NULL),(241,37,25,NULL),(242,37,37,NULL),(243,37,38,NULL),(244,37,39,NULL),(245,38,7,'灰色,绿色,蓝色,白色,黑色,紫色,橙色'),(246,38,24,'啊'),(247,38,25,'春季'),(248,38,37,'青年'),(249,38,38,'2017年秋'),(250,38,39,'长袖'),(294,39,32,NULL),(295,39,33,NULL),(296,39,41,NULL),(297,39,42,NULL),(383,41,24,'100'),(384,41,25,NULL),(385,41,37,'中年'),(386,41,38,'2017年秋'),(387,41,39,'短袖'),(388,42,24,'100'),(389,42,25,NULL),(390,42,37,'中年'),(391,42,38,'2017年秋'),(392,42,39,'短袖'),(393,30,24,NULL),(394,30,25,'夏季'),(395,30,37,'青年'),(396,30,38,'2018年夏'),(397,30,39,'短袖'),(398,44,35,'红色,白色'),(399,44,32,NULL),(400,44,33,NULL),(401,44,41,NULL),(402,44,42,NULL),(403,26,43,'金色,银色'),(404,26,45,'5.0'),(405,26,46,'4G'),(406,26,47,'Android'),(407,26,48,'3000');
/*!40000 ALTER TABLE `pms_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_category`
--

DROP TABLE IF EXISTS `pms_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级分类的编号：0表示一级分类',
  `name` varchar(64) DEFAULT NULL,
  `level` int(1) DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int(11) DEFAULT NULL,
  `product_unit` varchar(64) DEFAULT NULL,
  `nav_status` int(1) DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text COMMENT '描述',
  `attribute_type` bigint(11) DEFAULT NULL COMMENT '属性主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_category`
--

LOCK TABLES `pms_product_category` WRITE;
/*!40000 ALTER TABLE `pms_product_category` DISABLE KEYS */;
INSERT INTO `pms_product_category` VALUES (1,0,'服装',0,100,'件',0,1,1,NULL,'服装','服装分类',1),(3,0,'家用电器',0,100,'件',0,1,1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png','家用电器','家用电器',2),(4,0,'家具家装',0,100,'件',0,1,1,NULL,'家具家装','家具家装',3),(5,0,'汽车用品',0,100,'件',0,1,1,NULL,'汽车用品','汽车用品',1),(7,1,'外套',1,100,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png','外套','外套',2),(8,1,'T恤',1,100,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_tshirt.png','T恤','T恤',2),(9,1,'休闲裤',1,100,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xiuxianku.png','休闲裤','休闲裤',2),(10,1,'牛仔裤',1,100,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_niuzaiku.png','牛仔裤','牛仔裤',2),(11,1,'衬衫',1,100,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_chenshan.png','衬衫','衬衫分类',2),(13,12,'家电子分类1',1,1,'string',0,1,0,'string','string','string',2),(14,12,'家电子分类2',1,1,'string',0,1,0,'string','string','string',2),(19,2,'手机通讯',1,0,'件',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png','手机通讯','手机通讯',2),(29,1,'男鞋',1,0,'',0,0,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xie.png','','',2),(30,2,'手机配件',1,0,'',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_peijian.png','手机配件','手机配件',2),(31,2,'摄影摄像',1,0,'',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_sheying.png','','',2),(32,2,'影音娱乐',1,0,'',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png','','',2),(33,2,'数码配件',1,0,'',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png','','',2),(34,2,'智能设备',1,0,'',1,1,0,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_zhineng.png','','',2),(35,3,'电视',1,0,'',1,1,0,'','','',2),(36,3,'空调',1,0,'',1,1,0,'','','',2),(37,3,'洗衣机',1,0,'',1,1,0,'','','',2),(38,3,'冰箱',1,0,'',1,1,0,'','','',2),(39,3,'厨卫大电',1,0,'',1,1,0,'','','',2),(40,3,'厨房小电',1,0,'',1,1,0,'','','',2),(41,3,'生活电器',1,0,'',1,1,0,'','','',2),(42,3,'个护健康',1,0,'',0,1,0,'','','',2),(43,4,'厨房卫浴',1,0,'',1,1,0,'','','',2),(44,4,'灯饰照明',1,0,'',1,1,0,'','','',2),(45,4,'五金工具',1,0,'',1,1,0,'','','',2),(46,4,'卧室家具',1,0,'',1,1,0,'','','',2),(47,4,'客厅家具',1,0,'',1,1,0,'','','',2),(48,5,'全新整车',1,0,'',1,1,0,'','','',2),(49,5,'车载电器',1,0,'',1,1,0,'','','',2),(50,5,'维修保养',1,0,'',1,1,0,'','','',2),(51,5,'汽车装饰',1,0,'',1,1,0,'','','',2),(58,1,'shu',1,0,'2',1,0,1,'','','',2),(59,0,'书籍',0,NULL,NULL,0,1,1,'http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg',NULL,NULL,2),(60,0,'电话',0,NULL,NULL,1,1,1,'http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg','电话','电话',2),(61,0,'string',0,NULL,NULL,1,1,0,'string','string','string',2),(62,0,'string',0,NULL,NULL,1,1,0,'string','string','string',2),(64,3,'热水壶',1,0,'12111',0,1,123123,'','12312','3123123',NULL);
/*!40000 ALTER TABLE `pms_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_category_attribute`
--

DROP TABLE IF EXISTS `pms_product_category_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_category_attribute` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `local_url` varchar(255) DEFAULT NULL COMMENT '路径',
  `level` int(11) DEFAULT NULL COMMENT '一级等级属性',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `del_is_ture` int(255) DEFAULT NULL COMMENT '是否已删除 1是删除 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_category_attribute`
--

LOCK TABLES `pms_product_category_attribute` WRITE;
/*!40000 ALTER TABLE `pms_product_category_attribute` DISABLE KEYS */;
INSERT INTO `pms_product_category_attribute` VALUES (1,'家用电器','string',NULL,1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',1,'2019-10-09 14:25:02',0),(2,'家用电器','string',NULL,1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',1,'2019-10-09 14:25:02',0),(3,'家用电器','string',NULL,1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',1,'2019-10-09 14:25:02',0),(4,'家用电器','string',NULL,1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',1,'2019-10-09 14:25:02',0),(5,'家用电器','string',NULL,1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',1,'2019-10-09 14:25:02',0),(16,'string','string',NULL,1,'string',0,'2019-10-14 09:56:51',0),(17,'string','string',NULL,1,'string',0,'2019-10-14 10:50:52',0),(20,'2','1',NULL,1,'2',1,'2019-10-14 13:49:12',0);
/*!40000 ALTER TABLE `pms_product_category_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_category_attribute_img`
--

DROP TABLE IF EXISTS `pms_product_category_attribute_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_category_attribute_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category_attribute_id` bigint(11) DEFAULT NULL COMMENT '关联product_category_attribute',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_category_attribute_img`
--

LOCK TABLES `pms_product_category_attribute_img` WRITE;
/*!40000 ALTER TABLE `pms_product_category_attribute_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_product_category_attribute_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_category_attribute_relation`
--

DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_category_attribute_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_category_attribute_relation`
--

LOCK TABLES `pms_product_category_attribute_relation` WRITE;
/*!40000 ALTER TABLE `pms_product_category_attribute_relation` DISABLE KEYS */;
INSERT INTO `pms_product_category_attribute_relation` VALUES (1,24,24),(5,26,24),(7,28,24),(9,25,24),(10,25,25),(11,53,32),(12,58,25),(13,64,25);
/*!40000 ALTER TABLE `pms_product_category_attribute_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_full_reduction`
--

DROP TABLE IF EXISTS `pms_product_full_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_full_reduction` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `full_price` decimal(10,2) DEFAULT NULL,
  `reduce_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='产品满减表(只针对同商品)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_full_reduction`
--

LOCK TABLES `pms_product_full_reduction` WRITE;
/*!40000 ALTER TABLE `pms_product_full_reduction` DISABLE KEYS */;
INSERT INTO `pms_product_full_reduction` VALUES (1,7,100.00,20.00),(2,8,100.00,20.00),(3,9,100.00,20.00),(4,10,100.00,20.00),(5,11,100.00,20.00),(6,12,100.00,20.00),(7,13,100.00,20.00),(8,14,100.00,20.00),(9,18,100.00,20.00),(10,7,200.00,50.00),(11,7,300.00,100.00),(14,22,0.00,0.00),(16,24,0.00,0.00),(34,23,0.00,0.00),(44,31,0.00,0.00),(46,32,0.00,0.00),(48,33,0.00,0.00),(55,34,0.00,0.00),(59,27,0.00,0.00),(60,28,500.00,50.00),(61,28,1000.00,120.00),(62,29,0.00,0.00),(65,37,0.00,0.00),(66,38,444.00,34.00),(67,38,0.00,0.00),(69,36,0.00,0.00),(83,35,0.00,0.00),(88,39,0.00,0.00),(101,40,0.00,0.00),(107,41,0.00,0.00),(108,42,0.00,0.00),(109,30,0.00,0.00),(110,43,0.00,0.00),(111,44,0.00,0.00),(112,26,0.00,0.00);
/*!40000 ALTER TABLE `pms_product_full_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_img`
--

DROP TABLE IF EXISTS `pms_product_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `img` varchar(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_img`
--

LOCK TABLES `pms_product_img` WRITE;
/*!40000 ALTER TABLE `pms_product_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_product_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_ladder`
--

DROP TABLE IF EXISTS `pms_product_ladder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_ladder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '满足的商品数量',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `price` decimal(10,2) DEFAULT NULL COMMENT '折后价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='产品阶梯价格表(只针对同商品)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_ladder`
--

LOCK TABLES `pms_product_ladder` WRITE;
/*!40000 ALTER TABLE `pms_product_ladder` DISABLE KEYS */;
INSERT INTO `pms_product_ladder` VALUES (1,7,3,0.70,0.00),(2,8,3,0.70,0.00),(3,9,3,0.70,0.00),(4,10,3,0.70,0.00),(5,11,3,0.70,0.00),(6,12,3,0.70,0.00),(7,13,3,0.70,0.00),(8,14,3,0.70,0.00),(12,18,3,0.70,0.00),(14,7,4,0.60,0.00),(15,7,5,0.50,0.00),(18,22,0,0.00,0.00),(20,24,0,0.00,0.00),(38,23,0,0.00,0.00),(48,31,0,0.00,0.00),(50,32,0,0.00,0.00),(52,33,0,0.00,0.00),(59,34,0,0.00,0.00),(64,27,2,0.80,0.00),(65,27,3,0.75,0.00),(66,28,0,0.00,0.00),(67,29,0,0.00,0.00),(70,37,0,0.00,0.00),(71,38,0,0.00,0.00),(73,36,0,0.00,0.00),(87,35,0,0.00,0.00),(92,39,0,0.00,0.00),(105,40,0,0.00,0.00),(111,41,0,0.00,0.00),(112,42,0,0.00,0.00),(113,30,0,0.00,0.00),(114,43,0,0.00,0.00),(115,44,0,0.00,0.00),(116,26,0,0.00,0.00);
/*!40000 ALTER TABLE `pms_product_ladder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_news`
--

DROP TABLE IF EXISTS `pms_product_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ss',
  `product_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `product_category_attribute_id` bigint(20) DEFAULT NULL COMMENT '关联导航的id',
  `sort` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '0->上新推荐，1->热门推荐的商品',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_news`
--

LOCK TABLES `pms_product_news` WRITE;
/*!40000 ALTER TABLE `pms_product_news` DISABLE KEYS */;
INSERT INTO `pms_product_news` VALUES (8,1,17,1,0,'2019-10-14 14:52:46'),(9,2,17,2,0,'2019-10-14 14:52:46'),(10,3,17,3,0,'2019-10-14 14:52:46'),(11,1,16,1,0,'2019-10-14 14:53:04'),(12,2,16,2,0,'2019-10-14 14:53:04'),(13,3,16,3,0,'2019-10-14 14:53:04'),(18,1,17,1,1,'2019-10-14 15:40:19'),(19,2,17,2,1,'2019-10-14 15:40:19'),(20,3,17,3,1,'2019-10-14 15:40:19'),(21,4,17,4,1,'2019-10-14 15:40:19');
/*!40000 ALTER TABLE `pms_product_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_operate_log`
--

DROP TABLE IF EXISTS `pms_product_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL,
  `sale_price_old` decimal(10,2) DEFAULT NULL,
  `sale_price_new` decimal(10,2) DEFAULT NULL,
  `gift_point_old` int(11) DEFAULT NULL COMMENT '赠送的积分',
  `gift_point_new` int(11) DEFAULT NULL,
  `use_point_limit_old` int(11) DEFAULT NULL,
  `use_point_limit_new` int(11) DEFAULT NULL,
  `operate_man` varchar(64) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_operate_log`
--

LOCK TABLES `pms_product_operate_log` WRITE;
/*!40000 ALTER TABLE `pms_product_operate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `pms_product_operate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_product_vertify_record`
--

DROP TABLE IF EXISTS `pms_product_vertify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_product_vertify_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `vertify_man` varchar(64) DEFAULT NULL COMMENT '审核人',
  `status` int(1) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '反馈详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品审核记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_product_vertify_record`
--

LOCK TABLES `pms_product_vertify_record` WRITE;
/*!40000 ALTER TABLE `pms_product_vertify_record` DISABLE KEYS */;
INSERT INTO `pms_product_vertify_record` VALUES (1,1,'2018-04-27 16:36:41','test',1,'验证通过'),(2,2,'2018-04-27 16:36:41','test',1,'验证通过'),(3,38,'2019-09-23 13:43:25','V',1,'验证通过'),(4,36,'2019-09-23 13:46:18','V',1,'验证通过'),(5,36,'2019-09-23 13:46:36','V',0,'验证不通过'),(6,36,'2019-09-23 13:57:06','V',0,'验证不通过'),(7,1,'2019-09-23 14:17:52','1',1,'验证通过'),(9,37,'2019-09-23 14:53:02','V',0,'拒绝'),(10,38,'2019-09-23 14:53:02','V',0,'拒绝'),(11,33,'2019-09-24 09:38:07','admin',1,'验证通过'),(12,34,'2019-09-24 09:41:05','admin',1,'验证通过'),(13,35,'2019-09-24 09:41:24','admin',1,'验证通过'),(14,39,'2019-09-24 09:41:26','admin',0,'验证不通过'),(15,1,'2019-09-24 10:33:07','admin',1,'成功'),(16,2,'2019-09-24 10:33:07','admin',1,'成功'),(17,3,'2019-09-24 10:33:07','admin',1,'成功'),(18,4,'2019-09-24 10:33:07','admin',1,'成功'),(19,5,'2019-09-24 10:33:07','admin',1,'成功'),(20,6,'2019-09-24 10:34:17','admin',1,'成功'),(21,7,'2019-09-24 10:34:24','admin',1,'成功'),(22,8,'2019-09-24 10:34:24','admin',1,'成功'),(23,9,'2019-09-24 10:34:41','admin',1,'成功'),(24,10,'2019-09-24 10:34:51','admin',1,'成功'),(25,11,'2019-09-24 10:34:51','admin',1,'成功'),(26,1,'2019-09-24 15:20:54','1',1,'验证通过'),(27,1,'2019-09-24 15:29:13','1',1,'成功'),(28,1,'2019-09-24 15:29:29','1',1,'成功'),(29,2,'2019-09-24 15:29:29','1',1,'成功'),(30,1,'2019-09-24 15:29:39','1',1,'验证通过'),(31,12,'2019-09-24 15:44:33','admin',1,'成功'),(32,13,'2019-09-24 15:44:33','admin',1,'成功'),(33,14,'2019-09-24 15:44:38','admin',0,'拒绝'),(34,18,'2019-09-24 15:44:38','admin',0,'拒绝'),(35,22,'2019-09-24 15:44:41','admin',1,'验证通过'),(36,23,'2019-09-24 15:44:45','admin',1,'验证通过'),(37,24,'2019-09-25 16:11:31','admin',1,'成功'),(38,26,'2019-09-25 16:11:38','admin',1,'验证通过'),(39,27,'2019-09-25 16:11:39','admin',0,'验证不通过'),(40,32,'2019-09-29 13:31:16','admin',0,'拒绝'),(41,40,'2019-09-29 13:31:36','admin',0,'拒绝'),(42,41,'2019-10-08 12:59:03','admin',1,'验证通过'),(43,42,'2019-10-08 12:59:08','admin',1,'验证通过'),(44,28,'2019-10-10 15:11:32','admin',1,'验证通过'),(45,29,'2019-10-10 15:12:10','admin',0,'验证不通过'),(46,30,'2019-10-10 15:12:24','admin',1,'验证通过'),(47,31,'2019-10-10 15:12:37','admin',0,'验证不通过'),(48,43,'2019-10-15 14:30:50','admin',1,'验证通过');
/*!40000 ALTER TABLE `pms_product_vertify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_recommend_type`
--

DROP TABLE IF EXISTS `pms_recommend_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_recommend_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint(20) DEFAULT NULL COMMENT '属性id',
  `level_id` bigint(11) NOT NULL COMMENT '一级id',
  `status` int(255) NOT NULL COMMENT '1 销量 2 浏览量 3 新品',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_recommend_type`
--

LOCK TABLES `pms_recommend_type` WRITE;
/*!40000 ALTER TABLE `pms_recommend_type` DISABLE KEYS */;
INSERT INTO `pms_recommend_type` VALUES (1,10,1,0,'2019-10-09 14:25:02'),(2,11,1,0,'2019-10-09 14:30:29'),(3,12,1,0,'2019-10-09 14:31:36'),(12,13,0,0,'2019-10-09 15:36:35'),(13,14,0,0,'2019-10-11 15:56:36'),(18,17,1,1,'2019-10-14 15:30:05');
/*!40000 ALTER TABLE `pms_recommend_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_second_level_type`
--

DROP TABLE IF EXISTS `pms_second_level_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_second_level_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `second_level_id` int(11) DEFAULT NULL COMMENT '二级id',
  `product_category_attribute_id` bigint(11) DEFAULT NULL COMMENT '导航栏id',
  `first_level_type_id` bigint(11) DEFAULT NULL COMMENT '一级分类下的id  一级标题的id',
  `sort` int(255) DEFAULT NULL COMMENT '排序',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_second_level_type`
--

LOCK TABLES `pms_second_level_type` WRITE;
/*!40000 ALTER TABLE `pms_second_level_type` DISABLE KEYS */;
INSERT INTO `pms_second_level_type` VALUES (1,1,17,1,1,'2019-10-14 11:21:53'),(2,8,17,1,2,'2019-10-14 11:21:53'),(3,9,17,1,3,'2019-10-14 11:21:53'),(4,3,17,2,1,'2019-10-14 11:21:53'),(5,4,17,2,2,'2019-10-14 11:21:53'),(6,5,17,2,3,'2019-10-14 11:21:53'),(16,2,20,6,1,'2019-10-14 14:26:03'),(17,3,20,6,2,'2019-10-14 14:26:03'),(18,4,20,6,3,'2019-10-14 14:26:03'),(19,0,2,7,1,'2019-10-17 13:42:48');
/*!40000 ALTER TABLE `pms_second_level_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_sku_stock`
--

DROP TABLE IF EXISTS `pms_sku_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pms_sku_stock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `sku_code` varchar(64) NOT NULL COMMENT 'sku编码',
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `low_stock` int(11) DEFAULT NULL COMMENT '预警库存',
  `sp1` varchar(64) DEFAULT NULL COMMENT '销售属性1',
  `sp2` varchar(64) DEFAULT NULL,
  `sp3` varchar(64) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '单品促销价格',
  `lock_stock` int(11) DEFAULT '0' COMMENT '锁定库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8 COMMENT='sku的库存';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_sku_stock`
--

LOCK TABLES `pms_sku_stock` WRITE;
/*!40000 ALTER TABLE `pms_sku_stock` DISABLE KEYS */;
INSERT INTO `pms_sku_stock` VALUES (1,1,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(2,8,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(3,9,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(4,10,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(5,11,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(6,12,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(7,13,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(8,14,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(9,18,'string',100.00,0,5,'string','string','string','string',0,NULL,0),(10,7,'string',0.00,0,0,'string','string','sp3','string',0,NULL,0),(11,7,'string',0.00,0,0,'string','string','sp33','string',0,NULL,0),(12,22,'111',99.00,0,NULL,'x','M',NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg',NULL,NULL,0),(13,22,'112',99.00,0,NULL,'xx','M',NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2018032614134591_20180326141345650 (4).png',NULL,NULL,0),(78,1,'201806070023001',99.00,0,NULL,'米白色','M',NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg',NULL,NULL,0),(79,23,'201806070023002',99.00,0,NULL,'米白色','X',NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg',NULL,NULL,0),(80,23,'201806070023003',99.00,0,NULL,'浅黄色','M',NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2017091716493787_20170917164937650 (1).png',NULL,NULL,0),(81,23,'201806070023004',99.00,0,NULL,'浅黄色','X',NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2017091716493787_20170917164937650 (1).png',NULL,NULL,0),(98,27,'201808270027001',2699.00,97,NULL,'黑色','32G',NULL,NULL,NULL,NULL,-24),(99,27,'201808270027002',2999.00,100,NULL,'黑色','64G',NULL,NULL,NULL,NULL,0),(100,27,'201808270027003',2699.00,100,NULL,'蓝色','32G',NULL,NULL,NULL,NULL,0),(101,27,'201808270027004',2999.00,100,NULL,'蓝色','64G',NULL,NULL,NULL,NULL,0),(102,28,'201808270028001',649.00,99,NULL,'金色','16G',NULL,NULL,NULL,NULL,-8),(103,28,'201808270028002',699.00,99,NULL,'金色','32G',NULL,NULL,NULL,NULL,-8),(104,28,'201808270028003',649.00,100,NULL,'银色','16G',NULL,NULL,NULL,NULL,0),(105,28,'201808270028004',699.00,100,NULL,'银色','32G',NULL,NULL,NULL,NULL,0),(106,29,'201808270029001',5499.00,99,NULL,'金色','32G',NULL,NULL,NULL,NULL,-8),(107,29,'201808270029002',6299.00,100,NULL,'金色','64G',NULL,NULL,NULL,NULL,0),(108,29,'201808270029003',5499.00,100,NULL,'银色','32G',NULL,NULL,NULL,NULL,0),(109,29,'201808270029004',6299.00,100,NULL,'银色','64G',NULL,NULL,NULL,NULL,0),(114,37,'201909190037001',NULL,NULL,NULL,'土色','XL',NULL,NULL,NULL,NULL,0),(115,37,'201909190037002',NULL,NULL,NULL,'土色','2XL',NULL,NULL,NULL,NULL,0),(116,37,'201909190037003',NULL,NULL,NULL,'土色','3XL',NULL,NULL,NULL,NULL,0),(117,37,'201909190037004',NULL,NULL,NULL,'土色','X',NULL,NULL,NULL,NULL,0),(118,37,'201909190037005',NULL,NULL,NULL,'土色','M',NULL,NULL,NULL,NULL,0),(119,37,'201909190037006',NULL,NULL,NULL,'白色','XL',NULL,NULL,NULL,NULL,0),(120,37,'201909190037007',NULL,NULL,NULL,'白色','2XL',NULL,NULL,NULL,NULL,0),(121,37,'201909190037008',NULL,NULL,NULL,'白色','3XL',NULL,NULL,NULL,NULL,0),(122,37,'201909190037009',NULL,NULL,NULL,'白色','X',NULL,NULL,NULL,NULL,0),(123,37,'201909190037010',NULL,NULL,NULL,'白色','M',NULL,NULL,NULL,NULL,0),(124,37,'201909190037011',NULL,NULL,NULL,'红灰色','XL',NULL,NULL,NULL,NULL,0),(125,37,'201909190037012',NULL,NULL,NULL,'红灰色','2XL',NULL,NULL,NULL,NULL,0),(126,37,'201909190037013',NULL,NULL,NULL,'红灰色','3XL',NULL,NULL,NULL,NULL,0),(127,37,'201909190037014',NULL,NULL,NULL,'红灰色','X',NULL,NULL,NULL,NULL,0),(128,37,'201909190037015',NULL,NULL,NULL,'红灰色','M',NULL,NULL,NULL,NULL,0),(129,38,'111是谁',111.00,111,111,'灰色','M',NULL,NULL,NULL,NULL,0),(130,38,'111',111.00,111,111,'灰色','3XL',NULL,NULL,NULL,NULL,0),(131,38,'111',111.00,111,111,'灰色','X',NULL,NULL,NULL,NULL,0),(132,38,'201909190038004',NULL,NULL,NULL,'灰色','XL',NULL,NULL,NULL,NULL,0),(133,38,'201909190038005',NULL,NULL,NULL,'灰色','2XL',NULL,NULL,NULL,NULL,0),(134,38,'201909190038006',NULL,NULL,NULL,'灰色','4XL',NULL,NULL,NULL,NULL,0),(135,38,'201909190038007',NULL,NULL,NULL,'绿色','M',NULL,NULL,NULL,NULL,0),(136,38,'201909190038008',NULL,NULL,NULL,'绿色','3XL',NULL,NULL,NULL,NULL,0),(137,38,'201909190038009',NULL,NULL,NULL,'绿色','X',NULL,NULL,NULL,NULL,0),(138,38,'201909190038010',NULL,NULL,NULL,'绿色','XL',NULL,NULL,NULL,NULL,0),(139,38,'201909190038011',NULL,NULL,NULL,'绿色','2XL',NULL,NULL,NULL,NULL,0),(140,38,'201909190038012',NULL,NULL,NULL,'绿色','4XL',NULL,NULL,NULL,NULL,0),(141,38,'201909190038013',NULL,NULL,NULL,'白色','M',NULL,NULL,NULL,NULL,0),(142,38,'201909190038014',NULL,NULL,NULL,'白色','3XL',NULL,NULL,NULL,NULL,0),(143,38,'201909190038015',NULL,NULL,NULL,'白色','X',NULL,NULL,NULL,NULL,0),(144,38,'201909190038016',NULL,NULL,NULL,'白色','XL',NULL,NULL,NULL,NULL,0),(145,38,'201909190038017',NULL,NULL,NULL,'白色','2XL',NULL,NULL,NULL,NULL,0),(146,38,'201909190038018',NULL,NULL,NULL,'白色','4XL',NULL,NULL,NULL,NULL,0),(147,38,'201909190038019',NULL,NULL,NULL,'黑色','M',NULL,NULL,NULL,NULL,0),(148,38,'201909190038020',NULL,NULL,NULL,'黑色','3XL',NULL,NULL,NULL,NULL,0),(149,38,'201909190038021',NULL,NULL,NULL,'黑色','X',NULL,NULL,NULL,NULL,0),(150,38,'201909190038022',NULL,NULL,NULL,'黑色','XL',NULL,NULL,NULL,NULL,0),(151,38,'201909190038023',NULL,NULL,NULL,'黑色','2XL',NULL,NULL,NULL,NULL,0),(152,38,'201909190038024',NULL,NULL,NULL,'黑色','4XL',NULL,NULL,NULL,NULL,0),(153,38,'201909190038025',NULL,NULL,NULL,'蓝色','M',NULL,NULL,NULL,NULL,0),(154,38,'201909190038026',NULL,NULL,NULL,'蓝色','3XL',NULL,NULL,NULL,NULL,0),(155,38,'201909190038027',NULL,NULL,NULL,'蓝色','X',NULL,NULL,NULL,NULL,0),(156,38,'201909190038028',NULL,NULL,NULL,'蓝色','XL',NULL,NULL,NULL,NULL,0),(157,38,'201909190038029',NULL,NULL,NULL,'蓝色','2XL',NULL,NULL,NULL,NULL,0),(158,38,'201909190038030',NULL,NULL,NULL,'蓝色','4XL',NULL,NULL,NULL,NULL,0),(159,38,'201909190038031',NULL,NULL,NULL,'橙色','M',NULL,NULL,NULL,NULL,0),(160,38,'201909190038032',NULL,NULL,NULL,'橙色','3XL',NULL,NULL,NULL,NULL,0),(161,38,'201909190038033',NULL,NULL,NULL,'橙色','X',NULL,NULL,NULL,NULL,0),(162,38,'201909190038034',NULL,NULL,NULL,'橙色','XL',NULL,NULL,NULL,NULL,0),(163,38,'201909190038035',NULL,NULL,NULL,'橙色','2XL',NULL,NULL,NULL,NULL,0),(164,38,'201909190038036',NULL,NULL,NULL,'橙色','4XL',NULL,NULL,NULL,NULL,0),(165,38,'201909190038037',NULL,NULL,NULL,'紫色','M',NULL,NULL,NULL,NULL,0),(166,38,'201909190038038',NULL,NULL,NULL,'紫色','3XL',NULL,NULL,NULL,NULL,0),(167,38,'201909190038039',NULL,NULL,NULL,'紫色','X',NULL,NULL,NULL,NULL,0),(168,38,'201909190038040',NULL,NULL,NULL,'紫色','XL',NULL,NULL,NULL,NULL,0),(169,38,'201909190038041',NULL,NULL,NULL,'紫色','2XL',NULL,NULL,NULL,NULL,0),(170,38,'201909190038042',NULL,NULL,NULL,'紫色','4XL',NULL,NULL,NULL,NULL,0),(267,44,'1',1.00,1,1,'白色','34',NULL,NULL,NULL,NULL,0),(268,44,'201910140044002',NULL,NULL,NULL,'白色','29',NULL,NULL,NULL,NULL,0),(269,44,'201910140044003',NULL,NULL,NULL,'白色','33',NULL,NULL,NULL,NULL,0),(270,44,'201910140044004',NULL,NULL,NULL,'白色','32',NULL,NULL,NULL,NULL,0),(271,44,'201910140044005',NULL,NULL,NULL,'红色','34',NULL,NULL,NULL,NULL,0),(272,44,'201910140044006',NULL,NULL,NULL,'红色','29',NULL,NULL,NULL,NULL,0),(273,44,'201910140044007',NULL,NULL,NULL,'红色','33',NULL,NULL,NULL,NULL,0),(274,44,'201910140044008',NULL,NULL,NULL,'红色','32',NULL,NULL,NULL,NULL,0),(275,26,'201806070026001',3788.00,400,-1,'金色','16G',NULL,NULL,NULL,NULL,0),(276,26,'201806070026002',3999.00,500,1,'金色','32G',NULL,NULL,NULL,NULL,0),(277,26,'201806070026003',3788.00,500,1,'银色','16G',NULL,NULL,NULL,NULL,0),(278,26,'201806070026004',3999.00,500,1,'银色','32G',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `pms_sku_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon`
--

DROP TABLE IF EXISTS `sms_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL COMMENT '优惠卷类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
  `name` varchar(100) DEFAULT NULL,
  `platform` int(1) DEFAULT NULL COMMENT '使用平台：0->全部；1->移动；2->PC',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `per_limit` int(11) DEFAULT NULL COMMENT '每人限领张数',
  `min_point` decimal(10,2) DEFAULT NULL COMMENT '使用门槛；0表示无门槛',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `use_type` int(1) DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `publish_count` int(11) DEFAULT NULL COMMENT '发行数量',
  `use_count` int(11) DEFAULT NULL COMMENT '已使用数量',
  `receive_count` int(11) DEFAULT NULL COMMENT '领取数量',
  `enable_time` datetime DEFAULT NULL COMMENT '可以领取的日期',
  `code` varchar(64) DEFAULT NULL COMMENT '优惠码',
  `member_level` int(1) DEFAULT NULL COMMENT '可领取的会员类型：0->无限时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='优惠卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon`
--

LOCK TABLES `sms_coupon` WRITE;
/*!40000 ALTER TABLE `sms_coupon` DISABLE KEYS */;
INSERT INTO `sms_coupon` VALUES (2,0,'全品类通用券',0,92,10.00,1,100.00,'2018-08-27 16:40:47','2018-11-23 16:40:47',0,'满100减10',100,0,8,'2018-08-27 16:40:47',NULL,NULL),(3,0,'小米手机专用券',0,92,50.00,1,1000.00,'2018-08-27 16:40:47','2018-11-16 16:40:47',2,'小米手机专用优惠券',100,0,8,'2018-08-27 16:40:47',NULL,NULL),(4,0,'手机品类专用券',0,92,300.00,1,2000.00,'2018-08-27 16:40:47','2018-09-15 16:40:47',1,'手机分类专用优惠券',100,0,8,'2018-08-27 16:40:47',NULL,NULL),(7,0,'T恤分类专用优惠券',0,93,50.00,1,500.00,'2018-08-27 16:40:47','2018-08-15 16:40:47',1,'满500减50',100,0,7,'2018-08-27 16:40:47',NULL,NULL),(8,0,'新优惠券',0,100,100.00,1,1000.00,'2018-11-08 00:00:00','2018-11-27 00:00:00',0,'测试',100,0,1,NULL,NULL,NULL),(9,0,'全品类通用券',0,100,5.00,1,100.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,100,0,1,NULL,NULL,NULL),(10,0,'全品类通用券',0,100,15.00,1,200.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,100,0,1,NULL,NULL,NULL),(11,0,'全品类通用券',0,1000,50.00,1,1000.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,1000,0,0,NULL,NULL,NULL),(12,0,'移动端全品类通用券',1,1,10.00,1,100.00,'2018-11-08 00:00:00','2018-11-10 00:00:00',0,NULL,100,0,0,NULL,NULL,NULL),(19,0,'手机分类专用',0,100,100.00,1,1000.00,'2018-11-09 00:00:00','2018-11-17 00:00:00',1,'手机分类专用',100,0,0,NULL,NULL,NULL),(20,0,'小米手机专用',0,100,200.00,1,1000.00,'2018-11-09 00:00:00','2018-11-24 00:00:00',2,'小米手机专用',100,0,0,NULL,NULL,NULL),(21,0,'xxx',0,100,10.00,1,100.00,'2018-11-09 00:00:00','2018-11-30 00:00:00',2,NULL,100,0,0,NULL,NULL,NULL),(23,1,'去去去',0,123123,123123.00,1,123123.00,'2019-09-11 00:00:00','2019-09-02 00:00:00',0,'1',123123,0,0,NULL,NULL,NULL),(25,0,'eqwerwq',0,123,123.00,1,213.00,'2019-09-12 00:00:00','2019-09-21 00:00:00',0,'werqwr',123,0,0,NULL,NULL,NULL),(27,1,'111',0,1,1.00,1,1.00,'2019-09-02 00:00:00','2019-09-19 00:00:00',1,'1',1,0,0,NULL,NULL,NULL),(29,0,'11',0,1,1.00,1,1.00,'2019-09-17 00:00:00','2019-09-27 00:00:00',1,'1',1,0,0,NULL,NULL,NULL),(30,0,'11',0,234,34.00,1,1.00,'2019-09-09 00:00:00','2019-10-11 00:00:00',1,'123',234,0,0,NULL,NULL,NULL),(33,0,'124',0,2,2.00,1,2.00,'2019-09-04 00:00:00','2019-09-30 00:00:00',0,'拉',2,0,0,NULL,NULL,NULL),(34,1,'asd as as',0,11,11.00,1,11.00,'2019-10-14 00:00:00','2019-10-24 00:00:00',0,NULL,11,0,0,NULL,NULL,NULL),(35,0,'12323',0,3123123,312312.00,1,213123.00,'2019-10-31 00:00:00','2019-11-01 00:00:00',0,'123123',3123123,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sms_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon_history`
--

DROP TABLE IF EXISTS `sms_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `coupon_code` varchar(64) DEFAULT NULL,
  `member_nickname` varchar(64) DEFAULT NULL COMMENT '领取人昵称',
  `get_type` int(1) DEFAULT NULL COMMENT '获取类型：0->后台赠送；1->主动获取',
  `create_time` datetime DEFAULT NULL,
  `use_status` int(1) DEFAULT NULL COMMENT '使用状态：0->未使用；1->已使用；2->已过期',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `order_sn` varchar(100) DEFAULT NULL COMMENT '订单号码',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`) USING BTREE,
  KEY `idx_coupon_id` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='优惠券使用、领取历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon_history`
--

LOCK TABLES `sms_coupon_history` WRITE;
/*!40000 ALTER TABLE `sms_coupon_history` DISABLE KEYS */;
INSERT INTO `sms_coupon_history` VALUES (2,2,1,'4931048380330002','windir',1,'2018-08-29 14:04:12',0,'2019-03-21 15:03:40',12,'201809150101000001'),(3,3,1,'4931048380330003','windir',1,'2018-08-29 14:04:29',0,NULL,NULL,NULL),(4,4,1,'4931048380330004','windir',1,'2018-08-29 14:04:32',0,NULL,NULL,NULL),(11,7,1,'4931048380330001','windir',1,'2018-09-04 16:21:50',0,NULL,NULL,NULL),(12,2,4,'0340981248320004','zhensan',1,'2018-11-12 14:16:50',0,NULL,NULL,NULL),(13,3,4,'0342977234360004','zhensan',1,'2018-11-12 14:17:10',0,NULL,NULL,NULL),(14,4,4,'0343342928830004','zhensan',1,'2018-11-12 14:17:13',0,NULL,NULL,NULL),(15,2,5,'0351883832180005','lisi',1,'2018-11-12 14:18:39',0,NULL,NULL,NULL),(16,3,5,'0352201672680005','lisi',1,'2018-11-12 14:18:42',0,NULL,NULL,NULL),(17,4,5,'0352505810180005','lisi',1,'2018-11-12 14:18:45',0,NULL,NULL,NULL),(18,2,6,'0356114588380006','wangwu',1,'2018-11-12 14:19:21',0,NULL,NULL,NULL),(19,3,6,'0356382856920006','wangwu',1,'2018-11-12 14:19:24',0,NULL,NULL,NULL),(20,4,6,'0356656798470006','wangwu',1,'2018-11-12 14:19:27',0,NULL,NULL,NULL),(21,2,3,'0363644984620003','windy',1,'2018-11-12 14:20:36',0,NULL,NULL,NULL),(22,3,3,'0363932820300003','windy',1,'2018-11-12 14:20:39',0,NULL,NULL,NULL),(23,4,3,'0364238275840003','windy',1,'2018-11-12 14:20:42',0,NULL,NULL,NULL),(24,2,7,'0385034833070007','lion',1,'2018-11-12 14:24:10',0,NULL,NULL,NULL),(25,3,7,'0385350208650007','lion',1,'2018-11-12 14:24:13',0,NULL,NULL,NULL),(26,4,7,'0385632733900007','lion',1,'2018-11-12 14:24:16',0,NULL,NULL,NULL),(27,2,8,'0388779132990008','shari',1,'2018-11-12 14:24:48',0,NULL,NULL,NULL),(28,3,8,'0388943658810008','shari',1,'2018-11-12 14:24:49',0,NULL,NULL,NULL),(29,4,8,'0389069398320008','shari',1,'2018-11-12 14:24:51',0,NULL,NULL,NULL),(30,2,9,'0390753935250009','aewen',1,'2018-11-12 14:25:08',0,NULL,NULL,NULL),(31,3,9,'0390882954470009','aewen',1,'2018-11-12 14:25:09',0,NULL,NULL,NULL),(32,4,9,'0391025542810009','aewen',1,'2018-11-12 14:25:10',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sms_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon_product_category_relation`
--

DROP TABLE IF EXISTS `sms_coupon_product_category_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon_product_category_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_category_name` varchar(200) DEFAULT NULL COMMENT '产品分类名称',
  `parent_category_name` varchar(200) DEFAULT NULL COMMENT '父分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品分类关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon_product_category_relation`
--

LOCK TABLES `sms_coupon_product_category_relation` WRITE;
/*!40000 ALTER TABLE `sms_coupon_product_category_relation` DISABLE KEYS */;
INSERT INTO `sms_coupon_product_category_relation` VALUES (4,19,30,'手机配件','手机数码'),(5,27,36,'空调','家用电器'),(6,29,36,'空调','家用电器'),(7,29,40,'厨房小电','家用电器'),(8,30,38,'冰箱','家用电器');
/*!40000 ALTER TABLE `sms_coupon_product_category_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_coupon_product_relation`
--

DROP TABLE IF EXISTS `sms_coupon_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_coupon_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sn` varchar(200) DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品的关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_coupon_product_relation`
--

LOCK TABLES `sms_coupon_product_relation` WRITE;
/*!40000 ALTER TABLE `sms_coupon_product_relation` DISABLE KEYS */;
INSERT INTO `sms_coupon_product_relation` VALUES (9,21,33,'小米（MI）小米电视4A ','4609652'),(10,3,26,'华为 HUAWEI P20 ','6946605');
/*!40000 ALTER TABLE `sms_coupon_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion`
--

DROP TABLE IF EXISTS `sms_flash_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `status` int(1) DEFAULT NULL COMMENT '上下线状态',
  `create_time` datetime DEFAULT NULL COMMENT '秒杀时间段名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='限时购表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion`
--

LOCK TABLES `sms_flash_promotion` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion` DISABLE KEYS */;
INSERT INTO `sms_flash_promotion` VALUES (2,'春季家电家具疯狂秒杀1','2019-08-09','2019-09-30',1,'2018-11-16 11:12:13'),(3,'前端测试专用活动','2018-11-03','2019-02-28',1,'2018-11-16 11:11:31'),(4,'春季家电家具疯狂秒杀3','2018-11-24','2018-11-25',1,'2018-11-16 11:12:19'),(5,'春季家电家具疯狂秒杀4','2018-11-16','2018-11-16',1,'2018-11-16 11:12:24'),(6,'春季家电家具疯狂秒杀5','2018-11-16','2018-11-16',1,'2018-11-16 11:12:31'),(7,'春季家电家具疯狂秒杀6','2018-11-16','2018-11-16',0,'2018-11-16 11:12:35'),(8,'春季家电家具疯狂秒杀7','2018-11-16','2018-11-16',0,'2018-11-16 11:12:39'),(9,'春季家电家具疯狂秒杀8','2018-11-16','2018-11-16',0,'2018-11-16 11:12:42'),(13,'测试','2018-11-01','2018-11-30',0,'2018-11-19 10:34:24'),(14,'哈哈','2019-09-18','2019-09-20',1,'2019-09-18 17:06:20'),(15,'1','2019-09-02','2019-08-26',1,'2019-09-19 09:53:43'),(17,'安达市','2019-09-23','2019-09-25',1,'2019-09-23 16:41:45'),(18,'杰哥对数据','2019-10-11','2019-10-18',1,'2019-10-11 16:27:53'),(19,'大时代啊 ','2019-10-14','2019-10-31',1,'2019-10-15 15:22:14');
/*!40000 ALTER TABLE `sms_flash_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion_log`
--

DROP TABLE IF EXISTS `sms_flash_promotion_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `member_phone` varchar(64) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL COMMENT '会员订阅时间',
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='限时购通知记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion_log`
--

LOCK TABLES `sms_flash_promotion_log` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_flash_promotion_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion_product_relation`
--

DROP TABLE IF EXISTS `sms_flash_promotion_product_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flash_promotion_id` bigint(20) DEFAULT NULL,
  `flash_promotion_session_id` bigint(20) DEFAULT NULL COMMENT '编号',
  `product_id` bigint(20) DEFAULT NULL,
  `flash_promotion_price` decimal(10,2) DEFAULT NULL COMMENT '限时购价格',
  `flash_promotion_count` int(11) DEFAULT NULL COMMENT '限时购数量',
  `flash_promotion_limit` int(11) DEFAULT NULL COMMENT '每人限购数量',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `sale` int(11) DEFAULT NULL COMMENT '已售个数',
  `product_sp` varchar(64) DEFAULT NULL COMMENT '商品销售属性1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='商品限时购与商品关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion_product_relation`
--

LOCK TABLES `sms_flash_promotion_product_relation` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion_product_relation` DISABLE KEYS */;
INSERT INTO `sms_flash_promotion_product_relation` VALUES (1,2,1,26,3000.00,10,1,0,NULL,NULL),(2,2,1,27,2000.00,10,1,20,NULL,NULL),(3,2,1,28,599.00,19,1,0,NULL,NULL),(4,2,1,29,4999.00,10,1,100,NULL,NULL),(9,2,2,26,2999.00,100,1,0,NULL,NULL),(10,2,2,27,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,2,28,NULL,NULL,NULL,NULL,NULL,NULL),(12,2,2,29,NULL,NULL,NULL,NULL,NULL,NULL),(13,2,2,30,NULL,NULL,NULL,NULL,NULL,NULL),(14,2,3,31,NULL,NULL,NULL,NULL,NULL,NULL),(15,2,3,32,NULL,NULL,NULL,NULL,NULL,NULL),(16,2,4,33,NULL,NULL,NULL,NULL,NULL,NULL),(17,2,4,34,NULL,NULL,NULL,NULL,NULL,NULL),(18,2,5,36,NULL,NULL,NULL,NULL,NULL,NULL),(19,2,6,33,NULL,NULL,NULL,NULL,NULL,NULL),(20,2,6,34,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,1,26,3000.00,100,1,NULL,NULL,NULL),(22,3,1,27,1999.00,10,1,NULL,NULL,NULL),(23,3,1,28,599.00,10,1,NULL,NULL,NULL),(24,3,1,29,4999.00,10,1,NULL,NULL,NULL),(25,3,2,31,90.00,10,1,NULL,NULL,NULL),(26,3,2,32,60.00,10,1,NULL,NULL,NULL),(27,3,2,33,2299.00,10,1,NULL,NULL,NULL),(28,3,2,34,3888.00,10,1,NULL,NULL,NULL),(29,3,3,36,NULL,NULL,NULL,NULL,NULL,NULL),(30,3,3,35,NULL,NULL,NULL,NULL,NULL,NULL),(31,3,3,31,NULL,NULL,NULL,NULL,NULL,NULL),(32,3,3,32,NULL,NULL,NULL,NULL,NULL,NULL),(33,3,4,26,NULL,NULL,NULL,NULL,NULL,NULL),(34,3,4,27,NULL,NULL,NULL,NULL,NULL,NULL),(35,3,4,28,NULL,NULL,NULL,NULL,NULL,NULL),(36,3,4,29,NULL,NULL,NULL,NULL,NULL,NULL),(37,3,5,26,3688.00,100,1,NULL,NULL,NULL),(38,3,5,27,2599.00,10,1,NULL,NULL,NULL),(39,3,5,28,599.00,10,1,NULL,NULL,NULL),(40,3,5,29,4999.00,10,1,NULL,NULL,NULL),(41,3,6,26,NULL,NULL,NULL,NULL,NULL,NULL),(42,3,6,27,NULL,NULL,NULL,NULL,NULL,NULL),(43,3,6,28,NULL,NULL,NULL,NULL,NULL,NULL),(44,3,6,29,NULL,NULL,NULL,NULL,NULL,NULL),(45,14,1,26,NULL,NULL,NULL,NULL,NULL,NULL),(46,14,1,27,NULL,NULL,NULL,NULL,NULL,NULL),(47,14,1,28,NULL,NULL,NULL,NULL,NULL,NULL),(48,6,4,35,NULL,NULL,NULL,NULL,NULL,NULL),(49,14,3,26,100.00,2,2,2,NULL,NULL),(50,14,3,27,NULL,NULL,NULL,NULL,NULL,NULL),(51,14,3,28,NULL,NULL,NULL,NULL,NULL,NULL),(52,14,3,29,NULL,NULL,NULL,NULL,NULL,NULL),(53,14,3,30,NULL,NULL,NULL,NULL,NULL,NULL),(54,18,1,26,2000.00,123,213,0,NULL,NULL),(55,18,1,27,2555.00,20,2,2,NULL,NULL),(56,18,1,28,205.00,255,11,0,NULL,NULL),(57,18,1,29,5000.00,111,1,23,NULL,NULL),(59,18,5,26,1200.00,120,1,1,NULL,NULL),(60,18,5,27,12000.00,2000,2,1,NULL,NULL),(61,18,5,28,500.00,1200,1,1,NULL,NULL),(62,18,5,29,5000.00,100,1,1,NULL,NULL),(63,18,5,30,50.00,12,1,2,NULL,NULL),(64,18,6,26,11111.00,111,11,1,NULL,NULL),(65,18,6,27,20000.00,1111,11,1,NULL,NULL),(66,18,2,26,NULL,NULL,NULL,NULL,NULL,NULL),(67,18,2,27,NULL,NULL,NULL,NULL,NULL,NULL),(68,18,2,28,NULL,NULL,NULL,NULL,NULL,NULL),(69,18,2,29,NULL,NULL,NULL,NULL,NULL,NULL),(70,18,2,30,NULL,NULL,NULL,NULL,NULL,NULL),(71,18,3,26,NULL,NULL,NULL,NULL,NULL,NULL),(72,18,3,27,NULL,NULL,NULL,NULL,NULL,NULL),(73,18,3,28,NULL,NULL,NULL,NULL,NULL,NULL),(74,18,3,29,NULL,NULL,NULL,NULL,NULL,NULL),(75,18,3,30,NULL,NULL,NULL,NULL,NULL,NULL),(76,5,3,29,NULL,NULL,NULL,NULL,NULL,NULL),(77,5,3,30,NULL,NULL,NULL,NULL,NULL,NULL),(78,19,4,26,NULL,NULL,NULL,NULL,NULL,NULL),(79,19,4,27,NULL,NULL,NULL,NULL,NULL,NULL),(80,19,4,28,NULL,NULL,NULL,NULL,NULL,NULL),(81,19,4,29,NULL,NULL,NULL,NULL,NULL,NULL),(82,19,4,30,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sms_flash_promotion_product_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_flash_promotion_session`
--

DROP TABLE IF EXISTS `sms_flash_promotion_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_flash_promotion_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '场次名称',
  `start_time` time DEFAULT NULL COMMENT '每日开始时间',
  `end_time` time DEFAULT NULL COMMENT '每日结束时间',
  `status` int(1) DEFAULT NULL COMMENT '启用状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='限时购场次表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_flash_promotion_session`
--

LOCK TABLES `sms_flash_promotion_session` WRITE;
/*!40000 ALTER TABLE `sms_flash_promotion_session` DISABLE KEYS */;
INSERT INTO `sms_flash_promotion_session` VALUES (1,'时间段','08:00:00','10:00:33',1,'2018-11-16 13:22:17'),(2,'10:00','10:00:00','12:00:00',1,'2018-11-16 13:22:34'),(3,'12:00','12:00:00','14:00:00',1,'2018-11-16 13:22:37'),(4,'14:00','14:00:00','16:00:00',1,'2018-11-16 13:22:41'),(5,'16:00','16:00:00','18:00:00',1,'2018-11-16 13:22:45'),(6,'18:00','18:00:00','20:00:00',1,'2018-11-16 13:21:34'),(7,'20:00','20:00:33','21:00:33',0,'2018-11-16 13:22:55'),(8,NULL,'08:00:00','07:00:00',1,'2019-09-29 16:07:20');
/*!40000 ALTER TABLE `sms_flash_promotion_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_advertise`
--

DROP TABLE IF EXISTS `sms_home_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播 2 一级广告轮播图 3 二级广告轮播图 4新品收发',
  `pic` varchar(500) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
  `click_count` int(11) DEFAULT NULL COMMENT '点击数',
  `order_count` int(11) DEFAULT NULL COMMENT '下单数',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `src` varchar(200) DEFAULT NULL COMMENT '页面路径',
  `product_id` bigint(64) DEFAULT NULL COMMENT '商品id',
  `attitude_level_id` bigint(255) NOT NULL COMMENT ' 导航 或者等级id',
  `jump_type` int(255) DEFAULT NULL COMMENT '0不跳 1 内跳 2 外跳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8 COMMENT='首页轮播广告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_advertise`
--

LOCK TABLES `sms_home_advertise` WRITE;
/*!40000 ALTER TABLE `sms_home_advertise` DISABLE KEYS */;
INSERT INTO `sms_home_advertise` VALUES (2,'夏季大热促销',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg','2018-11-01 14:01:37','2018-11-15 14:01:37',1,0,0,NULL,'夏季大热促销',0,NULL,NULL,0,NULL),(3,'夏季大热促销1',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg','2018-11-13 14:01:37','2018-11-13 14:01:37',0,0,0,NULL,'夏季大热促销1',0,NULL,NULL,0,NULL),(4,'夏季大热促销2',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg','2018-11-13 14:01:37','2018-11-13 14:01:37',1,0,0,NULL,'夏季大热促销2',0,NULL,NULL,0,NULL),(9,'电影推荐广告',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg','2018-11-01 00:00:00','2018-11-24 00:00:00',1,0,0,'www.baidu.com','电影推荐广告',100,NULL,1,0,NULL),(10,'汽车促销广告',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg','2018-11-13 00:00:00','2018-11-24 00:00:00',1,0,0,'xxx',NULL,99,NULL,1,0,NULL),(11,'汽车推荐广告',1,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg','2018-11-13 00:00:00','2018-11-30 00:00:00',1,0,0,'xxx',NULL,98,NULL,1,0,NULL),(261,'string',3,'string','2019-10-14 14:24:26','2019-10-14 14:24:26',0,NULL,NULL,NULL,'string',0,'string',0,17,1),(262,'string',3,'string','2019-10-14 14:24:26','2019-10-14 14:24:26',0,NULL,NULL,NULL,'string',0,'string',0,17,1),(263,'string',3,'string','2019-10-14 14:24:26','2019-10-14 14:24:26',0,NULL,NULL,NULL,'string',0,'string',0,17,1),(264,'string',0,'string','2019-10-17 13:24:33','2019-10-17 13:24:33',0,NULL,NULL,NULL,'string',0,'string',0,2,1);
/*!40000 ALTER TABLE `sms_home_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_advertise_name`
--

DROP TABLE IF EXISTS `sms_home_advertise_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_advertise_name` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `home_advertise_type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_advertise_name`
--

LOCK TABLES `sms_home_advertise_name` WRITE;
/*!40000 ALTER TABLE `sms_home_advertise_name` DISABLE KEYS */;
INSERT INTO `sms_home_advertise_name` VALUES (1,'app首页轮播'),(2,'一级广告轮播图'),(3,'二级广告轮播图'),(4,'新品首发');
/*!40000 ALTER TABLE `sms_home_advertise_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_brand`
--

DROP TABLE IF EXISTS `sms_home_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) DEFAULT NULL,
  `brand_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='首页推荐品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_brand`
--

LOCK TABLES `sms_home_brand` WRITE;
/*!40000 ALTER TABLE `sms_home_brand` DISABLE KEYS */;
INSERT INTO `sms_home_brand` VALUES (1,1,'万和',1,1),(2,2,'三星',0,0),(6,6,'小米',1,1),(8,5,'方太',1,1),(32,50,'海澜之家',0,0),(33,51,'苹果',1,0),(35,3,'华为',1,0),(36,4,'格力',1,0),(37,5,'方太',1,0),(38,1,'万和',1,0),(39,21,'OPPO',0,0),(40,3,'华为',0,0),(41,58,'NIKE',1,0),(42,6,'小米',1,0),(43,49,'七匹狼',1,0);
/*!40000 ALTER TABLE `sms_home_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_new_product`
--

DROP TABLE IF EXISTS `sms_home_new_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_new_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `recommend_status` int(1) DEFAULT NULL COMMENT '推荐状态 1 开启',
  `sort` int(1) DEFAULT NULL COMMENT '排序',
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '活动价格',
  `promotion_count` int(11) DEFAULT NULL COMMENT '购买的数量限制',
  `promotion_limit` int(1) DEFAULT NULL COMMENT '每人限定的数量',
  `sale` int(11) DEFAULT NULL COMMENT '已售多少件',
  `product_sp` varchar(255) DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='新鲜好物表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_new_product`
--

LOCK TABLES `sms_home_new_product` WRITE;
/*!40000 ALTER TABLE `sms_home_new_product` DISABLE KEYS */;
INSERT INTO `sms_home_new_product` VALUES (2,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',1,200,NULL,NULL,NULL,NULL,NULL),(8,26,'华为 HUAWEI P20 ',1,0,NULL,NULL,NULL,NULL,NULL),(9,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',1,0,NULL,NULL,NULL,NULL,NULL),(10,28,'小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待',1,0,NULL,NULL,NULL,NULL,NULL),(11,29,'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机',1,0,NULL,NULL,NULL,NULL,NULL),(12,30,'HLA海澜之家简约动物印花短袖T恤',1,0,NULL,NULL,NULL,NULL,NULL),(13,2,'2323',0,0,0.00,0,0,0,NULL);
/*!40000 ALTER TABLE `sms_home_new_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_recommend_product`
--

DROP TABLE IF EXISTS `sms_home_recommend_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_recommend_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='人气推荐商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_recommend_product`
--

LOCK TABLES `sms_home_recommend_product` WRITE;
/*!40000 ALTER TABLE `sms_home_recommend_product` DISABLE KEYS */;
INSERT INTO `sms_home_recommend_product` VALUES (3,26,'华为 HUAWEI P20 ',1,0),(4,27,'小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待',1,0),(5,28,'小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待',1,0),(6,29,'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机',1,0),(7,30,'HLA海澜之家简约动物印花短袖T恤',1,100);
/*!40000 ALTER TABLE `sms_home_recommend_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_home_recommend_subject`
--

DROP TABLE IF EXISTS `sms_home_recommend_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_home_recommend_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `subject_color` varchar(20) DEFAULT NULL COMMENT '主标题颜色',
  `subject_name` varchar(64) DEFAULT NULL COMMENT '专题名称',
  `recommend_status` int(1) DEFAULT '1' COMMENT '推荐状态 1->开启 ，0 ->关闭',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `background` varchar(100) DEFAULT NULL COMMENT '背景图',
  `pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `src` varchar(50) DEFAULT NULL COMMENT '路径',
  `sub_title` varchar(50) DEFAULT NULL COMMENT '子标题',
  `sub_title_color` varchar(20) DEFAULT NULL COMMENT '子标题颜色',
  `sort_type` int(255) DEFAULT NULL COMMENT '1 销量 2 浏览 3 新品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='首页推荐专题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_home_recommend_subject`
--

LOCK TABLES `sms_home_recommend_subject` WRITE;
/*!40000 ALTER TABLE `sms_home_recommend_subject` DISABLE KEYS */;
INSERT INTO `sms_home_recommend_subject` VALUES (1,NULL,'black','特价疯抢',1,3,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png','ssss','0.1元起','yellow',NULL),(2,NULL,'black','新品首发',1,4,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png','sss','华为p30','red',NULL),(3,NULL,'black','品牌闪购',1,5,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png','sss','百雀羚','red',NULL),(4,NULL,'black','排行榜',1,6,NULL,'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png','sss','好物大家购','red',NULL),(5,NULL,'black','全球工厂',1,1,'http://hbimg.b0.upaiyun.com/dc58eb86bcc21f00ab2879c09a200905377a327c3dba-wNRaUA_fw658','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png',NULL,'职工好货五折强','black',NULL),(6,NULL,'black','品牌撒卷',1,2,'wNRaUA_fw658','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png','re','100w卷狂补贴','black',NULL);
/*!40000 ALTER TABLE `sms_home_recommend_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sale_promotion_relation`
--

DROP TABLE IF EXISTS `sms_sale_promotion_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_sale_promotion_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL COMMENT '产品id ',
  `sale_promotion_price` decimal(10,2) DEFAULT NULL COMMENT '活动价格',
  `sale_promotion_count` int(11) DEFAULT NULL COMMENT '特价疯抢数量',
  `sale_promotion_limit` int(11) DEFAULT NULL COMMENT '每人限购数量',
  `status` int(11) DEFAULT NULL COMMENT '推荐状态 1 开启',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `sale` int(11) DEFAULT NULL COMMENT '已售个数',
  `product_sp` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品销售属性1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='特价疯抢表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sale_promotion_relation`
--

LOCK TABLES `sms_sale_promotion_relation` WRITE;
/*!40000 ALTER TABLE `sms_sale_promotion_relation` DISABLE KEYS */;
INSERT INTO `sms_sale_promotion_relation` VALUES (22,0,0.00,0,0,0,0,0,'string');
/*!40000 ALTER TABLE `sms_sale_promotion_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin`
--

DROP TABLE IF EXISTS `ums_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int(1) DEFAULT '1' COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='后台用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin`
--

LOCK TABLES `ums_admin` WRITE;
/*!40000 ALTER TABLE `ums_admin` DISABLE KEYS */;
INSERT INTO `ums_admin` VALUES (1,'test','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg',NULL,'测试账号',NULL,'2018-09-29 13:55:30','2018-09-29 13:55:39',1),(3,'admin','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/170157_yIl3_1767531.jpg','admin@163.com','系统管理员','系统管理员','2018-10-08 13:32:47','2019-03-20 15:38:50',1),(5,'lijun','$2a$10$mTcu1080LLHEzcTecFbppeC.cuW2ZzjPOhwOYnuhDZHCIo3zuuORW','http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/170157_yIl3_1767531.jpg','8279161622@qq.com','1','1','2019-09-19 09:35:21',NULL,1);
/*!40000 ALTER TABLE `ums_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin_login_log`
--

DROP TABLE IF EXISTS `ums_admin_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='后台用户登录日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin_login_log`
--

LOCK TABLES `ums_admin_login_log` WRITE;
/*!40000 ALTER TABLE `ums_admin_login_log` DISABLE KEYS */;
INSERT INTO `ums_admin_login_log` VALUES (5,3,'2018-12-06 13:59:12','0:0:0:0:0:0:0:1',NULL,NULL),(6,3,'2018-12-17 13:23:20','0:0:0:0:0:0:0:1',NULL,NULL),(7,3,'2018-12-18 13:51:42','0:0:0:0:0:0:0:1',NULL,NULL),(8,3,'2018-12-18 13:51:51','0:0:0:0:0:0:0:1',NULL,NULL),(9,3,'2019-01-28 16:20:41','0:0:0:0:0:0:0:1',NULL,NULL),(10,3,'2019-01-29 09:16:25','0:0:0:0:0:0:0:1',NULL,NULL),(11,3,'2019-01-29 10:10:51','0:0:0:0:0:0:0:1',NULL,NULL),(12,3,'2019-02-18 11:03:06','0:0:0:0:0:0:0:1',NULL,NULL),(13,3,'2019-03-12 10:03:55','0:0:0:0:0:0:0:1',NULL,NULL),(14,3,'2019-03-12 10:06:19','0:0:0:0:0:0:0:1',NULL,NULL),(15,3,'2019-03-12 10:15:22','0:0:0:0:0:0:0:1',NULL,NULL),(16,3,'2019-03-20 15:35:33','0:0:0:0:0:0:0:1',NULL,NULL),(17,3,'2019-03-20 15:38:50','0:0:0:0:0:0:0:1',NULL,NULL),(18,3,'2019-09-18 16:13:50','192.168.3.91',NULL,NULL),(19,3,'2019-09-18 16:14:05','192.168.3.191',NULL,NULL),(20,3,'2019-09-18 16:15:07','127.0.0.1',NULL,NULL),(21,3,'2019-09-19 09:26:36','127.0.0.1',NULL,NULL),(22,3,'2019-09-19 09:27:30','127.0.0.1',NULL,NULL),(23,3,'2019-09-19 09:28:39','127.0.0.1',NULL,NULL),(24,3,'2019-09-19 09:37:45','192.168.3.191',NULL,NULL),(25,3,'2019-09-19 09:44:05','192.168.3.180',NULL,NULL),(26,5,'2019-09-19 09:48:54','192.168.3.137',NULL,NULL),(27,5,'2019-09-19 09:49:10','192.168.3.137',NULL,NULL),(28,3,'2019-09-19 09:50:05','192.168.3.137',NULL,NULL),(29,5,'2019-09-19 09:52:45','192.168.3.137',NULL,NULL),(30,5,'2019-09-19 10:00:43','192.168.3.137',NULL,NULL),(31,5,'2019-09-19 10:03:51','192.168.3.137',NULL,NULL),(32,3,'2019-09-19 10:06:06','192.168.3.137',NULL,NULL),(33,5,'2019-09-19 10:06:45','192.168.3.137',NULL,NULL),(34,5,'2019-09-19 10:14:47','192.168.3.137',NULL,NULL),(35,5,'2019-09-19 10:16:59','192.168.3.137',NULL,NULL),(36,3,'2019-09-19 10:24:59','192.168.3.137',NULL,NULL),(37,5,'2019-09-19 10:26:30','192.168.3.137',NULL,NULL),(38,5,'2019-09-19 10:35:35','192.168.3.137',NULL,NULL),(39,5,'2019-09-19 10:55:08','192.168.3.137',NULL,NULL),(40,5,'2019-09-19 10:55:40','192.168.3.137',NULL,NULL),(41,5,'2019-09-19 11:00:27','192.168.3.137',NULL,NULL),(42,3,'2019-09-19 11:01:15','192.168.3.137',NULL,NULL),(43,3,'2019-09-19 11:01:24','192.168.3.137',NULL,NULL),(44,5,'2019-09-19 11:03:47','192.168.3.137',NULL,NULL),(45,5,'2019-09-19 11:04:14','192.168.3.137',NULL,NULL),(46,5,'2019-09-19 11:05:33','192.168.3.137',NULL,NULL),(47,5,'2019-09-19 11:05:54','192.168.3.137',NULL,NULL),(48,5,'2019-09-19 11:06:12','192.168.3.137',NULL,NULL),(49,5,'2019-09-19 11:06:40','192.168.3.137',NULL,NULL),(50,3,'2019-09-19 11:28:18','192.168.3.91',NULL,NULL),(51,3,'2019-09-19 13:30:21','192.168.3.137',NULL,NULL),(52,3,'2019-09-20 09:25:27','127.0.0.1',NULL,NULL),(53,3,'2019-09-20 09:42:44','192.168.3.191',NULL,NULL),(54,3,'2019-09-20 10:59:24','0:0:0:0:0:0:0:1',NULL,NULL),(55,3,'2019-09-20 10:59:59','0:0:0:0:0:0:0:1',NULL,NULL),(56,3,'2019-09-20 13:54:06','192.168.3.180',NULL,NULL),(57,3,'2019-09-20 18:20:41','192.168.3.191',NULL,NULL),(58,3,'2019-09-20 18:42:22','0:0:0:0:0:0:0:1',NULL,NULL),(59,3,'2019-09-10 18:22:30','192.168.3.115',NULL,NULL),(60,3,'2019-09-11 09:19:10','192.168.3.191',NULL,NULL),(61,3,'2019-09-18 09:55:30','192.168.3.191',NULL,NULL),(62,3,'2019-09-23 10:34:21','0:0:0:0:0:0:0:1',NULL,NULL),(63,3,'2019-09-23 13:54:51','192.168.3.180',NULL,NULL),(64,3,'2019-09-24 09:19:24','192.168.3.180',NULL,NULL),(65,3,'2019-09-24 09:32:39','192.168.3.180',NULL,NULL),(66,3,'2019-09-24 09:35:53','192.168.3.180',NULL,NULL),(67,3,'2019-09-24 09:42:05','0:0:0:0:0:0:0:1',NULL,NULL),(68,3,'2019-09-24 10:09:05','192.168.3.191',NULL,NULL),(69,3,'2019-09-24 10:56:11','192.168.3.91',NULL,NULL),(70,3,'2019-09-24 15:51:16','192.168.3.180',NULL,NULL),(71,3,'2019-09-24 17:06:02','192.168.3.180',NULL,NULL),(72,3,'2019-09-25 10:32:02','192.168.3.180',NULL,NULL),(73,3,'2019-09-25 11:01:08','192.168.3.180',NULL,NULL),(74,3,'2019-09-25 11:33:31','192.168.3.191',NULL,NULL),(75,3,'2019-09-25 11:33:42','192.168.3.191',NULL,NULL),(76,3,'2019-09-25 11:33:59','192.168.3.191',NULL,NULL),(77,3,'2019-09-25 11:34:11','192.168.3.191',NULL,NULL),(78,3,'2019-09-25 13:26:24','192.168.3.180',NULL,NULL),(79,3,'2019-09-25 15:12:37','192.168.3.91',NULL,NULL),(80,3,'2019-09-25 15:15:56','192.168.3.137',NULL,NULL),(81,3,'2019-09-25 17:59:35','192.168.3.137',NULL,NULL),(82,3,'2019-09-26 09:10:59','192.168.3.180',NULL,NULL),(83,3,'2019-09-26 09:21:24','192.168.3.137',NULL,NULL),(84,3,'2019-09-26 10:21:51','192.168.3.180',NULL,NULL),(85,3,'2019-09-26 13:43:39','0:0:0:0:0:0:0:1',NULL,NULL),(86,3,'2019-09-27 08:58:32','0:0:0:0:0:0:0:1',NULL,NULL),(87,3,'2019-09-27 13:16:37','192.168.3.180',NULL,NULL),(88,3,'2019-09-27 13:20:37','192.168.3.137',NULL,NULL),(89,3,'2019-09-27 13:27:44','192.168.3.137',NULL,NULL),(90,3,'2019-09-27 13:31:39','192.168.3.191',NULL,NULL),(91,3,'2019-09-27 15:25:58','192.168.3.180',NULL,NULL),(92,3,'2019-09-27 15:42:13','192.168.3.180',NULL,NULL),(93,3,'2019-09-27 15:57:38','192.168.3.180',NULL,NULL),(94,3,'2019-09-27 16:00:21','192.168.3.180',NULL,NULL),(95,3,'2019-09-27 16:06:25','192.168.3.180',NULL,NULL),(96,3,'2019-09-29 10:26:55','192.168.3.91',NULL,NULL),(97,3,'2019-09-29 11:54:29','192.168.3.202',NULL,NULL),(98,3,'2019-09-29 13:30:40','192.168.3.91',NULL,NULL),(99,3,'2019-09-29 13:49:34','192.168.3.202',NULL,NULL),(100,3,'2019-09-29 13:49:36','192.168.3.180',NULL,NULL),(101,3,'2019-09-30 09:27:34','192.168.3.137',NULL,NULL),(102,3,'2019-09-30 09:30:03','192.168.3.180',NULL,NULL),(103,3,'2019-09-30 11:26:42','0:0:0:0:0:0:0:1',NULL,NULL),(104,3,'2019-09-30 17:00:07','0:0:0:0:0:0:0:1',NULL,NULL),(105,3,'2019-10-08 09:13:18','192.168.3.180',NULL,NULL),(106,3,'2019-10-08 12:57:23','192.168.3.137',NULL,NULL),(107,3,'2019-10-08 13:19:05','0:0:0:0:0:0:0:1',NULL,NULL),(108,3,'2019-10-10 18:22:37','0:0:0:0:0:0:0:1',NULL,NULL),(109,3,'2019-10-11 10:27:06','192.168.3.202',NULL,NULL),(110,3,'2019-10-11 10:33:16','0:0:0:0:0:0:0:1',NULL,NULL),(111,3,'2019-10-11 11:09:16','192.168.3.91',NULL,NULL),(112,3,'2019-10-11 15:53:43','192.168.3.180',NULL,NULL),(113,3,'2019-10-11 16:29:10','0:0:0:0:0:0:0:1',NULL,NULL),(114,3,'2019-10-11 16:29:48','0:0:0:0:0:0:0:1',NULL,NULL),(115,3,'2019-10-11 16:30:08','0:0:0:0:0:0:0:1',NULL,NULL),(116,3,'2019-10-11 16:34:36','192.168.3.180',NULL,NULL),(117,3,'2019-10-12 14:45:12','192.168.3.180',NULL,NULL),(118,3,'2019-10-12 16:40:02','192.168.3.91',NULL,NULL),(119,3,'2019-10-12 16:40:16','192.168.3.191',NULL,NULL),(120,3,'2019-10-13 16:54:25','0:0:0:0:0:0:0:1',NULL,NULL),(121,3,'2019-10-14 09:30:34','192.168.3.180',NULL,NULL),(122,3,'2019-10-14 11:12:08','192.168.3.180',NULL,NULL),(123,3,'2019-10-14 11:49:56','192.168.3.180',NULL,NULL),(124,3,'2019-10-14 14:58:21','192.168.3.137',NULL,NULL),(125,3,'2019-10-15 09:11:18','192.168.3.180',NULL,NULL),(126,3,'2019-10-15 09:39:58','192.168.3.180',NULL,NULL),(127,3,'2019-10-17 10:05:44','192.168.3.234',NULL,NULL),(128,3,'2019-10-17 13:17:50','192.168.3.180',NULL,NULL);
/*!40000 ALTER TABLE `ums_admin_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin_permission_relation`
--

DROP TABLE IF EXISTS `ums_admin_permission_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户和权限关系表(除角色中定义的权限以外的加减权限)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin_permission_relation`
--

LOCK TABLES `ums_admin_permission_relation` WRITE;
/*!40000 ALTER TABLE `ums_admin_permission_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_admin_permission_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_admin_role_relation`
--

DROP TABLE IF EXISTS `ums_admin_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='后台用户和角色关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_admin_role_relation`
--

LOCK TABLES `ums_admin_role_relation` WRITE;
/*!40000 ALTER TABLE `ums_admin_role_relation` DISABLE KEYS */;
INSERT INTO `ums_admin_role_relation` VALUES (13,3,1),(15,3,2),(16,3,4),(18,5,4);
/*!40000 ALTER TABLE `ums_admin_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_bounty_change_history`
--

DROP TABLE IF EXISTS `ums_bounty_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_bounty_change_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int(1) DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` decimal(10,2) DEFAULT '0.00' COMMENT '奖金改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) DEFAULT NULL COMMENT '奖金来源：0->购物；1->管理员修改 2->推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='奖金变化历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_bounty_change_history`
--

LOCK TABLES `ums_bounty_change_history` WRITE;
/*!40000 ALTER TABLE `ums_bounty_change_history` DISABLE KEYS */;
INSERT INTO `ums_bounty_change_history` VALUES (1,1,'2018-08-29 17:16:35',0,1000.00,'test','测试使用',1);
/*!40000 ALTER TABLE `ums_bounty_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_bounty_setting`
--

DROP TABLE IF EXISTS `ums_bounty_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_bounty_setting` (
  `id` bigint(20) NOT NULL,
  `first_bounty` decimal(10,2) DEFAULT NULL COMMENT '被邀请的用户下单首次奖励',
  `invite_bounty` decimal(10,2) DEFAULT NULL COMMENT '邀请用户的奖励金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_bounty_setting`
--

LOCK TABLES `ums_bounty_setting` WRITE;
/*!40000 ALTER TABLE `ums_bounty_setting` DISABLE KEYS */;
INSERT INTO `ums_bounty_setting` VALUES (1,15.00,20.00);
/*!40000 ALTER TABLE `ums_bounty_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_integration_change_history`
--

DROP TABLE IF EXISTS `ums_integration_change_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_integration_change_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int(1) DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改 2->签到',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='积分变化历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_integration_change_history`
--

LOCK TABLES `ums_integration_change_history` WRITE;
/*!40000 ALTER TABLE `ums_integration_change_history` DISABLE KEYS */;
INSERT INTO `ums_integration_change_history` VALUES (1,1,'2019-10-10 09:37:37',1,1,'1','1',1);
/*!40000 ALTER TABLE `ums_integration_change_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_integration_consume_setting`
--

DROP TABLE IF EXISTS `ums_integration_consume_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_integration_consume_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int(11) DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int(11) DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int(1) DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='积分消费设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_integration_consume_setting`
--

LOCK TABLES `ums_integration_consume_setting` WRITE;
/*!40000 ALTER TABLE `ums_integration_consume_setting` DISABLE KEYS */;
INSERT INTO `ums_integration_consume_setting` VALUES (1,100,50,100,1);
/*!40000 ALTER TABLE `ums_integration_consume_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member`
--

DROP TABLE IF EXISTS `ums_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint(20) DEFAULT NULL COMMENT '会员',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `status` int(1) DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所住城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `source_type` int(1) DEFAULT NULL COMMENT '用户来源',
  `integration` int(11) DEFAULT NULL COMMENT '积分',
  `growth` int(11) DEFAULT NULL COMMENT '成长值',
  `luckey_count` int(11) DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int(11) DEFAULT NULL COMMENT '历史积分数量',
  `sign_count` int(11) NOT NULL COMMENT '用户连续签到次数',
  `bounty` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户奖励金',
  `invited_by` bigint(20) DEFAULT NULL COMMENT '用户被谁邀请',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  UNIQUE KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member`
--

LOCK TABLES `ums_member` WRITE;
/*!40000 ALTER TABLE `ums_member` DISABLE KEYS */;
INSERT INTO `ums_member` VALUES (1,4,'test','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','windir','18061581849',0,'2018-08-02 10:35:44',NULL,1,'2009-06-01','上海','学生','test',NULL,5000,NULL,NULL,NULL,0,0.00,NULL),(3,4,'windy','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','windy','18061581848',1,'2018-08-03 16:46:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(4,4,'zhengsan','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','zhengsan','18061581847',1,'2018-11-12 14:12:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(5,4,'lisi','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','lisi','18061581841',1,'2018-11-12 14:12:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(6,4,'wangwu','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','wangwu','18061581842',1,'2018-11-12 14:13:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(7,4,'lion','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','lion','18061581845',1,'2018-11-12 14:21:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(8,4,'shari','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','shari','18061581844',1,'2018-11-12 14:22:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(9,4,'aewen','$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG','aewen','18061581843',1,'2018-11-12 14:22:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL),(10,4,'17367301784',NULL,NULL,'17367301784',1,'2019-09-24 11:05:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0.00,NULL);
/*!40000 ALTER TABLE `ums_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_fans`
--

DROP TABLE IF EXISTS `ums_member_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_fans` (
  `id` bigint(22) NOT NULL,
  `member_id` bigint(22) DEFAULT NULL COMMENT '会员id',
  `fans_id` bigint(22) DEFAULT NULL COMMENT '关注id',
  `create_time` datetime DEFAULT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_fans`
--

LOCK TABLES `ums_member_fans` WRITE;
/*!40000 ALTER TABLE `ums_member_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_invitation`
--

DROP TABLE IF EXISTS `ums_member_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_invitation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL COMMENT '邀请人id',
  `invite_id` bigint(20) DEFAULT NULL COMMENT '被邀请的会员id',
  `is_on_order` int(1) NOT NULL DEFAULT '0' COMMENT '是否下单 0->没有下单 1-下单了',
  `invite_price` decimal(10,2) DEFAULT NULL COMMENT '邀请的奖励金',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_invitation`
--

LOCK TABLES `ums_member_invitation` WRITE;
/*!40000 ALTER TABLE `ums_member_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_level`
--

DROP TABLE IF EXISTS `ums_member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth_point` int(11) DEFAULT NULL,
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10,2) DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int(11) DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int(1) DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int(1) DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int(1) DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int(1) DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int(1) DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int(1) DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员等级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_level`
--

LOCK TABLES `ums_member_level` WRITE;
/*!40000 ALTER TABLE `ums_member_level` DISABLE KEYS */;
INSERT INTO `ums_member_level` VALUES (1,'黄金会员',1000,0,199.00,5,1,1,1,1,1,1,NULL),(2,'白金会员',5000,0,99.00,10,1,1,1,1,1,1,NULL),(3,'钻石会员',15000,0,69.00,15,1,1,1,1,1,1,NULL),(4,'普通会员',1,1,199.00,20,1,1,1,1,0,0,NULL);
/*!40000 ALTER TABLE `ums_member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_login_log`
--

DROP TABLE IF EXISTS `ums_member_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL COMMENT '城市',
  `login_type` int(1) DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_login_log`
--

LOCK TABLES `ums_member_login_log` WRITE;
/*!40000 ALTER TABLE `ums_member_login_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_member_tag_relation`
--

DROP TABLE IF EXISTS `ums_member_member_tag_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_member_tag_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和标签关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_member_tag_relation`
--

LOCK TABLES `ums_member_member_tag_relation` WRITE;
/*!40000 ALTER TABLE `ums_member_member_tag_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_member_tag_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_product_category_relation`
--

DROP TABLE IF EXISTS `ums_member_product_category_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_product_category_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员与产品分类关系表（用户喜欢的分类）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_product_category_relation`
--

LOCK TABLES `ums_member_product_category_relation` WRITE;
/*!40000 ALTER TABLE `ums_member_product_category_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_product_category_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_receive_address`
--

DROP TABLE IF EXISTS `ums_member_receive_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_receive_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) DEFAULT NULL,
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `region` varchar(100) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_receive_address`
--

LOCK TABLES `ums_member_receive_address` WRITE;
/*!40000 ALTER TABLE `ums_member_receive_address` DISABLE KEYS */;
INSERT INTO `ums_member_receive_address` VALUES (1,1,'大梨','18033441849',0,'518000','广东省','深圳市','南山区','科兴科学园'),(3,1,'大梨','18033441849',0,'518000','广东省','深圳市','福田区','清水河街道'),(4,1,'大梨','18033441849',1,'518000','广东省','深圳市','福田区','东晓街道');
/*!40000 ALTER TABLE `ums_member_receive_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_rule_setting`
--

DROP TABLE IF EXISTS `ums_member_rule_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_rule_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int(11) DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int(11) DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10,2) DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10,2) DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int(1) DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分成长规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_rule_setting`
--

LOCK TABLES `ums_member_rule_setting` WRITE;
/*!40000 ALTER TABLE `ums_member_rule_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_rule_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_statistics_info`
--

DROP TABLE IF EXISTS `ums_member_statistics_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_statistics_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `consume_amount` decimal(10,2) DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int(11) DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int(11) DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int(11) DEFAULT NULL COMMENT '评价数',
  `return_order_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  `attend_count` int(11) DEFAULT NULL COMMENT '关注数量',
  `fans_count` int(11) DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int(11) DEFAULT NULL,
  `collect_subject_count` int(11) DEFAULT NULL,
  `collect_topic_count` int(11) DEFAULT NULL,
  `collect_comment_count` int(11) DEFAULT NULL,
  `invite_friend_count` int(11) DEFAULT NULL COMMENT '邀请好友数量',
  `recent_order_time` datetime DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员统计信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_statistics_info`
--

LOCK TABLES `ums_member_statistics_info` WRITE;
/*!40000 ALTER TABLE `ums_member_statistics_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_statistics_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_tag`
--

DROP TABLE IF EXISTS `ums_member_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `finish_order_count` int(11) DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10,2) DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_tag`
--

LOCK TABLES `ums_member_tag` WRITE;
/*!40000 ALTER TABLE `ums_member_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_member_task`
--

DROP TABLE IF EXISTS `ums_member_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_member_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth` int(11) DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int(11) DEFAULT NULL COMMENT '赠送积分',
  `type` int(1) DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_member_task`
--

LOCK TABLES `ums_member_task` WRITE;
/*!40000 ALTER TABLE `ums_member_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_member_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `type` int(1) DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `status` int(1) DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_permission`
--

LOCK TABLES `ums_permission` WRITE;
/*!40000 ALTER TABLE `ums_permission` DISABLE KEYS */;
INSERT INTO `ums_permission` VALUES (1,0,'商品',NULL,NULL,0,NULL,1,'2018-09-29 16:15:14',0),(2,1,'商品列表','pms:product:read',NULL,1,'/pms/product/index',1,'2018-09-29 16:17:01',0),(3,1,'添加商品','pms:product:create',NULL,1,'/pms/product/add',1,'2018-09-29 16:18:51',0),(4,1,'商品分类','pms:productCategory:read',NULL,1,'/pms/productCate/index',1,'2018-09-29 16:23:07',0),(5,1,'商品类型','pms:productAttribute:read',NULL,1,'/pms/productAttr/index',1,'2018-09-29 16:24:43',0),(6,1,'品牌管理','pms:brand:read',NULL,1,'/pms/brand/index',1,'2018-09-29 16:25:45',0),(7,2,'编辑商品','pms:product:update',NULL,2,'/pms/product/updateProduct',1,'2018-09-29 16:34:23',0),(8,2,'删除商品','pms:product:delete',NULL,2,'/pms/product/delete',1,'2018-09-29 16:38:33',0),(9,4,'添加商品分类','pms:productCategory:create',NULL,2,'/pms/productCate/create',1,'2018-09-29 16:43:23',0),(10,4,'修改商品分类','pms:productCategory:update',NULL,2,'/pms/productCate/update',1,'2018-09-29 16:43:55',0),(11,4,'删除商品分类','pms:productCategory:delete',NULL,2,'/pms/productAttr/delete',1,'2018-09-29 16:44:38',0),(12,5,'添加商品类型','pms:productAttribute:create',NULL,2,'/pms/productAttr/create',1,'2018-09-29 16:45:25',0),(13,5,'修改商品类型','pms:productAttribute:update',NULL,2,'/pms/productAttr/update',1,'2018-09-29 16:48:08',0),(14,5,'删除商品类型','pms:productAttribute:delete',NULL,2,'/pms/productAttr/delete',1,'2018-09-29 16:48:44',0),(15,6,'添加品牌','pms:brand:create',NULL,2,'/pms/brand/add',1,'2018-09-29 16:49:34',0),(16,6,'修改品牌','pms:brand:update',NULL,2,'/pms/brand/update',1,'2018-09-29 16:50:55',0),(17,6,'删除品牌','pms:brand:delete',NULL,2,'/pms/brand/delete',1,'2018-09-29 16:50:59',0),(18,0,'首页',NULL,NULL,0,NULL,1,'2018-09-29 16:51:57',0),(19,NULL,'广告启用','sms:home:advertise:update',NULL,0,'/sms/home/advertise/update',1,'2019-09-19 11:02:21',0);
/*!40000 ALTER TABLE `ums_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT '1' COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role`
--

LOCK TABLES `ums_role` WRITE;
/*!40000 ALTER TABLE `ums_role` DISABLE KEYS */;
INSERT INTO `ums_role` VALUES (1,'商品管理员','商品管理员',0,'2018-09-30 15:46:11',1,0),(2,'商品分类管理员','商品分类管理员',0,'2018-09-30 15:53:45',1,0),(3,'商品类型管理员','商品类型管理员',0,'2018-09-30 15:53:56',1,0),(4,'品牌管理员','品牌管理员',0,'2018-09-30 15:54:12',1,0);
/*!40000 ALTER TABLE `ums_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_role_permission_relation`
--

DROP TABLE IF EXISTS `ums_role_permission_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_role_permission_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='后台用户角色和权限关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_role_permission_relation`
--

LOCK TABLES `ums_role_permission_relation` WRITE;
/*!40000 ALTER TABLE `ums_role_permission_relation` DISABLE KEYS */;
INSERT INTO `ums_role_permission_relation` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,7),(5,1,8),(6,2,4),(7,2,9),(8,2,10),(9,2,11),(10,3,5),(11,3,12),(12,3,13),(13,3,14),(14,4,6),(15,4,15),(16,4,16),(17,4,17),(18,4,19);
/*!40000 ALTER TABLE `ums_role_permission_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_sign_in`
--

DROP TABLE IF EXISTS `ums_sign_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_sign_in` (
  `id` bigint(22) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint(22) DEFAULT NULL COMMENT '用户id',
  `create_time` date DEFAULT NULL COMMENT '签到时间',
  `type` int(1) DEFAULT NULL COMMENT '0->未签到 1->已签到',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_sign_in`
--

LOCK TABLES `ums_sign_in` WRITE;
/*!40000 ALTER TABLE `ums_sign_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_sign_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ums_sign_setting`
--

DROP TABLE IF EXISTS `ums_sign_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ums_sign_setting` (
  `id` bigint(22) unsigned NOT NULL AUTO_INCREMENT,
  `first_count` int(11) NOT NULL COMMENT '每天签到积分的基数',
  `day_ count` int(11) NOT NULL COMMENT '每天翻倍的积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ums_sign_setting`
--

LOCK TABLES `ums_sign_setting` WRITE;
/*!40000 ALTER TABLE `ums_sign_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ums_sign_setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13  9:15:14
