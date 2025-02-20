CREATE DATABASE  IF NOT EXISTS `stok` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stok`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: stok
-- ------------------------------------------------------
-- Server version	8.0.37

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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add musteri',7,'add_musteri'),(26,'Can change musteri',7,'change_musteri'),(27,'Can delete musteri',7,'delete_musteri'),(28,'Can view musteri',7,'view_musteri'),(29,'Can add urun',8,'add_urun'),(30,'Can change urun',8,'change_urun'),(31,'Can delete urun',8,'delete_urun'),(32,'Can view urun',8,'view_urun'),(33,'Can add siparis',9,'add_siparis'),(34,'Can change siparis',9,'change_siparis'),(35,'Can delete siparis',9,'delete_siparis'),(36,'Can view siparis',9,'view_siparis'),(37,'Can add log',10,'add_log'),(38,'Can change log',10,'change_log'),(39,'Can delete log',10,'delete_log'),(40,'Can view log',10,'view_log'),(41,'Can add sistem durumu',11,'add_sistemdurumu'),(42,'Can change sistem durumu',11,'change_sistemdurumu'),(43,'Can delete sistem durumu',11,'delete_sistemdurumu'),(44,'Can view sistem durumu',11,'view_sistemdurumu');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'ilk','log'),(7,'ilk','musteri'),(9,'ilk','siparis'),(11,'ilk','sistemdurumu'),(8,'ilk','urun'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-12-11 12:52:24.772416'),(2,'auth','0001_initial','2024-12-11 12:52:25.406545'),(3,'admin','0001_initial','2024-12-11 12:52:25.535111'),(4,'admin','0002_logentry_remove_auto_add','2024-12-11 12:52:25.550749'),(5,'admin','0003_logentry_add_action_flag_choices','2024-12-11 12:52:25.563746'),(6,'contenttypes','0002_remove_content_type_name','2024-12-11 12:52:25.646216'),(7,'auth','0002_alter_permission_name_max_length','2024-12-11 12:52:25.706128'),(8,'auth','0003_alter_user_email_max_length','2024-12-11 12:52:25.727525'),(9,'auth','0004_alter_user_username_opts','2024-12-11 12:52:25.734023'),(10,'auth','0005_alter_user_last_login_null','2024-12-11 12:52:25.781689'),(11,'auth','0006_require_contenttypes_0002','2024-12-11 12:52:25.781689'),(12,'auth','0007_alter_validators_add_error_messages','2024-12-11 12:52:25.797314'),(13,'auth','0008_alter_user_username_max_length','2024-12-11 12:52:25.868843'),(14,'auth','0009_alter_user_last_name_max_length','2024-12-11 12:52:25.926725'),(15,'auth','0010_alter_group_name_max_length','2024-12-11 12:52:25.940860'),(16,'auth','0011_update_proxy_permissions','2024-12-11 12:52:25.948193'),(17,'auth','0012_alter_user_first_name_max_length','2024-12-11 12:52:26.009272'),(18,'sessions','0001_initial','2024-12-11 12:52:26.048950'),(19,'ilk','0001_initial','2024-12-13 22:16:12.231142'),(20,'ilk','0002_siparis_bekleme_baslangic_siparis_oncelik_skoru','2024-12-14 13:04:33.282068'),(21,'ilk','0003_sistemdurumu','2024-12-23 15:10:58.763804'),(22,'ilk','0004_alter_musteri_toplam_harcama','2024-12-23 15:43:35.630685'),(23,'ilk','0005_alter_musteri_toplam_harcama','2024-12-23 15:46:17.771955');
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
INSERT INTO `django_session` VALUES ('1zj1l3b3w38tri49mu2oaxylu1gevett','eyJrdWxsYW5pY2lfaWQiOjEzLCJpc19hZG1pbiI6ZmFsc2V9:1tPlFY:FS3-o9Gjmjd9CKcUqsplfh8FQ5t-GmGtmhZXoXErZ7M','2025-01-06 16:25:44.719982');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_log`
--

