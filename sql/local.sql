-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` text NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (2,47329,'Skillcrush RSS Feed','','http://simplenewz.com/2014-10-07/Mainstream/feed/11202','54.91.190.86','2014-10-07 02:48:32','2014-10-07 02:48:32','[&#8230;] How Much Should You Charge for Freelance Web Design? [&#8230;]',0,'0','','pingback',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` longtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://accelerate.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://accelerate.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Accelerate','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Accelerate is a strategy and marketing agency aimed at making our clients visible and building their businesses.','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','adda@skillcrush.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (43,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (44,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (45,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (46,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (47,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (48,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (49,'db_version','47018','yes');
INSERT INTO `wp_options` VALUES (50,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (51,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (52,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (53,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (54,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (55,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (56,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (57,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (58,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (61,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (63,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (64,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (66,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (69,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (71,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (73,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (74,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (75,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (76,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (77,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (78,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (82,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (83,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (84,'page_for_posts','6','yes');
INSERT INTO `wp_options` VALUES (85,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (86,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (87,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (88,'initial_db_version','29630','yes');
INSERT INTO `wp_options` VALUES (89,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (90,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (91,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (92,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (93,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (94,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (96,'cron','a:8:{i:1588717103;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588720373;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588720384;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588720703;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588722115;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588728764;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588970281;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (131,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1415229601;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (132,'current_theme','Accelerate Theme Child','yes');
INSERT INTO `wp_options` VALUES (133,'theme_mods_accelerate-theme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"top-nav\";i:2;s:12:\"social-media\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1588203730;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (134,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (163,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (166,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (179,'recently_activated','a:1:{s:43:\"siteground-migrator/siteground-migrator.php\";i:1588642344;}','yes');
INSERT INTO `wp_options` VALUES (191,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (192,'rewrite_rules','a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (193,'limit_login_retries','a:1:{s:11:\"108.73.3.12\";i:1;}','no');
INSERT INTO `wp_options` VALUES (194,'limit_login_retries_valid','a:1:{s:11:\"108.73.3.12\";i:1415679111;}','no');
INSERT INTO `wp_options` VALUES (198,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (199,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (200,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (201,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (207,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (208,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (209,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (210,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (211,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (246,'auto_core_update_notified','a:4:{s:4:\"type\";s:6:\"manual\";s:5:\"email\";s:19:\"adda@skillcrush.com\";s:7:\"version\";s:5:\"4.7.1\";s:9:\"timestamp\";i:1484937722;}','no');
INSERT INTO `wp_options` VALUES (247,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (248,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (249,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (250,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (251,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (258,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (259,'wp_page_for_privacy_policy','0','yes');
INSERT INTO `wp_options` VALUES (260,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (280,'theme_mods_accelerate-theme-child','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"top-nav\";i:2;s:12:\"social-media\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (300,'admin_email_lifespan','1588973613','yes');
INSERT INTO `wp_options` VALUES (303,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (343,'new_admin_email','timpfeiffer.dev@gmail.com','yes');
INSERT INTO `wp_options` VALUES (344,'adminhash','a:2:{s:4:\"hash\";s:32:\"c6fef628e2c11a3d23af73fdb4b55bd3\";s:8:\"newemail\";s:25:\"timpfeiffer.dev@gmail.com\";}','yes');
INSERT INTO `wp_options` VALUES (406,'ai1wm_updater','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (414,'jetpack_active_modules','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (431,'active_plugins','a:2:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:41:\"wordpress-importer/wordpress-importer.php\";}','yes');
INSERT INTO `wp_options` VALUES (432,'ai1wm_secret_key','e7rZatnXSWM3','yes');
INSERT INTO `wp_options` VALUES (433,'ai1wm_backups_labels','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (434,'ai1wm_sites_links','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (435,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your site has been imported successfully!\";s:7:\"message\";s:376:\"» <a class=\"ai1wm-no-underline\" href=\"http://accelerate.local/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a>. (opens a new window)<br />» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>. (opens a new window)\";}','yes');
INSERT INTO `wp_options` VALUES (436,'template','accelerate-theme','yes');
INSERT INTO `wp_options` VALUES (437,'stylesheet','accelerate-theme-child','yes');
INSERT INTO `wp_options` VALUES (438,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1588714725;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (439,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588714725;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.21\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.21.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2246309\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2246309\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2246309\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2246309\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"sg-cachepress/sg-cachepress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/sg-cachepress\";s:4:\"slug\";s:13:\"sg-cachepress\";s:6:\"plugin\";s:31:\"sg-cachepress/sg-cachepress.php\";s:11:\"new_version\";s:5:\"5.5.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/sg-cachepress/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/sg-cachepress.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/sg-cachepress/assets/icon-256x256.png?rev=2124572\";s:2:\"1x\";s:58:\"https://ps.w.org/sg-cachepress/assets/icon.svg?rev=2124570\";s:3:\"svg\";s:58:\"https://ps.w.org/sg-cachepress/assets/icon.svg?rev=2124570\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/sg-cachepress/assets/banner-1544x500.png?rev=2124572\";s:2:\"1x\";s:68:\"https://ps.w.org/sg-cachepress/assets/banner-772x250.png?rev=2124572\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (440,'_site_transient_timeout_theme_roots','1588716525','no');
INSERT INTO `wp_options` VALUES (441,'_site_transient_theme_roots','a:6:{s:22:\"accelerate-theme-child\";s:7:\"/themes\";s:16:\"accelerate-theme\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (442,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588714725;s:7:\"checked\";a:6:{s:22:\"accelerate-theme-child\";s:5:\"2.0.0\";s:16:\"accelerate-theme\";s:3:\"2.0\";s:14:\"twentyfourteen\";s:3:\"2.8\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (3,5,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_lock','1415564448:1');
INSERT INTO `wp_postmeta` VALUES (5,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (6,6,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (7,6,'_edit_lock','1415229446:1');
INSERT INTO `wp_postmeta` VALUES (8,9,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (9,9,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (10,9,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (11,9,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (12,9,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (13,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (14,9,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (15,9,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (16,9,'_menu_item_orphaned','1415546843');
INSERT INTO `wp_postmeta` VALUES (17,10,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (18,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (19,10,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (20,10,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (21,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (22,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (23,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (24,10,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (26,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (27,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (28,11,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (29,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (30,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (31,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (32,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (33,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (34,11,'_menu_item_orphaned','1415546843');
INSERT INTO `wp_postmeta` VALUES (44,13,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (45,13,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,13,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (47,13,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (48,13,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,13,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,13,'_menu_item_url','http://twitter.com/skillcrush');
INSERT INTO `wp_postmeta` VALUES (53,14,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (54,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (55,14,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (56,14,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (57,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (58,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (59,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (60,14,'_menu_item_url','http://facebook.com/skillcrush');
INSERT INTO `wp_postmeta` VALUES (66,19,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (67,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (68,28,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (69,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (70,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (71,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (72,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (73,37,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (74,39,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (75,47329,'_thumbnail_id','47328');
INSERT INTO `wp_postmeta` VALUES (76,47329,'thank_you_cta','');
INSERT INTO `wp_postmeta` VALUES (77,47329,'_thank_you_cta','field_531f10983e6d6');
INSERT INTO `wp_postmeta` VALUES (78,47329,'main-image','http://skillcrush.com/wp-content/uploads/2014/10/freelance-pricing-guide.jpg');
INSERT INTO `wp_postmeta` VALUES (79,47329,'_main-image','field_529a9c2bc03e6');
INSERT INTO `wp_postmeta` VALUES (80,47329,'subtitle','');
INSERT INTO `wp_postmeta` VALUES (81,47329,'_subtitle','field_529a9dc8eea2f');
INSERT INTO `wp_postmeta` VALUES (82,47329,'tweet','How much do you charge for freelance work? The ULTIMATE guide to setting your prices. http://goo.gl/1DmW5y via @Skillcrush');
INSERT INTO `wp_postmeta` VALUES (83,47329,'_tweet','field_53a1a27fe6609');
INSERT INTO `wp_postmeta` VALUES (84,47329,'tweet-link','http://ctt.ec/V4a7l');
INSERT INTO `wp_postmeta` VALUES (85,47329,'_tweet-link','field_53a1a291e660a');
INSERT INTO `wp_postmeta` VALUES (86,47329,'cptr_related','a:0:{}');
INSERT INTO `wp_postmeta` VALUES (87,47329,'_mepr_unauthorized_message_type','default');
INSERT INTO `wp_postmeta` VALUES (88,47329,'_mepr_unauthorized_message','');
INSERT INTO `wp_postmeta` VALUES (89,47329,'_mepr_unauth_login','default');
INSERT INTO `wp_postmeta` VALUES (90,47329,'_mepr_unauth_excerpt_type','default');
INSERT INTO `wp_postmeta` VALUES (91,47329,'_mepr_unauth_excerpt_size','100');
INSERT INTO `wp_postmeta` VALUES (92,47329,'_rawhtml_settings','0,0,0,0');
INSERT INTO `wp_postmeta` VALUES (93,47329,'_su_rich_snippet_type','none');
INSERT INTO `wp_postmeta` VALUES (94,47329,'headlines_post_guid','356b5323-08a9-45f7-a087-e2306d4148cb');
INSERT INTO `wp_postmeta` VALUES (95,47329,'_su_title','How much to charge for freelance web design');
INSERT INTO `wp_postmeta` VALUES (96,47329,'_su_description','So many factors go into deciding how much to charge for your work. This free PDF download will guide you through the process.');
INSERT INTO `wp_postmeta` VALUES (97,47329,'dsq_thread_id','3076334264');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` mediumtext NOT NULL,
  `post_excerpt` mediumtext NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` mediumtext NOT NULL,
  `pinged` mediumtext NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=47334 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (5,1,'2014-11-05 23:13:15','2014-11-05 23:13:15','<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n','Homepage','','publish','open','open','','homepage','','','2014-11-09 20:19:07','2014-11-09 20:19:07','',0,'http://localhost:8888/accelerate/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2014-11-05 23:13:19','2014-11-05 23:13:19','','Blog','','publish','open','open','','blog','','','2014-11-05 23:13:19','2014-11-05 23:13:19','',0,'http://localhost:8888/accelerate/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2014-11-05 23:13:15','2014-11-05 23:13:15','','Homepage','','inherit','open','open','','5-revision-v1','','','2014-11-05 23:13:15','2014-11-05 23:13:15','',5,'http://localhost:8888/accelerate/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2014-11-05 23:13:19','2014-11-05 23:13:19','','Blog','','inherit','open','open','','6-revision-v1','','','2014-11-05 23:13:19','2014-11-05 23:13:19','',6,'http://localhost:8888/accelerate/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2014-11-09 15:27:23','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2014-11-09 15:27:23','0000-00-00 00:00:00','',0,'http://localhost:8888/accelerate/?p=9',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2014-11-09 15:27:41','2014-11-09 15:27:41',' ','','','publish','open','open','','10','','','2014-11-09 15:27:44','2014-11-09 15:27:44','',0,'http://localhost:8888/accelerate/?p=10',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2014-11-09 15:27:23','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2014-11-09 15:27:23','0000-00-00 00:00:00','',0,'http://localhost:8888/accelerate/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2014-11-09 19:26:01','2014-11-09 19:26:01','','Twitter','','publish','open','open','','twitter','','','2014-11-09 19:26:01','2014-11-09 19:26:01','',0,'http://localhost:8888/accelerate/?p=13',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2014-11-09 19:26:01','2014-11-09 19:26:01','','Facebook','','publish','open','open','','facebook','','','2014-11-09 19:26:01','2014-11-09 19:26:01','',0,'http://localhost:8888/accelerate/?p=14',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2014-11-09 20:19:07','2014-11-09 20:19:07','<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n','Homepage','','inherit','open','open','','5-revision-v1','','','2014-11-09 20:19:07','2014-11-09 20:19:07','',5,'http://localhost:8888/accelerate/2014/11/09/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2014-10-12 17:45:15','2014-10-12 17:45:15','<ol>\n	<li><a href=\"http://skillcrush.com\">Skillcrush</a> - just the best!</li>\n	<li><a href=\"http://tryruby.org\">Try Ruby</a> - I love WHY!</li>\n	<li><a href=\"http://www.htmlandcssbook.com/\">Jon Duckett</a> - Best books on programming. Period.</li>\n	<li><a href=\"http://railsgirls.com\">Rails Girls</a> - Super cool, international code learning organization.</li>\n	<li><a href=\"http://girldevelopit.com\">Girl Develop It </a>- Equally awesome in-person workshops all over the US.</li>\n	<li><a href=\"codeschool.com\">Code School</a> - Great advanced tutorials and learning.</li>\n</ol>','My 5 Favorite Code Learning Resources','','publish','open','open','','my-5-favorite-code-learning-resources','','','2014-10-12 17:45:15','2014-10-12 17:45:15','',0,'http://localhost:8888/starter/?p=19',0,'post','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2014-10-12 18:07:34','2014-10-12 18:07:34','As you wait impatiently in line for your <a href=\"http://www.eonline.com/news/577755/this-is-why-starbucks-baristas-spell-your-name-wrong-on-coffee-cups\" target=\"_blank\">mislabeled</a> coffee cup (you’re already going to be 20 minutes late to the office), take a step back and think: THIS could be your office. You could skip the commute, bring your laptop and charger, and power through your to do list from anywhere, wherever you are.\n\nWorking remotely – whether from home, Starbucks, or another creative place – is booming. A Virgin Media Business <a href=\"http://thenextweb.com/uk/2012/02/22/home-sweet-home-60-of-uk-employees-could-be-working-remotely-within-a-decade/\" target=\"_blank\">survey</a> recently predicted that 60% of office-based employees will regularly work from home by 2022. And a separate survey featured in<a href=\"http://www.theguardian.com/money/work-blog/2014/apr/30/what-happened-to-remote-working\">The Guardian</a> found that ⅓ of employees think commuting will be unheard of by 2036.\n\nBut, that’s the future and this is today, you say to yourself. You don’t have the skills or the resources to find a gig that would give you that kind of flexibility. That’s for 20-somethings working on a startup who code in hoodies, or stay-at-home moms who work as part-time assistants.\n\nWrong! In fact, completely wrong. The <a href=\"http://www.nytimes.com/2014/03/08/your-money/when-working-in-your-pajamas-is-more-productive.html?_r=0\">typical remote employee</a> is a 40-something college graduate earning nearly $60,000 a year at a company with 100+ employees, according to the Census Bureau’s annual American Community Survey.\n\nIf working remotely tickles your fancy, check out this list of 25 great sites for finding remote work.\n<h1>Remote-Work Specific</h1>\n<h3>1. <a href=\"http://www.flexjobs.com/\">FlexJobs</a></h3>\nFlexJobs has over 50 career categories, with jobs ranging from freelance to full-time, entry-level to executive. The best part? They screen the jobs before posting, so you don’t have to dig through shady opportunities. The site currently hosts more than 20K job listings including part-time and freelance opportunities!<strong><strong> </strong></strong>\n<h3>2. <a href=\"https://weworkremotely.com/\">We Work Remotely</a></h3>\nSponsored by <a href=\"http://37signals.com/remote/\">Remote</a>, the book by famed 37Signals founders, this job board is a catch-all of remote jobs from customer service to web design to programming. With the catchy subtag “Office not required,” and the cache of the 37Signals brand behind it, this site is sure to host remote opportunities at some of the hottest tech companies.\n<h3>3. <a href=\"http://workingnomads.co/\">Working Nomads</a></h3>\nWorkingNomads (formerly goRemotely) delivers a curated list of remote jobs right to your inbox. Choose daily or weekly emails to make the remote job search come to you.\n<h3>4. <a href=\"https://www.staff.com/\">Staff.com</a></h3>\nInstead of focusing on contract jobs, Staff.com features primarily long-term telecommuting jobs in a range of industries from persional assistants to programming. Choose to work either 80 hours a month (part-time) or 160 hours a month (full-time), and the site recruiters start matching you with employers!\n<h3>5. <a href=\"http://www.skipthedrive.com/\">Skip The Drive</a></h3>\nWith a great name, a great resources tab (listing authors to follow and sites to check for help in the remote job world), and a decent listing of remote jobs, this site is true to its eponymous mission. Use what the site provides, you can completely skip that ugly morning commute.\n<h3>6. <a href=\"http://www.virtualvocations.com/\">Virtual Vocations</a></h3>\nThis job board features only telecommuting jobs from technical writers to paralegals. Started by a stay-at-home mom frustrated with the job search for legitimate remote jobs, the company is still run by an entirely remote team. Plus, the blog has great tips, such as <a href=\"http://www.virtualvocations.com/blog/telecommuting-job-search-help/tips-taking-seasonal-telecommute-job/\">a recent article</a> on how to take on a remote gig for the holiday season.\n\n&nbsp;\n<h1>Tech</h1>\n<h3>7. <a href=\"http://www.authenticjobs.com/\">Authentic Jobs</a></h3>\nThe job board for web professionals. Just click the “wireless logo” (you’ll recognize it) and filter by remote jobs. Beautifully designed and easy to use, as you’d expect from a job board for creatives and developers!\n<h3>8. <a href=\"https://dribbble.com/jobs\">Dribble</a></h3>\nDribble is a great site for designers to find their next gig. There’s a location tab right on top where you can click “remote / anywhere” and be off to the races finding your next work-from-home gig.\n<h3>9. <a href=\"https://angel.co/\">AngelList</a></h3>\nAlways dreamed of working for a startup, but don’t live in a startup city hub? Head over to AngelList, a top site for startup jobs. When you search for a job on AngelList, click on “Job Type” and choose “Remote OK.”\n<h3>10. <a href=\"http://careers.stackoverflow.com/\">Stack Overflow</a></h3>\nStack Overflow is a go-to jobs board for many top tech talent, especially web developers. Type in “remote” in the location field and you’ll bring up a list of more than 2,000 jobs that fit the bill.\n<h3>11. <a href=\"http://jobs.rubynow.com/\">Ruby Now</a></h3>\nA job board entirely dedicated to Ruby developers. Once you graduate from the <a href=\"http://skillcrush.com/blueprint/web-developer/\">Web Developer Blueprint</a>, and watch Adda’s video on <a href=\"https://www.youtube.com/watch?v=p5Lj3y3mOxw\">how to get hired as a Ruby Developer</a>, head on over and get to work landing a remote gig here.\n\n&nbsp;\n<h1>Freelance and Contract</h1>\n<h3>12. <a href=\"http://www.skillbridge.co/\">SkillBridge</a></h3>\nFocused on connecting top-tier former consultants with short-term engagements for high impact corporations, the SkillBridge model is taking the traditional consulting world by storm. As a consultant, you can focus on only remote work and only on projects (and with clients) you are passionate about. Whether you bring e-mail marketing expertise or are a whiz at building financial models, the SkillBridge site and model is a remote-worker-dream-come-true.\n<h3>13. <a href=\"https://www.fiverr.com/\">Fiverr</a></h3>\nWith jobs starting at just $5 a pop, Fiverr is an amazing site to find your first gigs and build up a portfolio FAST. The site focuses on “gigs” or “micro-jobs,” such as editing an image in photoshop, designing a Facebook ad, or brainstorming SEO-rank-worthy article titles.\n<h3>14. <a href=\"https://www.odesk.com/\">oDesk</a></h3>\noDesk features remote jobs in a suite of categories: from virtual assistants to mobile app developers. A little something extra to sweeten the deal: oDesk claims that more than 1 million companies, from Pinterest to OpenTable, use the site to hire remote freelancers.\n<h3>15. <a href=\"http://www.guru.com/\">Guru</a></h3>\nWith the tagline “Work Your Way,” Guru allows freelancers to build profiles with portfolios of work. Employers find your profile, or search/apply for jobs. The homepage features a wide range of roles from WordPress Developers to  Logo Designers.\n<h3>16. <a href=\"https://www.elance.com/\">Elance</a></h3>\nMore than 300K programmers and more than 200K designers use Elance to connect with remote job opportunities. Microsoft, Cisco, and Mozilla are just a few of the companies hiring contract workers on Elance.\n<h3>17. <a href=\"https://www.freelancer.com/\">Freelancer.com</a></h3>\nClaiming to be “The World’s Largest Outsourcing Marketplace,” Freelancer.com is chock full of remote freelancing gigs. With over 13 million users, it features jobs for PHP developers, content writers, and web designers alike. Make a profile and start bidding on jobs!\n<h3>18. <a href=\"http://www.freelancermap.com/\">Freelancer Map</a></h3>\nSearch thousands of IT projects that are remote, and almost always contract. This site has a global reach with projects at companies from Holland to Spain to Ohio!\n\n&nbsp;\n<h1>General</h1>\n<h3>19. <a href=\"https://www.themuse.com/jobs\">The Muse</a></h3>\nWith a gorgeous user interface and fun-to-explore information about all the companies and jobs they feature, The Muse makes the job search easy. Search for the content features on the site that highlight remote opportunities, such as <a href=\"https://www.themuse.com/advice/7-companies-that-let-you-work-from-home\">7 Companies That Let You Work From Home</a>.\n<h3>20. <a href=\"http://www.indeed.com/\">Indeed</a></h3>\nOne of the most robust job boards you can find, Indeed pulls data from around the internet and around the world to bring together jobs. From Product Marketers to a “Technology Productivity Consultant,” Indeed’s 2K+ remote jobs run the gamut.\n<h3>21. <a href=\"http://www.idealist.org/\">Idealist</a></h3>\nFor those who have always wanted to work on public health in Africa, or economic development in India, but weren’t willing to uproot from your friends, family, and country, Idealist.org has the opportunities for you.  You can filter all of your searches by selecting “remote” in the location category.\n<h3>22. <a href=\"http://www.careerbuilder.com/\">Career Builder</a></h3>\nThe Career Builder jobs site is the largest online employment website in the United States! Type in “telecommute” or “remote” as a keyword and find more than 9K part-time, contract, and full-time jobs from brands like Forever 21 Inc, Xerox, and Univision.<strong><strong> </strong></strong>\n<h3>23. <a href=\"http://www.monster.com/\">Monster</a></h3>\nThe first name you think of when you hear the words “job board,” Monster does indeed host a plethora of remote jobs. From remote customer service opportunities to remote user experience designers, there are plenty of options if you’re willing to sift.\n\n&nbsp;\n<h1>Direct Selling</h1>\n<em><strong>Note:</strong> I’d be remiss not to mention the amazing opportunities afforded by direct selling, also known as multi-level marketing. There is real opportunity with these types of jobs to work from home (or anywhere) and make an income. These companies often require upfront buy-in, so be sure to properly evaluate the opportunity before you jump in.</em>\n\n<em>A few of my favorites:</em>\n<h3>24. Beauty: <a href=\"https://www.avon.com/\">Avon</a></h3>\nPerhaps the best-known and most-storied of the direct-selling opportunities, Avon has built an incredible business on the “Avon Lady Model.” Sell Avon beauty products, from lotion to lip gloss, to your friends and neighbors in exchange for the freedom of setting your own hours and working from home. <a href=\"http://www.marykay.com/\">Mary Kay</a> is another skincare and makeup company that offers the opportunity to build your own business in this way.\n<h3>25. Jewelry: <a href=\"http://www.stelladot.com/\">Stella &amp; Dot</a></h3>\nThis jewelry company has a “flexible entrepreneurship” model for stylists: host in-home or online trunk shows to display jewelry to friends. Flexibility and stye in one! If this doesn’t fit your style, there are several jewelry companies providing this type of remote job opportunity including <a href=\"https://www.chloeandisabel.com/\">Chloe &amp; Isabel</a> and <a href=\"http://trend-tribe.com/\">Trend Tribe</a>.','The Top 25 Sites For Finding Remote Jobs','','publish','open','open','','the-top-25-sites-for-finding-remote-jobs','','','2014-10-12 18:07:34','2014-10-12 18:07:34','',0,'http://localhost:8888/starter/?p=26',0,'post','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2014-10-12 18:08:57','2014-10-12 18:08:57','When starting a web site or a blog of any kind on WordPress there are certain plugins that can make your life 1000x easier. Not only will they save you time, but plugins can bring your site to the next level by making it more usable, searchable, and innovative.\n\nSo what is this magical “plugin” we speak of? A plugin is simply a program that you can install to add a <em>specific</em> feature to your website. For WordPress, these plugins are written in PHP and integrate seamlessly with your site.\n<h2>Installing A Plugin</h2>\nInstalling a plugin can be a little bit tricky if you haven’t done it before. First, log in to your WordPress admin page (https://[yourdomain.com]/wp-admin). From the admin dashboard, look to the left sidebar menu. There is an option on that menu to choose called “Plugins.” Click it! You’ll open the plugins settings tab. From here, there are two main ways to install:\n<h3>1.  Search for a plugin in the plugins library</h3>\nWhen you open the plugins setting tab, there is a search box on the main page. Type in the name of the specific plugin you are looking for, or a keyword (i.e. “SEO”) to find a list of options. You can also search by popular, new, favorites, or pre-determined keywords. Once you search, a list of matching results will appear. Research them by clicking “details” or install right away by clicking “install now.”\n\n<a href=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM.png\"><img class=\"alignnone size-large wp-image-21682 aligncenter\" src=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM-1024x375.png\" alt=\"Search for Plugins\" width=\"584\" height=\"213\" /></a>\n<h3>2. Upload your plugin</h3>\nYou can download a plugin as a .zip file to your computer, and then upload it to your site. Click the “upload” tab in the top navigation on the plugins settings tab, choose the file, and voila! Your plugin will upload and install for you. An important note is that you can only upload files in .zip format, so if you get an error message, check that!\n\n<a href=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM.png\"><img class=\"alignnone size-large wp-image-21683 aligncenter\" src=\"http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM-1024x221.png\" alt=\"Upload plugins\" width=\"584\" height=\"126\" /></a>\n\nEvery plugin is slightly different with the setup required once it is installed – some require none at all, and others require a bit of work. Click into your plugin once you install it to make sure you follow the correct steps to get it up and running!\n<h2>Must Have Plugins</h2>\nAs you will see, there are thousands of plugins to choose from. What makes a plugin a must-have? Here’s the criteria we like to use at Skillcrush:\n<ul>\n	<li>Will the plugin make your site faster?</li>\n	<li>Will the plugin reduce spam?</li>\n	<li>Will the plugin help you better accomplish your site goals?</li>\n</ul>\nWe scoured to find you a few wonderfully helpful plugins that will accomplish just that! Try them out to make running your website much easier:\n<h3><a href=\"http://akismet.com/\" target=\"_blank\">Akismet</a></h3>\nThis is a great plugin for getting rid of annoying comment spam. If you are frequently disapproving or deleting spam comments, you need this. [<a href=\"http://akismet.com/\">Download here</a>]\n<h3><a href=\"http://wordpress.org/plugins/google-sitemap-generator/\" target=\"_blank\">Google XML Sitemaps</a></h3>\nThis plugin makes it much easier for search engines to go through your content. And, when a search engine can better index your content, it is more likely to show up in searches! Plus, this plugin notifies search engines whenever you publish a new post. [<a href=\"http://wordpress.org/plugins/google-sitemap-generator/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"http://wordpress.org/plugins/flaunt-your-clients-free/\" target=\"_blank\">Flaunt Your Clients</a></h3>\nThis is a fun plugin for web designers to use to make it easy for your clients to show how pleased they are with your work!  It creates a new custom post type specifically for client stories and testimonials. These “client pages” can be sorted by category, linked to blog posts, and more. [<a href=\"http://wordpress.org/plugins/flaunt-your-clients-free/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\">WordPress SEO by Yoast</a></h3>\nThis plugin is super useful for ANY blog: it is the ultimate optimization plugin. It enables you to determine how your post will look on Facebook and Google. It also allows you to optimize your page or post for Google search. There is a reason there have been over 7 million downloads to date! [<a href=\"https://wordpress.org/plugins/wordpress-seo/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"http://wordpress.org/plugins/slick-social-share-buttons/\" target=\"_blank\">Slick Social Share</a></h3>\nThis plugin will get your stuff shared on social media seamlessly. Plus, it looks gorgeous on your site! [<a href=\"http://wordpress.org/plugins/slick-social-share-buttons/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/w3-total-cache/\" target=\"_blank\">W3 Total Cache</a></h3>\nThis plugin will help your site load faster (which, especially if you have a lot of high-resolution photos or images, is quite important). It has page cache, minification, database caching, CDN integration and browser caching to speed up loading times for site visitors. [<a href=\"https://wordpress.org/plugins/w3-total-cache/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/seo-automatic-links/\" target=\"_blank\">SEO Smart Links</a></h3>\nThis plugin fully automate the internal linking process of your WordPress blog. One of the best ways to keep people on your site and improve SEO is to link between your own site content and posts, and this makes it straightforward and no-brainer. It also can convert specific keywords into internal and affiliate links. [<a href=\"https://wordpress.org/plugins/seo-automatic-links/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/video-capture/\" target=\"_blank\">Video Capture</a></h3>\nThis plugin integrates video into your site in a big way. You simply put a shortcode into any page or post, and users will be able to record short videos, up to three minutes in length. It’s a fun feature to add, if you have a creative way to use it! [<a href=\"https://wordpress.org/plugins/video-capture/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/meet-my-team/\" target=\"_blank\">Meet My Team</a></h3>\nThis is great for showing off who is on your team. This plugin will provide you with a custom post type designed for displaying team members and their info. A shortcode displays the team members in a responsive grid on any page or post you like. Until you take a Skillcrush JavaScript <a href=\"http://skillcrush.com/skillcrush-blueprints/\">class or blueprint</a>, it’s a great shortcut to make your site responsive! [<a href=\"https://wordpress.org/plugins/meet-my-team/\" target=\"_blank\">Download here</a>]\n<h3><a href=\"https://wordpress.org/plugins/contact-form-7/\" target=\"_blank\">Contact Form 7</a></h3>\nIf you ever filled out a contact form on a blog, it very well may be through Contact Form. This plugin provides easy contact forms for blogs (i.e. contact us for help / advertising, etc.). It also works in conjunction with Askimet (above!) so there won’t be any spam abuse with these forms. [<a href=\"https://wordpress.org/plugins/contact-form-7/\" target=\"_blank\">Download here</a>]\n\nDo you have any particularly helpful WordPress plugins? We’re always on the lookout for new favorites! Let us know.','10 WordPress Plugins You Can’t Live Without','','publish','open','open','','10-wordpress-plugins-you-cant-live-without','','','2014-10-12 18:08:57','2014-10-12 18:08:57','',0,'http://localhost:8888/starter/?p=28',0,'post','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2014-10-12 18:10:49','2014-10-12 18:10:49','A great morning routine can really make or break your day. In her book <em><a href=\"http://www.amazon.com/Successful-People-Breakfast-Mornings-ebook/dp/B007K3E2YK/?_encoding=UTF8&amp;camp=1789&amp;creative=9325&amp;linkCode=ur2&amp;tag=marandang-20\" target=\"_blank\">What the Most Successful People Do Before Breakfast</a></em>, Laura Vanderkam writes, “Seizing your mornings is the equivalent of that sound financial advice to pay yourself first.  If you wait until the end of the month to save what you have left, there will be nothing left over.  Likewise, if you wait until the end of the day to do meaningful but not urgent things like exercise, pray, read, ponder how to advance your career or grow your organization, or truly give your family your best, it probably won’t happen.”\n\nEven if you have never considered yourself a morning person, you are going to have to figure out how to work around that as some of the most successful people in the world attribute a lot of their productivity to a stellar morning routine. Check out these kings and queens of technology and their amazing morning routines.\n<h3>Padmasree Warrior,  Cisco Chief Technical and Strategy Officer</h3>\nCan you say early riser? Warrior <a href=\"http://www.lifehack.org/articles/lifestyle/the-daily-routine-of-17-ceos.html\">wakes up at 4:30 a.m</a>., reads email for an hour, checks out the news, exercises, and gets her son ready for school. She is in the office by 8:30 at the latest and starts her workday.\n<h3>David Karp, Founder of Tumblr</h3>\nThe 28 year old founder and CEO of Tumblr, puts off checking his email until he gets to the office around 9:30 am, unlike many of his CEO colleagues. I guess he is of the philosophy that you should not start your day by checking email. As <a class=\"opennew\" href=\"http://www.inc.com/magazine/201106/the-way-i-work-david-karp-of-tumblr.html\" target=\"_blank\">quoted in <em>Inc. Magazine</em></a>, “Reading e-mails at home never feels good or <em>productive</em> . If something urgently needs my attention, someone will call or text me.”\n<h3>Steve Jobs, late Apple CEO</h3>\nJobs spent his mornings re-evaluating his work and his goals in life. <a class=\"opennew\" href=\"http://www.ted.com/talks/steve_jobs_how_to_live_before_you_die.html\" target=\"_blank\">In his speech to a graduating class at Stanford</a>, Jobs said:\n<blockquote>“For the past 33 years I have looked in the mirror every morning and asked myself: ‘If today were the last day of my life, would I want to do what I am about to do today?’ And whenever the answer has been ‘No’ for too many days in a row, I know I need to change something.”</blockquote>\n<h3>Marissa Mayer, CEO of Yahoo</h3>\nMayer is another early riser. We aren’t sure of the time but she has admitted she really doesn’t need much sleep to thrive (between <a href=\"http://www.businessinsider.com/successful-people-who-barely-sleep-2012-9?op=1\">four and six hours of sleep on any given night</a>). Of course, this is also the woman who said <strong>t</strong><strong>here are 130 hours of potential work time in a week if you shower strategically.</strong>\n<h3>Jason Goldberg, CEO of Fab</h3>\nGoldberg is definitely of the school of thought that working out first thing in the morning makes you productive for the rest of the day. According to research, <a href=\"http://www.dailymail.co.uk/news/article-1095783/People-exercise-work-days-happier-suffer-stress-productive.html\">published in the <em>International Journal of Workplace Health Management</em></a>, on exercise days, people’s mood significantly improved after exercising. Goldberg told Inc., “I start my day at 6 every morning, and the first thing I do is check overnight emails. Our technology team is based in India, so they’re ahead of us. After I respond to any urgent emails, I do my morning run on the treadmill at a full steep incline for 30 minutes. I try not to think about work. Instead, I watch TV shows on my iPad. Currently, I’m watching “Curb Your Enthusiasm”–I’m up to Season Six. My other favorite shows are “Top Chef”, “Dexter”, and “Mad Men”.”\n<h3>Alexa Von Tobel, CEO and Founder of LearnVest</h3>\nVon Tobel is also in support of a morning workout followed by a plan to the minute day. She told <a href=\"http://observer.com/2014/04/learnvest-founder-alexa-von-tobel-q-and-a/#ixzz33mpMd9Om\" target=\"_blank\">The Observer</a>:\n<blockquote>“I start with an early morning workout (whether a power walk with friends, barre class or spin class), which is critical to feeling energized for the whole day. My calendar is often scheduled down to 15-minute intervals, so I can (attempt to!) make time for everything — internal and external meetings, speaking events, interviews, etc. I try to put as much as possible on auto-pilot (ex: using shortcuts like eating basically the same thing for breakfast and lunch). Also, I like to tackle the hardest things first, so I think through my priorities the night before and make sure I have time for my most strategic work. \"</blockquote>','The Morning Habits of 6 Successful People in Technology','','publish','open','open','','the-morning-habits-of-6-successful-people-in-technology','','','2014-10-12 18:10:49','2014-10-12 18:10:49','',0,'http://localhost:8888/starter/?p=31',0,'post','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2014-10-12 18:12:09','2014-10-12 18:12:09','It’s back to school season parents! Are you excited? Frantic? Both? You have a lot on your plate – starting hectic morning routines anew, helping with homework, packing healthy lunches, managing after school activities, WHEW.  And of-course during all this you’re probably wondering if your kids are learning the right things at school and how you can supplement their education at home.\n\nYou’ve no doubt heard about the importance of computer literacy and getting your kids into programming and coding. But with the abundance of apps, toys, and books available, it’s hard to know where to start. Here are my top 4 choices for parents looking to get their young ones into tech:\n<h3>1. <a href=\"http://www.gethopscotch.com/\" target=\"_blank\">Hopscotch</a></h3>\nThis iPad app lets kids drag and drop functioning blocks of code to build their own programs. The app teaches kids programming fundamentals as well as critical thinking and problem solving skills in a creative environment. The app fosters a “learn by experimenting” attitude and encourages kids to play and try things and see what works. Hopscotch was actually inspired by Scratch, # 3 on this list. Hopscotch cofounders Jocelyn Leavitt and Samantha John hope to get girls into programming earlier and help fill the void of women in tech.\n<h3>2. <a href=\"http://www.helloruby.com/\" target=\"_blank\">Hello Ruby</a></h3>\nWe love everything about Linda Liukas and her upcoming children’s book Hello Ruby. The book raised $100k in 24 hours on Kickstarter and more than exceeded its initial goal of $10k by raising just over $380k at the end of its campaign. The book aims to teach 4-7 year olds about programming and open source culture through a smart, mischievous female protagonist and her whimsical adventures. Parents get a workbook so they can learn and help their kids solve problems in the accompanying activity book. We interviewed Liukas at the completion of her Kickstarter project – <a href=\"http://skillcrush.com/2014/02/21/skillcrush-linda-liukas-rails-girls/\" target=\"_blank\">you can read that interview here.</a>\n<h3>3. <a href=\"http://scratch.mit.edu/\" target=\"_blank\">Scratch</a></h3>\nScratch is a brainchild of the Lifelong Kindergarten Group at MIT’s Media Lab. It’s a programming language and comes with an extensive online community of it’s own. It’s designed for kids aged 8-16 and is totally free to use. Scratch allows students to create their own animations, interactive stories and much more. It uses drag and drop blocks of code similar to Hopscotch.\n<h3>4. <a href=\"http://www.tynker.com/\" target=\"_blank\">Tynker</a></h3>\nI learned about Tynker from my old boss, who’s wife Tanya homeschools their 3 kids. Tynker provides self-paced courses with tutoring baked right in. Their tutorials are interactive and fun for kids, allowing them to unlock achievements and badges, create customized projects and characters and build video games while they learn programming concepts. Sharing projects on the web with others is a big focus of Tynker’s and they hold summer camps to foster collaboration and knowledge-sharing. They occasionally run <a href=\"http://www.tynker.com/blog/articles/tynker/a-room-full-of-girls-coding/\" target=\"_blank\">workshops exclusively for girls</a> as well.\n\nAre you an old hat at getting kids into tech? Know all the cool, fun, hip new programming and tech apps, toys and tools out there? Share your top picks in the comments below!','4 Games You Will Want Your Kids to Play','','publish','open','open','','4-games-you-will-want-your-kids-to-play','','','2014-10-12 18:12:09','2014-10-12 18:12:09','',0,'http://localhost:8888/starter/?p=33',0,'post','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2014-10-12 18:13:16','2014-10-12 18:13:16','When you ask a web server for a page, it’s PHP’s job to create it. When you browse a WordPress blog or make a post on Facebook, PHP is putting it all together.\n\nIf you wanted a very simple PHP page to greet you every time you looked at it, it might look something like this:\n\n<code>&lt;?php echo “Hi there stranger!”; ?&gt;</code>\n\nThat would make a web page that looked like this:\n<p class=\"code\">Hi there stranger!</p>\nOne of the reasons many people learn PHP instead of Ruby or Python is that it comes installed on pretty much every web server out there. If you happen to have a bit of web space to your name, chances are you’re able to run PHP.\n\nA pretty typical way you’ll see people working with PHP is along with Linux (an operating system), <a title=\"Web Server\" href=\"http://skillcrush.com/2012/07/03/web-server-2/\">Apache</a> (a web server), <a title=\"MySQL\" href=\"http://skillcrush.com/2012/12/04/mysql-2/\">MySQL</a> (a database), and PHP. This kind of setup is called LAMP.\n<h5 class=\"cocktail-party-header\">Cocktail Party Fact</h5>\nPHP supposedly stands for “PHP: Hypertext Preprocessor.” If you said “Hey, but that doesn’t say what PHP means!” then you get the point ;).','Tech Term: PHP','','publish','open','open','','tech-term-php','','','2014-10-12 18:13:16','2014-10-12 18:13:16','',0,'http://localhost:8888/starter/?p=35',0,'post','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2014-10-12 18:14:06','2014-10-12 18:14:06','Looking for a new job where you can put your tech know-how to work? Having digital skills opens up a world of career choices for you. Take a look at some of the latest and greatest jobs we’ve found that’ll let you flex your digital muscles.\n\nToday, we’re featuring jobs that require WordPress skills – and learn more by signing up to watch our webinar on Friday, August 1st: <a href=\"http://skillcrush.com/webinar-august-1st-signup\">3 Ways to Make WordPress Bullet-Proof!</a>\n\n<strong>Position: <a href=\"https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112\">Designer, Marketing &amp; Communications, Interactive Design</a>\nCompany: <a href=\"https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112\">Boston University</a></strong>\n<strong>Location: Boston, MA\n</strong>Start as a member of BU’s integrated design team. Take the lead on creating and improving websites through outstanding design. Manage, build, and grow Boston University’s nationally recognized and award-winning online magazine, Bostonia. Coordinate successful issue launches, liase between the magazine editor and the design team, and play a key role in enhancing the content management system (a customized installation of WordPress). Plus, participate in the design and front-end development of other WordPress-powered websites and editorial channels across the university.\n\n<strong>Position: <a href=\"http://www.idealist.org/view/job/W9C6NkTNN5sP/\">Graphic Designer / Project Manager</a>\nCompany: <a href=\"http://www.idealist.org/view/org/72tfp76Bn3H4/\">Community Blueprint</a></strong>\n<strong>Location: Minneapolis, MN</strong>\nCreate campaigns for governmental and nonprofit organizations focus on public health behavior change in this multi-faceted opportunity. A little experience with print and web design, project management skills, and an understanding of WordPress sets you up for success in this role. Your time will be split managing multiple projects and doing design for some or them.\n\n<strong>Position: <a href=\"http://www.idealist.org/view/job/4zdMTJ4HJFCp/\">Web Designer</a>\nCompany: <a href=\"http://www.idealist.org/view/org/32gckNTTp6hmD/\">Global Bioethics Initiative</a>\nLocation: New York, NY</strong>\nJump right in to help create and launch a new website for the Global Bioethics Initiative, focused on serving as an educational resource and a database for breaking news and research in the fields of organ trafficking and organ transplantation. The site will be made – ideally – using WordPress. Take your Skillcrush skills and create a beautiful, user-friendly, and content-centered site to cover organs, tissues, cells donation, and biotechnology policy trafficking stories.\n\n<strong>Position: <a href=\"http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE\">Content Marketing Manager</a>\nCompany: <a href=\"http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE\">InfoScout</a>\nLocation: San Francisco, CA</strong>\nPut your marketing chops to work at this content marketing company, InfoScout. The current blog, InfoScout.co, is only scratching the surface of what can be done with the company’s data – so you will report directly to the CEO in this amazing opportunity to take the content to the next level. Bring your go-getter attitude to optimizing content, managing the WordPress blog, and growing the InfoScout newsletter base!','Classifieds: WordPress Edition','','publish','open','open','','classifieds-wordpress-edition','','','2014-10-12 18:14:06','2014-10-12 18:14:06','',0,'http://localhost:8888/starter/?p=36',0,'post','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2014-10-12 18:15:01','2014-10-12 18:15:01','When I launched <a href=\"http://skillcrush.com/2014/06/05/wordpress-com-vs-wordpress-org/www.crandlecakes.com\">my blog</a> in 2012, I went about it like this: I Googled “WordPress blog,” clicked <a href=\"http://zh.wordpress.com/\">a button</a> that said, “get a free blog,” and I started rolling.\n\nA year later, I realized I should have done more research. I wanted to change my site layout and add functions (like a hovering Pinterest button), and I realized (oh nooos!) I needed a “WordPress.org blog” for that.\n\nGetting a “WordPress.org blog,” it turns out, really means downloading the free, open-source <a href=\"http://wordpress.org/\">WordPress web software</a> and using a third-party hosting service (like GoDaddy or Bluehost) to get your site online.\n\n<a href=\"https://wordpress.com/\">WordPress.com</a>, on the other hand, takes care of all that legwork for you. You don’t worry about hosting or serving up files, and your blog comes with a free domain that looks something like this: <a href=\"http://www.myblog.wordpress.com/\">www.mynewblog.wordpress.com</a>.\n\nBut when you hand over responsibility, you also lose control: your WordPress.com site will show ads unless you pay a yearly fee, and many upgrades, like hosting videos or buying a custom domain name for example, can get costly.\n\nTo add to the new-blogger confusion, when you’re working on your blog, the Dashboard (the place where you edit your blog from the back end) looks almost exactly the same no matter which avenue you take. Because WordPress.com runs on the same WordPress software as a self-hosted site, the user experience after setting up your blog isn’t that different.\n\nDeciding between starting a free WordPress.com blog and self-hosted WordPress site is as simple as deciding how much freedom you want over your site’s look and feel, how much behind-the-scenes work you’re willing to do, and whether you want to monetize your blog.\n\n<a href=\"http://howtomakemyblog.com/wordpress-com-org/\"><img title=\"WordPress.com Vs WordPress.org Comparison\" src=\"http://makemyblog1.how2make.netdna-cdn.com/wp-content/uploads/wordpress.com-vs-org.jpg\" alt=\"WordPress.com Vs WordPress.org Comparison\" width=\"800\" height=\"1723\" /></a>\n\n&nbsp;\n<h2>1. How much control do you want over your site’s look and feel?</h2>\nIf you’re okay with an “out of the box” theme [http://theme.wordpress.com/], WordPress.com might work for you. For an extra charge, you can customize some features, like fonts and background colors. Overall, though, you are limited when it comes to changing the design of your site.\n\nIf you’re looking at those themes and thinking, “but I want my Instagram feed up higher and I’d like social media buttons above the top navigation,” you’ll want to go with a self-hosted WordPress blog so you can access your site’s layout and HTML.\n<h2>2. What extra functionality do you want on your site?</h2>\nRemember that anecdote about the Pinterest hover button I wanted? WordPress.com is always updating and adding new features, but you will have more control on a self-hosted site. Through WordPress.org, you’ll have access to libraries of plugins [https://wordpress.org/plugins/] that can add features like interactive calendars, social media sharing options, and RSS feeds–not to mention, Google Analytics–to your site. And by accessing your site’s code, your opportunities to add to and embellish features are unlimited.\n<h2>3. Do you want to monetize your site?</h2>\n“Oh wow, I have so many pageviews! Maybe I can make a little cash with ads!” Nope. Not if you’re on a WordPress.com site. They’re giving you a lot for free; it’s no surprise that you can only sell ads in WordPress-approved ways. On a self-hosted site, however, the world is your oyster…or, you know, your sales floor.\n\nIn addition, while, WordPress.com recently introduced new ways to sell on your site, eCommerce is more established and flexible with a self-hosted site.\n<h2>4. How much can you spend?</h2>\nSelf-hosting is an upfront cost that ranges from a few dollars a month to closer to hundreds per year. But using a free WordPress.com blog and adding a lot of additional features can get pricey. Infographic cost comparison:<a href=\"http://howtomakemyblog.com/wordpress-com-org/\">http://howtomakemyblog.com/wordpress-com-org/</a>\n\nWhen it comes down to it, WordPress.com is a valuable tool for users looking for a free option, who don’t need to customize or make money off of their site. But getting a self-hosted site through WordPress.org provides the most flexibility, freedom, and opportunity for growth. And let’s face it, you’re going to want to use this site to become a moneybags, and WordPress.org allows more freedom for turning your hard work into cold hard cash.','WordPress.com or WordPress.org? How to choose the right one for your blog','','publish','open','open','','wordpress-com-or-wordpress-org-how-to-choose-the-right-one-for-your-blog','','','2014-10-12 18:15:01','2014-10-12 18:15:01','',0,'http://localhost:8888/starter/?p=37',0,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2014-10-12 18:18:14','2014-10-12 18:18:14','<p dir=\"ltr\">Want to know the secret to <a href=\"http://skillcrush.com/2013/06/16/the-best-career-decision-i-ever-made/\">my success</a>? How I managed to learn how to code and immediately start making money with my coding skills, while continuing to learn?</p>\n<p dir=\"ltr\">The answer is simple: <a href=\"http://skillcrush.com/2013/08/01/wordpress-for-fun-profit/wordpress.org\">WordPress</a>.</p>\n<p dir=\"ltr\">WordPress is one of those incredible <a href=\"http://skillcrush.com/2012/08/29/open-source-software/\">open source</a> gifts that just gives and gives and gives some more. And for the beginning coder who wants to keep learning new programming skills while making some money, WordPress is hands down the way to go.</p>\n<p dir=\"ltr\">For those of you not familiar with the platform, WordPress is an open source <a href=\"http://skillcrush.com/2012/05/01/cms/\">content management system</a> built in PHP. Originally, WordPress was designed for blogging. But now, thanks to the creation of custom post types and the hard work of thousands of WordPress plugin developers, the platform can do much, much more.</p>\n<p dir=\"ltr\">I, like most developers, built my first website using HTML and CSS. Shortly thereafter, a good friend of mine suggested that I look into hacking around in WordPress. What he explained to me is that WordPress was a great content management system, and could be a good way for me to get familiar with some basic programming concepts like templating, working with loops, learning about database, and more fun things like that, while also building cool custom websites.</p>\n<p dir=\"ltr\">He spent 30 minutes explaining to me how the application is set up and where to look for more information, and that was it, I was off to the races. Me and my new friend WordPress soon became inseparable.</p>\n<p dir=\"ltr\">For a good year or so after that, I had a great side hustle going building marketing and content publishing websites with what can only described as an <em>extremely</em> limited tech skillset.</p>\n<p dir=\"ltr\">Now, I look back at the websites I created with WordPress before I really knew anything about programming with a mix of horror and amazement.</p>\n<p dir=\"ltr\">But honestly, I really shouldn’t be embarrassed because though they weren’t particular programmatically exciting, WordPress made it easy to build extremely robust custom marketing and content publishing websites even with only a small set of skills. Four years later, many of <a href=\"http://blog.papertiger.org/\">the websites</a> I built are <a href=\"http://www.campbaco.com/\">still alive</a> and <a href=\"http://companyb-ny.com/\">going strong</a> (wow did I love big rounded buttons or what?).</p>\n\n<h5>The top five reasons why you should learn how to build in WordPress:</h5>\n<p dir=\"ltr\"><strong>1. Do nothing, and you’ll still have a great website</strong>\nWordpress comes out of the box with arguably, one of the best content management systems in the world (thank you open source &amp; the power of hundreds of people working together on one web application). Now, there is still a learning curve and some people do complain that the WordPress backend is a little too complicated, but honestly, as someone who has done a lot of work with other systems (and seen what it looks like when you try to building something as robust as WordPress from scratch), they really have worked out a lot of the kinks!</p>\n<p dir=\"ltr\"><strong>2. Chances are, someone else has already solved any problem you run into</strong>\nOne of the best parts of WordPress is that you have access to a HUGE library of open source <a href=\"http://wordpress.org/plugins/\">WordPress plugins</a> that will allow you to customize the CMS in all manner of ways. If you find yourself wanting to add some functionality to your site that isn’t native to the platform (a slideshow, a contact form, a facebook login) chances are someone else has wanted to add that functionality and already done the hard work for you. And all you have to do is install the plugin!</p>\n<p dir=\"ltr\"><strong>3. When you are lost, WordPress has the best docs</strong>\n<a href=\"http://codex.wordpress.org/Main_Page\">The WordPress Codex</a> is seriously the most amazing, wonderful, searchable group of docs every created for any open source project ever. Anyone who has worked with other open source web applications or content management systems (*cough* Drupal *cough*) can tell you that the WordPress documents are spectacularly thorough, clear, and easy to use. If this is your first experience, know you are being seriously SPOILED.</p>\n<p dir=\"ltr\"><strong>4. Did we mention the 5 minute install?</strong>\nOh, by the way, WordPress is incredibly easy to install on your local machine (let me introduce you to my friend <a href=\"http://www.wampserver.com/en/\">WAMP</a> and <a href=\"http://www.mamp.info/en/index.html\">MAMP</a> and the famous, <a href=\"http://codex.wordpress.org/Installing_WordPress\">5 minute WordPress install</a>), and is supported by practically every web hosting service in the world. In fact, major web hosts like GoDaddy and <a href=\"http://hostgator.com/\">HostGator</a> offer fancy things like “1-click” WordPress installation services that will have you up and running in a matter of seconds.</p>\n<p dir=\"ltr\"><strong>5. And most importantly, knowing how to hack WordPress is known to lead to some serious CA$H\n</strong>Last, but not least, knowing how to customize WordPress is a seriously marketable tech skill. There are many many freelancers and companies that have built entire careers on hacking WordPress. Just ask our friend <a href=\"http://skillcrush.com/2013/04/05/zoe-rooney/\">Zoe</a>!</p>\n<p dir=\"ltr\">Have I convinced you that WordPress is awesome? Fantastic! Watch out for a post next week about advanced WordPress techniques.</p>','WordPress for fun & profit','','publish','open','open','','wordpress-for-fun-profit','','','2014-10-12 18:18:14','2014-10-12 18:18:14','',0,'http://localhost:8888/starter/?p=39',0,'post','',0);
INSERT INTO `wp_posts` VALUES (47329,1,'2014-10-02 16:40:57','2014-10-02 16:40:57','[download file=\"wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf\" title=\"The Ultimate Guide to Charging for Freelance Work\"]\n<h3><a style=\"text-decoration: none; color: #222222; font-weight: bold;\" href=\"http://skillcrush.com/2014/09/29/skillcrushtv-ruby-pro/\" target=\"_blank\">Are you charging too much?</a></h3>\nOr not enough?\n\nWhen you are a freelancer, you set your own prices. There\'s no boss to give you a raise, and no HR manager to negotiate your salary with.\n\nGetting your first couple freelance jobs is exhilarating. Someone is trusting YOU with their business, putting their brand in YOUR hands. It\'s easy to feel like you are the lucky one. <em>They hired ME? But I\'ve only been doing this for a few months!</em>\n\nEven so, didn\'t you start this whole freelancing thing so you could up your income? But how can you avoid lowballing your client if you aren\'t sure what fees are standard in the industry?\n\nWhen it comes to setting your freelance rates, there\'s no one-size-fits-all. There are so many questions to consider: <em>How long will the project take? Is the client a breeze to work with? (or not?) How much money do you need to make to turn a profit? How much experience do you have?</em>\n\nSkillcrush designer (and experienced freelancer) Kristina Zmaic came up with the ULTIMATE guide to calculating your rates as a freelancer. Below, you\'ll find a free PDF download that will help you decide what to charge, whether you\'re a fresh-faced rookie building custom icons or a long-time WordPress developer.\n\nSo don\'t let your first clients make you TOO starry-eyed. Enter your email address, download the FREE PDF guide, and calculate a freelance rate that will pay the bills, and then some!\n\n[download file=\"wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf\" title=\"The Ultimate Guide to Charging for Freelance Work\"]\n\n<em>Are you SO ready to freelance, but lacking a few skills? <strong>You are just in time!</strong> Our next round of Skillcrush Career Blueprints start Monday, October 6. Learn web design or web development in a supportive community of fellow learners and passionate instructors, or join our brand new (!) WordPress Developer Blueprint. <a href=\"http://skillcrush.com/skillcrush-blueprints/\" target=\"_blank\">Sign up here</a>.</em>\n\n<em>No idea where to start? Freelancing on the side? Launching a whole new career? Something else?! I\'m <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">hosting a webinar</a> TOMORROW at 1:00 p.m. CST to help you decide what career change is right for you, and where to go to learn the skills you need to make your dream a reality. <a href=\"http://skillcrush.com/webinar-oct3-signup-page\">Sign up now</a>!</em>','How Much Should You Charge for Freelance Web Design?','Setting your freelance rates: demystified. ','publish','open','open','','freelance-rates','','','2014-10-02 16:40:57','2014-10-02 16:40:57','',0,'http://skillcrush.com/?p=47329',0,'post','',0);
INSERT INTO `wp_posts` VALUES (47333,1,'2020-04-29 23:41:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-04-29 23:41:56','0000-00-00 00:00:00','',0,'http://accelerate.local/?p=47333',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (10,2,0);
INSERT INTO `wp_term_relationships` VALUES (13,3,0);
INSERT INTO `wp_term_relationships` VALUES (14,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,4,0);
INSERT INTO `wp_term_relationships` VALUES (26,5,0);
INSERT INTO `wp_term_relationships` VALUES (28,6,0);
INSERT INTO `wp_term_relationships` VALUES (31,7,0);
INSERT INTO `wp_term_relationships` VALUES (33,8,0);
INSERT INTO `wp_term_relationships` VALUES (35,9,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (36,6,0);
INSERT INTO `wp_term_relationships` VALUES (37,6,0);
INSERT INTO `wp_term_relationships` VALUES (39,6,0);
INSERT INTO `wp_term_relationships` VALUES (47329,10,0);
INSERT INTO `wp_term_relationships` VALUES (47329,11,0);
INSERT INTO `wp_term_relationships` VALUES (47329,12,0);
INSERT INTO `wp_term_relationships` VALUES (47329,13,0);
INSERT INTO `wp_term_relationships` VALUES (47329,14,0);
INSERT INTO `wp_term_relationships` VALUES (47329,15,0);
INSERT INTO `wp_term_relationships` VALUES (47329,16,0);
INSERT INTO `wp_term_relationships` VALUES (47329,17,0);
INSERT INTO `wp_term_relationships` VALUES (47329,18,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Top Nav','top-nav',0);
INSERT INTO `wp_terms` VALUES (3,'Social Media Nav','social-media-nav',0);
INSERT INTO `wp_terms` VALUES (4,'Listicles','listicles',0);
INSERT INTO `wp_terms` VALUES (5,'Career','career',0);
INSERT INTO `wp_terms` VALUES (6,'WordPress','wordpress',0);
INSERT INTO `wp_terms` VALUES (7,'Advice','advice',0);
INSERT INTO `wp_terms` VALUES (8,'Apps','apps',0);
INSERT INTO `wp_terms` VALUES (9,'Technology','technology',0);
INSERT INTO `wp_terms` VALUES (10,'Blog','blog',0);
INSERT INTO `wp_terms` VALUES (11,'Career Success','career-success',0);
INSERT INTO `wp_terms` VALUES (12,'charge','charge',0);
INSERT INTO `wp_terms` VALUES (13,'design','design',0);
INSERT INTO `wp_terms` VALUES (14,'freelance','freelance',0);
INSERT INTO `wp_terms` VALUES (15,'Freelancing','freelancing',0);
INSERT INTO `wp_terms` VALUES (16,'prices','prices',0);
INSERT INTO `wp_terms` VALUES (17,'rates','rates',0);
INSERT INTO `wp_terms` VALUES (18,'web design','web-design-2',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','47333');
INSERT INTO `wp_usermeta` VALUES (21,1,'session_tokens','a:4:{s:64:\"f76c74da068c7e0039c0fa62bc51492dd12b12c03bd39978b247f5eb1ad05d2b\";a:4:{s:10:\"expiration\";i:1588815123;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1588642323;}s:64:\"582f2e1f4153465ed1dadd4a9692eac499498f0b7b997f9cc3a51084e97dcca0\";a:4:{s:10:\"expiration\";i:1588886050;s:2:\"ip\";s:14:\"97.113.205.179\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1588713250;}s:64:\"1fa4c3e22f797ca8f8fbddbefa51b467abdd1f84e65844d1b4fcb2284f66d12d\";a:4:{s:10:\"expiration\";i:1588887209;s:2:\"ip\";s:14:\"97.113.205.179\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1588714409;}s:64:\"0a3eb07d98b6e1fc91366b17e483454c889d8579a110572f0e190f6125a53c05\";a:4:{s:10:\"expiration\";i:1588887524;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1588714724;}}');
INSERT INTO `wp_usermeta` VALUES (22,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"97.113.205.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$Bp/Cm2llDPjeI.y1CpDzRGQcFQFXNI.','admin','timpfeiffer.dev@gmail.com','','2020-04-29 23:03:34','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 14:42:32
