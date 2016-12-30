-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: tatie.mysql.pythonanywhere-services.com    Database: tatie$toeic
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add word type',7,'add_wordtype'),(20,'Can change word type',7,'change_wordtype'),(21,'Can delete word type',7,'delete_wordtype'),(22,'Can add type',8,'add_type'),(23,'Can change type',8,'change_type'),(24,'Can delete type',8,'delete_type'),(25,'Can add level',9,'add_level'),(26,'Can change level',9,'change_level'),(27,'Can delete level',9,'delete_level'),(28,'Can add topic',10,'add_topic'),(29,'Can change topic',10,'change_topic'),(30,'Can delete topic',10,'delete_topic'),(31,'Can add test',11,'add_test'),(32,'Can change test',11,'change_test'),(33,'Can delete test',11,'delete_test'),(34,'Can add grammar topic',12,'add_grammartopic'),(35,'Can change grammar topic',12,'change_grammartopic'),(36,'Can delete grammar topic',12,'delete_grammartopic'),(37,'Can add listening topic',13,'add_listeningtopic'),(38,'Can change listening topic',13,'change_listeningtopic'),(39,'Can delete listening topic',13,'delete_listeningtopic'),(40,'Can add vocab',14,'add_vocab'),(41,'Can change vocab',14,'change_vocab'),(42,'Can delete vocab',14,'delete_vocab'),(43,'Can add passage',15,'add_passage'),(44,'Can change passage',15,'change_passage'),(45,'Can delete passage',15,'delete_passage'),(49,'Can add answer',17,'add_answer'),(50,'Can change answer',17,'change_answer'),(51,'Can delete answer',17,'delete_answer'),(52,'Can add question',18,'add_question'),(53,'Can change question',18,'change_question'),(54,'Can delete question',18,'delete_question'),(55,'Can add user answer',19,'add_useranswer'),(56,'Can change user answer',19,'change_useranswer'),(57,'Can delete user answer',19,'delete_useranswer'),(58,'Can add user vocab',20,'add_uservocab'),(59,'Can change user vocab',20,'change_uservocab'),(60,'Can delete user vocab',20,'delete_uservocab'),(61,'Can add user answer grammar quiz',21,'add_useranswergrammarquiz'),(62,'Can change user answer grammar quiz',21,'change_useranswergrammarquiz'),(63,'Can delete user answer grammar quiz',21,'delete_useranswergrammarquiz'),(64,'Can add test type',22,'add_testtype'),(65,'Can change test type',22,'change_testtype'),(66,'Can delete test type',22,'delete_testtype'),(70,'Can add dictation',24,'add_dictation'),(71,'Can change dictation',24,'change_dictation'),(72,'Can delete dictation',24,'delete_dictation'),(73,'Can add user dictation',25,'add_userdictation'),(74,'Can change user dictation',25,'change_userdictation'),(75,'Can delete user dictation',25,'delete_userdictation'),(79,'Can add video lesson type',27,'add_videolessontype'),(80,'Can change video lesson type',27,'change_videolessontype'),(81,'Can delete video lesson type',27,'delete_videolessontype'),(82,'Can add video lesson',28,'add_videolesson'),(83,'Can change video lesson',28,'change_videolesson'),(84,'Can delete video lesson',28,'delete_videolesson'),(85,'Can add user answer video lesson',29,'add_useranswervideolesson'),(86,'Can change user answer video lesson',29,'change_useranswervideolesson'),(87,'Can delete user answer video lesson',29,'delete_useranswervideolesson'),(88,'Can add pronunciation lesson',30,'add_pronunciationlesson'),(89,'Can change pronunciation lesson',30,'change_pronunciationlesson'),(90,'Can delete pronunciation lesson',30,'delete_pronunciationlesson'),(91,'Can add question text',31,'add_questiontext'),(92,'Can change question text',31,'change_questiontext'),(93,'Can delete question text',31,'delete_questiontext'),(94,'Can add answer text',32,'add_answertext'),(95,'Can change answer text',32,'change_answertext'),(96,'Can delete answer text',32,'delete_answertext'),(97,'Can add phrase',33,'add_phrase'),(98,'Can change phrase',33,'change_phrase'),(99,'Can delete phrase',33,'delete_phrase'),(100,'Can add speaking question type',34,'add_speakingquestiontype'),(101,'Can change speaking question type',34,'change_speakingquestiontype'),(102,'Can delete speaking question type',34,'delete_speakingquestiontype'),(103,'Can add speaking question',35,'add_speakingquestion'),(104,'Can change speaking question',35,'change_speakingquestion'),(105,'Can delete speaking question',35,'delete_speakingquestion'),(106,'Can add speaking answer',36,'add_speakinganswer'),(107,'Can change speaking answer',36,'change_speakinganswer'),(108,'Can delete speaking answer',36,'delete_speakinganswer'),(109,'Can add speaking topic',37,'add_speakingtopic'),(110,'Can change speaking topic',37,'change_speakingtopic'),(111,'Can delete speaking topic',37,'delete_speakingtopic'),(112,'Can add speaking lesson',38,'add_speakinglesson'),(113,'Can change speaking lesson',38,'change_speakinglesson'),(114,'Can delete speaking lesson',38,'delete_speakinglesson'),(115,'Can add speaking practice',39,'add_speakingpractice'),(116,'Can change speaking practice',39,'change_speakingpractice'),(117,'Can delete speaking practice',39,'delete_speakingpractice'),(118,'Can add user speaking answer',40,'add_userspeakinganswer'),(119,'Can change user speaking answer',40,'change_userspeakinganswer'),(120,'Can delete user speaking answer',40,'delete_userspeakinganswer'),(121,'Can add speaking practice type',41,'add_speakingpracticetype'),(122,'Can change speaking practice type',41,'change_speakingpracticetype'),(123,'Can delete speaking practice type',41,'delete_speakingpracticetype'),(124,'Can add user test',42,'add_usertest'),(125,'Can change user test',42,'change_usertest'),(126,'Can delete user test',42,'delete_usertest');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$pi4Wh5SSE3Ga$tO+fa2RyIQUFR1E+Qri2FyqgsoshLEVm7u8LHn4TbPg=','2016-12-21 06:39:58.703650',1,'doof','','','',1,1,'2016-10-14 11:20:14.618125'),(2,'pbkdf2_sha256$24000$o2gpegzzwBkm$30cuGdFuY7Bbnikk/hHMoNVUy28wAg4HB3DFjbD1Cns=','2016-10-20 13:50:15.789467',0,'hoangson','','','',0,1,'2016-10-14 12:32:22.035761'),(3,'pbkdf2_sha256$24000$EbWtxZytqTwY$4hf/sTNVkoMf0yRgF8R133rsI2kYjMmq7SAOQXBlRI8=','2016-10-18 02:16:15.327402',0,'toanhuy18','','','',0,1,'2016-10-14 13:01:27.627894'),(4,'pbkdf2_sha256$24000$pf3x2Rnmn1Oi$wWSabAmYhV3ZvfQPdZjzY2RERGEuITH8wf2QSliYwJs=','2016-10-26 13:26:53.105662',0,'ThanhSon','','','',0,1,'2016-10-14 16:21:03.882421'),(5,'pbkdf2_sha256$24000$ZeZBnUxxT9MZ$JtDGnOcNRUuKO3PJ/uGrkkaG+kJl2QahHzx3EE5YoXs=','2016-10-15 03:27:14.835885',0,'kieulaolao','','','',0,1,'2016-10-15 03:27:14.522187'),(6,'pbkdf2_sha256$24000$KrbuzTnPv4Vv$90OvxFeW2v00FwcFEKQ1OXdqGU2hMdSWOZgvn0UvOAE=','2016-10-16 13:55:00.749424',0,'hien','','','',0,1,'2016-10-16 13:55:00.408087'),(7,'pbkdf2_sha256$24000$Gk4Z2Slidtn9$f3t5dtPcmTmWLJbxC7oSOBKfCy7qt9S0JKhoBVLEjCE=','2016-10-19 07:49:02.484935',0,'phanthaolinh.neu','','','',0,1,'2016-10-19 07:49:02.163374'),(8,'pbkdf2_sha256$24000$FEserEMJ4tXr$MQVm/nehth+tYkGlAwHZ1sPmgcwyEb150Q7c5295/rA=','2016-10-20 08:16:17.128401',0,'haibh','','','',0,1,'2016-10-20 08:16:16.784463'),(9,'pbkdf2_sha256$24000$GrGROHHsa3nD$+UbnJ1h06K//Sbqb/9V9o++CS3m9gFcX6jwlqtirRzA=','2016-10-20 09:50:04.401448',0,'hoanghoa','','','',0,1,'2016-10-20 09:50:04.110480'),(10,'pbkdf2_sha256$24000$IM6qcRYaJ6WB$v6am6iNZ2/nbnLG/YOV0LTjpuvBuZTgWTllrcBd7mdE=','2016-10-26 15:48:53.534985',0,'hientc','','','',0,1,'2016-10-26 09:34:39.173156');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-10-14 11:35:00.237268','32','An ----- of monthly sales figures is essential to setting future revenue goals.',2,'Changed tests.',18,1),(2,'2016-10-15 01:33:20.410846','14','The company\'s management has a firm belief that its strategic direction is sound and will continue to exceed shareholder -----.',2,'Changed topics, grammartopics and tests.',18,1),(3,'2016-10-15 02:18:55.527952','2','Note that the hotel\'s pool and pool deck will be closed until ----- on them is completed later this month.',2,'Changed grammartopics.',18,1),(4,'2016-10-15 15:47:41.155969','1','construction',2,'Changed question.',17,1),(5,'2016-10-15 15:48:13.869276','2','constructed',2,'Changed question.',17,1),(6,'2016-10-15 15:48:29.980747','3','constructs',2,'Changed question.',17,1),(7,'2016-10-15 15:48:46.170078','4','constructive',2,'Changed question.',17,1),(8,'2016-10-15 15:48:56.860414','1','construction',2,'No fields changed.',17,1),(9,'2016-10-15 15:49:48.818473','5','announced',2,'Changed question.',17,1),(10,'2016-10-15 15:49:59.874891','6','have announced',2,'Changed question.',17,1),(11,'2016-10-15 15:52:21.138144','7','announcing',2,'Changed question.',17,1),(12,'2016-10-15 15:52:32.869314','8','announce',2,'Changed question.',17,1),(13,'2016-10-15 15:52:47.988473','9','at',2,'Changed question.',17,1),(14,'2016-10-15 15:53:01.005497','10','into',2,'Changed question.',17,1),(15,'2016-10-15 15:53:01.470309','10','into',2,'No fields changed.',17,1),(16,'2016-10-15 15:53:11.410527','11','among',2,'Changed question.',17,1),(17,'2016-10-15 15:53:22.584416','12','after',2,'Changed question.',17,1),(18,'2016-10-15 15:53:40.337142','13','attract',2,'Changed question.',17,1),(19,'2016-10-15 15:53:50.348609','14','attractive',2,'Changed question.',17,1),(20,'2016-10-15 15:54:03.264581','15','attracted',2,'Changed question.',17,1),(21,'2016-10-15 15:54:11.836810','16','attraction',2,'Changed question.',17,1),(22,'2016-10-15 15:54:12.907480','16','attraction',2,'No fields changed.',17,1),(23,'2016-10-15 15:54:41.059041','17','perform',2,'Changed question.',17,1),(24,'2016-10-15 15:54:51.524538','18','admit',2,'Changed question.',17,1),(25,'2016-10-15 15:54:59.215528','19','attend',2,'Changed question.',17,1),(26,'2016-10-15 15:55:04.376735','18','admit',2,'No fields changed.',17,1),(27,'2016-10-15 15:55:13.194643','20','participate',2,'Changed question.',17,1),(28,'2016-10-15 15:55:31.742728','21','expect',2,'Changed question.',17,1),(29,'2016-10-15 15:55:43.484596','22','expected',2,'Changed question.',17,1),(30,'2016-10-15 15:56:11.451421','25','regularize',2,'Changed question.',17,1),(31,'2016-10-15 15:56:27.853274','26','regularity',2,'Changed question.',17,1),(32,'2016-10-15 15:56:40.822698','27','regularities',2,'Changed question.',17,1),(33,'2016-10-15 15:56:55.826817','28','regularly',2,'Changed question.',17,1),(34,'2016-10-15 15:57:05.746474','29','also',2,'Changed question.',17,1),(35,'2016-10-15 15:57:26.344013','30','both',2,'Changed question.',17,1),(36,'2016-10-15 16:00:57.872678','31','the same as',2,'Changed question.',17,1),(37,'2016-10-15 16:01:11.544619','32','not only',2,'Changed question.',17,1),(38,'2016-10-15 16:01:25.137354','33','as',2,'Changed question.',17,1),(39,'2016-10-15 16:01:39.794428','34','of',2,'Changed question.',17,1),(40,'2016-10-15 16:03:31.086362','35','either',2,'Changed question.',17,1),(41,'2016-10-15 16:08:31.178898','36','like',2,'Changed question.',17,1),(42,'2016-10-15 16:08:40.828213','37','they',2,'Changed question.',17,1),(43,'2016-10-15 16:08:52.476592','38','their',2,'Changed question.',17,1),(44,'2016-10-15 16:19:02.359596','39','themselves',2,'Changed question.',17,1),(45,'2016-10-15 16:19:13.540615','40','theirs',2,'Changed question.',17,1),(46,'2016-10-15 16:23:51.536981','41','demonstrated',2,'Changed question.',17,1),(47,'2016-10-15 16:24:09.204676','42','entrusted',2,'Changed question.',17,1),(48,'2016-10-15 16:24:20.914335','42','entrusted',2,'No fields changed.',17,1),(49,'2016-10-15 16:43:32.839724','45','no one',2,'Changed question.',17,1),(50,'2016-10-15 16:43:46.556834','47','someone',2,'Changed question.',17,1),(51,'2016-10-15 16:43:59.491624','48','one another',2,'Changed question.',17,1),(52,'2016-10-15 17:32:09.277293','49','everyone',2,'Changed question.',17,1),(53,'2016-10-15 17:40:53.197147','50','occupied',2,'Changed question.',17,1),(54,'2016-10-15 17:41:07.789120','51','accountable',2,'Changed question.',17,1),(55,'2016-10-15 17:42:24.496968','52','qualified',2,'Changed question.',17,1),(56,'2016-10-15 17:43:21.130944','53','specific',2,'Changed question.',17,1),(57,'2016-10-15 17:44:00.068837','23','expectations',2,'Changed question.',17,1),(58,'2016-10-15 17:44:25.498017','24','expectedly',2,'Changed question.',17,1),(59,'2016-10-15 17:44:32.876755','22','expected',2,'Changed question.',17,1),(60,'2016-10-15 17:44:39.213209','21','expect',2,'Changed question.',17,1),(61,'2016-10-15 17:45:42.032663','54','across',2,'Changed question.',17,1),(62,'2016-10-15 17:45:47.384643','55','during',2,'Changed question.',17,1),(63,'2016-10-15 17:45:52.853993','56','onto',2,'Changed question.',17,1),(64,'2016-10-15 17:46:08.850720','57','next',2,'Changed question.',17,1),(65,'2016-10-15 17:46:54.640017','58','efficient',2,'Changed question.',17,1),(66,'2016-10-15 17:47:00.154966','59','efficiency',2,'Changed question.',17,1),(67,'2016-10-15 17:47:04.848600','60','efficiencies',2,'Changed question.',17,1),(68,'2016-10-15 17:47:13.019210','61','efficiently',2,'Changed question.',17,1),(69,'2016-10-15 17:47:42.159112','62','records',2,'Changed question.',17,1),(70,'2016-10-15 17:47:51.252920','63','qualifications',2,'Changed question.',17,1),(71,'2016-10-15 17:47:58.496586','64','guidelines',2,'Changed question.',17,1),(72,'2016-10-15 17:48:03.040630','65','behaviors',2,'Changed question.',17,1),(73,'2016-10-15 17:48:28.484744','66','competition',2,'Changed question.',17,1),(74,'2016-10-15 17:48:32.417881','67','competitive',2,'Changed question.',17,1),(75,'2016-10-15 17:48:36.474804','68','competitors',2,'Changed question.',17,1),(76,'2016-10-15 17:48:46.148620','69','competitively',2,'Changed question.',17,1),(77,'2016-10-15 17:49:14.139125','70','assist',2,'Changed question.',17,1),(78,'2016-10-15 17:49:19.765652','71','remind',2,'Changed question.',17,1),(79,'2016-10-15 17:49:26.187120','72','locate',2,'Changed question.',17,1),(80,'2016-10-15 17:49:31.446460','73','conduct',2,'Changed question.',17,1),(81,'2016-10-15 17:49:52.490855','74','product',2,'Changed question.',17,1),(82,'2016-10-15 17:50:00.192141','75','producer',2,'Changed question.',17,1),(83,'2016-10-15 17:50:05.164501','76','produced',2,'Changed question.',17,1),(84,'2016-10-15 17:50:15.676415','77','producing',2,'Changed question.',17,1),(85,'2016-10-15 17:50:41.589698','78','openly',2,'Changed question.',17,1),(86,'2016-10-15 17:50:51.849078','79','rigidly',2,'Changed question.',17,1),(87,'2016-10-15 17:50:58.531970','80','approximately',2,'Changed question.',17,1),(88,'2016-10-15 17:51:10.787177','81','frequently',2,'Changed question.',17,1),(89,'2016-10-15 17:51:56.458338','82','optimal',2,'Changed question.',17,1),(90,'2016-10-15 17:52:07.056630','83','optimize',2,'Changed question.',17,1),(91,'2016-10-15 17:52:12.940512','84','optimally',2,'Changed question.',17,1),(92,'2016-10-15 17:52:21.100252','85','optimization',2,'Changed question.',17,1),(93,'2016-10-15 17:52:50.813469','86','exhibition',2,'Changed question.',17,1),(94,'2016-10-15 17:52:55.839623','87','guide',2,'Changed question.',17,1),(95,'2016-10-15 17:53:05.999393','88','portrait',2,'Changed question.',17,1),(96,'2016-10-15 17:53:11.252681','89','creativity',2,'Changed question.',17,1),(97,'2016-10-15 17:54:20.924500','90','convinces',2,'Changed question.',17,1),(98,'2016-10-15 17:54:27.726714','91','convince',2,'Changed question.',17,1),(99,'2016-10-15 17:54:49.563440','92','convincingly',2,'Changed question.',17,1),(100,'2016-10-15 17:54:55.596450','93','convincing',2,'Changed question.',17,1),(101,'2016-10-15 17:55:13.963998','94','without',2,'Changed question.',17,1),(102,'2016-10-15 17:55:18.903026','95','almost',2,'Changed question.',17,1),(103,'2016-10-15 17:55:23.318414','96','usually',2,'Changed question.',17,1),(104,'2016-10-15 17:55:27.307124','97','already',2,'Changed question.',17,1),(105,'2016-10-15 17:55:51.254067','98','advancement',2,'Changed question.',17,1),(106,'2016-10-15 17:55:59.702651','99','opportunities',2,'Changed question.',17,1),(107,'2016-10-15 17:56:03.965620','100','transmitting',2,'Changed question.',17,1),(108,'2016-10-15 17:56:09.047606','101','openings',2,'Changed question.',17,1),(109,'2016-10-15 17:56:35.172585','102','forward',2,'Changed question.',17,1),(110,'2016-10-15 17:56:39.253720','103','ahead',2,'Changed question.',17,1),(111,'2016-10-15 17:56:43.393510','104','initial',2,'Changed question.',17,1),(112,'2016-10-15 17:56:49.083027','105','limited',2,'Changed question.',17,1),(113,'2016-10-15 17:57:13.778875','106','boldness',2,'Changed question.',17,1),(114,'2016-10-15 17:57:14.232928','106','boldness',2,'No fields changed.',17,1),(115,'2016-10-15 17:57:20.047728','107','bolder',2,'Changed question.',17,1),(116,'2016-10-15 17:57:25.459951','108','boldest',2,'Changed question.',17,1),(117,'2016-10-15 17:57:48.804649','109','boldly',2,'Changed question.',17,1),(118,'2016-10-15 17:58:10.438261','110','if',2,'Changed question.',17,1),(119,'2016-10-15 17:58:14.544419','111','which',2,'Changed question.',17,1),(120,'2016-10-15 17:58:22.357899','112','until',2,'Changed question.',17,1),(121,'2016-10-15 17:58:58.730860','113','despite',2,'Changed question.',17,1),(122,'2016-10-15 17:59:42.094463','124','variety',3,'',17,1),(123,'2016-10-15 17:59:50.870366','115','provide',2,'Changed question.',17,1),(124,'2016-10-15 17:59:55.188403','116','show',2,'Changed question.',17,1),(125,'2016-10-15 18:00:13.508445','117','allow',2,'Changed question.',17,1),(126,'2016-10-15 18:03:34.039315','118','exit',2,'Changed question.',17,1),(127,'2016-10-15 18:03:43.427563','119','exits',2,'Changed question.',17,1),(128,'2016-10-15 18:03:51.581370','120','exited',2,'Changed question.',17,1),(129,'2016-10-15 18:03:58.039858','121','existing',2,'Changed question.',17,1),(130,'2016-10-15 18:04:47.045754','118','exit',2,'Changed question.',17,1),(131,'2016-10-15 18:05:04.427303','126','style',2,'Changed question.',17,1),(132,'2016-10-15 18:05:10.288090','125','analysis',2,'Changed question.',17,1),(133,'2016-10-15 18:05:17.397346','123','variety',2,'Changed question.',17,1),(134,'2016-10-15 18:05:22.254910','122','destination',2,'Changed question.',17,1),(135,'2016-10-15 18:08:56.629771','43','agreed',2,'Changed question.',17,1),(136,'2016-10-15 18:09:03.801767','44','congratulated',2,'Changed question.',17,1),(137,'2016-10-15 18:10:09.619603','31','All employees are asked to turn off  the lights when ----- a vacant room to conserve electricity.',2,'Changed typeOf and grammartopics.',18,1),(138,'2016-10-15 18:10:45.687692','29','The front desk staff requests photo identification ----- a visitor to the Chicago Graphics Offices is not holding a valid pass.',2,'Changed grammartopics.',18,1),(139,'2016-10-15 18:10:57.240338','28','I\'ve read a couple of different articles on Franklin Roosevelt, who was a much ----- president than Barack Obama has been so far.',2,'Changed grammartopics.',18,1),(140,'2016-10-15 18:11:12.372344','27','Although ----- findings are encouraging, further research is needed to determine the effectiveness of the advertising campaign.',2,'No fields changed.',18,1),(141,'2016-10-15 18:13:33.615703','24','Mr Henny ----- presented the argument that the pricing policy of the  retailer would be the financial ruin of the company.',2,'Changed grammartopics.',18,1),(142,'2016-10-15 18:14:08.329767','22','It is advisable to keep your operating system and software updated for ----- computer performance and security.',2,'Changed grammartopics and tests.',18,1),(143,'2016-10-15 18:14:23.967553','21','Sales of Ferrer Industry\'s tractors ----- increase during the autumn harvest season.',2,'Changed tests.',18,1),(144,'2016-10-15 18:15:00.208727','20','This wast-to-energy power plant is the ----- of a technologically-advanced process set to achieve outstanding environmental and economical performance.',2,'Changed grammartopics.',18,1),(145,'2016-10-15 18:15:23.752379','18','The application process is highly ----- with only 5% of applicants ultimately selected for positions.',2,'Changed grammartopics.',18,1),(146,'2016-10-15 18:16:05.770125','16','Needs assessment can help you identify areas for improvement and ultimately help you realize your goals more -----.',2,'Changed grammartopics.',18,1),(147,'2016-10-15 18:16:25.146569','15','Currently, there is an increasing demand for Internet access ----- the telecommunications industry.',2,'Changed grammartopics.',18,1),(148,'2016-10-15 18:16:57.806201','12','Ms James stated that ----- must work together to make sure the committee is effective.',2,'Changed grammartopics.',18,1),(149,'2016-10-15 18:17:36.891257','10','As demand for ----- wheat-based products falls, local producers earn less and less and the total income of the country declines.',2,'Changed grammartopics.',18,1),(150,'2016-10-15 18:17:46.128329','9','Unfortunately, with the rise of the popularity of soft drinks, tea is not ----- popular as it used to be.',2,'Changed grammartopics.',18,1),(151,'2016-10-15 18:17:58.750824','8','Attendees will be required to work ----- alone and in groups when performing study sample analyses.',2,'Changed grammartopics and tests.',18,1),(152,'2016-10-15 18:18:15.612437','7','He ----- delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.',2,'Changed grammartopics.',18,1),(153,'2016-10-15 18:18:41.408409','5','This apartment complex has an ----- exterior design and stylish interior furnishings.',2,'Changed typeOf and grammartopics.',18,1),(154,'2016-10-15 18:18:56.296352','4','Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.',2,'Changed grammartopics.',18,1),(155,'2016-10-15 18:19:19.616730','3','Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.',2,'Changed grammartopics.',18,1),(156,'2016-10-15 18:22:59.084504','14','Gerund and Infinitive',2,'No fields changed.',12,1),(157,'2016-10-16 00:59:59.885184','213','extensively',1,'Added.',14,1),(158,'2016-10-16 01:00:55.839391','214','researched',1,'Added.',14,1),(159,'2016-10-16 01:02:05.285067','215','study',1,'Added.',14,1),(160,'2016-10-16 01:03:59.433010','216','receive',1,'Added.',14,1),(161,'2016-10-16 01:05:00.795546','217','economic',1,'Added.',14,1),(162,'2016-10-16 01:05:22.173002','218','development',1,'Added.',14,1),(163,'2016-10-16 01:06:49.219900','219','subsidy',1,'Added.',14,1),(164,'2016-10-16 01:07:48.216932','220','state',1,'Added.',14,1),(165,'2016-10-16 01:09:19.798543','221','local',1,'Added.',14,1),(166,'2016-10-16 01:09:41.587081','222','goverment',1,'Added.',14,1),(167,'2016-10-16 01:10:04.592887','33','In this ----- researched study, Good Jobs shows that Thote Ltd. has received more than $1 billion in economic development subsidies from state and local governments across the country.',1,'Added.',18,1),(168,'2016-10-16 01:17:18.376771','223','choose',1,'Added.',14,1),(169,'2016-10-16 01:19:11.460740','224','honor',1,'Added.',14,1),(170,'2016-10-16 01:19:34.506351','225','support',1,'Added.',14,1),(171,'2016-10-16 01:20:12.316847','226','medical center',1,'Added.',14,1),(172,'2016-10-16 01:20:57.004733','227','throughout',1,'Added.',14,1),(173,'2016-10-16 01:21:27.325463','34','The Charity Classic Committee chose ----- him for all of the support he has given the Saint Joseph Medical Center throughout the years.',1,'Added.',18,1),(174,'2016-10-16 01:31:55.708351','228','experience',1,'Added.',14,1),(175,'2016-10-16 01:32:42.099062','229','field',1,'Added.',14,1),(176,'2016-10-16 01:33:09.352369','230','international',1,'Added.',14,1),(177,'2016-10-16 01:33:43.124432','231','recognize',1,'Added.',14,1),(178,'2016-10-16 01:34:02.492399','232','merger',1,'Added.',14,1),(179,'2016-10-16 01:34:35.565334','233','acquisition',1,'Added.',14,1),(180,'2016-10-16 01:34:58.504284','234','consultant',1,'Added.',14,1),(181,'2016-10-16 01:35:09.570422','35','----- 10 years of experience in the field, Carolyn Snyder is an internationally recognized merger and acquisition consultant.',1,'Added.',18,1),(182,'2016-10-16 01:35:14.504569','35','----- 10 years of experience in the field, Carolyn Snyder is an internationally recognized merger and acquisition consultant.',2,'No fields changed.',18,1),(183,'2016-10-16 01:35:57.720211','127','fortunately',1,'Added.',17,1),(184,'2016-10-16 01:36:06.107429','128','immediately',1,'Added.',17,1),(185,'2016-10-16 01:36:07.877664','128','immediately',2,'No fields changed.',17,1),(186,'2016-10-16 01:36:23.512222','129','extensively',1,'Added.',17,1),(187,'2016-10-16 01:36:32.136249','130','eventually',1,'Added.',17,1),(188,'2016-10-16 01:37:06.302784','131','will honor',1,'Added.',17,1),(189,'2016-10-16 01:37:19.753853','132','to honor',1,'Added.',17,1),(190,'2016-10-16 01:37:30.656353','133','would honor',1,'Added.',17,1),(191,'2016-10-16 01:37:39.012205','134','to be honored',1,'Added.',17,1),(192,'2016-10-16 01:37:47.372221','135','ahead of',1,'Added.',17,1),(193,'2016-10-16 01:37:54.570440','136','until now',1,'Added.',17,1),(194,'2016-10-16 01:38:07.448115','137','with',1,'Added.',17,1),(195,'2016-10-16 01:38:15.172169','138','past',1,'Added.',17,1),(196,'2016-10-16 02:13:35.903655','235','survey',1,'Added.',14,1),(197,'2016-10-16 02:14:28.799311','236','understand',1,'Added.',14,1),(198,'2016-10-16 02:14:48.995356','237','importance',1,'Added.',14,1),(199,'2016-10-16 02:15:18.931268','238','healthcare',1,'Added.',14,1),(200,'2016-10-16 02:15:41.015372','239','reform',1,'Added.',14,1),(201,'2016-10-16 02:16:14.564171','240','policy',1,'Added.',14,1),(202,'2016-10-16 02:16:35.891291','241','unfamiliar',1,'Added.',14,1),(203,'2016-10-16 02:17:00.799326','242','detail',1,'Added.',14,1),(204,'2016-10-16 02:17:54.523267','243','filled',1,'Added.',14,1),(205,'2016-10-16 02:18:11.846983','241','unfamiliar',2,'Changed main_form.',14,1),(206,'2016-10-16 02:18:28.283833','240','policy',2,'Changed topic.',14,1),(207,'2016-10-16 02:19:08.251293','244','difficult',1,'Added.',14,1),(208,'2016-10-16 02:19:19.178801','36','Although most of the consumers surveyed said they understood the importance of the new healthcare reform policy, many were ----- with details of that policy.',1,'Added.',18,1),(209,'2016-10-16 02:19:32.210972','139','profitable',1,'Added.',17,1),(210,'2016-10-16 02:19:39.611163','140','filled',1,'Added.',17,1),(211,'2016-10-16 02:19:51.549593','141','unfamiliar',1,'Added.',17,1),(212,'2016-10-16 02:20:46.307411','142','difficult',1,'Added.',17,1),(213,'2016-10-16 02:45:01.631368','245','undeniable',1,'Added.',14,1),(214,'2016-10-16 02:45:16.847030','246','paradise',1,'Added.',14,1),(215,'2016-10-16 02:45:40.703207','35','Sports and Games',1,'Added.',10,1),(216,'2016-10-16 02:45:42.234218','247','water sports',1,'Added.',14,1),(217,'2016-10-16 02:45:56.503153','248','hiking',1,'Added.',14,1),(218,'2016-10-16 02:50:59.807417','249','enthusiast',1,'Added.',14,1),(219,'2016-10-16 02:51:21.973392','250','enthusiastic',1,'Added.',14,1),(220,'2016-10-16 02:51:31.470105','37','Corsica is an undeniably paradise for ----- of sea and water sports, as well as for hiking.',1,'Added.',18,1),(221,'2016-10-16 05:38:07.445435','250','enthusiastic',2,'Changed audio.',14,1),(222,'2016-10-16 05:38:35.657771','249','enthusiast',2,'Changed audio.',14,1),(223,'2016-10-16 07:10:41.647858','250','enthusiastic',2,'Changed phonetic.',14,1),(224,'2016-10-16 07:10:49.720797','250','enthusiastic',2,'No fields changed.',14,1),(225,'2016-10-16 07:12:55.602294','250','enthusiastic',2,'Changed phoneticb.',14,1),(226,'2016-10-16 07:13:26.312029','249','enthusiast',2,'Changed phoneticb and phonetica.',14,1),(227,'2016-10-16 07:13:43.527947','250','enthusiastic',2,'Changed phonetica.',14,1),(228,'2016-10-16 07:16:16.637899','248','hiking',2,'Changed audio, phoneticb and phonetica.',14,1),(229,'2016-10-16 07:20:11.359941','247','water sports',2,'Changed audio.',14,1),(230,'2016-10-16 07:20:44.406832','248','hiking',2,'Changed audio.',14,1),(231,'2016-10-16 07:25:44.188025','246','paradise',2,'Changed audio, phoneticb and phonetica.',14,1),(232,'2016-10-16 07:27:48.232363','37','Corsica is an undeniably paradise for ----- of sea and water sports, as well as for hiking.',2,'Changed audio.',18,1),(233,'2016-10-16 07:29:38.073955','36','Although most of the consumers surveyed said they understood the importance of the new healthcare reform policy, many were ----- with details of that policy.',2,'Changed audio.',18,1),(234,'2016-10-16 07:30:51.957834','35','----- 10 years of experience in the field, Carolyn Snyder is an internationally recognized merger and acquisition consultant.',2,'Changed audio.',18,1),(235,'2016-10-16 07:32:16.124035','34','The Charity Classic Committee chose ----- him for all of the support he has given the Saint Joseph Medical Center throughout the years.',2,'Changed audio.',18,1),(236,'2016-10-16 07:34:05.611811','33','In this ----- researched study, Good Jobs shows that Thote Ltd. has received more than $1 billion in economic development subsidies from state and local governments across the country.',2,'Changed audio.',18,1),(237,'2016-10-16 07:35:04.571872','32','An ----- of monthly sales figures is essential to setting future revenue goals.',2,'Changed audio.',18,1),(238,'2016-10-16 07:36:24.292084','31','All employees are asked to turn off  the lights when ----- a vacant room to conserve electricity.',2,'Changed audio.',18,1),(239,'2016-10-16 07:37:17.634257','30','The Textcom sofware from Hahn-Keller Corporation will ---- users to automate numerous repetitive tasks.',2,'Changed audio.',18,1),(240,'2016-10-16 07:38:03.064196','29','The front desk staff requests photo identification ----- a visitor to the Chicago Graphics Offices is not holding a valid pass.',2,'Changed audio.',18,1),(241,'2016-10-16 07:44:23.641596','143','enthusiasts',1,'Added.',17,1),(242,'2016-10-16 07:44:39.583599','144','enthusiastically',1,'Added.',17,1),(243,'2016-10-16 07:44:47.045786','143','enthusiasts',2,'Changed istrue.',17,1),(244,'2016-10-16 07:45:02.369162','145','enthusiastic',1,'Added.',17,1),(245,'2016-10-16 07:45:11.037182','146','enthused',1,'Added.',17,1),(246,'2016-10-17 02:52:26.615308','1','test',1,'Added.',22,1),(247,'2016-10-17 02:52:48.507654','2','exercise',1,'Added.',22,1),(248,'2016-10-17 02:53:12.377853','3','Economy 4 - Test 2 - Vocabulary',2,'Changed testType.',11,1),(249,'2016-10-17 02:53:18.278964','2','Economy 4 - Test 2 - Grammar',2,'Changed testType.',11,1),(250,'2016-10-17 02:54:08.856606','4','Economy 4 - Test 2 - part 1',1,'Added.',11,1),(251,'2016-10-17 02:54:25.218872','5','Economy 4 - Test 2 - part 2',1,'Added.',11,1),(252,'2016-10-17 02:54:48.064965','6','Economy 4 - Test 2 - part 3',1,'Added.',11,1),(253,'2016-10-17 02:55:07.815122','7','Economy 4 - Test 2 - part 4',1,'Added.',11,1),(254,'2016-10-17 02:55:42.258059','8','Economy 4 - Test 2 - part 5',1,'Added.',11,1),(255,'2016-10-17 02:57:37.736640','9','Economy 4 - Test 2 - part 6',1,'Added.',11,1),(256,'2016-10-17 02:58:06.827849','2','Note that the hotel\'s pool and pool deck will be closed until ----- on them is completed later this month.',2,'Changed tests.',18,1),(257,'2016-10-17 02:58:41.471978','3','Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.',2,'Changed tests.',18,1),(258,'2016-10-17 02:58:53.151781','4','Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.',2,'Changed tests.',18,1),(259,'2016-10-17 02:59:05.681759','5','This apartment complex has an ----- exterior design and stylish interior furnishings.',2,'Changed tests.',18,1),(260,'2016-10-17 02:59:21.199750','6','The public is invited to ----- the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.',2,'Changed tests.',18,1),(261,'2016-10-17 02:59:35.373784','7','He ----- delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.',2,'Changed tests.',18,1),(262,'2016-10-17 02:59:50.384102','5','This apartment complex has an ----- exterior design and stylish interior furnishings.',2,'Changed tests.',18,1),(263,'2016-10-18 02:18:50.678616','1','Toeic part 3',1,'Added.',NULL,1),(264,'2016-10-18 02:19:00.765214','2','Toeic part 4',1,'Added.',NULL,1),(265,'2016-10-18 02:24:22.234785','251','assistance',1,'Added.',14,1),(266,'2016-10-18 02:25:46.609744','252','aggravating',1,'Added.',14,1),(267,'2016-10-18 02:26:25.300650','253','headache',1,'Added.',14,1),(268,'2016-10-18 02:26:55.224033','1','Doctor\'s appointment',1,'Added.',NULL,1),(269,'2016-10-18 02:29:25.097411','254','recommend',1,'Added.',14,1),(270,'2016-10-18 02:30:22.485593','255','patient',1,'Added.',14,1),(271,'2016-10-18 02:30:25.304714','256','patient',1,'Added.',14,1),(272,'2016-10-18 02:31:19.082828','257','on short notice',1,'Added.',14,1),(273,'2016-10-18 02:32:30.439380','258','catch a flight',1,'Added.',14,1),(274,'2016-10-18 02:32:33.308546','259','catch a flight',1,'Added.',14,1),(275,'2016-10-18 02:33:43.779527','260','as a matter of fact',1,'Added.',14,1),(276,'2016-10-18 02:34:27.510423','261','acquaintance',1,'Added.',14,1),(277,'2016-10-18 02:34:57.089703','262','doctor',1,'Added.',14,1),(278,'2016-10-18 02:57:33.000072','1','Doctor\'s appointment',2,'Changed vocabs.',NULL,1),(279,'2016-10-18 02:58:07.183848','1','Doctor\'s appointment',1,'Added.',13,1),(280,'2016-10-18 02:58:21.839038','2','Asking for help',1,'Added.',13,1),(281,'2016-10-18 03:01:12.958297','263','squeeze',1,'Added.',14,1),(282,'2016-10-18 03:01:57.938019','1','Jane, I need your assistance with something.',1,'Added.',24,1),(283,'2016-10-18 03:03:38.015257','1','Jane, I need your assistance with something.',2,'Changed audio.',24,1),(284,'2016-10-18 03:05:19.274306','3','illness and diseases',1,'Added.',13,1),(285,'2016-10-18 03:05:22.435635','2','I have an aggravating headache that won’t go away. I don’t think I can wait until I fly back home to get this taken care of.',1,'Added.',24,1),(286,'2016-10-18 03:05:49.443099','2','I have an aggravating headache that won’t go away. I don’t think I can wait until I fly back home to get this taken care of.',2,'Changed audio.',24,1),(287,'2016-10-18 03:07:15.335552','3','I’m sorry to hear that. You’re right. You should do something for your headache right away.',1,'Added.',24,1),(288,'2016-10-18 03:09:25.109772','4','Asking for suggestion',1,'Added.',13,1),(289,'2016-10-18 03:09:35.246398','4','Can you recommend a physician in the area? I’m hoping I can find someone who will see patients on short notice.',1,'Added.',24,1),(290,'2016-10-18 03:11:29.581358','5','Transportation Arrangement',1,'Added.',13,1),(291,'2016-10-18 03:11:33.951901','5','I have a morning flight to catch this coming Wednesday.',1,'Added.',24,1),(292,'2016-10-18 03:12:09.617692','5','I have a morning flight to catch this coming Wednesday.',2,'Changed audio.',24,1),(293,'2016-10-18 03:12:22.755423','4','Can you recommend a physician in the area? I’m hoping I can find someone who will see patients on short notice.',2,'Changed audio.',24,1),(294,'2016-10-18 03:13:44.204697','6','As a matter of fact, an acquaintance of mine is a doctor.',1,'Added.',24,1),(295,'2016-10-18 03:14:10.926989','6','As a matter of fact, an acquaintance of mine is a doctor.',2,'Changed audio.',24,1),(296,'2016-10-18 03:14:17.681716','1','Doctor\'s appointment',2,'Changed url, vocabs, listeningtopics and dictations.',NULL,1),(297,'2016-10-18 03:14:50.496286','4','Asking for and giving  suggestion',2,'Changed title.',13,1),(298,'2016-10-18 03:15:09.127323','3','Illness and Diseases',2,'Changed title.',13,1),(299,'2016-10-18 03:15:22.019462','2','Asking for and giving help',2,'Changed title.',13,1),(300,'2016-10-18 04:05:36.822144','4','Asking for and giving  suggestion',3,'',13,1),(301,'2016-10-18 04:05:36.853538','3','Illness and Diseases',3,'',13,1),(302,'2016-10-18 04:05:36.867912','2','Asking for and giving help',3,'',13,1),(303,'2016-10-19 04:08:13.986539','1','Doctor\'s appointment',2,'Changed url.',NULL,1),(304,'2016-10-19 04:12:50.170061','38','Where is the conversation taking place?',1,'Added.',18,1),(305,'2016-10-19 04:14:29.698125','147','At a bus station',1,'Added.',17,1),(306,'2016-10-19 04:14:47.772451','148','At an office building',1,'Added.',17,1),(307,'2016-10-19 04:14:58.436904','149','At an airport',1,'Added.',17,1),(308,'2016-10-19 04:15:08.366070','149','At an airport',2,'Changed question.',17,1),(309,'2016-10-19 04:15:20.311657','150','At a parking lot',1,'Added.',17,1),(310,'2016-10-19 04:16:32.137019','39','What is the man concerned about?',1,'Added.',18,1),(311,'2016-10-19 04:17:13.804011','40','What does the man recommend?',1,'Added.',18,1),(312,'2016-10-19 04:17:19.762248','1','Doctor\'s appointment',2,'Changed questions.',NULL,1),(313,'2016-10-19 04:18:27.694854','151','The office is closed today.',1,'Added.',17,1),(314,'2016-10-19 04:18:41.333877','152','There are no tickets left.',1,'Added.',17,1),(315,'2016-10-19 04:19:00.609486','153','There are no parking spaces available.',1,'Added.',17,1),(316,'2016-10-19 04:19:14.268647','154','There are no parking spaces available.',1,'Added.',17,1),(317,'2016-10-19 04:19:34.970266','155','The woman has lost her passwords.',1,'Added.',17,1),(318,'2016-10-19 04:19:56.360548','153','There are no parking spaces available.',3,'',17,1),(319,'2016-10-19 04:20:06.658133','151','The office is closed today.',2,'Changed question.',17,1),(320,'2016-10-19 04:20:17.300905','152','There are no tickets left.',2,'Changed question.',17,1),(321,'2016-10-19 04:20:30.149883','155','The woman has lost her passwords.',2,'No fields changed.',17,1),(322,'2016-10-19 04:20:49.169488','156','Trying another place',1,'Added.',17,1),(323,'2016-10-19 04:20:56.915656','154','There are no parking spaces available.',2,'Changed istrue.',17,1),(324,'2016-10-19 04:21:16.754792','157','Paying for a ticket',1,'Added.',17,1),(325,'2016-10-19 04:21:35.159214','158','Going to find a security officer',1,'Added.',17,1),(326,'2016-10-19 04:21:54.741872','159','Returning later',1,'Added.',17,1),(327,'2016-10-19 04:30:30.474126','39','What is the man concerned about?',2,'Changed order.',18,1),(328,'2016-10-19 04:30:39.640441','40','What does the man recommend?',2,'Changed order.',18,1),(329,'2016-10-19 09:06:16.373261','40','What does the man recommend?',2,'No fields changed.',18,1),(330,'2016-10-20 09:35:47.913377','6','As a matter of fact, an acquaintance of mine is a doctor.',2,'No fields changed.',24,1),(331,'2016-10-20 10:44:21.649212','41','What are the speaker talking about?',1,'Added.',18,1),(332,'2016-10-20 10:44:53.710867','42','What does the man ask the woman?',1,'Added.',18,1),(333,'2016-10-20 10:45:59.687030','43','What does the woman offer to do?',1,'Added.',18,1),(334,'2016-10-20 10:47:05.983623','160','Finding a doctor',1,'Added.',17,1),(335,'2016-10-20 10:47:36.621776','161','Making a flight reservation',1,'Added.',17,1),(336,'2016-10-20 10:47:54.355158','162','Hiring a new assistance',1,'Added.',17,1),(337,'2016-10-20 10:48:32.977774','163','Notifying a doctor of a medical procedure',1,'Added.',17,1),(338,'2016-10-20 10:49:08.744405','164','A reservation number',1,'Added.',17,1),(339,'2016-10-20 10:49:23.300326','165','A medical treatment',1,'Added.',17,1),(340,'2016-10-20 10:49:41.883850','166','An acquaintance',1,'Added.',17,1),(341,'2016-10-20 10:49:56.754781','167','A recommendation',1,'Added.',17,1),(342,'2016-10-20 10:50:26.078516','168','Call a friend of hers',1,'Added.',17,1),(343,'2016-10-20 10:50:48.035243','169','Schedule a meeting',1,'Added.',17,1),(344,'2016-10-20 10:51:08.539634','170','Catch a train',1,'Added.',17,1),(345,'2016-10-20 10:51:30.236190','171','Find a nearby station',1,'Added.',17,1),(346,'2016-10-20 10:51:36.952320','168','Call a friend of hers',2,'Changed istrue.',17,1),(347,'2016-10-20 10:52:22.402371','1','Doctor\'s appointment',2,'Changed questions.',NULL,1),(348,'2016-10-21 02:17:23.974282','27','Although ----- findings are encouraging, further research is needed to determine the effectiveness of the advertising campaign.',2,'Changed explanation and translation.',18,1),(349,'2016-10-23 13:16:44.095579','6','As a matter of fact, an acquaintance of mine is a doctor.',2,'Changed vocabs.',24,1),(350,'2016-10-23 13:18:00.567561','4','Can you recommend a physician in the area? I’m hoping I can find someone who will see patients on short notice.',2,'Changed level and vocabs.',24,1),(351,'2016-10-23 13:18:23.369914','3','I’m sorry to hear that. You’re right. You should do something for your headache right away.',2,'Changed vocabs.',24,1),(352,'2016-10-23 13:18:38.212971','2','I have an aggravating headache that won’t go away. I don’t think I can wait until I fly back home to get this taken care of.',2,'Changed level and vocabs.',24,1),(353,'2016-10-23 13:18:42.808501','2','I have an aggravating headache that won’t go away. I don’t think I can wait until I fly back home to get this taken care of.',2,'No fields changed.',24,1),(354,'2016-10-23 13:18:56.378221','1','Jane, I need your assistance with something.',2,'Changed vocabs.',24,1),(355,'2016-10-24 00:44:35.332498','6','As a matter of fact, an acquaintance of mine is a doctor.',2,'Changed vocabs.',24,1),(356,'2016-10-24 00:46:26.032698','2','I have an aggravating headache that won’t go away. I don’t think I can wait until I fly back home to get this taken care of.',2,'No fields changed.',24,1),(357,'2016-10-25 02:32:15.984651','3','Pronunciation',1,'Added.',27,1),(358,'2016-10-25 02:53:38.060813','36','Elementary Vocabulary',1,'Added.',10,1),(359,'2016-10-25 03:36:19.067783','8','phrase',1,'Added.',7,1),(360,'2016-10-25 03:38:38.251553','264','fish',1,'Added.',14,1),(361,'2016-10-25 03:39:44.304982','265','gym',1,'Added.',14,1),(362,'2016-10-25 03:40:21.815000','266','six',1,'Added.',14,1),(363,'2016-10-25 03:41:05.542086','267','begin',1,'Added.',14,1),(364,'2016-10-25 03:41:30.086344','268','minute',1,'Added.',14,1),(365,'2016-10-25 03:41:58.705322','269','dinner',1,'Added.',14,1),(366,'2016-10-25 03:42:42.902889','270','chicken',1,'Added.',14,1),(367,'2016-10-25 03:43:49.162182','271','fifty',1,'Added.',14,1),(368,'2016-10-25 03:44:33.380385','272','Miss Smith is thin.',1,'Added.',14,1),(369,'2016-10-25 03:45:15.623966','273','Jim is in the picture.',1,'Added.',14,1),(370,'2016-10-25 03:45:17.955161','274','Jim is in the picture.',1,'Added.',14,1),(371,'2016-10-25 03:51:27.473707','275','Bring chicken for dinner.',1,'Added.',14,1),(372,'2016-10-25 03:51:29.391798','276','Bring chicken for dinner.',1,'Added.',14,1),(373,'2016-10-25 03:51:31.720931','277','Bring chicken for dinner.',1,'Added.',14,1),(374,'2016-10-25 03:51:45.090599','277','Bring chicken for dinner.',3,'',14,1),(375,'2016-10-25 03:51:45.100225','276','Bring chicken for dinner.',3,'',14,1),(376,'2016-10-25 03:51:45.108330','274','Jim is in the picture.',3,'',14,1),(377,'2016-10-25 03:52:55.156340','278','Listen to this ridiculous list.',1,'Added.',14,1),(378,'2016-10-25 03:53:32.639754','279','The pretty women are busy in the gym.',1,'Added.',14,1),(379,'2016-10-25 03:56:27.831070','1','/ɪ/ (phân biệt với /i:/)',1,'Added.',30,1),(380,'2016-10-25 05:05:45.389554','1','/ɪ/',2,'Changed title.',30,1),(381,'2016-10-25 05:09:13.037274','278','Listen to this ridiculous list.',2,'Changed audio.',14,1),(382,'2016-10-27 07:08:46.405896','250','enthusiastic',2,'No fields changed.',14,1),(383,'2016-11-10 10:04:27.266481','1','Fill up',1,'Added.',34,1),(384,'2016-11-10 10:04:59.311268','1','Question-Answer',2,'Changed text.',34,1),(385,'2016-11-10 10:05:10.553828','2','Fill in the blank',1,'Added.',34,1),(386,'2016-11-11 02:36:15.466123','1','Introduce yourself',1,'Added.',37,1),(387,'2016-11-11 02:36:46.193000','1','Self introduction',2,'Changed text.',37,1),(388,'2016-11-11 08:38:35.792957','2','Fill in the blank',3,'',34,1),(389,'2016-11-11 08:38:56.105572','3','Instruction',1,'Added.',34,1),(390,'2016-11-11 09:48:16.718089','1','Question-Answer',1,'Added.',41,1),(391,'2016-11-11 09:48:30.444927','2','Fill in the blank',1,'Added.',41,1),(392,'2016-11-11 09:58:43.814211','3','Translate',1,'Added.',41,1),(393,'2016-11-15 08:06:57.656463','1','Hi, I’m Joe.',1,'Added.',35,1),(394,'2016-11-15 08:48:39.835340','280','meet',1,'Added.',14,1),(395,'2016-11-15 08:48:57.012046','1','Nice to meet you, Joe.',1,'Added.',36,1),(396,'2016-11-15 08:49:00.241182','1','Hi, I’m Joe.',2,'Changed speakinganswer.',35,1),(397,'2016-11-15 08:53:52.732150','2','I am John Oliver',1,'Added.',36,1),(398,'2016-11-15 08:53:56.388074','2','Who are you?',1,'Added.',35,1),(399,'2016-11-15 09:11:41.175532','3','They are Mary and Ashley',1,'Added.',36,1),(400,'2016-11-15 09:11:47.301436','3','Who are they?',1,'Added.',35,1),(401,'2016-11-15 09:13:06.205827','1','Greeting',2,'Changed text.',37,1),(402,'2016-11-15 09:22:51.780334','1','Introduction',1,'Added.',38,1),(403,'2016-11-15 09:40:35.428474','1','Introduction',2,'Changed video.',38,1),(404,'2016-11-15 09:40:42.477435','1','Introduction',2,'No fields changed.',38,1),(405,'2016-11-15 09:42:36.486628','1','1',1,'Added.',39,1),(406,'2016-11-15 18:51:07.108789','1','Introduction Translate',2,'No fields changed.',39,1),(407,'2016-11-15 18:52:02.745511','2','Introduction Question-Answer',1,'Added.',39,1),(408,'2016-11-15 18:52:40.337761','3','Introduction Fill in the blank',1,'Added.',39,1),(409,'2016-11-15 19:22:16.155191','2','Introduction Question-Answer',2,'No fields changed.',39,1),(410,'2016-11-15 19:22:25.163063','3','Introduction Fill in the blank',2,'No fields changed.',39,1),(411,'2016-11-16 05:19:17.987487','1','Introduction',2,'No fields changed.',38,1),(412,'2016-11-16 05:52:44.995259','1','Introduction',2,'Changed passage.',38,1),(413,'2016-11-16 08:48:47.043237','3','They are Mary and Ashley',2,'Changed image.',36,1),(414,'2016-11-16 08:48:58.100981','2','I am John Oliver',2,'Changed image.',36,1),(415,'2016-11-17 05:49:13.448618','1','Introduction',2,'Changed islast.',38,1),(416,'2016-11-18 00:01:42.621117','3','They are Mary and Ashley',2,'Changed audio.',36,1),(417,'2016-11-18 01:16:42.877921','3','Who are they?',2,'Changed audio.',35,1),(418,'2016-11-18 01:43:22.198369','3','Who are they?',2,'Changed audio.',35,1),(419,'2016-11-18 02:25:05.787729','281','nationality',1,'Added.',14,1),(420,'2016-11-18 02:25:13.905005','4','Talk about Nationality',1,'Added.',36,1),(421,'2016-11-18 02:25:42.032221','4','Talk about Nationality',3,'',36,1),(422,'2016-11-18 03:02:46.334636','282','Vietnamese',1,'Added.',14,1),(423,'2016-11-18 03:03:17.819422','5','We are Vietnamese',1,'Added.',36,1),(424,'2016-11-18 03:19:44.891061','37','Countries and Nationalities',1,'Added.',10,1),(425,'2016-11-18 03:22:57.659167','283','Japanese',1,'Added.',14,1),(426,'2016-11-18 03:23:01.011732','284','Japanese',1,'Added.',14,1),(427,'2016-11-18 03:23:21.278528','6','He is Japanese',1,'Added.',36,1),(428,'2016-11-18 03:23:24.317563','7','He is Japanese',1,'Added.',36,1),(429,'2016-11-18 03:38:01.653236','284','Japanese',2,'Changed wordType.',14,1),(430,'2016-11-18 03:59:07.848496','285','am (Be)',1,'Added.',14,1),(431,'2016-11-18 04:47:20.535402','286','is (Be)',1,'Added.',14,1),(432,'2016-11-18 04:48:46.300719','287','are (Be)',1,'Added.',14,1),(433,'2016-11-18 04:50:10.274301','9','Pronoun',1,'Added.',7,1),(434,'2016-11-18 04:50:21.141239','9','pronoun',2,'Changed text.',7,1),(435,'2016-11-18 04:51:05.297673','288','I',1,'Added.',14,1),(436,'2016-11-18 04:52:01.490462','289','you',1,'Added.',14,1),(437,'2016-11-18 04:53:04.865991','290','he',1,'Added.',14,1),(438,'2016-11-18 04:54:08.408741','291','she',1,'Added.',14,1),(439,'2016-11-18 04:54:46.630042','292','it',1,'Added.',14,1),(440,'2016-11-18 04:55:32.509361','293','we',1,'Added.',14,1),(441,'2016-11-18 04:56:15.454140','294','they',1,'Added.',14,1),(442,'2016-11-18 04:57:10.897403','295','British',1,'Added.',14,1),(443,'2016-11-18 04:57:58.459182','296','American',1,'Added.',14,1),(444,'2016-11-18 05:00:18.787938','8','She is American',1,'Added.',36,1),(445,'2016-11-18 05:02:29.591005','9','Yes, I am',1,'Added.',36,1),(446,'2016-11-18 05:03:50.007263','10','No, I he is not',1,'Added.',36,1),(447,'2016-11-18 05:21:57.746569','10','No, he is not',2,'Changed text.',36,1),(448,'2016-11-18 05:22:32.534878','11','No, I am not',1,'Added.',36,1),(449,'2016-11-18 05:23:12.290903','12','Yes, he is',1,'Added.',36,1),(450,'2016-11-18 05:23:32.574132','11','No, I am not',2,'Changed audioa.',36,1),(451,'2016-11-18 05:23:59.710987','10','No, he is not',2,'Changed audio and audioa.',36,1),(452,'2016-11-18 05:24:16.546776','9','Yes, I am',2,'Changed audioa.',36,1),(453,'2016-11-18 05:25:06.878471','13','No, he isn\'t',1,'Added.',36,1),(454,'2016-11-18 05:26:17.781312','14','Yes, she is',1,'Added.',36,1),(455,'2016-11-18 05:28:29.771125','15','No, she is not',1,'Added.',36,1),(456,'2016-11-18 05:31:00.956412','16','No, she isn\'t',1,'Added.',36,1),(457,'2016-11-18 05:32:02.643945','17','Yes, we are',1,'Added.',36,1),(458,'2016-11-18 05:32:58.477032','18','No, we are not',1,'Added.',36,1),(459,'2016-11-18 05:33:30.638091','19','No, we aren\'t',1,'Added.',36,1),(460,'2016-11-18 05:34:26.834410','20','Yes, they are.',1,'Added.',36,1),(461,'2016-11-18 05:35:11.486063','21','No, they are not.',1,'Added.',36,1),(462,'2016-11-18 05:36:01.987742','22','No, they aren\'t.',1,'Added.',36,1),(463,'2016-11-18 05:37:17.092802','4','Talk about nationality',1,'Added.',35,1),(464,'2016-11-18 05:39:32.432330','5','Are you John Oliver?',1,'Added.',35,1),(465,'2016-11-18 05:40:43.858549','6','Are they Mary and Ashley?',1,'Added.',35,1),(466,'2016-11-18 05:41:44.892537','7','Are you Vietnamese?',1,'Added.',35,1),(467,'2016-11-18 05:43:18.012225','8','Is she Chinese?',1,'Added.',35,1),(468,'2016-11-18 05:44:01.710878','9','Is he British?',1,'Added.',35,1),(469,'2016-11-18 06:09:04.093663','9','Is he British?',2,'Changed speakinganswer.',35,1),(470,'2016-11-18 06:09:34.383344','8','Is she Chinese?',2,'Changed speakinganswer.',35,1),(471,'2016-11-18 06:19:16.195464','1','Introduction',2,'Changed questions and vocabs.',38,1),(472,'2016-11-18 06:20:45.015923','1','Introduction',2,'No fields changed.',38,1),(473,'2016-11-18 06:22:25.470773','2','Introduction Question-Answer',2,'Changed questions.',39,1),(474,'2016-11-18 06:22:44.836310','22','No, they aren\'t.',2,'Changed hint.',36,1),(475,'2016-11-18 06:25:09.810479','21','No, they are not.',2,'Changed hint.',36,1),(476,'2016-11-18 06:25:21.400894','20','Yes, they are.',2,'Changed hint.',36,1),(477,'2016-11-18 06:25:38.403573','21','No, they are not.',2,'Changed hint.',36,1),(478,'2016-11-18 06:25:54.586124','19','No, we aren\'t',2,'Changed hint.',36,1),(479,'2016-11-18 06:26:11.889622','17','Yes, we are',2,'Changed hint.',36,1),(480,'2016-11-18 06:26:13.079489','17','Yes, we are',2,'No fields changed.',36,1),(481,'2016-11-18 06:26:45.967926','12','Yes, he is',2,'Changed hint.',36,1),(482,'2016-11-18 06:26:51.475192','13','No, he isn\'t',2,'Changed hint.',36,1),(483,'2016-11-18 06:26:59.638704','14','Yes, she is',2,'Changed hint.',36,1),(484,'2016-11-18 06:27:07.312882','15','No, she is not',2,'Changed hint.',36,1),(485,'2016-11-18 06:27:12.661798','16','No, she isn\'t',2,'Changed hint.',36,1),(486,'2016-11-18 06:27:24.756279','11','No, I am not',2,'Changed hint.',36,1),(487,'2016-11-18 06:27:31.241132','10','No, he is not',2,'Changed hint.',36,1),(488,'2016-11-18 06:27:37.127998','9','Yes, I am',2,'No fields changed.',36,1),(489,'2016-11-18 06:41:11.563030','288','I',2,'Changed audio.',14,1),(490,'2016-11-18 06:42:29.649489','284','Japanese',3,'',14,1),(491,'2016-11-18 06:48:42.364170','286','is (Be)',2,'Changed audio.',14,1),(492,'2016-11-18 06:51:28.368066','286','is (Be)',2,'Changed definition.',14,1),(493,'2016-11-18 06:51:49.067124','287','are (Be)',2,'Changed definition.',14,1),(494,'2016-11-18 06:52:08.028080','285','am (Be)',2,'Changed definition.',14,1),(495,'2016-11-18 06:57:45.802685','2','Introduction Question-Answer',2,'No fields changed.',39,1),(496,'2016-11-18 07:03:10.974987','1','Introduction Translate',3,'',39,1),(497,'2016-11-18 07:03:30.147188','3','Introduction Fill in the blank',3,'',39,1),(498,'2016-11-18 07:09:41.270057','2','Introduction Question-Answer',2,'Changed order and answers.',39,1),(499,'2016-11-18 07:36:30.735300','1','Introduction',2,'Changed passage.',38,1),(500,'2016-11-18 07:36:50.827513','1','Introduction',2,'No fields changed.',38,1),(501,'2016-11-18 07:39:27.245895','1','Introduction',2,'Changed passage.',38,1),(502,'2016-11-18 07:49:17.501984','4','Introduction Translate',1,'Added.',39,1),(503,'2016-11-19 10:40:38.286484','22','No, they aren\'t.',2,'Changed image.',36,1),(504,'2016-11-19 10:40:45.859985','21','No, they are not.',2,'Changed image.',36,1),(505,'2016-11-19 10:42:33.728399','18','No, we are not',2,'Changed image.',36,1),(506,'2016-11-19 10:43:02.701856','15','No, she is not',2,'Changed image.',36,1),(507,'2016-11-19 10:43:07.404404','16','No, she isn\'t',2,'Changed image.',36,1),(508,'2016-11-19 10:43:17.608400','13','No, he isn\'t',2,'Changed image.',36,1),(509,'2016-11-19 10:43:22.974633','10','No, he is not',2,'Changed image.',36,1),(510,'2016-11-19 10:43:27.419426','21','No, they are not.',2,'No fields changed.',36,1),(511,'2016-11-19 10:43:31.954686','19','No, we aren\'t',2,'No fields changed.',36,1),(512,'2016-11-19 10:44:33.749103','20','Yes, they are.',2,'Changed image.',36,1),(513,'2016-11-19 10:44:47.087963','17','Yes, we are',2,'Changed image.',36,1),(514,'2016-11-19 10:44:52.272957','14','Yes, she is',2,'Changed image.',36,1),(515,'2016-11-19 10:44:59.677941','12','Yes, he is',2,'Changed image.',36,1),(516,'2016-11-19 10:52:39.485859','22','No, they aren\'t.',2,'Changed image.',36,1),(517,'2016-11-19 10:52:47.231615','21','No, they are not.',2,'Changed image.',36,1),(518,'2016-11-19 10:52:55.643400','19','No, we aren\'t',2,'Changed image.',36,1),(519,'2016-11-19 10:53:03.417423','18','No, we are not',2,'Changed image.',36,1),(520,'2016-11-19 10:53:10.474039','16','No, she isn\'t',2,'Changed image.',36,1),(521,'2016-11-19 10:53:20.190676','15','No, she is not',2,'Changed image.',36,1),(522,'2016-11-19 10:53:26.582376','13','No, he isn\'t',2,'Changed image.',36,1),(523,'2016-11-19 10:53:36.504139','11','No, I am not',2,'Changed image.',36,1),(524,'2016-11-19 10:53:43.244757','10','No, he is not',2,'Changed image.',36,1),(525,'2016-11-19 10:53:44.711892','10','No, he is not',2,'Changed image.',36,1),(526,'2016-11-19 10:56:31.133151','22','No, they aren\'t.',2,'Changed image.',36,1),(527,'2016-11-19 10:56:35.803623','21','No, they are not.',2,'Changed image.',36,1),(528,'2016-11-19 10:56:59.964227','20','Yes, they are.',2,'Changed image.',36,1),(529,'2016-11-19 10:57:05.553114','19','No, we aren\'t',2,'Changed image.',36,1),(530,'2016-11-19 10:57:10.436295','18','No, we are not',2,'Changed image.',36,1),(531,'2016-11-19 10:57:15.564179','17','Yes, we are',2,'Changed image.',36,1),(532,'2016-11-19 10:57:21.999763','16','No, she isn\'t',2,'Changed image.',36,1),(533,'2016-11-19 10:57:26.343223','15','No, she is not',2,'Changed image.',36,1),(534,'2016-11-19 10:57:32.437374','14','Yes, she is',2,'Changed image.',36,1),(535,'2016-11-19 10:57:36.016104','13','No, he isn\'t',2,'Changed image.',36,1),(536,'2016-11-19 10:57:40.322891','12','Yes, he is',2,'Changed image.',36,1),(537,'2016-11-19 10:57:44.794254','11','No, I am not',2,'Changed image.',36,1),(538,'2016-11-19 10:57:50.930750','10','No, he is not',2,'Changed image.',36,1),(539,'2016-11-19 11:29:53.619542','8','She is American',2,'Changed image.',36,1),(540,'2016-11-19 11:58:24.392482','1','Introduction',2,'Changed passage.',38,1),(541,'2016-11-19 12:10:26.045534','1','Introduction',2,'Changed passage.',38,1),(542,'2016-11-19 12:24:52.195879','2','I\'m John Oliver',2,'Changed text.',36,1),(543,'2016-11-19 12:59:24.419624','1','Introduction',2,'Changed passage.',38,1),(544,'2016-11-20 09:48:35.611855','1','Introduction - Verb To Be (1)',2,'Changed text.',38,1),(545,'2016-11-20 10:03:23.402158','1','Introduction - Verb To Be (1)',2,'Changed passage.',38,1),(546,'2016-11-20 10:16:38.891364','1','Introduction - Verb To Be (1)',2,'No fields changed.',38,1),(547,'2016-11-20 10:44:39.810450','1','Introduction - Verb To Be (1)',2,'Changed passage.',38,1),(548,'2016-11-20 12:19:04.151195','1','Introduction',2,'Changed text.',38,1),(549,'2016-11-22 01:38:09.042252','23','I am Jessica',1,'Added.',36,1),(550,'2016-11-22 01:46:53.422633','24','I\'m Kate',1,'Added.',36,1),(551,'2016-11-22 02:09:21.131477','25','I’m Justin',1,'Added.',36,1),(552,'2016-11-22 02:09:59.480778','26','You are Blake',1,'Added.',36,1),(553,'2016-11-22 02:10:18.914408','2','Who are you?',2,'Changed speakinganswer.',35,1),(554,'2016-11-22 02:25:32.414593','10','Presentation: Name (I)',1,'Added.',35,1),(555,'2016-11-22 02:27:13.832779','27','You’re Tom',1,'Added.',36,1),(556,'2016-11-22 02:29:31.868354','28','She is Nora',1,'Added.',36,1),(557,'2016-11-22 02:30:12.952557','29','She’s Anne',1,'Added.',36,1),(558,'2016-11-22 02:31:07.396109','30','He is Andy',1,'Added.',36,1),(559,'2016-11-22 02:31:42.392325','31','He’s Tommy',1,'Added.',36,1),(560,'2016-11-22 02:32:25.116011','32','We’re the Millers',1,'Added.',36,1),(561,'2016-11-22 02:33:17.907336','33','They are Ted and Amy',1,'Added.',36,1),(562,'2016-11-22 02:33:51.807767','34','They’re John and Sam',1,'Added.',36,1),(563,'2016-11-22 02:40:55.407335','10','Presentation: Name',2,'Changed text and speakinganswer.',35,1),(564,'2016-11-22 02:58:33.321001','35','I’m French',1,'Added.',36,1),(565,'2016-11-22 02:58:51.508150','35','I’m French',2,'No fields changed.',36,1),(566,'2016-11-22 02:59:34.903326','36','You are Spanish',1,'Added.',36,1),(567,'2016-11-22 03:00:07.727357','37','You’re Australian',1,'Added.',36,1),(568,'2016-11-22 03:07:26.620143','38','She is German',1,'Added.',36,1),(569,'2016-11-22 03:10:17.307559','39','She’s Canadian',1,'Added.',36,1),(570,'2016-11-22 03:14:11.880133','40','He is English',1,'Added.',36,1),(571,'2016-11-22 03:15:00.456618','40','He is English',2,'Changed audio and audioa.',36,1),(572,'2016-11-22 03:15:46.288267','41','He’s Italian',1,'Added.',36,1),(573,'2016-11-22 03:16:17.913971','42','We are Brazilian',1,'Added.',36,1),(574,'2016-11-22 03:16:46.699638','43','We’re Russian',1,'Added.',36,1),(575,'2016-11-22 03:17:17.110490','44','They are Thai',1,'Added.',36,1),(576,'2016-11-22 03:17:52.341343','45','They’re Portuguese',1,'Added.',36,1),(577,'2016-11-22 03:18:24.066504','46','They’re Danish',1,'Added.',36,1),(578,'2016-11-22 03:18:38.044498','4','Presentation: Nationality',2,'Changed text.',35,1),(579,'2016-11-22 03:19:00.231553','4','Presentation: Nationality',2,'Changed speakinganswer.',35,1),(580,'2016-11-22 10:19:38.514149','2','Introduction: Verb To Be',1,'Added.',38,1),(581,'2016-11-22 10:21:02.901836','5','Introduction: Verb To Be Translate',1,'Added.',39,1),(582,'2016-11-22 10:31:13.784224','35','I’m French',2,'Changed audioa.',36,1),(583,'2016-11-22 10:32:33.454981','1','Introduction: Verb To Be (2)',2,'Changed order, passage and text.',38,1),(584,'2016-11-22 10:34:05.780967','33','They are Ted and Amy',2,'Changed audio and audioa.',36,1),(585,'2016-11-22 13:48:29.229022','2','Introduction: Verb To Be',2,'No fields changed.',38,1),(586,'2016-11-22 13:49:16.311860','2','Introduction: Nationality',2,'Changed text, questions and vocabs.',38,1),(587,'2016-11-22 13:51:03.059044','3','Introduction: Name',1,'Added.',38,1),(588,'2016-11-22 13:51:38.455627','5','Introduction: Nationality Translate',2,'Changed answers.',39,1),(589,'2016-11-22 13:52:23.521997','6','Introduction: Name Translate',1,'Added.',39,1),(590,'2016-11-23 06:41:39.542125','297','French',1,'Added.',14,1),(591,'2016-11-23 06:42:44.550200','298','Spanish',1,'Added.',14,1),(592,'2016-11-23 07:14:34.019037','299','Australian',1,'Added.',14,1),(593,'2016-11-23 07:22:25.120888','300','German',1,'Added.',14,1),(594,'2016-11-23 07:23:09.183022','301','Canadian',1,'Added.',14,1),(595,'2016-11-23 07:23:42.619199','301','Canadian',2,'Changed phoneticb and phonetica.',14,1),(596,'2016-11-25 13:45:17.564140','38','Numbers',1,'Added.',10,1),(597,'2016-11-25 13:46:19.996571','302','twelve',1,'Added.',14,1),(598,'2016-11-25 13:46:26.840392','47','I’m 12 years old.',1,'Added.',36,1),(599,'2016-11-25 13:46:35.431347','11','How old are you?',1,'Added.',35,1),(600,'2016-11-25 13:47:30.792118','303','one',1,'Added.',14,1),(601,'2016-11-25 13:48:17.643874','304','two',1,'Added.',14,1),(602,'2016-11-25 13:49:06.189175','305','three',1,'Added.',14,1),(603,'2016-11-25 13:50:15.208259','306','four',1,'Added.',14,1),(604,'2016-11-25 13:51:07.551320','307','five',1,'Added.',14,1),(605,'2016-11-25 13:51:52.572661','308','six',1,'Added.',14,1),(606,'2016-11-25 13:52:35.251975','309','seven',1,'Added.',14,1),(607,'2016-11-25 13:53:21.826821','310','eight',1,'Added.',14,1),(608,'2016-11-25 13:54:16.466282','311','nine',1,'Added.',14,1),(609,'2016-11-25 13:55:25.691318','312','ten',1,'Added.',14,1),(610,'2016-11-25 13:56:17.949496','313','eleven',1,'Added.',14,1),(611,'2016-11-25 13:57:15.817606','302','twelve',2,'No fields changed.',14,1),(612,'2016-11-25 13:58:08.605030','314','thirteen',1,'Added.',14,1),(613,'2016-11-25 13:59:04.753501','315','fourteen',1,'Added.',14,1),(614,'2016-11-25 13:59:54.137966','316','fifteen',1,'Added.',14,1),(615,'2016-11-25 14:04:53.882753','317','sixteen',1,'Added.',14,1),(616,'2016-11-25 14:05:46.576411','318','seventeen',1,'Added.',14,1),(617,'2016-11-25 14:06:34.987325','319','eighteen',1,'Added.',14,1),(618,'2016-11-25 14:07:22.499816','320','nineteen',1,'Added.',14,1),(619,'2016-11-25 14:08:05.514667','321','twenty',1,'Added.',14,1),(620,'2016-11-25 14:09:13.573660','48','I’m 4 years old.',1,'Added.',36,1),(621,'2016-11-25 14:10:02.238304','49','I’m 12 years old.',1,'Added.',36,1),(622,'2016-11-25 14:10:08.916641','11','How old are you?',2,'Changed speakinganswer.',35,1),(623,'2016-11-25 14:11:36.352686','50','She is 14 years old.',1,'Added.',36,1),(624,'2016-11-25 14:12:10.522954','51','She’s 5 years old.',1,'Added.',36,1),(625,'2016-11-25 14:12:52.615529','52','She’s 11 years old.',1,'Added.',36,1),(626,'2016-11-25 14:12:58.329182','12','How old is she?',1,'Added.',35,1),(627,'2016-11-25 14:15:09.540389','53','He is 8 years old.',1,'Added.',36,1),(628,'2016-11-25 14:16:03.807304','54','He’s 17 years old.',1,'Added.',36,1),(629,'2016-11-25 14:16:31.527506','55','He’s 19 years old.',1,'Added.',36,1),(630,'2016-11-25 14:16:35.881374','13','How old is he?',1,'Added.',35,1),(631,'2016-11-25 14:18:05.298097','56','They are 15 years old.',1,'Added.',36,1),(632,'2016-11-25 14:18:39.103279','57','They’re 13 years old.',1,'Added.',36,1),(633,'2016-11-25 14:19:04.277500','58','They’re 20 years old.',1,'Added.',36,1),(634,'2016-11-25 14:19:06.793682','14','How old are they?',1,'Added.',35,1),(635,'2016-11-25 14:24:13.777522','4','Asking the age: Number',1,'Added.',38,1),(636,'2016-11-25 14:25:31.965632','7','Asking the age: Number Translate',1,'Added.',39,1),(637,'2016-11-25 14:26:13.450701','7','Asking the age: Number Translate',2,'No fields changed.',39,1),(638,'2016-11-25 14:26:14.210112','7','Asking the age: Number Translate',2,'No fields changed.',39,1),(639,'2016-11-25 14:26:28.981829','7','Asking the age: Number Translate',2,'Changed answers.',39,1),(640,'2016-11-25 14:27:21.037727','8','Asking the age: Number Question-Answer',1,'Added.',39,1),(641,'2016-11-26 01:18:25.044111','1','Short vowel /ɪ/',2,'Changed title.',30,1),(642,'2016-11-26 03:34:21.580021','322','scene',1,'Added.',14,1),(643,'2016-11-26 03:36:44.107635','323','complete',1,'Added.',14,1),(644,'2016-11-26 03:37:45.280124','324','tea',1,'Added.',14,1),(645,'2016-11-26 03:40:05.544300','325','meal',1,'Added.',14,1),(646,'2016-11-26 03:41:13.494386','326','meat',1,'Added.',14,1),(647,'2016-11-26 03:42:33.091175','327','heat',1,'Added.',14,1),(648,'2016-11-26 03:43:29.344774','328','cheap',1,'Added.',14,1),(649,'2016-11-26 07:51:00.707523','329','free',1,'Added.',14,1),(650,'2016-11-27 18:03:26.339774','146','employee',2,'Changed audio, phoneticb and phonetica.',14,1),(651,'2016-11-27 18:06:20.172414','330','agree',1,'Added.',14,1),(652,'2016-11-28 01:21:22.167050','216','receive',2,'Changed engdefinition, main_form, audio, phoneticb and phonetica.',14,1),(653,'2016-11-28 01:23:38.599756','331','receipt',1,'Added.',14,1),(654,'2016-11-28 01:29:01.143272','1','Short vowel /ɪ/',2,'Changed text.',30,1),(655,'2016-11-28 01:31:51.620403','332','chief',1,'Added.',14,1),(656,'2016-11-28 01:37:33.190140','2','Long vowel /i:/',1,'Added.',30,1),(657,'2016-11-28 02:55:35.588361','333','men',1,'Added.',14,1),(658,'2016-11-28 02:59:12.669798','334','head',1,'Added.',14,1),(659,'2016-11-28 02:59:22.028040','333','men',2,'Changed audioa.',14,1),(660,'2016-11-28 03:00:29.301099','335','pen',1,'Added.',14,1),(661,'2016-11-28 03:10:57.460813','336','hell',1,'Added.',14,1),(662,'2016-11-28 03:12:36.304188','337','gel',1,'Added.',14,1),(663,'2016-11-28 03:14:03.968395','338','dead',1,'Added.',14,1),(664,'2016-11-28 03:14:18.003726','338','dead',2,'Changed main_form.',14,1),(665,'2016-11-28 03:16:42.971846','339','shell',1,'Added.',14,1),(666,'2016-11-28 03:20:38.292860','340','many',1,'Added.',14,1),(667,'2016-11-28 03:24:09.543689','341','anyone',1,'Added.',14,1),(668,'2016-11-28 03:27:08.371718','342','send',1,'Added.',14,1),(669,'2016-11-28 03:28:12.715362','343','get',1,'Added.',14,1),(670,'2016-11-28 03:31:07.537863','344','member',1,'Added.',14,1),(671,'2016-11-28 03:32:24.348899','345','heavy',1,'Added.',14,1),(672,'2016-11-28 03:43:09.295773','3','Short vowel /e/',1,'Added.',30,1),(673,'2016-11-28 03:44:50.225619','2','Long vowel /i:/',2,'Changed text.',30,1),(674,'2016-11-28 03:45:03.394177','1','Short vowel /ɪ/',2,'Changed text.',30,1),(675,'2016-11-28 04:29:45.578169','4','Short vowel /æ/',1,'Added.',30,1),(676,'2016-11-28 04:33:12.423655','346','cat',1,'Added.',14,1),(677,'2016-11-28 04:34:05.332120','347','sad',1,'Added.',14,1),(678,'2016-11-28 04:35:03.901403','348','fat',1,'Added.',14,1),(679,'2016-11-28 04:35:05.259267','349','fat',1,'Added.',14,1),(680,'2016-11-28 04:35:22.232432','349','fat',3,'',14,1),(681,'2016-11-28 04:35:31.075009','348','fat',2,'Changed phonetica.',14,1),(682,'2016-11-28 04:38:08.913785','350','fan',1,'Added.',14,1),(683,'2016-11-28 04:40:08.951465','351','dam',1,'Added.',14,1),(684,'2016-11-28 04:41:58.625091','352','captain',1,'Added.',14,1),(685,'2016-11-28 04:45:21.502018','353','latter',1,'Added.',14,1),(686,'2016-11-28 04:49:07.881557','354','manner',1,'Added.',14,1),(687,'2016-11-28 04:51:09.795426','355','can\'t',1,'Added.',14,1),(688,'2016-11-28 04:51:31.056161','4','Short vowel /æ/',2,'No fields changed.',30,1),(689,'2016-11-28 04:52:34.881645','4','Short vowel /æ/',2,'Changed vocabs.',30,1),(690,'2016-11-28 05:10:05.357368','5','Short vowel /ʌ/',1,'Added.',30,1),(691,'2016-11-28 05:17:06.187287','264','fish',2,'Changed audio.',14,1),(692,'2016-11-28 05:18:08.092928','265','gym',2,'Changed audio.',14,1),(693,'2016-11-28 05:18:30.487733','266','six',2,'Changed audio.',14,1),(694,'2016-11-28 05:18:48.529879','268','minute',2,'Changed audio.',14,1),(695,'2016-11-28 05:19:01.732544','269','dinner',2,'Changed audio.',14,1),(696,'2016-11-28 05:19:17.208487','270','chicken',2,'Changed audio.',14,1),(697,'2016-11-28 05:19:38.044298','271','fifty',2,'Changed topic and audio.',14,1),(698,'2016-11-28 05:42:45.332536','259','catch a flight',3,'',14,1),(699,'2016-11-28 05:45:10.159043','356','cup',1,'Added.',14,1),(700,'2016-11-28 05:47:34.287627','357','cut',1,'Added.',14,1),(701,'2016-11-28 05:49:08.109427','358','but',1,'Added.',14,1),(702,'2016-11-28 07:50:23.813653','359','shut',1,'Added.',14,1),(703,'2016-11-28 07:52:43.310111','360','come',1,'Added.',14,1),(704,'2016-11-28 07:52:50.925867','360','come',2,'Changed phonetica.',14,1),(705,'2016-11-28 08:45:19.249939','10','determiner',1,'Added.',7,1),(706,'2016-11-28 08:47:09.543758','361','some',1,'Added.',14,1),(707,'2016-11-28 08:48:11.926194','362','dove',1,'Added.',14,1),(708,'2016-11-28 08:49:07.284593','363','honey',1,'Added.',14,1),(709,'2016-11-28 08:50:11.727508','364','company',1,'Added.',14,1),(710,'2016-11-28 08:51:20.106257','365','uneasy',1,'Added.',14,1),(711,'2016-11-28 08:51:25.904105','365','uneasy',2,'No fields changed.',14,1),(712,'2016-11-28 08:53:29.878521','366','flood',1,'Added.',14,1),(713,'2016-11-28 08:54:43.346772','367','cousin',1,'Added.',14,1),(714,'2016-11-28 08:55:45.477800','368','country',1,'Added.',14,1),(715,'2016-11-28 08:58:24.244712','369','tough',1,'Added.',14,1),(716,'2016-11-28 09:00:21.202462','5','Short vowel /ʌ/',2,'Changed vocabs.',30,1),(717,'2016-11-28 09:43:34.267887','370','bar',1,'Added.',14,1),(718,'2016-11-28 09:47:14.784999','371','hard',1,'Added.',14,1),(719,'2016-11-28 09:48:43.390788','372','heart',1,'Added.',14,1),(720,'2016-11-28 09:49:51.842516','373','smart',1,'Added.',14,1),(721,'2016-11-28 09:51:54.969933','374','guard',1,'Added.',14,1),(722,'2016-11-28 09:55:30.187748','375','laugh',1,'Added.',14,1),(723,'2016-11-28 09:57:01.176916','376','aunt',1,'Added.',14,1),(724,'2016-11-28 09:58:29.385622','6','Long vowel /ɑː/',1,'Added.',30,1),(725,'2016-11-28 10:00:23.630175','6','Long vowel /ɑː/',2,'Changed text and vocabs.',30,1),(726,'2016-11-28 10:39:04.980837','7','Short vowel /ɒ/',1,'Added.',30,1),(727,'2016-11-28 10:47:08.147411','8','Long vowel /ɔ:/',1,'Added.',30,1),(728,'2016-11-28 10:47:19.008205','8','Long vowel /ɔ:/',2,'No fields changed.',30,1),(729,'2016-12-24 09:30:18.534691','4','test',1,'Added.',34,1),(730,'2016-12-24 09:30:39.238144','14','How old are they?',2,'No fields changed.',35,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(17,'toeic','answer'),(32,'toeic','answertext'),(24,'toeic','dictation'),(12,'toeic','grammartopic'),(9,'toeic','level'),(13,'toeic','listeningtopic'),(15,'toeic','passage'),(33,'toeic','phrase'),(30,'toeic','pronunciationlesson'),(18,'toeic','question'),(31,'toeic','questiontext'),(36,'toeic','speakinganswer'),(38,'toeic','speakinglesson'),(39,'toeic','speakingpractice'),(41,'toeic','speakingpracticetype'),(35,'toeic','speakingquestion'),(34,'toeic','speakingquestiontype'),(37,'toeic','speakingtopic'),(11,'toeic','test'),(22,'toeic','testtype'),(10,'toeic','topic'),(8,'toeic','type'),(19,'toeic','useranswer'),(21,'toeic','useranswergrammarquiz'),(29,'toeic','useranswervideolesson'),(25,'toeic','userdictation'),(40,'toeic','userspeakinganswer'),(42,'toeic','usertest'),(20,'toeic','uservocab'),(28,'toeic','videolesson'),(27,'toeic','videolessontype'),(14,'toeic','vocab'),(7,'toeic','wordtype');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-10-14 11:04:25.926834'),(2,'auth','0001_initial','2016-10-14 11:04:29.914064'),(3,'admin','0001_initial','2016-10-14 11:04:30.618013'),(4,'admin','0002_logentry_remove_auto_add','2016-10-14 11:04:30.663030'),(5,'contenttypes','0002_remove_content_type_name','2016-10-14 11:04:30.899377'),(6,'auth','0002_alter_permission_name_max_length','2016-10-14 11:04:30.986542'),(7,'auth','0003_alter_user_email_max_length','2016-10-14 11:04:31.065319'),(8,'auth','0004_alter_user_username_opts','2016-10-14 11:04:31.092486'),(9,'auth','0005_alter_user_last_login_null','2016-10-14 11:04:31.222232'),(10,'auth','0006_require_contenttypes_0002','2016-10-14 11:04:31.232256'),(11,'auth','0007_alter_validators_add_error_messages','2016-10-14 11:04:31.253166'),(12,'sessions','0001_initial','2016-10-14 11:04:31.870221'),(13,'toeic','0001_initial','2016-10-14 11:04:34.099347'),(14,'toeic','0002_grammartopic_test_vocab','2016-10-14 11:04:36.860637'),(15,'toeic','0003_auto_20161011_1502','2016-10-14 11:04:44.740787'),(16,'toeic','0004_auto_20161011_1508','2016-10-14 11:04:44.988570'),(17,'toeic','0005_auto_20161011_1520','2016-10-14 11:04:47.866430'),(18,'toeic','0006_vocab_image','2016-10-14 11:04:48.040170'),(19,'toeic','0007_auto_20161011_1946','2016-10-14 11:04:48.196824'),(20,'toeic','0008_auto_20161012_0905','2016-10-14 11:04:48.403731'),(21,'toeic','0009_listeningtopic_video','2016-10-14 11:04:51.030078'),(22,'toeic','0010_useranswer_useranswergrammarquiz_uservocab','2016-10-14 11:04:53.635323'),(23,'toeic','0011_remove_answer_question','2016-10-14 11:04:53.758148'),(24,'toeic','0012_question_answers','2016-10-14 11:04:54.559107'),(25,'toeic','0013_grammartopic_engtitle','2016-10-14 11:04:54.677827'),(26,'toeic','0014_auto_20161013_0145','2016-10-14 11:04:54.727929'),(27,'toeic','0015_auto_20161013_0230','2016-10-14 11:04:55.278788'),(28,'toeic','0016_auto_20161013_0231','2016-10-14 11:04:55.494382'),(29,'toeic','0017_auto_20161014_1050','2016-10-14 11:04:56.821852'),(30,'toeic','0018_remove_question_grammartopics','2016-10-14 11:04:56.885513'),(31,'toeic','0019_remove_question_topics','2016-10-14 11:04:56.944945'),(32,'toeic','0020_question_topics','2016-10-14 11:30:47.707552'),(33,'toeic','0021_question_grammartopics','2016-10-14 11:37:08.894019'),(34,'toeic','0022_useranswer_session','2016-10-14 23:41:26.079577'),(35,'toeic','0023_remove_useranswer_session','2016-10-15 00:18:11.858731'),(36,'toeic','0024_useranswer_session','2016-10-15 00:19:38.663731'),(37,'toeic','0025_auto_20161015_0226','2016-10-15 02:26:59.243792'),(38,'toeic','0026_auto_20161016_0535','2016-10-16 05:35:38.898596'),(39,'toeic','0027_auto_20161016_0638','2016-10-16 07:03:29.286540'),(40,'toeic','0028_auto_20161016_0711','2016-10-16 07:12:27.356705'),(41,'toeic','0029_auto_20161017_0249','2016-10-17 02:49:34.932246'),(42,'toeic','0030_auto_20161018_0215','2016-10-18 02:16:36.994862'),(43,'toeic','0031_userdictation','2016-10-18 02:16:38.167683'),(44,'toeic','0032_auto_20161018_0256','2016-10-18 02:56:25.317205'),(45,'toeic','0033_auto_20161018_0303','2016-10-18 03:03:07.588710'),(46,'toeic','0034_auto_20161019_0328','2016-10-19 03:34:57.265138'),(47,'toeic','0035_question_order','2016-10-19 04:28:54.443967'),(48,'toeic','0036_auto_20161019_0815','2016-10-19 08:15:33.505872'),(49,'toeic','0037_auto_20161022_1308','2016-10-22 13:09:10.245583'),(50,'toeic','0038_uservocab_typeoftest','2016-10-22 13:40:17.876141'),(51,'toeic','0039_dictation_vocabs','2016-10-23 13:13:49.574427'),(52,'toeic','0040_auto_20161024_0206','2016-10-24 02:06:42.595587'),(53,'toeic','0041_pronunciationlesson','2016-10-25 02:24:31.591149'),(54,'toeic','0042_auto_20161027_0702','2016-10-27 07:02:16.848196'),(55,'toeic','0043_auto_20161027_0706','2016-10-27 07:06:47.103345'),(56,'toeic','0044_auto_20161110_0723','2016-11-10 07:24:12.105560'),(57,'toeic','0045_auto_20161111_0305','2016-11-11 03:06:40.901748'),(58,'toeic','0046_auto_20161111_0306','2016-11-11 03:06:41.270648'),(59,'toeic','0047_auto_20161111_0604','2016-11-11 09:42:25.635096'),(60,'toeic','0048_speakingquestion_textwithblank','2016-11-11 09:42:26.415103'),(61,'toeic','0049_auto_20161111_1022','2016-11-11 10:22:32.329046'),(62,'toeic','0050_auto_20161115_0939','2016-11-15 09:39:38.248041'),(63,'toeic','0051_auto_20161115_1845','2016-11-15 18:45:41.138715'),(64,'toeic','0052_auto_20161115_1928','2016-11-15 19:28:49.419981'),(65,'toeic','0053_auto_20161116_0844','2016-11-16 08:44:40.586893'),(66,'toeic','0054_auto_20161116_0855','2016-11-16 08:55:45.618486'),(67,'toeic','0055_auto_20161117_0542','2016-11-17 05:42:36.208419'),(68,'toeic','0056_vocab_audioa','2016-11-18 04:44:05.206051'),(69,'toeic','0057_speakingquestion_audioa','2016-11-18 04:44:05.446436'),(70,'toeic','0058_speakinganswer_audioa','2016-11-18 04:44:05.655088'),(71,'toeic','0059_speakinglesson_vocabs','2016-11-18 06:14:44.725587'),(72,'toeic','0060_speakinglesson_order','2016-11-20 09:54:33.978583'),(73,'auth','0008_alter_user_username_max_length','2016-12-27 09:18:21.454096'),(74,'toeic','0061_auto_20161227_0716','2016-12-27 09:18:29.267131'),(75,'toeic','0062_usertest','2016-12-27 14:43:58.525482'),(76,'toeic','0063_auto_20161229_0457','2016-12-29 04:57:49.332624'),(77,'toeic','0064_useranswer_usertest','2016-12-29 04:58:41.484896'),(78,'toeic','0065_usertest_percentage','2016-12-29 07:24:04.693218'),(79,'toeic','0066_auto_20161229_1021','2016-12-29 10:22:15.945577');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3v7ddn9k9u0mx29o5jk8w8esob3azs64','NWRkZDRjNDg0OTBmN2M2YTFkNDUwZTFlOTE4NTZhOWQ3NDQ5ZjdjYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjFjYzExNTU3MjBkNzc5ZTcxZTM4Mzk5MWE4NTI1M2MxYTQ0OTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9','2016-11-09 15:48:53.547363'),('6f0w5djtirsu4m5jqyq9vwkoxlzgkrk7','ZTc4NWQzNWEyOTRjZjQyOGFjYmFkYjkyMjdiNGEzZmZmOWUzZmViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2MTU0NTllOWQ3MzdjN2RkYjk2YmFhOTc0NjNiM2MxYzg1NmY2NGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2016-11-09 13:26:53.129075'),('84e5u00wiatrc1mngduug570tqo39pjg','NzI2YzU4NGEyNzA4NzRjYjdlZWRkMjRjODhmZTk5YTYxNzQ4ODlhNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjA3OGIyMDFlNDlhMmIyNDY3ZTU5YmM1NzVhMTFhMWRiZjAxZjZiZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=','2016-11-03 09:50:04.412428'),('95gkcy8td59q6aft0jydpv6ni6xpfaim','ZGFjNzE1MzBlYzY3M2U5ZTNkMmJhMjk4MmJlYTEwNmZjMzNmNDY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0YTEyZjU3YTFiMWMwNWI3Y2YzM2JlOWQ5MTQ0NzZjZGUxMDM3ZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-03 09:01:08.393293'),('b8q6zvfi2b0ixwasuzut7exl0p3vt12i','OWFhZjY0ZmFkZDIwNDNkYTMzOTQ4YzkzYTA1YTgyZDU5NmM4OGNiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkOGE2NzFhYWRhYWFmNWJlMTQwMTc4OGY1NDhhNTc2OTU1MDA2NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-11-01 02:16:15.342277'),('brz0gfdkevxuocomkfd6bbxo0f4eh69a','ZGFjNzE1MzBlYzY3M2U5ZTNkMmJhMjk4MmJlYTEwNmZjMzNmNDY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0YTEyZjU3YTFiMWMwNWI3Y2YzM2JlOWQ5MTQ0NzZjZGUxMDM3ZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-07 10:14:04.801504'),('coaz9u6gxg1zsnocw2c1fik2j60zn3rm','MTljMGFkMzNmYWNhYzA3NDcxYzcwMjZiYzg4YzM2ZWUxMjdjMWQ4MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjU5NzBiZWRkNzhhOTU5NGZkMDI5YzQ3ZmEyMDUwZTQ0OGEyMDkzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-11-03 13:50:15.816520'),('fp7l66w5l314jcqlhar4tkkyr1ahlmzy','ZjJjOTQwYTZkYzViZWM3YjU1NzZjYmIxMmU0NzBkZmFjNzE4NDZhODp7Il9hdXRoX3VzZXJfaGFzaCI6IjRhNjMyOTk2ZGUwM2Q1NWIxYWVlYmQ5MGYyNjA0MDc4YTVhOTViOTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-10-29 03:27:14.857041'),('fzgkmjszs008fkxgbqkh6g2zvzqooql6','OWFhZjY0ZmFkZDIwNDNkYTMzOTQ4YzkzYTA1YTgyZDU5NmM4OGNiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkOGE2NzFhYWRhYWFmNWJlMTQwMTc4OGY1NDhhNTc2OTU1MDA2NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-10-28 13:01:27.942751'),('izcwbfi8vu3pacqcqevmzjqgg4zakkw2','MDUzZWExMzdjMjY2MGU3Mjk4ZDc5NzJmOWZhZjdmZDE2NTk4ZDUwYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwZWNmNjE3Y2Q1YTBiZmQxOTgwZWQ4OGYwZjhlOTQ0OTM2NDU0MmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=','2016-11-03 08:16:17.157601'),('j9p3w0e6xt2g9b343ea8agzwbystix74','ZTc4NWQzNWEyOTRjZjQyOGFjYmFkYjkyMjdiNGEzZmZmOWUzZmViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImY2MTU0NTllOWQ3MzdjN2RkYjk2YmFhOTc0NjNiM2MxYzg1NmY2NGEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=','2016-10-28 16:21:04.219369'),('l8tv8jbchww6yc8801qbqzs5qwt801d4','NWRkZDRjNDg0OTBmN2M2YTFkNDUwZTFlOTE4NTZhOWQ3NDQ5ZjdjYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE4YjFjYzExNTU3MjBkNzc5ZTcxZTM4Mzk5MWE4NTI1M2MxYTQ0OTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9','2016-11-09 09:34:39.553998'),('lxglyen77xvariin2emuyqwxagtah922','MTQzNTQ5ZmNlYzJhM2M2OThiY2Y2OWI3NTQ3NzE1MWYwN2VlNGM0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1MzM5ZDFiZDhiZDdjZDBlYzQ4YTM5Y2E0YzBmMDYxYjg3MTQwYWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=','2016-11-02 07:49:02.495246'),('wyv0owq62n8tewh7vnx7ruwg9sgny0ul','ZGFjNzE1MzBlYzY3M2U5ZTNkMmJhMjk4MmJlYTEwNmZjMzNmNDY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0YTEyZjU3YTFiMWMwNWI3Y2YzM2JlOWQ5MTQ0NzZjZGUxMDM3ZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-23 08:43:20.847224'),('xrrdhf64qa94yqqbs16b8po2r0weqmxl','MjkwOTM1OTA2ZDY5YjJkNTI1MGMxY2YxZTZiMTUzODNlZmY2NTk3NzqAAn1xAShVD19hdXRoX3VzZXJfaGFzaFUoNzRhMTJmNTdhMWIxYzA1YjdjZjMzYmU5ZDkxNDQ3NmNkZTEwMzdkYlUNX2F1dGhfdXNlcl9pZFgBAAAAMVUSX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHUu','2017-01-13 09:09:00.451958'),('yveih1p9sdijwhfkiun7yisew5dta582','ZGFjNzE1MzBlYzY3M2U5ZTNkMmJhMjk4MmJlYTEwNmZjMzNmNDY2NDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc0YTEyZjU3YTFiMWMwNWI3Y2YzM2JlOWQ5MTQ0NzZjZGUxMDM3ZGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-09 09:30:16.479472');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_answer`
--

DROP TABLE IF EXISTS `toeic_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `istrue` tinyint(1) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `question_id` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_answer_7aa0f6ee` (`question_id`),
  CONSTRAINT `toeic_answer_question_id_76c236d6_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_answer`
--

LOCK TABLES `toeic_answer` WRITE;
/*!40000 ALTER TABLE `toeic_answer` DISABLE KEYS */;
INSERT INTO `toeic_answer` VALUES (1,'construction',1,'2016-10-12 07:52:06.420000',2),(2,'constructed',0,'2016-10-12 07:52:36.841000',2),(3,'constructs',0,'2016-10-12 07:53:06.706000',2),(4,'constructive',0,'2016-10-12 07:53:21.210000',2),(5,'announced',1,'2016-10-12 07:53:56.487000',3),(6,'have announced',0,'2016-10-12 07:54:14.897000',3),(7,'announcing',0,'2016-10-12 07:54:26.442000',3),(8,'announce',0,'2016-10-12 07:54:38.915000',3),(9,'at',1,'2016-10-12 08:08:23.118000',4),(10,'into',0,'2016-10-12 08:08:35.813000',4),(11,'among',0,'2016-10-12 08:08:44.757000',4),(12,'after',0,'2016-10-12 08:08:56.220000',4),(13,'attract',0,'2016-10-12 08:10:46.555000',5),(14,'attractive',1,'2016-10-12 08:10:52.267000',5),(15,'attracted',0,'2016-10-12 08:12:09.875000',5),(16,'attraction',0,'2016-10-12 08:12:15.387000',5),(17,'perform',0,'2016-10-12 08:14:22.242000',6),(18,'admit',0,'2016-10-12 08:14:29.428000',6),(19,'attend',1,'2016-10-12 08:14:38.136000',6),(20,'participate',0,'2016-10-12 08:14:44.388000',6),(21,'expect',0,'2016-10-13 03:36:47.363894',14),(22,'expected',0,'2016-10-13 03:36:55.915771',14),(23,'expectations',1,'2016-10-13 03:37:06.938466',14),(24,'expectedly',0,'2016-10-13 03:37:18.048762',14),(25,'regularize',0,'2016-10-13 03:40:00.015418',7),(26,'regularity',0,'2016-10-13 03:40:10.426413',7),(27,'regularities',0,'2016-10-13 03:40:26.338158',7),(28,'regularly',1,'2016-10-13 03:40:35.494078',7),(29,'also',0,'2016-10-13 03:41:42.540972',8),(30,'both',1,'2016-10-13 03:41:49.224933',8),(31,'the same as',0,'2016-10-13 03:41:56.889404',8),(32,'not only',0,'2016-10-13 03:42:02.522346',8),(33,'as',1,'2016-10-13 03:43:25.777048',9),(34,'of',0,'2016-10-13 03:43:30.677106',9),(35,'either',0,'2016-10-13 03:43:38.041025',9),(36,'like',0,'2016-10-13 03:43:44.855253',9),(37,'they',0,'2016-10-13 03:44:25.103983',10),(38,'their',1,'2016-10-13 03:44:31.779347',10),(39,'themselves',0,'2016-10-13 03:44:38.089064',10),(40,'theirs',0,'2016-10-13 03:44:45.454474',10),(41,'demonstrated',0,'2016-10-13 03:46:49.900430',11),(42,'entrusted',0,'2016-10-13 03:46:57.837890',11),(43,'agreed',0,'2016-10-13 03:47:06.173006',11),(44,'congratulated',1,'2016-10-13 03:47:15.151787',11),(45,'no one',0,'2016-10-13 03:47:37.587167',12),(47,'someone',0,'2016-10-13 03:48:29.922192',12),(48,'one another',0,'2016-10-13 03:48:37.975622',12),(49,'everyone',1,'2016-10-13 03:48:46.849056',12),(50,'occupied',0,'2016-10-13 03:49:17.633029',13),(51,'accountable',0,'2016-10-13 03:49:24.504126',13),(52,'qualified',0,'2016-10-13 03:49:31.677573',13),(53,'specific',1,'2016-10-13 03:49:41.350801',13),(54,'across',1,'2016-10-13 04:23:12.649476',15),(55,'during',0,'2016-10-13 04:23:19.180281',15),(56,'onto',0,'2016-10-13 04:23:24.020520',15),(57,'next',0,'2016-10-13 04:23:28.664395',15),(58,'efficient',0,'2016-10-13 06:59:06.531361',16),(59,'efficiency',0,'2016-10-13 06:59:14.313234',16),(60,'efficiencies',0,'2016-10-13 06:59:24.640342',16),(61,'efficiently',1,'2016-10-13 06:59:34.268162',16),(62,'records',1,'2016-10-13 07:09:34.084835',17),(63,'qualifications',0,'2016-10-13 07:13:08.825365',17),(64,'guidelines',0,'2016-10-13 07:13:15.979197',17),(65,'behaviors',0,'2016-10-13 07:13:25.657647',17),(66,'competition',0,'2016-10-13 07:24:41.821200',18),(67,'competitive',1,'2016-10-13 07:24:47.565692',18),(68,'competitors',0,'2016-10-13 07:24:56.457007',18),(69,'competitively',0,'2016-10-13 07:25:06.890605',18),(70,'assist',0,'2016-10-14 02:31:17.021936',19),(71,'remind',0,'2016-10-14 02:31:21.610563',19),(72,'locate',1,'2016-10-14 02:31:27.110567',19),(73,'conduct',0,'2016-10-14 02:31:32.386624',19),(74,'product',1,'2016-10-14 02:45:26.943001',20),(75,'producer',0,'2016-10-14 02:45:34.497815',20),(76,'produced',0,'2016-10-14 02:46:17.998516',20),(77,'producing',0,'2016-10-14 02:46:24.324038',20),(78,'openly',0,'2016-10-14 02:58:44.351688',21),(79,'rigidly',0,'2016-10-14 02:58:50.318990',21),(80,'approximately',0,'2016-10-14 02:58:58.370953',21),(81,'frequently',1,'2016-10-14 02:59:06.155086',21),(82,'optimal',1,'2016-10-14 03:12:46.296677',22),(83,'optimize',0,'2016-10-14 03:12:53.791541',22),(84,'optimally',0,'2016-10-14 03:13:02.026890',22),(85,'optimization',0,'2016-10-14 03:13:08.118287',22),(86,'exhibition',1,'2016-10-14 03:36:27.390830',23),(87,'guide',0,'2016-10-14 03:36:32.336476',23),(88,'portrait',0,'2016-10-14 03:36:37.862769',23),(89,'creativity',0,'2016-10-14 03:36:45.393463',23),(90,'convinces',0,'2016-10-14 03:51:25.865934',24),(91,'convince',0,'2016-10-14 03:51:39.330992',24),(92,'convincingly',1,'2016-10-14 03:51:48.697131',24),(93,'convincing',0,'2016-10-14 03:51:56.392645',24),(94,'without',1,'2016-10-14 04:57:53.711025',25),(95,'almost',0,'2016-10-14 04:58:00.200787',25),(96,'usually',0,'2016-10-14 04:58:06.218203',25),(97,'already',0,'2016-10-14 04:58:12.331538',25),(98,'advancement',1,'2016-10-14 05:10:19.621312',26),(99,'opportunities',0,'2016-10-14 05:10:30.081874',26),(100,'transmitting',0,'2016-10-14 05:10:37.342611',26),(101,'openings',0,'2016-10-14 05:10:43.152404',18),(102,'forward',0,'2016-10-14 05:24:22.025891',27),(103,'ahead',0,'2016-10-14 05:24:28.120584',27),(104,'initial',1,'2016-10-14 05:24:37.069899',27),(105,'limited',0,'2016-10-14 05:24:43.789567',27),(106,'boldness',0,'2016-10-14 05:50:19.376764',28),(107,'bolder',1,'2016-10-14 05:50:27.285201',28),(108,'boldest',0,'2016-10-14 05:50:34.389981',28),(109,'boldly',0,'2016-10-14 05:50:39.757727',28),(110,'if',1,'2016-10-14 06:19:31.845202',29),(111,'which',0,'2016-10-14 06:19:37.191306',29),(112,'until',0,'2016-10-14 06:19:43.718030',29),(113,'despite',0,'2016-10-14 06:19:51.370897',29),(114,'avoid',0,'2016-10-14 06:46:26.381629',NULL),(115,'provide',0,'2016-10-14 06:46:33.549852',30),(116,'show',0,'2016-10-14 06:46:38.639036',30),(117,'allow',1,'2016-10-14 06:46:45.466627',30),(118,'exit',0,'2016-10-14 07:18:13.473128',31),(119,'exits',0,'2016-10-14 07:18:22.201719',31),(120,'exited',0,'2016-10-14 07:18:29.776085',31),(121,'existing',1,'2016-10-14 07:18:40.213671',31),(122,'destination',0,'2016-10-14 07:44:35.806910',32),(123,'variety',0,'2016-10-14 07:44:41.957301',32),(125,'analysis',1,'2016-10-14 07:46:44.118416',32),(126,'style',0,'2016-10-14 07:46:55.588937',32),(127,'fortunately',0,'2016-10-16 01:35:57.716283',33),(128,'immediately',0,'2016-10-16 01:36:06.106483',33),(129,'extensively',1,'2016-10-16 01:36:23.508361',33),(130,'eventually',0,'2016-10-16 01:36:32.132282',33),(131,'will honor',0,'2016-10-16 01:37:06.301766',34),(132,'to honor',1,'2016-10-16 01:37:19.752665',34),(133,'would honor',0,'2016-10-16 01:37:30.652244',34),(134,'to be honored',0,'2016-10-16 01:37:39.008273',34),(135,'ahead of',0,'2016-10-16 01:37:47.368435',35),(136,'until now',0,'2016-10-16 01:37:54.569496',35),(137,'with',1,'2016-10-16 01:38:07.446367',35),(138,'past',0,'2016-10-16 01:38:15.171247',35),(139,'profitable',0,'2016-10-16 02:19:32.191422',36),(140,'filled',0,'2016-10-16 02:19:39.610125',36),(141,'unfamiliar',1,'2016-10-16 02:19:51.547503',36),(142,'difficult',0,'2016-10-16 02:20:46.303471',36),(143,'enthusiasts',1,'2016-10-16 07:44:23.640666',37),(144,'enthusiastically',0,'2016-10-16 07:44:39.582504',37),(145,'enthusiastic',0,'2016-10-16 07:45:02.368111',37),(146,'enthused',0,'2016-10-16 07:45:11.036118',37),(147,'At a bus station',0,'2016-10-19 04:14:29.694168',38),(148,'At an office building',0,'2016-10-19 04:14:47.769465',38),(149,'At an airport',0,'2016-10-19 04:14:58.424054',38),(150,'At a parking lot',1,'2016-10-19 04:15:20.310693',38),(151,'The office is closed today.',0,'2016-10-19 04:18:27.693916',39),(152,'There are no tickets left.',0,'2016-10-19 04:18:41.318134',39),(154,'There are no parking spaces available.',1,'2016-10-19 04:19:14.266152',39),(155,'The woman has lost her passwords.',0,'2016-10-19 04:19:34.966028',39),(156,'Trying another place',1,'2016-10-19 04:20:49.168575',40),(157,'Paying for a ticket',0,'2016-10-19 04:21:16.749374',40),(158,'Going to find a security officer',0,'2016-10-19 04:21:35.158158',40),(159,'Returning later',0,'2016-10-19 04:21:54.739557',40),(160,'Finding a doctor',1,'2016-10-20 10:47:05.982629',41),(161,'Making a flight reservation',0,'2016-10-20 10:47:36.617897',41),(162,'Hiring a new assistance',0,'2016-10-20 10:47:54.353898',41),(163,'Notifying a doctor of a medical procedure',0,'2016-10-20 10:48:32.971696',41),(164,'A reservation number',0,'2016-10-20 10:49:08.743207',42),(165,'A medical treatment',0,'2016-10-20 10:49:23.299453',42),(166,'An acquaintance',0,'2016-10-20 10:49:41.882875',42),(167,'A recommendation',1,'2016-10-20 10:49:56.753835',42),(168,'Call a friend of hers',1,'2016-10-20 10:50:26.077236',43),(169,'Schedule a meeting',0,'2016-10-20 10:50:48.034261',43),(170,'Catch a train',0,'2016-10-20 10:51:08.538112',43),(171,'Find a nearby station',0,'2016-10-20 10:51:30.235170',43);
/*!40000 ALTER TABLE `toeic_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_answertext`
--

DROP TABLE IF EXISTS `toeic_answertext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_answertext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_answertext_question_id_275ffdd0_fk_toeic_question_id` (`question_id`),
  CONSTRAINT `toeic_answertext_question_id_275ffdd0_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_answertext`
--

LOCK TABLES `toeic_answertext` WRITE;
/*!40000 ALTER TABLE `toeic_answertext` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_answertext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_dictation`
--

DROP TABLE IF EXISTS `toeic_dictation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_dictation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `translation` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_dictation_level_id_a864b3e2_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_dictation_level_id_a864b3e2_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_dictation`
--

LOCK TABLES `toeic_dictation` WRITE;
/*!40000 ALTER TABLE `toeic_dictation` DISABLE KEYS */;
INSERT INTO `toeic_dictation` VALUES (1,'Jane, I need your assistance with something.','Jane, tôi cần sự giúp đỡ của bạn','2016-10-18 03:01:57.930481','audios/dictations/ineedyourassistance.wav',1),(2,'I have an aggravating headache that won’t go away. I don’t think I can wait until I fly back home to get this taken care of.','Tôi có một cơn đau đầu ngày càng trậm trọng mà sẽ không thuyên giảm, tôi không nghĩ tôi có thể chờ đến khi về nhà để xử lý nó.','2016-10-18 03:05:22.423634','audios/dictations/ihaveaheadache.wav',3),(3,'I’m sorry to hear that. You’re right. You should do something for your headache right away.','Tôi rất tiếc khi nghe thấy điều đó. Bạn đúng đấy. Bạn nên làm điều gì đó cho cơn đau đầu của bạn ngay lập tức.','2016-10-18 03:07:15.274993','audios/dictations/imsorrytohearthat.wav',1),(4,'Can you recommend a physician in the area? I’m hoping I can find someone who will see patients on short notice.','Bạn có thể gợi ý một bác sĩ trong khu vực này không? Tôi đang hi vọng có thể tìm ai đó sẽ gặp bệnh nhân ngay.','2016-10-18 03:09:35.237891','audios/dictations/canyourecommendaphysician.wav',2),(5,'I have a morning flight to catch this coming Wednesday.','Tôi phải bắt môt chuyến bay thứ Tư tới đây.','2016-10-18 03:11:33.944924','audios/dictations/ihaveaflighttocatch.wav',1),(6,'As a matter of fact, an acquaintance of mine is a doctor.','Thật vậy, một người quen của tôi là bác sĩ.','2016-10-18 03:13:44.195642','audios/dictations/anaquantainceisadoctor.wav',1);
/*!40000 ALTER TABLE `toeic_dictation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_dictation_listeningtopics`
--

DROP TABLE IF EXISTS `toeic_dictation_listeningtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_dictation_listeningtopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dictation_id` int(11) NOT NULL,
  `listeningtopic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_dictation_listeningtopics_dictation_id_c80fd3b4_uniq` (`dictation_id`,`listeningtopic_id`),
  KEY `toeic_dict_listeningtopic_id_738def42_fk_toeic_listeningtopic_id` (`listeningtopic_id`),
  CONSTRAINT `toeic_dict_listeningtopic_id_738def42_fk_toeic_listeningtopic_id` FOREIGN KEY (`listeningtopic_id`) REFERENCES `toeic_listeningtopic` (`id`),
  CONSTRAINT `toeic_dictation_list_dictation_id_8a046d6c_fk_toeic_dictation_id` FOREIGN KEY (`dictation_id`) REFERENCES `toeic_dictation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_dictation_listeningtopics`
--

LOCK TABLES `toeic_dictation_listeningtopics` WRITE;
/*!40000 ALTER TABLE `toeic_dictation_listeningtopics` DISABLE KEYS */;
INSERT INTO `toeic_dictation_listeningtopics` VALUES (4,4,1),(6,5,5);
/*!40000 ALTER TABLE `toeic_dictation_listeningtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_dictation_topics`
--

DROP TABLE IF EXISTS `toeic_dictation_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_dictation_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dictation_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_dictation_topics_dictation_id_06bb22fb_uniq` (`dictation_id`,`topic_id`),
  KEY `toeic_dictation_topics_topic_id_efaedce4_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_dictation_topi_dictation_id_ec012a60_fk_toeic_dictation_id` FOREIGN KEY (`dictation_id`) REFERENCES `toeic_dictation` (`id`),
  CONSTRAINT `toeic_dictation_topics_topic_id_efaedce4_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_dictation_topics`
--

LOCK TABLES `toeic_dictation_topics` WRITE;
/*!40000 ALTER TABLE `toeic_dictation_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_dictation_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_dictation_vocabs`
--

DROP TABLE IF EXISTS `toeic_dictation_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_dictation_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dictation_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_dictation_vocabs_dictation_id_20a7beb9_uniq` (`dictation_id`,`vocab_id`),
  KEY `toeic_dictation_vocabs_vocab_id_1daba498_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_dictation_voca_dictation_id_d96f0ce8_fk_toeic_dictation_id` FOREIGN KEY (`dictation_id`) REFERENCES `toeic_dictation` (`id`),
  CONSTRAINT `toeic_dictation_vocabs_vocab_id_1daba498_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_dictation_vocabs`
--

LOCK TABLES `toeic_dictation_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_dictation_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_dictation_vocabs` VALUES (7,1,251),(6,2,252),(5,3,253),(2,4,90),(3,4,254),(4,4,255),(8,6,260),(1,6,261);
/*!40000 ALTER TABLE `toeic_dictation_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_grammartopic`
--

DROP TABLE IF EXISTS `toeic_grammartopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_grammartopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  `engtitle` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_grammartopic_level_id_cfb2f385_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_grammartopic_level_id_cfb2f385_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_grammartopic`
--

LOCK TABLES `toeic_grammartopic` WRITE;
/*!40000 ALTER TABLE `toeic_grammartopic` DISABLE KEYS */;
INSERT INTO `toeic_grammartopic` VALUES (1,'Động từ: Thể bị động','<p><img alt=\"Kết quả hình ảnh cho passive voice\" src=\"http://mividaen.sampere.com/wp-content/uploads/2015/02/The-passive-voice.jpg\" style=\"height:277px; width:588px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Quan s&aacute;t c&aacute;c v&iacute; dụ sau:</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho passive voice\" src=\"http://hocmai.vn/file.php/370/Anh/Anh_bai_giang/active-voice-vs-passive-voice.jpg\" style=\"height:379px; width:569px\" /></p>\r\n\r\n<p>You <strong>stole</strong> the cookie from the jaz ( bạn đ&atilde; lấy cắp một c&aacute;i b&aacute;nh quy từ hũ. đ&acirc;y l&agrave; c&acirc;u chủ động)</p>\r\n\r\n<p>The cookie <strong>was stolen</strong> from the jaz ( c&aacute;i b&aacute;nh đ&atilde; bị lấy cắp từ hũ. đ&acirc;y l&agrave; c&acirc;u bị động)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This house <strong>was built</strong> in 1935. (Ng&ocirc;i nh&agrave; n&agrave;y được x&acirc;y v&agrave;o năm 1935)</p>\r\n\r\n<p>Ở đ&acirc;y, &quot;was built&quot; l&agrave; thể bị động: ng&ocirc;i nh&agrave; &quot;đ&atilde; được x&acirc;y&quot;.</p>\r\n\r\n<p>Somebody <strong>built</strong> this house in 1935. (Ai đ&oacute; đ&atilde; x&acirc;y ng&ocirc;i nh&agrave; n&agrave;y v&agrave;o năm 1935)</p>\r\n\r\n<p>&quot;built&quot; l&agrave; động từ ở thể chủ động: ai đ&oacute; &quot;đ&atilde; x&acirc;y&quot; nh&agrave;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Khi ch&uacute;ng ta d&ugrave;ng thể bị động, ta quan t&acirc;m đến chủ ngữ l&agrave;m g&igrave;:&nbsp;</strong></p>\r\n\r\n<p>My grandfather was a builder. He built this house in 1935.</p>\r\n\r\n<p><em>&Ocirc;ng t&ocirc;i l&agrave; thợ x&acirc;y. &Ocirc;ng đ&atilde; x&acirc;y c&aacute;i nh&agrave; n&agrave;y v&agrave;o năm 1935.</em></p>\r\n\r\n<p>It&rsquo;s a big company. It employs two hundred people.</p>\r\n\r\n<p><em>Đ&oacute; l&agrave; một c&ocirc;ng ty lớn. N&oacute; thu&ecirc; 200 người.&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Khi ch&uacute;ng ta d&ugrave;ng thể bị động, ta quan t&acirc;m đến điều g&igrave; đ&atilde; xảy ra với chủ ngữ:</strong></p>\r\n\r\n<p>This house is quite old. It was built in 1935.</p>\r\n\r\n<p><em>Ng&ocirc;i nh&agrave; n&agrave;y kh&aacute; l&agrave; cổ. N&oacute; đ&atilde; được x&acirc;y v&agrave;o năm 1935.</em></p>\r\n\r\n<p>Two hundred people are employed by the company.</p>\r\n\r\n<p><em>Hai trăm người được thu&ecirc; bởi c&ocirc;ng ty.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cấu tạo của thể bị động:</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho passive voice\" src=\"http://memoria.vn/pic/New/images/C%C3%A2u%20b%E1%BB%8B%20%C4%91%E1%BB%99ng%20(Passive%20Voice).png\" style=\"height:228px; width:400px\" /></p>\r\n\r\n<p>Chia động từ ở thể bị động như sau: Be + ph&acirc;n từ II (done/cleaned/seen&hellip;).</p>\r\n\r\n<p><strong>Ch&uacute; &yacute;:</strong> động từ &quot;be&quot; chia giống thời của động từ trong c&acirc;u chủ động ( ở đ&acirc;y &quot;opens&quot; chia ở hiện tại n&ecirc;n &quot;is&quot; cũng ở hiện tại).</p>\r\n\r\n<p>Somebody <strong>cleans</strong> this room every day. &gt;&gt;&gt;&gt; This room <strong>is cleaned</strong> every day. (C&acirc;u chủ động ờ thời hiện tại &gt;&gt; động từ &quot;be&quot; trong c&acirc;u bị động cũng phải chia ở thời hiện tại)</p>\r\n\r\n<p>Somebody cleaned this room every day &gt;&gt;&gt;&gt; This room was cleaned every day.(C&acirc;u chủ động ờ th&igrave; qu&aacute; khứ &gt;&gt; động từ &quot;be&quot; trong c&acirc;u bị động cũng phải chia ở th&igrave; qu&aacute; khứ)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảng t&oacute;m tắt động từ ở thể chủ động v&agrave; bị động tương ứng:</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho passive voice\" src=\"http://image.slidesharecdn.com/passivegrammarpowerpoint-131112102414-phpapp01/95/passive-grammar-powerpoint-6-638.jpg?cb=1384251892\" style=\"height:486px; width:647px\" />&nbsp;</p>\r\n\r\n<p><strong>Hai t&acirc;n ngữ</strong></p>\r\n\r\n<p>Một v&agrave;i động từ c&oacute; thể c&oacute; 2 t&acirc;n ngữ (t&uacute;c từ):&nbsp;</p>\r\n\r\n<p>Somebody gave the police the information. (ai đ&oacute; đưa th&ocirc;ng tin cho cảnh s&aacute;t)</p>\r\n\r\n<p>&nbsp;Do đ&oacute;, ta c&oacute; thể c&oacute; 2 c&acirc;u bị động:&nbsp;</p>\r\n\r\n<p>The police were given the information. (cảnh s&aacute;t đ&atilde; được đưa th&ocirc;ng tin)</p>\r\n\r\n<p>The information was given to the police. (th&ocirc;ng tin đ&atilde; được đưa cho cảnh s&aacute;t)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Thay be = get</strong></p>\r\n\r\n<p>Ta c&oacute; thể thay be trong thời bị động = get:&nbsp;</p>\r\n\r\n<p>I was invited &nbsp;= I got invited.&nbsp;</p>\r\n\r\n<p>Cấu tr&uacute;c đặc biệt:&nbsp;</p>\r\n\r\n<p>Get married = cưới&nbsp;</p>\r\n\r\n<p>Get divorced = li dị</p>\r\n\r\n<p>Get dressed = get changed = mặc đồ</p>\r\n\r\n<p>Get lost = bị lạc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Have something done</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; c&acirc;u tr&uacute;c nhờ ai, mượn ai l&agrave;m g&igrave; cho m&igrave;nh (tức l&agrave; m&igrave;nh kh&ocirc;ng trực tiếp l&agrave;m m&agrave; c&oacute; người kh&aacute;c l&agrave;m)</p>\r\n\r\n<p>Lisa repaired the roof ( Lisa tự sửa nh&agrave;)</p>\r\n\r\n<p>Lisa had the roof repaired (Lisa nhờ/thu&ecirc; người sửa nh&agrave;)&nbsp;</p>\r\n\r\n<p>Ch&uacute; &yacute; cấu tr&uacute;c : Lisa has+ the roof + ph&acirc;n từ II&nbsp;</p>\r\n\r\n<p>Lisa had the roof repaired, Lisa has the roof repaired, Lisa will have the roof repaired, Lisa has had the roof repaired&hellip;..</p>\r\n\r\n<p>(tất cả c&aacute;c c&acirc;u tr&ecirc;n đều c&oacute; nghĩa l&agrave; Lisa nhờ hoặc mượn ai sửa m&aacute;i nh&agrave; cho m&igrave;nh)</p>\r\n\r\n<p>&nbsp;</p>','2016-10-11 05:18:49.283000',1,'Verbs: Passive voice'),(2,'Câu tường thuật','<p><strong>Khi n&agrave;o d&ugrave;ng c&acirc;u tường thuật?</strong></p>\r\n\r\n<p>Ch&uacute;ng ta d&ugrave;ng c&acirc;u tường thuật khi ch&uacute;ng ta nhắc lại lời n&oacute;i của người kh&aacute;c ( c&ocirc; ấy n&oacute;i rằng - she said that....)</p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho reported speech\" src=\"http://cep.com.vn/uploads/images/tu-vung-va-ngu-phap-pho-thong/reportedconversation.png\" style=\"height:256px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho reported speech\" src=\"http://www.eslteachersboard.com/webbbs/images/free-teachers/pic1022.png\" style=\"height:245px; width:500px\" /></p>\r\n\r\n<p><strong>V&iacute; dụ</strong></p>\r\n\r\n<p>Paul says: I am felling ill.(Paul n&oacute;i: T&ocirc;i kh&ocirc;ng được khỏe).</p>\r\n\r\n<p>C&acirc;u tường thuật lại: Paul says that he is felling ill. (Paul n&oacute;i rằng T&ocirc;i kh&ocirc;ng được khỏe)</p>\r\n\r\n<p>Paul said: I am felling ill.(Paul đ&atilde; n&oacute;i: T&ocirc;i kh&ocirc;ng được khỏe).</p>\r\n\r\n<p>&gt;&gt;&gt;&gt; Paul said that he was felling ill.</p>\r\n\r\n<p>Paul thought: I&rsquo;m going to learn to drive (Pau đ&atilde; nghĩ: M&igrave;nh sẽ học l&aacute;i xe).</p>\r\n\r\n<p>&gt;&gt;&gt;&gt; Paul thought that he was going to learn to drive.</p>\r\n\r\n<p>Paul told me: John has a new job (Paul đ&atilde; n&oacute;i với t&ocirc;i: John c&oacute; một c&ocirc;ng việc mới).</p>\r\n\r\n<p>&gt;&gt;&gt;&gt; Paul told me that John has a new job</p>\r\n\r\n<p>Paul confirmed: I can&rsquo;t come to the party (Paul đ&atilde; x&aacute;c nhận : t&ocirc;i kh&ocirc;ng thể đến bữa tiệc)</p>\r\n\r\n<p>&gt;&gt;&gt;&gt; Paul confirmed that he can&rsquo;t come to the party</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>T&oacute;m lại, khi tường thuật c&acirc;u ở thời qu&aacute; khứ, ch&uacute; &yacute; l&ugrave;i thời của động từ sao cho ph&ugrave; hợp:</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho reported speech\" src=\"http://4.bp.blogspot.com/-tSKvjxnl7X8/UvU6ClvHI2I/AAAAAAAAAn4/9ogaZ2zAdhg/s1600/11.png\" style=\"height:448px; width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&uacute; &yacute; kh&ocirc;ng phải l&uacute;c n&agrave;o cũng l&ugrave;i thời của động từ về qu&aacute; khứ khi tường thuật sự kiện qu&aacute; khứ:</strong></p>\r\n\r\n<p>Helen said: I want to go to Paris.</p>\r\n\r\n<p>&gt;&gt;&gt; Helen said that she wants to go to Paris. (Helen n&oacute;i rằng c&ocirc; ấy muốn đến Paris. ở đ&acirc;y &ldquo;want&rdquo; &ndash; &ldquo;muốn&rdquo; chia ở hiện tại v&igrave; l&uacute;c n&agrave;o c&ocirc; ấy cũng muốn, chứ kh&ocirc;ng phải chỉ ở trong qu&aacute; khứ.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&uacute; &yacute; c&aacute;ch d&ugrave;ng &quot;that&quot; hoặc d&ugrave;ng &quot;to&quot;:</strong></p>\r\n\r\n<p>b&aacute;c sỹ đ&atilde; bảo t&ocirc;i phải nằm nghỉ mấy ng&agrave;y, c&oacute; 2 c&aacute;ch diễn đạt:</p>\r\n\r\n<p>The doctor told me that I stayed in bed for few days. = The doctor told me to stay in bed for few days. (1 c&acirc;u d&ugrave;ng &ldquo;that + c&acirc;u&rdquo;, 1 c&acirc;u d&ugrave;ng &ldquo;to + verb&rdquo;)</p>\r\n\r\n<p>&nbsp;</p>','2016-10-11 05:32:58.449000',1,'Reported Speeches'),(3,'Danh từ và cấu trúc bổ nghĩa cho danh từ','<p><strong>Danh từ để chỉ một người, địa điểm, vật hoặc &yacute; tưởng, kh&aacute;i niệm</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho noun\" src=\"http://1.bp.blogspot.com/-rH4UQG8twS0/VoUzrFyal9I/AAAAAAAA6-8/NTrBcFUmcko/s1600/noun.png\" style=\"height:128px; width:400px\" /></p>\r\n\r\n<p><strong>Vị tr&iacute; của danh từ trong c&acirc;u</strong></p>\r\n\r\n<p>The boy is eating an apple (Cậu b&eacute; đang ăn một quả t&aacute;o)</p>\r\n\r\n<p>Ta thấy danh từ c&oacute; thể l&agrave;m chủ ngữ, đi trước động từ (the boy)</p>\r\n\r\n<p>danh từ cũng c&oacute; thể đi sau động từ (an apple)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ph&acirc;n t&iacute;ch cụm danh từ</strong></p>\r\n\r\n<p>Ta xuất ph&aacute;t từ danh từ &quot;woman&quot;</p>\r\n\r\n<p>đi trước danh từ c&oacute; thể l&agrave; mạo từ (a woman, the woman), t&iacute;nh từ bất định (some women, any women), t&iacute;nh từ (a beautiful young woman)...</p>\r\n\r\n<p>đi sau danh từ c&oacute; thể l&agrave; cụm giới từ + danh từ (women of this country); c&oacute; thể l&agrave; mệnh đề (women who live in this country); c&oacute; thể l&agrave; lối r&uacute;t gọn mệnh đề (women living in this country, women admired by everyone)&nbsp;</p>\r\n\r\n<p>Bảng sau chỉ ra tất cả c&aacute;c cấu tr&uacute;c trước v&agrave; sau danh từ:&nbsp;</p>\r\n\r\n<table align=\"left\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:.1in; margin-right:.1in; mso-border-alt:solid windowtext .5pt; mso-padding-alt:0in 5.4pt 0in 5.4pt; mso-table-anchor-horizontal:margin; mso-table-anchor-vertical:page; mso-table-left:left; mso-table-lspace:9.0pt; mso-table-rspace:9.0pt; mso-table-top:210.05pt; mso-yfti-tbllook:1184; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:.4in; width:32.42%\">\r\n			<p><em>Mạo từ </em></p>\r\n\r\n			<p><em>A, an, the</em></p>\r\n			</td>\r\n			<td rowspan=\"5\" style=\"height:.4in; width:23.44%\">\r\n			<p><em>***Adj</em></p>\r\n\r\n			<p><em>&nbsp;Smart</em></p>\r\n\r\n			<p><em>Old chinese</em></p>\r\n\r\n			<p><em>**Adv + adj</em></p>\r\n\r\n			<p><em>&nbsp;amazingly beautiful</em></p>\r\n\r\n			<p><em>*Adj + adj</em></p>\r\n\r\n			<p><em>&nbsp;Beautiful young</em></p>\r\n			</td>\r\n			<td rowspan=\"5\" style=\"height:.4in; width:9.48%\">\r\n			<p><em>N</em></p>\r\n\r\n			<p><em>&nbsp;Women</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>N + N </em></p>\r\n\r\n			<p><em>University Teacher</em></p>\r\n			</td>\r\n			<td style=\"height:.4in; width:34.64%\">\r\n			<p><em>Giới từ + danh từ</em></p>\r\n\r\n			<p><em>of this country</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:.4in; width:32.42%\">\r\n			<p><em>T&iacute;nh từ sở hữu</em></p>\r\n\r\n			<p><em>My, your, her, his, its, our, their</em></p>\r\n			</td>\r\n			<td style=\"height:.4in; width:34.64%\">\r\n			<p><em>Mệnh đề</em></p>\r\n\r\n			<p><em>who live in this country ( which, that, whom)</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:.4in; width:32.42%\">\r\n			<p><em>Sở hữu c&aacute;ch</em></p>\r\n\r\n			<p><em>My father&rsquo;s </em></p>\r\n			</td>\r\n			<td rowspan=\"3\" style=\"height:.4in; width:34.64%\">\r\n			<p><em>R&uacute;t gọn mệnh đề</em></p>\r\n\r\n			<p><em>living in this country</em></p>\r\n\r\n			<p><em>= who live in this country</em></p>\r\n\r\n			<p><em>admired by everyone</em></p>\r\n\r\n			<p><em>= who is admired by everyone</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.65pt; width:32.42%\">\r\n			<p><em>T&iacute;nh từ bất định</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>Some(một v&agrave;i), each (mỗi), any (bất cứ), every (mọi), no(kh&ocirc;ng) all (tất cả), one (một)</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>&nbsp;other(c&aacute;i kh&aacute;c), another (một c&aacute;i kh&aacute;c), others ( những c&aacute;i c&ograve;n lại)</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>much (nhiều &ndash; kh&ocirc;ng đếm được), many ( nhiều &ndash; đếm được), a lot of, lots of( nhiều &ndash; cả đếm được v&agrave; kh&ocirc;ng đếm được&hellip;</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>neither (kh&ocirc;ng g&igrave; cả) </em></p>\r\n\r\n			<p><em>either ( c&aacute;i n&agrave;o cũng được)</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>enough, few/ a few, little</em></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:18.65pt; width:32.42%\">\r\n			<p><em>T&iacute;nh từ chỉ định (c&aacute;i n&agrave;y)</em></p>\r\n\r\n			<p><em>&nbsp;</em></p>\r\n\r\n			<p><em>This, that, these, those</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>z</p>\r\n\r\n<p><strong>B&agrave;i tập mở rộng danh từ</strong></p>\r\n\r\n<p>Xuất ph&aacute;t từ c&acirc;u đơn giản: Company fired employees</p>\r\n\r\n<p>C&oacute; thể th&ecirc;m c&aacute;c th&agrave;nh phần bổ nghĩa để mở rộng như sau</p>\r\n\r\n<p><strong>My</strong> company fired<strong> some</strong> employees</p>\r\n\r\n<p><strong>Mr Park&rsquo;s</strong> company fired <strong>many </strong>employees</p>\r\n\r\n<p><strong>The</strong> <strong>accounting</strong>company fired <strong>several</strong> employees (accounting company l&agrave; danh từ gh&eacute;p)</p>\r\n\r\n<p><strong>The </strong>company<strong> that have financial difficulty</strong> fired <strong>all</strong> employees</p>\r\n\r\n<p><strong>The </strong>company<strong> having financial difficulty</strong> fired<strong> all</strong> employees</p>\r\n\r\n<p><strong>The </strong>company<strong> founded in 1999</strong> fired<strong> all</strong> employees</p>\r\n\r\n<p><strong>The big</strong> company fired <strong>some</strong> employees.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&Aacute;p dụng v&agrave;o b&agrave;i thi toeic:&nbsp;</strong></p>\r\n\r\n<p>Ch&uacute;ng ta sẽ hay gặp c&aacute;c dạng như sau</p>\r\n\r\n<p><strong>mạo từ + ... + danh từ:</strong> 90% sẽ điền t&iacute;nh từ trong trường hợp n&agrave;y (a big company), c&ograve;n thỉnh thoảng sẽ gặp trường hợp bắt điền danh từ để tạo th&agrave;nh danh từ gh&eacute;p, v&iacute; dụ an ... company c&oacute; thể điền accounting để tạo th&agrave;nh cụm c&ocirc;ng ty kế to&aacute;n (accounting company).</p>\r\n\r\n<p><strong>mạo từ +.... + t&iacute;nh từ + danh từ:</strong> 90% sẽ điền một trạng từ trong trường hợp n&agrave;y để bổ sung &yacute; nghĩa cho t&iacute;nh từ. (ch&uacute; &yacute; l&agrave; trạng từ bổ sung &yacute; nghĩa cho t&iacute;nh từ hoặc động từ). V&iacute; dụ: an increasingly poplular hobby: một sở th&iacute;ch ng&agrave;y c&agrave;ng phổ biến. Ngo&agrave;i ra, rất hiếm khi sẽ gặp dạng t&iacute;nh từ + t&iacute;nh từ + danh từ ( a beautiful asian girl).&nbsp;</p>\r\n\r\n<p><strong>mạo từ + trạng từ + .... + danh từ:</strong> 100% điền t&iacute;nh từ ( v&igrave; trạng từ kh&ocirc;ng bổ sung &yacute; nghĩa cho danh từ, chỉ bổ sung &yacute; nghĩa cho t&iacute;nh từ &gt;&gt; đ&acirc;y l&agrave; vị tr&iacute; của t&iacute;nh từ).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Danh từ gh&eacute;p</strong></p>\r\n\r\n<p>Danh từ gh&eacute;p được tạo th&agrave;nh bởi 2 hoặc nhiều danh từ:&nbsp;</p>\r\n\r\n<p>Business meeting</p>\r\n\r\n<p>Budget report</p>\r\n\r\n<p>Sales representatives</p>\r\n\r\n<p>Security guard</p>\r\n\r\n<p>Human resources department</p>\r\n\r\n<p>Accounting department</p>\r\n\r\n<p>Replacement part</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Danh từ đếm được v&agrave; kh&ocirc;ng đếm được</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho countable and uncountable nouns\" src=\"https://www.easypacelearning.com/design/images/countableuncoutable.jpg\" style=\"height:788px; width:1100px\" /></p>\r\n\r\n<p>Danh từ kh&ocirc;ng đếm được c&aacute;c danh từ kh&ocirc;ng thể d&ugrave;ng với mạo từ a, an ( an apple - một quả t&aacute;o l&agrave; danh từ đếm được, rice - gạo l&agrave; danh từ kh&ocirc;ng đếm được).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một số danh từ kh&ocirc;ng đếm được th&ocirc;ng dụng:</p>\r\n\r\n<p>Information: th&ocirc;ng tin</p>\r\n\r\n<p>News: th&ocirc;ng tin</p>\r\n\r\n<p>Luggage: h&agrave;nh l&yacute;</p>\r\n\r\n<p>Equipment: thiết bị</p>\r\n\r\n<p>Merchandise: h&agrave;ng h&oacute;a</p>\r\n\r\n<p>Knowledge: kiến thức</p>\r\n\r\n<p>Advice: lời khuy&ecirc;n</p>\r\n\r\n<p>Homework: b&agrave;i tập về nh&agrave;</p>\r\n\r\n<p>Furniture: đồ đạc</p>\r\n\r\n<p>Pollution: sự &ocirc; nhiễm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c &ldquo;sự kh&aacute;c&rdquo;: sự ph&acirc;n phối (distribution), sự thực h&agrave;nh (practice), &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','2016-10-11 08:49:59.284000',1,'Nouns & Noun Phrases'),(4,'Động từ: Thì của động từ','<p><strong>C&aacute;c th&igrave; v&agrave; c&aacute;ch chia</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho verb tense\" src=\"https://www.easypacelearning.com/design/images/verbtenses.jpg\" style=\"height:698px; width:1100px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;ch d&ugrave;ng c&aacute;c th&igrave;</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho verb tense\" src=\"http://www.idioms4you.com/img/zz-Verb-Tense-Diagrams-770.gif\" style=\"height:850px; width:1100px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&igrave; hiện tại đơn v&agrave; th&igrave; hiện tại tiếp diễn<em>&nbsp;</em></strong><em>(present simple and present continuous)&nbsp;</em></p>\r\n\r\n<p>Th&igrave; hiện tại đơn diễn đạt th&oacute;i quen</p>\r\n\r\n<p>Eg: He always takes the subways to work</p>\r\n\r\n<p>Dấu hiệu: always (lu&ocirc;n lu&ocirc;n), usually (lu&ocirc;n lu&ocirc;n), often (thường xuy&ecirc;n), sometimes (thỉnh thoảng), never (kh&ocirc;ng bao giờ), seldom(hiếm kh&iacute;), rarely(hiếm khi), hardly( hầu như kh&ocirc;ng bao giờ), every (mỗi).&nbsp;</p>\r\n\r\n<p>Th&igrave; hiện tại đơn diễn đạt một lịch tr&igrave;nh (t&agrave;u, xe)&nbsp;</p>\r\n\r\n<p>Eg: the train arrives at 10 a.m tomorrow</p>\r\n\r\n<p>Dấu hiệu: l&uacute;c 10 giờ ng&agrave;y mai &gt;&gt; đ&acirc;y l&agrave; lịch tr&igrave;nh c&oacute; sẵn, n&ecirc;n d&ugrave; c&oacute; tomorrow cũng kh&ocirc;ng chia ở tương lailast year( năm ngo&aacute;i), last month(th&aacute;ng trước), yesterday(ng&agrave;y h&ocirc;m qua), 2 months ago (2 th&aacute;ng trước)&hellip;</p>\r\n\r\n<p>Th&igrave; hiện tại tiếp diễn diễn đạt một h&agrave;nh động đang xảy ra tại thời điểm n&oacute;i.&nbsp;</p>\r\n\r\n<p>Eg: he is taking the subway to work now</p>\r\n\r\n<p>Dấu hiệu: now, at this time ( tại l&uacute;c n&agrave;y), at the moment (tại thời điểm n&agrave;y), at present (hiện tại), right now (ngay l&uacute;c n&agrave;y)</p>\r\n\r\n<p>Th&igrave; hiện tại tiếp diễn c&ograve;n dung để chỉ một h&agrave;nh động đ&atilde; được sắp xếp, l&ecirc;n lịch sẵn, chắc chắn sẽ xảy ra trong tương lai.&nbsp;</p>\r\n\r\n<p>Eg: I&rsquo;ve bought 2 tickets. I&rsquo;m flying to London tomorrow.&nbsp;T&ocirc;i đ&atilde; mua 2 v&eacute;, t&ocirc;i sẽ bay đến London v&agrave;o ng&agrave;y mai. (chắc chắn t&ocirc;i sẽ bay v&igrave; t&ocirc;i đ&atilde; mua v&eacute;, l&ecirc;n lịch rồi)</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><strong>Th&igrave; hiện tại ho&agrave;n th&agrave;nh: Present perfect</strong></p>\r\n\r\n<p>Nhấn mạnh t&iacute;nh kết quả của h&agrave;nh động: h&agrave;nh động xảy ra trong qu&aacute; khứ nhưng kết quả c&ograve;n ở hiện tại</p>\r\n\r\n<p>Eg: Why her hair is so short? she has just cut her hair.&nbsp;</p>\r\n\r\n<p>Tại sao t&oacute;c c&ocirc; ấy ngắn vậy? C&ocirc; ấy mới cắt t&oacute;c. H&agrave;nh động cắt t&oacute;c xảy ra trong qu&aacute; khứ nhưng kết quả của n&oacute; th&igrave; ở hiện tại ( giờ t&oacute;c c&ocirc; ấy rất ngắn)</p>\r\n\r\n<p>C&aacute;ch chia: have + Ved (ph&acirc;n từ II)</p>\r\n\r\n<p>Eg: &nbsp;She has written many letters.&nbsp;</p>\r\n\r\n<p>They have gone already.</p>\r\n\r\n<p>I&rsquo;ve had lunch ( r&uacute;t gọn của I have had lunch)</p>\r\n\r\n<p>Dấu hiệu : just(vừa mới), already(đ&atilde; rồi), yet(cho đến l&uacute;c n&agrave;y), recently(gần d&acirc;y), lately(dạo n&agrave;y), for(trong), since(kể từ), never(kh&ocirc;ng bao giờ)</p>\r\n\r\n<p>Just: Are you hungry? No, I have just had lunch. Bạn c&oacute; đ&oacute;i kh&ocirc;ng? Kh&ocirc;ng , t&ocirc;i vừa ăn xong</p>\r\n\r\n<p>Already: &lsquo;Don&rsquo;t forget to send the letter&rsquo;. &lsquo;I&rsquo;ve already sent it&rsquo; Đừng qu&ecirc;n gửi thư nh&eacute;. T&ocirc;i đ&atilde; gửi n&oacute; rồi. Ở đ&acirc;y &ldquo;đ&atilde; rồi&rdquo; c&oacute; nghĩa l&agrave; h&agrave;nh động xảy ra sớm hơn dự kiến. V&iacute; dụ: T&ocirc;i đ&atilde; l&agrave;m b&agrave;i tập rồi n&ecirc;n đừng c&oacute; hỏi nữa nh&eacute; &gt;&gt; I have already done the homework, don&rsquo;t ask anymore!</p>\r\n\r\n<p>Yet: &lsquo;Has it stopped raining yet?&rsquo; Cho đến l&uacute;c n&agrave;y, trời đ&atilde; tạnh mưa chưa. I have not send the letters yet = Cho đến l&uacute;c n&agrave;y, t&ocirc;i vẫn chưa gửi thư.</p>\r\n\r\n<p>For: &lsquo;They have been married for ten years&rsquo; Họ đ&atilde; cưới được 10 năm/ từ 10 năm rồi.&nbsp;</p>\r\n\r\n<p>&lsquo;I&rsquo;ve lived here for 20 years&rsquo; T&ocirc;i đ&atilde; ở đ&acirc;y được 20 năm rồi.</p>\r\n\r\n<p>Since: &lsquo;They have been married since 2000&rsquo; Họ đ&atilde; cưới từ năm 2000. Nếu for l&agrave; khoảng thời gian th&igrave; since l&agrave; mốc thời gian.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Qu&aacute; khứ đơn v&agrave; qu&aacute; khứ tiếp diễn: Past simple and past continuous</strong></p>\r\n\r\n<p>Qu&aacute; khứ đơn diễn đạt h&agrave;nh động đ&atilde; chấm dứt, thuộc về qu&aacute; khứ</p>\r\n\r\n<p>Eg: she traveled in Europe last year. C&ocirc; ấy đi du lịch ch&acirc;u &Acirc;u năm ngo&aacute;i.&nbsp;</p>\r\n\r\n<p>Dấu hiệu nhận biết: last year( năm ngo&aacute;i), last month(th&aacute;ng trước), yesterday(ng&agrave;y h&ocirc;m qua), 2 months ago (2 th&aacute;ng trước)&hellip;</p>\r\n\r\n<p>Qu&aacute; khứ đơn diễn đạt những h&agrave;nh động xảy ra li&ecirc;n tiếp thuộc về qu&aacute; khứ</p>\r\n\r\n<p>Eg: He knocked her down, grabbed her purse and ran away (anh ấy đ&aacute;nh gục c&ocirc; ấy, t&oacute;m lấy t&uacute;i của c&ocirc; ấy v&agrave; chạy mất)</p>\r\n\r\n<p>Qu&aacute; khứ tiếp diễn diễn đạt 2 h&agrave;nh động song song trong qu&aacute; khứ</p>\r\n\r\n<p>Eg: While she is cooking, her husband was fixing his car. Trong khi c&ocirc; ấy đang nấu ăn, chồng c&ocirc; ấy sửa xe (cả 2 h&agrave;nh động ở trong qu&aacute; khứ)</p>\r\n\r\n<p>Dấu hiệu: While (trong khi)</p>\r\n\r\n<p>Qu&aacute; khứ tiếp diễn diễn đạt một h&agrave;nh động đang xảy ra th&igrave; h&agrave;nh động kh&aacute;c xen v&agrave;o</p>\r\n\r\n<p>Eg: We were having dinner when she came. Ch&uacute;ng t&ocirc;i đang ăn tối th&igrave; c&ocirc; ấy t&oacute;i ( cả 2 h&agrave;nh động trong qu&aacute; khứ)</p>\r\n\r\n<p>Dấu hiệu: when she came&nbsp;</p>\r\n\r\n<p>Qu&aacute; khứ tiếp diễn diễn đạt một h&agrave;nh động đang xảy ra tại một thời điểm trong qu&aacute; khứ</p>\r\n\r\n<p>Eg: I was eating at 7 o&rsquo;clock yesterday( l&uacute;c 7 giờ h&ocirc;m qua t&ocirc;i đang ăn)</p>\r\n\r\n<p>She was lying on the beach at this time last summer(C&ocirc; ấy đang nằm tr&ecirc;n b&atilde;i biển v&agrave;o l&uacute;c n&agrave;y h&egrave; năm ngo&aacute;i)</p>\r\n\r\n<p>Dấu hiệu: at this time last summer(v&agrave;o l&uacute;c n&agrave;y h&egrave; năm ngo&aacute;i), at present last night ( tại thời điển n&agrave;y đ&ecirc;m h&ocirc;m qua), at this moment 2 months ago ( v&agrave;o tầm n&agrave;y 2 th&aacute;ng trước)&hellip;.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><strong>Tương lai v&agrave; tương lai gần: Future tense and the near future</strong></p>\r\n\r\n<p>Tương lai đơn diễn đạt một h&agrave;nh động ở thời tương lai</p>\r\n\r\n<p>Eg: the price will change next month. Gi&aacute; sẽ thay đổi th&aacute;ng tới.&nbsp;</p>\r\n\r\n<p>Tương lai đơn (simple future) diễn đạt một quyết định tại thời điểm n&oacute;i</p>\r\n\r\n<p>Eg: Ok, I will accept your offer. (được rồi, t&ocirc;i sẽ chấp nhận lời đề nghị của &ocirc;ng)&nbsp;</p>\r\n\r\n<p>Tương lai đơn diễn đạt một lời dự đo&aacute;n</p>\r\n\r\n<p>Eg: I think it will rain soon</p>\r\n\r\n<p>Dấu hiệu: I think&hellip;.</p>\r\n\r\n<p>Tương lai gần diễn đạt dự định đ&atilde; l&ecirc;n kế hoạch</p>\r\n\r\n<p>Eg: I have a plan of holding a party this weekend. I am going to invite a lot of friends. T&ocirc;i c&oacute; dự định tổ chức một bữa tiệc cuối tuần n&agrave;y, t&ocirc;i sẽ mời rất nhiều bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;c th&igrave; kh&oacute;&nbsp;</strong></p>\r\n\r\n<p><em>Qu&aacute; khứ ho&agrave;n th&agrave;nh(Past perfect)</em></p>\r\n\r\n<p>Diễn tả một h&agrave;nh động xảy ra trước một h&agrave;nh động kh&aacute;c trong qu&aacute; khứ</p>\r\n\r\n<p>Cấu tr&uacute;c: had + PII</p>\r\n\r\n<p>Before I went to school, I had eaten breakfast: trước khi t&ocirc;i đến trường, t&ocirc;i đ&atilde; ăn s&aacute;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tương lai ho&agrave;n th&agrave;nh (future perfect)</em></p>\r\n\r\n<p>Diễn tả một h&agrave;nh động xảy ra trước một h&agrave;nh động kh&aacute;c trong tương lai</p>\r\n\r\n<p>Cấu tr&uacute;c: will have + PII</p>\r\n\r\n<p>By this summer, they will have finished building the bridge. (v&agrave;o m&ugrave;a h&egrave;/trước m&ugrave;a h&egrave; n&agrave;y, họ sẽ xong việc x&acirc;y c&aacute;i cầu)</p>\r\n\r\n<p>Dấu hiệu: by this summer, by next month, by the time you come (ch&uacute; &yacute;: come ở đ&acirc;y chia ở hiện tại nhưng thực ra l&agrave; để chỉ tương lai) &hellip;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Tương lai tiếp diễn</em></p>\r\n\r\n<p>diễn tả 1 h&agrave;nh động xảy ra tại một thời điểm x&aacute;c định trong tương lai</p>\r\n\r\n<p>Cấu tr&uacute;c: will be + Ving</p>\r\n\r\n<p>At this time tomorrow, I will be lying on the beach. ( v&agrave;o thời điểm n&agrave;y ng&agrave;y mai, t&ocirc;i sẽ đang nằm d&agrave;i tr&ecirc;n b&atilde;i biển)</p>\r\n\r\n<p>Dấu hiệu: at this time tomorrow, at present next summer, at this moment next Friday</p>\r\n\r\n<p>&nbsp;</p>','2016-10-11 11:15:25.974000',1,'Verb Tenses'),(5,'Giới từ: Địa điểm','<p style=\"margin-left:0in; margin-right:0in\"><strong>At, On, In</strong></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><strong>Ch&uacute;ng ta d&ugrave;ng &quot;at&quot;</strong></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;Để &aacute;m chỉ một địa điểm m&agrave; ch&uacute;ng ta coi n&oacute; như một điểm, mốc (to refer to a position or location which we see as a point):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">I was sitting at my desk.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;Để n&oacute;i về c&ocirc;ng ty hoặc c&ocirc;ng sở m&agrave; ch&uacute;ng ta coi n&oacute; như một nơi gắn với h&agrave;nh động (to talk about locations at companies, workplaces when we see them as a place of activity):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">How many people are working at Microsoft?</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;để n&oacute;i về hoạt động li&ecirc;n quan đến một nh&oacute;m người (to refer to activities which involve a group of people):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">Were you at Lisa&rsquo;s party? (also at the cinema, at the theatre)</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;with school/college/university:</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">She always did well at school.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;khi nhắc đến địa điểm (to refer to an address):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">They once lived at number 12 South George&rsquo;s Street.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;khi n&oacute;i đến địa điểm c&ocirc;ng cộng (to talk about public places where we get treatments, such as a hairdresser&rsquo;s or doctor&rsquo;s surgery):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">I can&rsquo;t meet at four. I&rsquo;ll be at the hairdresser&rsquo;s until five.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;khi n&oacute;i đến c&aacute;c cửa h&agrave;ng (to refer to most shops):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">Look what I bought at the butcher&rsquo;s today.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><strong>Ch&uacute;ng ta d&ugrave;ng on</strong></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;khi nhắc đến vị tr&iacute; tr&ecirc;n bất k&igrave; bề mặt n&agrave;o (to refer to a position on any surface):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">I know I left my wallet on the table.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;để mi&ecirc;u tả một vị tr&iacute; dọc đường hoặc cạnh s&ocirc;ng, biển, hồ (to describe a position along a road or river or by the sea or by a lake):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">Dublin is on the east coast of Ireland.</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;để n&oacute;i về một tầng của t&ograve;a nh&agrave; (to talk about a floor in a building):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">They live on the 15th floor!</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;để n&oacute;i về việc d&ugrave;ng phương tiện c&ocirc;ng cộng (to talk about being physically on public transport):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">I was on the train when she phoned. (but to talk about ways of travelling, we use by: I went to Rome by train.)</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><strong>Ch&uacute;ng ta d&ugrave;ng &quot;in&quot;:</strong></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;để n&oacute;i về địa điểm c&oacute; kh&ocirc;ng gian (to talk about locations within a larger area):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">I know my book is somewhere in this room. Can anyone see it?</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;để n&oacute;i về nơi l&agrave;m việc khi ch&uacute;ng ta coi n&oacute; l&agrave; một địa điểm thực tế (to talk about workplaces when we see them as a physical location):</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">She works in an open-plan office. (but we use on when we talk about a farm: I&rsquo;ve always wanted to work on a farm.)</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&bull;with class:</p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">He found it difficult to concentrate in class.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&uacute;ng ta d&ugrave;ng &quot;across&quot;:</strong></p>\r\n\r\n<p>Khi n&oacute;i về từ b&ecirc;n n&agrave;y sang b&ecirc;n kia của một v&ugrave;ng, bề mặt: across the street (qua đường)</p>\r\n\r\n<p>Khi muốn n&oacute;i &quot;khắp&quot; (c&ugrave;ng nghĩa với throughout): across the country (khắp cả nước)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Over:</strong></p>\r\n\r\n<p>Chỉ sự chuy&ecirc;̉n đ&ocirc;̣ng tới b&ecirc;n kia của m&ocirc;̣t v&acirc;̣t được xem là cao<br />\r\n<br />\r\n<strong>Ex</strong>: The gate was locked so I climbed <strong>over</strong> the wall.<br />\r\nIt was a good shot, but it went <strong>over</strong> the bar.</p>\r\n\r\n<p>Chúng ta có th&ecirc;̉ sử dụng <strong>across</strong> và <strong>over</strong> đ&ecirc;̉ chỉ nơi ch&ocirc;́n (&#39;on the other side of&#39;): There&#39;s a cafe <strong>across</strong>/<strong>over</strong> the street.<br />\r\n<br />\r\n<strong>Through:</strong></p>\r\n\r\n<p>Chỉ sự chuy&ecirc;̉n đ&ocirc;̣ng đi vào hoặc đi ra khỏi v&acirc;̣t gì<br />\r\n<br />\r\n<strong>Ex</strong>: You have to go <strong>through</strong> the kitchen to get to the bathroom.<br />\r\nThe Thames flows <strong>through</strong> London.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Along and past</strong><br />\r\n<br />\r\nChúng ta có th&ecirc;̉ sử dụng <strong>along</strong> đ&ecirc;̉ chỉ sự chuy&ecirc;̉n đ&ocirc;̣ng theo m&ocirc;̣t hướng hoặc đ&ecirc;̉ mi&ecirc;u tả vị trí của m&ocirc;̣t v&acirc;̣t đang ở đ&acirc;u đó theo hướng &acirc;́y<br />\r\n<br />\r\n<strong>Ex</strong>: I like walking <strong>along</strong> country lanes.<br />\r\nThere&#39;s a cafe <strong>along</strong> the street.<br />\r\n<br />\r\n<strong>past </strong>có th&ecirc;̉ được sử dụng đ&ecirc;̉ chỉ sự chuy&ecirc;̉n đ&ocirc;̣ng ra ngoài m&ocirc;̣t đi&ecirc;̉m cụ th&ecirc;̉ hoặc đ&ecirc;̉ mi&ecirc;u tả vị trí của m&ocirc;̣t v&acirc;̣t nằm ngoài m&ocirc;̣t đi&ecirc;̉m nào đó<br />\r\n<br />\r\n<strong>Ex</strong>: We drove <strong>past</strong> Stratford, but didn&#39;t stop there.<br />\r\nThere&#39;s a cafe just <strong>past</strong> the church.</p>\r\n\r\n<p><br />\r\n<strong>Off and out of</strong><br />\r\n<br />\r\nChúng ta có th&ecirc;̉ sử dụng <strong>off</strong> đ&ecirc;̉ chỉ sự chuy&ecirc;̉n đ&ocirc;̣ng ra xa khỏi b&ecirc;̀ mặt hoặc đ&ecirc;̉ mi&ecirc;u tả vị trí của m&ocirc;̣t v&acirc;̣t trong m&ocirc;́i quan h&ecirc;̣ với m&ocirc;̣t b&ecirc;̀ mặt nào đó<br />\r\n<br />\r\n<strong>Ex</strong>: Could you take that box <strong>off</strong> the table?<br />\r\nThe platform was about two feet <strong>off</strong> the ground.<br />\r\n<br />\r\n<strong>out of</strong> được sử dụng đ&ecirc;̉ chỉ sự chuy&ecirc;̉n đ&ocirc;̣ng từ b&ecirc;n trong của m&ocirc;̣t v&acirc;̣t hoặc đ&ecirc;̉ mi&ecirc;u tả vị trí của m&ocirc;̣t v&acirc;̣t mà hi&ecirc;̣n kh&ocirc;ng còn nằm b&ecirc;n trong nữa<br />\r\n<br />\r\n<strong>Ex</strong>: I lifted the kitten <strong>out of</strong> the box. As soon as it was <strong>out of</strong> the box, it started crying.<br />\r\n<br />\r\nChú ý: chúng ta kh&ocirc;ng sử dụng <strong>out</strong> (mà kh&ocirc;ng có <strong>of</strong>) khi làm giới từ (<s>It was out the box</s>.)<br />\r\n<br />\r\nN&oacute;i một c&aacute;ch b&oacute;ng bẩy hơn, <strong>off</strong> có th&ecirc;̉ được sử dụng với ý nghĩa &ldquo;not connected to&rdquo;<br />\r\n<br />\r\n<strong>Ex</strong>: This part of your essay is completely <strong>off</strong> the main topic.<br />\r\nSkye is an island <strong>off</strong> the west coast.<br />\r\n<br />\r\nvà <strong>out of</strong> có nghĩa là &ldquo;no longer having&rdquo;<br />\r\n<br />\r\n<strong>Ex</strong>: We&#39;re <strong>out of</strong> milk, so I have to go to the shop.<br />\r\nA lot of people are <strong>out of</strong> work now.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Into and onto</strong><br />\r\n<br />\r\n<strong>into</strong> có th&ecirc;̉ được sử dụng đ&ecirc;̉ nói đ&ecirc;́n sự chuy&ecirc;̉n đ&ocirc;̣ng tới m&ocirc;̣t nơi nằm b&ecirc;n trong m&ocirc;̣t v&acirc;̣t nào đó<br />\r\n<br />\r\n<strong>Ex</strong>: We took a bus <strong>into</strong> the city centre.<br />\r\nThe waiter poured some wine <strong>into</strong> each glass.<br />\r\n<br />\r\nvà <strong>onto</strong> (hoặc <strong>on to</strong>) đ&ecirc;̉ nói tới sự chuy&ecirc;̉n đ&ocirc;̣ng đ&ecirc;́n b&ecirc;̀ mặt của m&ocirc;̣t v&acirc;̣t nào đó<br />\r\n<br />\r\n<strong>Ex</strong>: Let&#39;s move the small books <strong>onto</strong> the top shelf.<br />\r\nPaint was dripping from his brush <strong>onto</strong> the floor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>From, to, towards</strong><br />\r\n<br />\r\nChúng ta sử dụng <strong>from</strong> đ&ecirc;̉ chỉ đi&ecirc;̉m thời gian/ kh&ocirc;ng gian bắt đ&acirc;̀u và <strong>to</strong> đ&ecirc;̉ chỉ đi&ecirc;̉m cu&ocirc;́i/ đi&ecirc;̉m k&ecirc;́t thúc của m&ocirc;̣t hành đ&ocirc;̣ng/ m&ocirc;̣t sự di chuy&ecirc;̉n nào đó<br />\r\n<br />\r\n<strong>Ex</strong>: We flew straight <strong>from</strong> London <strong>to</strong> San Francisco.<br />\r\nI can walk <strong>from</strong> my flat <strong>to</strong> work.<br />\r\n<br />\r\nN&oacute;i một c&aacute;ch b&oacute;ng bẩy, <strong>from</strong> và <strong>to</strong> có th&ecirc;̉ được sử dụng đ&ecirc;̉ chỉ đi&ecirc;̉m bắt đ&acirc;̀u và k&ecirc;́t thúc của m&ocirc;̣t loạt những thay đ&ocirc;̉i<br />\r\n<br />\r\n<strong>Ex</strong>: He translated the book <strong>from</strong> Russian <strong>to</strong> English.<br />\r\nIt went <strong>from</strong> quite cool <strong>to</strong> very hot in an hour.<br />\r\n<br />\r\nChúng ta có th&ecirc;̉ sử dụng <strong>towards</strong> (&#39;in the direction of) đ&ecirc;̉ chú ý/ t&acirc;̣p trung hướng đi của m&ocirc;̣t chuy&ecirc;̉n đ&ocirc;̣ng<br />\r\n<br />\r\n<strong>Ex</strong>: I suddenly saw a car coming <strong>towards</strong> me.<br />\r\nIf you get lost, try to walk <strong>towards</strong> the south.<br />\r\n<br />\r\nN&oacute;i một c&aacute;ch b&oacute;ng bẩy, <strong>towards</strong> có th&ecirc;̉ được sử dụng đ&ecirc;̉ nói v&ecirc;̀ hướng phát tri&ecirc;̉n/ ti&ecirc;́n tri&ecirc;̉n hoặc hướng thay đ&ocirc;̉i<br />\r\n<br />\r\n<strong>Ex</strong>: The trend is <strong>towards</strong> much larger farms.<br />\r\nThis agreement is an important step <strong>towards</strong> peace.<br />\r\n<br />\r\nChú ý <strong>toward</strong> cũng được sử dụng, nh&acirc;́t là trong Tiếng Anh kiểu Mỹ: It&#39;s a step <strong>toward</strong> peace.</p>','2016-10-12 00:55:35.136000',1,'Prepositions: Place'),(6,'Tính từ','<p><strong>Vị tr&iacute; của t&iacute;nh từ</strong></p>\r\n\r\n<p>T&iacute;nh từ bổ nghĩa cho danh từ hoặc động từ li&ecirc;n kết (linking verb).</p>\r\n\r\n<p>A wonderful life: t&iacute;nh từ wonderful bổ nghĩa cho danh từ life</p>\r\n\r\n<p>Life is wonderful: t&iacute;nh từ wonderful đi sau linking verb &quot;be&quot;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&iacute;nh từ lu&ocirc;n đứng trước danh từ được bổ nghĩa, c&oacute; thể c&oacute; nhiều t&iacute;nh từ bổ sung &yacute; nghĩa cho 1 danh từ:</p>\r\n\r\n<p>That is my <strong>new red</strong> car. (t&iacute;nh từ new v&agrave; red đều bổ nghĩa cho danh từ &quot;car&quot;)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>T&iacute;nh từ c&oacute; thể kết hợp với &ldquo;the&rdquo; để tạo th&agrave;nh danh từ&nbsp;</p>\r\n\r\n<p>V&iacute; dụ: The poor : người ngh&egrave;o;&nbsp;The rich: người giầu</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần bổ nghĩa cho t&iacute;nh từ</strong></p>\r\n\r\n<p>Chỉ c&oacute; trạng từ l&agrave; bổ sung &yacute; nghĩa cho t&iacute;nh từ:&nbsp;</p>\r\n\r\n<p>My newly painted car: c&aacute;i xe mới sơn của t&ocirc;i. (xe sơn: painted car, nhưng v&igrave; l&agrave; mới sơn n&ecirc;n th&ecirc;m trạng từ &quot;newly&quot; bổ nghĩa cho t&iacute;nh từ &quot;painted&quot;).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>T&iacute;nh từ kết th&uacute;c bằng &ndash;ing v&agrave; &ndash;ed&nbsp;</strong></p>\r\n\r\n<p>C&oacute; rất nhiều t&iacute;nh từ kết th&uacute;c bằng &ndash;ing v&agrave; &ndash;ed, v&iacute; dụ như : boring v&agrave; bored. V&iacute; dụ:&nbsp;</p>\r\n\r\n<p>Jane phải l&agrave;m một c&ocirc;ng việc lặp đi lặp lại h&agrave;ng ng&agrave;y. C&ocirc; ấy kh&ocirc;ng hề th&iacute;ch c&ocirc;ng việc đ&oacute; v&agrave; muốn l&agrave;m một c&ocirc;ng việc kh&aacute;c.</p>\r\n\r\n<p>Ch&uacute;ng ta n&oacute;i: C&ocirc;ng việc của c&ocirc; ấy thật đ&aacute;ng ch&aacute;n/&gt;&gt; Jane&rsquo;s job is boring.&nbsp;</p>\r\n\r\n<p>Jane bị ch&aacute;n (c&ocirc;ng việc của c&ocirc; ấy)&gt;&gt; Jane is bored (with her job)</p>\r\n\r\n<p>Somebody is bored if something (or somebody else) is boring. Or, if something is boring, it makes you bored. (Một ai đ&oacute; sẽ bị ch&aacute;n nếu c&oacute; c&aacute;i g&igrave; đ&oacute; ( hoặc một ai kh&aacute;c) thật đ&aacute;ng ch&aacute;n. Hoặc, nếu c&aacute;i g&igrave; đ&oacute; thật đ&aacute;ng ch&aacute;n, n&oacute; l&agrave;m cho bạn ch&aacute;n).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So s&aacute;nh c&aacute;c t&iacute;nh từ kết th&uacute;c bằng &ndash;ed hay &ndash;ing:</p>\r\n\r\n<p>My job is boring(l&agrave;m cho ch&aacute;n)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;I&rsquo;m bored with my job (t&ocirc;i bị ch&aacute;n với c&ocirc;ng việc của t&ocirc;i)</p>\r\n\r\n<p>interesting (th&uacute; vị/ l&agrave;m cho cảm thấy th&uacute; vị)I&rsquo;m interested in my job (t&ocirc;i hứng th&uacute; với ...)</p>\r\n\r\n<p>tiring (l&agrave;m cho mệt)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;I&rsquo;m tired doing my job (t&ocirc;i bị mệt ...)</p>\r\n\r\n<p>satisfying (l&agrave;m cho thỏa m&atilde;n)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;I&rsquo;m not satisfied with my job (t&ocirc;i kh&ocirc;ng thỏa m&atilde;n..)</p>\r\n\r\n<p>depressing (l&agrave;m cho phiền muộn)&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;My job makes me depressed (việc l&agrave;m t&ocirc;i phiền muộn..)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>So s&aacute;nh c&aacute;c v&iacute; dụ:</p>\r\n\r\n<p><strong>Interesting v&agrave; interested</strong></p>\r\n\r\n<p>Julia thinks politics is interesting.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Julia is interested in politics.</p>\r\n\r\n<p>Do you meet anyone interesting at the party?&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Are you interested in buying a car?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Surprising v&agrave; surprised</strong></p>\r\n\r\n<p>It was surprising that he passed the exam.Everybody was surprised that he passed the exam.&nbsp;</p>\r\n\r\n<p>This is a surprising giftI am surprised when I see the gift</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Disappointing v&agrave; disappointed</strong></p>\r\n\r\n<p>The film was disappointing&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;We were disappointed with the films</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Shocking v&agrave; shocked</strong></p>\r\n\r\n<p>The news was shockingI was shocked when I heard the new.</p>','2016-10-12 01:44:56.622000',1,'Adjectives'),(7,'Trạng từ','<p><img alt=\"Kết quả hình ảnh cho adverb\" src=\"http://i2.wp.com/www.gmbarlean.com/wp-content/uploads/2014/07/adverb.png\" style=\"height:154px; width:470px\" /></p>\r\n\r\n<p><strong>Cấu tạo</strong></p>\r\n\r\n<p>Trạng từ = t&iacute;nh từ + ly</p>\r\n\r\n<p>Adjective : quickAdverb: quickly</p>\r\n\r\n<p>Seriousseriously</p>\r\n\r\n<p>Carefulcarefully</p>\r\n\r\n<p>Quietquietly</p>\r\n\r\n<p>Heavyheavily</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, kh&ocirc;ng phải từ n&agrave;o kết th&uacute;c bằng &ndash;ly cũng l&agrave; adverb, một v&agrave;i t&iacute;nh từ cũng kết th&uacute;c bằng -ly</p>\r\n\r\n<p>FriendlyLivelyLonelyElderlySillylovely</p>\r\n\r\n<p>Ch&uacute; &yacute;:&nbsp;</p>\r\n\r\n<p>Same is careful</p>\r\n\r\n<p>Same is a careful driverSame drove carefully</p>\r\n\r\n<p>Same l&agrave; một l&aacute;i xe cẩn thậnSame l&aacute;i xe cẩn thận</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vị tr&iacute; của trạng từ</strong></p>\r\n\r\n<p>Trạng từ bổ sung &yacute; nghĩa cho cả c&acirc;u: đi đầu c&acirc;u, đi cuối c&acirc;u</p>\r\n\r\n<p>Trạng từ bổ nghĩa cho động từ: đi trước động từ, đi sau động từ</p>\r\n\r\n<p>Trạng từ bổ sung &yacute; nghĩa cho t&iacute;nh từ: đi trước t&iacute;nh từ</p>\r\n\r\n<p>Trạng từ bổ sung &yacute; nghĩa cho một trạng từ kh&aacute;c: đi trước một trạng từ kh&aacute;c</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&uacute;ng ta d&ugrave;ng trạng từ để bổ sung &yacute; nghĩa cho động từ, t&iacute;nh từ v&agrave; trạng từ kh&aacute;c</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho adverb\" src=\"http://mrswarnerarlington.weebly.com/uploads/6/9/0/0/6900648/5887192.jpeg?704\" style=\"height:377px; width:487px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Reasonably cheap(adv + adj) : kh&aacute; l&agrave; rẻ</p>\r\n\r\n<p>Incredibly quickly(adv + adv): cực kỳ nhanh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Một số trạng từ/t&iacute;nh từ hay gặp</strong></p>\r\n\r\n<p>Good/well</p>\r\n\r\n<p>Your English is goodYou speak English well.</p>\r\n\r\n<p>Ch&uacute;ng ta d&ugrave;ng well + ph&acirc;n từ II</p>\r\n\r\n<p>Well-dressed : ăn mặc đẹp</p>\r\n\r\n<p>Well-known: được biết đến nhiều</p>\r\n\r\n<p>Well-educated: c&oacute; gi&aacute;o dục tốt</p>\r\n\r\n<p>Well-paid: được trả lương cao</p>\r\n\r\n<p>*đặc biệt: I am well = t&ocirc;i khỏe</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Fast/hard/late</strong> : vừa l&agrave; t&iacute;nh từ, vừa l&agrave; trạng từ</p>\r\n\r\n<p>Darren is a very fast runnershe runs very fast</p>\r\n\r\n<p>Kate is a hard workershe works very hard</p>\r\n\r\n<p>I was lateI got up late</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lately, hardly l&agrave; trạng từ đặc biệt, kh&ocirc;ng li&ecirc;n quan đến late v&agrave; hard</strong></p>\r\n\r\n<p>*lately = recently : Have you seen Tom lately: bạn c&oacute; nh&igrave;n thấy Tom gần đ&acirc;y kh&ocirc;ng</p>\r\n\r\n<p>*hardly: gần như kh&ocirc;ng: Sarah hardly spoke to me: Sara gần như kh&ocirc;ng n&oacute;i với t&ocirc;i c&acirc;u n&agrave;o.</p>\r\n\r\n<p>Hardly c&oacute; thể d&ugrave;ng với any/anybody/anyone/anything/anywhere:</p>\r\n\r\n<p>How much money do we have? hardly any (ch&uacute;ng ta c&oacute; bao nhi&ecirc;u tiền? gần như kh&ocirc;ng)</p>\r\n\r\n<p>The exam was very difficult. Hardly anybody passed ( b&agrave;i kiểm tra rất kh&oacute;, gần như kh&ocirc;ng ai qua cả).</p>\r\n\r\n<p>Hardly ever= gần như kh&ocirc;ng bao giờ ( almost never)</p>\r\n\r\n<p>I hardly ever go to the park ( t&ocirc;i chả bao giờ đến c&ocirc;ng vi&ecirc;n).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Trạng từ chỉ độ thường xuy&ecirc;n</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho adverb\" src=\"http://elight.edu.vn/wp-content/uploads/2015/07/adverbs-of-frequency.png\" style=\"height:367px; width:476px\" /></p>\r\n\r\n<p>&nbsp;</p>','2016-10-12 02:35:10.956000',1,'Adverbs'),(8,'Trạng từ: So & Such','<p><strong>So v&agrave; Such đều để l&agrave;m mạnh th&ecirc;m t&iacute;nh từ hoặc trạng từ</strong></p>\r\n\r\n<p>So + t&iacute;nh từ, trạng từ: So beautiful= rất đẹp</p>\r\n\r\n<p>Such + danh từ: Such a beautiful girl = một c&ocirc; g&aacute;i đẹp đến vậy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&uacute;ng ta d&ugrave;ng so + adj/adv&nbsp;nhưng such + adjective + noun</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho So and such\" src=\"https://goldenageesgblog.files.wordpress.com/2014/10/utilizar-so-such-ingles.jpg\" style=\"height:234px; width:324px\" /></p>\r\n\r\n<p>The story is so <strong>stupid&nbsp;</strong>( C&acirc;u chuy&ecirc;n rất ngu ngốc)</p>\r\n\r\n<p>It is such <strong>a stupid story (</strong> đ&oacute; l&agrave; một c&acirc;u chuyện rất ngu ngốc)</p>\r\n\r\n<p>She runs so fast</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>So v&agrave; such c&ograve;n c&oacute; thể đi trước many, much</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho So and such\" src=\"https://edukaplanet.files.wordpress.com/2015/06/7ecb7-so2b3.png\" style=\"height:497px; width:593px\" /></p>\r\n\r\n<p><strong>Xem x&eacute;t v&iacute; dụ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It&rsquo;s so warm: trời rất ấm</p>\r\n\r\n<p>He talk so quietly: anh ấy n&oacute;i rất nhỏ</p>\r\n\r\n<p>We had such a good time: ch&uacute;ng t&ocirc;i c&oacute; một khoảng thời gian rất vui</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>So v&agrave; such + &hellip; + that</strong></p>\r\n\r\n<p>The book was so good that I couldn&rsquo;t put it downit was such a good book that I couldn&rsquo;t put it down.</p>\r\n\r\n<p>Quyể s&aacute;ch hay đến mức t&ocirc;i kh&ocirc;ng thể đặt xuống được</p>\r\n\r\n<p>Ch&uacute; &yacute;: that c&oacute; thể bị lược bỏ</p>\r\n\r\n<p>The book was so good I couldn&rsquo;t put it down.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>So v&agrave; such c&ograve;n c&oacute; nghĩa l&agrave; : như vậy.</strong></p>\r\n\r\n<p>The house was built 100 years old. I can&rsquo;t believe it was so old. I can&rsquo;t believe it was such an old house</p>\r\n\r\n<p>&nbsp;( t&ocirc;i kh&ocirc;ng tin được l&agrave; n&oacute; cổ đến vậy)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>B&agrave;i tập: so hay such?</strong></p>\r\n\r\n<p>&hellip;&hellip;&hellip;&hellip;.. long&hellip;&hellip;&hellip;&hellip;&hellip;.a long time</p>\r\n\r\n<p>&hellip;&hellip;&hellip;&hellip;.. far&hellip;&hellip;&hellip;&hellip;&hellip;.a long way</p>\r\n\r\n<p>&hellip;&hellip;&hellip;&hellip;..much&hellip;&hellip;&hellip;&hellip;&hellip;.a lot</p>\r\n\r\n<p>&hellip;&hellip;&hellip;&hellip;..many</p>\r\n\r\n<p>&nbsp;</p>','2016-10-12 02:45:18.002000',1,'Adjectives and Adverbs: so & such'),(9,'Tính từ: Các dạng bổ sung ý nghĩa cho tính từ','<p><strong>Enough: đủ</strong></p>\r\n\r\n<p>Enough đi đằng sau t&iacute;nh từ v&agrave; trạng từ.</p>\r\n\r\n<p>He is experienced enough.</p>\r\n\r\n<p>You work hard enough.</p>\r\n\r\n<p>Enough đi trước danh từ:</p>\r\n\r\n<p>he has enough experience.</p>\r\n\r\n<p>*enough&hellip; for, enough&hellip;to</p>\r\n\r\n<p>He is experienced enough for the job; He is experienced enough to do the job.</p>\r\n\r\n<p>Anh ấy đủ kinh nghiệm cho vị tr&iacute; n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>*too&hellip;&hellip;for, too&hellip;&hellip;.to&nbsp;</strong></p>\r\n\r\n<p>He is too experienced for the job; He is too experienced to do the job.&nbsp;</p>\r\n\r\n<p>Anh ấy thừa/ qu&aacute; nhiều kinh nghiệm cho vị tr&iacute; n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Very = rất</strong></p>\r\n\r\n<p>It is very cold: trời rất lạnh</p>\r\n\r\n<p>A little = một ch&uacute;t</p>\r\n\r\n<p>It is a little cold : trời hơi lạnh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Quite, pretty, rather and fairly</strong></p>\r\n\r\n<p>Quite/pretty/rather/faily = kh&aacute; l&agrave; (less than &ldquo;very&rdquo;, but more than &ldquo;a little&rdquo;)</p>\r\n\r\n<p>It is quite cold = it is pretty cold = It&rsquo;s rather cold = it&rsquo;s fairly cold</p>\r\n\r\n<p>Quite a + noun: it was quite a surprise ( đ&oacute; kh&aacute; l&agrave; một sự ngạc nhi&ecirc;n)</p>\r\n\r\n<p>Quite a lot (of) : there were quite a lot of people ( c&oacute; kh&aacute; nhiều người)</p>\r\n\r\n<p>Quite + verb: I quite like tennis ( t&ocirc;i kh&aacute; th&iacute;ch tennis)</p>\r\n\r\n<p>*I&rsquo;m quite sure about that: t&ocirc;i kh&aacute; l&agrave; chắc chắn ( 100%)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho quite rather fairly\" src=\"http://image.slidesharecdn.com/adverbsofdegree-131018100915-phpapp01/95/adverbs-of-degree-2-638.jpg?cb=1382091031\" style=\"height:425px; width:566px\" /></p>','2016-10-12 02:48:00.849000',1,'Adjectives and Adverbs: enough, too, quite, pretty, rather, fairly'),(10,'Tính từ và đại từ bất định','<p><strong>Một: One</strong></p>\r\n\r\n<p>There&#39;s only one piece of cake left (Chỉ c&ograve;n lại một mẩu b&aacute;nh)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mỗi: each&nbsp;</strong></p>\r\n\r\n<p>A ring on each finger (Một c&aacute;i nhẫn tr&ecirc;n mỗi ng&oacute;n tay)&nbsp;</p>\r\n\r\n<p>Each student has a book.</p>\r\n\r\n<p>Each one of us has a book ( mỗi người trong số ch&uacute;ng t&ocirc;i c&oacute; một quyển s&aacute;ch).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mọi: Everyone, everybody, everything, everytime, everywhere: mọi&nbsp;</strong></p>\r\n\r\n<p>Everyone is ready: mọi người đều sẵn s&agrave;ng</p>\r\n\r\n<p>Đặc biệt: The buses go every ten minutes&nbsp;</p>\r\n\r\n<p>(Cứ mỗi mười ph&uacute;t lại c&oacute; chuyến xe b&uacute;yt)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bất cứ: Anybody, anything, anyone, any time, ....&nbsp;</strong></p>\r\n\r\n<p>You may come here at any time (Bạn c&oacute; thể đến đ&oacute; bất cứ l&uacute;c n&agrave;o)&nbsp;</p>\r\n\r\n<p>Anyone can answer to that question ( bất cứ ai cũng c&oacute; thể trả lời)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Để chỉ số lượng nhiều: Several, many + đếm được; &nbsp;a little, much + kh&ocirc;ng đếm được; &nbsp;some, a lot of + cả hai</strong></p>\r\n\r\n<p>I have read this book several times (T&ocirc;i đ&atilde; đọc quyển s&aacute;ch n&agrave;y nhiều lần)&nbsp;</p>\r\n\r\n<p>I have a lot of bread, but I haven&#39;t much butter&nbsp;</p>\r\n\r\n<p>(T&ocirc;i c&oacute; nhiều b&aacute;nh m&igrave;, nhưng t&ocirc;i chẳng c&oacute; nhiều bơ)</p>\r\n\r\n<p>There are many spelling mistakes in this newspaper (Tờ b&aacute;o n&agrave;y c&oacute; nhiều lỗi ch&iacute;nh tả)&nbsp;</p>\r\n\r\n<p>There&#39;s some ice in the fridge(C&oacute; một &iacute;t đ&aacute; trong tủ lạnh)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ch&uacute; &yacute; dạng phủ định</strong></p>\r\n\r\n<p>T&ocirc;i kh&ocirc;ng c&oacute; tiền: I don&rsquo;t have any money&nbsp;</p>\r\n\r\n<p>T&ocirc;i kh&ocirc;ng c&oacute; nhiều tiền: I don&rsquo;t have much money</p>\r\n\r\n<p>T&ocirc;i kh&ocirc;ng c&oacute; nhiều bạn: I don&rsquo;t have many friends</p>\r\n\r\n<p>Kh&ocirc;ng d&ugrave;ng phủ định với a lot: I don&rsquo;t have a lot of money/friends</p>\r\n\r\n<p>Kh&ocirc;ng d&ugrave;ng khẳng định với much : I have much money&nbsp;</p>\r\n\r\n<p>C&acirc;u hỏi : c&oacute; thể d&ugrave;ng với much : Do you have much money?&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Để chỉ số lượng &iacute;t: Ph&acirc;n biệt little v&agrave; a little; few v&agrave; a few</strong></p>\r\n\r\n<p>I have little time for watching TV (T&ocirc;i c&oacute; &iacute;t thời gian để xem TV)&nbsp;</p>\r\n\r\n<p>Give me a little sugar (H&atilde;y cho t&ocirc;i một &iacute;t đường)&nbsp;</p>\r\n\r\n<p>There were few people at his funeral (C&oacute; &iacute;t người dự đ&aacute;m tang &ocirc;ng ta)&nbsp;</p>\r\n\r\n<p>The jailer asked us a few questions (Vi&ecirc;n cai ngục hỏi ch&uacute;ng t&ocirc;i v&agrave;i c&acirc;u)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Enough: đủ; plenty: thừa, nhiều đi với cả đếm được v&agrave; kh&ocirc;ng đếm được&nbsp;</strong></p>\r\n\r\n<p>We have enough food for two weeks&#39; holiday (Ch&uacute;ng t&ocirc;i c&oacute; đủ thực phẩm cho kỳ nghỉ hai tuần)&nbsp;</p>\r\n\r\n<p>We have plenty of food.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>nobody, nothing,&hellip; ( kh&ocirc;ng ai cả, kh&ocirc;ng g&igrave; cả)</strong></p>\r\n\r\n<p>I want nothing from you ( t&ocirc;i kh&ocirc;ng cần g&igrave; từ bạn)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>All (tất cả), all of(to&agrave;n bộ), Most of (đa số), half of (một nửa), a third of ( một phần ba&hellip;.)</strong></p>\r\n\r\n<p>All dogs are animals, but not all animals are dogs (Tất cả c&aacute;c con ch&oacute; đều l&agrave; động vật, nhưng kh&ocirc;ng phải tất cả c&aacute;c động vật đều l&agrave; ch&oacute;)&nbsp;</p>\r\n\r\n<p>All of my students are teenagers</p>\r\n\r\n<p>Most of my students are teenagers</p>\r\n\r\n<p>Half of my students are teenagers</p>\r\n\r\n<p>A third of my students are teenagers</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tất cả 1 thứ g&igrave; đ&oacute;: All, All the, the whole</strong></p>\r\n\r\n<p>I read the whole book (t&ocirc;i đọc cả quyển s&aacute;ch) &nbsp;= I real all the book</p>\r\n\r\n<p>I spend all day, the whole day on the beach</p>\r\n\r\n<p>I visit the whole country ( t&ocirc;i đi du lịch cả nước)&nbsp;</p>\r\n\r\n<p>*** the whole: cả, to&agrave;n bộ đằng sau chỉ 1 vật cụ thể. Ph&acirc;n biệt: all countries: tất cả c&aacute;c nước, the whole country ( cả nước, nhưng chỉ l&agrave; 1 nước)</p>\r\n\r\n<p>*** Đặc biệt: all the time: mọi l&uacute;c nhưng every time = mỗi lần</p>\r\n\r\n<p>She works all the time ( c&ocirc; ấy l&agrave;m việc mọi l&uacute;c)&nbsp;</p>\r\n\r\n<p>Every time I see you, you look different ( mỗi lần t&ocirc;i thấy bạn, bạn lại kh&aacute;c đi)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>No/none of</strong></p>\r\n\r\n<p>No words can express my homesickness (Kh&ocirc;ng lời n&agrave;o diễn tả được nỗi nhớ nh&agrave; của t&ocirc;i)</p>\r\n\r\n<p>None of my students are teenagers. (kh&ocirc;ng một ai trong số học sinh của t&ocirc;i l&agrave; thiếu ni&ecirc;n)</p>\r\n\r\n<p>Ch&uacute; &yacute;: I have no friends = I don&rsquo;t have any friend</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Both, both of, both&hellip; and</strong></p>\r\n\r\n<p>Both Janette and Michelle were absent (Cả Janette v&agrave; Michele đều kh&ocirc;ng c&oacute; mặt) (lu&ocirc;n ở số nhiều)</p>\r\n\r\n<p>Both of us want to stay.</p>\r\n\r\n<p>Both children were absent.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Either&hellip;. Or(hoặc&hellip; hoặc), Either of, neither&hellip;. nor(kh&ocirc;ng&hellip;kh&ocirc;ng), neither of</strong></p>\r\n\r\n<p>Either Mary or Jane is going to the beach today ( Hoặc Mary hoặc Jane đi đến b&atilde;i biển h&ocirc;m nay)&nbsp;</p>\r\n\r\n<p>Either girl is going to the beach today (bất cứ c&ocirc; g&aacute;i n&agrave;o trong hai c&ocirc; g&aacute;i đ&oacute; )</p>\r\n\r\n<p>Either of us is going to the beach today ( bất cứ ai trong số hai ch&uacute;ng t&ocirc;i sẽ đi biển h&ocirc;m nay)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Neither Alice nor Jane was present (Cả Alice v&agrave; Jane đều kh&ocirc;ng c&oacute; mặt) (chia theo Jane)</p>\r\n\r\n<p>Neither Alice nor her friends were present (chia theo her friends)</p>\r\n\r\n<p>Neither girl was present. (kh&ocirc;ng ai trong số 2 cố g&aacute;i c&oacute; mặt)</p>\r\n\r\n<p>Neither of us was present (kh&ocirc;ng ai trong số ch&uacute;ng t&ocirc;i c&oacute; mặt)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>So s&aacute;nh:&nbsp;</strong></p>\r\n\r\n<p>There are two good hotels hereThere are many good hotels here</p>\r\n\r\n<p>You could stay at either of them You could stay at any of them</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We tried two hotelsWe tried a lot of hotels</p>\r\n\r\n<p>Neither of them had roomsNone of them has rooms</p>\r\n\r\n<p>Both of them were fullAll of them were full</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Another(một c&aacute;i kh&aacute;c, một c&aacute;i nữa), the other(những c&aacute;i c&ograve;n lại, phần c&ograve;n lại), other (c&aacute;i kh&aacute;c, người kh&aacute;c)</strong></p>\r\n\r\n<p>Would you like another cup of tea? (&Ocirc;ng muốn d&ugrave;ng một t&aacute;ch tr&agrave; nữa kh&ocirc;ng?)&nbsp;</p>\r\n\r\n<p>Where are the other students? (C&aacute;c sinh vi&ecirc;n kh&aacute;c/ c&ograve;n lại đang ở đ&acirc;u?)</p>\r\n\r\n<p>I think he is brilliant, but other students think he is weird. (T&ocirc;i thấy anh ấy thật giỏi, nhưng c&aacute;c học sinh kh&aacute;c kh&ocirc;ng nghĩ vậy).</p>\r\n\r\n<p>Nếu other l&agrave; đại từ ( others = others students), phải th&ecirc;m s nếu l&agrave; số nhiều</p>\r\n\r\n<p>I think he is brilliant, but others think he is weird.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>***Each other, one another, together (rất hay hỏi trong b&agrave;i thi)&nbsp;</strong></p>\r\n\r\n<p>Each other v&agrave; one another đều l&agrave; lẫn nhau, nhưng each other chỉ d&ugrave;ng cho 2 người, one another d&ugrave;ng cho nh&oacute;m người.</p>\r\n\r\n<p>We love each other: ch&uacute;ng t&ocirc;i y&ecirc;u nhau ( chỉ c&oacute; 2 người, t&aacute;c động qua lại)&nbsp;</p>\r\n\r\n<p>We help each other = he helps me and I help him (ch&uacute;ng t&ocirc;i gi&uacute;p lẫn nhau, anh ấy gi&uacute;p t&ocirc;i v&agrave; t&ocirc;i gi&uacute;p anh ấy)</p>\r\n\r\n<p>In our class, we help one another: ch&uacute;ng t&ocirc;i gi&uacute;p lẫn nhau, giống each other nhưng c&oacute; từ 3 người rở l&ecirc;n,</p>\r\n\r\n<p>We grow up together: ch&uacute;ng t&ocirc;i lớn l&ecirc;n c&ugrave;ng nhau ( together = c&ugrave;ng nhau)</p>\r\n\r\n<p>&nbsp;</p>','2016-10-12 03:31:58.936000',1,'indefinite pronouns and adjectives'),(11,'So sánh','<p><strong>T&oacute;m tắt so s&aacute;nh hơn v&agrave; so s&aacute;nh nhất:&nbsp;</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho comparative english\" src=\"http://www.grammar.cl/rules/comparatives-superlatives.gif\" style=\"height:556px; width:556px\" /></p>\r\n\r\n<p><strong>Dạng so s&aacute;nh hơn : -er hoặc more&hellip;.. than</strong></p>\r\n\r\n<p>Với t&iacute;nh từ v&agrave; trạng từ:&nbsp;</p>\r\n\r\n<p>Going by car is cheaper than going by train</p>\r\n\r\n<p>Going by train is more expensive than going by car.</p>\r\n\r\n<p>Với danh từ:&nbsp;</p>\r\n\r\n<p>I have more money than you.</p>\r\n\r\n<p>***You are taller than I am = you are taller than me.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dạng so s&aacute;nh k&eacute;m: less &hellip;.than hoặc not as &hellip;.. than</strong></p>\r\n\r\n<p>Với t&iacute;nh từ v&agrave; trạng từ:&nbsp;</p>\r\n\r\n<p>Going by car is less expensive than going by train. <em>(Đi bằng xe th&igrave; &iacute;t đắt hơn đi bằng t&agrave;u)</em></p>\r\n\r\n<p>going by car is not as expensive as going by train. <em>(Đi bằng xe &ocirc; t&ocirc; kh&ocirc;ng đắt như đi bằng t&agrave;u)</em></p>\r\n\r\n<p>Với danh từ:&nbsp;</p>\r\n\r\n<p>I spend less money than you. <em>(T&ocirc;i ti&ecirc;u &iacute;t tiền hơn bạn).</em></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Dạng so s&aacute;nh bằng: as &hellip;. as</strong></p>\r\n\r\n<p>She is as beautiful as you are. (C&ocirc; ấy đẹp như bạn).</p>\r\n\r\n<p>You can have as much as you want. (Bạn c&oacute; thể c&oacute; bao nhi&ecirc;u như bạn muốn)</p>\r\n\r\n<p>Going by car is just as quick as taking the bus. <em>(Đi xe &ocirc; t&ocirc; cũng nhanh như đi xe bu&yacute;t)</em>.</p>\r\n\r\n<p>Can you send me the money as soon as possible? <em>(Bạn c&oacute; thể gửi tiền cho t&ocirc;i sớm nhất c&oacute; thể)</em>.</p>\r\n\r\n<p>Petrol is twice as expensive as it was a few years ago. (three times as, four times as)</p>\r\n\r\n<p><em>Petrol đắt gấp đ&ocirc;i một v&agrave;i năm trước.</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p><strong><em>The same as</em></strong></p>\r\n\r\n<p>Laura&rsquo;s salary is the same as mine. <em>(Lương của laura giống như của t&ocirc;i)</em></p>\r\n\r\n<p>But : Laura gets the same salary as me. <em>(Nhưng: laura c&oacute; tiền lương như t&ocirc;i)</em>.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dạng so s&aacute;nh hơn đặc biệt</strong></p>\r\n\r\n<p>More Good/well -&gt; better</p>\r\n\r\n<p>More Bad/badly -&gt; worse</p>\r\n\r\n<p>More Far -&gt; further/farther</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bổ sung &yacute; nghĩa cho so s&aacute;nh:</strong></p>\r\n\r\n<p>Much : Going by car is much cheaper than going by train. (rất nhiều)</p>\r\n\r\n<p>A lot: Going by car is a lot cheaper than going by train. (rất nhiều)</p>\r\n\r\n<p>Far: Going by car is far cheaper than going by train. (kh&aacute; nhiều)</p>\r\n\r\n<p>A little : Going by car is a little cheaper than going by train. (một ch&uacute;t)</p>\r\n\r\n<p>A bit: Going by car is a bit cheaper than going by train. (một ch&uacute;t)</p>\r\n\r\n<p>Slightly: Going by car is slightly cheaper than going by train. (một &iacute;t)</p>\r\n\r\n<p>Any: I&rsquo;m not waiting any longer. &nbsp;(kh&ocirc;ng)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;T&ocirc;i kh&ocirc;ng đợi th&ecirc;m ch&uacute;t n&agrave;o nữa</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Do you feel any better?</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bạn cảm thấy kh&aacute; hơn kh&ocirc;ng?</p>\r\n\r\n<p>No: &nbsp;The house is no bigger than ours. (kh&ocirc;ng)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;The house is no more expensive than ours.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Dạng so s&aacute;nh c&agrave;ng... c&agrave;ng: The&hellip;.The&nbsp;</strong></p>\r\n\r\n<p>What time shall we left? The sooner, the better.</p>\r\n\r\n<p>The warmer the weather, the better I feel.</p>\r\n\r\n<p>Ch&uacute; &yacute;: elder = older khi n&oacute;i về người ( gi&agrave; hơn) : my older/elder sister is a TV producer.</p>\r\n\r\n<p>&nbsp;</p>','2016-10-12 03:48:16.541000',1,'Comparison'),(12,'Tính từ và đại từ sở hữu, phản thân','<p><img alt=\"Kết quả hình ảnh cho possessive english\" src=\"https://s-media-cache-ak0.pinimg.com/564x/c2/2a/52/c22a52c6aa33e02c660c1cc17821a943.jpg\" style=\"height:599px; width:600px\" /></p>\r\n\r\n<p><strong>Của t&ocirc;i, của bạn, của anh ấy</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; mso-border-alt:solid windowtext .5pt; mso-padding-alt:0in 5.4pt 0in 5.4pt; mso-yfti-tbllook:1184; width:472.25pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>T&ocirc;i</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>S&aacute;ch của t&ocirc;i</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>S&aacute;ch ri&ecirc;ng của t&ocirc;i</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>C&aacute;i của t&ocirc;i</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>Một trong những người bạn của t&ocirc;i</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>I</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>My book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>My own book</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= Mine</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of mine</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>You</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>Your book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>Your own book</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= Yours</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of yours</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>He</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>His book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>His own book</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= His</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of his</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>She</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>Her book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>&hellip;.</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= Hers</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of hers</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>It</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>Its book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>&hellip;.</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= Its</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of its</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>They</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>Their book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>&hellip;.</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= theirs</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of theirs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>We</p>\r\n			</td>\r\n			<td style=\"width:76.5pt\">\r\n			<p>Our book</p>\r\n			</td>\r\n			<td style=\"width:99.0pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n			<td style=\"width:67.5pt\">\r\n			<p>= ours</p>\r\n			</td>\r\n			<td style=\"width:171.0pt\">\r\n			<p>A friend of ours</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;Đại từ sở hữu l&agrave;m t&acirc;n ngữ: (đi sau động từ)</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; mso-border-alt:solid windowtext .5pt; mso-padding-alt:0in 5.4pt 0in 5.4pt; mso-yfti-tbllook:1184\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>I</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell me</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>You</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell you</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>He</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell him</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>She</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell her</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>It</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell it</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>They</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell them</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:58.25pt\">\r\n			<p>We</p>\r\n			</td>\r\n			<td style=\"width:117.0pt\">\r\n			<p>Tell us</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phản th&acirc;n; tự m&igrave;nh l&agrave;m</strong></p>\r\n\r\n<p>V&iacute; dụ: I make him a cake: t&ocirc;i l&agrave;m b&aacute;nh cho anh ấy</p>\r\n\r\n<p>Nếu muốn n&oacute;i t&ocirc;i l&agrave;m b&aacute;nh cho t&ocirc;i: <s>I make me a cake : </s>I make myself a cake</p>\r\n\r\n<p>Vậy khi chủ ngữ v&agrave; t&acirc;n ngữ c&ugrave;ng l&agrave; 1, ch&uacute;ng ta d&ugrave;ng myself, yourself&hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tuy nhi&ecirc;n myself c&ograve;n c&oacute; &yacute; nhấn mạnh việc tự m&igrave;nh l&agrave;m:</strong></p>\r\n\r\n<p>I make this cake myself = I myself make this cake = T&ocirc;i tự l&agrave;m c&aacute;i b&aacute;nh n&agrave;y.</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; mso-border-alt:solid windowtext .5pt; mso-padding-alt:0in 5.4pt 0in 5.4pt; mso-yfti-tbllook:1184\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>T&ocirc;i</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>L&agrave;m c&aacute;i b&aacute;nh cho t&ocirc;i</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Tự l&agrave;m c&aacute;i b&aacute;nh n&agrave;y</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>Tự l&agrave;m c&aacute;i b&aacute;nh n&agrave;y</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>I</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make myself a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake myself</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>I myself make this cake</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>You</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make yourself a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake yourself</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>He</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make himself a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake himself</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>She</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make herself a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake herself</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>It</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make itself a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake itself</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>They</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make themselves a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake themselves</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:55.35pt\">\r\n			<p>We</p>\r\n			</td>\r\n			<td style=\"width:133.05pt\">\r\n			<p>Make ourselves a cake</p>\r\n			</td>\r\n			<td style=\"width:138.75pt\">\r\n			<p>Make this cake ourselves</p>\r\n			</td>\r\n			<td style=\"width:140.35pt\">\r\n			<p>&hellip;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>By myself v&agrave; On my own:</strong> tự, một m&igrave;nh, kh&ocirc;ng ai gi&uacute;p</p>\r\n\r\n<p>I live by myself: t&ocirc;i sống một m&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You have to drive on your own: bạn phải tự l&aacute;i xe.&nbsp;</p>','2016-10-12 04:26:48.222000',1,'Possessive Pronouns and Adjectives'),(13,'Câu điều kiện (If)','<p><img alt=\"Kết quả hình ảnh cho if conditional\" src=\"https://s-media-cache-ak0.pinimg.com/originals/ed/cc/aa/edccaa2852005511e2ea9ce7e5231f06.png\" style=\"height:568px; width:747px\" /></p>\r\n\r\n<p><strong>Quan s&aacute;t v&iacute; dụ sau</strong></p>\r\n\r\n<table border=\"0\" cellpadding=\"4\">\r\n	<tbody>\r\n		<tr>\r\n			<td>If I have enough money,<br />\r\n			<strong>conditional clause&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>\r\n			<td>I will go to Japan.<br />\r\n			<strong>&nbsp;&nbsp;&nbsp;&nbsp;main clause</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>I will go to Japan,<br />\r\n			<strong>main clause&nbsp;&nbsp;&nbsp;&nbsp;</strong></td>\r\n			<td>if I have enough money<br />\r\n			<strong>&nbsp;&nbsp;&nbsp;&nbsp;conditional clause</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>C&acirc;u điều kiện c&oacute; 2 vế, một v&agrave; vế điều kiện(nếu t&ocirc;i c&oacute; đủ tiền), hai l&agrave; vế ch&iacute;nh ( I will go to Japan)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&acirc;u điều kiện loại 1, 2, 3 (First, Second, and Third Conditional)</strong></p>\r\n\r\n<table border=\"0\" cellpadding=\"4\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>1. First conditional:</strong></td>\r\n			<td>If I have enough money, I will go to Japan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2. Second conditional:</strong></td>\r\n			<td>If I had enough money, I would go to Japan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3. Third conditional:</strong></td>\r\n			<td>If I had had enough money, I would have gone to Japan.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>C&aacute;ch chia động từ ở vế ch&iacute;nh:</strong></p>\r\n\r\n<table border=\"0\" cellpadding=\"4\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Conditional clause</strong></td>\r\n			<td><strong>Main clause</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1.</strong>&nbsp;If + Present Tense</td>\r\n			<td>will + inf / present tense / imperative</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>&nbsp;If you help me with the dishes (if + pres),&nbsp;<br />\r\n			I will help you with your homework. (will + inf)</p>\r\n\r\n			<p>If the sum of the digits of a number is divisible by three,&nbsp;<br />\r\n			the number is divisible by three (Pres. tense)</p>\r\n\r\n			<p>If you see Mr Fox tonight, tell him I am ill. (imperative).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2.</strong>&nbsp;If + Past Tense</td>\r\n			<td>would + inf</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3.</strong>&nbsp;If + Past Perfect Tense</td>\r\n			<td>would have + past participle</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\"><strong>Trong vế điều kiện (if, kh&ocirc;ng d&ugrave;ng will, would)</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;ch d&ugrave;ng c&acirc;u điều kiện (Uses of the Conditional)</strong></p>\r\n\r\n<p><strong>First conditional</strong></p>\r\n\r\n<p>C&acirc;u điều kiện c&oacute; thể th&agrave;nh sự thực:&nbsp;If my mother knows about this, we are in serious trouble.</p>\r\n\r\n<p>C&acirc;u điều kiện li&ecirc;n quan đến thời gian:&nbsp;If he is late, we will have to go without him.<br />\r\n<br />\r\n<strong>Second conditional</strong></p>\r\n\r\n<p>C&acirc;u điều kiện th&ocirc;ng thể thực hiện được</p>\r\n\r\n<p>If I won a million pounds, I would stop teaching. (improbable)<br />\r\nIf I became president, I would change the social security system. (said by ordinary people &gt;&gt; improbable)<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Third conditional</strong></p>\r\n\r\n<p>n&oacute;i về một điều kiện đ&atilde; kh&ocirc;ng thể thay ra trong qu&aacute; khứ (với nuối tiếc)</p>\r\n\r\n<p>&nbsp;If you had warned me, I would not have told your father about that party.(But you didn&#39;t, and I have).</p>\r\n\r\n<p>Nếu bạn đ&atilde; cảnh b&aacute;o t&ocirc;i, t&ocirc;i sẽ kh&ocirc;ng n&oacute;i với bố bạn về bữa tiệc( nhưng thực tế th&igrave;&nbsp;bạn kh&ocirc;ng cảnh bảo, v&agrave; t&ocirc;i đ&atilde; n&oacute;i với bố bạn).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cần ch&uacute; &yacute;</strong></p>\r\n\r\n<p><em><strong>1.</strong>&nbsp;Kh&ocirc;ng bao giờ will/would đi sau if, trừ trong trường hợp diễn tả một sự y&ecirc;u cầu (gần như l&agrave; please)</em></p>\r\n\r\n<p>e.g. If you will come this way, the manager will see you now.<br />\r\nI would be grateful if you would give me a little help.</p>\r\n\r\n<p><em><strong>2.</strong>&nbsp;Với điều kiện loại II, kh&ocirc;ng n&oacute;i If I was, m&agrave; l&agrave; If I were....</em></p>\r\n\r\n<p>If I&nbsp;<u>were</u>&nbsp;a rich man...</p>\r\n\r\n<p><em><strong>3.</strong>&nbsp;Thay v&igrave; n&oacute;i If not, ch&uacute;ng ta d&ugrave;ng unless</em></p>\r\n\r\n<p>&nbsp;I&#39;ll be back tomorrow unless there is a plane strike.( = if there is not a plane strike)<br />\r\nT&ocirc;i sẽ trở lại ng&agrave;y mai trừ phi c&oacute; cuộc b&atilde;i c&ocirc;ng m&aacute;y bay</p>','2016-10-14 06:05:47.896923',1,'Conditional Clauses'),(14,'Danh động từ và động từ nguyễn mẫu có to','<p><strong>Vai tr&ograve; v&agrave; vị tr&iacute;</strong></p>\r\n\r\n<p><strong>Danh động từ (Gerund)</strong>&nbsp;c&oacute; dạng Ving: Learning, Teaching, Loving, Studying&hellip; (giống dạng V-ing trong tiếp diễn nhưng kh&ocirc;ng li&ecirc;n quan g&igrave; đ&acirc;u nh&eacute;)</p>\r\n\r\n<p><strong>Động từ nguy&ecirc;n mẫu c&oacute; to (To infinitive):</strong> To learn, To teach, To Love, To study&hellip;.</p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho gerund and to infinitive\" src=\"http://luyenthidaihoctienganh.com/wp-content/uploads/2014/11/gerunds-infinitives.png\" /></p>\r\n\r\n<p><strong>Vai tr&ograve; v&agrave; vị tr&iacute; của Danh động từ v&agrave; động từ nguyễn mẫu c&oacute; to: y như danh từ, kh&ocirc;ng giống với động từ: </strong></p>\r\n\r\n<p><em><strong>L&agrave;m chủ ngữ:</strong></em></p>\r\n\r\n<p>&nbsp;<em><u>Swimming</u></em>&nbsp;is my favourite sport.</p>\r\n\r\n<p><em><u>To become</u></em>&nbsp;a famous singer is her dream.</p>\r\n\r\n<p><em><strong>L&agrave;m t&acirc;n ngữ:</strong></em></p>\r\n\r\n<p>&nbsp;My hobby is&nbsp;<em><u>collecting</u></em>&nbsp;stamps.</p>\r\n\r\n<p>I enjoy&nbsp;<em><u>traveling</u></em><u>.</u>&nbsp;</p>\r\n\r\n<p>I want <u>to travel</u></p>\r\n\r\n<p><strong>Tuy nhi&ecirc;n, để bổ sung &yacute; nghĩa cho danh động từ v&agrave; động từ nguy&ecirc;n mẫu, ch&uacute;ng ta d&ugrave;ng trạng từ:</strong></p>\r\n\r\n<p><u>To successfully learn</u> English is hard</p>\r\n\r\n<p><u>Successfully learning</u> English is hard</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>L&uacute;c n&agrave;o d&ugrave;ng Gerund, l&uacute;c n&agrave;o d&ugrave;ng To + inf?</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho gerund and to infinitive\" src=\"https://userscontent2.emaze.com/images/594ebfd6-5e99-4dc2-bf1b-8408a973d213/faddf180ae950ec7b4c3417de7c30903.jpg\" style=\"height:1132px; width:800px\" /></p>\r\n\r\n<p><strong>C&aacute;c cấu tr&uacute;c thường gặp của To + inf</strong></p>\r\n\r\n<p><strong>Cấu tr&uacute;c 1: It takes/took me 5 hours to + V :</strong> It takes/took me 5 hours to cook this meal</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 2: How/what/whether to + V: </strong></p>\r\n\r\n<p>We ask him how to get to the station.</p>\r\n\r\n<p>Have you decided where to go for your holiday?</p>\r\n\r\n<p>I don&rsquo;t know whether to apply for the job or not.</p>\r\n\r\n<p>Don&rsquo;t tell me what to do!</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 3: be + PII/adj + to + V</strong></p>\r\n\r\n<p>Be asked to/ be required to/ be asked to/ be eager to&hellip;..</p>\r\n\r\n<p>I am eager to see you</p>\r\n\r\n<p>T&ocirc;i rất n&oacute;ng l&ograve;ng được gặp bạn</p>\r\n\r\n<p>We are asked to finish the report by Monday</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i bị y&ecirc;u cầu ho&agrave;n thiện b&agrave;i b&aacute;o c&aacute;o trước thứ 2</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 4: Offer to + V</strong></p>\r\n\r\n<p><strong>He offer to help everybody</strong></p>\r\n\r\n<p>C&aacute;c động từ tương tự: want to, wish to, hesitate to, afford to, decide to, hope to, deserve to, promise to, agree to, plan to, manage to, attempt to, intend to, threaten to, refuse to, arrange to, fail to, forget to, learn to, tend to, seem to, pretend to, claim to, advise somebody to do sthing, require sb to do sth, allow sb to do sth, persuade sb to do sth&hellip;</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 5: Would like, would love, would prefer + to (muốn l&agrave;m g&igrave;)</strong></p>\r\n\r\n<p>Would you like to come to my party?</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 6: Prefer: prefer A to B hoặc prefer to do something rather than do something else. </strong></p>\r\n\r\n<p><strong>(th&iacute;ch điều g&igrave; hơn điều g&igrave;)</strong><br />\r\nI <u>prefer </u>this dress<u> to</u> the dress you gave me.</p>\r\n\r\n<p>I <u>prefer</u> driving <u>to</u> taking the bus</p>\r\n\r\n<p>I <u>prefer</u> to drive <u>rather than</u> travel by train</p>\r\n\r\n<p>Sarah<u> prefer</u> to live in the country <u>rather</u> than live oversea</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 7: c&aacute;c cụm cố định c&oacute; to</strong></p>\r\n\r\n<p>In an effort to</p>\r\n\r\n<p>In order to</p>\r\n\r\n<p>In an attempt to</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 8: to để chỉ mục đ&iacute;ch</strong></p>\r\n\r\n<p>We stay in the room to wait for her</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i ở lại trong ph&ograve;ng để đợi c&ocirc; ấy</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 9: used to (đ&atilde; từng)</strong></p>\r\n\r\n<p>I used to smoke : t&ocirc;i đ&atilde; từng h&uacute;t thuốc (nhưng giờ kh&ocirc;ng h&uacute;t nữa)</p>\r\n\r\n<p>Đừng nhầm với:</p>\r\n\r\n<p>I&rsquo;m used to smoking: t&ocirc;i đ&atilde; quen với việc h&uacute;t thuốc</p>\r\n\r\n<p>Hoặc: I get used to smoking : t&ocirc;i đ&atilde; quen với việc h&uacute;t thuốc)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;c cấu tr&uacute;c thường gặp của Gerund (V-ing)</strong></p>\r\n\r\n<p><strong>Cấu tr&uacute;c 1: Enjoy + Ving</strong></p>\r\n\r\n<p>I enjoy reading</p>\r\n\r\n<p>You can&rsquo;t stop me doing what I want</p>\r\n\r\n<p>Tương tự: stop, postpone, admid, avoid, imagine, finish, consider, deny, risk, fancy, give up, go on, keep, keep on, suggest, be keen on</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 2: Sau tất cả c&aacute;c giới từ (trừ to) lu&ocirc;n l&agrave; Ving:</strong></p>\r\n\r\n<p>Are you interested &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>in working</u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for us?</p>\r\n\r\n<p>I&rsquo;m not very good &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>at learning</u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;lan guages</p>\r\n\r\n<p>Sue must be feed up &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>with studying</u></p>\r\n\r\n<p>What are the advantages &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>of having</u> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a car?</p>\r\n\r\n<p><u>Before going out</u>, take an umbrella with you</p>\r\n\r\n<p>Ch&uacute; &yacute;: Sau To lu&ocirc;n l&agrave; động từ nguy&ecirc;n mẫu, trừ trường hợp đặc biệt (look forwar to + Ving)</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 3: C&aacute;c động từ đặc biệt c&oacute; To nhưng lại đi với Ving:</strong></p>\r\n\r\n<p>Be used to, get used to, be accustomed to :&nbsp; quen thuộc với</p>\r\n\r\n<p>Look forward to&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mong chờ</p>\r\n\r\n<p>Object to&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; phản đối</p>\r\n\r\n<p>Be devoted to, be dedicated to&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tận t&acirc;m với</p>\r\n\r\n<p>Be committed&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cam kết vơi</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 4: Mệnh đề -ing đi sau While v&agrave; when: </strong></p>\r\n\r\n<p>While playing football, he hurt his knee.</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 5: Spend/ waste time + Ving</strong></p>\r\n\r\n<p>He spends a lot of time/ hours and hours playing video games</p>\r\n\r\n<p>Anh ấy tốn rất nhiều thời gian/ h&agrave;ng giờ để chơi điện tử</p>\r\n\r\n<p><strong>Cấu tr&uacute;c 6: Would you mind + Ving</strong></p>\r\n\r\n<p>Would you mind closing the door, please? Bạn c&oacute; phiền kh&ocirc;ng đ&oacute;ng cửa nh&eacute;? (y&ecirc;u cầu 1 c&aacute;ch lịch sự)&nbsp;</p>\r\n\r\n<h2>C&aacute;c trường hợp sử dụng động từ nguy&ecirc;n mẫu kh&ocirc;ng c&oacute; to:</h2>\r\n\r\n<p>Make sb do sthing: bắt ai l&agrave;m g&igrave;</p>\r\n\r\n<p>She makes everyone clean the house</p>\r\n\r\n<p>Let sb do sthing: cho ph&eacute;p ai l&agrave;m g&igrave;</p>\r\n\r\n<p>Let me help you</p>\r\n\r\n<p>See sb do something: chứng kiến ai l&agrave;m g&igrave;</p>\r\n\r\n<p>I can see her come into the house.</p>','2016-10-14 06:56:59.211882',1,'Gerund and Infinitive');
/*!40000 ALTER TABLE `toeic_grammartopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_level`
--

DROP TABLE IF EXISTS `toeic_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_level`
--

LOCK TABLES `toeic_level` WRITE;
/*!40000 ALTER TABLE `toeic_level` DISABLE KEYS */;
INSERT INTO `toeic_level` VALUES (1,'beginner','2016-10-11 04:03:02.343000'),(2,'intermediate','2016-10-11 04:03:09.357000'),(3,'advanced','2016-10-11 04:03:13.373000');
/*!40000 ALTER TABLE `toeic_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_listeningtopic`
--

DROP TABLE IF EXISTS `toeic_listeningtopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_listeningtopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_listeningtopic_level_id_ceeaec63_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_listeningtopic_level_id_ceeaec63_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_listeningtopic`
--

LOCK TABLES `toeic_listeningtopic` WRITE;
/*!40000 ALTER TABLE `toeic_listeningtopic` DISABLE KEYS */;
INSERT INTO `toeic_listeningtopic` VALUES (1,'Doctor\'s appointment','','2016-10-18 02:58:07.182838',1),(5,'Transportation Arrangement','','2016-10-18 03:11:29.580196',1);
/*!40000 ALTER TABLE `toeic_listeningtopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage`
--

DROP TABLE IF EXISTS `toeic_passage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `istestsix` tinyint(1) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_passage_level_id_517164c3_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_passage_level_id_517164c3_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage`
--

LOCK TABLES `toeic_passage` WRITE;
/*!40000 ALTER TABLE `toeic_passage` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage_questions`
--

DROP TABLE IF EXISTS `toeic_passage_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passage_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_passage_questions_passage_id_f758eb0a_uniq` (`passage_id`,`question_id`),
  KEY `toeic_passage_question_question_id_7b4420e4_fk_toeic_question_id` (`question_id`),
  CONSTRAINT `toeic_passage_question_question_id_7b4420e4_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_passage_questions_passage_id_931f3c3c_fk_toeic_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `toeic_passage` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage_questions`
--

LOCK TABLES `toeic_passage_questions` WRITE;
/*!40000 ALTER TABLE `toeic_passage_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage_topics`
--

DROP TABLE IF EXISTS `toeic_passage_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passage_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_passage_topics_passage_id_abf38c1a_uniq` (`passage_id`,`topic_id`),
  KEY `toeic_passage_topics_topic_id_cf3f2312_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_passage_topics_passage_id_d3b30946_fk_toeic_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `toeic_passage` (`id`),
  CONSTRAINT `toeic_passage_topics_topic_id_cf3f2312_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage_topics`
--

LOCK TABLES `toeic_passage_topics` WRITE;
/*!40000 ALTER TABLE `toeic_passage_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_passage_vocabs`
--

DROP TABLE IF EXISTS `toeic_passage_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_passage_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passage_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_passage_vocabs_passage_id_6a7bd2ae_uniq` (`passage_id`,`vocab_id`),
  KEY `toeic_passage_vocabs_vocab_id_3744c8b6_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_passage_vocabs_passage_id_09a09005_fk_toeic_passage_id` FOREIGN KEY (`passage_id`) REFERENCES `toeic_passage` (`id`),
  CONSTRAINT `toeic_passage_vocabs_vocab_id_3744c8b6_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_passage_vocabs`
--

LOCK TABLES `toeic_passage_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_passage_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_passage_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_phrase`
--

DROP TABLE IF EXISTS `toeic_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `translation` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_phrase_level_id_8243c88e_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_phrase_level_id_8243c88e_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_phrase`
--

LOCK TABLES `toeic_phrase` WRITE;
/*!40000 ALTER TABLE `toeic_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_phrase_listeningtopics`
--

DROP TABLE IF EXISTS `toeic_phrase_listeningtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_phrase_listeningtopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL,
  `listeningtopic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_phrase_listeningtopics_phrase_id_3a8a5520_uniq` (`phrase_id`,`listeningtopic_id`),
  KEY `toeic_phra_listeningtopic_id_303de8ac_fk_toeic_listeningtopic_id` (`listeningtopic_id`),
  CONSTRAINT `toeic_phra_listeningtopic_id_303de8ac_fk_toeic_listeningtopic_id` FOREIGN KEY (`listeningtopic_id`) REFERENCES `toeic_listeningtopic` (`id`),
  CONSTRAINT `toeic_phrase_listeningtopi_phrase_id_5b94ce13_fk_toeic_phrase_id` FOREIGN KEY (`phrase_id`) REFERENCES `toeic_phrase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_phrase_listeningtopics`
--

LOCK TABLES `toeic_phrase_listeningtopics` WRITE;
/*!40000 ALTER TABLE `toeic_phrase_listeningtopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_phrase_listeningtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_phrase_topics`
--

DROP TABLE IF EXISTS `toeic_phrase_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_phrase_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_phrase_topics_phrase_id_8ff7e06d_uniq` (`phrase_id`,`topic_id`),
  KEY `toeic_phrase_topics_topic_id_6dd2d28d_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_phrase_topics_phrase_id_59645e15_fk_toeic_phrase_id` FOREIGN KEY (`phrase_id`) REFERENCES `toeic_phrase` (`id`),
  CONSTRAINT `toeic_phrase_topics_topic_id_6dd2d28d_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_phrase_topics`
--

LOCK TABLES `toeic_phrase_topics` WRITE;
/*!40000 ALTER TABLE `toeic_phrase_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_phrase_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_phrase_vocabs`
--

DROP TABLE IF EXISTS `toeic_phrase_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_phrase_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_phrase_vocabs_phrase_id_16d98c32_uniq` (`phrase_id`,`vocab_id`),
  KEY `toeic_phrase_vocabs_vocab_id_4959057d_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_phrase_vocabs_phrase_id_53d36b26_fk_toeic_phrase_id` FOREIGN KEY (`phrase_id`) REFERENCES `toeic_phrase` (`id`),
  CONSTRAINT `toeic_phrase_vocabs_vocab_id_4959057d_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_phrase_vocabs`
--

LOCK TABLES `toeic_phrase_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_phrase_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_phrase_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_pronunciationlesson`
--

DROP TABLE IF EXISTS `toeic_pronunciationlesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_pronunciationlesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `url` varchar(200) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  `videoType_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_pronunciationlesson_level_id_b028cfe3_fk_toeic_level_id` (`level_id`),
  KEY `toeic_pronunci_videoType_id_4ca0d01f_fk_toeic_videolessontype_id` (`videoType_id`),
  CONSTRAINT `toeic_pronunci_videoType_id_4ca0d01f_fk_toeic_videolessontype_id` FOREIGN KEY (`videoType_id`) REFERENCES `toeic_videolessontype` (`id`),
  CONSTRAINT `toeic_pronunciationlesson_level_id_b028cfe3_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_pronunciationlesson`
--

LOCK TABLES `toeic_pronunciationlesson` WRITE;
/*!40000 ALTER TABLE `toeic_pronunciationlesson` DISABLE KEYS */;
INSERT INTO `toeic_pronunciationlesson` VALUES (1,'Short vowel /ɪ/','<p><img src=\"http://www.rose-medical.com/images/viseme_6.jpg\" /></p>\r\n\r\n<p><strong>1. C&aacute;ch ph&aacute;t &acirc;m:</strong></p>\r\n\r\n<p><strong>Nguy&ecirc;n &acirc;m /ɪ/ (ngắn):</strong></p>\r\n\r\n<p>Lưỡi đưa hướng l&ecirc;n tr&ecirc;n v&agrave; ra ph&iacute;a trước, khoảng c&aacute;ch m&ocirc;i tr&ecirc;n v&agrave; dưới hẹp, mở rộng miệng sang 2 b&ecirc;n. Tuy nhi&ecirc;n, khi ph&aacute;t &acirc;m &acirc;m /ɪ/ ngắn, vị tr&iacute; lưỡi thấp hơn, khoảng c&aacute;ch m&ocirc;i tr&ecirc;n-dưới rộng hơn v&agrave; miệng mở rộng 2 b&ecirc;n nhưng hẹp hơn một ch&uacute;t so với &acirc;m /i:/ d&agrave;i.</p>\r\n\r\n<p><img alt=\"\" src=\"http://static.ioe.goplay.vn/ioenews/VTCEdu/image/e-tap-chi/uploads/20119/971f610e-e22a-4531-bc40-438d25635efc_short%20i.png\" style=\"height:145px; width:220px\" /><strong>&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Nhận biết:</strong></p>\r\n\r\n<p><strong>a. Nguy&ecirc;n &acirc;m /ɪ/ ngắn c&oacute; những c&aacute;ch viết ch&iacute;nh tả sau đ&acirc;y:</strong></p>\r\n\r\n<p><strong>i:</strong>&nbsp;(phổ biến nhất) &ldquo;i&rdquo; được ph&aacute;t &acirc;m l&agrave; /ɪ/ trong từ c&oacute; một &acirc;m tiết v&agrave; tận c&ugrave;ng bằng 1 hoặc 2 phụ &acirc;m.&nbsp;<em>&nbsp;</em></p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;fish, slip, hit, rich, lip, kick, bit&nbsp;<strong>&nbsp;</strong></p>\r\n\r\n<p><strong>a</strong>: &ldquo;a&rdquo; được ph&aacute;t &acirc;m l&agrave; /ɪ/ đối với những danh từ c&oacute; hai &acirc;m tiết v&agrave; c&oacute; tận c&ugrave;ng bằng age.</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ</em>: sausage, message, manage</p>\r\n\r\n<p><strong>e</strong>: &ldquo;e&rdquo; được ph&aacute;t &acirc;m l&agrave; /ɪ/ trong tiếp đầu ngữ &ldquo;be&rdquo;, &ldquo;de&rdquo; v&agrave; &ldquo;re&rdquo;.</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:&nbsp;</em>begin, become, decide, repeat, remind</p>\r\n\r\n<p><strong>ui</strong>: &quot;ui&quot; thường được ph&aacute;t &acirc;m l&agrave; /ɪ/</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;build, guild, mosquito</p>\r\n\r\n<p>* C&aacute;c trường hợp kh&aacute;c:</p>\r\n\r\n<p><strong>u:&nbsp;</strong><em>V&iacute; dụ:</em>&nbsp;busy</p>\r\n\r\n<p><strong>e:</strong>&nbsp;<em>V&iacute; dụ:</em>&nbsp;England, women</p>\r\n\r\n<p><strong>o</strong>:&nbsp;<em>V&iacute; dụ:</em>&nbsp;women</p>','https://www.youtube.com/embed/TNFKG0yvDx4?list=PLD6B222E02447DC07','2016-10-25 03:56:27.796447',1,3),(2,'Long vowel /i:/','<p>Hai nguy&ecirc;n &acirc;m&nbsp;<strong>/ɪ/ v&agrave; /i:/&nbsp;</strong>khi đọc l&ecirc;n chỉ kh&aacute;c nhau một ch&uacute;t, nhưng chỉ cần ch&uacute; &yacute; nghe nhiều v&agrave; luyện n&oacute;i nhiều một ch&uacute;t th&igrave; việc ph&acirc;n biệt l&agrave; kh&ocirc;ng kh&oacute;.<strong>&nbsp;</strong></p>\r\n\r\n<p><img src=\"http://www.rose-medical.com/images/viseme_6.jpg\" /></p>\r\n\r\n<p><strong>1. C&aacute;ch ph&aacute;t &acirc;m:</strong>&nbsp;<strong>Nguy&ecirc;n &acirc;m /i:/ (d&agrave;i):</strong></p>\r\n\r\n<p>Lưỡi đưa hướng l&ecirc;n tr&ecirc;n v&agrave; ra ph&iacute;a trước, khoảng c&aacute;ch m&ocirc;i tr&ecirc;n v&agrave; dưới hẹp, mở rộng miệng sang 2 b&ecirc;n.&nbsp;<img alt=\"\" src=\"http://static.ioe.goplay.vn/ioenews/VTCEdu/image/e-tap-chi/uploads/20119/52e3f1d2-9656-4935-aadc-8e033635aca0_long%20i.png\" />&nbsp;<strong>&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nguy&ecirc;n &acirc;m /ɪ/ (ngắn):</strong></p>\r\n\r\n<p>Lưỡi đưa hướng l&ecirc;n tr&ecirc;n v&agrave; ra ph&iacute;a trước, khoảng c&aacute;ch m&ocirc;i tr&ecirc;n v&agrave; dưới hẹp, mở rộng miệng sang 2 b&ecirc;n. Tuy nhi&ecirc;n, khi ph&aacute;t &acirc;m &acirc;m /ɪ/ ngắn, vị tr&iacute; lưỡi thấp hơn, khoảng c&aacute;ch m&ocirc;i tr&ecirc;n-dưới rộng hơn v&agrave; miệng mở rộng 2 b&ecirc;n nhưng hẹp hơn một ch&uacute;t so với &acirc;m /i:/ d&agrave;i.</p>\r\n\r\n<p><img alt=\"\" src=\"http://static.ioe.goplay.vn/ioenews/VTCEdu/image/e-tap-chi/uploads/20119/971f610e-e22a-4531-bc40-438d25635efc_short%20i.png\" /><strong>&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Nhận biết:</strong></p>\r\n\r\n<p><strong>b. Nguy&ecirc;n &acirc;m /i:/ d&agrave;i c&oacute; những c&aacute;ch viết sau đ&acirc;y:</strong></p>\r\n\r\n<p><strong>e:</strong>&nbsp;&quot;e&quot; thường được ph&aacute;t &acirc;m l&agrave; /i:/ trong trường hợp c&oacute; 2 phụ &acirc;m đứng trước 2 nguy&ecirc;n &acirc;m e: (phụ &acirc;m-e-phụ &acirc;m-e)</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;scene, complete, Vietnamese</p>\r\n\r\n<p><strong>ea:</strong>&nbsp;&quot;ea&quot; thường được ph&aacute;t &acirc;m l&agrave; /i:/:</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;tea, meal, meat, heat, read, cheap</p>\r\n\r\n<p><strong>ee:</strong>&nbsp;2 chữ e đi liền nhau được ph&aacute;t &acirc;m l&agrave; /i:/</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;three, see, free, employee, agree</p>\r\n\r\n<p><strong>ei:</strong>&nbsp;trong một số trường hợp</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;receive, ceiling, receipt</p>\r\n\r\n<p><strong>ie:</strong>&nbsp;&quot;ie&quot; thường được ph&aacute;t &acirc;m l&agrave; /i:/ khi đứng trước &quot;f&quot; hoặc &quot;ve&quot;</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V&iacute; dụ:</em>&nbsp;chief, belief, relief, believe</p>','https://www.youtube.com/embed/RZmGzSb-6OM?list=PLE2A374AF7E6ADC89','2016-11-28 01:37:33.134925',1,3),(3,'Short vowel /e/','<p><strong>C&aacute;ch ph&aacute;t &acirc;m</strong></p>\r\n\r\n<p>Lưu &yacute; mở miệng rộng.&nbsp;</p>\r\n\r\n<p><img src=\"http://www.rose-medical.com/images/viseme_4.jpg\" /></p>\r\n\r\n<p><strong>Nhận biết</strong></p>\r\n\r\n<p>1. &quot;a&quot; được ph&aacute;t &acirc;m l&agrave; /e/</p>\r\n\r\n<p>anyone</p>\r\n\r\n<p>many</p>\r\n\r\n<p>2. /e/ trong từ c&oacute; một &acirc;m tiết<br />\r\nhead</p>\r\n\r\n<p>met</p>\r\n\r\n<p>send</p>\r\n\r\n<p>3. &quot;ea&quot; thường được ph&aacute;t &acirc;m l&agrave; /e/ trong một số trường hợp như sau:</p>\r\n\r\n<p>dead</p>\r\n\r\n<p>heavy</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','https://www.youtube.com/embed/hLN1cdSTDo8?list=PLE2A374AF7E6ADC89','2016-11-28 03:43:09.282133',1,3),(4,'Short vowel /æ/','<p><strong>C&aacute;ch ph&aacute;t &acirc;m:</strong></p>\r\n\r\n<p>Miệng mở rộng, lưỡng thấp v&agrave; hơi đưa ra ph&iacute;a trước.</p>\r\n\r\n<p><img src=\"http://www.rose-medical.com/images/viseme_1.jpg\" /></p>\r\n\r\n<p><strong>C&aacute;ch nhận biết:</strong></p>\r\n\r\n<p>1. Trong những từ c&oacute; một &acirc;m tiết</p>\r\n\r\n<p>hat</p>\r\n\r\n<p>fat</p>\r\n\r\n<p>map</p>\r\n\r\n<p>sad</p>\r\n\r\n<p>fan</p>\r\n\r\n<p>dam</p>\r\n\r\n<p>&nbsp;2. Khi ở trong một &acirc;m tiết được nhấn mạnh</p>\r\n\r\n<p>captain</p>\r\n\r\n<p>latter</p>\r\n\r\n<p>manner</p>\r\n\r\n<p>happy</p>\r\n\r\n<p>3.&nbsp;Một số từ người Anh đọc l&agrave;&nbsp;/aː/, người Mỹ đọc l&agrave;/&aelig;/</p>\r\n\r\n<p>can&#39;t:&nbsp;/kɑːnt/ (British English);&nbsp;/k&aelig;nt (American English.</p>','https://www.youtube.com/embed/qVhaIHk88a8?list=PLE2A374AF7E6ADC89','2016-11-28 04:29:45.561855',1,3),(5,'Short vowel /ʌ/','<p><strong>C&aacute;ch ph&aacute;t &acirc;m:</strong></p>\r\n\r\n<p><img src=\"http://www.rose-medical.com/images/viseme_1.jpg\" /></p>\r\n\r\n<p>Mở miệng rộng bằng 1/2 so với khi ph&aacute;t &acirc;m&nbsp;/&aelig;/&nbsp;đưa lưỡi về ph&iacute;a sau hơn một ch&uacute;t so với khi ph&aacute;t &acirc;m&nbsp;/&aelig;/</p>\r\n\r\n<p><strong>C&aacute;ch nhận biết:</strong></p>\r\n\r\n<p>&quot;u&quot; ph&aacute;t &acirc;m th&agrave;nh /ʌ/&nbsp;trong c&aacute;c từ c&oacute; t&acirc;n c&ugrave;ng l&agrave; &quot;u&quot; + phụ &acirc;m:</p>\r\n\r\n<p>cup</p>\r\n\r\n<p>up</p>\r\n\r\n<p>cut</p>\r\n\r\n<p>but</p>\r\n\r\n<p>shut</p>\r\n\r\n<p>&quot;o&quot; thường được ph&aacute;t &acirc;m l&agrave; /ʌ/ trong những từ c&oacute; một &acirc;m tiết, hoặc &acirc;m tiết được nhấn mạnh:</p>\r\n\r\n<p>come</p>\r\n\r\n<p>some&nbsp;</p>\r\n\r\n<p>dove</p>\r\n\r\n<p>honey</p>\r\n\r\n<p>company</p>\r\n\r\n<p>Trong những tiếp đầu ngữ un, um:</p>\r\n\r\n<p>uneasy</p>\r\n\r\n<p>unhappy</p>\r\n\r\n<p>&quot;oo&quot; thường được ph&aacute;t &acirc;m l&agrave; /ʌ/ trong một số trường hợp như:</p>\r\n\r\n<p>flood</p>\r\n\r\n<p>blood</p>\r\n\r\n<p>&quot;ou&quot; thường được ph&aacute;t &acirc;m l&agrave; /ʌ/ trong c&aacute;c từ:</p>\r\n\r\n<p>country</p>\r\n\r\n<p>cousin</p>\r\n\r\n<p>tough</p>\r\n\r\n<p>enough</p>','https://www.youtube.com/embed/PZwKFFp7V50?list=PLE2A374AF7E6ADC89','2016-11-28 05:10:05.352664',1,3),(6,'Long vowel /ɑː/','<p><strong>C&aacute;ch ph&aacute;t &acirc;m</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; nguy&ecirc;n &acirc;m d&agrave;i, lưu &yacute; ph&aacute;t &acirc;m hơi d&agrave;i hơn 1 ch&uacute;t so với c&aacute;c nguy&ecirc;n &acirc;m ngắn&nbsp;</p>\r\n\r\n<p>Mở rộng miệng, lưỡi kh&ocirc;ng cong l&ecirc;n m&agrave; để nằm thoải m&aacute;i dưới h&agrave;m dưới.</p>\r\n\r\n<p><img src=\"http://www.rose-medical.com/images/viseme_2.jpg\" /></p>\r\n\r\n<p><strong>C&aacute;ch nhận biết</strong></p>\r\n\r\n<p>1.&nbsp;&quot;a&quot; được ph&aacute;t &acirc;m l&agrave; /ɑː/ trong một số trường hợp</p>\r\n\r\n<p>bar</p>\r\n\r\n<p>smart</p>\r\n\r\n<p>hard</p>\r\n\r\n<p>car</p>\r\n\r\n<p>2.&nbsp;&quot;ua&quot; v&agrave; &quot;au&quot; cũng c&oacute; thể được ph&aacute;t &acirc;m l&agrave; /ɑː/</p>\r\n\r\n<p>guard</p>\r\n\r\n<p>laugh</p>\r\n\r\n<p>aunt</p>','https://www.youtube.com/embed/T-BUlk9im58?list=PLE2A374AF7E6ADC89','2016-11-28 09:58:29.379722',1,3),(7,'Short vowel /ɒ/','<p><strong>C&aacute;ch ph&aacute;t &acirc;m</strong></p>\r\n\r\n<p>/ɒ/ l&agrave; nguy&ecirc;n &acirc;m ngắn. Để tạo ra &acirc;m n&agrave;y, hơi tr&ograve;n m&ocirc;i, lưỡi hạ thấp v&agrave; hơi thu về phần sau miệng.</p>\r\n\r\n<p><strong>C&aacute;ch nhận biết</strong></p>\r\n\r\n<p>&quot;o&quot; thường được ph&aacute;t &acirc;m l&agrave; /ɒ/ trong một số trường hợp</p>\r\n\r\n<p>dog</p>\r\n\r\n<p>stop</p>\r\n\r\n<p>lock</p>\r\n\r\n<p>pot</p>\r\n\r\n<p>top</p>\r\n\r\n<p>box</p>\r\n\r\n<p>lot</p>\r\n\r\n<p>odd</p>\r\n\r\n<p>shock</p>','https://www.youtube.com/embed/MAk-XtHsyzM?list=PLE2A374AF7E6ADC89','2016-11-28 10:39:04.973678',1,3),(8,'Long vowel /ɔ:/','<p>C&aacute;ch ph&aacute;t &acirc;m</p>\r\n\r\n<p>/ɔː/ l&agrave; nguy&ecirc;n &acirc;m d&agrave;i. Để ph&aacute;t &acirc;m, đặt lưỡi nằm xuống, tr&ograve;n m&ocirc;i v&agrave; ph&aacute;t &acirc;m. Ch&uacute; &yacute; nguy&ecirc;n &acirc;m d&agrave;i sẽ d&agrave;i hơn nguy&ecirc;n &acirc;m ngắn một ch&uacute;t.&nbsp;</p>\r\n\r\n<p>C&aacute;ch nhận biết</p>\r\n\r\n<p>a&quot; được ph&aacute;t &acirc;m l&agrave; /ɔː/ trong những từ c&oacute; một &acirc;m tiết m&agrave; tận c&ugrave;ng bằng &quot;ll&quot;:</p>\r\n\r\n<p>tall</p>\r\n\r\n<p>call&nbsp;</p>\r\n\r\n<p>small</p>\r\n\r\n<p>fall</p>\r\n\r\n<p>ball</p>\r\n\r\n<p>&nbsp;&quot;o&quot; thường được ph&aacute;t &acirc;m l&agrave; /ɔː/ trong những từ c&oacute; nh&oacute;m or+phụ &acirc;m</p>\r\n\r\n<p>lord</p>\r\n\r\n<p>north</p>\r\n\r\n<p>pork</p>\r\n\r\n<p>corner</p>\r\n\r\n<p>sort</p>\r\n\r\n<p>morning</p>\r\n\r\n<p>&quot;au&quot; thường được ph&aacute;t &acirc;m l&agrave; /ɔː/ trong một số trường hợp như:</p>\r\n\r\n<p>fault</p>\r\n\r\n<p>launch</p>\r\n\r\n<p>audience</p>\r\n\r\n<p>daughter</p>\r\n\r\n<p>naughty</p>\r\n\r\n<p>&quot;aw&quot; thường được ph&aacute;t &acirc;m l&agrave; /ɔː/ khi trong một từ c&oacute; tận c&ugrave;ng l&agrave; aw hay aw+phụ &acirc;m</p>\r\n\r\n<p>law</p>\r\n\r\n<p>dawn</p>\r\n\r\n<p>awful</p>\r\n\r\n<p>&quot;oa&quot; được ph&aacute;t &acirc;m l&agrave; /4ɔː4/ khi đứng trước &quot;r&quot;</p>\r\n\r\n<p>soar</p>\r\n\r\n<p>board</p>\r\n\r\n<p>&nbsp;</p>','https://www.youtube.com/embed/35rzq87Ck3M?list=PLE2A374AF7E6ADC89','2016-11-28 10:47:08.135360',1,3);
/*!40000 ALTER TABLE `toeic_pronunciationlesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_pronunciationlesson_dictations`
--

DROP TABLE IF EXISTS `toeic_pronunciationlesson_dictations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_pronunciationlesson_dictations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pronunciationlesson_id` int(11) NOT NULL,
  `dictation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_pronunciationlesson_d_pronunciationlesson_id_e9159936_uniq` (`pronunciationlesson_id`,`dictation_id`),
  KEY `toeic_pronunciationl_dictation_id_318720e4_fk_toeic_dictation_id` (`dictation_id`),
  CONSTRAINT `pronunciationlesson_id_6246860f_fk_toeic_pronunciationlesson_id` FOREIGN KEY (`pronunciationlesson_id`) REFERENCES `toeic_pronunciationlesson` (`id`),
  CONSTRAINT `toeic_pronunciationl_dictation_id_318720e4_fk_toeic_dictation_id` FOREIGN KEY (`dictation_id`) REFERENCES `toeic_dictation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_pronunciationlesson_dictations`
--

LOCK TABLES `toeic_pronunciationlesson_dictations` WRITE;
/*!40000 ALTER TABLE `toeic_pronunciationlesson_dictations` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_pronunciationlesson_dictations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_pronunciationlesson_vocabs`
--

DROP TABLE IF EXISTS `toeic_pronunciationlesson_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_pronunciationlesson_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pronunciationlesson_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_pronunciationlesson_v_pronunciationlesson_id_975b453e_uniq` (`pronunciationlesson_id`,`vocab_id`),
  KEY `toeic_pronunciationlesson_vo_vocab_id_616c1b3f_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `pronunciationlesson_id_eb7fe0df_fk_toeic_pronunciationlesson_id` FOREIGN KEY (`pronunciationlesson_id`) REFERENCES `toeic_pronunciationlesson` (`id`),
  CONSTRAINT `toeic_pronunciationlesson_vo_vocab_id_616c1b3f_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_pronunciationlesson_vocabs`
--

LOCK TABLES `toeic_pronunciationlesson_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_pronunciationlesson_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_pronunciationlesson_vocabs` VALUES (1,1,264),(2,1,265),(3,1,266),(4,1,267),(5,1,268),(6,1,269),(7,1,270),(8,1,271),(9,1,272),(10,1,273),(11,1,275),(12,1,278),(13,1,279),(21,2,41),(25,2,146),(27,2,216),(24,2,305),(14,2,322),(15,2,323),(16,2,324),(17,2,325),(18,2,326),(19,2,327),(20,2,328),(26,2,329),(22,2,330),(23,2,331),(39,3,253),(40,3,280),(41,3,312),(28,3,333),(29,3,335),(30,3,336),(31,3,337),(32,3,338),(33,3,339),(34,3,340),(35,3,341),(36,3,343),(37,3,344),(38,3,345),(45,4,346),(46,4,347),(47,4,348),(48,4,350),(49,4,351),(42,4,352),(43,4,354),(44,4,355),(50,5,356),(51,5,357),(52,5,358),(53,5,359),(54,5,360),(55,5,362),(56,5,363),(57,5,364),(58,5,365),(59,5,366),(60,5,367),(61,5,369),(62,6,370),(63,6,371),(64,6,372),(65,6,373),(66,6,374),(67,6,375),(68,6,376);
/*!40000 ALTER TABLE `toeic_pronunciationlesson_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question`
--

DROP TABLE IF EXISTS `toeic_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `fulltext` longtext,
  `explanation` longtext,
  `translation` longtext,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `typeOf_id` int(11) DEFAULT NULL,
  `audio` varchar(100),
  `order` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_question_level_id_20ab7552_fk_toeic_level_id` (`level_id`),
  KEY `toeic_question_typeOf_id_b992096d_fk_toeic_type_id` (`typeOf_id`),
  CONSTRAINT `toeic_question_level_id_20ab7552_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`),
  CONSTRAINT `toeic_question_typeOf_id_b992096d_fk_toeic_type_id` FOREIGN KEY (`typeOf_id`) REFERENCES `toeic_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question`
--

LOCK TABLES `toeic_question` WRITE;
/*!40000 ALTER TABLE `toeic_question` DISABLE KEYS */;
INSERT INTO `toeic_question` VALUES (2,'Note that the hotel\'s pool and pool deck will be closed until ----- on them is completed later this month.','Note that the hotel\'s pool and pool deck will be closed until construction on them is completed later this month.','Chú ý cụm sau until: \"----- on them is completed....\". Ta thấy ở đây cần 1 danh từ vì động từ \"is\" chưa có chủ ngữ nên chọn construction (on them chỉ là cụm bổ nghĩa cho danh từ trước nó). Hơn nữa, dịch nghĩa: bể bơi của khách sạn sẽ bị đóng cửa cho đến khi \"cái gì đó\" hoàn thành. Rõ ràng \"cái gì đó\" phải là danh từ.','Chú ý rằng bể bơi và khu vực xung quanh bể sẽ bị đóng cửa cho đến khi việc xây dựng ở chúng được hoàn thành.','2016-10-11 08:59:10.922000',1,1,'',1),(3,'Aster Broadcasting Group ----- yesterday that it expects the semiconductor market to enter full recovery mode next year.','Aster Broadcasting Group announced yesterday that it expects the semiconductor market to enter full recovery mode next year.','dựa vào dấu hiệu \"hôm qua\" (yesterday), chia động từ ở thời quá khứ đơn (pass simple)','Nhóm Aster Broadcasting công bố hôm qua rằng họ đang chờ thị trường bán dẫn hồi phục hoàn toàn vào năm tới.','2016-10-11 12:51:15.515000',1,1,'',1),(4,'Instructors wishing to place materials on reserve ----- the library should fill out a Reserve Request Form.','Instructors wishing to place materials on reserve at the library should fill out a Reserve Request Form.','','Giảng viên muốn đặt tài liệu ở khu lữu trư tại thư viện cần phải điền vào Mẫu Yêu cầu Lưu trữ','2016-10-12 00:56:58.217000',1,1,'',1),(5,'This apartment complex has an ----- exterior design and stylish interior furnishings.','This apartment complex has an attractive exterior design and stylish interior furnishings.','chú ý dạng \"mạo từ\" + .... + danh từ (đơn hoặc ghép) thì chỗ ... sẽ là vị trí của tính từ:  an ----- exterior design (exterior design là danh từ ghép), cần điền tính từ \"attractive\". <br/> Xem thêm phần \"các dạng thường thi trong bài toeic\" của phần Danh từ.','Khu chung cư này có một thiết kế bên ngoài hấp dẫn và nội thất bên trong phong cách.','2016-10-12 01:55:53.975000',1,1,'',1),(6,'The public is invited to ----- the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.','The public is invited to attend the dinner event, with proceeds from ticket sales benefiting a BMX scholarship fund.','Chú ý cấu trúc của các động từ: participate và attend đều là tham dự, nhưng cấu trúc khác nhau. Participate to + noun, trong khi Attend + noun. Câu này không có \"to\" nên phải điền participate.','Công chúng được mời tham dự sự kiện tiệc tối, với tiền bán vé làm lợi cho một quỹ học bổng BMX.','2016-10-12 02:23:32.998000',1,2,'',1),(7,'He ----- delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.','He regularly delivers keynote speeches and holds workshop on customer satisfaction strategy and the building of profitable customer relationships.','Cần một trạng từ bổ sung ý nghĩa cho động từ \"delivers\" ( anh ấy \"thường\" đọc các bài phát biểu quan trọng...)','Anh ấy thường đọc các bài phát biểu quan trọng và tổ chức tập huấn về chiến lược hài lòng khách hàng và sự xây dựng quan hệ khách hàng có lợi.','2016-10-12 03:24:27.537000',1,1,'',1),(8,'Attendees will be required to work ----- alone and in groups when performing study sample analyses.','Attendees will be required to work both alone and in groups when performing study sample analyses.','Ghi nhớ cụm both... and: cả... cả','Người tham dự sẽ được yêu cầu làm việc cả một mình và trong nhóm khi thực hiện các phân tích mẫu nghiên cứu.','2016-10-12 03:39:08.337000',1,1,NULL,1),(9,'Unfortunately, with the rise of the popularity of soft drinks, tea is not ----- popular as it used to be.','Unfortunately, with the rise of the popularity of soft drinks, tea is not as popular as it used to be.','Ở đây là dạng so sánh bằng: tea is not as popular as it used to be: trà không còn nổi tiếng như trước.','Thật không may là, với sự tăng lên độ nổi tiếng của nước ngọt, trà không còn phổ biến như nó từng trước đây.','2016-10-12 03:53:51.551000',1,1,NULL,1),(10,'As demand for ----- wheat-based products falls, local producers earn less and less and the total income of the country declines.','As demand for their wheat-based products falls, local producers earn less and less and the total income of the country declines.','Cần một tính tử sở hữu đi trước cụm \"wheat-based products\" (sản phẩm từ lúa mỳ).\r\nChú ý \"theirs\" là đại từ sở hữu, thay cho cả một cụm danh từ (theirs = their wheat-based products\")','Vì nhu cầu cho sản phầm từ lúa mỳ của họ giảm xuống, các nhà sản xuất địa phương kiếm được ít hơn và   tổng thu nhập của đất nước giảm xuống.','2016-10-12 05:10:15.591000',1,1,NULL,1),(11,'Ottawa Police Chief Vern White has ----- Mr.McDonald for securing $1million for the city\'s drug treatment initiative.','Ottawa Police Chief Vern White has congratulated Mr.McDonald for securing $1million for the city\'s drug treatment initiative.','','Cảnh sát trưởng VW của Ottawa đã chúc mừng ông McDonald trong việc đảm bảo 1 triệu đô cho biện pháp cai nghiện thuốc của thành phố.','2016-10-12 05:20:57.332000',2,2,NULL,1),(12,'Ms James stated that ----- must work together to make sure the committee is effective.','Ms James stated that everyone must work together to make sure the committee is effective.','','Bà James nói rằng mọi người phải làm việc cùng nhau để đảm bảo ủy ban được hiệu quả.','2016-10-12 05:41:57.517000',1,1,NULL,1),(13,'When you are buying an adjustable bed, you should consider ----- features such as bed height, size, material and warranty.','When you are buying an adjustable bed, you should consider specific features such as bed height, size, material and warranty.','Vì ở sau liệt kê 1 loạt các đặc điểm cụ thể (height, size, material...) nên chúng ta chọn \"specific features\" (đặc điểm cụ thể).','Khi bạn mua một cái giường có thể chỉnh được, bản phải xem xét các đặc điểm cụ thể như chiều cao, kích thước, vật liệu và bảo hành.','2016-10-12 05:47:52.908000',1,2,NULL,1),(14,'The company\'s management has a firm belief that its strategic direction is sound and will continue to exceed shareholder -----.','The company\'s management has a firm belief that its strategic direction is sound and will continue to exceed shareholder expectation.','exceed nghĩa là vượt quá. Phải điền \"shareholder expectation\" (kì vọng của cổ đông) mới phù hợp trong hoàn cảnh này.','Ban quản lý của công ty có một niềm nin vững chắc rằng hướng đi chiến lược của nó đáng tin cậy và sẽ tiếp tục vượt quá kỳ vọng của cổ đông.','2016-10-12 07:42:43.187000',1,1,NULL,1),(15,'Currently, there is an increasing demand for Internet access ----- the telecommunications industry.','Currently, there is an increasing demand for Internet access across the telecommunications industry.','Across là giới từ nơi chốn (khắn), during là giới từ chỉ thời gian (trong suốt, ví dụ during the winter). Chọn across để phù hợp với nghĩa của câu (across the industry = khắp ngành)','Gần đây, có một nhu cầu đang tăng lên cho dịch vụ Internet khắp ngành viễn thông.','2016-10-13 04:23:32.588391',2,1,NULL,1),(16,'Needs assessment can help you identify areas for improvement and ultimately help you realize your goals more -----.','Needs assessment can help you identify areas for improvement and ultimately help you realize your goals more efficiently.','Trạng từ \"efficiently\" (một cách hiệu quả) bổ sung ý nghĩa cho \"\"realize your goals\" (thực hiện mục đích của bạn).','Đánh giá nhu cầu có thể giúp bạn xác định các mặt để cải thiện và cuối cùng giúp bạn thực hiện mục tiêu một cách hiệu quả hơn.','2016-10-13 06:59:36.456422',1,1,NULL,1),(17,'Favera Pharmaceuticals sales representatives must keep careful ----- of samples distributed and orders taken from physicians and clinics.','Favera Pharmaceuticals sales representatives must keep careful records of samples distributed and orders taken from physicians and clinics.','Dịch thoáng nghĩa có thể thấy những người bạn hàng cần phải giữ .... các mẫu được phân phối và đơn hàng. Do đó, điền records (bản ghi).','Đại diện bán hàng của Dược phẩm Favera cần phải giữ bản ghi chép cẩn thận của các mẫu được phát và các đơn hàng được đặt từ các bác sĩ và phòng khám.','2016-10-13 07:13:47.637266',2,2,NULL,1),(18,'The application process is highly ----- with only 5% of applicants ultimately selected for positions.','The application process is highly competitive with only 5% of applicants ultimately selected for positions.','sau động từ to be có thể điền danh từ hoặc tính từ, nhưng nhận thấy có trạng từ \"highly\" nên chọn tính từ. Chú ý trạng từ chỉ bổ sung ý nghĩa cho tính từ chứ không cho danh từ.','Quá trình nộp đơn rất cạnh tranh với chỉ 5% ứng viên cuối cùng được chọn cho vị trí.','2016-10-13 07:25:08.775071',1,1,NULL,1),(19,'The hotel installed a touchscreen computer to help guests ----- a restaurant, get weather updates, or obtain other useful information.','The hotel installed a touchscreen computer to help guests locate a restaurant, get weather updates, or obtain other useful information.','locate a restaurant: xác định vị trí một nhà hàng','Khách sạn lắp đặt một máy tính cảm ứng để giúp khách hàng xác định vị trí một nhà hàng, xem cập nhật thời tiết hoặc lấy được các thông tin hữu ích khác.','2016-10-14 02:31:34.762942',2,2,NULL,1),(20,'This wast-to-energy power plant is the ----- of a technologically-advanced process set to achieve outstanding environmental and economical performance.','This wast-to-energy power plant is the product of a technologically-advanced process set to achieve outstanding environmental and economical performance.','Ta thấy cấu trúc mạo từ + ... + of (the... of): đây là vị trí của danh từ.  Xét nghĩa: ...power plant is the...(nhà máy điện là ...), chỉ có thể chọn product(sản phẩm) chứ không thể là producer(nhà sản xuất).','Cái nhà máy điện từ chất thải-đến-năng lượng này là sản phẩm của một quá trình công nghệ cao nhằm đạt được hiệu quả môi trường và kinh tế tuyệt vời.','2016-10-14 02:47:42.390358',1,1,NULL,1),(21,'Sales of Ferrer Industry\'s tractors ----- increase during the autumn harvest season.','Sales of Ferrer Industry\'s tractors frequently increase during the autumn harvest season.','Cần 1 trạng từ bổ sung ý nghĩa cho động từ \"increase\". Do đó chọn frequently increase(thường tăng lên) là hợp lý nhất.','Doanh số bán máy cày của Ferrer Industry thường tăng lên vào mùa gặt thu.','2016-10-14 02:59:09.681726',1,2,NULL,1),(22,'It is advisable to keep your operating system and software updated for ----- computer performance and security.','It is advisable to keep your operating system and software updated for optimal computer performance and security.','Ở đây hợp lý nhất là điền một tính từ (optimal - tối ưu) đi trước để bổ sung ý nghĩa cho danh từ \"computer performance\" (hiệu suất) đi sau.','Nó được khuyên là hãy giữ cái hệ điều hành và phần mềm cập nhật để hiệu suất máy tính và bảo mật tối ưu.','2016-10-14 03:13:11.047359',2,1,NULL,1),(23,'After attending an ----- on traditional handicrafts at the Victoria Museum in London, a young unknown designer named Laura Ashley was inspired to make her own quilts.','After attending an exhibition on traditional handicrafts at the Victoria Museum in London, a young unknown designer named Laura Ashley was inspired to make her own quilts.','Ở đây chú là trước từ cần điền có động từ attend(tham dự), do đó, từ cần điền là một sự kiện.  Sự kiện lại được tổ chức ở \"Museum\" (bảo tàng). Do đó chọn \"exhibition\" là hợp lý nhất.','Sau khi tham dự một triển lãm đồ thủ công truyền thống tại bảo tàng Victoria ở London, một nhà thiết kế trẻ ít tên tuổi Laura Ashley đã được truyền cảm hứng để làm đồ ghép vải của chính cô ấy.','2016-10-14 03:38:41.367542',2,2,NULL,1),(24,'Mr Henny ----- presented the argument that the pricing policy of the  retailer would be the financial ruin of the company.','Mr Henny convincingly presented the argument that the pricing policy of the  retailer would be the financial ruin of the company.','Cần xác định đâu là động từ chính trong câu. Ở đây, ông Henny .... presented the argument (ông Henny ... giới thiệu luận điểm), thì presented phải là động từ chính. Do đó, không được điền động từ vào chỗ trống, mà điền 1 trạng từ bổ sung ý nghĩa cho động từ \"present\". Chú ý: convincing là tính từ (có tính thuyết phục) >> convincingly là trạng từ (một cách thuyết phục).','Ông Henny giới thiệu một cách thuyết phục luận điểm rằng chính sách giá của người bán lẻ sẽ là một mối de dọa tài chính cho công ty','2016-10-14 03:53:53.043753',1,1,NULL,1),(25,'If the employee or employer terminates the contract of employment ----- giving advance notice, they will have to pay the other party a sum equivalent which matches the employee\'s salary.','If the employee or employer terminates the contract of employment without giving advance notice, they will have to pay the other party a sum equivalent which matches the employee\'s salary.','Ở đây dựa vào nghĩa của câu: nếu ....., họ sẽ phải trả bên còn lại một khoản. Do đó, việc sau từ \"nếu\" phải là một việc không tốt, đáng để phạt hợp đồng. Chọn without là hợp lý (employer terminate the contract without giving advance notice = chủ kết thúc hợp đồng mà không báo trước)','Nếu như nhân viên hoặc chủ chấm dứt hơp đồng lao động mà không đưa thông báo trước, họ sẽ phải trả bên còn lại một khoản bằng với lương nhân viên.','2016-10-14 04:58:16.307864',2,2,NULL,1),(26,'All employees are entitled to have a fair and equal opportunity to be considered for ----- to management positions.','All employees are entitled to have a fair and equal opportunity to be considered for advancement to management positions.','Dịch nghĩa: các nhân viên có cơ hội để được xem xét cho ----- lên vị trí lãnh đạo>> chọn thăng tiến (advancement)','Tất cả các nhân viên đều được trao quyền có một cơ hội công bằng và như nhau để được xem xét cho thăng tiến lên vị trí lãnh đạo.','2016-10-14 05:10:45.253119',1,2,NULL,1),(27,'Although ----- findings are encouraging, further research is needed to determine the effectiveness of the advertising campaign.','Although initial findings are encouraging, further research is needed to determine the effectiveness of the advertising campaign.','Ở đây cần một tính từ phù hợp để bổ sung ý nghĩa cho findings (các phát hiện), do đó chọn initial (ban đầu).  Chú ý forward là đằng trước hoặc tiến liên phía trước, ahead cũng là trước, limited là hạn chế đều không phù hợp trong câu này.','Mặc dù những phát hiện ban đầu đáng khích lệ, sự nghiên cứu xa hơn là cần thiết để xác định sự hiệu quả của chiến dịch quảng cáo.','2016-10-14 05:24:45.593341',2,2,'',1),(28,'I\'ve read a couple of different articles on Franklin Roosevelt, who was a much ----- president than Barack Obama has been so far.','I\'ve read a couple of different articles on Franklin Roosevelt, who was a much bolder president than Barack Obama has been so far.','Nhận thấy có dấu hiệu của so sánh \"than Barack Obama\" >> do đó chọn bolder.','Tôi đã đọc một vài bài báo khác nhau về Franklin Roosevelt, người mà là mọt tổng thống bạo dạn hơn nhiều Barack Obama cho đến bây giờ.','2016-10-14 05:50:42.274893',2,1,NULL,1),(29,'The front desk staff requests photo identification ----- a visitor to the Chicago Graphics Offices is not holding a valid pass.','The front desk staff requests photo identification if a visitor to the Chicago Graphics Offices is not holding a valid pass.','Dựa vào nghĩa để điền từ: vế từ nhất có nghĩa là nhân viên yêu cầu một chứng minh thư...., vế sau từ cần điền là một khách đến văn phòng không có thẻ ra vào có hiệu lực. Quan hệ của 2 vế này là điều kiện (cần chứng minh thư NẾU không có thẻ ra vào).','Nhân viên lễ tân yêu cầu chứng minh thư có ảnh nếu một khách đến Văn phòng Chicago Graphics không cầm một thẻ ra vào có giá trị.','2016-10-14 06:20:03.307148',1,1,'audios/questions/thefrontdeskstaff.wav',1),(30,'The Textcom sofware from Hahn-Keller Corporation will ---- users to automate numerous repetitive tasks.','The Textcom sofware from Hahn-Keller Corporation will allow users to automate numerous repetitive tasks.','Dựa vào cấu trúc của các động từ: avoid something (tránh điều gì); provide someone with something (cung cấp cho ai cái gì); show someone something hoặc show something to someone (cho ai xem cái gì); allow someone to do something (cho phép ai làm gì).','Phần mềm Textcome từ tập đoàn Hahn-Keller sẽ cho phép người dùng tự động hóa nhiều công việc lặp đi lặp lại.','2016-10-14 06:46:47.727791',1,2,'audios/questions/thetextcomsofware.wav',1),(31,'All employees are asked to turn off  the lights when ----- a vacant room to conserve electricity.','All employees are asked to turn off  the lights when existing a vacant room to conserve electricity.','Sau when nếu ngay lập tức là động từ, thì nó phải ở dạng V-ing, tức là dang danh động từ hay còn gọi là gerund (Xem thêm lý thuyết về Gerund).','Tất cả các nhân viên được yêu cầu tắt đèn khi đi ra khỏi phòng trống để tiết kiệm điện.','2016-10-14 07:18:43.527186',1,1,'audios/questions/allemployee.wav',1),(32,'An ----- of monthly sales figures is essential to setting future revenue goals.','An analysis of monthly sales figures is essential to setting future revenue goals.','Dịch nghĩa: ... của doanh số bán hàng tháng là cần thiết để thiết lập mục tiêu doanh thu sau này. Chỉ có \"phân tích\" (analysis) là phù hợp trong hoàn cảnh này.','Một bài phân tích của doanh số bán hàng tháng là cần thiết để thiết lập mục tiêu doanh thu sau này.','2016-10-14 07:48:36.864043',1,2,'audios/questions/ananalysisof.wav',1),(33,'In this ----- researched study, Good Jobs shows that Thote Ltd. has received more than $1 billion in economic development subsidies from state and local governments across the country.','In this extensively researched study, Good Jobs shows that Thote Ltd. has received more than $1 billion in economic development subsidies from state and local governments across the country.','Chú ý cần điền 1 trạng từ vào cụm \"this .....researched study \", nên trạng từ đó sẽ phải bổ sung ý nghĩa cho tính từ \"researched\". Do đó chọn extensively (extensively researched = được nghiên cứu rất sâu, kĩ lưỡng).','Trong cái nghiên cứu sâu và kĩ lượng này, Good Jobs đã cho thấy Thote Ltd. đã nhận được hơn 1 tỷ trong tiền trợ giá phát triển kinh tế từ bang và chính quyền địa phương khắp cả nước.','2016-10-16 01:10:04.461160',2,2,'audios/questions/inthisextensively.wav',1),(34,'The Charity Classic Committee chose ----- him for all of the support he has given the Saint Joseph Medical Center throughout the years.','The Charity Classic Committee chose to honor him for all of the support he has given the Saint Joseph Medical Center throughout the years.','Cấu trúc của choose: choose something, hoặc choose to do something (chọn gì, hoặc chọn làm gì). Do đó phải điền to infinitive sau choose trong trường hơp này. Dựa vào nghĩa thấy cần phải điền động từ chủ động (chose to honor him: chọn vinh anh ấy), chứ không phải bị động (chose to be honored him : chọn được vinh danh anh ấy, câu này sai về mặt ngữ pháp).','Ủy ban Từ thiện Cổ điển đã chọn vinh danh anh ấy cho tất cả những hỗ trợ anh ấy đã cho Trung Tâm Y tế Saint Joseph suốt các năm qua.','2016-10-16 01:21:27.285005',2,1,'audios/questions/charityclassiccommittee5.wav',1),(35,'----- 10 years of experience in the field, Carolyn Snyder is an internationally recognized merger and acquisition consultant.','With 10 years of experience in the field, Carolyn Snyder is an internationally recognized merger and acquisition consultant.','','Với 10 năm kinh nghiệm trong ngành, Carolyn Snyder là một nhà tư vấn mua lại và sát nhập được biết đến toàn cầu (tầm quốc tế).','2016-10-16 01:35:09.529051',2,2,'audios/questions/withtenyearsofexperience.wav',1),(36,'Although most of the consumers surveyed said they understood the importance of the new healthcare reform policy, many were ----- with details of that policy.','Although most of the consumers surveyed said they understood the importance of the new healthcare reform policy, many were unfamiliar with details of that policy.','Giống động từ, các tính từ cũng có cấu trúc của nó (tính từ + giới từ). Ví dụ unfamiliar with: quen thuộc với; it is difficult for somebody to do something: thật khó khăn với ai để làm gì... Khi chọn, phải chọn theo giới từ phù hợp trong cấu trúc.','Dù đa số khách hàng được hỏi nói rằng họ hiểu tầm quan trọng của chính sách cải tiến y tế, rất nhiều không quen thuộc với các chi tiết của chính sách đó.','2016-10-16 02:19:19.126597',2,2,'audios/questions/althoughmostofconsumers.wav',1),(37,'Corsica is an undeniably paradise for ----- of sea and water sports, as well as for hiking.','Corsica is an undeniably paradise for enthusiasts of sea and water sports, as well as for hiking.','Nên dựa vào nghĩa để xác định loại từ cần điền: Corsica là một thiên đường không thể chối cãi cho ---- của thể thao dưới nước và biển. Điền danh từ \"người yêu thích\" (enthusiasts) là hợp lý nhất. Chú ý cũng có thể dựa vào dấu hiệu điền danh từ ở giữa for --- of nhưng điều này không phải lúc nào cũng đúng.','Corsica là một thiên đường không thể chối cãi cho những người yêu thể thao dưới nước và biển, cũng như leo núi.','2016-10-16 02:51:31.429096',2,1,'audios/questions/corsica.wav',1),(38,'Where is the conversation taking place?','','','','2016-10-19 04:12:50.105412',1,3,'',1),(39,'What is the man concerned about?','','','','2016-10-19 04:16:32.123932',1,3,'',2),(40,'What does the man recommend?','','','','2016-10-19 04:17:13.790052',1,3,'',3),(41,'What are the speaker talking about?','','','','2016-10-20 10:44:21.623466',2,3,'',1),(42,'What does the man ask the woman?','','','','2016-10-20 10:44:53.702966',2,3,'',2),(43,'What does the woman offer to do?','','','','2016-10-20 10:45:59.679358',2,3,'',3);
/*!40000 ALTER TABLE `toeic_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_grammartopics`
--

DROP TABLE IF EXISTS `toeic_question_grammartopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_grammartopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `grammartopic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_grammartopics_question_id_65d0bc0d_uniq` (`question_id`,`grammartopic_id`),
  KEY `toeic_question_grammartopic_id_f30b694b_fk_toeic_grammartopic_id` (`grammartopic_id`),
  CONSTRAINT `toeic_question_grammar_question_id_c16ddf0c_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_grammartopic_id_f30b694b_fk_toeic_grammartopic_id` FOREIGN KEY (`grammartopic_id`) REFERENCES `toeic_grammartopic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_grammartopics`
--

LOCK TABLES `toeic_question_grammartopics` WRITE;
/*!40000 ALTER TABLE `toeic_question_grammartopics` DISABLE KEYS */;
INSERT INTO `toeic_question_grammartopics` VALUES (2,2,3),(21,3,4),(20,4,5),(18,5,3),(19,5,6),(17,7,7),(16,8,10),(15,9,11),(14,10,12),(13,12,10),(1,14,3),(12,15,5),(11,16,7),(10,18,6),(9,20,3),(7,22,3),(8,22,6),(6,24,7),(5,28,11),(4,29,13),(3,31,14),(22,34,1),(23,34,14),(24,37,3);
/*!40000 ALTER TABLE `toeic_question_grammartopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_tests`
--

DROP TABLE IF EXISTS `toeic_question_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_tests_question_id_b8527d76_uniq` (`question_id`,`test_id`),
  KEY `toeic_question_tests_test_id_204e23cc_fk_toeic_test_id` (`test_id`),
  CONSTRAINT `toeic_question_tests_question_id_67fa2576_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_tests_test_id_204e23cc_fk_toeic_test_id` FOREIGN KEY (`test_id`) REFERENCES `toeic_test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_tests`
--

LOCK TABLES `toeic_question_tests` WRITE;
/*!40000 ALTER TABLE `toeic_question_tests` DISABLE KEYS */;
INSERT INTO `toeic_question_tests` VALUES (1,2,2),(34,2,4),(2,3,2),(35,3,4),(3,4,2),(36,4,4),(40,5,2),(37,5,4),(38,6,4),(5,7,2),(39,7,4),(28,8,2),(6,9,2),(7,10,2),(8,11,3),(9,12,2),(25,14,2),(12,15,2),(13,16,2),(15,17,3),(14,18,2),(16,19,3),(17,20,2),(27,21,3),(26,22,2),(18,23,3),(19,24,2),(20,27,3),(21,29,2),(22,30,3),(23,31,2),(24,32,3),(29,33,3),(30,34,2),(31,35,3),(32,36,3),(33,37,2);
/*!40000 ALTER TABLE `toeic_question_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_topics`
--

DROP TABLE IF EXISTS `toeic_question_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_topics_question_id_18cd0c75_uniq` (`question_id`,`topic_id`),
  KEY `toeic_question_topics_topic_id_749f16b3_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_question_topics_question_id_4a77f9ff_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_topics_topic_id_749f16b3_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_topics`
--

LOCK TABLES `toeic_question_topics` WRITE;
/*!40000 ALTER TABLE `toeic_question_topics` DISABLE KEYS */;
INSERT INTO `toeic_question_topics` VALUES (2,6,6),(1,6,11),(3,11,18),(4,13,1),(21,14,2),(6,17,2),(7,17,21),(8,19,4),(9,21,14),(10,23,11),(11,23,29),(12,25,24),(13,26,2),(14,26,7),(15,27,10),(17,30,6),(16,30,34),(18,32,2),(20,32,7),(19,32,13),(22,33,14),(23,35,15),(24,36,10);
/*!40000 ALTER TABLE `toeic_question_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_question_vocabs`
--

DROP TABLE IF EXISTS `toeic_question_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_question_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_question_vocabs_question_id_730c5f89_uniq` (`question_id`,`vocab_id`),
  KEY `toeic_question_vocabs_vocab_id_fcb8e342_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_question_vocabs_question_id_d9069f5a_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_question_vocabs_vocab_id_fcb8e342_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_question_vocabs`
--

LOCK TABLES `toeic_question_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_question_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_question_vocabs` VALUES (1,2,1),(2,3,2),(3,3,3),(4,3,4),(67,4,5),(68,4,54),(65,4,65),(66,4,66),(8,5,6),(9,5,7),(5,5,8),(6,5,9),(7,5,10),(69,5,67),(70,5,68),(71,5,69),(10,6,11),(11,6,12),(12,6,13),(13,6,14),(14,6,15),(15,6,16),(16,6,17),(17,6,18),(18,7,19),(19,7,20),(20,7,21),(21,7,22),(22,7,23),(23,7,24),(24,7,25),(25,7,26),(26,7,27),(27,8,11),(28,8,28),(29,8,29),(30,8,30),(34,9,31),(31,9,32),(32,9,33),(33,9,34),(35,10,35),(36,10,36),(37,10,37),(38,10,38),(39,10,39),(40,10,40),(41,11,41),(42,11,42),(43,11,43),(44,11,44),(45,11,45),(46,11,46),(49,12,47),(47,12,48),(48,12,49),(50,13,50),(51,13,51),(52,13,52),(53,13,53),(54,13,54),(55,13,55),(72,13,70),(73,13,71),(74,14,3),(57,14,56),(58,14,57),(59,14,58),(60,14,59),(61,14,60),(62,14,61),(63,14,62),(64,14,63),(56,14,64),(79,15,36),(75,15,72),(76,15,73),(77,15,74),(78,15,75),(80,16,76),(81,16,77),(82,16,78),(83,16,79),(84,16,80),(85,16,81),(86,16,82),(87,16,83),(88,16,84),(89,17,30),(90,17,85),(91,17,86),(92,17,87),(93,17,88),(94,17,89),(95,17,90),(96,17,91),(97,17,92),(98,17,93),(99,17,94),(105,18,95),(100,18,96),(101,18,97),(102,18,98),(103,18,99),(104,18,100),(108,19,101),(109,19,102),(110,19,103),(106,19,104),(107,19,105),(112,20,38),(111,20,96),(113,20,106),(114,20,107),(115,20,108),(116,20,109),(117,20,110),(118,20,111),(119,20,112),(120,20,113),(121,20,114),(122,20,115),(123,21,116),(124,21,117),(125,21,118),(126,21,119),(127,21,120),(128,21,121),(129,22,115),(130,22,122),(131,22,123),(132,22,124),(133,22,125),(134,22,126),(135,22,127),(136,23,128),(137,23,129),(138,23,130),(139,23,131),(140,23,132),(141,23,133),(142,23,134),(143,23,135),(144,23,136),(145,23,137),(146,24,138),(147,24,139),(148,24,140),(149,24,141),(150,24,142),(151,24,143),(152,24,144),(153,25,145),(154,25,146),(155,25,147),(156,25,148),(157,25,149),(158,25,150),(159,25,151),(160,25,152),(161,25,153),(162,25,154),(163,25,155),(164,25,156),(165,25,157),(166,25,158),(171,26,36),(173,26,51),(175,26,56),(170,26,99),(177,26,159),(167,26,160),(168,26,161),(169,26,162),(174,26,163),(176,26,164),(172,26,165),(178,27,166),(179,27,167),(180,27,168),(181,27,169),(182,27,170),(183,27,171),(184,27,172),(185,27,173),(186,27,174),(187,27,175),(188,27,176),(189,28,177),(190,28,178),(191,28,179),(192,28,180),(193,29,181),(194,29,182),(195,29,183),(196,29,184),(197,29,185),(198,29,186),(199,29,187),(200,29,188),(207,30,189),(208,30,190),(209,30,191),(201,30,192),(202,30,193),(203,30,194),(204,30,195),(205,30,196),(206,30,197),(210,31,198),(211,31,199),(212,31,200),(213,31,201),(214,31,202),(215,31,203),(216,32,83),(217,32,204),(218,32,205),(219,32,206),(220,32,207),(221,32,208),(222,32,209),(223,32,210),(224,32,211),(225,32,212),(227,33,73),(226,33,195),(228,33,213),(229,33,214),(230,33,215),(231,33,216),(232,33,217),(233,33,218),(234,33,219),(235,33,220),(236,33,221),(237,33,222),(242,34,223),(238,34,224),(239,34,225),(240,34,226),(241,34,227),(243,35,228),(244,35,229),(245,35,230),(246,35,231),(247,35,232),(248,35,233),(249,35,234),(261,36,27),(250,36,166),(251,36,235),(252,36,236),(253,36,237),(254,36,238),(255,36,239),(256,36,240),(257,36,241),(258,36,242),(259,36,243),(260,36,244),(262,37,245),(263,37,246),(264,37,247),(265,37,248),(266,37,249),(267,37,250);
/*!40000 ALTER TABLE `toeic_question_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_questiontext`
--

DROP TABLE IF EXISTS `toeic_questiontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_questiontext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `text` longtext NOT NULL,
  `fulltext` longtext,
  `explanation` longtext,
  `translation` longtext,
  `audio` varchar(100) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_questiontext_level_id_84b96359_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_questiontext_level_id_84b96359_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_questiontext`
--

LOCK TABLES `toeic_questiontext` WRITE;
/*!40000 ALTER TABLE `toeic_questiontext` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_questiontext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_questiontext_vocabs`
--

DROP TABLE IF EXISTS `toeic_questiontext_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_questiontext_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questiontext_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_questiontext_vocabs_questiontext_id_23194a4a_uniq` (`questiontext_id`,`vocab_id`),
  KEY `toeic_questiontext_vocabs_vocab_id_bce336e4_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_question_questiontext_id_b70b84aa_fk_toeic_questiontext_id` FOREIGN KEY (`questiontext_id`) REFERENCES `toeic_questiontext` (`id`),
  CONSTRAINT `toeic_questiontext_vocabs_vocab_id_bce336e4_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_questiontext_vocabs`
--

LOCK TABLES `toeic_questiontext_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_questiontext_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_questiontext_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakinganswer`
--

DROP TABLE IF EXISTS `toeic_speakinganswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakinganswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `translation` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `image` varchar(100),
  `hint` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `audioa` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakinganswer`
--

LOCK TABLES `toeic_speakinganswer` WRITE;
/*!40000 ALTER TABLE `toeic_speakinganswer` DISABLE KEYS */;
INSERT INTO `toeic_speakinganswer` VALUES (1,'Nice to meet you, Joe.','Rất vui được gặp bạn, Joe.','2016-11-15 08:48:56.980639','audios/speakingquestion/nicetomeetyoujoeamy_audio-cutter.com.mp3',NULL,'','',NULL),(2,'I\'m John Oliver','Tôi là John Oliver','2016-11-15 08:53:52.705418','audios/speakingquestion/Iamjohnoliverbrian_audio-cutter.com.mp3','images/speakinganswer/last-week-tonight-with-john-oliver.jpg','','',''),(3,'They are Mary and Ashley','Họ là Mary và Ashley','2016-11-15 09:11:41.150567','audios/speakinganswer/theyaremaryandashley_audio-cutter.com.mp3','images/speakinganswer/2004EntertainmentPicturesYearlMTTh5p0bUil.jpg','','',NULL),(5,'We are Vietnamese','Chúng tôi là người Việt Nam','2016-11-18 03:03:17.762372','audios/speakinganswer/wearevietnamese_audio-cutter.com.mp3','images/speakinganswer/vietnamese.jpg','Viet....','',NULL),(6,'He is Japanese','Anh ấy là người Nhật','2016-11-18 03:23:21.166662','audios/speakinganswer/heisjapanese_audio-cutter.com.mp3','images/speakinganswer/japanese.jpg','Jap...','',NULL),(7,'He is Japanese','Anh ấy là người Nhật','2016-11-18 03:23:24.180891','audios/speakinganswer/heisjapanese_audio-cutter.com_a0URb8j.mp3','images/speakinganswer/japanese_ve2MFSd.jpg','Jap...','',NULL),(8,'She is American','Cô ấy là người Mỹ','2016-11-18 05:00:18.758030','audios/speakinganswer/sheisamerican_.mp3','images/speakinganswer/americangirl.jpg','Ame....','',''),(9,'Yes, I am','Vâng, (tôi đúng là...)','2016-11-18 05:02:29.508752','audios/speakinganswer/yesiam_audio-cutter.com.mp3','','Yes','','audios/speakinganswer/yesiamam_audio-cutter.com.mp3'),(10,'No, he is not','Không, anh ấy không phải','2016-11-18 05:03:50.002006','audios/speakinganswer/noheisnot_audio-cutter.com.mp3','','No...not','','audios/speakinganswer/noheisnotamsalli_audio-cutter.com.mp3'),(11,'No, I am not','Không, tôi không phải','2016-11-18 05:22:32.517662','audios/speakinganswer/noiamnot_audio-cutter.com.mp3','','No...not','','audios/speakinganswer/noiamnotsamsalli_audio-cutter.com.mp3'),(12,'Yes, he is','Vâng, (anh ấy đúng là ...)','2016-11-18 05:23:12.253874','audios/speakinganswer/yesheis_audio-cutter.com.mp3','','Yes','','audios/speakinganswer/yesheisamsalli_audiocutter.mp3'),(13,'No, he isn\'t','Không, anh ấy không phải','2016-11-18 05:25:06.819137','audios/speakinganswer/noheisnt_audio-cutter.com.mp3','','No','','audios/speakinganswer/noheisntamsalli_audiocutter_.mp3'),(14,'Yes, she is','Vâng, (cô ấy đúng là...)','2016-11-18 05:26:17.680802','audios/speakinganswer/yessheis_audio-cutter.com.mp3','','Yes','','audios/speakinganswer/yessheisamsalli_audio-cutter_.mp3'),(15,'No, she is not','Không, cô ấy không phải','2016-11-18 05:28:29.725090','audios/speakinganswer/nosheisnot_audio-cutter.com.mp3','','No','','audios/speakinganswer/nosheisnotamsalli_audio-cutter.com.mp3'),(16,'No, she isn\'t','Không, cô ấy không phải','2016-11-18 05:31:00.911563','audios/speakinganswer/nosheisnt_audio-cutter.com.mp3','','No','','audios/speakinganswer/nosheisntamsalli_audio-cutter.com.mp3'),(17,'Yes, we are','Vâng, (chúng tôi đúng là ...)','2016-11-18 05:32:02.625498','','','Yes','','audios/speakinganswer/yesweareamsalli_audio-cutter.com.mp3'),(18,'No, we are not','Không, chúng tôi không phải','2016-11-18 05:32:58.461477','','','','','audios/speakinganswer/nowearenotamsalli_audio-cutter.com.mp3'),(19,'No, we aren\'t','Không, chúng tôi không phải','2016-11-18 05:33:30.598575','','','No...not','','audios/speakinganswer/nowearentamsalli_audio-cutter.com.mp3'),(20,'Yes, they are.','Vâng, (họ đúng là...)','2016-11-18 05:34:26.775340','audios/speakinganswer/yestheyare_audio-cutter.com.mp3','','Yes','','audios/speakinganswer/yestheyareamsalli_audio-cutter.com.mp3'),(21,'No, they are not.','Không, họ không phải','2016-11-18 05:35:11.448565','audios/speakinganswer/notheyarenot_audio-cutter.com.mp3','','No...not','','audios/speakinganswer/notheyarenotamsalli_audio-cutter.com.mp3'),(22,'No, they aren\'t.','Không, họ không phải.','2016-11-18 05:36:01.930265','audios/speakinganswer/notheyarent_audio-cutter.com.mp3','','No','','audios/speakinganswer/notheyarentamsalli_audio-cutter.com.mp3'),(23,'I am Jessica','Tôi là Jessica','2016-11-22 01:38:08.823352','audios/speakinganswer/iamjessica.mp3','','','','audios/speakinganswer/iamjessica_am_salli_audio-cutter.com.mp3'),(24,'I\'m Kate','Tôi là Kate','2016-11-22 01:46:53.369817','audios/speakinganswer/imkateamy.mp3','','','','audios/speakinganswer/imkate_am_salli.mp3'),(25,'I’m Justin','Tôi là Justin','2016-11-22 02:09:21.017697','audios/speakinganswer/imjustinbrian_audio-cutter.com.mp3','','','','audios/speakinganswer/imjustinjoe.mp3'),(26,'You are Blake','Bạn là Blake','2016-11-22 02:09:59.412286','audios/speakinganswer/youareblakeamy.mp3','','','','audios/speakinganswer/youareblake_am_salli.mp3'),(27,'You’re Tom','Bạn là Tom','2016-11-22 02:27:13.779874','audios/speakinganswer/youretombrian_audio-cutter.com.mp3','','','','audios/speakinganswer/youretomjoe.mp3'),(28,'She is Nora','Cô ấy tên là Nora','2016-11-22 02:29:31.745186','audios/speakinganswer/sheisnoraamy.mp3','','','','audios/speakinganswer/sheisnorajoey.mp3'),(29,'She’s Anne','Cô ấy là Anne','2016-11-22 02:30:12.914026','audios/speakinganswer/shesanneamy.mp3','','','','audios/speakinganswer/shesanne_am_salli.mp3'),(30,'He is Andy','Anh ấy là Andy','2016-11-22 02:31:07.344507','audios/speakinganswer/heisandyamy.mp3','','','','audios/speakinganswer/heisandy_am_salli.mp3'),(31,'He’s Tommy','Anh ấy là Tommy','2016-11-22 02:31:42.341188','audios/speakinganswer/hestommyamy.mp3','','','','audios/speakinganswer/hestommy_am_salli.mp3'),(32,'We’re the Millers','Chúng tôi là những người nhà Millers','2016-11-22 02:32:25.056607','audios/speakinganswer/werethemillersamy.mp3','','','','audios/speakinganswer/werethemillersjoey.mp3'),(33,'They are Ted and Amy','Họ là Ted và Amy','2016-11-22 02:33:17.904009','audios/speakinganswer/theyretedandamyjoey.mp3','','','Nối âm \"d\" (and) sang \"Amy\"','audios/speakinganswer/theyretedandamy_am_salli.mp3'),(34,'They’re John and Sam','Họ là John và Sam','2016-11-22 02:33:51.744182','audios/speakinganswer/theyrejohnandsamamy.mp3','','','','audios/speakinganswer/theyrejonhandsam_am_salli.mp3'),(35,'I’m French','Tôi là người Pháp','2016-11-22 02:58:33.269069','audios/speakinganswer/imfrenchamy.mp3','','','','audios/speakinganswer/imfrenchsalli.mp3'),(36,'You are Spanish','Bạn là người Tây Ban Nha','2016-11-22 02:59:34.823672','audios/speakinganswer/youarespanishamy.mp3','','','','audios/speakinganswer/youarespanishsalli.mp3'),(37,'You’re Australian','Bạn là người Úc','2016-11-22 03:00:07.648918','audios/speakinganswer/youreaustralianamy.mp3','','','','audios/speakinganswer/youreautraliansalli.mp3'),(38,'She is German','Cô ấy là người Đức','2016-11-22 03:07:26.502524','audios/speakinganswer/sheisgermanamy.mp3','','','','audios/speakinganswer/sheisgermansalli.mp3'),(39,'She’s Canadian','Cô ấy là người Canada','2016-11-22 03:10:17.232620','audios/speakinganswer/shescanadianamy.mp3','','','','audios/speakinganswer/shescanadiansalli.mp3'),(40,'He is English','Anh ấy là người Anh','2016-11-22 03:14:11.877110','audios/speakinganswer/heisenglishamy.mp3','','','Chú ý: English là người Anh (England), còn British là người thuộc khối liên hiệp Anh và Bắc Ireland (Great Britain)','audios/speakinganswer/hesenglish.mp3'),(41,'He’s Italian','Anh ấy là người Ý','2016-11-22 03:15:46.213381','audios/speakinganswer/hesitalianamy.mp3','','','','audios/speakinganswer/heisitaliansalli.mp3'),(42,'We are Brazilian','Chúng tôi là người Brazil','2016-11-22 03:16:17.813831','audios/speakinganswer/wearebrazilianamy.mp3','','','','audios/speakinganswer/werebraziliansalli.mp3'),(43,'We’re Russian','Chúng tôi là người Nga','2016-11-22 03:16:46.591689','audios/speakinganswer/wererussianamy.mp3','','','','audios/speakinganswer/wererussiansalli.mp3'),(44,'They are Thai','Họ là người Thái','2016-11-22 03:17:17.019648','audios/speakinganswer/theyarethaiamy.mp3','','','','audios/speakinganswer/theyarethaisalli.mp3'),(45,'They’re Portuguese','Họ là người Bồ Đào Nha','2016-11-22 03:17:52.254873','audios/speakinganswer/thereportugeseamy.mp3','','','','audios/speakinganswer/thereportugesesalli.mp3'),(46,'They’re Danish','Họ là người Thụy Điển','2016-11-22 03:18:24.003706','audios/speakinganswer/theyredanishamy.mp3','','','','audios/speakinganswer/theyredanishsalli.mp3'),(47,'I’m 12 years old.','Tôi 12 tuổi.','2016-11-25 13:46:26.789390','audios/speakinganswer/im12yearsold_amy.mp3','','12','',''),(48,'I’m 4 years old.','Tôi bốn tuổi','2016-11-25 14:09:13.534813','audios/speakinganswer/im4yearsold_amy.mp3','','4','',''),(49,'I’m 12 years old.','Tôi mười hai tuổi.','2016-11-25 14:10:01.817252','audios/speakinganswer/im12yearsold_amy_Gtes4WB.mp3','','12','',''),(50,'She is 14 years old.','Cô ấy mười bốn tuổi.','2016-11-25 14:11:36.321988','audios/speakinganswer/sheis14yearsold_amy.mp3','','','',''),(51,'She’s 5 years old.','Cô ấy năm tuổi.','2016-11-25 14:12:10.487225','audios/speakinganswer/shes5yearsold_amy.mp3','','','',''),(52,'She’s 11 years old.','Cô ấy mười một tuổi.','2016-11-25 14:12:52.590571','audios/speakinganswer/she11yearsold.mp3','','','',''),(53,'He is 8 years old.','Anh ấy tám tuổi','2016-11-25 14:15:09.491951','audios/speakinganswer/hes8yearsold_amy.mp3','','','',''),(54,'He’s 17 years old.','Anh ấy mười bảy tuổi','2016-11-25 14:16:03.770427','audios/speakinganswer/hes17yearsold.mp3','','','',''),(55,'He’s 19 years old.','Anh ấy mười chín tuổi.','2016-11-25 14:16:31.433330','audios/speakinganswer/hes19yearsold_amy.mp3','','','',''),(56,'They are 15 years old.','Họ mười lăm tuổi.','2016-11-25 14:18:05.181178','audios/speakinganswer/theyare15yearsoldamy.mp3','','','',''),(57,'They’re 13 years old.','Chúng nó mười ba tuổi.','2016-11-25 14:18:39.080616','audios/speakinganswer/theyre13yearsold_amy.mp3','','','',''),(58,'They’re 20 years old.','Họ hai mươi tuổi.','2016-11-25 14:19:04.166891','audios/speakinganswer/theyre20yearsold_amy.mp3','','','','');
/*!40000 ALTER TABLE `toeic_speakinganswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakinganswer_vocabs`
--

DROP TABLE IF EXISTS `toeic_speakinganswer_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakinganswer_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakinganswer_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakinganswer_vocabs_speakinganswer_id_8f65c188_uniq` (`speakinganswer_id`,`vocab_id`),
  KEY `toeic_speakinganswer_vocabs_vocab_id_1e9c68ae_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_spea_speakinganswer_id_739f3223_fk_toeic_speakinganswer_id` FOREIGN KEY (`speakinganswer_id`) REFERENCES `toeic_speakinganswer` (`id`),
  CONSTRAINT `toeic_speakinganswer_vocabs_vocab_id_1e9c68ae_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakinganswer_vocabs`
--

LOCK TABLES `toeic_speakinganswer_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_speakinganswer_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_speakinganswer_vocabs` VALUES (1,1,280),(3,5,282),(6,8,296),(8,9,285),(7,9,288),(10,10,286),(9,10,290),(11,47,302),(12,48,306),(13,49,302),(14,50,315),(15,51,307),(16,52,313),(17,53,310),(18,54,318),(19,55,320),(20,56,316),(21,57,314),(22,58,321);
/*!40000 ALTER TABLE `toeic_speakinganswer_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakinglesson`
--

DROP TABLE IF EXISTS `toeic_speakinglesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakinglesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passage` longtext,
  `video` varchar(200) DEFAULT NULL,
  `text` varchar(200) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `isfirst` tinyint(1) NOT NULL,
  `islast` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_speakinglesson_19b4d727` (`topic_id`),
  CONSTRAINT `toeic_speakinglesson_topic_id_edffaabe_fk_toeic_speakingtopic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_speakingtopic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakinglesson`
--

LOCK TABLES `toeic_speakinglesson` WRITE;
/*!40000 ALTER TABLE `toeic_speakinglesson` DISABLE KEYS */;
INSERT INTO `toeic_speakinglesson` VALUES (1,'<p><strong>Dạng phủ định của To Be c&oacute;&nbsp;th&ecirc;m &quot;not&quot;:&nbsp;</strong></p>\r\n\r\n<p>T&ocirc;i kh&ocirc;ng l&agrave;&nbsp;John Oliver =&gt; I <strong>am not</strong> John Oliver</p>\r\n\r\n<p>T&ocirc;i kh&ocirc;ng l&agrave; người Anh =&gt; I <strong>am not</strong> British</p>\r\n\r\n<p>Anh ấy kh&ocirc;ng phải l&agrave; Brian =&gt; He<strong> is not</strong> Brian</p>\r\n\r\n<p>Họ kh&ocirc;ng phải l&agrave; người Mỹ =&gt; They <strong>are not</strong> American</p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho verb to be\" src=\"http://orlywinerclassroom.wikispaces.com/file/view/to%20be%20mada%201%20yes.jpg/503838428/808x414/to%20be%20mada%201%20yes.jpg\" /></p>\r\n\r\n<p><strong>Is not r&uacute;t gọn th&agrave;nh isn&#39;t, are not r&uacute;t gọn th&agrave;nh aren&#39;t, am not giữ nguy&ecirc;n</strong></p>\r\n\r\n<p>He is not Brian =&gt; He <strong>isn&#39;t</strong> Brian</p>\r\n\r\n<p>They are not American =&gt; They<strong> aren&#39;t </strong>America</p>\r\n\r\n<p><strong>Dạng c&acirc;u hỏi nghi vấn: đảo động từ l&ecirc;n tr&ecirc;n</strong></p>\r\n\r\n<p><strong>You are </strong>John Oliver (Bạn l&agrave; John Oliver) =&gt; <strong>Are you</strong> John Oliver? (Bạn l&agrave; John Oliver &agrave;?)</p>\r\n\r\n<p><strong>She is</strong> British (C&ocirc; ấy l&agrave; người Anh) =&gt; <strong>Is she </strong>British? (C&ocirc; ấy l&agrave; người Anh &agrave;?)</p>\r\n\r\n<p>C&aacute;ch trả lời c&acirc;u nghi vấn</p>\r\n\r\n<p><strong>Are you</strong> John Oliver?</p>\r\n\r\n<p>Yes, I am. (V&acirc;ng, t&ocirc;i đ&uacute;ng l&agrave;)</p>\r\n\r\n<p>No, I am not (Kh&ocirc;ng, t&ocirc;i kh&ocirc;ng phải)</p>\r\n\r\n<p><strong>Is she </strong>British?</p>\r\n\r\n<p>Yes, she is.</p>\r\n\r\n<p>No, she is not hoặc No, she isn&#39;t.&nbsp;</p>\r\n\r\n<p><strong>Dạng c&acirc;u hỏi c&oacute; từ để hỏi:&nbsp;Who (ai)</strong></p>\r\n\r\n<p>Who are you? Bạn l&agrave; ai?</p>\r\n\r\n<p>Who is she? C&ocirc; ấy l&agrave; ai?&nbsp;</p>\r\n\r\n<p>Who is he? Anh ấy l&agrave; ai?</p>','','Introduction: Verb To Be (2)',1,0,1,2),(2,'<p><strong>Nếu trong tiếng Việt, ch&uacute;ng ta c&oacute; c&aacute;c ng&ocirc;i (t&ocirc;i, bạn, họ, ...) th&igrave; trong tiếng Anh cũng vậy.&nbsp;</strong></p>\r\n\r\n<p>T&ocirc;i =&gt; I</p>\r\n\r\n<p>Bạn =&gt; You</p>\r\n\r\n<p>Anh ấy =&gt; He</p>\r\n\r\n<p>C&ocirc; ấy =&gt; She</p>\r\n\r\n<p>N&oacute; =&gt; It</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i =&gt; We</p>\r\n\r\n<p>C&aacute;c bạn =&gt; You</p>\r\n\r\n<p>Họ =&gt; They</p>\r\n\r\n<p><strong>Động từ sẽ thay đổi khi đi với c&aacute;c ng&ocirc;i kh&aacute;c nhau. H&atilde;y xem c&aacute;ch chia động từ To Be dưới đ&acirc;y:</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho to be grammar\" src=\"http://www.writingforward.com/wp-content/uploads/2012/07/grammar-rules-subject-verb-agreement.jpg\" style=\"height:350px; width:500px\" /></p>\r\n\r\n<p><strong>Động từ to be c&oacute; nghĩa l&agrave; &quot;l&agrave;&quot;. Động từ to be thay đổi khi chia với c&aacute;c ng&ocirc;i kh&aacute;c nhau:</strong></p>\r\n\r\n<p>V&iacute; dụ:&nbsp;</p>\r\n\r\n<p>T&ocirc;i l&agrave; John Oliver =&gt; I am John Oliver</p>\r\n\r\n<p>Bạn l&agrave; Blake =&gt; You are Blake</p>\r\n\r\n<p>C&ocirc; ấy l&agrave; Nora =&gt;&nbsp;She is Nora</p>\r\n\r\n<p>Anh ấy l&agrave; Andy =&gt;&nbsp;He is Andy</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i l&agrave; những người nh&agrave; Millers =&gt; We are the Millers</p>\r\n\r\n<p>Họ l&agrave; Ted v&agrave; Amy =&gt;&nbsp;They are Ted and Amy</p>\r\n\r\n<p><strong>Trong thực tế, người ta rất hay dung c&aacute;c cấu tr&uacute;c r&uacute;t gọn:&nbsp;</strong></p>\r\n\r\n<p>I am r&uacute;t gọn th&agrave;nh I&#39;m: I am John =&gt; I&#39;m John</p>\r\n\r\n<p>You are r&uacute;t gọn th&agrave;nh You&#39;re: You are Blake =&gt; You&#39;re Blake</p>\r\n\r\n<p>He is th&agrave;nh He&#39;s : He is Andy =&gt; He&#39;s Andy</p>','','Introduction: Nationality',1,0,0,1),(3,'<p><strong>Nếu trong tiếng Việt, ch&uacute;ng ta c&oacute; c&aacute;c ng&ocirc;i (t&ocirc;i, bạn, họ, ...) th&igrave; trong tiếng Anh cũng vậy.&nbsp;</strong></p>\r\n\r\n<p>T&ocirc;i =&gt; I</p>\r\n\r\n<p>Bạn =&gt; You</p>\r\n\r\n<p>Anh ấy =&gt; He</p>\r\n\r\n<p>C&ocirc; ấy =&gt; She</p>\r\n\r\n<p>N&oacute; =&gt; It</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i =&gt; We</p>\r\n\r\n<p>C&aacute;c bạn =&gt; You</p>\r\n\r\n<p>Họ =&gt; They</p>\r\n\r\n<p><strong>Động từ sẽ thay đổi khi đi với c&aacute;c ng&ocirc;i kh&aacute;c nhau. H&atilde;y xem c&aacute;ch chia động từ To Be dưới đ&acirc;y:</strong></p>\r\n\r\n<p><img alt=\"Kết quả hình ảnh cho to be grammar\" src=\"http://www.writingforward.com/wp-content/uploads/2012/07/grammar-rules-subject-verb-agreement.jpg\" /></p>\r\n\r\n<p><strong>Động từ to be c&oacute; nghĩa l&agrave; &quot;l&agrave;&quot;. Động từ to be thay đổi khi chia với c&aacute;c ng&ocirc;i kh&aacute;c nhau:</strong></p>\r\n\r\n<p>V&iacute; dụ:&nbsp;</p>\r\n\r\n<p>T&ocirc;i l&agrave; John Oliver =&gt; I am John Oliver</p>\r\n\r\n<p>Bạn l&agrave; Blake =&gt; You are Blake</p>\r\n\r\n<p>C&ocirc; ấy l&agrave; Nora =&gt;&nbsp;She is Nora</p>\r\n\r\n<p>Anh ấy l&agrave; Andy =&gt;&nbsp;He is Andy</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i l&agrave; những người nh&agrave; Millers =&gt; We are the Millers</p>\r\n\r\n<p>Họ l&agrave; Ted v&agrave; Amy =&gt;&nbsp;They are Ted and Amy</p>\r\n\r\n<p><strong>Trong thực tế, người ta rất hay dung c&aacute;c cấu tr&uacute;c r&uacute;t gọn:&nbsp;</strong></p>\r\n\r\n<p>I am r&uacute;t gọn th&agrave;nh I&#39;m: I am John =&gt; I&#39;m John</p>\r\n\r\n<p>You are r&uacute;t gọn th&agrave;nh You&#39;re: You are Blake =&gt; You&#39;re Blake</p>\r\n\r\n<p>He is th&agrave;nh He&#39;s : He is Andy =&gt; He&#39;s Andy</p>','','Introduction: Name',1,0,0,1),(4,'<p>Để hỏi tuổi, ch&uacute;ng ta d&ugrave;ng cấu tr&uacute;c How old + be + chủ ngữ:</p>\r\n\r\n<p>How old is she?</p>\r\n\r\n<p>How old are they?&nbsp;</p>\r\n\r\n<p>How old is Ted?</p>\r\n\r\n<p>How old is&nbsp;Vivien?</p>\r\n\r\n<p>Để trả lời, ch&uacute;ng ta d&ugrave;ng động từ to be: She is + number + years old:</p>\r\n\r\n<p>She&#39;s eight (8) years old.</p>','','Asking the age: Number',1,0,0,1);
/*!40000 ALTER TABLE `toeic_speakinglesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakinglesson_questions`
--

DROP TABLE IF EXISTS `toeic_speakinglesson_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakinglesson_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakinglesson_id` int(11) NOT NULL,
  `speakingquestion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakinglesson_questionset_speakinglesson_id_85a860fd_uniq` (`speakinglesson_id`,`speakingquestion_id`),
  KEY `toeic__speakingquestion_id_8980ee3c_fk_toeic_speakingquestion_id` (`speakingquestion_id`),
  CONSTRAINT `toeic__speakingquestion_id_8980ee3c_fk_toeic_speakingquestion_id` FOREIGN KEY (`speakingquestion_id`) REFERENCES `toeic_speakingquestion` (`id`),
  CONSTRAINT `toeic_spea_speakinglesson_id_4e708537_fk_toeic_speakinglesson_id` FOREIGN KEY (`speakinglesson_id`) REFERENCES `toeic_speakinglesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakinglesson_questions`
--

LOCK TABLES `toeic_speakinglesson_questions` WRITE;
/*!40000 ALTER TABLE `toeic_speakinglesson_questions` DISABLE KEYS */;
INSERT INTO `toeic_speakinglesson_questions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(11,2,4),(12,3,10),(13,4,11),(14,4,12),(15,4,13),(16,4,14);
/*!40000 ALTER TABLE `toeic_speakinglesson_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakinglesson_vocabs`
--

DROP TABLE IF EXISTS `toeic_speakinglesson_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakinglesson_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakinglesson_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakinglesson_vocabs_speakinglesson_id_67759d17_uniq` (`speakinglesson_id`,`vocab_id`),
  KEY `toeic_speakinglesson_vocabs_vocab_id_8b8ee61b_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_spea_speakinglesson_id_f7f3d49d_fk_toeic_speakinglesson_id` FOREIGN KEY (`speakinglesson_id`) REFERENCES `toeic_speakinglesson` (`id`),
  CONSTRAINT `toeic_speakinglesson_vocabs_vocab_id_8b8ee61b_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakinglesson_vocabs`
--

LOCK TABLES `toeic_speakinglesson_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_speakinglesson_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_speakinglesson_vocabs` VALUES (10,1,282),(11,1,283),(13,1,285),(14,1,286),(15,1,287),(1,1,288),(2,1,289),(3,1,290),(4,1,291),(5,1,292),(6,1,293),(7,1,294),(8,1,295),(9,1,296),(17,2,282),(18,2,283),(19,2,295),(21,4,266),(22,4,302),(23,4,303),(24,4,304),(25,4,305),(26,4,306),(27,4,307),(28,4,309),(29,4,310),(30,4,311),(31,4,312),(32,4,313),(33,4,314),(34,4,315),(35,4,316),(36,4,317),(37,4,318),(38,4,319),(20,4,321);
/*!40000 ALTER TABLE `toeic_speakinglesson_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingpractice`
--

DROP TABLE IF EXISTS `toeic_speakingpractice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingpractice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(11) NOT NULL,
  `practicetype_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_speakingprac_lesson_id_91cb1bee_fk_toeic_speakinglesson_id` (`lesson_id`),
  KEY `toeic_speakingpractice_9b240113` (`practicetype_id`),
  CONSTRAINT `toeic__practicetype_id_020716cc_fk_toeic_speakingpracticetype_id` FOREIGN KEY (`practicetype_id`) REFERENCES `toeic_speakingpracticetype` (`id`),
  CONSTRAINT `toeic_speakingprac_lesson_id_91cb1bee_fk_toeic_speakinglesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `toeic_speakinglesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingpractice`
--

LOCK TABLES `toeic_speakingpractice` WRITE;
/*!40000 ALTER TABLE `toeic_speakingpractice` DISABLE KEYS */;
INSERT INTO `toeic_speakingpractice` VALUES (2,1,1,1),(4,1,3,2),(5,2,3,1),(6,3,3,1),(7,4,3,1),(8,4,1,1);
/*!40000 ALTER TABLE `toeic_speakingpractice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingpractice_answers`
--

DROP TABLE IF EXISTS `toeic_speakingpractice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingpractice_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakingpractice_id` int(11) NOT NULL,
  `speakinganswer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakingpractice_answers_speakingpractice_id_84bec447_uniq` (`speakingpractice_id`,`speakinganswer_id`),
  KEY `toeic_spea_speakinganswer_id_c6249a58_fk_toeic_speakinganswer_id` (`speakinganswer_id`),
  CONSTRAINT `toeic__speakingpractice_id_b1ba755e_fk_toeic_speakingpractice_id` FOREIGN KEY (`speakingpractice_id`) REFERENCES `toeic_speakingpractice` (`id`),
  CONSTRAINT `toeic_spea_speakinganswer_id_c6249a58_fk_toeic_speakinganswer_id` FOREIGN KEY (`speakinganswer_id`) REFERENCES `toeic_speakinganswer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingpractice_answers`
--

LOCK TABLES `toeic_speakingpractice_answers` WRITE;
/*!40000 ALTER TABLE `toeic_speakingpractice_answers` DISABLE KEYS */;
INSERT INTO `toeic_speakingpractice_answers` VALUES (4,2,1),(5,2,2),(6,2,3),(7,2,5),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,16),(13,2,20),(15,4,2),(16,4,6),(14,4,8),(19,5,5),(21,5,8),(17,5,35),(18,5,36),(20,5,38),(22,5,41),(23,5,43),(24,5,45),(28,6,2),(30,6,26),(31,6,28),(32,6,29),(33,6,31),(27,6,33),(29,6,34),(38,7,47),(37,7,48),(35,7,50),(36,7,54),(34,7,56),(39,8,49),(41,8,51),(42,8,55),(43,8,57),(40,8,58);
/*!40000 ALTER TABLE `toeic_speakingpractice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingpractice_questions`
--

DROP TABLE IF EXISTS `toeic_speakingpractice_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingpractice_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakingpractice_id` int(11) NOT NULL,
  `speakingquestion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakingpractice_practic_speakingpractice_id_43b63cc7_uniq` (`speakingpractice_id`,`speakingquestion_id`),
  KEY `toeic__speakingquestion_id_7e87ea68_fk_toeic_speakingquestion_id` (`speakingquestion_id`),
  CONSTRAINT `toeic__speakingpractice_id_d5a9783f_fk_toeic_speakingpractice_id` FOREIGN KEY (`speakingpractice_id`) REFERENCES `toeic_speakingpractice` (`id`),
  CONSTRAINT `toeic__speakingquestion_id_7e87ea68_fk_toeic_speakingquestion_id` FOREIGN KEY (`speakingquestion_id`) REFERENCES `toeic_speakingquestion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingpractice_questions`
--

LOCK TABLES `toeic_speakingpractice_questions` WRITE;
/*!40000 ALTER TABLE `toeic_speakingpractice_questions` DISABLE KEYS */;
INSERT INTO `toeic_speakingpractice_questions` VALUES (4,2,1),(5,2,2),(6,2,3),(12,2,6),(13,2,7),(10,2,8),(11,2,9),(14,4,2),(15,4,3),(16,4,5),(17,4,6),(18,4,7),(19,4,8),(20,4,9),(21,7,11),(22,7,12),(23,7,13),(24,7,14);
/*!40000 ALTER TABLE `toeic_speakingpractice_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingpracticetype`
--

DROP TABLE IF EXISTS `toeic_speakingpracticetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingpracticetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `instruction` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingpracticetype`
--

LOCK TABLES `toeic_speakingpracticetype` WRITE;
/*!40000 ALTER TABLE `toeic_speakingpracticetype` DISABLE KEYS */;
INSERT INTO `toeic_speakingpracticetype` VALUES (1,'Question-Answer',''),(2,'Fill in the blank',''),(3,'Translate','');
/*!40000 ALTER TABLE `toeic_speakingpracticetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingquestion`
--

DROP TABLE IF EXISTS `toeic_speakingquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `text` varchar(200) NOT NULL,
  `translation` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `questiontype_id` int(11) NOT NULL,
  `textwithblank` varchar(200),
  `audioa` varchar(100),
  PRIMARY KEY (`id`),
  KEY `toeic_speakingquestion_level_id_18546a6c_fk_toeic_level_id` (`level_id`),
  KEY `toeic_speakingquestion_5d34caa8` (`questiontype_id`),
  CONSTRAINT `toeic__questiontype_id_34de0bbc_fk_toeic_speakingquestiontype_id` FOREIGN KEY (`questiontype_id`) REFERENCES `toeic_speakingquestiontype` (`id`),
  CONSTRAINT `toeic_speakingquestion_level_id_18546a6c_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingquestion`
--

LOCK TABLES `toeic_speakingquestion` WRITE;
/*!40000 ALTER TABLE `toeic_speakingquestion` DISABLE KEYS */;
INSERT INTO `toeic_speakingquestion` VALUES (1,1,'Hi, I’m Joe.','Xin chào, Tôi là Joe','2016-11-15 08:06:57.589714','audios/speakingquestion/imjoeaudio-cutter.com.mp3','',1,1,'Hi, I’  Joe.',NULL),(2,1,'Who are you?','Bạn là ai?','2016-11-15 08:53:56.350141','audios/speakingquestion/whoareyoubrian_audio-cutter.com.mp3','',1,1,'Who --- you?',''),(3,1,'Who are they?','Họ là ai?','2016-11-15 09:11:47.264774','audios/speakingquestion/whoaretheysailli_audio-cutter.com.mp3','',1,1,'Who --- they?',NULL),(4,1,'Presentation: Nationality','Nói về quốc tịch','2016-11-18 05:37:17.082392','','',1,3,'',''),(5,1,'Are you John Oliver?','Bạn có phải là John Oliver không?','2016-11-18 05:39:32.378293','audios/speakingquestion/areyoujohnoliver_audio-cutter.com.mp3','',1,1,'',''),(6,1,'Are they Mary and Ashley?','Họ có phải là Mary và Ashley không?','2016-11-18 05:40:43.836710','audios/speakingquestion/aretheymaryandashley_audio-cutter.com.mp3','',1,1,'---  they Mary and Ashley?',''),(7,1,'Are you Vietnamese?','Bạn là người Việt Nam à?','2016-11-18 05:41:44.851260','audios/speakingquestion/areyouvietnamese_audio-cutter.com.mp3','',NULL,1,'--- you Vietnamese?',''),(8,1,'Is she Chinese?','Cô ấy là người Trung Quốc à?','2016-11-18 05:43:17.982150','audios/speakingquestion/isshechinese_audio-cutter.com.mp3','',1,1,'--- she Chinese?',''),(9,1,'Is he British?','Anh ấy là người Anh à?','2016-11-18 05:44:01.676352','audios/speakingquestion/ishebritish_audio-cutter.com.mp3','',1,1,'--- he British?',''),(10,1,'Presentation: Name','Giới thiệu: Tên (tôi)','2016-11-22 02:25:32.403505','','',NULL,3,'',''),(11,1,'How old are you?','Bạn bao nhiêu tuổi?','2016-11-25 13:46:35.369122','audios/speakingquestion/howoldareyou_brian.mp3','',1,1,'--- --- are you?',''),(12,2,'How old is she?','Cô ấy bao nhiêu tuổi?','2016-11-25 14:12:58.290111','audios/speakingquestion/howoldisshe_brian.mp3','',1,1,'--- ---  is she?',''),(13,3,'How old is he?','Anh ấy bao nhiêu tuổi?','2016-11-25 14:16:35.837099','audios/speakingquestion/howoldishe_brian.mp3','',1,1,'--- --- is he?',''),(14,4,'How old are they?','Họ bao nhiêu tuổi? / Chúng nó bao nhiêu tuổi?','2016-11-25 14:19:06.746938','audios/speakingquestion/howoldarethey_brian.mp3','',1,1,'--- --- are they?','');
/*!40000 ALTER TABLE `toeic_speakingquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingquestion_speakinganswer`
--

DROP TABLE IF EXISTS `toeic_speakingquestion_speakinganswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingquestion_speakinganswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakingquestion_id` int(11) NOT NULL,
  `speakinganswer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakingquestion_speakin_speakingquestion_id_78f25999_uniq` (`speakingquestion_id`,`speakinganswer_id`),
  KEY `toeic_speakingquestion_speakinga_speakinganswer_id_a6a40e5e_uniq` (`speakinganswer_id`),
  KEY `toeic_speakingquestion_speakin_speakingquestion_id_e0b07451_uniq` (`speakingquestion_id`),
  CONSTRAINT `toeic__speakingquestion_id_e0b07451_fk_toeic_speakingquestion_id` FOREIGN KEY (`speakingquestion_id`) REFERENCES `toeic_speakingquestion` (`id`),
  CONSTRAINT `toeic_spea_speakinganswer_id_a6a40e5e_fk_toeic_speakinganswer_id` FOREIGN KEY (`speakinganswer_id`) REFERENCES `toeic_speakinganswer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingquestion_speakinganswer`
--

LOCK TABLES `toeic_speakingquestion_speakinganswer` WRITE;
/*!40000 ALTER TABLE `toeic_speakingquestion_speakinganswer` DISABLE KEYS */;
INSERT INTO `toeic_speakingquestion_speakinganswer` VALUES (1,1,1),(2,2,2),(16,2,23),(14,2,24),(15,2,25),(3,3,3),(5,4,5),(6,4,6),(4,4,8),(31,4,35),(32,4,36),(33,4,37),(34,4,38),(35,4,39),(36,4,40),(37,4,41),(38,4,42),(39,4,43),(40,4,44),(41,4,45),(42,4,46),(7,5,11),(8,6,20),(9,7,11),(13,8,14),(10,8,16),(12,9,10),(11,9,12),(19,10,2),(24,10,3),(20,10,23),(17,10,24),(18,10,25),(25,10,26),(26,10,27),(27,10,28),(28,10,29),(29,10,30),(30,10,31),(21,10,32),(22,10,33),(23,10,34),(43,11,47),(44,11,48),(45,11,49),(46,12,50),(47,12,51),(48,12,52),(49,13,53),(50,13,54),(51,13,55),(52,14,56),(53,14,57),(54,14,58);
/*!40000 ALTER TABLE `toeic_speakingquestion_speakinganswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingquestion_vocabs`
--

DROP TABLE IF EXISTS `toeic_speakingquestion_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingquestion_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakingquestion_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakingquestion_vocabs_speakingquestion_id_a1426cfb_uniq` (`speakingquestion_id`,`vocab_id`),
  KEY `toeic_speakingquestion_vocab_vocab_id_784cfae5_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic__speakingquestion_id_1c771ce8_fk_toeic_speakingquestion_id` FOREIGN KEY (`speakingquestion_id`) REFERENCES `toeic_speakingquestion` (`id`),
  CONSTRAINT `toeic_speakingquestion_vocab_vocab_id_784cfae5_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingquestion_vocabs`
--

LOCK TABLES `toeic_speakingquestion_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_speakingquestion_vocabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_speakingquestion_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingquestiontype`
--

DROP TABLE IF EXISTS `toeic_speakingquestiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingquestiontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingquestiontype`
--

LOCK TABLES `toeic_speakingquestiontype` WRITE;
/*!40000 ALTER TABLE `toeic_speakingquestiontype` DISABLE KEYS */;
INSERT INTO `toeic_speakingquestiontype` VALUES (1,'Question-Answer'),(3,'Instruction'),(4,'test');
/*!40000 ALTER TABLE `toeic_speakingquestiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingtopic`
--

DROP TABLE IF EXISTS `toeic_speakingtopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingtopic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingtopic`
--

LOCK TABLES `toeic_speakingtopic` WRITE;
/*!40000 ALTER TABLE `toeic_speakingtopic` DISABLE KEYS */;
INSERT INTO `toeic_speakingtopic` VALUES (1,'Greeting');
/*!40000 ALTER TABLE `toeic_speakingtopic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_speakingtopic_testset`
--

DROP TABLE IF EXISTS `toeic_speakingtopic_testset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_speakingtopic_testset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `speakingtopic_id` int(11) NOT NULL,
  `speakingquestion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_speakingtopic_testset_speakingtopic_id_9be87fe9_uniq` (`speakingtopic_id`,`speakingquestion_id`),
  KEY `toeic__speakingquestion_id_901e936c_fk_toeic_speakingquestion_id` (`speakingquestion_id`),
  CONSTRAINT `toeic__speakingquestion_id_901e936c_fk_toeic_speakingquestion_id` FOREIGN KEY (`speakingquestion_id`) REFERENCES `toeic_speakingquestion` (`id`),
  CONSTRAINT `toeic_speaki_speakingtopic_id_8aaba684_fk_toeic_speakingtopic_id` FOREIGN KEY (`speakingtopic_id`) REFERENCES `toeic_speakingtopic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_speakingtopic_testset`
--

LOCK TABLES `toeic_speakingtopic_testset` WRITE;
/*!40000 ALTER TABLE `toeic_speakingtopic_testset` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_speakingtopic_testset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_test`
--

DROP TABLE IF EXISTS `toeic_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  `testType_id` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_test_level_id_fe2d074d_fk_toeic_level_id` (`level_id`),
  KEY `toeic_test_d93d3a98` (`testType_id`),
  CONSTRAINT `toeic_test_level_id_fe2d074d_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`),
  CONSTRAINT `toeic_test_testType_id_553d46fe_fk_toeic_testtype_id` FOREIGN KEY (`testType_id`) REFERENCES `toeic_testtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_test`
--

LOCK TABLES `toeic_test` WRITE;
/*!40000 ALTER TABLE `toeic_test` DISABLE KEYS */;
INSERT INTO `toeic_test` VALUES (2,'Economy 4 - Test 2 - Grammar','2016-10-11 07:59:45.336000',2,1),(3,'Economy 4 - Test 2 - Vocabulary','2016-10-11 08:00:02.430000',2,1),(4,'Economy 4 - Test 2 - part 1','2016-10-17 02:54:08.855676',2,2),(5,'Economy 4 - Test 2 - part 2','2016-10-17 02:54:25.217921',2,2),(6,'Economy 4 - Test 2 - part 3','2016-10-17 02:54:48.064069',2,2),(7,'Economy 4 - Test 2 - part 4','2016-10-17 02:55:07.814093',2,2),(8,'Economy 4 - Test 2 - part 5','2016-10-17 02:55:42.257115',2,2),(9,'Economy 4 - Test 2 - part 6','2016-10-17 02:57:37.735603',2,2);
/*!40000 ALTER TABLE `toeic_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_testtype`
--

DROP TABLE IF EXISTS `toeic_testtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_testtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_testtype`
--

LOCK TABLES `toeic_testtype` WRITE;
/*!40000 ALTER TABLE `toeic_testtype` DISABLE KEYS */;
INSERT INTO `toeic_testtype` VALUES (1,'test','2016-10-17 02:52:26.614286'),(2,'exercise','2016-10-17 02:52:48.505903');
/*!40000 ALTER TABLE `toeic_testtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_topic`
--

DROP TABLE IF EXISTS `toeic_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_topic`
--

LOCK TABLES `toeic_topic` WRITE;
/*!40000 ALTER TABLE `toeic_topic` DISABLE KEYS */;
INSERT INTO `toeic_topic` VALUES (1,'Home','2016-10-11 04:03:32.843000',NULL),(2,'Office & Workplace','2016-10-11 04:03:40.061000',''),(3,'Construction','2016-10-11 04:03:44.293000',NULL),(4,'Hotel & Restaurant','2016-10-11 08:58:51.027000','images/topics/liberty-lara-hotel1.jpg'),(5,'Electronics','2016-10-11 12:17:37.237000',''),(6,'Important verbs','2016-10-11 12:22:55.025000',''),(7,'Important nouns','2016-10-11 12:50:30.310000',''),(8,'Education','2016-10-11 13:37:31.432000',''),(9,'Architecture & Design','2016-10-12 01:54:26.920000',''),(10,'Important adjectives','2016-10-12 01:55:18.282000',''),(11,'Event','2016-10-12 01:57:23.287000',''),(12,'Advertising & Communication','2016-10-12 02:16:51.467000',''),(13,'Products and Services','2016-10-12 02:21:13.710000',''),(14,'Important adverbs','2016-10-12 03:17:26.467000',''),(15,'Important prepositions','2016-10-12 05:00:43.439000',''),(16,'Economics','2016-10-12 05:02:44.322000',''),(17,'Agriculture','2016-10-12 05:03:17.684000',''),(18,'Politics','2016-10-12 05:11:56.585000',''),(19,'Cooking','2016-10-12 05:15:44.270000',''),(20,'Police & Military','2016-10-12 05:16:42.457000',''),(21,'Medicine and Drug','2016-10-12 05:19:25.598000',''),(22,'Insurance','2016-10-12 05:47:42.132000',''),(23,'Human','2016-10-13 07:12:49.293794',''),(24,'Job application and Interview','2016-10-13 07:21:06.355171',''),(25,'Weather Forecast','2016-10-14 02:30:20.514159',''),(26,'Environment & Pollution','2016-10-14 02:37:06.725726',''),(27,'Industries','2016-10-14 02:38:40.405029',''),(28,'Sciences & Technologies','2016-10-14 02:39:30.360432',''),(29,'Music & Art','2016-10-14 03:13:49.001296',''),(30,'Tourism','2016-10-14 03:34:34.425863',''),(31,'Important conjunctions','2016-10-14 05:15:41.820768',''),(32,'Important idioms','2016-10-14 05:48:00.853637',''),(33,'Journalism and Publishing','2016-10-14 05:48:30.664952',''),(34,'Transportation','2016-10-14 06:18:16.218373',''),(35,'Sports and Games','2016-10-16 02:45:40.700685',''),(36,'Elementary Vocabulary','2016-10-25 02:53:38.059743',''),(37,'Countries and Nationalities','2016-11-18 03:19:44.890097',''),(38,'Numbers','2016-11-25 13:45:17.562860','');
/*!40000 ALTER TABLE `toeic_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_type`
--

DROP TABLE IF EXISTS `toeic_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_type`
--

LOCK TABLES `toeic_type` WRITE;
/*!40000 ALTER TABLE `toeic_type` DISABLE KEYS */;
INSERT INTO `toeic_type` VALUES (1,'Grammar','2016-10-11 04:04:00.986000'),(2,'Vocabulary','2016-10-11 04:04:05.931000'),(3,'Listening','2016-10-11 04:04:17.168000'),(4,'Reading','2016-10-11 04:04:21.330000');
/*!40000 ALTER TABLE `toeic_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_useranswer`
--

DROP TABLE IF EXISTS `toeic_useranswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_useranswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime(6) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session` int(11),
  `is_correct` tinyint(1) NOT NULL,
  `usertest_id` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_useranswer_answer_id_a9d3424a_fk_toeic_answer_id` (`answer_id`),
  KEY `toeic_useranswer_question_id_2442d5e4_fk_toeic_question_id` (`question_id`),
  KEY `toeic_useranswer_test_id_9c808382_fk_toeic_test_id` (`test_id`),
  KEY `toeic_useranswer_user_id_d834189d_fk_auth_user_id` (`user_id`),
  KEY `toeic_useranswer_9dee7be6` (`usertest_id`),
  CONSTRAINT `toeic_useranswer_answer_id_a9d3424a_fk_toeic_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `toeic_answer` (`id`),
  CONSTRAINT `toeic_useranswer_question_id_2442d5e4_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_useranswer_test_id_9c808382_fk_toeic_test_id` FOREIGN KEY (`test_id`) REFERENCES `toeic_test` (`id`),
  CONSTRAINT `toeic_useranswer_user_id_d834189d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `toeic_useranswer_usertest_id_8e7302ac_fk_toeic_usertest_id` FOREIGN KEY (`usertest_id`) REFERENCES `toeic_usertest` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_useranswer`
--

LOCK TABLES `toeic_useranswer` WRITE;
/*!40000 ALTER TABLE `toeic_useranswer` DISABLE KEYS */;
INSERT INTO `toeic_useranswer` VALUES (1,'2016-12-29 05:19:41.929254',2,2,2,1,8,0,8),(2,'2016-12-29 05:19:41.940969',5,3,2,1,8,1,8),(3,'2016-12-29 05:19:41.956433',9,4,2,1,8,1,8),(4,'2016-12-29 05:19:41.968728',14,5,2,1,8,1,8),(5,'2016-12-29 05:19:41.980815',25,7,2,1,8,0,8),(6,'2016-12-29 05:19:41.993370',30,8,2,1,8,1,8),(7,'2016-12-29 05:19:42.006465',36,9,2,1,8,0,8),(8,'2016-12-29 05:19:42.018280',40,10,2,1,8,0,8),(9,'2016-12-29 05:19:42.032569',47,12,2,1,8,0,8),(10,'2016-12-29 05:19:42.045483',23,14,2,1,8,1,8),(11,'2016-12-29 05:19:42.057750',56,15,2,1,8,0,8),(12,'2016-12-29 05:19:42.070892',60,16,2,1,8,0,8),(13,'2016-12-29 05:19:42.083464',66,18,2,1,8,0,8),(14,'2016-12-29 05:19:42.096558',77,20,2,1,8,0,8),(15,'2016-12-29 05:19:42.110402',83,22,2,1,8,0,8),(16,'2016-12-29 05:19:42.122965',92,24,2,1,8,1,8),(17,'2016-12-29 05:19:42.136264',111,29,2,1,8,0,8),(18,'2016-12-29 05:19:42.149421',119,31,2,1,8,0,8),(19,'2016-12-29 05:19:42.162412',131,34,2,1,8,0,8),(20,'2016-12-29 05:19:42.175683',143,37,2,1,8,1,8),(21,'2016-12-29 07:09:00.279713',2,2,4,1,9,0,9),(22,'2016-12-29 07:09:00.301943',6,3,4,1,9,0,9),(23,'2016-12-29 07:09:17.557594',2,2,4,1,10,0,10),(24,'2016-12-29 07:09:17.569615',6,3,4,1,10,0,10),(25,'2016-12-29 07:09:17.584694',10,4,4,1,10,0,10),(26,'2016-12-29 07:09:17.595839',14,5,4,1,10,1,10),(27,'2016-12-29 07:09:17.607247',19,6,4,1,10,1,10),(28,'2016-12-29 07:09:17.618656',28,7,4,1,10,1,10),(29,'2016-12-29 07:09:46.017316',1,2,2,1,11,1,11),(30,'2016-12-29 07:09:46.032843',8,3,2,1,11,0,11),(31,'2016-12-29 07:09:46.048366',30,8,2,1,11,1,11),(32,'2016-12-29 07:09:46.061447',33,9,2,1,11,1,11),(33,'2016-12-29 07:09:46.074303',38,10,2,1,11,1,11),(34,'2016-12-29 07:09:46.112336',23,14,2,1,11,1,11),(35,'2016-12-29 07:10:10.858280',41,11,3,1,12,0,12),(36,'2016-12-29 07:10:10.872543',89,23,3,1,12,0,12),(37,'2016-12-29 07:10:10.887037',138,35,3,1,12,0,12),(38,'2016-12-29 07:10:10.899148',141,36,3,1,12,1,12),(39,'2016-12-29 07:35:42.784283',41,11,3,1,13,0,13),(40,'2016-12-29 07:35:42.798219',62,17,3,1,13,1,13),(41,'2016-12-29 07:35:42.811503',72,19,3,1,13,1,13),(42,'2016-12-29 07:35:42.824561',81,21,3,1,13,1,13),(43,'2016-12-29 16:13:45.285121',3,2,2,1,14,0,14),(44,'2016-12-29 16:13:45.299572',7,3,2,1,14,0,14),(45,'2016-12-29 16:13:45.311877',11,4,2,1,14,0,14),(46,'2016-12-29 16:13:45.323699',16,5,2,1,14,0,14),(47,'2016-12-29 16:13:45.337071',27,7,2,1,14,0,14),(48,'2016-12-29 16:13:45.352972',31,8,2,1,14,0,14),(49,'2016-12-29 16:13:45.365928',34,9,2,1,14,0,14),(50,'2016-12-29 16:13:45.378527',39,10,2,1,14,0,14),(51,'2016-12-29 16:13:45.390307',47,12,2,1,14,0,14),(52,'2016-12-29 16:13:45.402316',24,14,2,1,14,0,14),(53,'2016-12-29 16:13:45.414293',56,15,2,1,14,0,14),(54,'2016-12-29 16:13:45.426450',59,16,2,1,14,0,14),(55,'2016-12-29 16:13:45.438430',66,18,2,1,14,0,14),(56,'2016-12-29 16:13:45.451643',75,20,2,1,14,0,14),(57,'2016-12-29 16:13:45.464136',85,22,2,1,14,0,14),(58,'2016-12-29 16:13:45.476277',93,24,2,1,14,0,14),(59,'2016-12-29 16:13:45.490408',111,29,2,1,14,0,14),(60,'2016-12-29 16:13:45.505121',120,31,2,1,14,0,14),(61,'2016-12-29 16:13:45.518145',133,34,2,1,14,0,14),(62,'2016-12-29 16:13:45.531306',146,37,2,1,14,0,14),(63,'2016-12-30 04:11:54.816085',4,2,4,1,15,0,15),(64,'2016-12-30 04:11:54.830808',8,3,4,1,15,0,15),(65,'2016-12-30 04:11:54.843629',11,4,4,1,15,0,15),(66,'2016-12-30 04:11:54.857288',14,5,4,1,15,1,15),(67,'2016-12-30 04:11:54.871486',19,6,4,1,15,1,15),(68,'2016-12-30 04:11:54.883845',25,7,4,1,15,0,15),(69,'2016-12-30 04:13:37.240679',1,2,2,1,16,1,16),(70,'2016-12-30 04:13:37.253472',5,3,2,1,16,1,16),(71,'2016-12-30 04:13:37.265643',9,4,2,1,16,1,16),(72,'2016-12-30 04:13:37.282433',14,5,2,1,16,1,16),(73,'2016-12-30 04:13:37.294760',28,7,2,1,16,1,16),(74,'2016-12-30 04:13:37.307264',30,8,2,1,16,1,16),(75,'2016-12-30 04:13:37.320144',33,9,2,1,16,1,16),(76,'2016-12-30 04:13:37.333230',38,10,2,1,16,1,16),(77,'2016-12-30 04:13:37.352006',49,12,2,1,16,1,16),(78,'2016-12-30 04:13:37.364568',23,14,2,1,16,1,16),(79,'2016-12-30 04:13:37.382374',54,15,2,1,16,1,16),(80,'2016-12-30 04:13:37.395075',61,16,2,1,16,1,16),(81,'2016-12-30 04:13:37.407333',67,18,2,1,16,1,16),(82,'2016-12-30 04:13:37.418908',74,20,2,1,16,1,16),(83,'2016-12-30 04:13:37.430526',82,22,2,1,16,1,16),(84,'2016-12-30 04:13:37.441803',92,24,2,1,16,1,16),(85,'2016-12-30 04:13:37.453656',110,29,2,1,16,1,16),(86,'2016-12-30 04:13:37.466018',121,31,2,1,16,1,16),(87,'2016-12-30 04:13:37.477602',132,34,2,1,16,1,16),(88,'2016-12-30 04:13:37.489758',143,37,2,1,16,1,16),(89,'2016-12-30 04:17:20.195665',44,11,3,1,17,1,17),(90,'2016-12-30 04:17:20.214302',62,17,3,1,17,1,17),(91,'2016-12-30 04:17:20.231236',72,19,3,1,17,1,17),(92,'2016-12-30 04:17:20.247871',81,21,3,1,17,1,17),(93,'2016-12-30 04:17:20.266868',86,23,3,1,17,1,17),(94,'2016-12-30 04:17:20.286198',104,27,3,1,17,1,17),(95,'2016-12-30 04:17:20.301918',117,30,3,1,17,1,17),(96,'2016-12-30 04:17:20.315290',125,32,3,1,17,1,17),(97,'2016-12-30 04:17:20.331261',129,33,3,1,17,1,17),(98,'2016-12-30 04:17:20.346064',137,35,3,1,17,1,17),(99,'2016-12-30 04:17:20.359979',141,36,3,1,17,1,17),(100,'2016-12-30 08:51:09.585035',4,2,4,1,18,0,18),(101,'2016-12-30 08:51:09.600209',6,3,4,1,18,0,18),(102,'2016-12-30 08:51:09.612201',12,4,4,1,18,0,18),(103,'2016-12-30 08:51:09.623755',14,5,4,1,18,1,18),(104,'2016-12-30 08:51:50.346618',3,2,2,1,19,0,19),(105,'2016-12-30 08:51:50.363107',54,15,2,1,19,1,19),(106,'2016-12-30 08:51:50.375945',69,18,2,1,19,0,19),(107,'2016-12-30 08:51:50.390778',112,29,2,1,19,0,19),(108,'2016-12-30 08:51:50.404434',132,34,2,1,19,1,19),(109,'2016-12-30 09:08:01.675326',55,15,2,1,20,0,20),(110,'2016-12-30 09:08:01.691635',77,20,2,1,20,0,20),(111,'2016-12-30 09:08:01.703855',84,22,2,1,20,0,20),(112,'2016-12-30 09:08:01.715257',93,24,2,1,20,0,20),(113,'2016-12-30 09:08:01.726407',111,29,2,1,20,0,20),(114,'2016-12-30 09:08:01.737450',121,31,2,1,20,1,20);
/*!40000 ALTER TABLE `toeic_useranswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_useranswergrammarquiz`
--

DROP TABLE IF EXISTS `toeic_useranswergrammarquiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_useranswergrammarquiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_added` datetime(6) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `grammartopic_id` int(11),
  `session` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_useranswergrammarqui_answer_id_1ae6f25c_fk_toeic_answer_id` (`answer_id`),
  KEY `toeic_useranswergramma_question_id_5cb5a597_fk_toeic_question_id` (`question_id`),
  KEY `toeic_useranswergrammarquiz_user_id_9a7cce53_fk_auth_user_id` (`user_id`),
  KEY `toeic_useranswergrammarquiz_ec906543` (`grammartopic_id`),
  CONSTRAINT `toeic_useransw_grammartopic_id_01d62db0_fk_toeic_grammartopic_id` FOREIGN KEY (`grammartopic_id`) REFERENCES `toeic_grammartopic` (`id`),
  CONSTRAINT `toeic_useranswergramma_question_id_5cb5a597_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_useranswergrammarqui_answer_id_1ae6f25c_fk_toeic_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `toeic_answer` (`id`),
  CONSTRAINT `toeic_useranswergrammarquiz_user_id_9a7cce53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_useranswergrammarquiz`
--

LOCK TABLES `toeic_useranswergrammarquiz` WRITE;
/*!40000 ALTER TABLE `toeic_useranswergrammarquiz` DISABLE KEYS */;
INSERT INTO `toeic_useranswergrammarquiz` VALUES (1,'2016-10-22 14:42:02.009394',82,22,1,3,19),(2,'2016-10-22 14:43:49.865273',82,22,1,3,19),(3,'2016-10-22 14:43:49.880239',143,37,1,3,19),(4,'2016-10-22 14:44:05.493701',82,22,1,3,19),(5,'2016-10-22 14:44:57.641149',82,22,1,3,19),(6,'2016-10-22 14:45:52.439106',82,22,1,3,19),(7,'2016-10-22 14:47:35.414477',74,20,1,3,19),(8,'2016-10-22 14:51:14.012683',74,20,1,3,20),(9,'2016-11-21 06:03:26.721267',132,34,1,1,21),(10,'2016-12-21 04:34:40.107741',38,10,1,12,22),(11,'2016-12-21 06:17:31.424800',38,10,1,12,23),(12,'2016-12-21 06:17:40.848048',39,10,1,12,24),(13,'2016-12-29 16:05:30.956985',4,2,1,3,25),(14,'2016-12-29 16:05:30.980139',16,5,1,3,25),(15,'2016-12-29 16:05:30.999363',21,14,1,3,25),(16,'2016-12-29 16:05:31.019972',76,20,1,3,25),(17,'2016-12-29 16:05:31.047970',84,22,1,3,25),(18,'2016-12-29 16:05:31.083747',145,37,1,3,25);
/*!40000 ALTER TABLE `toeic_useranswergrammarquiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_useranswervideolesson`
--

DROP TABLE IF EXISTS `toeic_useranswervideolesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_useranswervideolesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` int(11) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `toeic_useranswervideo_answer_id_d7bcb616_fk_toeic_answer_id` (`answer_id`),
  KEY `toeic_useranswervideo_7aa0f6ee` (`question_id`),
  KEY `toeic_useranswervideo_e8701ad4` (`user_id`),
  KEY `toeic_useranswervideo_b58b747e` (`video_id`),
  CONSTRAINT `toeic_useranswervideo_answer_id_d7bcb616_fk_toeic_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `toeic_answer` (`id`),
  CONSTRAINT `toeic_useranswervideo_question_id_9cbdb8f0_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_useranswervideo_user_id_539fcb05_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `toeic_useranswervideol_video_id_10115329_fk_toeic_videolesson_id` FOREIGN KEY (`video_id`) REFERENCES `toeic_videolesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_useranswervideolesson`
--

LOCK TABLES `toeic_useranswervideolesson` WRITE;
/*!40000 ALTER TABLE `toeic_useranswervideolesson` DISABLE KEYS */;
INSERT INTO `toeic_useranswervideolesson` VALUES (1,1,'2016-10-20 09:02:03.726690',149,38,1,1),(2,1,'2016-10-20 09:02:03.770262',154,39,1,1),(3,1,'2016-10-20 09:02:03.782976',158,40,1,1),(4,2,'2016-10-20 09:02:20.994962',149,38,1,1),(5,2,'2016-10-20 09:02:21.010577',154,39,1,1),(6,2,'2016-10-20 09:02:21.023815',158,40,1,1),(7,3,'2016-10-20 09:23:51.351357',149,38,1,1),(8,3,'2016-10-20 09:23:51.365387',154,39,1,1),(9,3,'2016-10-20 09:23:51.377248',158,40,1,1),(10,1,'2016-10-20 10:05:23.539791',148,38,4,1),(11,1,'2016-10-20 10:05:23.556020',154,39,4,1),(12,1,'2016-10-20 10:05:23.567125',156,40,4,1),(13,1,'2016-10-20 13:53:22.295576',160,41,2,1),(14,1,'2016-10-20 13:53:22.335194',165,42,2,1),(15,1,'2016-10-20 13:53:22.369685',168,43,2,1),(16,2,'2016-10-20 14:36:44.277092',161,41,4,1),(17,2,'2016-10-20 14:36:44.321987',167,42,4,1),(18,2,'2016-10-20 14:36:44.345790',168,43,4,1),(19,4,'2016-10-24 01:09:59.321065',169,43,1,1),(20,5,'2016-10-24 02:09:59.958711',165,42,1,1),(21,6,'2016-10-27 05:45:58.165317',168,43,1,1);
/*!40000 ALTER TABLE `toeic_useranswervideolesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_userdictation`
--

DROP TABLE IF EXISTS `toeic_userdictation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_userdictation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `dictation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_userdictation_dictation_id_7b3d3f5f_fk_toeic_dictation_id` (`dictation_id`),
  KEY `toeic_userdictation_user_id_6f42cdde_fk_auth_user_id` (`user_id`),
  CONSTRAINT `toeic_userdictation_dictation_id_7b3d3f5f_fk_toeic_dictation_id` FOREIGN KEY (`dictation_id`) REFERENCES `toeic_dictation` (`id`),
  CONSTRAINT `toeic_userdictation_user_id_6f42cdde_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_userdictation`
--

LOCK TABLES `toeic_userdictation` WRITE;
/*!40000 ALTER TABLE `toeic_userdictation` DISABLE KEYS */;
INSERT INTO `toeic_userdictation` VALUES (1,'Jane, I need your assistance with something','2016-10-20 09:02:55.959938',1,1,1),(2,'Jane, I','2016-10-20 10:03:41.904009',1,1,1),(3,'As a matter of fact, an acquaintance of mine is a doctor, I can check to see','2016-10-20 10:03:41.918471',6,1,1),(4,'jane, i need you  a something','2016-10-20 10:17:05.074948',1,4,1),(5,'i have headeach any way','2016-10-20 10:17:05.113922',2,4,1),(6,'Jane i need your system with something','2016-10-20 13:56:30.621783',1,2,1),(7,'i sorry to hear that you right i to do something right away','2016-10-20 13:56:30.654278',3,2,1),(8,'can you recomnend possition in the area. i hope i find someone paytran','2016-10-20 13:56:30.666576',4,2,1),(9,'Jane','2016-10-24 01:00:41.882829',1,1,2),(10,'Jane','2016-10-24 01:01:27.887949',1,1,3),(11,'Jane','2016-10-24 01:06:04.672885',1,1,4),(12,'jane','2016-10-24 01:10:12.469015',2,1,5);
/*!40000 ALTER TABLE `toeic_userdictation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_userspeakinganswer`
--

DROP TABLE IF EXISTS `toeic_userspeakinganswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_userspeakinganswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` int(11) DEFAULT NULL,
  `text` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `practice_id` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_userspea_question_id_41d90a91_fk_toeic_speakingquestion_id` (`question_id`),
  KEY `toeic_userspeakinganswer_user_id_b10fb012_fk_auth_user_id` (`user_id`),
  KEY `toeic_userspeaking_lesson_id_4eabbc61_fk_toeic_speakinglesson_id` (`lesson_id`),
  KEY `toeic_userspeakinganswer_6ea07fe3` (`practice_id`),
  CONSTRAINT `toeic_userspea_practice_id_ffaf9165_fk_toeic_speakingpractice_id` FOREIGN KEY (`practice_id`) REFERENCES `toeic_speakingpractice` (`id`),
  CONSTRAINT `toeic_userspea_question_id_41d90a91_fk_toeic_speakingquestion_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_speakingquestion` (`id`),
  CONSTRAINT `toeic_userspeaking_lesson_id_4eabbc61_fk_toeic_speakinglesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `toeic_speakinglesson` (`id`),
  CONSTRAINT `toeic_userspeakinganswer_user_id_b10fb012_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_userspeakinganswer`
--

LOCK TABLES `toeic_userspeakinganswer` WRITE;
/*!40000 ALTER TABLE `toeic_userspeakinganswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_userspeakinganswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_usertest`
--

DROP TABLE IF EXISTS `toeic_usertest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_usertest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `start` datetime(6) NOT NULL,
  `finish` datetime(6) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_index` (`session`),
  KEY `toeic_usertest_test_id_a681a9cd_fk_toeic_test_id` (`test_id`),
  KEY `toeic_usertest_user_id_60faa23e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `toeic_usertest_test_id_a681a9cd_fk_toeic_test_id` FOREIGN KEY (`test_id`) REFERENCES `toeic_test` (`id`),
  CONSTRAINT `toeic_usertest_user_id_60faa23e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_usertest`
--

LOCK TABLES `toeic_usertest` WRITE;
/*!40000 ALTER TABLE `toeic_usertest` DISABLE KEYS */;
INSERT INTO `toeic_usertest` VALUES (1,1,0,'2016-12-29 04:59:41.279068','2016-12-29 04:59:41.279080','2016-12-29 04:59:41.279970',2,1,0.00),(2,2,2,'2016-12-28 09:05:55.408164','2016-12-29 05:06:01.971865','2016-12-29 05:06:01.974460',2,1,0.00),(3,3,4,'2016-12-29 05:07:40.030673','2016-12-29 05:07:40.030685','2016-12-29 05:07:40.033246',2,1,0.00),(4,4,6,'2016-12-29 05:08:58.971919','2016-12-29 05:08:58.971941','2016-12-29 05:08:58.974795',2,1,0.00),(5,5,4,'2016-12-29 05:08:58.971919','2016-12-29 05:13:28.115397','2016-12-29 05:13:28.117808',2,1,0.00),(6,6,7,'2016-12-29 05:14:09.032824','2016-12-29 05:14:38.411506','2016-12-29 05:14:38.413825',2,1,0.00),(7,7,7,'2016-12-29 05:15:12.697968','2016-12-29 05:16:00.658224','2016-12-29 05:16:00.661525',2,1,0.00),(8,8,7,'2016-12-29 05:17:39.762691','2016-12-29 05:19:41.908936','2016-12-29 05:19:41.911859',2,1,0.00),(9,9,0,'2016-12-29 07:08:54.387020','2016-12-29 07:09:00.243956','2016-12-29 07:09:00.257964',4,1,0.00),(10,10,3,'2016-12-29 07:09:03.535853','2016-12-29 07:09:17.540093','2016-12-29 07:09:17.542256',4,1,0.00),(11,11,5,'2016-12-29 07:09:26.522049','2016-12-29 07:09:45.996496','2016-12-29 07:09:46.000590',2,1,0.00),(12,12,1,'2016-12-29 07:09:55.475694','2016-12-29 07:10:10.840776','2016-12-29 07:10:10.842984',3,1,0.00),(13,13,3,'2016-12-29 07:35:24.353345','2016-12-29 07:35:42.764192','2016-12-29 07:35:42.767787',3,1,0.27),(14,14,0,'2016-12-29 07:36:22.570641','2016-12-29 16:13:45.266913','2016-12-29 16:13:45.269627',2,1,0.00),(15,15,2,'2016-12-30 04:11:43.129160','2016-12-30 04:11:54.796018','2016-12-30 04:11:54.799830',4,1,0.33),(16,16,20,'2016-12-30 04:12:04.023484','2016-12-30 04:13:37.216967','2016-12-30 04:13:37.219383',2,1,1.00),(17,17,11,'2016-12-30 04:16:30.706494','2016-12-30 04:17:20.171583','2016-12-30 04:17:20.174915',3,1,1.00),(18,18,1,'2016-12-30 08:51:00.033485','2016-12-30 08:51:09.564898','2016-12-30 08:51:09.567877',4,1,0.17),(19,19,2,'2016-12-30 08:51:37.053309','2016-12-30 08:51:50.329012','2016-12-30 08:51:50.331469',2,1,0.10),(20,20,1,'2016-12-30 09:07:44.962664','2016-12-30 09:08:01.649126','2016-12-30 09:08:01.651624',2,1,0.05),(21,21,0,'2016-12-30 09:08:55.406512','2016-12-30 09:09:00.421876','2016-12-30 09:09:00.424662',4,1,0.00);
/*!40000 ALTER TABLE `toeic_usertest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_uservocab`
--

DROP TABLE IF EXISTS `toeic_uservocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_uservocab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  `session` int(11),
  `typeOfTest` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_uservocab_user_id_9e04574f_fk_auth_user_id` (`user_id`),
  KEY `toeic_uservocab_vocab_id_95dd0bf0_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_uservocab_user_id_9e04574f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `toeic_uservocab_vocab_id_95dd0bf0_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_uservocab`
--

LOCK TABLES `toeic_uservocab` WRITE;
/*!40000 ALTER TABLE `toeic_uservocab` DISABLE KEYS */;
INSERT INTO `toeic_uservocab` VALUES (1,'Bể bơi','2016-10-14 16:45:37.072931',4,1,1,1),(2,'KỲ vọng','2016-10-14 16:45:37.085635',4,3,1,1),(3,'Quy định','2016-10-14 16:45:37.098520',4,19,1,1),(4,'be boi','2016-10-16 13:57:41.325055',1,1,1,1),(5,'bể bơi','2016-10-19 07:56:30.900231',7,1,1,1),(6,'tham dự','2016-10-19 07:56:30.920647',7,12,1,1),(7,'tham dự','2016-10-19 07:56:30.931312',7,13,1,1),(8,'công chúng','2016-10-19 07:56:30.941086',7,14,1,1),(9,'kinh doanh','2016-10-19 07:56:30.950217',7,15,1,1),(10,'lợi ích','2016-10-19 07:56:30.959576',7,16,1,1),(11,'sự','2016-10-19 07:56:30.969994',7,23,1,1),(12,'miễn phí','2016-10-20 09:52:01.664628',9,14,1,1),(13,'sự hài lòng của khách hàng','2016-10-20 09:52:01.682927',9,23,1,1),(14,'chiến lược','2016-10-20 09:52:01.695286',9,24,1,1),(15,'xây dựng','2016-10-20 09:52:01.705150',9,25,1,1),(16,'mối quan hệ','2016-10-20 09:52:01.714669',9,26,1,1),(17,'quảng cáo','2016-10-20 09:52:01.724957',9,173,1,1),(18,'chiến dịch','2016-10-20 09:52:01.735140',9,174,1,1),(19,'khảo sát','2016-10-20 09:52:01.745127',9,235,1,1),(20,'bể bơi','2016-10-21 03:06:25.676290',5,1,1,1),(21,'kì vọng','2016-10-21 03:06:25.694213',5,3,1,1),(22,'phục hồi','2016-10-21 03:06:25.707989',5,4,1,1),(23,'ngành công nghiệp','2016-10-21 03:06:25.720253',5,5,1,1),(24,'chất liệu','2016-10-21 03:06:25.734476',5,54,1,1),(25,'điền đầy đủ vào đơn','2016-10-21 03:06:25.743789',5,65,1,1),(26,'đặt chỗ','2016-10-21 03:06:25.754643',5,66,1,1),(27,'căn hộ','2016-10-21 03:06:25.764198',5,6,1,1),(28,'phong cách','2016-10-21 03:06:25.773906',5,9,1,1),(29,'hấp dẫn','2016-10-21 03:06:25.784248',5,67,1,1),(30,'sự hấp dẫn','2016-10-21 03:06:25.793268',5,68,1,1),(31,'hấp dẫn','2016-10-21 03:06:25.802531',5,69,1,1),(32,'thông thường','2016-10-21 03:06:25.812251',5,19,1,1),(33,'giao hàng','2016-10-21 03:06:25.821655',5,20,1,1),(34,'bài phát biểu','2016-10-21 03:06:25.831101',5,21,1,1),(35,'hội thảo','2016-10-21 03:06:25.840518',5,22,1,1),(36,'sự hài lòng của khách hàng','2016-10-21 03:06:25.849900',5,23,1,1),(37,'chiến lược','2016-10-21 03:06:25.859267',5,24,1,1),(38,'toà nhà','2016-10-21 03:06:25.869386',5,25,1,1),(39,'mối quan hệ','2016-10-21 03:06:25.878204',5,26,1,1),(40,'có lợi nhuận','2016-10-21 03:06:25.886979',5,27,1,1),(41,'trình diễn','2016-10-21 03:06:25.897696',5,11,1,1),(42,'người tham dự','2016-10-21 03:06:25.906722',5,28,1,1),(43,'yêu cầu','2016-10-21 03:06:25.916618',5,29,1,1),(44,'mẫu thử','2016-10-21 03:06:25.924580',5,30,1,1),(45,'không may','2016-10-21 03:06:25.933746',5,31,1,1),(46,'tăng','2016-10-21 03:06:25.943019',5,32,1,1),(47,'nổi tiếng','2016-10-21 03:06:25.952210',5,33,1,1),(48,'đã từng','2016-10-21 03:06:25.961455',5,34,1,1),(49,'như','2016-10-21 03:06:25.971017',5,35,1,1),(50,'yêu cầu','2016-10-21 03:06:25.980995',5,36,1,1),(51,'nhà sản xuất','2016-10-21 03:06:25.990588',5,38,1,1),(52,'giảm','2016-10-21 03:06:26.000027',5,40,1,1),(53,'phát biểu','2016-10-21 03:06:26.013885',5,47,1,1),(54,'cộng đồng','2016-10-21 03:06:26.024222',5,48,1,1),(55,'có ảnh hưởng','2016-10-21 03:06:26.033519',5,49,1,1),(56,'kì vọng','2016-10-21 03:06:26.042892',5,3,1,1),(57,'sự quản lý','2016-10-21 03:06:26.052482',5,56,1,1),(58,'sự chỉ dẫn','2016-10-21 03:06:26.062079',5,58,1,1),(59,'công ty','2016-10-21 03:06:26.071604',5,59,1,1),(60,'có chiến lược','2016-10-21 03:06:26.080739',5,60,1,1),(61,'âm thanh','2016-10-21 03:06:26.090244',5,61,1,1),(62,'vượt quá','2016-10-21 03:06:26.100937',5,62,1,1),(63,'nhà đầu tư cổ phiếu','2016-10-21 03:06:26.110953',5,63,1,1),(64,'sự kì vọng','2016-10-21 03:06:26.121641',5,64,1,1),(65,'yêu cầu','2016-10-21 03:06:26.129961',5,36,1,1),(66,'truy cập','2016-10-21 03:06:26.139031',5,72,1,1),(67,'suốt','2016-10-21 03:06:26.148105',5,73,1,1),(68,'giao tiếp qua điện thoại','2016-10-21 03:06:26.157018',5,74,1,1),(69,'ngành công nghiệp','2016-10-21 03:06:26.166129',5,75,1,1),(70,'nhu cầu','2016-10-21 03:06:26.174887',5,76,1,1),(71,'cá nhân','2016-10-21 03:06:26.183910',5,78,1,1),(72,'vùng','2016-10-21 03:06:26.194651',5,79,1,1),(73,'sự cải tạo','2016-10-21 03:06:26.203768',5,80,1,1),(74,'không thường','2016-10-21 03:06:26.213194',5,81,1,1),(75,'nhận ra','2016-10-21 03:06:26.224771',5,82,1,1),(76,'mục tiêu','2016-10-21 03:06:26.235544',5,83,1,1),(77,'có hiệu quả','2016-10-21 03:06:26.245316',5,84,1,1),(78,'đơn đăng ký','2016-10-21 03:06:26.256102',5,95,1,1),(79,'quá trình','2016-10-21 03:06:26.265271',5,96,1,1),(80,'người nộp đơn','2016-10-21 03:06:26.275953',5,97,1,1),(81,'cạnh tranh','2016-10-21 03:06:26.285231',5,98,1,1),(82,'vị trí','2016-10-21 03:06:26.294539',5,99,1,1),(83,'lựa chọn','2016-10-21 03:06:26.304111',5,100,1,1),(84,'nhà sản xuất','2016-10-21 03:06:26.313735',5,38,1,1),(85,'quá trình','2016-10-21 03:06:26.325351',5,96,1,1),(86,'lãng phí','2016-10-21 03:06:26.334531',5,106,1,1),(87,'năng lượng','2016-10-21 03:06:26.343700',5,107,1,1),(88,'nhà máy năng lượng','2016-10-21 03:06:26.352760',5,108,1,1),(89,'công nghệ','2016-10-21 03:06:26.362076',5,109,1,1),(90,'trước','2016-10-21 03:06:26.371170',5,110,1,1),(91,'kèm theo','2016-10-21 03:06:26.380418',5,111,1,1),(92,'xuất sắc','2016-10-21 03:06:26.389877',5,112,1,1),(93,'bảo vệ môi trường','2016-10-21 03:06:26.398822',5,113,1,1),(94,'kinh tế','2016-10-21 03:06:26.408966',5,114,1,1),(95,'buổi trình diễn','2016-10-21 03:06:26.418521',5,115,1,1),(96,'buổi trình diễn','2016-10-21 03:06:26.429001',5,115,1,1),(97,'hoạt động hệ thống','2016-10-21 03:06:26.438895',5,123,1,1),(98,'nâng cấp','2016-10-21 03:06:26.448696',5,124,1,1),(99,'đưa ra','2016-10-21 03:06:26.459374',5,138,1,1),(100,'tài chính','2016-10-21 03:06:26.469413',5,143,1,1),(101,'quầy lễ tân','2016-10-21 03:06:26.478519',5,181,1,1),(102,'nhân viên','2016-10-21 03:06:26.488224',5,182,1,1),(103,'yêu cầu','2016-10-21 03:06:26.497412',5,183,1,1),(104,'chứng minh thư','2016-10-21 03:06:26.509115',5,184,1,1),(105,'khách thăm quan','2016-10-21 03:06:26.519483',5,185,1,1),(106,'có hiệu lực','2016-10-21 03:06:26.528648',5,186,1,1),(107,'sổ','2016-10-21 03:06:26.539082',5,187,1,1),(108,'tổ chức','2016-10-21 03:06:26.549247',5,188,1,1),(109,'tắt','2016-10-21 03:06:26.562616',5,198,1,1),(110,'yêu cầu','2016-10-21 03:06:26.580604',5,199,1,1),(111,'đèn','2016-10-21 03:06:26.591241',5,200,1,1),(112,'điện','2016-10-21 03:06:26.601721',5,203,1,1),(113,'chọn','2016-10-21 03:06:26.611527',5,223,1,1),(114,'vinh dự','2016-10-21 03:06:26.623191',5,224,1,1),(115,'hỗ trợ','2016-10-21 03:06:26.636313',5,225,1,1),(116,'trung tâm y tế','2016-10-21 03:06:26.656344',5,226,1,1),(117,'trong suốt','2016-10-21 03:06:26.666751',5,227,1,1),(118,'thiên đường','2016-10-21 03:06:26.678476',5,246,1,1),(119,'thể thao dưới nước','2016-10-21 03:06:26.695509',5,247,1,1),(120,'khao sat','2016-10-22 14:32:49.982777',1,235,2,1),(121,'bàn thắng','2016-10-26 16:05:36.739341',10,83,1,1),(122,'moi quan he','2016-11-23 10:14:23.820375',1,26,3,1),(123,'toa nha','2016-11-23 10:21:08.754818',1,25,4,1),(124,'quang cao','2016-11-23 10:23:13.869863',1,173,5,1),(125,'khao sat','2016-11-23 10:24:55.534370',1,235,6,1),(126,'quang cao','2016-11-23 10:25:44.485811',1,173,7,1),(127,'quang cao','2016-11-23 10:32:58.858072',1,173,8,1);
/*!40000 ALTER TABLE `toeic_uservocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolesson`
--

DROP TABLE IF EXISTS `toeic_videolesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext,
  `url` varchar(200) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `level_id` int(11) NOT NULL,
  `videoType_id` int(11),
  PRIMARY KEY (`id`),
  KEY `toeic_video_level_id_4bbabf96_fk_toeic_level_id` (`level_id`),
  KEY `toeic_video_3e3775e8` (`videoType_id`),
  CONSTRAINT `toeic_video_level_id_4bbabf96_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`),
  CONSTRAINT `toeic_videoles_videoType_id_58f5692e_fk_toeic_videolessontype_id` FOREIGN KEY (`videoType_id`) REFERENCES `toeic_videolessontype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolesson`
--

LOCK TABLES `toeic_videolesson` WRITE;
/*!40000 ALTER TABLE `toeic_videolesson` DISABLE KEYS */;
INSERT INTO `toeic_videolesson` VALUES (1,'Doctor\'s appointment','','https://www.youtube.com/embed/wQYKE9UR1-o','2016-10-18 02:26:55.204692',1,1);
/*!40000 ALTER TABLE `toeic_videolesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolesson_dictations`
--

DROP TABLE IF EXISTS `toeic_videolesson_dictations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolesson_dictations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videolesson_id` int(11) NOT NULL,
  `dictation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_dictations_video_id_81a16313_uniq` (`videolesson_id`,`dictation_id`),
  KEY `toeic_video_dictatio_dictation_id_40e3fbe2_fk_toeic_dictation_id` (`dictation_id`),
  CONSTRAINT `toeic_video_dictatio_dictation_id_40e3fbe2_fk_toeic_dictation_id` FOREIGN KEY (`dictation_id`) REFERENCES `toeic_dictation` (`id`),
  CONSTRAINT `toeic_videolesso_videolesson_id_b1daae62_fk_toeic_videolesson_id` FOREIGN KEY (`videolesson_id`) REFERENCES `toeic_videolesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolesson_dictations`
--

LOCK TABLES `toeic_videolesson_dictations` WRITE;
/*!40000 ALTER TABLE `toeic_videolesson_dictations` DISABLE KEYS */;
INSERT INTO `toeic_videolesson_dictations` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6);
/*!40000 ALTER TABLE `toeic_videolesson_dictations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolesson_listeningtopics`
--

DROP TABLE IF EXISTS `toeic_videolesson_listeningtopics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolesson_listeningtopics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videolesson_id` int(11) NOT NULL,
  `listeningtopic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_listeningtopics_video_id_e45bfa43_uniq` (`videolesson_id`,`listeningtopic_id`),
  KEY `toeic_vide_listeningtopic_id_6a747a61_fk_toeic_listeningtopic_id` (`listeningtopic_id`),
  CONSTRAINT `toeic_vide_listeningtopic_id_6a747a61_fk_toeic_listeningtopic_id` FOREIGN KEY (`listeningtopic_id`) REFERENCES `toeic_listeningtopic` (`id`),
  CONSTRAINT `toeic_videolesso_videolesson_id_84575807_fk_toeic_videolesson_id` FOREIGN KEY (`videolesson_id`) REFERENCES `toeic_videolesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolesson_listeningtopics`
--

LOCK TABLES `toeic_videolesson_listeningtopics` WRITE;
/*!40000 ALTER TABLE `toeic_videolesson_listeningtopics` DISABLE KEYS */;
INSERT INTO `toeic_videolesson_listeningtopics` VALUES (1,1,1);
/*!40000 ALTER TABLE `toeic_videolesson_listeningtopics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolesson_questions`
--

DROP TABLE IF EXISTS `toeic_videolesson_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolesson_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videolesson_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_questions_video_id_5382963c_uniq` (`videolesson_id`,`question_id`),
  KEY `toeic_video_questions_question_id_f544d00b_fk_toeic_question_id` (`question_id`),
  CONSTRAINT `toeic_video_questions_question_id_f544d00b_fk_toeic_question_id` FOREIGN KEY (`question_id`) REFERENCES `toeic_question` (`id`),
  CONSTRAINT `toeic_videolesso_videolesson_id_fe72bc99_fk_toeic_videolesson_id` FOREIGN KEY (`videolesson_id`) REFERENCES `toeic_videolesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolesson_questions`
--

LOCK TABLES `toeic_videolesson_questions` WRITE;
/*!40000 ALTER TABLE `toeic_videolesson_questions` DISABLE KEYS */;
INSERT INTO `toeic_videolesson_questions` VALUES (4,1,41),(5,1,42),(6,1,43);
/*!40000 ALTER TABLE `toeic_videolesson_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolesson_topics`
--

DROP TABLE IF EXISTS `toeic_videolesson_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolesson_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videolesson_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_topics_video_id_a09773cc_uniq` (`videolesson_id`,`topic_id`),
  KEY `toeic_video_topics_topic_id_a7dd0fa7_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_video_topics_topic_id_a7dd0fa7_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`),
  CONSTRAINT `toeic_videolesso_videolesson_id_5ce96275_fk_toeic_videolesson_id` FOREIGN KEY (`videolesson_id`) REFERENCES `toeic_videolesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolesson_topics`
--

LOCK TABLES `toeic_videolesson_topics` WRITE;
/*!40000 ALTER TABLE `toeic_videolesson_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `toeic_videolesson_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolesson_vocabs`
--

DROP TABLE IF EXISTS `toeic_videolesson_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolesson_vocabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videolesson_id` int(11) NOT NULL,
  `vocab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_video_vocabs_video_id_94632b34_uniq` (`videolesson_id`,`vocab_id`),
  KEY `toeic_video_vocabs_vocab_id_8dcc8874_fk_toeic_vocab_id` (`vocab_id`),
  CONSTRAINT `toeic_video_vocabs_vocab_id_8dcc8874_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`),
  CONSTRAINT `toeic_videolesso_videolesson_id_ccb9d86e_fk_toeic_videolesson_id` FOREIGN KEY (`videolesson_id`) REFERENCES `toeic_videolesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolesson_vocabs`
--

LOCK TABLES `toeic_videolesson_vocabs` WRITE;
/*!40000 ALTER TABLE `toeic_videolesson_vocabs` DISABLE KEYS */;
INSERT INTO `toeic_videolesson_vocabs` VALUES (9,1,90),(1,1,251),(2,1,252),(3,1,253),(10,1,254),(11,1,255),(4,1,257),(5,1,258),(6,1,260),(7,1,261),(8,1,262),(12,1,263);
/*!40000 ALTER TABLE `toeic_videolesson_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_videolessontype`
--

DROP TABLE IF EXISTS `toeic_videolessontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_videolessontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_videolessontype`
--

LOCK TABLES `toeic_videolessontype` WRITE;
/*!40000 ALTER TABLE `toeic_videolessontype` DISABLE KEYS */;
INSERT INTO `toeic_videolessontype` VALUES (1,'Toeic part 3','2016-10-18 02:18:50.677504'),(2,'Toeic part 4','2016-10-18 02:19:00.764182'),(3,'Pronunciation','2016-10-25 02:32:15.983586');
/*!40000 ALTER TABLE `toeic_videolessontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_vocab`
--

DROP TABLE IF EXISTS `toeic_vocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_vocab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `definition` varchar(1000) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `past_tense` varchar(50) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `wordType_id` int(11) NOT NULL,
  `image` varchar(100),
  `pasticiple` varchar(50),
  `main_form` longtext,
  `other_form` varchar(200) DEFAULT NULL,
  `audio` varchar(100),
  `phonetica` varchar(50) DEFAULT NULL,
  `phoneticb` varchar(50),
  `engdefinition` varchar(1000),
  `audioa` varchar(100),
  PRIMARY KEY (`id`),
  KEY `toeic_vocab_wordType_id_1a277cde_fk_toeic_wordtype_id` (`wordType_id`),
  KEY `toeic_vocab_level_id_45c44089_fk_toeic_level_id` (`level_id`),
  CONSTRAINT `toeic_vocab_level_id_45c44089_fk_toeic_level_id` FOREIGN KEY (`level_id`) REFERENCES `toeic_level` (`id`),
  CONSTRAINT `toeic_vocab_wordType_id_1a277cde_fk_toeic_wordtype_id` FOREIGN KEY (`wordType_id`) REFERENCES `toeic_wordtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_vocab`
--

LOCK TABLES `toeic_vocab` WRITE;
/*!40000 ALTER TABLE `toeic_vocab` DISABLE KEYS */;
INSERT INTO `toeic_vocab` VALUES (1,'pool','bể bơi','2016-10-11 08:59:05.456000','',1,1,'images/vocabs/IMG_7328_800_567_80_s_c1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'semiconductor','chất bán dẫn','2016-10-11 12:17:43.870000','',2,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'expect','kì vọng','2016-10-11 12:47:41.269000','',1,2,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'recovery','hồi phục','2016-10-11 12:50:45.304000','',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'instructor','giảng viên','2016-10-11 13:37:34.825000','',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'apartment','căn hộ','2016-10-12 01:52:34.685000','',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'exterior','bên ngoài','2016-10-12 01:53:34.214000','',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'furnishing','nội thất`','2016-10-12 01:54:38.627000','',2,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'stylish','có phong cách, thời trang','2016-10-12 01:55:23.536000','',1,3,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'interior','bên trong','2016-10-12 01:55:50.545000','',1,1,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'perform','trình diễn','2016-10-12 02:01:58.490000','performed',1,2,'','performed',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'admit','thừa nhận','2016-10-12 02:03:05.282000','admitted',1,2,'','admitted',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'participate','tham dự','2016-10-12 02:16:04.870000','participated',1,2,'','participate','participate to','',NULL,NULL,NULL,NULL,NULL),(14,'public','công chúng','2016-10-12 02:16:56.762000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(15,'sales','bộ phận bán hàng, doanh số bán hàng','2016-10-12 02:21:29.711000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(16,'benefit','làm lợi cho','2016-10-12 02:22:40.384000','benefited',1,2,'','benefited','benefit something, someone','',NULL,NULL,NULL,NULL,NULL),(17,'fund','quỹ','2016-10-12 02:23:07.410000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(18,'scholarship','học bổng','2016-10-12 02:23:27.975000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(19,'regularly','thường xuyên','2016-10-12 03:17:33.953000','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(20,'deliver','đọc, đưa ra, vận chuyển đến','2016-10-12 03:18:28.803000','delivered',1,2,'','delivered','deliver something to someone','',NULL,NULL,NULL,NULL,NULL),(21,'speech','bài phát biểu','2016-10-12 03:18:58.089000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(22,'workshop','buổi tập huấn','2016-10-12 03:19:22.646000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(23,'customer satisfaction','sự hài lòng của khách hàng','2016-10-12 03:20:53.788000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(24,'strategy','chiến lược','2016-10-12 03:21:15.155000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(25,'building','sự xây dựng, tòa nhà','2016-10-12 03:22:00.796000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(26,'relationship','mối quan hệ','2016-10-12 03:23:53.409000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(27,'profitable','có lợi, có lãi','2016-10-12 03:24:20.748000','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(28,'attendee','người tham dự','2016-10-12 03:35:40.722000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(29,'required','yêu cầu','2016-10-12 03:36:14.632000','',1,2,'','','','',NULL,NULL,NULL,NULL,NULL),(30,'sample','mẫu','2016-10-12 03:38:48.975000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(31,'unfortunately','thật không may','2016-10-12 03:52:31.829000','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(32,'rise','tăng lên','2016-10-12 03:53:00.869000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(33,'popularity','sự nổi tiếng','2016-10-12 03:53:26.436000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(34,'used to','từng','2016-10-12 03:53:49.668000','',1,2,'','','','',NULL,NULL,NULL,NULL,NULL),(35,'as','vì','2016-10-12 05:00:53.551000','',1,6,'','','','',NULL,NULL,NULL,NULL,NULL),(36,'demand','nhu cầu','2016-10-12 05:02:53.040000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(37,'wheat','lúa mì','2016-10-12 05:03:19.902000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(38,'producer','nhà sản xuất','2016-10-12 05:07:39.404000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(39,'income','thu nhập','2016-10-12 05:08:14.778000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(40,'decline','giảm sút','2016-10-12 05:10:08.298000','declined',1,2,'','declined','something decline','',NULL,NULL,NULL,NULL,NULL),(41,'chief','sếp, trưởng, bếp trưởng','2016-10-12 05:15:52.853000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(42,'police','cảnh sát','2016-10-12 05:16:59.145000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(43,'secure','đảm bảo','2016-10-12 05:17:40.199000','secured',1,2,'','secured','secure something','',NULL,NULL,NULL,NULL,NULL),(44,'drug','dược phẩm, thuốc, chất gây nghiện','2016-10-12 05:19:38.658000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(45,'treatment','đối xử, xử lý, điều trị(y học)','2016-10-12 05:20:23.992000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(46,'initiative','biện pháp','2016-10-12 05:20:50.258000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(47,'state','nói, chỉ ra (rằng)','2016-10-12 05:40:50.908000','stated',1,2,'','stated','state + that + phrase','',NULL,NULL,NULL,NULL,NULL),(48,'committee','ủy bản','2016-10-12 05:41:20.953000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(49,'effective','hiệu quả','2016-10-12 05:41:47.262000','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(50,'adjustable','có thể điều chỉnh được','2016-10-12 05:45:04.393000','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(51,'consider','xem xét','2016-10-12 05:45:46.400000','considered',1,2,'','considered','consider something','',NULL,NULL,NULL,NULL,NULL),(52,'specific','cụ thể','2016-10-12 05:46:13.385000','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(53,'height','chiều cao','2016-10-12 05:46:36.766000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(54,'material','vật liệu, tài liệu','2016-10-12 05:47:19.588000','',NULL,1,'','','','',NULL,NULL,NULL,NULL,NULL),(55,'warranty','bảo hành','2016-10-12 05:47:45.860000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(56,'management','sự quản lý, ban quản lý','2016-10-12 07:37:49.679000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(57,'belief','niềm tin','2016-10-12 07:38:11.976000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(58,'direction','hướng, phương hướng, đường lối, chỉ dẫn','2016-10-12 07:38:45.995000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(59,'firm','vững chắc','2016-10-12 07:39:13.436000','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(60,'strategic','có tính chiến lược','2016-10-12 07:39:48.632000','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(61,'sound','đáng tin cậy','2016-10-12 07:40:52.780000','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(62,'exceed','vượt quá','2016-10-12 07:41:31.148000','exceeded',2,2,'','exceeded','exceed something','',NULL,NULL,NULL,NULL,NULL),(63,'shareholder','cổ đông','2016-10-12 07:42:04.492000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(64,'expectation','kì vọng','2016-10-12 07:42:29.920000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(65,'fill out a form','điền một mẫu','2016-10-12 08:06:23.204000','',2,5,'','','','',NULL,NULL,NULL,NULL,NULL),(66,'reserve','kho lưu trữ','2016-10-12 08:07:12.693000','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(67,'attractive','hấp dẫn','2016-10-12 08:12:35.915000','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(68,'attraction','sự hấp dẫn','2016-10-12 08:12:52.510000','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(69,'attract','hấp dẫn','2016-10-12 08:13:27.773000','attracted',1,2,'','attracted','attract something, someone','',NULL,NULL,NULL,NULL,NULL),(70,'accountable','chịu trách nhiệm','2016-10-13 03:51:23.314944','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(71,'qualified','có đủ khả năng (để làm công việc gì)','2016-10-13 03:52:42.751636','',2,3,'','','qualified for (the job,...)','',NULL,NULL,NULL,NULL,NULL),(72,'access','sự tiếp cận, sự được vào','2016-10-13 04:21:12.488999','',1,1,'','','have access to something (được vào, được tiếp cận)','',NULL,NULL,NULL,NULL,NULL),(73,'across','khắp','2016-10-13 04:22:02.757391','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(74,'telecommunication','ngành viễn thông','2016-10-13 04:22:31.973968','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(75,'industry','ngành, ngành công nghiệp','2016-10-13 04:22:56.503619','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(76,'need','nhu cầu','2016-10-13 06:53:11.573231','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(77,'assessment','sự đánh giá','2016-10-13 06:53:35.083309','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(78,'identify','xác định','2016-10-13 06:54:05.024790','identified',2,2,'','identified','identify something','',NULL,NULL,NULL,NULL,NULL),(79,'area','lĩnh vực, khu vực','2016-10-13 06:54:59.873586','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(80,'improvement','sự cải thiện','2016-10-13 06:55:28.797421','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(81,'ultimately','cuối cùng','2016-10-13 06:55:50.298657','',2,4,'','','','',NULL,NULL,NULL,NULL,NULL),(82,'realize','nhận ra, thực hiện','2016-10-13 06:56:56.024258','realized',1,2,'','realized','realize something','',NULL,NULL,NULL,NULL,NULL),(83,'goal','mục tiêu','2016-10-13 06:58:00.144560','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(84,'efficiently','một cách hiệu quả','2016-10-13 06:58:47.599136','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(85,'sales representative','đại diện bán hàng, người bán hàng','2016-10-13 07:05:25.342875','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(86,'keep','giữ','2016-10-13 07:05:53.831896','kept',1,2,'','kept','keep something','',NULL,NULL,NULL,NULL,NULL),(87,'record','bản ghi','2016-10-13 07:06:15.765691','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(88,'distribute','phân phối, phân phát','2016-10-13 07:07:57.029352','distributed',1,2,'','distributed','distribute something','',NULL,NULL,NULL,NULL,NULL),(89,'order','đơn đặt hàng, món hàng được đặt','2016-10-13 07:08:29.594071','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(90,'physician','bác sĩ','2016-10-13 07:09:04.334939','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(91,'clinic','phòng khám','2016-10-13 07:09:24.458393','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(92,'qualification','bằng cấp, kĩ năng','2016-10-13 07:10:29.126547','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(93,'guideline','sách hướng dẫn, sự hướng dẫn','2016-10-13 07:12:10.360448','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(94,'behavior','cách cư xử','2016-10-13 07:12:59.396134','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(95,'application','đơn xin (việc/học/giấy phép...), sự nộp đơn xin (việc/học/giấy phép...)','2016-10-13 07:18:25.193298','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(96,'process','quá trình','2016-10-13 07:20:25.313066','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(97,'applicant','ứng viên','2016-10-13 07:21:15.328642','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(98,'competitive','cạnh tranh','2016-10-13 07:23:39.828658','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(99,'position','vị trí','2016-10-13 07:24:00.787006','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(100,'select','chọn','2016-10-13 07:24:32.446002','selected',1,2,'','selected','select something','',NULL,NULL,NULL,NULL,NULL),(101,'install','lắp đắt, cài đặt','2016-10-14 02:24:42.403676','installed',1,2,'','installed','install something','',NULL,NULL,NULL,NULL,NULL),(102,'guest','khách hàng, khách','2016-10-14 02:28:32.842688','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(103,'locate','xác định vị trí','2016-10-14 02:29:33.208413','located',1,2,'','located','locate something, someone','',NULL,NULL,NULL,NULL,NULL),(104,'weather','thời tiết','2016-10-14 02:30:30.497342','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(105,'obtain','nhận được','2016-10-14 02:31:00.974942','obtained',1,2,'','obtained','obtain something','',NULL,NULL,NULL,NULL,NULL),(106,'waste','chất thải','2016-10-14 02:37:09.599073','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(107,'energy','năng lượng','2016-10-14 02:37:45.574591','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(108,'power plant','nhà máy điện','2016-10-14 02:38:48.694865','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(109,'technologically','một cách kĩ thuật cao','2016-10-14 02:39:31.905488','',2,4,'','','','',NULL,NULL,NULL,NULL,NULL),(110,'advanced','tiến bộ, nâng cao, tiên tiến','2016-10-14 02:40:37.433650','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(111,'achieve','đạt được','2016-10-14 02:41:39.407404','achieved',1,2,'','achieved','achieve something','',NULL,NULL,NULL,NULL,NULL),(112,'oustanding','tuyệt vời','2016-10-14 02:41:57.125746','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(113,'environmental','thuộc về môi trường','2016-10-14 02:42:25.392996','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(114,'economical','có tính kinh tế, tiết kiệm','2016-10-14 02:42:50.809766','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(115,'performance','sự trình diễn, sự thể hiện, hiệu quả, hiệu suất','2016-10-14 02:44:00.883467','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(116,'tractor','máy cày','2016-10-14 02:53:25.145742','',3,1,'','','','',NULL,NULL,NULL,NULL,NULL),(117,'frequently','thường xuyên','2016-10-14 02:54:02.749435','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(118,'harvest','mùa gặt','2016-10-14 02:55:15.658271','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(119,'during','trong suốt','2016-10-14 02:56:23.759806','',1,6,'','','','',NULL,NULL,NULL,NULL,NULL),(120,'rigidly','một cách cứng nhắc','2016-10-14 02:57:16.745310','',3,4,'','','','',NULL,NULL,NULL,NULL,NULL),(121,'approximately','khoảng','2016-10-14 02:58:30.210890','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(122,'advisable','được khuyến khích, nên được khuyến khích','2016-10-14 03:07:01.877261','',1,3,'','','something is advisable (cái gì đó nên được khuyên)','',NULL,NULL,NULL,NULL,NULL),(123,'operating system','hệ điều hành','2016-10-14 03:07:29.104520','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(124,'updated','được cập nhật','2016-10-14 03:07:49.873618','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(125,'optimal','tối ưu','2016-10-14 03:08:08.717124','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(126,'optimize','tối ưu hóa','2016-10-14 03:08:48.139726','optimized',2,2,'','optimized','optimize something','',NULL,NULL,NULL,NULL,NULL),(127,'optimization','sự tối ưu hóa','2016-10-14 03:12:19.731306','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(128,'attend','attended','2016-10-14 03:30:10.481532','attended',1,2,'','','attend some events','',NULL,NULL,NULL,NULL,NULL),(129,'exhibition','cuộc triển lãm','2016-10-14 03:30:45.941502','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(130,'handicraft','đồ thủ công','2016-10-14 03:31:06.439593','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(131,'museum','bảo tàng','2016-10-14 03:31:53.615654','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(132,'unknown','vô danh','2016-10-14 03:32:13.722813','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(133,'inspire','tạo cảm hứng','2016-10-14 03:32:50.279832','inspired',2,2,'','inspired','inspire someone','',NULL,NULL,NULL,NULL,NULL),(134,'quilts','đồ ghép vải','2016-10-14 03:33:16.786520','',3,1,'','','','',NULL,NULL,NULL,NULL,NULL),(135,'guide','quyển sách hướng dẫn, hướng dẫn viên, sự hướng dẫn','2016-10-14 03:34:40.941342','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(136,'creativity','sự sáng tạo','2016-10-14 03:37:31.714768','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(137,'portrait','chân dung','2016-10-14 03:38:15.584890','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(138,'present','giới thiệu','2016-10-14 03:45:46.974380','presented',1,2,'','presented','present something to somebody','present somebody with something',NULL,NULL,NULL,NULL,NULL),(139,'argument','cuộc tranh luận, lý lẽ, lý luận','2016-10-14 03:47:20.472801','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(140,'pricing policy','chính sách giá','2016-10-14 03:47:41.181214','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(141,'retailer','nhà bán lẻ','2016-10-14 03:47:59.569085','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(142,'ruin','sự tàn phá, sự đe dọa','2016-10-14 03:48:36.495916','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(143,'financial','thuộc về tài chính','2016-10-14 03:49:59.469062','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(144,'convince','thuyết phục','2016-10-14 03:51:12.689948','convinced',1,2,'','convinced','convince someone of something','convince someone that, convince someone to do sth',NULL,NULL,NULL,NULL,NULL),(145,'employer','chủ (người sở hữu việc kinh doanh)','2016-10-14 04:44:40.673744','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(146,'employee','nhân viên','2016-10-14 04:44:57.881937','',1,1,'','','','','audios/vocabs/employee_ox.mp3','/ɪmˈplɔɪiː/','/ɪmˈplɔɪiː/','',''),(147,'terminate','chấm dứt','2016-10-14 04:45:56.456496','terminated',2,2,'','terminated','terminate something','',NULL,NULL,NULL,NULL,NULL),(148,'contract','hợp đồng','2016-10-14 04:46:26.850752','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(149,'employment','sự lao động, công việc','2016-10-14 04:47:12.417472','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(150,'without','mà không, thiếu','2016-10-14 04:47:39.944546','',1,6,'','','','',NULL,NULL,NULL,NULL,NULL),(151,'notice','thông báo','2016-10-14 04:47:57.804939','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(152,'advance','từ trước, trước','2016-10-14 04:48:17.349998','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(153,'pay','trả tiền','2016-10-14 04:49:25.360768','paid',1,2,'','paid','pay for something','pay somebody something, pay somebody for something',NULL,NULL,NULL,NULL,NULL),(154,'sum','tổng, khoản','2016-10-14 04:49:54.707993','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(155,'equivalent','bằng với','2016-10-14 04:50:20.353771','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(156,'match','hợp với, bằng với','2016-10-14 04:52:08.261964','matched',1,2,'','matched','match something, somebody','',NULL,NULL,NULL,NULL,NULL),(157,'salary','tiền lương','2016-10-14 04:54:24.846108','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(158,'almost','gần như','2016-10-14 04:55:25.804380','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(159,'entitle','trao quyền lợi cho ai','2016-10-14 05:04:26.850289','entitled',3,2,'','entitled','entitle somebody to something','entitle somebody to do something',NULL,NULL,NULL,NULL,NULL),(160,'fair','công bằng','2016-10-14 05:05:05.979695','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(161,'equal','bằng nhau','2016-10-14 05:05:36.680046','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(162,'opportunity','cơ hội','2016-10-14 05:06:16.097343','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(163,'advancement','sự tiến bộ, tiến lên, thăng tiến','2016-10-14 05:07:07.402696','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(164,'transmit','chuyển','2016-10-14 05:08:31.631106','transmitted',2,2,'','transmitted','transmit something to somebody','',NULL,NULL,NULL,NULL,NULL),(165,'opening','phần mở đầu (của bộ phim,...), lễ khánh thành','2016-10-14 05:09:33.707695','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(166,'although','mặc dù','2016-10-14 05:15:43.939291','',1,7,'','','','',NULL,NULL,NULL,NULL,NULL),(167,'finding','phát hiện','2016-10-14 05:18:02.727319','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(168,'encouraging','đáng khích lệ','2016-10-14 05:19:11.472472','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(169,'further','hơn nữa, thêm vào','2016-10-14 05:20:23.721361','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(170,'research','nghiên cứu','2016-10-14 05:20:59.456112','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(171,'determine','xác định','2016-10-14 05:21:59.440443','',2,2,'','','','',NULL,NULL,NULL,NULL,NULL),(172,'effectiveness','sự hiệu quả','2016-10-14 05:22:23.413169','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(173,'advertising','quảng cáo','2016-10-14 05:22:45.094799','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(174,'campaign','chiến dịch','2016-10-14 05:23:11.600149','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(175,'initial','ban đầu','2016-10-14 05:23:35.796144','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(176,'limited','hạn chế','2016-10-14 05:24:08.003739','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(177,'a couple of','một vài','2016-10-14 05:48:03.616130','',1,5,'','','','',NULL,NULL,NULL,NULL,NULL),(178,'article','bài báo','2016-10-14 05:48:33.487685','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(179,'bold','bạo dạn, thẳng thắn, không sợ chịu rủi ro','2016-10-14 05:49:32.366687','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(180,'so far','cho đến thời điểm này','2016-10-14 05:50:09.469680','',1,4,'','','','',NULL,NULL,NULL,NULL,NULL),(181,'front desk','bàn lễ tân','2016-10-14 06:13:12.402598','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(182,'staff','nhân viên','2016-10-14 06:13:30.633125','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(183,'request','yêu cầu','2016-10-14 06:14:02.787913','requested',1,2,'','requested','request something','',NULL,NULL,NULL,NULL,NULL),(184,'photo identification','chứng minh thư','2016-10-14 06:16:57.891155','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(185,'visitor','khách, người đến thăm, khách du lịch','2016-10-14 06:17:30.238624','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(186,'valid','có hiệu lực, giá trị','2016-10-14 06:17:52.490968','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(187,'pass','thẻ ra vào','2016-10-14 06:18:35.886538','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(188,'hold','cầm','2016-10-14 06:19:22.138936','held',1,2,'','held','hold something','',NULL,NULL,NULL,NULL,NULL),(189,'corporation','tập đoàn','2016-10-14 06:36:53.711764','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(190,'allow','cho phép','2016-10-14 06:37:27.190640','allowed',1,2,'','allowed','allow somebody to do something','',NULL,NULL,NULL,NULL,NULL),(191,'provide','cung cấp','2016-10-14 06:38:42.834566','provided',1,2,'','provided','provide something, provide somebody with something','provide something for somebody',NULL,NULL,NULL,NULL,NULL),(192,'user','người dùng','2016-10-14 06:39:29.942375','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(193,'automate','tự động hóa','2016-10-14 06:39:56.588942','',2,2,'','','','',NULL,NULL,NULL,NULL,NULL),(194,'repetitive','lặp đi lặp lại','2016-10-14 06:40:22.864083','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(195,'show','cho xem','2016-10-14 06:42:19.803799','showed',1,2,'','shown','show something, show something to someone','show someone something',NULL,NULL,NULL,NULL,NULL),(196,'avoid','tránh','2016-10-14 06:45:37.485736','avoided',1,2,'','avoided','avoid something','',NULL,NULL,NULL,NULL,NULL),(197,'numerous','nhiều','2016-10-14 06:46:11.059671','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(198,'turn off','tắt','2016-10-14 07:09:47.933667','',1,2,'','','','',NULL,NULL,NULL,NULL,NULL),(199,'ask','hỏi, yêu cầu','2016-10-14 07:14:58.221336','asked',1,2,'','asked','ask something (ask a question)','as somebody to do something (ask her to leave)',NULL,NULL,NULL,NULL,NULL),(200,'light','bóng đèn','2016-10-14 07:15:43.102930','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(201,'vacant','bỏ trống','2016-10-14 07:16:23.572103','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(202,'conserve','tiết kiệm, bảo tồn, giữ gìn, để dành','2016-10-14 07:17:33.701215','conserved',1,2,'','conserved','conserve something','',NULL,NULL,NULL,NULL,NULL),(203,'electricity','điện','2016-10-14 07:17:56.918691','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(204,'sales figures','doanh số bán hàng','2016-10-14 07:31:09.322256','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(205,'figure','số liệu','2016-10-14 07:31:40.736920','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(206,'monthly','hàng tháng','2016-10-14 07:32:01.382357','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(207,'essential','cần thiết','2016-10-14 07:37:33.171835','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(208,'set','thiết lập, đặt vào','2016-10-14 07:38:56.505084','set',1,2,'','set','','',NULL,NULL,NULL,NULL,NULL),(209,'revenue','doanh thu','2016-10-14 07:44:05.413152','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(210,'destination','điểm đến','2016-10-14 07:47:24.268024','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(211,'variety','sự đa dạng','2016-10-14 07:47:49.115270','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(212,'analysis','sự phân tích','2016-10-14 07:48:31.329190','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(213,'extensively','một cách sâu sắc, kĩ lưỡng','2016-10-16 00:59:59.829454','',2,4,'','','','',NULL,NULL,NULL,NULL,NULL),(214,'researched','được nghiên cứu','2016-10-16 01:00:55.834297','',2,3,'','','','',NULL,NULL,NULL,NULL,NULL),(215,'study','sự học, ngành nghiên cứu, cuộc nghiên cứu','2016-10-16 01:02:05.268745','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(216,'receive','nhận','2016-10-16 01:03:59.417256','received',1,2,'','received','<p>receive something from somebody:&nbsp;He received an award for bravery from the police service.</p>','','audios/vocabs/receive_ox.mp3','/rɪˈsiːv/','/rɪˈsiːv/','get/accept something that is send to you',''),(217,'economic','liên quan đến ngành kinh tế, thương mại','2016-10-16 01:05:00.781209','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(218,'development','phát triển','2016-10-16 01:05:22.157236','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(219,'subsidy','tiền trợ giá(từ chính phủ, tổ chức...)','2016-10-16 01:06:49.214780','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(220,'state','bang, quốc gia, tình trạng','2016-10-16 01:07:48.201104','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(221,'local','địa phương','2016-10-16 01:09:19.792841','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(222,'goverment','chính quyền','2016-10-16 01:09:41.573538','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(223,'choose','chọn','2016-10-16 01:17:18.361023','chose',1,2,'','chosen','choose something, choose to do something','',NULL,NULL,NULL,NULL,NULL),(224,'honor','vinh danh','2016-10-16 01:19:11.445506','honored',2,2,'','honored','honor somebody','',NULL,NULL,NULL,NULL,NULL),(225,'support','sự hỗ trợ','2016-10-16 01:19:34.494316','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(226,'medical center','trung tâm ý tế','2016-10-16 01:20:12.300943','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(227,'throughout','khắp, trong suốt','2016-10-16 01:20:56.989002','',1,6,'','','','',NULL,NULL,NULL,NULL,NULL),(228,'experience','kinh nghiệm','2016-10-16 01:31:55.656513','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(229,'field','lĩnh vực, ngành','2016-10-16 01:32:42.088186','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(230,'international','quốc tế','2016-10-16 01:33:09.336471','',1,3,'','','','',NULL,NULL,NULL,NULL,NULL),(231,'recognize','nhận ra','2016-10-16 01:33:43.114385','',1,2,'','','','',NULL,NULL,NULL,NULL,NULL),(232,'merger','sát nhập','2016-10-16 01:34:02.476819','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(233,'acquisition','mua lại (các công ty mua lại nhau)','2016-10-16 01:34:35.560365','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(234,'consultant','cố vấn','2016-10-16 01:34:58.488433','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(235,'survey','khảo sát','2016-10-16 02:13:35.859579','',1,2,'','','survey  someone, survey something','',NULL,NULL,NULL,NULL,NULL),(236,'understand','hiểu','2016-10-16 02:14:28.783654','understood',1,2,'','understood','','',NULL,NULL,NULL,NULL,NULL),(237,'importance','tầm quan trọng','2016-10-16 02:14:48.981908','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(238,'healthcare','y tế','2016-10-16 02:15:18.915613','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(239,'reform','sự cải cách','2016-10-16 02:15:41.003645','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(240,'policy','chính sách','2016-10-16 02:16:14.558360','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(241,'unfamiliar','không quen thuộc','2016-10-16 02:16:35.877810','',2,3,'','','unfamiliar with','',NULL,NULL,NULL,NULL,NULL),(242,'detail','chi tiết','2016-10-16 02:17:00.783932','',1,1,'','','','',NULL,NULL,NULL,NULL,NULL),(243,'filled','đầy','2016-10-16 02:17:54.507537','',1,3,'','','filled with','',NULL,NULL,NULL,NULL,NULL),(244,'difficult','khó khăn','2016-10-16 02:19:08.235512','',1,3,'','','difficult to do something','',NULL,NULL,NULL,NULL,NULL),(245,'undeniable','không thể chối cãi','2016-10-16 02:45:01.591418','',2,1,'','','','',NULL,NULL,NULL,NULL,NULL),(246,'paradise','thiên đường','2016-10-16 02:45:16.831388','',1,1,'','','','','audios/vocabs/paradise.wav','/ˈpærədaɪs/','/ˈpærədaɪs/',NULL,NULL),(247,'water sports','các môn thể thao dưới nước','2016-10-16 02:45:42.229200','',1,1,'','','','','audios/vocabs/watersports.wav','','',NULL,NULL),(248,'hiking','leo núi','2016-10-16 02:45:56.487251','',1,1,'','','','','audios/vocabs/hiking_lidNFVA.wav','/ˈhaɪkɪŋ/','/ˈhaɪkɪŋ/',NULL,NULL),(249,'enthusiast','người yêu thích','2016-10-16 02:50:59.791517','',1,1,'','','','','audios/vocabs/enthusiast.wav','/ɪnˈθuːziæst/','/ɪnˈθjuːziæst/',NULL,NULL),(250,'enthusiastic','yêu thích','2016-10-16 02:51:21.959494','',1,3,'','','','','audios/vocabs/enthusiastic.wav','/ɪnˌθuːziˈæstɪk/','/ɪnˌθjuːziˈæstɪk/','',NULL),(251,'assistance','hỗ trợ','2016-10-18 02:24:22.223296','',1,1,'','','','','','','',NULL,NULL),(252,'aggravating','ngày càng trầm trọng','2016-10-18 02:25:46.604603','',2,3,'','','','','','','',NULL,NULL),(253,'headache','cơn đau đầu','2016-10-18 02:26:25.295396','',1,1,'','','','','','','',NULL,NULL),(254,'recommend','khuyên','2016-10-18 02:29:25.091874','recommended',1,2,'','recommended','recommend someone','','','','',NULL,NULL),(255,'patient','bệnh nhân','2016-10-18 02:30:22.480446','',1,1,'','','','','','','',NULL,NULL),(256,'patient','bệnh nhân','2016-10-18 02:30:25.299644','',1,1,'','','','','','','',NULL,NULL),(257,'on short notice','ngay lập tức, không cần báo trước lâu,','2016-10-18 02:31:19.077830','',2,5,'','','','','','','',NULL,NULL),(258,'catch a flight','bắt một chuyến bay, bay','2016-10-18 02:32:30.433933','',1,2,'','','','','','','',NULL,NULL),(260,'as a matter of fact','thật vậy','2016-10-18 02:33:43.771297','',1,5,'','','','','','','',NULL,NULL),(261,'acquaintance','người quen','2016-10-18 02:34:27.504488','',2,1,'','','','','','','',NULL,NULL),(262,'doctor','bác sĩ','2016-10-18 02:34:57.084254','',1,1,'','','','','','','',NULL,NULL),(263,'squeeze','nhét, ấn, vắt','2016-10-18 03:01:12.952949','',3,2,'','','','','','','',NULL,NULL),(264,'fish','cá','2016-10-25 03:38:38.211688','',1,1,'','','','','audios/vocabs/fish_audio-cutter.com.wav','','/fɪʃ/','',''),(265,'gym','phòng tập thể hình, tập thể hình','2016-10-25 03:39:44.265083','',1,1,'','','','','audios/vocabs/gym_audio-cutter.com.wav','','/gɪm/','',''),(266,'six','sáu','2016-10-25 03:40:21.784399','',1,1,'','','','','audios/vocabs/six_audio-cutter.com.wav','','/sɪks/','',''),(267,'begin','bắt đầu','2016-10-25 03:41:05.514111','',1,2,'','','','','audios/vocabs/begin.wav','','/bɪˈɡɪn/',NULL,NULL),(268,'minute','phút','2016-10-25 03:41:30.064268','',1,1,'','','','','audios/vocabs/minute_audio-cutter.com.wav','','ˈmɪnɪt/','',''),(269,'dinner','bữa tối','2016-10-25 03:41:58.666861','',1,1,'','','','','audios/vocabs/dinner_audio-cutter.com.wav','','/ˈdɪnər/','',''),(270,'chicken','gà','2016-10-25 03:42:42.865698','',1,1,'','','','','audios/vocabs/chicken_audio-cutter.com.wav','','/ˈtʃɪkɪn/','',''),(271,'fifty','năm mươi','2016-10-25 03:43:49.129327','',1,1,'','','','','audios/vocabs/fifty_audio-cutter.com.wav','','/ˈfɪfti/','',''),(272,'Miss Smith is thin.','Cô Smith gầy.','2016-10-25 03:44:33.296658','',1,8,'','','','','audios/vocabs/misssmith.wav','','/mɪs smɪθ ɪz θɪn/',NULL,NULL),(273,'Jim is in the picture.','Jim ở trong ảnh.','2016-10-25 03:45:15.594948','',1,8,'','','','','audios/vocabs/jimisin.wav','','/dʒɪm ɪz ɪn ðə ˈpɪktʃər/',NULL,NULL),(275,'Bring chicken for dinner.','Mang gà cho bữa tối.','2016-10-25 03:51:27.445867','',1,8,'','','','','audios/vocabs/bringchickenfordinner.wav','','/brɪŋ ˈtʃɪkɪn fər ˈdɪnər/',NULL,NULL),(278,'Listen to this ridiculous list.','Hãy nghe cái danh sách ngớ ngẩn này','2016-10-25 03:52:55.151067','',2,8,'','','','','audios/vocabs/listentothis.wav','','/ˈlɪsn tə ðɪs rɪˈdɪkjələs lɪst/',NULL,NULL),(279,'The pretty women are busy in the gym.','Người phụ nữ xinh đẹp bận rộn trong phòng tập gym','2016-10-25 03:53:32.611443','',1,8,'','','','','audios/vocabs/theprettywoman.wav','','/ðə ˈprɪti ˈwɪmɪn ər ˈbɪzi ɪn ðə gɪm/',NULL,NULL),(280,'meet','gặp','2016-11-15 08:48:39.798363','met',1,2,'','met','<p>meet someone: gặp ai đ&oacute;</p>','','audios/vocabs/meet_audio-cutter.com.mp3','','/miːt/','',NULL),(281,'nationality','quốc tịch','2016-11-18 02:25:05.743115','',1,1,'','','','','audios/vocabs/nationality_audio-cutter.com.mp3','','/ˌnæʃəˈnæləti/','',NULL),(282,'Vietnamese','người việt nam','2016-11-18 03:02:46.276388','',1,3,'images/vocabs/vietnamese.jpg','','','','audios/vocabs/vietnamese_audio-cutter.com.mp3','','/ˌvjetnəˈmiːz/','',NULL),(283,'Japanese','người Nhật','2016-11-18 03:22:57.531743','',1,3,'images/vocabs/japanese.jpg','','','','audios/vocabs/japanese_audio-cutter.com.mp3','','/ˌdʒæpəˈniːz/','',NULL),(285,'am (Be)','động từ To Be chia với ngôi I','2016-11-18 03:59:07.822295','',1,2,'','','','','audios/vocabs/am_audio-cutter.com.mp3','/əm/; strong /æm/','/əm/; strong /æm/','',''),(286,'is (Be)','động từ To Be chia với ngôi He, She, It','2016-11-18 04:47:20.524917','was',1,5,'','been','','','audios/vocabs/is_audio-cutter.com.mp3','','/iz/','',''),(287,'are (Be)','động từ To Be chia với ngôi You, We, They','2016-11-18 04:48:44.738742','were',1,2,'','','','','audios/vocabs/are_audio-cutter.com.mp3','','/ɑː(r)/','',''),(288,'I','tôi','2016-11-18 04:51:05.292443','',1,9,'','','','','audios/vocabs/i_audio-cutter.com.mp3','','/aɪ/','',''),(289,'you','bạn','2016-11-18 04:52:01.447094','',1,9,'','','','','audios/vocabs/you_audio-cutter.com.mp3','','/juː/','','audios/vocabs/youam_audio-cutter.com.mp3'),(290,'he','anh ấy','2016-11-18 04:53:04.817540','',1,9,'','','','','audios/vocabs/he_audio-cutter.com.mp3','/hiː/','/hiː/','',''),(291,'she','cô ấy','2016-11-18 04:54:08.367764','',1,9,'','','','','audios/vocabs/she_audio-cutter.com.mp3','/ʃiː/','/ʃiː/','',''),(292,'it','nó','2016-11-18 04:54:46.611515','',1,9,'','','','','audios/vocabs/it_audio-cutter.com.mp3','','/ɪt/','',''),(293,'we','chúng tôi','2016-11-18 04:55:32.481587','',1,9,'','','','','audios/vocabs/we_audio-cutter.com.mp3','','/wiː/','',''),(294,'they','họ','2016-11-18 04:56:15.416064','',1,9,'','','','','audios/vocabs/they_audio-cutter.com.mp3','/ðeɪ/','/ðeɪ/','','audios/vocabs/theyam_audio-cutter.com.mp3'),(295,'British','người Anh','2016-11-18 04:57:10.852805','',1,3,'','','','','audios/vocabs/british_audio-cutter.com.mp3','/ˈbrɪtɪʃ/','/ˈbrɪtɪʃ/','','audios/vocabs/britisham_audio-cutter.com.mp3'),(296,'American','người Mỹ','2016-11-18 04:57:58.434603','',1,3,'','','','','audios/vocabs/american_audio-cutter.com.mp3','','/əˈmerɪkən/','',''),(297,'French','người Pháp','2016-11-23 06:41:39.528077','',1,3,'','','','','','/frentʃ/','/frentʃ/','',''),(298,'Spanish','người Bồ Đào Nha','2016-11-23 06:42:44.495931','',NULL,3,'','','','','audios/vocabs/spanishbr.mp3','/ˈspænɪʃ/','/ˈspænɪʃ/','','audios/vocabs/spanisham.mp3'),(299,'Australian','người Úc','2016-11-23 07:14:33.944240','',1,3,'','','','','audios/vocabs/australianbr.mp3','/ɔːˈstreɪliən/','/ɒˈstreɪliən/','','audios/vocabs/autralianam.mp3'),(300,'German','người Đức','2016-11-23 07:22:25.076875','',1,3,'','','','','audios/vocabs/germanbr.mp3','/ˈdʒɜːrmən/','/ˈdʒɜːmən/','','audios/vocabs/germanam.mp3'),(301,'Canadian','người Canada','2016-11-23 07:23:09.147245','',1,3,'','','','','audios/vocabs/canadianbr.mp3','/kəˈneɪdiən/','/kəˈneɪdiən/','','audios/vocabs/canadianam.mp3'),(302,'twelve','mười hai','2016-11-25 13:46:19.931813','',1,1,'','','','','audios/vocabs/12.mp3','/twelv/','/twelv/','','audios/vocabs/twelve_salli.mp3'),(303,'one','một','2016-11-25 13:47:30.750222','',1,1,'','','','','audios/vocabs/one_amy.mp3','/wʌn/','/wʌn/','','audios/vocabs/one_salli.mp3'),(304,'two','hai','2016-11-25 13:48:17.598590','',1,1,'','','','','audios/vocabs/2amy.mp3','/tuː/','/tuː/','','audios/vocabs/two_salli.mp3'),(305,'three','ba (3)','2016-11-25 13:49:06.136171','',1,1,'','','','','audios/vocabs/3amy.mp3','/θriː/','/θriː/','','audios/vocabs/three_salli.mp3'),(306,'four','bốn','2016-11-25 13:50:15.164346','',1,1,'','','','','audios/vocabs/4amy.mp3','fɔːr/','/fɔː(r)/','','audios/vocabs/four_salli.mp3'),(307,'five','năm (5)','2016-11-25 13:51:07.444959','',1,1,'','','','','audios/vocabs/5amy.mp3','/faɪv/','/faɪv/','','audios/vocabs/five_salli.mp3'),(308,'six','sáu','2016-11-25 13:51:52.514207','',1,1,'','','','','audios/vocabs/6amy.mp3','/sɪks/','/sɪks/','','audios/vocabs/six_salli.mp3'),(309,'seven','bảy','2016-11-25 13:52:35.188378','',1,1,'','','','','audios/vocabs/7amy.mp3','/ˈsevn/','/ˈsevn/','','audios/vocabs/seven_salli.mp3'),(310,'eight','tám','2016-11-25 13:53:21.758676','',1,1,'','','','','audios/vocabs/8amy.mp3','/eɪt/','/eɪt/','','audios/vocabs/eight_salli.mp3'),(311,'nine','chín','2016-11-25 13:54:16.417776','',1,1,'','','','','audios/vocabs/9amy.mp3','/naɪn/','/naɪn/','','audios/vocabs/nine_salli.mp3'),(312,'ten','mười','2016-11-25 13:55:25.627870','',1,1,'','','','','audios/vocabs/tenamy.mp3','/ten/','/ten/','','audios/vocabs/ten_salli.mp3'),(313,'eleven','mười một','2016-11-25 13:56:15.723213','',1,1,'','','','','audios/vocabs/11amy.mp3','/ɪˈlevn/','/ɪˈlevn/','','audios/vocabs/eleven_salli.mp3'),(314,'thirteen','mười ba','2016-11-25 13:58:08.507040','',1,1,'','','','','audios/vocabs/13amy.mp3','/ˈθɜːti/','/ˈθɜːti/','','audios/vocabs/thirteen_salli.mp3'),(315,'fourteen','mười bốn','2016-11-25 13:59:04.695791','',1,1,'','','','','audios/vocabs/14amy.mp3','ˌfɔːˈtiːn/','ˌfɔːˈtiːn/','','audios/vocabs/fourteen_salli.mp3'),(316,'fifteen','mười lăm','2016-11-25 13:59:54.093007','',1,1,'','','','','audios/vocabs/15amy.mp3','/ˌfɪfˈtiːn/','/ˌfɪfˈtiːn/','','audios/vocabs/fifteen_salli.mp3'),(317,'sixteen','mười sáu','2016-11-25 14:04:53.823906','',1,1,'','','','','audios/vocabs/sixteen_salli1.mp3','/ˌsɪksˈtiːn/','/ˌsɪksˈtiːn/','','audios/vocabs/sixteen_salli.mp3'),(318,'seventeen','mười bảy','2016-11-25 14:05:46.500171','',1,1,'','','','','audios/vocabs/17amy.mp3','/ˌsevnˈtiːn/','/ˌsevnˈtiːn/','','audios/vocabs/seventeen_salli.mp3'),(319,'eighteen','mười tám','2016-11-25 14:06:34.880080','',1,1,'','','','','audios/vocabs/18.mp3','/ˌeɪˈtiːn/','/ˌeɪˈtiːn/','','audios/vocabs/eighteen_salli.mp3'),(320,'nineteen','mười chín','2016-11-25 14:07:22.423033','',1,1,'','','','','audios/vocabs/19amy.mp3','/ˌnaɪnˈtiːn/','/ˌnaɪnˈtiːn/','','audios/vocabs/nineteen_salli.mp3'),(321,'twenty','hai mươi','2016-11-25 14:08:05.441249','',1,3,'','','','','audios/vocabs/20amy.mp3','/ˈtwenti/','/ˈtwenti/','','audios/vocabs/twenty_salli.mp3'),(322,'scene','cảnh, hiện trường','2016-11-26 03:34:21.306318','',1,1,'','','','','audios/vocabs/scene_ox.mp3','/siːn/','/siːn/','a part of a film/movie, the place where something happens',''),(323,'complete','hoàn toàn','2016-11-26 03:36:44.025761','',1,3,'','','','','audios/vocabs/complete_ox.mp3','/kəmˈpliːt/','/kəmˈpliːt/','total, whole, including all the parts',''),(324,'tea','trà','2016-11-26 03:37:45.246133','',1,1,'','','','','audios/vocabs/tea_ox.mp3','/tiː/','/tiː/','',''),(325,'meal','bữa ăn','2016-11-26 03:40:05.538528','',1,1,'','','<p>Eat between meals: ăn giữa c&aacute;c bữa ăn.</p>','go out for a meal: đi ăn ngoài','','/miːl/','/miːl/','an occasion when people sit down to eat food, especially breakfast, lunch or dinner',''),(326,'meat','thịt','2016-11-26 03:41:13.468458','',1,1,'','','','','audios/vocabs/meat_ox.mp3','/miːt/','/miːt/','the flesh of an animal or a bird eaten as food',''),(327,'heat','nhiệt','2016-11-26 03:42:33.045790','',1,1,'','','','','audios/vocabs/heat_ox.mp3','/hiːt/','/hiːt/','the quality of being hot',''),(328,'cheap','rẻ','2016-11-26 03:43:29.312866','',1,3,'','','','','audios/vocabs/cheap_ox.mp3','/tʃiːp/','/tʃiːp/','costing little money or less money than you expected',''),(329,'free','miễn phí, tự do, không bị chặn','2016-11-26 07:51:00.573347','',1,3,'','','<p>free ticket: v&eacute; miễn ph&iacute;</p>\r\n<p>free to go: thoải m&aacute;i đi lại&nbsp;</p>\r\n<p>free speech: tự do ng&ocirc;n luận</p>\r\n<p>free man: người tự do</p>\r\n<p>&nbsp;</p>','','audios/vocabs/free_ox.mp3','/friː/','/friː/','no payment, costing nothing, not controlled, not blocked',''),(330,'agree','đồng ý','2016-11-27 18:06:20.144797','agreed',1,2,'','agreed','<p>agree (with somebody) (about/on something) He agreed with them about the need for change.&nbsp;</p>\r\n<p>agree with something I agree with her analysis of the situation.</p>\r\n<p>agree (that)&hellip; We agreed (that) the proposal was a good one.</p>','','audios/vocabs/agree_ox.mp3','/əˈɡriː/','/əˈɡriː/','say yes, share opinion',''),(331,'receipt','hóa đơn','2016-11-28 01:23:38.565302','',1,1,'','','<p>Can I have a receipt, please?</p>','','audios/vocabs/receipt_ox.mp3','/rɪˈsiːt/','/rɪˈsiːt/','a piece of paper that shows that goods or services have been paid for',''),(332,'chief','trưởng (cảnh sát trưởng, bếp trưởng...)','2016-11-28 01:31:51.593285','',1,1,'','','<p>army/industry/police chiefs</p>','','audios/vocabs/cheif_ox.mp3','/tʃiːf/','/tʃiːf/','a person with a high rank or the highest rank in a company or an organization',''),(333,'men','những người đàn ông','2016-11-28 02:55:35.545559','',1,1,'','','','','audios/vocabs/men_õ.mp3','/men/','/men/','plural of man','audios/vocabs/men_ox_am.mp3'),(334,'head','đầu, người đứng đầu','2016-11-28 02:59:12.599597','',1,1,'','','<p><em><span style=\"color: #333333; font-family: Georgia, serif;\"><span style=\"font-size: 15px;\">&nbsp;</span></span></em></p>','','audios/vocabs/head_ox.mp3','/hed/','/hed/','part of body, the person in charge of a group of people or an organization','audios/vocabs/head_ox_am.mp3'),(335,'pen','bút mực','2016-11-28 03:00:29.230658','',1,1,'','','','','audios/vocabs/pen_ox.mp3','/pen/','/pen/','used for writing with ink','audios/vocabs/pen_ox_am.mp3'),(336,'hell','địa ngục','2016-11-28 03:10:57.394684','',1,1,'','','<p>gp through hell:&nbsp;a very unpleasant experience</p>','','audios/vocabs/hell_ox.mp3','/hel/','/hel/','home of devils','audios/vocabs/hell_ox_am.mp3'),(337,'gel','chất gel','2016-11-28 03:12:36.218723','',1,1,'','','','','audios/vocabs/gel_ox.mp3','/dʒel/','/dʒel/','a thick substance like jelly,  used in products for the hair or skin','audios/vocabs/gel_ox_am.mp3'),(338,'dead','chết','2016-11-28 03:14:03.927917','',1,3,'','','<p>a dead person/animal</p>\r\n<p>someone is dead</p>','','audios/vocabs/dead_ox.mp3','/ded/','/ded/','not alive','audios/vocabs/dead_ox_am.mp3'),(339,'shell','vỏ sò','2016-11-28 03:16:42.896567','',1,1,'images/vocabs/sea-shell.jpg','','','','audios/vocabs/shell_ox.mp3','/ʃel/','/ʃel/','','audios/vocabs/shel_ox_am.mp3'),(340,'many','nhiều','2016-11-28 03:20:38.224767','',1,9,'','','<p>In negative sentence:&nbsp;We don\'t have many copies left.&nbsp;There are too many mistakes in this essay.</p>\r\n<p>In question:&nbsp;How many children do you have?</p>','','audios/vocabs/many_ox.mp3','/ˈmeni/','/ˈmeni/','a large number of','audios/vocabs/many_ox_am.mp3'),(341,'anyone','bất cứ ai','2016-11-28 03:24:09.476897','',1,9,'','','<p>The exercises are so simple that almost anyone can do them.</p>\r\n<p>Used instead of someone in negative sentences and in questions:&nbsp;Hardly anyone came. Is anyone there?</p>','','audios/vocabs/anyone_ox.mp3','/ˈeniwʌn/','/ˈeniwʌn/','any person at all; it does not matter who','audios/vocabs/anyone_ox_am.mp3'),(342,'send','gửi','2016-11-28 03:27:08.285041','sent',1,2,'','sent','<p>send something: to send a letter/package/cheque/fax/email.</p>\r\n<p>send something to somebody:&nbsp;Have you sent a postcard to your mother yet?</p>\r\n<p>send somebody something Have you sent your mother a postcard yet?</p>','','audios/vocabs/send_ox.mp3','/send/','/send/','to make something go or be taken to a place, especially by post/mail, email,...','audios/vocabs/send_ox_am.mp3'),(343,'get','nhận được, lấy được','2016-11-28 03:28:12.657055','got',1,2,'','got','','','audios/vocabs/get_ox.mp3','/ɡet/','/ɡet/','to receive something','audios/vocabs/get_ox_am.mp3'),(344,'member','thành viên','2016-11-28 03:31:07.467965','',1,1,'','','<p>a member of staff/society/the family</p>\r\n<p>an active member of the church</p>','','audios/vocabs/member_ox.mp3','/ˈmembə(r)/','/ˈmembə(r)/','a person, an animal or a plant that belongs to a particular group','audios/vocabs/member_ox_am.mp3'),(345,'heavy','nặng','2016-11-28 03:32:24.240807','',1,3,'','','','','audios/vocabs/heavy_ox.mp3','/ˈhevi/','/ˈhevi/','weighing a lot','audios/vocabs/heavy_ox_a.mp3'),(346,'cat','mèo','2016-11-28 04:33:12.301074','',1,1,'images/vocabs/cat-adult-landing-hero.jpg','','','','audios/vocabs/cat_ox.mp3','/kæt','/kæt/','a small animal with soft fur','audios/vocabs/cat_ox_am.mp3'),(347,'sad','buồn','2016-11-28 04:34:05.270527','',1,3,'','','','','audios/vocabs/sad_ox.mp3','/sæd/','/sæd/','unhappy','audios/vocabs/sad_ox_am.mp3'),(348,'fat','béo','2016-11-28 04:35:03.847651','',1,3,'','','','','audios/vocabs/fat_ox.mp3','/fæt','/fæt/','having too much flesh and weighing too much','audios/vocabs/fat_ox_am.mp3'),(350,'fan','cái quạt, fan ham mộ','2016-11-28 04:38:08.829775','',1,1,'images/vocabs/fans.jpg','','<p>movie fans: fan phim ảnh</p>\r\n<p>switch on the electric fan: bật quạt điện</p>\r\n<p>&nbsp;</p>','','audios/vocabs/fan_ox.mp3','/fæn/','/fæn/','a machine with blades that go round to create a current of air, a person who admires somebody/something','audios/vocabs/fan_ox_am.mp3'),(351,'dam','đập nước','2016-11-28 04:40:08.860318','',1,1,'images/vocabs/dam.jpg','','','','audios/vocabs/dam_ox.mp3','/dæm/','/dæm/','a barrier that is built across a river in order to stop the water from flowing','audios/vocabs/dam_ox_am.mp3'),(352,'captain','thuyền trưởng, cơ trưởng, đội trưởng','2016-11-28 04:41:58.551653','',1,1,'','','','','audios/vocabs/captain_ox.mp3','/ˈkæptɪn/','/ˈkæptɪn/','he person in charge of a ship, the leader of a group','audios/vocabs/captain_ox_am.mp3'),(353,'latter','cái thứ hai, cái sau, gần đây','2016-11-28 04:45:21.452655','',1,3,'','','<p>He chose the latter option. Anh ấy chọn phương an sau (phương &aacute;n hai).</p>\r\n<p>In latter years, the population has grown a lot here. Trong c&aacute;c năm gần đ&acirc;y, d&acirc;n số đ&atilde; tăng l&ecirc;n rất nhiều ở đ&acirc;y</p>','','audios/vocabs/latter_ox.mp3','/ˈlætər/','/ˈlætər/','used to refer to the second of two things or people, recent','audios/vocabs/latter_ox_am.mp3'),(354,'manner','thái độ, cách thức','2016-11-28 04:49:07.841625','',1,1,'','','<p>His manner was polite. Th&aacute;i độ của anh ấy lịch sự.</p>','','audios/vocabs/manner_ox.mp3','/ˈmænər/','ˈmænə(r)/','the way that something is done or happens','audios/vocabs/manner_ox_am.mp3'),(355,'can\'t','không thể','2016-11-28 04:51:09.749340','couldn\'t',1,2,'','','<p>I can\'t do it. T&ocirc;i kh&ocirc;ng thể l&agrave;m thế được</p>','','audios/vocabs/cant_ox.mp3','/kænt/','/kɑːnt/','cannot','audios/vocabs/cant_ox_am.mp3'),(356,'cup','cốc','2016-11-28 05:45:10.100656','',1,1,'','','','','audios/vocabs/cup_õ.mp3','/kʌp/','/kʌp/','a small container used for drinking tea, coffee,...','audios/vocabs/cup_ox_am.mp3'),(357,'cut','cắt','2016-11-28 05:47:34.240703','cut',1,2,'','cut','<p>&nbsp;</p>\r\n<p>cut something: cut a paper -&gt; cắt một tờ giấy</p>\r\n<p>cut yourself: tự cắt/ l&agrave;m bị thương</p>\r\n<p>&nbsp;</p>','','audios/vocabs/cut_ox.mp3','/kʌt/','/kʌt/','to make an opening or a wound in something','audios/vocabs/cut_ox_am.mp3'),(358,'but','nhưng','2016-11-28 05:49:08.057162','',1,7,'','','<p>His mother won\'t be there, but his father might. -&gt; Mẹ anh ấy sẽ kh&ocirc;ng ở đ&acirc;y, nhưng bố anh ấy th&igrave; c&oacute; thể.</p>','','audios/vocabs/but_ox.mp3','/bʌt/','/bʌt/','however; despite this','audios/vocabs/but_ox_am.mp3'),(359,'shut','đóng','2016-11-28 07:50:23.755653','shut',1,2,'','shut','<p>shut the door -&gt; đ&oacute;ng cửa</p>','','audios/vocabs/shut_ox.mp3','/ʃʌt/','/ʃʌt/','make something close','audios/vocabs/shut_ox_am.mp3'),(360,'come','đến','2016-11-28 07:52:43.258132','came',1,2,'','come','<p>come to work -&gt; đi đến chỗ l&agrave;m</p>\r\n<p>come home -&gt; về nh&agrave;</p>\r\n<p>come into the room -&gt; đi v&agrave;o ph&ograve;ng</p>\r\n<p>come to my house -&gt; đến nh&agrave; t&ocirc;i&nbsp;</p>\r\n<p>&nbsp;</p>','','audios/vocabs/come_ox.mp3','/kʌm/','/kʌm/','to arrive at or reach a place','audios/vocabs/come_ox_am.mp3'),(361,'some','một vài','2016-11-28 08:47:09.536456','',1,10,'','','<p>There\'s still some wine in the bottle. Vẫn c&ograve;n rượu vang trong chai.</p>','','','/sʌm/','/sʌm/','a number of',''),(362,'dove','chim bồ câu','2016-11-28 08:48:11.879380','',1,1,'','','','','audios/vocabs/dove_ox.mp3','/dʌv/','/dʌv/','a bird of the pigeon family.','audios/vocabs/dove_ox_am.mp3'),(363,'honey','mật ong','2016-11-28 08:49:07.235553','',1,1,'','','','','audios/vocabs/honey_ox.mp3','/ˈhʌni/','/ˈhʌni/','a sweet yellow substance made by bees','audios/vocabs/honey_ox_am.mp3'),(364,'company','công ty','2016-11-28 08:50:11.678134','',1,1,'','','','','audios/vocabs/company_ox.mp3','/ˈkʌmpəni/','/ˈkʌmpəni/','a business organization that makes money by producing or selling goods or services','audios/vocabs/company_ox_am.mp3'),(365,'uneasy','không dễ dàng','2016-11-28 08:51:20.023223','',1,3,'','','','','audios/vocabs/uneasy_ox.mp3','/ʌnˈiːzi/','/ʌnˈiːzi/','not easy, unhappy, worried','audios/vocabs/uneasy_ox_am.mp3'),(366,'flood','lũ lụt','2016-11-28 08:53:29.819053','',2,1,'','','<p>The heavy rain has caused floods. Mưa to g&acirc;y ra lũ</p>','','audios/vocabs/flood_ox.mp3','/flʌd/','/flʌd/','a large amount of water covering an area that is usually dry','audios/vocabs/flood_ox_am.mp3'),(367,'cousin','anh/chị/em họ','2016-11-28 08:54:43.303595','',1,1,'','','','','audios/vocabs/cousin_ox.mp3','/ˈkʌzn/','/ˈkʌzn/','a child of your aunt or uncle','audios/vocabs/cousin_ox_am.mp3'),(368,'country','nước','2016-11-28 08:55:45.402018','',1,1,'','','','','audios/vocabs/country_ox.mp3','/ˈkʌntri/','/ˈkʌntri/','an area of land that has  its own government','audios/vocabs/country_ox_am.mp3'),(369,'tough','khó khăn, cứng nhắc, mạnh mẽ','2016-11-28 08:58:24.177181','',1,3,'','','<p>tough question: c&acirc;u hỏi kh&oacute;</p>\r\n<p>be tough on somebody: kh&oacute; khăn với ai</p>\r\n<p>a tough guy: một anh ch&agrave;ng mạnh mẽ</p>','','audios/vocabs/tough_ox.mp3','/tʌf/','/tʌf/','difficult, strict, strong','audios/vocabs/tough_ox_am.mp3'),(370,'bar','quán bar','2016-11-28 09:43:34.200604','',1,1,'','','','','audios/vocabs/bar_ox.mp3','/bɑːr/','/bɑː(r)','a place where you can buy and drink alcoholic','audios/vocabs/bar_ox_am.mp3'),(371,'hard','khó khăn, cứng','2016-11-28 09:47:14.701949','',1,3,'','','<p>Diamonds are the hardest mineral. Kim cương l&agrave; kim loại rắn nhất.</p>\r\n<p>a hard choice/question. Một lựa chọn/c&acirc;u hỏi kh&oacute; khăn.</p>\r\n<p>a hard worker. Một người l&agrave;m c&ocirc;ng chăm chỉ</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','audios/vocabs/hard_ox.mp3','/hɑːrd/','/hɑːd/','solid, tough, difficult','audios/vocabs/hard_ox_an.mp3'),(372,'heart','tim','2016-11-28 09:48:43.335234','',1,1,'','','<p>have a weak heart. Yếu tim</p>','','audios/vocabs/heart_ox.mp3','/hɑːt/','/hɑːt/','part of body','audios/vocabs/heart_ox_am.mp3'),(373,'smart','thông minh','2016-11-28 09:49:51.786337','',1,3,'','','','','audios/vocabs/smart_ox.mp3','/smɑːt/','/smɑːt/','intelligent','audios/vocabs/smart_ox_am.mp3'),(374,'guard','bảo vệ','2016-11-28 09:51:54.879292','guarded',1,2,'','guarded','','','audios/vocabs/guard_ox.mp3','/ɡɑːrd/','/ɡɑːd/','protect property, places or people from attack','audios/vocabs/guard_ox_an.mp3'),(375,'laugh','cười','2016-11-28 09:55:30.055829','laughed',1,2,'','laughed','<p>laugh loudly. cười to</p>\r\n<p>laugh at something. cười một c&aacute;i g&igrave; đ&oacute;.</p>\r\n<p>you never laugh at my jokes. bạn chưa bao giờ cười v&igrave; những pha tr&ograve; của t&ocirc;i.</p>\r\n<p>She always makes me laugh. C&ocirc; ấy lu&ocirc;n l&agrave;m t&ocirc;i cười</p>','','audios/vocabs/laugh_ox.mp3','/lɑːf/','/lɑːf/','to make the sounds that show you are happy or think something is funny','audios/vocabs/laught_ox_am.mp3'),(376,'aunt','dì, bác gái (chị/em bố hoặc mẹ), vợ của bác giai hoặc cậu','2016-11-28 09:57:01.118802','',1,1,'','','','','audios/vocabs/aunt_ox.mp3','/ænt/','/ɑːnt/','the sister of your father or mother; the wife of your uncle','audios/vocabs/aunt_ox_am.mp3');
/*!40000 ALTER TABLE `toeic_vocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_vocab_topic`
--

DROP TABLE IF EXISTS `toeic_vocab_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_vocab_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vocab_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toeic_vocab_topic_vocab_id_bdc8db6b_uniq` (`vocab_id`,`topic_id`),
  KEY `toeic_vocab_topic_topic_id_995692be_fk_toeic_topic_id` (`topic_id`),
  CONSTRAINT `toeic_vocab_topic_topic_id_995692be_fk_toeic_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `toeic_topic` (`id`),
  CONSTRAINT `toeic_vocab_topic_vocab_id_2c9bf12e_fk_toeic_vocab_id` FOREIGN KEY (`vocab_id`) REFERENCES `toeic_vocab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_vocab_topic`
--

LOCK TABLES `toeic_vocab_topic` WRITE;
/*!40000 ALTER TABLE `toeic_vocab_topic` DISABLE KEYS */;
INSERT INTO `toeic_vocab_topic` VALUES (1,1,4),(2,2,3),(3,2,5),(4,3,6),(5,4,7),(6,5,8),(7,6,3),(8,7,3),(9,8,9),(10,9,9),(11,9,10),(13,10,3),(12,10,9),(14,11,6),(15,12,6),(16,13,6),(18,14,7),(17,14,12),(19,15,2),(20,15,13),(21,16,6),(22,17,7),(23,18,7),(24,19,14),(26,20,6),(25,20,13),(28,21,7),(27,21,11),(29,22,8),(30,23,12),(31,23,13),(32,24,12),(33,24,13),(34,25,2),(35,25,3),(37,25,7),(36,25,12),(39,26,7),(38,26,12),(40,27,10),(41,27,13),(42,28,11),(43,29,6),(44,30,7),(45,31,14),(46,32,7),(47,33,7),(48,34,6),(49,35,15),(51,36,13),(50,36,16),(52,37,17),(53,38,13),(55,39,1),(54,39,16),(56,40,6),(57,41,7),(58,42,20),(59,43,6),(60,44,21),(62,45,7),(61,45,21),(63,46,7),(64,47,6),(65,48,7),(66,49,10),(67,50,9),(68,50,10),(69,51,6),(70,52,10),(71,53,7),(73,54,2),(74,54,3),(76,54,7),(72,54,9),(75,54,13),(77,55,22),(78,56,2),(79,57,7),(80,58,7),(81,59,10),(82,60,10),(83,61,10),(84,62,6),(85,63,2),(86,64,7),(87,65,2),(89,66,7),(90,67,10),(91,68,7),(92,69,6),(93,70,10),(94,71,10),(95,72,7),(96,73,15),(97,74,16),(98,75,16),(99,76,7),(100,77,7),(101,78,6),(102,79,7),(103,80,7),(104,81,14),(105,82,6),(107,83,7),(106,83,8),(108,84,14),(109,85,13),(110,86,6),(111,87,2),(112,88,2),(114,88,6),(113,88,13),(115,89,13),(116,90,21),(117,91,21),(118,92,8),(120,93,2),(119,93,8),(121,93,11),(122,93,13),(124,94,7),(123,94,8),(125,94,23),(126,95,2),(127,95,7),(130,95,24),(128,96,7),(131,97,2),(133,98,2),(134,98,10),(132,98,24),(136,99,2),(135,99,24),(138,100,6),(137,100,24),(139,101,2),(140,101,3),(141,101,5),(142,101,6),(143,102,4),(144,103,6),(145,104,25),(146,105,6),(147,106,26),(149,107,1),(148,107,16),(150,107,26),(151,108,3),(152,108,27),(154,109,14),(153,109,28),(155,110,10),(156,110,28),(157,111,6),(158,112,10),(159,113,26),(161,114,10),(160,114,16),(162,115,7),(163,116,17),(164,117,14),(165,118,17),(166,119,15),(167,120,14),(168,121,14),(169,122,10),(170,123,28),(171,124,10),(172,124,28),(173,125,10),(175,126,6),(174,126,28),(176,127,28),(177,128,6),(178,129,29),(179,130,29),(180,131,29),(181,132,29),(183,133,6),(182,133,29),(184,134,29),(186,135,7),(185,135,30),(187,136,7),(188,137,29),(189,138,6),(191,139,7),(190,139,8),(192,139,23),(193,140,13),(194,141,13),(195,142,2),(196,142,7),(197,143,16),(198,144,6),(199,145,2),(200,146,2),(201,147,6),(202,148,2),(204,149,2),(203,149,24),(205,150,15),(206,151,2),(207,152,10),(208,153,6),(210,154,7),(209,154,13),(211,155,10),(212,156,6),(214,157,2),(213,157,24),(215,158,14),(216,159,6),(217,160,10),(218,161,10),(219,162,7),(220,163,2),(222,163,7),(221,163,28),(223,164,6),(224,165,2),(225,165,7),(226,166,31),(227,167,28),(228,168,10),(229,169,10),(230,170,28),(231,171,6),(232,172,7),(233,173,12),(234,174,12),(235,175,10),(236,176,10),(237,177,32),(238,178,33),(239,179,10),(240,179,23),(241,180,14),(242,181,2),(243,181,4),(244,182,2),(245,182,4),(246,183,2),(247,183,6),(248,184,23),(249,185,2),(250,185,11),(251,185,30),(252,186,2),(253,186,10),(255,187,7),(254,187,34),(256,188,6),(257,189,2),(258,190,6),(259,191,6),(260,192,2),(261,192,13),(262,193,2),(263,193,28),(264,194,10),(265,195,6),(266,196,6),(267,197,10),(268,198,6),(269,199,6),(270,200,1),(271,200,3),(273,201,10),(272,201,24),(274,202,2),(275,202,26),(276,203,1),(277,203,5),(278,204,13),(280,205,7),(279,205,28),(281,206,10),(282,207,10),(283,208,6),(285,209,13),(284,209,16),(286,210,30),(287,211,4),(288,211,7),(289,212,2),(290,212,28),(292,213,14),(291,213,28),(293,214,10),(294,214,28),(296,215,7),(295,215,28),(297,216,6),(298,217,16),(299,218,7),(300,219,16),(301,219,18),(303,220,7),(302,220,18),(304,221,10),(305,222,18),(306,223,6),(307,224,2),(308,225,2),(309,225,7),(310,226,21),(311,227,15),(313,228,7),(312,228,24),(315,229,7),(314,229,28),(316,230,10),(317,231,6),(318,232,16),(319,233,16),(321,234,2),(322,234,7),(320,234,16),(324,235,6),(323,235,12),(325,236,6),(326,237,7),(327,238,21),(328,239,7),(329,240,2),(332,240,7),(330,240,20),(333,241,10),(334,242,7),(335,243,10),(336,244,10),(337,245,10),(338,246,7),(339,247,35),(340,248,35),(341,249,35),(342,250,10),(343,251,7),(344,252,10),(345,252,21),(346,253,21),(347,254,6),(348,255,21),(349,256,21),(350,257,21),(351,258,34),(353,260,32),(354,261,7),(355,262,21),(356,263,1),(357,264,36),(358,265,35),(359,265,36),(360,266,36),(361,267,36),(362,268,36),(363,269,36),(364,270,36),(365,271,36),(452,271,38),(366,272,36),(367,273,36),(369,275,36),(372,278,36),(373,279,36),(374,280,6),(375,281,7),(376,282,36),(377,283,37),(379,285,36),(380,286,36),(381,287,36),(382,288,36),(383,289,36),(384,290,36),(385,291,36),(386,292,36),(387,293,36),(388,294,36),(389,295,37),(390,296,37),(391,297,37),(392,298,37),(393,299,37),(394,300,37),(395,301,37),(396,302,38),(397,303,38),(398,304,38),(399,305,38),(400,306,38),(401,307,38),(402,308,38),(403,309,38),(404,310,38),(405,311,38),(406,312,38),(407,313,38),(408,314,38),(409,315,38),(410,316,38),(411,317,38),(412,318,38),(413,319,38),(414,320,38),(415,321,38),(416,322,7),(417,323,10),(418,324,19),(419,324,36),(420,325,36),(421,326,19),(422,327,36),(423,328,10),(424,329,10),(425,330,6),(426,331,13),(428,332,7),(427,332,19),(429,333,36),(430,334,36),(431,335,36),(432,336,36),(433,337,36),(434,338,36),(435,339,36),(436,340,36),(437,341,36),(438,342,6),(439,343,6),(440,344,7),(441,345,36),(442,346,36),(443,347,36),(444,348,36),(446,350,36),(447,351,3),(448,352,7),(449,353,10),(450,354,7),(451,355,6),(453,356,36),(454,357,36),(455,358,36),(456,359,36),(457,360,36),(458,361,36),(459,362,36),(460,363,36),(461,364,2),(462,365,36),(463,366,36),(464,367,36),(465,368,37),(466,369,10),(467,370,4),(468,371,10),(469,372,36),(470,373,36),(471,374,1),(472,374,36),(473,375,36),(474,376,36);
/*!40000 ALTER TABLE `toeic_vocab_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toeic_wordtype`
--

DROP TABLE IF EXISTS `toeic_wordtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toeic_wordtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toeic_wordtype`
--

LOCK TABLES `toeic_wordtype` WRITE;
/*!40000 ALTER TABLE `toeic_wordtype` DISABLE KEYS */;
INSERT INTO `toeic_wordtype` VALUES (1,'noun','2016-10-11 04:05:02.292000'),(2,'verb','2016-10-11 04:05:05.388000'),(3,'adjective','2016-10-11 04:05:09.180000'),(4,'adverb','2016-10-11 04:05:12.050000'),(5,'idiom','2016-10-11 04:05:24.103000'),(6,'preposition','2016-10-12 05:00:24.596000'),(7,'conjunction','2016-10-14 02:56:00.260338'),(8,'phrase','2016-10-25 03:36:19.066852'),(9,'pronoun','2016-11-18 04:50:10.273345'),(10,'determiner','2016-11-28 08:45:19.248830');
/*!40000 ALTER TABLE `toeic_wordtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-30 15:36:14