DROP TABLE IF EXISTS `ilk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_turu` varchar(50) NOT NULL,
  `log_tarihi` datetime(6) NOT NULL,
  `detaylar` longtext NOT NULL,
  `musteri_id` int DEFAULT NULL,
  `siparis_id` int DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `ilk_log_musteri_id_28c7c124_fk_ilk_musteri_musteri_id` (`musteri_id`),
  KEY `ilk_log_siparis_id_3af947ca_fk_ilk_siparis_siparis_id` (`siparis_id`),
  CONSTRAINT `ilk_log_musteri_id_28c7c124_fk_ilk_musteri_musteri_id` FOREIGN KEY (`musteri_id`) REFERENCES `ilk_musteri` (`musteri_id`),
  CONSTRAINT `ilk_log_siparis_id_3af947ca_fk_ilk_siparis_siparis_id` FOREIGN KEY (`siparis_id`) REFERENCES `ilk_siparis` (`siparis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_log`
--

LOCK TABLES `ilk_log` WRITE;
/*!40000 ALTER TABLE `ilk_log` DISABLE KEYS */;
INSERT INTO `ilk_log` VALUES (1,'Bilgi','2024-12-14 12:10:59.686146','Müşteri Türü: Premium, İşlem Sonucu: Statü yükseltildi.',NULL,NULL),(2,'Bilgi','2024-12-14 12:10:59.691166','Müşteri Türü: Premium, Ürün: Monitör, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-14 12:10:59.691166+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(3,'Bilgi','2024-12-14 13:55:16.864409','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-14 13:55:16.864409+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(4,'Bilgi','2024-12-14 14:18:25.052982','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-14 14:18:25.052982+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(5,'Bilgi','2024-12-14 14:25:56.544958','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-14 14:25:56.543959+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(6,'Uyarı','2024-12-14 14:26:09.173856','Admin, sipariş 14 iptal etti. Ürün: Harici Disk, Adet: 2, Stok eski haline getirildi.',NULL,NULL),(7,'Bilgi','2024-12-14 14:26:48.197181','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 4, İşlem Zamanı: 2024-12-14 14:26:48.197181+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(8,'Uyarı','2024-12-14 14:27:17.312933','Admin, sipariş 15 iptal etti. Ürün: Mouse, Adet: 4, Stok eski haline getirildi.',NULL,NULL),(9,'Bilgi','2024-12-14 14:31:52.972590','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-14 14:31:52.972590+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(10,'Bilgi','2024-12-14 14:31:59.168725','Müşteri Türü: Premium, İşlem Sonucu: Statü yükseltildi.',NULL,NULL),(11,'Bilgi','2024-12-14 14:31:59.172448','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-14 14:31:59.172448+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(12,'Bilgi','2024-12-14 14:32:25.632884','Admin, sipariş 16 onayladı. Ürün: Klavye, Adet: 1, Stok güncellendi.',NULL,NULL),(13,'Uyarı','2024-12-14 14:32:33.525499','Admin, sipariş 17 iptal etti. Ürün: Mouse, Adet: 1, Stok eski haline getirildi.',NULL,NULL),(14,'Bilgi','2024-12-14 14:35:30.508060','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-14 14:35:30.508060+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(15,'Bilgi','2024-12-14 15:39:28.980354','Müşteri Türü: Premium, İşlem Sonucu: Statü yükseltildi.',NULL,NULL),(16,'Bilgi','2024-12-14 15:39:28.981346','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-14 15:39:28.981346+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(17,'Uyarı','2024-12-14 15:42:31.716380','Admin, sipariş 19 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi.',NULL,NULL),(18,'Bilgi','2024-12-14 15:42:41.648189','Admin, sipariş 18 onayladı. Ürün: Mouse, Adet: 1, Stok güncellendi.',NULL,NULL),(19,'Bilgi','2024-12-16 16:28:28.931778','Müşteri Türü: Premium, Ürün: USB Bellek, Satın Alınan Miktar: 5, İşlem Zamanı: 2024-12-16 16:28:28.931778+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(20,'Uyarı','2024-12-16 16:28:37.919599','Admin, sipariş 20 iptal etti. Ürün: USB Bellek, Adet: 5, Stok eski haline getirildi.',NULL,NULL),(21,'Bilgi','2024-12-16 16:29:22.686033','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-16 16:29:22.686033+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(22,'Uyarı','2024-12-16 16:29:47.607773','Admin, sipariş 21 iptal etti. Ürün: Klavye, Adet: 2, Stok eski haline getirildi.',NULL,NULL),(23,'Bilgi','2024-12-16 16:31:07.410737','Müşteri Türü: Premium, Ürün: USB Bellek, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-16 16:31:07.410737+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(24,'Uyarı','2024-12-16 16:31:19.913832','Admin, sipariş 22 iptal etti. Ürün: USB Bellek, Adet: 1, Stok eski haline getirildi.',NULL,NULL),(25,'Bilgi','2024-12-16 16:36:13.159294','Müşteri Türü: Premium, Ürün: USB Bellek, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-16 16:36:13.159294+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(26,'Uyarı','2024-12-16 16:36:22.471097','Admin, sipariş 23 iptal etti. Ürün: USB Bellek, Adet: 1, Stok eski haline getirildi.',NULL,NULL),(27,'Bilgi','2024-12-16 16:45:59.851179','Müşteri Türü: Premium, Ürün: USB Bellek, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-16 16:45:59.851179+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(28,'Uyarı','2024-12-16 16:46:27.389636','Admin, sipariş 24 iptal etti. Ürün: USB Bellek, Adet: 1, Stok eski haline getirildi.',NULL,NULL),(29,'Bilgi','2024-12-23 15:29:48.984876','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:29:48.984876+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(30,'Uyarı','2024-12-23 15:30:02.885206','Admin, sipariş 25 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(31,'Bilgi','2024-12-23 15:34:09.310258','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:34:09.310258+00:00, İşlem Sonucu: Sipariş beklemeye alındı.',NULL,NULL),(32,'Uyarı','2024-12-23 15:34:18.436525','Admin, sipariş 26 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(33,'Bilgi','2024-12-23 15:37:35.307738','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:37:35.307738+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(34,'Uyarı','2024-12-23 15:37:43.406446','Admin, sipariş 27 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(35,'Bilgi','2024-12-23 15:44:00.412422','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:44:00.412422+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(36,'Uyarı','2024-12-23 15:44:09.417858','Admin, sipariş 28 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(37,'Bilgi','2024-12-23 15:45:40.834535','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:45:40.834535+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(38,'Uyarı','2024-12-23 15:46:29.361848','Admin, sipariş 29 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(39,'Bilgi','2024-12-23 15:50:28.027843','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:50:28.027843+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(40,'Uyarı','2024-12-23 15:50:35.993698','Admin, sipariş 30 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(41,'Bilgi','2024-12-23 15:52:33.677899','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:52:33.677899+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(42,'Bilgi','2024-12-23 15:52:48.046108','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:52:48.046108+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(43,'Bilgi','2024-12-23 15:53:29.471208','Admin, sipariş 31 onayladı. Ürün: Harici Disk, Adet: 1, Stok güncellendi.',NULL,NULL),(44,'Bilgi','2024-12-23 15:56:44.348612','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:56:44.348612+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(45,'Bilgi','2024-12-23 15:57:00.132017','Admin, sipariş 33 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(46,'Bilgi','2024-12-23 15:59:20.921821','Müşteri Türü: Premium, İşlem Sonucu: Statü yükseltildi.',NULL,NULL),(47,'Bilgi','2024-12-23 15:59:20.922668','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 15:59:20.922668+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(48,'Uyarı','2024-12-23 15:59:54.876892','Admin, sipariş 32 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(49,'Uyarı','2024-12-23 15:59:55.937560','Admin, sipariş 34 iptal etti. Ürün: Mouse, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(50,'Bilgi','2024-12-23 16:00:46.787758','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-23 16:00:46.787758+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(51,'Bilgi','2024-12-23 16:00:58.110228','Admin, sipariş 35 onayladı. Ürün: Harici Disk, Adet: 3, Stok güncellendi.',NULL,NULL),(52,'Bilgi','2024-12-23 16:02:55.306243','Müşteri Türü: Premium, İşlem Sonucu: Statü yükseltildi.',NULL,NULL),(53,'Bilgi','2024-12-23 16:02:55.307021','Müşteri Türü: Premium, Ürün: USB Bellek, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:02:55.307021+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(54,'Bilgi','2024-12-23 16:03:12.963313','Müşteri Türü: Standart, Ürün: Laptop, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:03:12.963313+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(55,'Uyarı','2024-12-23 16:03:21.867680','Admin, sipariş 36 iptal etti. Ürün: USB Bellek, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(56,'Bilgi','2024-12-23 16:03:24.155727','Admin, sipariş 37 onayladı. Ürün: Laptop, Adet: 1, Stok güncellendi.',NULL,NULL),(57,'Bilgi','2024-12-23 16:04:17.881929','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:04:17.881929+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(58,'Bilgi','2024-12-23 16:04:22.911360','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:04:22.911360+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(59,'Bilgi','2024-12-23 16:04:31.847563','Admin, sipariş 38 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(60,'Uyarı','2024-12-23 16:04:33.704929','Admin, sipariş 39 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(61,'Bilgi','2024-12-23 16:05:13.800848','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:05:13.800848+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(62,'Bilgi','2024-12-23 16:06:15.616625','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:06:15.616625+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(63,'Bilgi','2024-12-23 16:06:24.211668','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:06:24.211668+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(64,'Bilgi','2024-12-23 16:06:49.524103','Admin, sipariş 41 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(65,'Uyarı','2024-12-23 16:06:55.772282','Admin, sipariş 42 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(66,'Bilgi','2024-12-23 16:09:20.191644','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:09:20.191644+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(67,'Bilgi','2024-12-23 16:09:26.634506','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:09:26.634506+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(68,'Bilgi','2024-12-23 16:09:33.933273','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:09:33.933273+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(69,'Uyarı','2024-12-23 16:09:46.725661','Admin, sipariş 40 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(70,'Bilgi','2024-12-23 16:09:52.572255','Admin, sipariş 43 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(71,'Bilgi','2024-12-23 16:10:01.327701','Admin, sipariş 44 onayladı. Ürün: Klavye, Adet: 1, Stok güncellendi.',NULL,NULL),(72,'Uyarı','2024-12-23 16:10:06.117626','Admin, sipariş 45 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(73,'Bilgi','2024-12-23 16:11:22.326716','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:11:22.326716+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(74,'Bilgi','2024-12-23 16:11:29.343924','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:11:29.343924+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(75,'Bilgi','2024-12-23 16:11:41.596273','Admin, sipariş 46 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(76,'Uyarı','2024-12-23 16:11:47.084068','Admin, sipariş 47 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(77,'Bilgi','2024-12-23 16:13:54.256984','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:13:54.255983+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(78,'Bilgi','2024-12-23 16:13:59.332374','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:13:59.332374+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(79,'Bilgi','2024-12-23 16:14:13.196344','Admin, sipariş 48 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(80,'Uyarı','2024-12-23 16:14:21.727467','Admin, sipariş 49 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(81,'Bilgi','2024-12-23 16:16:56.640715','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:16:56.640715+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(82,'Bilgi','2024-12-23 16:17:03.749913','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:17:03.749913+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(83,'Bilgi','2024-12-23 16:17:12.320800','Admin, sipariş 50 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(84,'Uyarı','2024-12-23 16:17:17.293139','Admin, sipariş 51 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(85,'Bilgi','2024-12-23 16:19:13.709483','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:19:13.709483+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(86,'Bilgi','2024-12-23 16:19:22.046243','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:19:22.046243+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(87,'Bilgi','2024-12-23 16:19:32.313918','Admin, sipariş 53 onayladı. Ürün: Harici Disk, Adet: 1, Stok güncellendi.',NULL,NULL),(88,'Uyarı','2024-12-23 16:19:34.004104','Admin, sipariş 52 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(89,'Bilgi','2024-12-23 16:21:38.528020','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:21:38.528020+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(90,'Bilgi','2024-12-23 16:21:44.990251','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:21:44.990251+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(91,'Bilgi','2024-12-23 16:21:52.200333','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:21:52.200333+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(92,'Bilgi','2024-12-23 16:22:15.941927','Müşteri Türü: Standart, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:22:15.941927+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(93,'Bilgi','2024-12-23 16:22:28.121312','Admin, sipariş 54 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(94,'Bilgi','2024-12-23 16:22:36.593005','Admin, sipariş 55 onayladı. Ürün: Harici Disk, Adet: 1, Stok güncellendi.',NULL,NULL),(95,'Bilgi','2024-12-23 16:22:39.475837','Admin, sipariş 56 onayladı. Ürün: Klavye, Adet: 1, Stok güncellendi.',NULL,NULL),(96,'Uyarı','2024-12-23 16:22:48.841718','Admin, sipariş 57 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(97,'Bilgi','2024-12-23 16:25:56.113608','Müşteri Türü: Standart, Ürün: Kulaklık, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:25:56.113608+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(98,'Bilgi','2024-12-23 16:26:04.934189','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-23 16:26:04.934189+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(99,'Bilgi','2024-12-23 16:26:11.780860','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-23 16:26:11.780860+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(100,'Bilgi','2024-12-23 16:26:23.424547','Admin, sipariş 59 onayladı. Ürün: Harici Disk, Adet: 2, Stok güncellendi.',NULL,NULL),(101,'Bilgi','2024-12-23 16:26:27.474842','Admin, sipariş 58 onayladı. Ürün: Kulaklık, Adet: 1, Stok güncellendi.',NULL,NULL),(102,'Uyarı','2024-12-23 16:26:28.779708','Admin, sipariş 60 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(103,'Bilgi','2024-12-25 10:00:15.582063','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-25 10:00:15.582063+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(104,'Bilgi','2024-12-25 10:02:33.106206','Admin, sipariş 61 onayladı. Ürün: Klavye, Adet: 3, Stok güncellendi.',NULL,NULL),(105,'Bilgi','2024-12-25 10:06:39.937495','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:06:39.937495+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(106,'Bilgi','2024-12-25 10:22:35.510293','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-25 10:22:35.510293+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(107,'Bilgi','2024-12-25 10:22:46.272584','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:22:46.272584+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(108,'Uyarı','2024-12-25 10:22:55.431505','Admin, sipariş 62 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(109,'Uyarı','2024-12-25 10:24:39.274290','Admin, sipariş 63 iptal etti. Ürün: Harici Disk, Adet: 2, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(110,'Uyarı','2024-12-25 10:24:41.429902','Admin, sipariş 64 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(111,'Bilgi','2024-12-25 10:24:59.476389','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:24:59.476389+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(112,'Bilgi','2024-12-25 10:25:08.857831','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:25:08.857831+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(113,'Bilgi','2024-12-25 10:40:00.362051','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:40:00.362051+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(114,'Bilgi','2024-12-25 10:43:31.306666','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:43:31.306666+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(115,'Bilgi','2024-12-25 10:50:25.926327','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:50:25.926327+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(116,'Bilgi','2024-12-25 10:55:34.713433','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 10:55:34.713433+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(117,'Bilgi','2024-12-25 10:55:56.466306','Admin, sipariş 70 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(118,'Bilgi','2024-12-25 11:00:39.371718','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 11:00:39.371718+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(119,'Bilgi','2024-12-25 11:26:04.597158','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 11:26:04.597158+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(120,'Hata','2024-12-25 11:31:58.212546','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 11:31:58.212546+00:00, İşlem Sonucu: Ürün stoğu yetersiz.',NULL,NULL),(121,'Bilgi','2024-12-25 11:32:10.216505','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 11:32:10.216505+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(122,'Bilgi','2024-12-25 11:41:16.755348','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-25 11:41:16.755348+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(123,'Uyarı','2024-12-25 14:17:43.805062','Admin, sipariş 66 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(124,'Uyarı','2024-12-25 14:17:46.097443','Admin, sipariş 65 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(125,'Uyarı','2024-12-25 14:18:01.083394','Admin, sipariş 67 iptal etti. Ürün: Akıllı Saat, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(126,'Uyarı','2024-12-25 14:18:04.533102','Admin, sipariş 68 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(127,'Uyarı','2024-12-25 14:18:06.556108','Admin, sipariş 69 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(128,'Uyarı','2024-12-25 14:18:08.155173','Admin, sipariş 71 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(129,'Uyarı','2024-12-25 14:18:10.001512','Admin, sipariş 72 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(130,'Uyarı','2024-12-25 14:18:12.258953','Admin, sipariş 73 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(131,'Uyarı','2024-12-25 14:18:14.065537','Admin, sipariş 74 iptal etti. Ürün: Klavye, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(132,'Bilgi','2024-12-25 14:43:51.268266','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-25 14:43:51.268266+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(133,'Uyarı','2024-12-25 14:44:30.479660','Admin, sipariş 75 iptal etti. Ürün: Mouse, Adet: 3, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(134,'Bilgi','2024-12-25 14:47:38.204134','Müşteri Türü: Premium, Ürün: USB Bellek, Satın Alınan Miktar: 4, İşlem Zamanı: 2024-12-25 14:47:38.204134+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(135,'Uyarı','2024-12-25 14:48:05.792124','Admin, sipariş 76 iptal etti. Ürün: USB Bellek, Adet: 4, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(136,'Bilgi','2024-12-26 09:55:59.814896','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 09:55:59.814896+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(137,'Bilgi','2024-12-26 09:56:05.450032','Müşteri Türü: Premium, Ürün: Tablet, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 09:56:05.450032+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(138,'Bilgi','2024-12-26 09:56:17.540644','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 09:56:17.540644+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(139,'Bilgi','2024-12-26 09:57:15.478248','Admin, sipariş 77 onayladı. Ürün: Harici Disk, Adet: 1, Stok güncellendi.',NULL,NULL),(140,'Bilgi','2024-12-26 09:57:15.481115','Admin, sipariş 78 onayladı. Ürün: Tablet, Adet: 1, Stok güncellendi.',NULL,NULL),(141,'Bilgi','2024-12-26 09:57:15.483287','Admin, sipariş 79 onayladı. Ürün: Harici Disk, Adet: 2, Stok güncellendi.',NULL,NULL),(142,'Bilgi','2024-12-26 09:57:18.225411','Admin, sipariş 77 onayladı. Ürün: Harici Disk, Adet: 1, Stok güncellendi.',NULL,NULL),(143,'Bilgi','2024-12-26 09:57:18.225411','Admin, sipariş 78 onayladı. Ürün: Tablet, Adet: 1, Stok güncellendi.',NULL,NULL),(144,'Bilgi','2024-12-26 09:57:18.232378','Admin, sipariş 79 onayladı. Ürün: Harici Disk, Adet: 2, Stok güncellendi.',NULL,NULL),(145,'Bilgi','2024-12-26 09:57:21.371663','Admin, sipariş 77 onayladı. Ürün: Harici Disk, Adet: 1, Stok güncellendi.',NULL,NULL),(146,'Bilgi','2024-12-26 09:57:21.376163','Admin, sipariş 78 onayladı. Ürün: Tablet, Adet: 1, Stok güncellendi.',NULL,NULL),(147,'Bilgi','2024-12-26 09:57:21.376163','Admin, sipariş 79 onayladı. Ürün: Harici Disk, Adet: 2, Stok güncellendi.',NULL,NULL),(148,'Uyarı','2024-12-26 10:01:57.549915','Admin, sipariş 77 iptal etti. Ürün: Harici Disk, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(149,'Uyarı','2024-12-26 10:04:57.878362','Admin, sipariş 78 iptal etti. Ürün: Tablet, Adet: 1, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(150,'Uyarı','2024-12-26 10:04:59.469913','Admin, sipariş 79 iptal etti. Ürün: Harici Disk, Adet: 2, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(151,'Bilgi','2024-12-26 10:05:15.394824','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 10:05:15.394824+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(152,'Bilgi','2024-12-26 10:08:11.153042','Admin, sipariş 80 onayladı. Ürün: Akıllı Saat, Adet: 1, Stok güncellendi.',NULL,NULL),(153,'Bilgi','2024-12-26 10:12:44.481028','Müşteri Türü: Premium, Ürün: Tablet, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 10:12:44.481028+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(154,'Bilgi','2024-12-26 10:13:04.865413','Müşteri Türü: Premium, İşlem Sonucu: Statü yükseltildi.',NULL,NULL),(155,'Bilgi','2024-12-26 10:13:04.878165','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 10:13:04.878165+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(156,'Uyarı','2024-12-26 10:28:41.327505','Admin, sipariş 82 iptal etti. Ürün: Harici Disk, Adet: 2, Stok eski haline getirildi. Müşterinin bütçesi güncellendi.',NULL,NULL),(157,'Bilgi','2024-12-26 11:07:21.204664','Toplu onaylama: Sipariş 81 onaylandı. Ürün: Tablet, Adet: 1',NULL,NULL),(158,'Bilgi','2024-12-26 11:07:49.448120','Müşteri Türü: Premium, Ürün: Klavye, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 11:07:49.448120+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(159,'Bilgi','2024-12-26 11:08:08.782706','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:08:08.782706+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(160,'Bilgi','2024-12-26 11:08:17.489835','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:08:17.489835+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(161,'Bilgi','2024-12-26 11:08:38.313317','Toplu onaylama: Sipariş 83 onaylandı. Ürün: Klavye, Adet: 1',NULL,NULL),(162,'Bilgi','2024-12-26 11:08:38.334748','Toplu onaylama: Sipariş 85 onaylandı. Ürün: Harici Disk, Adet: 2',NULL,NULL),(163,'Bilgi','2024-12-26 11:08:38.353773','Toplu onaylama: Sipariş 84 onaylandı. Ürün: Harici Disk, Adet: 2',NULL,NULL),(164,'Bilgi','2024-12-26 11:10:27.508172','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:10:27.508172+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(165,'Bilgi','2024-12-26 11:10:35.907815','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 11:10:35.907815+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(166,'Uyarı','2024-12-26 11:11:03.201845','Toplu onaylama: Sipariş 86 iptal edildi. Yetersiz stok. Ürün: Harici Disk, İstenen: 2, Mevcut: 0',NULL,NULL),(167,'Uyarı','2024-12-26 11:11:03.215642','Toplu onaylama: Sipariş 87 iptal edildi. Yetersiz stok. Ürün: Harici Disk, İstenen: 1, Mevcut: 0',NULL,NULL),(168,'Bilgi','2024-12-26 11:18:43.545340',' Harici Disk ürününün stok miktarını 3 arttırdı. Yeni Stok: 3.',NULL,NULL),(169,'Bilgi','2024-12-26 11:19:34.931195','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-26 11:19:34.931195+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(170,'Bilgi','2024-12-26 11:19:53.708693','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 11:19:53.708693+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(171,'Bilgi','2024-12-26 11:20:06.195049','Toplu onaylama: Sipariş 88 onaylandı. Ürün: Harici Disk, Adet: 3',NULL,NULL),(172,'Uyarı','2024-12-26 11:20:06.208414','Toplu onaylama: Sipariş 89 iptal edildi. Yetersiz stok. Ürün: Harici Disk, İstenen: 1, Mevcut: 0',NULL,NULL),(173,'Bilgi','2024-12-26 11:21:14.460220',' Harici Disk ürününün stok miktarını 3 arttırdı. Yeni Stok: 3.',NULL,NULL),(174,'Bilgi','2024-12-26 11:21:51.649507','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:21:51.649507+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(175,'Bilgi','2024-12-26 11:22:02.223894','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:22:02.223894+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(176,'Uyarı','2024-12-26 11:22:48.857343','Admin, sipariş 90 iptal etti. Ürün: Harici Disk, Adet: 2, Müşterinin bütçesi güncellendi.',NULL,NULL),(177,'Uyarı','2024-12-26 11:22:50.367088','Admin, sipariş 91 iptal etti. Ürün: Harici Disk, Adet: 2, Müşterinin bütçesi güncellendi.',NULL,NULL),(178,'Bilgi','2024-12-26 11:23:05.926900','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:23:05.926900+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(179,'Bilgi','2024-12-26 11:23:14.874924','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 11:23:14.874924+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(180,'Bilgi','2024-12-26 11:23:30.983918','Toplu onaylama: Sipariş 93 onaylandı. Ürün: Harici Disk, Adet: 2',NULL,NULL),(181,'Uyarı','2024-12-26 11:23:30.993723','Toplu onaylama: Sipariş 92 iptal edildi. Yetersiz stok. Ürün: Harici Disk, İstenen: 2, Mevcut: 1',NULL,NULL),(182,'Bilgi','2024-12-26 12:54:01.467750',' Harici Disk ürününün stok miktarını 2 arttırdı. Yeni Stok: 3.',NULL,NULL),(183,'Bilgi','2024-12-26 12:54:51.720584','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 12:54:51.720584+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(184,'Bilgi','2024-12-26 12:55:00.850689','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 12:55:00.850689+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(185,'Bilgi','2024-12-26 12:55:19.768227','Toplu onaylama: Sipariş 95 onaylandı. Ürün: Harici Disk, Adet: 2',NULL,NULL),(186,'Uyarı','2024-12-26 12:55:19.775874','Toplu onaylama: Sipariş 94 iptal edildi. Yetersiz stok. Ürün: Harici Disk, İstenen: 2, Mevcut: 1',NULL,NULL),(187,'Bilgi','2024-12-26 13:27:59.306862',' Laptop ürününün stok miktarını 2 arttırdı. Yeni Stok: 10.',NULL,NULL),(188,'Bilgi','2024-12-26 13:28:06.542986',' Laptop ürününün stok miktarını 1 azalttı. Yeni Stok: 9.',NULL,NULL),(189,'Bilgi','2024-12-26 13:28:18.839949',' Akıllı Saat ürününün stok miktarını 5 arttırdı. Yeni Stok: 5.',NULL,NULL),(190,'Bilgi','2024-12-26 13:28:25.827080',' Harici Disk ürününün stok miktarını 8 arttırdı. Yeni Stok: 9.',NULL,NULL),(191,'Bilgi','2024-12-26 13:28:45.228193','MackBook ürününü ekledi. Stok: 10, Fiyat: 40000.0 TL.',NULL,NULL),(192,'Bilgi','2024-12-26 13:31:02.237291','Müşteri Türü: Standart, Ürün: Kulaklık, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-26 13:31:02.237291+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(193,'Hata','2024-12-26 13:31:13.107273','Müşteri Türü: Premium, Ürün: Laptop, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 13:31:13.107273+00:00, İşlem Sonucu: Yetersiz bütçe.',NULL,NULL),(194,'Bilgi','2024-12-26 13:31:54.457794','Müşteri Türü: Premium, Ürün: Akıllı Saat, Satın Alınan Miktar: 2, İşlem Zamanı: 2024-12-26 13:31:54.457794+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(195,'Bilgi','2024-12-26 14:22:03.522556','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 14:22:03.522556+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(196,'Hata','2024-12-26 14:22:12.733263','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-26 14:22:12.733263+00:00, İşlem Sonucu: Yetersiz bütçe.',NULL,NULL),(197,'Bilgi','2024-12-26 14:25:49.791052','Müşteri Türü: Standart, Ürün: Mouse, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-26 14:25:49.791052+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(198,'Bilgi','2024-12-26 14:26:36.180003','Müşteri Türü: Standart, Ürün: Kulaklık, Satın Alınan Miktar: 5, İşlem Zamanı: 2024-12-26 14:26:36.180003+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(199,'Bilgi','2024-12-26 14:26:54.346867','Toplu onaylama: Sipariş 99 onaylandı. Ürün: Mouse, Adet: 3',NULL,NULL),(200,'Bilgi','2024-12-26 14:26:54.359749','Toplu onaylama: Sipariş 100 onaylandı. Ürün: Kulaklık, Adet: 5',NULL,NULL),(201,'Bilgi','2024-12-26 14:30:50.912057','Müşteri Türü: Standart, Ürün: Kulaklık, Satın Alınan Miktar: 4, İşlem Zamanı: 2024-12-26 14:30:50.912057+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(202,'Bilgi','2024-12-26 14:30:58.143252','Admin, sipariş 101 onayladı. Ürün: Kulaklık, Adet: 4, Stok güncellendi.',NULL,NULL),(203,'Bilgi','2024-12-26 14:31:36.093844','Müşteri Türü: Standart, Ürün: Klavye, Satın Alınan Miktar: 4, İşlem Zamanı: 2024-12-26 14:31:36.093844+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(204,'Bilgi','2024-12-26 14:31:42.116927','Müşteri statüsü Standart\'dan Premium\'a yükseltildi. Toplam Harcama: 2400.0 TL',NULL,NULL),(205,'Bilgi','2024-12-26 14:31:42.116927','Admin, sipariş 102 onayladı. Ürün: Klavye, Adet: 4, Stok güncellendi.',NULL,NULL),(206,'Bilgi','2024-12-30 19:11:33.628725','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 3, İşlem Zamanı: 2024-12-30 19:11:33.627725+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(207,'Bilgi','2024-12-30 19:11:50.641183','Müşteri Türü: Standart, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2024-12-30 19:11:50.641070+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(208,'Bilgi','2024-12-30 19:12:02.882922','Müşteri statüsü Standart\'dan Premium\'a yükseltildi. Toplam Harcama: 2100.0 TL',NULL,NULL),(209,'Bilgi','2024-12-30 19:12:02.882922','Admin, sipariş 103 onayladı. Ürün: Harici Disk, Adet: 3, Stok güncellendi.',NULL,NULL),(210,'Uyarı','2024-12-30 19:12:07.674958','Admin, sipariş 104 iptal etti. Ürün: Mouse, Adet: 1, Müşterinin bütçesi güncellendi.',NULL,NULL),(211,'Bilgi','2025-01-02 09:25:15.584972','Müşteri Türü: Standart, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2025-01-02 09:25:15.584972+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(212,'Hata','2025-01-02 09:25:17.982355','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 3, İşlem Zamanı: 2025-01-02 09:25:17.982355+00:00, İşlem Sonucu: Yetersiz bütçe.',NULL,NULL),(213,'Bilgi','2025-01-02 09:25:46.162607','Müşteri Türü: Standart, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2025-01-02 09:25:46.162607+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(214,'Bilgi','2025-01-02 09:25:49.779412','Müşteri Türü: Premium, Ürün: Harici Disk, Satın Alınan Miktar: 2, İşlem Zamanı: 2025-01-02 09:25:49.779412+00:00, İşlem Sonucu: Başarılı.',NULL,NULL),(215,'Uyarı','2025-01-02 09:25:59.325524','Admin, sipariş 105 iptal etti. Ürün: Mouse, Adet: 1, Müşterinin bütçesi güncellendi.',NULL,NULL),(216,'Uyarı','2025-01-02 09:26:11.867027','Admin, sipariş 107 iptal etti. Ürün: Harici Disk, Adet: 2, Müşterinin bütçesi güncellendi.',NULL,NULL),(217,'Uyarı','2025-01-02 09:26:12.565045','Admin, sipariş 106 iptal etti. Ürün: Mouse, Adet: 1, Müşterinin bütçesi güncellendi.',NULL,NULL),(218,'Bilgi','2025-01-02 09:42:42.370133',' Mouse ürününün stok miktarını 25 azalttı. Yeni Stok: 4.',NULL,NULL),(219,'Bilgi','2025-01-02 09:42:59.453459','Müşteri Türü: Standart, Ürün: Mouse, Satın Alınan Miktar: 2, İşlem Zamanı: 2025-01-02 09:42:59.453459+00:00, İşlem Sonucu: Başarılı.',325,108),(220,'Bilgi','2025-01-02 09:43:09.031765','Müşteri Türü: Standart, Ürün: Harici Disk, Satın Alınan Miktar: 1, İşlem Zamanı: 2025-01-02 09:43:09.031765+00:00, İşlem Sonucu: Başarılı.',325,109),(221,'Bilgi','2025-01-02 09:44:41.830144','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 2, İşlem Zamanı: 2025-01-02 09:44:41.830144+00:00, İşlem Sonucu: Başarılı.',324,110),(222,'Bilgi','2025-01-02 09:44:44.403205','Müşteri Türü: Standart, Ürün: Kulaklık, Satın Alınan Miktar: 2, İşlem Zamanı: 2025-01-02 09:44:44.403205+00:00, İşlem Sonucu: Başarılı.',325,111),(223,'Uyarı','2025-01-02 09:44:56.178388','Admin, sipariş 108 iptal etti. Ürün: Mouse, Adet: 2, Müşterinin bütçesi güncellendi.',325,108),(224,'Uyarı','2025-01-02 09:45:32.223430','Admin, sipariş 111 iptal etti. Ürün: Kulaklık, Adet: 2, Müşterinin bütçesi güncellendi.',325,111),(225,'Uyarı','2025-01-02 09:45:33.309400','Admin, sipariş 109 iptal etti. Ürün: Harici Disk, Adet: 1, Müşterinin bütçesi güncellendi.',325,109),(226,'Uyarı','2025-01-02 09:45:34.304719','Admin, sipariş 110 iptal etti. Ürün: Mouse, Adet: 2, Müşterinin bütçesi güncellendi.',324,110),(227,'Bilgi','2025-01-02 09:45:53.825173','Müşteri Türü: Standart, Ürün: Mouse, Satın Alınan Miktar: 2, İşlem Zamanı: 2025-01-02 09:45:53.825173+00:00, İşlem Sonucu: Başarılı.',325,112),(228,'Bilgi','2025-01-02 09:45:58.146125','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 2, İşlem Zamanı: 2025-01-02 09:45:58.146125+00:00, İşlem Sonucu: Başarılı.',324,113),(229,'Bilgi','2025-01-02 09:46:44.337063','Toplu onaylama: Sipariş 113 onaylandı. Ürün: Mouse, Adet: 2',324,113),(230,'Bilgi','2025-01-02 09:46:44.358079','Toplu onaylama: Sipariş 112 onaylandı. Ürün: Mouse, Adet: 2',325,112),(231,'Hata','2025-01-02 09:47:12.007407','Müşteri Türü: Premium, Ürün: Mouse, Satın Alınan Miktar: 1, İşlem Zamanı: 2025-01-02 09:47:12.007407+00:00, İşlem Sonucu: Ürün stoğu yetersiz.',324,NULL),(232,'Hata','2025-01-02 09:47:21.504263','Müşteri Türü: Premium, Ürün: Laptop, Satın Alınan Miktar: 1, İşlem Zamanı: 2025-01-02 09:47:21.504263+00:00, İşlem Sonucu: Yetersiz bütçe.',324,NULL);
/*!40000 ALTER TABLE `ilk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_musteri`
--

DROP TABLE IF EXISTS `ilk_musteri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_musteri` (
  `musteri_id` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) NOT NULL,
  `kullanici_adi` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `butce` double NOT NULL,
  `musteri_turu` varchar(50) NOT NULL,
  `toplam_harcama` double NOT NULL,
  PRIMARY KEY (`musteri_id`),
  UNIQUE KEY `kullanici_adi` (`kullanici_adi`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_musteri`
--

LOCK TABLES `ilk_musteri` WRITE;
/*!40000 ALTER TABLE `ilk_musteri` DISABLE KEYS */;
INSERT INTO `ilk_musteri` VALUES (2,'Şenol Kumaş','senolkms','1234',1,5000,'Premium',0),(316,'Oğuz','Oğuz1','1234',0,1745,'Standart',0),(317,'Tuğçe','Tuğçe2','1234',0,2171,'Standart',0),(318,'Oğuz','Oğuz3','1234',0,2242,'Standart',0),(319,'Ege','Ege4','1234',0,567,'Premium',0),(320,'Ege','Ege5','1234',0,1270,'Standart',0),(321,'Selin','Selin6','1234',0,1951,'Standart',0),(322,'Burak','Burak7','1234',0,2992,'Standart',0),(323,'Emre','Emre8','1234',0,1240,'Standart',0),(324,'Derya','Derya9','1234',0,1548,'Premium',600),(325,'Ali','Ali10','1234',0,1280,'Standart',600);
/*!40000 ALTER TABLE `ilk_musteri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_siparis`
--

DROP TABLE IF EXISTS `ilk_siparis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_siparis` (
  `siparis_id` int NOT NULL AUTO_INCREMENT,
  `adet` int unsigned NOT NULL,
  `toplam_fiyat` double NOT NULL,
  `siparis_tarihi` datetime(6) NOT NULL,
  `durum` varchar(50) NOT NULL,
  `musteri_id` int NOT NULL,
  `urun_id` int NOT NULL,
  `bekleme_baslangic` datetime(6) NOT NULL,
  `oncelik_skoru` double NOT NULL,
  PRIMARY KEY (`siparis_id`),
  KEY `ilk_siparis_musteri_id_cf0da717_fk_ilk_musteri_musteri_id` (`musteri_id`),
  KEY `ilk_siparis_urun_id_db795bbc_fk_ilk_urun_urun_id` (`urun_id`),
  CONSTRAINT `ilk_siparis_musteri_id_cf0da717_fk_ilk_musteri_musteri_id` FOREIGN KEY (`musteri_id`) REFERENCES `ilk_musteri` (`musteri_id`),
  CONSTRAINT `ilk_siparis_urun_id_db795bbc_fk_ilk_urun_urun_id` FOREIGN KEY (`urun_id`) REFERENCES `ilk_urun` (`urun_id`),
  CONSTRAINT `ilk_siparis_chk_1` CHECK ((`adet` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_siparis`
--

LOCK TABLES `ilk_siparis` WRITE;
/*!40000 ALTER TABLE `ilk_siparis` DISABLE KEYS */;
INSERT INTO `ilk_siparis` VALUES (108,2,600,'2025-01-02 09:42:59.448993','İptal Edildi',325,5,'2025-01-02 09:42:59.448993',68.01058499999999),(109,1,700,'2025-01-02 09:43:09.031765','İptal Edildi',325,9,'2025-01-02 09:43:09.031765',81.6015585),(110,2,600,'2025-01-02 09:44:41.825017','İptal Edildi',324,5,'2025-01-02 09:44:41.825017',40.2073395),(111,2,1000,'2025-01-02 09:44:44.400541','İptal Edildi',325,3,'2025-01-02 09:44:44.400541',32.9334215),(112,2,600,'2025-01-02 09:45:53.819808','Tamamlandı',325,5,'2025-01-02 09:45:53.819808',30.8764115),(113,2,600,'2025-01-02 09:45:58.132257','Tamamlandı',324,5,'2025-01-02 09:45:58.132257',33.737141);
/*!40000 ALTER TABLE `ilk_siparis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_sistemdurumu`
--

DROP TABLE IF EXISTS `ilk_sistemdurumu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_sistemdurumu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `admin_modu` tinyint(1) NOT NULL,
  `guncellenme_tarihi` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_sistemdurumu`
--

LOCK TABLES `ilk_sistemdurumu` WRITE;
/*!40000 ALTER TABLE `ilk_sistemdurumu` DISABLE KEYS */;
INSERT INTO `ilk_sistemdurumu` VALUES (1,0,'2025-01-02 09:47:57.838431');
/*!40000 ALTER TABLE `ilk_sistemdurumu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ilk_urun`
--

DROP TABLE IF EXISTS `ilk_urun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilk_urun` (
  `urun_id` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) NOT NULL,
  `stok` int unsigned NOT NULL,
  `fiyat` double NOT NULL,
  PRIMARY KEY (`urun_id`),
  CONSTRAINT `ilk_urun_chk_1` CHECK ((`stok` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilk_urun`
--

LOCK TABLES `ilk_urun` WRITE;
/*!40000 ALTER TABLE `ilk_urun` DISABLE KEYS */;
INSERT INTO `ilk_urun` VALUES (1,'Laptop',9,15000),(2,'Telefon',20,8000),(3,'Kulaklık',39,500),(4,'Monitör',13,1200),(5,'Mouse',0,300),(6,'Tablet',20,5000),(7,'Klavye',11,600),(8,'USB Bellek',100,100),(9,'Harici Disk',6,700),(10,'Akıllı Saat',5,2500),(11,'MackBook',10,40000);
/*!40000 ALTER TABLE `ilk_urun` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-13 21:39:30
