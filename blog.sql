-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blog_development
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `article_comments`
--

DROP TABLE IF EXISTS `article_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_article_comments_on_article_id` (`article_id`),
  KEY `index_article_comments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_comments`
--

LOCK TABLES `article_comments` WRITE;
/*!40000 ALTER TABLE `article_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_stars`
--

DROP TABLE IF EXISTS `article_stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_stars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_article_stars_on_article_id_and_user_id` (`article_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_stars`
--

LOCK TABLES `article_stars` WRITE;
/*!40000 ALTER TABLE `article_stars` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_views`
--

DROP TABLE IF EXISTS `article_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `param_string` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_article_views_on_article_id_and_ip_and_created_at` (`article_id`,`ip`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_views`
--

LOCK TABLES `article_views` WRITE;
/*!40000 ALTER TABLE `article_views` DISABLE KEYS */;
INSERT INTO `article_views` VALUES (1,1,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"1\"}','2015-06-07 08:59:58','2015-06-07 08:59:58'),(2,1,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"1\"}','2015-06-07 09:12:44','2015-06-07 09:12:44'),(3,2,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"2\"}','2015-06-07 09:44:18','2015-06-07 09:44:18'),(4,3,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"3\"}','2015-06-07 09:59:13','2015-06-07 09:59:13'),(5,4,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"4\"}','2015-06-08 09:49:31','2015-06-08 09:49:31'),(6,4,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"4\"}','2015-06-08 10:01:11','2015-06-08 10:01:11'),(7,5,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"5\"}','2015-06-08 16:28:40','2015-06-08 16:28:40'),(8,2,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"2\"}','2015-06-08 16:30:49','2015-06-08 16:30:49'),(9,4,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"4\"}','2015-06-08 16:30:53','2015-06-08 16:30:53'),(10,5,1,'127.0.0.1','{\"action\"=>\"show\", \"controller\"=>\"articles\", \"id\"=>\"5\"}','2015-06-08 16:50:19','2015-06-08 16:50:19');
/*!40000 ALTER TABLE `article_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `view_count` int(11) DEFAULT NULL,
  `star_count` int(11) DEFAULT NULL,
  `comments_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_articles_on_user_id` (`user_id`),
  KEY `index_articles_on_title` (`title`),
  KEY `index_articles_on_view_count` (`view_count`),
  KEY `index_articles_on_star_count` (`star_count`),
  KEY `index_articles_on_comments_count` (`comments_count`),
  KEY `index_articles_on_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'图解式学习法_2015_06_07','图解,学习法,方法论','# 图解式学习法\r\n\r\n## 学习可以是一件创造性的事情\r\n\r\n\r\n## 学习\r\n理解：用图解的方式将片段的信息建立成信息结构\r\n\r\n记忆：将信息连接起来\r\n\r\n运用：完好如初地将信息结构取出来\r\n设想要将自己理解的东西讲给别人听。\r\nMore with less:设想需要输出的最小输入是多少？\r\n记忆中提示的信息。\r\n',2,NULL,NULL,'2015-06-07 08:59:58','2015-06-07 09:12:44','',2),(2,1,'save an hour every day','时间,方法论','# 每天多出一小时\r\n\r\n## 创建一个时间跟踪表\r\n很多时候我们不知道时间浪费在哪里？\r\n\r\n所以需要将我们所做的一切事情都记录下来。\r\n\r\n设定一个整点提醒闹钟。',2,NULL,NULL,'2015-06-07 09:44:18','2015-06-07 09:44:18','',3),(3,1,'ruby 基本语法 知识点','language,ruby,','# ruby 基础教程\r\n\r\n14. 字符串\r\n* %Q{} \r\n* %q{}',1,NULL,NULL,'2015-06-07 09:59:13','2015-06-07 09:59:13','',4),(4,1,' Titanium CLI 任务','Titanium,技术，前端','# Titanium CLI 任务\r\n\r\n运行`ti setup check`,可以检查环境是否正确配置。\r\n\r\n## 安卓模拟器\r\n\r\n指定安卓或Genymotion模拟器，加入 -C <模拟器名>\r\n~~~\r\nti build -p android -C \"Google Nexus 7 - 4.4.2 - API 19 - 800x1280\"\r\n~~~\r\n检索所有的模拟器列表，运行`ti info -p android`\r\n\r\n## 打包应用\r\n### Google Play APK\r\n在为发布软件打包APK文件，我们需要生成一个钥匙对（keypair），并且为应用授权。\r\n~~~\r\nti build -p android -T dist-playstore [-K <KEYSTORE_FILE> -P <KEYSTORE_PASSWORD> -L <KEYSTORE_ALIAS> -O <OUTPUT_DIRECTORY>]\r\n~~~\r\n记不住后面的参数没有关系，cli会提示你的。',3,NULL,NULL,'2015-06-08 09:49:31','2015-06-08 09:49:31','',5),(5,1,'thin 快速入门          ','thin,服务器,rails','# thin 入门\r\n\r\n## 使用\r\n在Gemfile添加\r\n~~~\r\ngem \'thin\'\r\n~~~\r\n\r\n启动thin\r\n~~~\r\nbundle exec thin start\r\n~~~\r\n## 无论在哪里都可以使用\r\n在任何支持Rack的框架你都可以使用，因为Thin可以载入Rack的配置文件。即使是你自己的，也是可以的。\r\n\r\nfart.ru\r\n~~~\r\napp = proc do |env|\r\n  [\r\n  200,          # Status code\r\n  {             # Response headers\r\n    \'Content-Type\' => \'text/html\',\r\n      \'Content-Length\' => \'2\',\r\n  },\r\n    [\'hi\']        # Response body\r\n    ]\r\nend\r\n\r\n\r\n  use Rack::CommonLogger\r\n\r\n  run app\r\n~~~\r\n\r\n`thin start -R fart.ru`\r\n## 部署\r\n指定服务器个数`thin start --servers 3`\r\n\r\n我们还可以安装thin作为运行级别的脚本（在/etc/init.d/thin下），也就是在服务器启动后，会启动你所有的服务器。`thin install`\r\n\r\n为每个app设置一个配置文件`thin config -C /etc/thin/myapp.yml -c /var...`\r\n\r\n## 在Nginx之后\r\n\r\n把请求代理给Nginx后端\r\n启动Thin群`thin start -s3 -p 5000`\r\n我们也可以自己配置Thin配置文件，并用它来控制集群\r\n~~~\r\nthin config -C myapp.yml -s3 -p 5000\r\nthin start -C myapp.yml\r\n~~~\r\n使用UNIX域名套接字编辑nginx配置文件的upstream块来连接Nginx\r\n\r\nnginx.conf\r\n\r\n~~~\r\nupstream backend {\r\n    server unix:/tmp/thin.0.sock;\r\n    server unix:/tmp/thin.1.sock;\r\n    server unix:/tmp/thin.2.sock;\r\n    }\r\n~~~\r\n\r\n然后这样启动集群\r\n~~~\r\nthin start -s3 --socket /tmp/thin.sock\r\n~~~\r\n',2,NULL,NULL,'2015-06-08 16:28:40','2015-06-08 16:30:31','',6);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_info`
--

DROP TABLE IF EXISTS `blog_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_info`
--

LOCK TABLES `blog_info` WRITE;
/*!40000 ALTER TABLE `blog_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `articles_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_articles_count` (`articles_count`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'默认分类',NULL,'2015-06-04 15:19:13','2015-06-04 15:19:13'),(2,'学习法',1,'2015-06-07 08:55:20','2015-06-07 08:55:20'),(3,'管理',1,'2015-06-07 09:44:18','2015-06-07 09:44:18'),(4,'ruby',1,'2015-06-07 09:59:13','2015-06-07 09:59:13'),(5,'Titanium',1,'2015-06-08 09:49:31','2015-06-08 09:49:31'),(6,'服务器',1,'2015-06-08 16:28:31','2015-06-08 16:28:31');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140825134700'),('20140826093600'),('20140826093700'),('20140826125700'),('20140826132200'),('20140827095400'),('20140827125400'),('20140827134600'),('20140831174700'),('20140831194600'),('20140908084800'),('20140908085400');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_actives`
--

DROP TABLE IF EXISTS `user_actives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_actives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `used` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_actives`
--

LOCK TABLES `user_actives` WRITE;
/*!40000 ALTER TABLE `user_actives` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_actives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_reply_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_username` (`username`),
  KEY `index_users_on_email` (`email`),
  KEY `index_users_on_nick_name` (`nick_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'wrong','$2a$10$j7H6YB/6DlotYfbmkNOYleM8EjXfEWEDZG0Vox2lgKXvgqyKHHx4G','736698959@qq.com',1,NULL,NULL,'2015-06-04 15:19:13','2015-06-04 15:21:25','wrong','/images/ee040165-04d2-4b5e-a109-e2f296aedc76.jpg',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-08 18:42:19
