-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: django_dorss
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add intro images model',7,'add_introimagesmodel'),(26,'Can change intro images model',7,'change_introimagesmodel'),(27,'Can delete intro images model',7,'delete_introimagesmodel'),(28,'Can view intro images model',7,'view_introimagesmodel'),(29,'Can add image model',8,'add_imagemodel'),(30,'Can change image model',8,'change_imagemodel'),(31,'Can delete image model',8,'delete_imagemodel'),(32,'Can view image model',8,'view_imagemodel'),(33,'Can add projects model',9,'add_projectsmodel'),(34,'Can change projects model',9,'change_projectsmodel'),(35,'Can delete projects model',9,'delete_projectsmodel'),(36,'Can view projects model',9,'view_projectsmodel'),(37,'Can add image production model',10,'add_imageproductionmodel'),(38,'Can change image production model',10,'change_imageproductionmodel'),(39,'Can delete image production model',10,'delete_imageproductionmodel'),(40,'Can view image production model',10,'view_imageproductionmodel'),(41,'Can add production models',11,'add_productionmodels'),(42,'Can change production models',11,'change_productionmodels'),(43,'Can delete production models',11,'delete_productionmodels'),(44,'Can view production models',11,'view_productionmodels'),(45,'Can add news model',12,'add_newsmodel'),(46,'Can change news model',12,'change_newsmodel'),(47,'Can delete news model',12,'delete_newsmodel'),(48,'Can view news model',12,'view_newsmodel'),(49,'Can add production blog model',13,'add_productionblogmodel'),(50,'Can change production blog model',13,'change_productionblogmodel'),(51,'Can delete production blog model',13,'delete_productionblogmodel'),(52,'Can view production blog model',13,'view_productionblogmodel'),(53,'Can add service model',14,'add_servicemodel'),(54,'Can change service model',14,'change_servicemodel'),(55,'Can delete service model',14,'delete_servicemodel'),(56,'Can view service model',14,'view_servicemodel'),(57,'Can add image service model',15,'add_imageservicemodel'),(58,'Can change image service model',15,'change_imageservicemodel'),(59,'Can delete image service model',15,'delete_imageservicemodel'),(60,'Can view image service model',15,'view_imageservicemodel'),(61,'Can add feedback model',16,'add_feedbackmodel'),(62,'Can change feedback model',16,'change_feedbackmodel'),(63,'Can delete feedback model',16,'delete_feedbackmodel'),(64,'Can view feedback model',16,'view_feedbackmodel'),(65,'Can add form service model',17,'add_formservicemodel'),(66,'Can change form service model',17,'change_formservicemodel'),(67,'Can delete form service model',17,'delete_formservicemodel'),(68,'Can view form service model',17,'view_formservicemodel'),(69,'Can add service form model',17,'add_serviceformmodel'),(70,'Can change service form model',17,'change_serviceformmodel'),(71,'Can delete service form model',17,'delete_serviceformmodel'),(72,'Can view service form model',17,'view_serviceformmodel'),(73,'Can add application model',18,'add_applicationmodel'),(74,'Can change application model',18,'change_applicationmodel'),(75,'Can delete application model',18,'delete_applicationmodel'),(76,'Can view application model',18,'view_applicationmodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$IEdAWBXw9Zfm$vugLh3mRyV225fge2EAbSDXNgKxSzBykpi39CMt3vf0=','2020-11-14 11:23:09.717952',1,'admin','','','',1,1,'2020-11-12 11:06:09.828407');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-11-12 12:38:59.618814','1','IntroImagesModel object (1)',1,'[{\"added\": {}}]',7,1),(2,'2020-11-13 08:11:42.404336','2','test1 test1test1test1',1,'[{\"added\": {}}]',7,1),(3,'2020-11-13 08:23:34.017736','1','ImageModel object (1)',1,'[{\"added\": {}}]',8,1),(4,'2020-11-13 08:23:40.015315','2','ImageModel object (2)',1,'[{\"added\": {}}]',8,1),(5,'2020-11-13 08:24:31.645176','3','ImageModel object (3)',1,'[{\"added\": {}}]',8,1),(6,'2020-11-13 08:24:41.599766','2','ImageModel object (2)',3,'',8,1),(7,'2020-11-13 08:40:25.028781','4','ImageModel object (4)',1,'[{\"added\": {}}]',8,1),(8,'2020-11-13 14:09:02.646993','2','test1 test1test1test1',3,'',7,1),(9,'2020-11-13 14:15:26.499526','1','Ремонт <br> и обслуживание дорог test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(10,'2020-11-13 14:15:38.791254','1','Ремонт  и обслуживание дорог test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(11,'2020-11-13 14:23:43.896452','1','Ремонт\\  и обслуживание дорог test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(12,'2020-11-13 14:24:31.001690','1','Ремонт \\n  и обслуживание дорог test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(13,'2020-11-13 14:41:12.533070','1','Ремонт   и обслуживание дорог test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(14,'2020-11-13 14:43:21.862736','1','Ремонт и обслуживание дорог test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(15,'2020-11-13 14:43:26.170138','1','Ремонт и обслуживание дорог test test test',2,'[]',7,1),(16,'2020-11-13 14:48:35.287018','1','Joel\\nis a slug test test test',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',7,1),(17,'2020-11-13 14:49:20.609197','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ ООО “ДорСтройСервис” - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.\r\n \r\n\r\nВот уж',2,'[{\"changed\": {\"fields\": [\"Title\", \"Body\"]}}]',7,1),(18,'2020-11-13 14:52:58.232907','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ ООО “ДорСтройСервис” - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.\r\n \r\n\r\nВот уж',2,'[]',7,1),(19,'2020-11-13 15:02:37.426797','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ ** ООО “ДорСтройСервис” - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.\r\n \r\n\r\nВот',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',7,1),(20,'2020-11-13 15:04:28.621662','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ #### ООО “ДорСтройСервис” - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.\r\n \r\n\r\nВ',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',7,1),(21,'2020-11-13 15:04:53.184662','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ ООО “ДорСтройСервис” - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.\r\n \r\n\r\nВот уж',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',7,1),(22,'2020-11-13 18:14:10.708967','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ ООО “ДорСтройСервис” - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.\r\n \r\n\r\nВот уж',2,'[]',7,1),(23,'2020-11-14 07:06:25.325045','1','РЕМОНТ УЛ. БОРОВАЯ В Г. ПСКОВЕ 2020 10.02.2020 между ООО «ДорСтройСервис» и УГХ АДМИНИСТРАЦИИ ГОРОДА ПСКОВА был заключен контракт в рамках национального проекта «Безопасные и качественные автомобильны',1,'[{\"added\": {}}]',9,1),(24,'2020-11-14 07:46:19.652829','1','РЕМОНТ УЛ. БОРОВАЯ В Г. ПСКОВЕ 2020 10.02.2020 между ООО «ДорСтройСервис» и УГХ АДМИНИСТРАЦИИ ГОРОДА ПСКОВА был заключен контракт в рамках национального проекта «Безопасные и качественные автомобильны',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(25,'2020-11-14 08:20:58.717272','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 Объект: Ремонт  Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове\r\n\r\nСроки выполнения работ: 04.02.2020 - 10.08.2020\r\n\r\nЗаказчик: У',1,'[{\"added\": {}}]',9,1),(26,'2020-11-14 08:22:36.925168','3','test Это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.',1,'[{\"added\": {}}]',9,1),(27,'2020-11-14 08:23:10.955666','3','test Это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',9,1),(28,'2020-11-14 08:25:38.236664','4','Ремонт  и обслуживание дорог ddsada',1,'[{\"added\": {}}]',9,1),(29,'2020-11-14 08:44:28.334219','3','test Это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',9,1),(30,'2020-11-14 08:44:33.817460','3','test Это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',9,1),(31,'2020-11-14 08:44:43.064263','4','Ремонт  и обслуживание дорог ddsada',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',9,1),(32,'2020-11-14 11:24:38.444228','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 Объект: Ремонт  Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове\r\n\r\nСроки выполнения работ: 04.02.2020 - 10.08.2020\r\n\r\nЗаказчик: У',2,'[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\", \"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(33,'2020-11-14 11:24:53.850068','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 Объект: Ремонт  Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове\r\n\r\nСроки выполнения работ: 04.02.2020 - 10.08.2020\r\n\r\nЗаказчик: У',2,'[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\"]}}]',9,1),(34,'2020-11-14 11:24:59.364431','1','РЕМОНТ УЛ. БОРОВАЯ В Г. ПСКОВЕ 2020 10.02.2020 между ООО «ДорСтройСервис» и УГХ АДМИНИСТРАЦИИ ГОРОДА ПСКОВА был заключен контракт в рамках национального проекта «Безопасные и качественные автомобильны',2,'[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\"]}}]',9,1),(35,'2020-11-14 11:25:06.501374','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 Объект: Ремонт  Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове\r\n\r\nСроки выполнения работ: 04.02.2020 - 10.08.2020\r\n\r\nЗаказчик: У',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(36,'2020-11-14 11:25:13.212669','1','РЕМОНТ УЛ. БОРОВАЯ В Г. ПСКОВЕ 2020 10.02.2020 между ООО «ДорСтройСервис» и УГХ АДМИНИСТРАЦИИ ГОРОДА ПСКОВА был заключен контракт в рамках национального проекта «Безопасные и качественные автомобильны',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(37,'2020-11-14 11:30:26.629107','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 Объект: Ремонт  Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове\r\n\r\nСроки выполнения работ: 04.02.2020 - 10.08.2020\r\n\r\nЗаказчик: У',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(38,'2020-11-14 11:30:31.982601','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 Объект: Ремонт  Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове\r\n\r\nСроки выполнения работ: 04.02.2020 - 10.08.2020\r\n\r\nЗаказчик: У',2,'[]',9,1),(39,'2020-11-14 11:30:38.798436','3','test Это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(40,'2020-11-14 11:30:52.505596','3','test Это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(41,'2020-11-14 11:31:18.217164','4','Ремонт  и обслуживание дорог ddsada',2,'[{\"changed\": {\"fields\": [\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0435\"]}}]',9,1),(42,'2020-11-14 15:06:31.074389','4','Ремонт  и обслуживание дорог ddsada',2,'[{\"changed\": {\"fields\": [\"\\u0417\\u0430\\u0433\\u043e\\u043b\\u043e\\u0432\\u043e\\u043a \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\"]}}]',9,1),(43,'2020-11-16 09:17:27.575862','4','Ремонт  и обслуживание дорог <p>ddsada</p>',2,'[{\"changed\": {\"fields\": [\"body\", \"body_post\"]}}]',9,1),(44,'2020-11-16 09:17:52.371903','4','Ремонт  и обслуживание дорог <p>ddsada</p>',2,'[{\"changed\": {\"fields\": [\"body_post\"]}}]',9,1),(45,'2020-11-16 09:18:25.296147','4','Ремонт  и обслуживание дорог <p>ddsada</p>',2,'[{\"changed\": {\"fields\": [\"body_post\"]}}]',9,1),(46,'2020-11-16 09:45:06.703788','2','РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020 <p>Объект: Ремонт Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове Сроки выполнения работ: 04.02.2020 - 10.08.2020 Заказчик: УГХ а',2,'[{\"changed\": {\"fields\": [\"body\", \"body_post\"]}}]',9,1),(47,'2020-11-16 09:45:12.861818','1','РЕМОНТ УЛ. БОРОВАЯ В Г. ПСКОВЕ 2020 <p>10.02.2020 между ООО &laquo;ДорСтройСервис&raquo; и УГХ АДМИНИСТРАЦИИ ГОРОДА ПСКОВА был заключен контракт в рамках национального проекта &laquo;Безопасные и каче',2,'[{\"changed\": {\"fields\": [\"body\", \"body_post\"]}}]',9,1),(48,'2020-11-16 09:53:56.616714','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <h4>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значен',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(49,'2020-11-16 09:54:06.788035','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значени',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(50,'2020-11-16 09:54:24.963774','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(51,'2020-11-16 09:54:43.986896','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(52,'2020-11-16 09:55:53.649369','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p><big><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориал',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(53,'2020-11-16 09:56:55.916700','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(54,'2020-11-16 09:57:24.166353','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значени',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(55,'2020-11-16 09:57:36.450245','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значени',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(56,'2020-11-16 09:57:50.497340','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(57,'2020-11-16 10:13:57.150688','4','Ремонт  и обслуживание дорог <p>ddsada</p>',2,'[{\"changed\": {\"fields\": [\"body_post\"]}}]',9,1),(58,'2020-11-16 10:34:00.632210','1','test test test\r\ntest',1,'[{\"added\": {}}]',11,1),(59,'2020-11-16 10:34:51.023300','1','ImageProductionModel object (1)',1,'[{\"added\": {}}]',10,1),(60,'2020-11-16 10:34:57.925937','2','ImageProductionModel object (2)',1,'[{\"added\": {}}]',10,1),(61,'2020-11-16 10:52:15.362196','3','ImageProductionModel object (3)',1,'[{\"added\": {}}]',10,1),(62,'2020-11-16 10:55:13.851461','2','ImageProductionModel object (2)',3,'',10,1),(63,'2020-11-16 10:55:13.859757','1','ImageProductionModel object (1)',3,'',10,1),(64,'2020-11-16 11:02:56.708338','1','ПРОИЗВОДСТВЕННАЯ БАЗА test test\r\ntest',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',11,1),(65,'2020-11-16 11:05:24.860766','1','ПРОИЗВОДСТВЕННАЯ БАЗА test test\r\ntest',2,'[]',11,1),(66,'2020-11-16 11:05:50.444306','1','ПРОИЗВОДСТВЕННАЯ БАЗА <h2>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(67,'2020-11-16 11:06:18.230347','1','ПРОИЗВОДСТВЕННАЯ БАЗА <h1>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(68,'2020-11-16 11:06:41.915784','1','ПРОИЗВОДСТВЕННАЯ БАЗА <h1><strong>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</strong></h1>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(69,'2020-11-16 11:08:32.831672','1','ПРОИЗВОДСТВЕННАЯ БАЗА <h1><span style=\"color:#ffffff\"><strong>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</strong></span></h1>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(70,'2020-11-16 11:08:56.486833','1','ПРОИЗВОДСТВЕННАЯ БАЗА <p><strong>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</strong></p>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(71,'2020-11-16 11:12:19.746012','1','ПРОИЗВОДСТВЕННАЯ БАЗА <p><strong>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</strong></p>',2,'[{\"changed\": {\"fields\": [\"Title body\"]}}]',11,1),(72,'2020-11-16 11:12:38.718239','1','ПРОИЗВОДСТВЕННАЯ БАЗА <p><strong>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:</strong></p>',2,'[]',11,1),(73,'2020-11-16 11:15:10.558556','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</li>\r\n	<li>Штат из 86 квалифицированных специалистов</li>\r\n	<li>Пар',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(74,'2020-11-16 11:16:54.620238','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Штат из 86 квалифицирова',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(75,'2020-11-16 11:18:53.116678','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(76,'2020-11-16 11:19:16.765487','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">2 завода по производству асфальта (г. Псков -&nbsp;Bennin',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(77,'2020-11-16 11:22:24.163831','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p>2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(78,'2020-11-16 11:28:43.370305','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p>2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(79,'2020-11-16 11:32:51.810481','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p>2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(80,'2020-11-16 11:33:17.154754','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p><span style=\"font-size:16px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(81,'2020-11-16 11:35:45.569894','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p><span style=\"font-size:28px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(82,'2020-11-16 11:36:02.132376','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(83,'2020-11-16 11:37:08.903345','1','ПРОИЗВОДСТВЕННАЯ БАЗА <h1>В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:&nbsp;</h1>\r\n\r\n<ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p><span style=\"font-size:20px\">2 завода по п',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(84,'2020-11-16 11:37:37.548936','1','ПРОИЗВОДСТВЕННАЯ БАЗА <p><span style=\"font-size:26px\">В производственную базу компании &ldquo;ДорСтройСервис&rdquo; входят:&nbsp;</span></p>\r\n\r\n<ul style=\"list-style-type:square\">\r\n	<li>\r\n	<p><span st',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(85,'2020-11-16 11:38:59.321448','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(86,'2020-11-16 11:48:10.345455','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r',2,'[]',11,1),(87,'2020-11-16 11:59:29.756687','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(88,'2020-11-16 12:58:48.281186','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\"><img alt=\"\" src=\"/media/uploads/2020/11/16/article-slide-1.jpg\" style=\"float:left; height:639px; width:1136px\" />2 завода по производству ',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(89,'2020-11-16 12:59:07.472851','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(90,'2020-11-16 13:03:49.519112','3','ImageProductionModel object (3)',3,'',10,1),(91,'2020-11-16 13:09:04.810747','4','ImageProductionModel object (4)',1,'[{\"added\": {}}]',10,1),(92,'2020-11-16 13:09:18.368151','5','ImageProductionModel object (5)',1,'[{\"added\": {}}]',10,1),(93,'2020-11-16 13:14:50.387506','5','ImageProductionModel object (5)',3,'',10,1),(94,'2020-11-16 13:14:50.394509','4','ImageProductionModel object (4)',3,'',10,1),(95,'2020-11-16 13:14:56.334870','6','ImageProductionModel object (6)',1,'[{\"added\": {}}]',10,1),(96,'2020-11-16 13:28:54.275733','1','test <p>f</p>\r\n\r\n<p>ter</p>\r\n\r\n<p>ter</p>',1,'[{\"added\": {}}]',12,1),(97,'2020-11-16 13:30:05.967861','1','Главный заголовок <p>Текст боди</p>',2,'[{\"changed\": {\"fields\": [\"Title\", \"body\"]}}]',12,1),(98,'2020-11-16 13:31:40.747786','1','ПОЧТИ ЗА ТРИ НЕДЕЛИ ДО СРОКА СДАЧИ ПО КОНТРАКТУ БЫЛА ПРОВЕДЕНА СДАЧА И ПРИЁМКА РИЖСКОГО ПРОСПЕКТА! <p>Почти за три недели до срока сдачи по контракту была проведена сдача и приёмка Рижского проспект',2,'[{\"changed\": {\"fields\": [\"Title\", \"body\"]}}]',12,1),(99,'2020-11-16 13:35:38.602344','2','07.07.2020 ЗАВЕРШЕН ПЕРВЫЙ В ЭТОМ ГОДУ В Г. ПСКОВЕ КОНТРАКТ В РАМКАХ НАЦИОНАЛЬНОГО ПРОЕКТА \"БЕЗОПАСНЫЕ И КАЧЕСТВЕННЫЕ АВТОМОБИЛЬНЫЕ ДОРОГИ\" <p>07.07.2020 Завершен первый в этом году в г. Пскове конт',1,'[{\"added\": {}}]',12,1),(100,'2020-11-16 13:36:31.350016','3','НА РИЖСКОМ ПРОСПЕКТЕ 20.06 РАБОТЫ БУДУТ ЗАКОНЧЕНЫ <p>На Рижском пр-те 20.06 работы на проезжей части на участке от ул. Юбилейной до ул. Киселева будут закончены.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Смотрите ви',1,'[{\"added\": {}}]',12,1),(101,'2020-11-16 13:37:28.272824','3','НА РИЖСКОМ ПРОСПЕКТЕ 20.06 РАБОТЫ БУДУТ ЗАКОНЧЕНЫ <p>На Рижском пр-те 20.06 работы на проезжей части на участке от ул. Юбилейной до ул. Киселева будут закончены.</p>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',12,1),(102,'2020-11-16 13:38:03.371301','3','НА РИЖСКОМ ПРОСПЕКТЕ 20.06 РАБОТЫ БУДУТ ЗАКОНЧЕНЫ <p>Продолжаем ремонт автомобильной дороги Неелово - Кудина Гора &ndash; Печоры на участке км 27+245 - км 35+566 в Печорском районе Псковской области.<',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',12,1),(103,'2020-11-16 13:38:26.175807','3','НА РИЖСКОМ ПРОСПЕКТЕ 20.06 РАБОТЫ БУДУТ ЗАКОНЧЕНЫ <p>На Рижском пр-те 20.06 работы на проезжей части на участке от ул. Юбилейной до ул. Киселева будут закончены.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Смотрите ви',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',12,1),(104,'2020-11-16 13:38:59.757044','3','ПРОДОЛЖАЕМ РЕМОНТ АВТОМОБИЛЬНОЙ ДОРОГИ НЕЕЛОВО - КУДИНА ГОРА – ПЕЧОРЫ <p>Продолжаем ремонт автомобильной дороги Неелово - Кудина Гора &ndash; Печоры на участке км 27+245 - км 35+566 в Печорском районе',2,'[{\"changed\": {\"fields\": [\"Title\", \"body\"]}}]',12,1),(105,'2020-11-16 13:56:32.263356','1','test <p>test test</p>',1,'[{\"added\": {}}]',13,1),(106,'2020-11-16 14:19:05.988620','1','test <p>test test</p>',2,'[]',13,1),(107,'2020-11-16 14:19:38.827796','2','test2 <p>fddsfds</p>',1,'[{\"added\": {}}]',13,1),(108,'2020-11-16 14:37:24.770649','2','test2 <p><span style=\"font-family:Courier New,Courier,monospace\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов н',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',13,1),(109,'2020-11-16 14:37:48.017452','2','test2 <p><span style=\"font-size:22px\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI век',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',13,1),(110,'2020-11-16 14:37:57.202370','1','test <p><span style=\"font-size:22px\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',13,1),(111,'2020-11-17 08:05:02.211207','2','test2 <p><span style=\"font-size:22px\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI век',2,'[]',13,1),(112,'2020-11-17 08:05:46.604405','3','test3 <p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>',1,'[{\"added\": {}}]',13,1),(113,'2020-11-17 09:39:54.023953','3','test3 <p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>\r\n\r\n<h2>fdsfsdf</h2>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',13,1),(114,'2020-11-17 09:40:10.426911','3','test3 <p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>\r\n\r\n<h1>fdsfsdf</h1>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',13,1),(115,'2020-11-17 09:40:44.572208','3','test3 <p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>\r\n\r\n<h1><span style=\"fo',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',13,1),(116,'2020-11-17 09:48:01.900831','1','ServiceModel object (1)',1,'[{\"added\": {}}]',14,1),(117,'2020-11-17 10:21:38.160860','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[]',14,1),(118,'2020-11-17 10:21:48.164480','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[]',14,1),(119,'2020-11-17 11:41:56.829439','1','ImageServiceModel object (1)',1,'[{\"added\": {}}]',15,1),(120,'2020-11-17 11:42:03.035863','2','ImageServiceModel object (2)',1,'[{\"added\": {}}]',15,1),(121,'2020-11-17 11:42:11.336422','3','ImageServiceModel object (3)',1,'[{\"added\": {}}]',15,1),(122,'2020-11-17 11:55:44.447286','2','ImageServiceModel object (2)',3,'',15,1),(123,'2020-11-17 11:55:44.455294','1','ImageServiceModel object (1)',3,'',15,1),(124,'2020-11-17 11:58:35.761962','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_center\"]}}]',14,1),(125,'2020-11-17 12:04:48.601089','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(126,'2020-11-17 12:07:30.993845','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[]',14,1),(127,'2020-11-17 12:19:37.420385','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"Price\", \"body\", \"body_center\", \"body_table\"]}}]',14,1),(128,'2020-11-17 12:20:04.351031','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_center\"]}}]',14,1),(129,'2020-11-17 12:23:19.025497','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[]',14,1),(130,'2020-11-17 12:25:09.756976','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(131,'2020-11-17 12:26:23.692712','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(132,'2020-11-17 12:27:09.078543','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(133,'2020-11-17 12:27:34.825852','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(134,'2020-11-17 12:31:36.163211','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</span></li>\r\n	<li><span style=\"font-si',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(135,'2020-11-17 12:33:48.073148','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li><span style=\"font-size:20px\">2 завода по производству асфальта (г. Псков -&nbsp;Benninghoven, г. Остров- АСУ &quot;КА 160&quot;)</span></li>\r\n	<li><span style=\"font-si',2,'[]',11,1),(136,'2020-11-17 12:38:26.688797','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',14,1),(137,'2020-11-17 12:38:45.700427','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(138,'2020-11-17 12:39:05.296713','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(139,'2020-11-17 12:39:45.409275','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(140,'2020-11-17 12:40:00.947664','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(141,'2020-11-17 19:37:52.316872','7','ImageProductionModel object (7)',1,'[{\"added\": {}}]',10,1),(142,'2020-11-17 19:38:21.435714','7','ImageProductionModel object (7)',3,'',10,1),(143,'2020-11-17 19:46:31.553786','4','ImageModel object (4)',3,'',8,1),(144,'2020-11-17 19:46:31.559393','3','ImageModel object (3)',3,'',8,1),(145,'2020-11-17 19:46:31.563234','1','ImageModel object (1)',3,'',8,1),(146,'2020-11-17 19:46:47.740103','5','ImageModel object (5)',1,'[{\"added\": {}}]',8,1),(147,'2020-11-17 19:59:21.079037','8','ImageProductionModel object (8)',1,'[{\"added\": {}}]',10,1),(148,'2020-11-17 20:38:18.328933','8','ImageProductionModel object (8)',3,'',10,1),(149,'2020-11-17 20:38:18.335923','6','ImageProductionModel object (6)',3,'',10,1),(150,'2020-11-17 20:38:33.935689','9','ImageProductionModel object (9)',1,'[{\"added\": {}}]',10,1),(151,'2020-11-17 20:38:43.658963','10','ImageProductionModel object (10)',1,'[{\"added\": {}}]',10,1),(152,'2020-11-17 20:39:08.838117','11','ImageProductionModel object (11)',1,'[{\"added\": {}}]',10,1),(153,'2020-11-17 20:42:47.323590','12','ImageProductionModel object (12)',1,'[{\"added\": {}}]',10,1),(154,'2020-11-17 20:47:56.236954','6','ImageModel object (6)',1,'[{\"added\": {}}]',8,1),(155,'2020-11-17 20:50:12.141475','4','ImageServiceModel object (4)',1,'[{\"added\": {}}]',15,1),(156,'2020-11-17 20:55:35.495342','4','ImageServiceModel object (4)',3,'',15,1),(157,'2020-11-17 20:55:35.503335','3','ImageServiceModel object (3)',3,'',15,1),(158,'2020-11-17 20:55:47.212256','5','ImageServiceModel object (5)',1,'[{\"added\": {}}]',15,1),(159,'2020-11-17 20:55:57.168514','6','ImageServiceModel object (6)',1,'[{\"added\": {}}]',15,1),(160,'2020-11-18 06:54:18.782421','6','ImageServiceModel object (6)',3,'',15,1),(161,'2020-11-18 06:54:18.787457','5','ImageServiceModel object (5)',3,'',15,1),(162,'2020-11-18 06:54:25.024521','7','ImageServiceModel object (7)',1,'[{\"added\": {}}]',15,1),(163,'2020-11-18 06:54:33.858693','8','ImageServiceModel object (8)',1,'[{\"added\": {}}]',15,1),(164,'2020-11-18 07:00:05.086957','8','ImageServiceModel object (8)',3,'',15,1),(165,'2020-11-18 07:00:05.091955','7','ImageServiceModel object (7)',3,'',15,1),(166,'2020-11-18 07:00:15.651426','9','ImageServiceModel object (9)',1,'[{\"added\": {}}]',15,1),(167,'2020-11-18 07:00:39.894709','10','ImageServiceModel object (10)',1,'[{\"added\": {}}]',15,1),(168,'2020-11-18 07:46:10.545629','10','ImageServiceModel object (10)',3,'',15,1),(169,'2020-11-18 07:46:10.550623','9','ImageServiceModel object (9)',3,'',15,1),(170,'2020-11-18 07:46:15.563349','11','ImageServiceModel object (11)',1,'[{\"added\": {}}]',15,1),(171,'2020-11-18 07:46:21.586970','12','ImageServiceModel object (12)',1,'[{\"added\": {}}]',15,1),(172,'2020-11-18 08:12:52.202861','12','ImageServiceModel object (12)',3,'',15,1),(173,'2020-11-18 10:02:00.688583','1','FeedbackModel object (1)',3,'',16,1),(174,'2020-11-18 10:13:11.357060','8','FeedbackModel object (8)',3,'',16,1),(175,'2020-11-18 10:13:11.362054','7','FeedbackModel object (7)',3,'',16,1),(176,'2020-11-18 10:13:11.366051','6','FeedbackModel object (6)',3,'',16,1),(177,'2020-11-18 10:13:11.370048','5','FeedbackModel object (5)',3,'',16,1),(178,'2020-11-18 10:13:11.375042','4','FeedbackModel object (4)',3,'',16,1),(179,'2020-11-18 10:13:11.379038','3','FeedbackModel object (3)',3,'',16,1),(180,'2020-11-18 10:13:11.382035','2','FeedbackModel object (2)',3,'',16,1),(181,'2020-11-18 10:15:07.565778','11','FeedbackModel object (11)',3,'',16,1),(182,'2020-11-18 10:15:07.574297','10','FeedbackModel object (10)',3,'',16,1),(183,'2020-11-18 10:15:07.577439','9','FeedbackModel object (9)',3,'',16,1),(184,'2020-11-18 10:17:45.898706','14','FeedbackModel object (14)',3,'',16,1),(185,'2020-11-18 10:17:45.905699','13','FeedbackModel object (13)',3,'',16,1),(186,'2020-11-18 10:17:45.909695','12','FeedbackModel object (12)',3,'',16,1),(187,'2020-11-18 10:21:12.445803','18','FeedbackModel object (18)',3,'',16,1),(188,'2020-11-18 10:21:12.453803','17','FeedbackModel object (17)',3,'',16,1),(189,'2020-11-18 10:21:12.458791','16','FeedbackModel object (16)',3,'',16,1),(190,'2020-11-18 10:21:12.463786','15','FeedbackModel object (15)',3,'',16,1),(191,'2020-11-18 10:21:35.555158','19','FeedbackModel object (19)',3,'',16,1),(192,'2020-11-18 10:29:17.758803','21','FeedbackModel object (21)',3,'',16,1),(193,'2020-11-18 10:29:17.763426','20','FeedbackModel object (20)',3,'',16,1),(194,'2020-11-18 10:29:56.759956','23','FeedbackModel object (23)',3,'',16,1),(195,'2020-11-18 10:29:56.762956','22','FeedbackModel object (22)',3,'',16,1),(196,'2020-11-18 10:30:24.426075','24','FeedbackModel object (24)',3,'',16,1),(197,'2020-11-18 10:31:01.396603','25','FeedbackModel object (25)',3,'',16,1),(198,'2020-11-18 10:32:44.798313','26','FeedbackModel object (26)',3,'',16,1),(199,'2020-11-18 11:32:09.657739','29','FeedbackModel object (29)',3,'',16,1),(200,'2020-11-18 11:32:09.664732','28','FeedbackModel object (28)',3,'',16,1),(201,'2020-11-18 11:32:09.668729','27','FeedbackModel object (27)',3,'',16,1),(202,'2020-11-18 12:05:20.746981','32','FeedbackModel object (32)',3,'',16,1),(203,'2020-11-18 12:05:20.752955','31','FeedbackModel object (31)',3,'',16,1),(204,'2020-11-18 12:05:20.756955','30','FeedbackModel object (30)',3,'',16,1),(205,'2020-11-18 12:08:18.831554','33','FeedbackModel object (33)',3,'',16,1),(206,'2020-11-18 12:09:59.311650','34','FeedbackModel object (34)',3,'',16,1),(207,'2020-11-18 14:52:54.850649','36','FeedbackModel object (36)',3,'',16,1),(208,'2020-11-18 14:52:54.856651','35','FeedbackModel object (35)',3,'',16,1),(209,'2020-11-18 15:32:47.534851','11','ImageServiceModel object (11)',3,'',15,1),(210,'2020-11-18 15:32:52.953926','13','ImageServiceModel object (13)',1,'[{\"added\": {}}]',15,1),(211,'2020-11-18 15:33:05.298520','14','ImageServiceModel object (14)',1,'[{\"added\": {}}]',15,1),(212,'2020-11-18 15:33:20.513953','13','ImageServiceModel object (13)',3,'',15,1),(213,'2020-11-18 15:34:47.627499','15','ImageServiceModel object (15)',1,'[{\"added\": {}}]',15,1),(214,'2020-11-18 15:35:01.581028','15','ImageServiceModel object (15)',3,'',15,1),(215,'2020-11-18 19:04:18.905992','1','ServiceFormModel object (1)',3,'',17,1),(216,'2020-11-18 19:04:52.972289','2','ServiceFormModel object (2)',3,'',17,1),(217,'2020-11-18 19:06:30.851197','3','ServiceFormModel object (3)',3,'',17,1),(218,'2020-11-18 19:17:55.048063','4','ServiceFormModel object (4)',3,'',17,1),(219,'2020-11-18 19:20:43.392523','5','ServiceFormModel object (5)',3,'',17,1),(220,'2020-11-18 19:21:08.743398','6','ServiceFormModel object (6)',3,'',17,1),(221,'2020-11-18 19:24:41.707155','37','FeedbackModel object (37)',3,'',16,1),(222,'2020-11-18 19:25:08.520986','38','FeedbackModel object (38)',3,'',16,1),(223,'2020-11-18 20:35:09.209580','1','ApplicationModel object (1)',3,'',18,1),(224,'2020-11-18 20:37:25.816765','2','ApplicationModel object (2)',3,'',18,1),(225,'2020-11-19 07:12:47.876532','39','FeedbackModel object (39)',3,'',16,1),(226,'2020-11-19 07:22:01.024118','41','FeedbackModel object (41)',3,'',16,1),(227,'2020-11-19 07:22:01.031364','40','FeedbackModel object (40)',3,'',16,1),(228,'2020-11-19 07:22:11.466594','7','ServiceFormModel object (7)',3,'',17,1),(229,'2020-11-19 07:38:14.335400','16','ImageServiceModel object (16)',1,'[{\"added\": {}}]',15,1),(230,'2020-11-19 07:53:52.693985','16','ImageServiceModel object (16)',3,'',15,1),(231,'2020-11-19 07:53:52.700981','14','ImageServiceModel object (14)',3,'',15,1),(232,'2020-11-19 07:54:00.330642','17','ImageServiceModel object (17)',1,'[{\"added\": {}}]',15,1),(233,'2020-11-19 07:57:17.935899','17','ImageServiceModel object (17)',3,'',15,1),(234,'2020-11-19 07:57:35.991772','18','ImageServiceModel object (18)',1,'[{\"added\": {}}]',15,1),(235,'2020-11-19 08:15:00.956852','18','ImageServiceModel object (18)',3,'',15,1),(236,'2020-11-19 08:15:06.669469','19','ImageServiceModel object (19)',1,'[{\"added\": {}}]',15,1),(237,'2020-11-19 08:16:50.456725','19','ImageServiceModel object (19)',3,'',15,1),(238,'2020-11-19 08:16:57.054262','20','ImageServiceModel object (20)',1,'[{\"added\": {}}]',15,1),(239,'2020-11-19 08:33:16.199904','20','ImageServiceModel object (20)',3,'',15,1),(240,'2020-11-19 08:33:21.581902','21','ImageServiceModel object (21)',1,'[{\"added\": {}}]',15,1),(241,'2020-11-19 08:37:38.585593','21','ImageServiceModel object (21)',3,'',15,1),(242,'2020-11-19 08:37:51.893118','22','ImageServiceModel object (22)',1,'[{\"added\": {}}]',15,1),(243,'2020-11-19 08:38:04.663942','23','ImageServiceModel object (23)',1,'[{\"added\": {}}]',15,1),(244,'2020-11-19 08:39:03.886890','23','ImageServiceModel object (23)',3,'',15,1),(245,'2020-11-19 08:39:03.890852','22','ImageServiceModel object (22)',3,'',15,1),(246,'2020-11-19 08:39:08.762210','24','ImageServiceModel object (24)',1,'[{\"added\": {}}]',15,1),(247,'2020-11-19 08:39:20.409337','25','ImageServiceModel object (25)',1,'[{\"added\": {}}]',15,1),(248,'2020-11-19 08:41:11.258501','26','ImageServiceModel object (26)',1,'[{\"added\": {}}]',15,1),(249,'2020-11-19 08:44:19.747002','27','ImageServiceModel object (27)',1,'[{\"added\": {}}]',15,1),(250,'2020-11-19 08:44:49.567212','27','ImageServiceModel object (27)',3,'',15,1),(251,'2020-11-19 08:45:25.004736','26','ImageServiceModel object (26)',3,'',15,1),(252,'2020-11-19 08:45:25.009360','25','ImageServiceModel object (25)',3,'',15,1),(253,'2020-11-19 08:45:25.012370','24','ImageServiceModel object (24)',3,'',15,1),(254,'2020-11-19 08:45:30.961206','28','ImageServiceModel object (28)',1,'[{\"added\": {}}]',15,1),(255,'2020-11-19 08:45:39.136504','29','ImageServiceModel object (29)',1,'[{\"added\": {}}]',15,1),(256,'2020-11-19 08:47:17.992649','11','ImageProductionModel object (11)',3,'',10,1),(257,'2020-11-19 08:48:48.750123','3','test <p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>',2,'[{\"changed\": {\"fields\": [\"body\", \"Status\", \"body_post\"]}}]',9,1),(258,'2020-11-19 08:49:19.539411','3','test <p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',9,1),(259,'2020-11-19 08:53:05.268078','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>test</li>\r\n	<li>test</li>\r\n	<li>tres</li>\r\n</ul>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(260,'2020-11-19 08:55:42.757138','1','АСФАЛЬТИРОВАНИЕ ДОРОГ',2,'[{\"changed\": {\"fields\": [\"body_table\"]}}]',14,1),(261,'2020-11-19 08:59:58.587769','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>test</li>\r\n	<li>test</li>\r\n	<li>tres</li>\r\n</ul>',2,'[]',11,1),(262,'2020-11-19 09:03:04.076176','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<pre>\r\n2 завода по производству асфальта (г. Псков, Остров)</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nШтат из 300 квалифицированных специалистов</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nП',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(263,'2020-11-19 09:03:37.088257','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<pre>\r\n2 завода по производству асфальта \r\n(г. Псков, Остров)</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nШтат из 300 квалифицированных специалистов</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(264,'2020-11-19 09:05:10.198307','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<pre>\r\n2 завода по производству асфальта (г. Псков, Остров)</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nШтат из 300 квалифицированных специалистов</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nП',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(265,'2020-11-19 09:05:43.839539','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<pre style=\"text-align:center\">\r\n2 завода по производству асфальта (г. Псков, Остров)</pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\nШтат из 300 квалифицированных специалистов</pre>',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(266,'2020-11-19 09:06:11.465010','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<pre>\r\n<span style=\"font-size:16px\">2 завода по производству асфальта (г. Псков, Остров)</span></pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\n<span style=\"font-size:16px\">Штат из 3',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(267,'2020-11-19 09:06:54.111095','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<pre>\r\n<span style=\"font-size:26px\">2 завода по производству асфальта (г. Псков, Остров)</span></pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\n<span style=\"font-size:26px\">Штат из 3',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(268,'2020-11-19 09:07:36.258547','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<div><span style=\"font-size:26px\">2 завода по производству асфальта (г. Псков, Остров)</span></div>\r\n	</li>\r\n	<li>\r\n	<div><span style=\"font-size:26px\">Штат из 300 к',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(269,'2020-11-19 09:08:02.734994','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<div><span style=\"font-size:26px\">2 завода по производству асфальта (г. Псков, Остров)</span></div>\r\n	</li>\r\n	<li>\r\n	<div><span style=\"font-size:26px\">Штат из 300 к',2,'[]',11,1),(270,'2020-11-19 09:08:17.751944','1','ПРОИЗВОДСТВЕННАЯ БАЗА <ul>\r\n	<li>\r\n	<div><span style=\"font-size:22px\">2 завода по производству асфальта (г. Псков, Остров)</span></div>\r\n	</li>\r\n	<li>\r\n	<div><span style=\"font-size:22px\">Штат из 300 к',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',11,1),(271,'2020-11-19 09:41:30.087666','1','РЕМОНТ ДОРОГ И ТРОТУАРОВ <p><span style=\"font-size:18px\"><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомоб',2,'[{\"changed\": {\"fields\": [\"body\"]}}]',7,1),(272,'2020-11-19 09:42:42.794789','1','test <p><span style=\"font-size:22px\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',13,1),(273,'2020-11-19 10:34:28.601162','4','test5 <p>test5</p>',1,'[{\"added\": {}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'dorss','applicationmodel'),(16,'dorss','feedbackmodel'),(8,'dorss','imagemodel'),(10,'dorss','imageproductionmodel'),(15,'dorss','imageservicemodel'),(7,'dorss','introimagesmodel'),(12,'dorss','newsmodel'),(13,'dorss','productionblogmodel'),(11,'dorss','productionmodels'),(9,'dorss','projectsmodel'),(17,'dorss','serviceformmodel'),(14,'dorss','servicemodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-12 07:42:17.525505'),(2,'auth','0001_initial','2020-11-12 07:42:17.711558'),(3,'admin','0001_initial','2020-11-12 07:42:18.377740'),(4,'admin','0002_logentry_remove_auto_add','2020-11-12 07:42:18.521745'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-12 07:42:18.537598'),(6,'contenttypes','0002_remove_content_type_name','2020-11-12 07:42:18.666600'),(7,'auth','0002_alter_permission_name_max_length','2020-11-12 07:42:18.736718'),(8,'auth','0003_alter_user_email_max_length','2020-11-12 07:42:18.773437'),(9,'auth','0004_alter_user_username_opts','2020-11-12 07:42:18.786869'),(10,'auth','0005_alter_user_last_login_null','2020-11-12 07:42:18.850225'),(11,'auth','0006_require_contenttypes_0002','2020-11-12 07:42:18.856058'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-12 07:42:18.868108'),(13,'auth','0008_alter_user_username_max_length','2020-11-12 07:42:18.943772'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-12 07:42:19.022896'),(15,'auth','0010_alter_group_name_max_length','2020-11-12 07:42:19.055152'),(16,'auth','0011_update_proxy_permissions','2020-11-12 07:42:19.068712'),(17,'auth','0012_alter_user_first_name_max_length','2020-11-12 07:42:19.147380'),(18,'sessions','0001_initial','2020-11-12 07:42:19.182752'),(19,'dorss','0001_initial','2020-11-12 11:05:16.430930'),(20,'dorss','0002_auto_20201112_1525','2020-11-12 12:26:07.198111'),(21,'dorss','0003_imagemodel','2020-11-13 08:20:57.680776'),(22,'dorss','0004_projectsmodel','2020-11-14 06:54:25.535138'),(23,'dorss','0005_auto_20201114_1422','2020-11-14 11:22:26.519536'),(24,'dorss','0006_auto_20201116_1327','2020-11-16 10:28:04.208744'),(25,'dorss','0007_auto_20201116_1411','2020-11-16 11:11:56.892806'),(26,'dorss','0008_auto_20201116_1601','2020-11-16 13:01:12.676787'),(27,'dorss','0009_auto_20201116_1604','2020-11-16 13:05:01.545137'),(28,'dorss','0010_remove_imageproductionmodel_image','2020-11-16 13:06:38.042749'),(29,'dorss','0011_auto_20201116_1614','2020-11-16 13:14:38.169926'),(30,'dorss','0012_auto_20201116_1620','2020-11-16 13:20:30.272815'),(31,'dorss','0013_auto_20201116_1654','2020-11-16 13:54:41.573600'),(32,'dorss','0014_servicemodel','2020-11-17 09:16:25.143879'),(33,'dorss','0015_remove_servicemodel_image','2020-11-17 09:21:35.138152'),(34,'dorss','0016_imageservicemodel','2020-11-17 09:26:48.185350'),(35,'dorss','0017_remove_servicemodel_price','2020-11-17 09:41:40.860672'),(36,'dorss','0018_servicemodel_price','2020-11-17 12:18:35.413559'),(37,'dorss','0019_feedbackmodel','2020-11-17 14:10:21.862819'),(38,'dorss','0020_auto_20201118_1730','2020-11-18 14:30:29.551432'),(39,'dorss','0021_auto_20201118_1732','2020-11-18 14:32:24.163327'),(40,'dorss','0022_applicationmodel','2020-11-18 19:52:37.811451'),(41,'dorss','0023_auto_20201118_2335','2020-11-18 20:35:26.076174'),(42,'dorss','0024_auto_20201119_1101','2020-11-19 08:01:19.031712'),(43,'dorss','0025_auto_20201119_1132','2020-11-19 08:32:56.241198'),(44,'dorss','0026_auto_20201119_1137','2020-11-19 08:37:19.262396');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4ua9sjhfcuqyfjs7ffe09n7pe076t3x8','.eJxVjDsOwyAQBe9CHSHw8k2Z3mdAywLBSYQlY1dR7h5bcpG0b2bemwXc1hq2npcwJXZlkl1-t4j0zO0A6YHtPnOa27pMkR8KP2nn45zy63a6fwcVe91rT95JbQyWlIok5TKAcmAkDOQgEihtKGbQZYigrRcFbRFR7iRLIyz7fAHaMTei:1kfgRW:g1Lw--fknw5YeGfm6FIc8-y0lGVs1rXx8eiDUf5wuHc','2020-12-03 09:41:30.204442'),('lhz7chbri8uq9ftz8w8zrgg8zhnzx5qo','.eJxVjDsOwyAQBe9CHSHw8k2Z3mdAywLBSYQlY1dR7h5bcpG0b2bemwXc1hq2npcwJXZlkl1-t4j0zO0A6YHtPnOa27pMkR8KP2nn45zy63a6fwcVe91rT95JbQyWlIok5TKAcmAkDOQgEihtKGbQZYigrRcFbRFR7iRLIyz7fAHaMTei:1kdqnq:18Em8nGytdEQv-Qnkq4L33CoMn0CRJfzjtSacMuKlyQ','2020-11-28 08:20:58.837163');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_applicationmodel`
--

DROP TABLE IF EXISTS `dorss_applicationmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_applicationmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `organization` varchar(200) NOT NULL,
  `organization_object` varchar(200) NOT NULL,
  `variety` varchar(200) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `supply` date NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_applicationmodel`
--

LOCK TABLES `dorss_applicationmodel` WRITE;
/*!40000 ALTER TABLE `dorss_applicationmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `dorss_applicationmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_feedbackmodel`
--

DROP TABLE IF EXISTS `dorss_feedbackmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_feedbackmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_feedbackmodel`
--

LOCK TABLES `dorss_feedbackmodel` WRITE;
/*!40000 ALTER TABLE `dorss_feedbackmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `dorss_feedbackmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_imagemodel`
--

DROP TABLE IF EXISTS `dorss_imagemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_imagemodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_imagemodel`
--

LOCK TABLES `dorss_imagemodel` WRITE;
/*!40000 ALTER TABLE `dorss_imagemodel` DISABLE KEYS */;
INSERT INTO `dorss_imagemodel` VALUES (5,'intro/2020/article-slide-1_alxepbF.jpg'),(6,'intro/2020/intro-slide-1_WwhVN4C.jpg');
/*!40000 ALTER TABLE `dorss_imagemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_imageproductionmodel`
--

DROP TABLE IF EXISTS `dorss_imageproductionmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_imageproductionmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_imageproductionmodel`
--

LOCK TABLES `dorss_imageproductionmodel` WRITE;
/*!40000 ALTER TABLE `dorss_imageproductionmodel` DISABLE KEYS */;
INSERT INTO `dorss_imageproductionmodel` VALUES (9,'production/2020/project-3.jpg'),(10,'production/2020/article-slide-1_FFG3Fna.jpg'),(12,'production/2020/404-bg.png');
/*!40000 ALTER TABLE `dorss_imageproductionmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_imageservicemodel`
--

DROP TABLE IF EXISTS `dorss_imageservicemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_imageservicemodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_serv` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_imageservicemodel`
--

LOCK TABLES `dorss_imageservicemodel` WRITE;
/*!40000 ALTER TABLE `dorss_imageservicemodel` DISABLE KEYS */;
INSERT INTO `dorss_imageservicemodel` VALUES (28,'service/2020/article-slide-1.jpg'),(29,'service/2020/intro-slide-1.jpg');
/*!40000 ALTER TABLE `dorss_imageservicemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_introimagesmodel`
--

DROP TABLE IF EXISTS `dorss_introimagesmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_introimagesmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_introimagesmodel`
--

LOCK TABLES `dorss_introimagesmodel` WRITE;
/*!40000 ALTER TABLE `dorss_introimagesmodel` DISABLE KEYS */;
INSERT INTO `dorss_introimagesmodel` VALUES (1,'РЕМОНТ ДОРОГ И ТРОТУАРОВ','<p><span style=\"font-size:18px\"><strong>ООО &ldquo;ДорСтройСервис&rdquo; - одна из крупнейших компаний Псковской области в сфере строительства, реконструкции и ремонта автомобильных дорог территориального значения.&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Вот уже 15 лет мы стабильно работаем и успешно развиваемся на рынке дорожного строительства на территории Псковской области. В основе многолетнего успеха лежит непрекращающаяся работа по изучению, внедрению и использованию современных технологий, высококачественных дорожно-строительных материалов, инновационной техники, а также тщательный подбор персонала.</strong></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><strong>Наличие собственных производственных мощностей и собственной лабораторной службы гарантирует высокие показатели качества материалов, а следовательно, и надежность дорог.</strong></span></p>');
/*!40000 ALTER TABLE `dorss_introimagesmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_newsmodel`
--

DROP TABLE IF EXISTS `dorss_newsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_newsmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `title_image` varchar(250) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dorss_newsmodel_slug_6ac34226` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_newsmodel`
--

LOCK TABLES `dorss_newsmodel` WRITE;
/*!40000 ALTER TABLE `dorss_newsmodel` DISABLE KEYS */;
INSERT INTO `dorss_newsmodel` VALUES (1,'ПОЧТИ ЗА ТРИ НЕДЕЛИ ДО СРОКА СДАЧИ ПО КОНТРАКТУ БЫЛА ПРОВЕДЕНА СДАЧА И ПРИЁМКА РИЖСКОГО ПРОСПЕКТА!','test','<p>Почти за три недели до срока сдачи по контракту была проведена сдача и приёмка Рижского проспекта!<br />\r\nКонтракт по ремонту Рижского пр-а на участке от ул. Ленина до ул. Юбилейной за исключением моста был заключен в рамках национального проекта &quot;Безопасные и качественные автомобильные дороги&quot; 04.02.2020, срок сдачи по контракту 28.08.2020.<br />\r\n<br />\r\nПротяженность ремонтируемого участка 2,304 км.<br />\r\n<br />\r\nСтоимость контракта 94,51 млн.</p>\r\n\r\n<ul>\r\n	<li>отфрезеровано 42 тыс. м. кв. проезжей части;</li>\r\n	<li>уложено больше 3,6 тыс. тонн выравнивающего слоя;</li>\r\n	<li>уложены геосетка и уложен верхний слой асфальтобетонного покрытия на площади 42 тыс. м. кв.;</li>\r\n	<li>установлено больше 4 км. 18-ого бортового камня;</li>\r\n	<li>нанесено термопластиком 1183 м. кв. разметки.</li>\r\n</ul>','news/2020/intro-slide-1.jpg','ул. Боровая в г. Пскове 2020 г.','2020-11-16 13:28:29.000000','published'),(2,'07.07.2020 ЗАВЕРШЕН ПЕРВЫЙ В ЭТОМ ГОДУ В Г. ПСКОВЕ КОНТРАКТ В РАМКАХ НАЦИОНАЛЬНОГО ПРОЕКТА \"БЕЗОПАСНЫЕ И КАЧЕСТВЕННЫЕ АВТОМОБИЛЬНЫЕ ДОРОГИ\"','object-3','<p>07.07.2020 Завершен первый в этом году в г. Пскове контракт в рамках национального проекта &quot;Безопасные и качественные автомобильные дороги&quot; по ремонту ул. Боровая. В рамках контракта были выполнены работы по фрезерованию проезжей части, укладке выравнивающего и верхнего слоёв асфальтобетонного покрытия, отремонтирована остановка и тротуары, на проезжей части нанесена разметка термопластиком.&nbsp;<strong>Объект сдан раньше срока на 2 недели</strong></p>','news/2020/intro-slide-2.jpg','ЗАВЕРШЕН ПЕРВЫЙ В ЭТОМ ГОДУ В Г. ПСКОВЕ КОНТРАКТ В РАМКАХ НАЦИОНАЛЬНОГО ПРОЕКТА \"БЕЗОПАСНЫЕ И КАЧЕСТВЕННЫЕ АВТОМОБИЛЬНЫЕ ДОРОГИ\"','2020-11-16 13:34:26.000000','published'),(3,'ПРОДОЛЖАЕМ РЕМОНТ АВТОМОБИЛЬНОЙ ДОРОГИ НЕЕЛОВО - КУДИНА ГОРА – ПЕЧОРЫ','obekt-5','<p>Продолжаем ремонт автомобильной дороги Неелово - Кудина Гора &ndash; Печоры на участке км 27+245 - км 35+566 в Печорском районе Псковской области.<br />\r\nВ рамках контракта предусмотрен перечень работ по ремонту дорожного полотна, съездов, обочин, водопропускных труб и остановки.<br />\r\nСрок сдачи контракта 14 августа 2020</p>','news/2020/intro-slide-3.jpg','','2020-11-16 13:35:46.000000','published');
/*!40000 ALTER TABLE `dorss_newsmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_productionblogmodel`
--

DROP TABLE IF EXISTS `dorss_productionblogmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_productionblogmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dorss_productionblogmodel_slug_632517b7` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_productionblogmodel`
--

LOCK TABLES `dorss_productionblogmodel` WRITE;
/*!40000 ALTER TABLE `dorss_productionblogmodel` DISABLE KEYS */;
INSERT INTO `dorss_productionblogmodel` VALUES (1,'test','test3','<p><span style=\"font-size:22px\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</span></p>','news/2020/production-slide-3_0R4kjgo.jpg','2020-11-16 13:56:11.000000','published'),(2,'test2','test4','<p><span style=\"font-size:22px\">Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</span></p>','news/2020/project-1.jpg','2020-11-16 14:19:11.000000','published'),(3,'test3','23','<p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>\r\n\r\n<h1><span style=\"font-size:22px\">fdsfsdf</span></h1>','news/2020/production-slide-3.jpg','2020-11-17 08:05:04.000000','published'),(4,'test5','test5','<p>test5</p>','news/2020/404-bg.png','2020-11-19 10:34:12.000000','published');
/*!40000 ALTER TABLE `dorss_productionblogmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_productionmodels`
--

DROP TABLE IF EXISTS `dorss_productionmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_productionmodels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `title_body` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_productionmodels`
--

LOCK TABLES `dorss_productionmodels` WRITE;
/*!40000 ALTER TABLE `dorss_productionmodels` DISABLE KEYS */;
INSERT INTO `dorss_productionmodels` VALUES (1,'ПРОИЗВОДСТВЕННАЯ БАЗА','<ul>\r\n	<li>\r\n	<div><span style=\"font-size:22px\">2 завода по производству асфальта (г. Псков, Остров)</span></div>\r\n	</li>\r\n	<li>\r\n	<div><span style=\"font-size:22px\">Штат из 300 квалифицированных специалистов</span></div>\r\n	</li>\r\n	<li>\r\n	<div><span style=\"font-size:22px\">Парк из 700 единиц техники</span></div>\r\n	</li>\r\n</ul>','В производственную базу компании “ДорСтройСервис” входят:');
/*!40000 ALTER TABLE `dorss_productionmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_projectsmodel`
--

DROP TABLE IF EXISTS `dorss_projectsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_projectsmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `publish` datetime(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `body_post` longtext NOT NULL,
  `title_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dorss_projectsmodel_slug_6a1c3ec1` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_projectsmodel`
--

LOCK TABLES `dorss_projectsmodel` WRITE;
/*!40000 ALTER TABLE `dorss_projectsmodel` DISABLE KEYS */;
INSERT INTO `dorss_projectsmodel` VALUES (1,'РЕМОНТ УЛ. БОРОВАЯ В Г. ПСКОВЕ 2020','obekt-1','<p>10.02.2020 между ООО &laquo;ДорСтройСервис&raquo; и УГХ АДМИНИСТРАЦИИ ГОРОДА ПСКОВА был заключен контракт в рамках национального проекта &laquo;Безопасные и качественные автомобильные дороги&raquo; на ремонт ул. Боровая в г. Пскове.</p>','project/2020/project-1.jpg','2020-11-14 07:00:50.000000','published','<p><strong>ул. Боровая в г. Пскове 2020</strong></p>','ул. Боровая в г. Пскове 2020 г.'),(2,'РЕМОНТ РИЖСКОГО ПРОСПЕКТА В Г. ПСКОВЕ 2020','obekt-2','<p>Объект: Ремонт Рижского проспекта (участок от пл. Ленина до ул. Юбилейная) в городе Пскове Сроки выполнения работ: 04.02.2020 - 10.08.2020 Заказчик: УГХ администрации города Пскова Контракт по ремонту Рижского пр-та на участке от ул. Ленина до ул. Юбилейной за исключением моста был заключен в рамках национального проекта &laquo;Безопасные и качественные автомобильные дороги&raquo; 04.02.2020, срок сдачи по контракту 28.08.2020. Работы на проспекте начались 17 марта и завершились на 3 недели раньше. За это время отремонтировано 2,3 км дороги.</p>','project/2020/project-2.jpg','2020-11-14 08:18:02.000000','published','<p><strong>Рижский проспект (участок от пл. Ленина до ул. Юбилейная) в г. Пскове 2020</strong></p>',''),(3,'test','obekt-3','<p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века.</p>','project/2020/project-3.jpg','2020-11-14 08:21:20.000000','draft','<p>Это текст-&quot;рыба&quot;, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. Только на заставке к статье</p>',''),(4,'Ремонт  и обслуживание дорог','test','<p>ddsada</p>','project/2020/production-slide-3.jpg','2020-11-14 08:24:27.000000','published','<p><strong>Это текст-&quot;рыба&quot;, &nbsp;часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной &quot;рыбой&quot; для текстов на латинице с начала XVI века. Только на заставке к статье</strong></p>','ул. Боровая в г. Пскове 2020 г.');
/*!40000 ALTER TABLE `dorss_projectsmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_serviceformmodel`
--

DROP TABLE IF EXISTS `dorss_serviceformmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_serviceformmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_serviceformmodel`
--

LOCK TABLES `dorss_serviceformmodel` WRITE;
/*!40000 ALTER TABLE `dorss_serviceformmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `dorss_serviceformmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dorss_servicemodel`
--

DROP TABLE IF EXISTS `dorss_servicemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dorss_servicemodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `body_center` longtext NOT NULL,
  `title_project` varchar(200) NOT NULL,
  `title_table` varchar(250) NOT NULL,
  `body_table` longtext NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorss_servicemodel`
--

LOCK TABLES `dorss_servicemodel` WRITE;
/*!40000 ALTER TABLE `dorss_servicemodel` DISABLE KEYS */;
INSERT INTO `dorss_servicemodel` VALUES (1,'АСФАЛЬТИРОВАНИЕ ДОРОГ','<p><span style=\"font-size:18px\">Если вам нужно действительно качественное и быстрое асфальтирование дорог, обращаться в органы городского управления не имеет смысла.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px\">Помочь вам сможет только специализированная компания, например - &ldquo;ДорСтройСервис&rdquo;. Мы уже давно занимаемся благоустройством, имеем необходимую технику и большой штат специалистов. При необходимости мы постелем асфальт в самые короткие сроки, и по доступной цене!</span></p>','<h1>ДАЛЬНЕЙШИЕ СТРОИТЕЛЬНЫЕ РАБОТЫ УСЛОВНО МОЖНО РАЗДЕЛИТЬ НА СЛЕДУЮЩИЕ ЭТАПЫ:</h1>\r\n\r\n<ul>\r\n	<li>подготовительные работы (вырубка деревьев, разборка ограждений и т. п.</li>\r\n	<li>земляные работы (вывоз или завоз грунта, укрепление земляного полотна, сооружение земляных насыпей и т. д.)</li>\r\n	<li>прокладка новых или перекладка существующих инженерных коммуникаций, попадающих в зону строительства</li>\r\n	<li>устройство оснований &laquo;дорожного пирога&raquo; (устройство подстилающего слоя из песка, &laquo;заливка&raquo; основания из щебня или бетона)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>НАИМЕНОВАНИЕ РАБОТЫ</h1>\r\n\r\n<ol>\r\n	<li>асфальтирование мелкозернистым асфальтобетоном</li>\r\n	<li>асфальтирование песчаным асфальтобетоном</li>\r\n	<li>асфальтирование крупнозерниcтым асфальтобетоном</li>\r\n	<li>асфальтирование щебеночно-мастичным асфальтобетоном</li>\r\n</ol>','ПРИМЕРЫ ВЫПОЛНЕННЫХ ПРОЕКТОВ','ЦЕНЫ НА УСЛУГИ ПО АСФАЛЬТИРОВАНИЮ И СОПУТСТВУЮЩИЕ УСЛУГИ','<table align=\"right\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\">Вид работ</span></td>\r\n			<td><span style=\"font-size:22px\">Толщ., см</span></td>\r\n			<td><span style=\"font-size:22px\">Ед. изм.</span></td>\r\n			<td><span style=\"font-size:22px\">Цена за ед, руб</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\">Разработка грунта с погрузкой на автомобили-самосвалы экскаваторами с ковшом вместимостью 0,25 м3, группа грунтов 2</span></td>\r\n			<td><span style=\"font-size:22px\">4-5</span></td>\r\n			<td><span style=\"font-size:22px\">м2</span></td>\r\n			<td><span style=\"font-size:22px\">360</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\">Устройство покрытия из мелкозернистого асфальта</span></td>\r\n			<td><span style=\"font-size:22px\">4-5</span></td>\r\n			<td><span style=\"font-size:22px\">м2</span></td>\r\n			<td><span style=\"font-size:22px\">800</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\">Разборка бортовых камней на бетонном основании</span></td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:22px\">м.п.</span></td>\r\n			<td><span style=\"font-size:22px\">180</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td><span style=\"font-size:22px\">Валка деревьев в городских условиях (дуб, бук, граб, клен, ясень) диаметром до 300 мм</span></td>\r\n			<td>&nbsp;</td>\r\n			<td><span style=\"font-size:22px\">м.п.</span></td>\r\n			<td><span style=\"font-size:22px\">320</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>','От 450 руб/м2');
/*!40000 ALTER TABLE `dorss_servicemodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19 14:35:16
