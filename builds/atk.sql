-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: build
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add about us_tb',7,'add_aboutus_tb'),(26,'Can change about us_tb',7,'change_aboutus_tb'),(27,'Can delete about us_tb',7,'delete_aboutus_tb'),(28,'Can view about us_tb',7,'view_aboutus_tb'),(29,'Can add brands_tb',8,'add_brands_tb'),(30,'Can change brands_tb',8,'change_brands_tb'),(31,'Can delete brands_tb',8,'delete_brands_tb'),(32,'Can view brands_tb',8,'view_brands_tb'),(33,'Can add category_tb',9,'add_category_tb'),(34,'Can change category_tb',9,'change_category_tb'),(35,'Can delete category_tb',9,'delete_category_tb'),(36,'Can view category_tb',9,'view_category_tb'),(37,'Can add contact us_tb',10,'add_contactus_tb'),(38,'Can change contact us_tb',10,'change_contactus_tb'),(39,'Can delete contact us_tb',10,'delete_contactus_tb'),(40,'Can view contact us_tb',10,'view_contactus_tb'),(41,'Can add gallery types_tb',11,'add_gallerytypes_tb'),(42,'Can change gallery types_tb',11,'change_gallerytypes_tb'),(43,'Can delete gallery types_tb',11,'delete_gallerytypes_tb'),(44,'Can view gallery types_tb',11,'view_gallerytypes_tb'),(45,'Can add news letter_tb',12,'add_newsletter_tb'),(46,'Can change news letter_tb',12,'change_newsletter_tb'),(47,'Can delete news letter_tb',12,'delete_newsletter_tb'),(48,'Can view news letter_tb',12,'view_newsletter_tb'),(49,'Can add products_tb',13,'add_products_tb'),(50,'Can change products_tb',13,'change_products_tb'),(51,'Can delete products_tb',13,'delete_products_tb'),(52,'Can view products_tb',13,'view_products_tb'),(53,'Can add get price_tb',14,'add_getprice_tb'),(54,'Can change get price_tb',14,'change_getprice_tb'),(55,'Can delete get price_tb',14,'delete_getprice_tb'),(56,'Can view get price_tb',14,'view_getprice_tb'),(57,'Can add gallery_tb',15,'add_gallery_tb'),(58,'Can change gallery_tb',15,'change_gallery_tb'),(59,'Can delete gallery_tb',15,'delete_gallery_tb'),(60,'Can view gallery_tb',15,'view_gallery_tb');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_aboutus_tb`
--

DROP TABLE IF EXISTS `buildApp_aboutus_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_aboutus_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `details` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_aboutus_tb`
--

LOCK TABLES `buildApp_aboutus_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_aboutus_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_aboutus_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_brands_tb`
--

DROP TABLE IF EXISTS `buildApp_brands_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_brands_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(64) NOT NULL,
  `brand_id` varchar(32) NOT NULL,
  `created_date` varchar(32) NOT NULL,
  `updated_date` varchar(32) NOT NULL,
  `deleted_status` varchar(32) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `deleted_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buildApp_brands_tb_created_by_id_b0e5bca3_fk_buildApp_user_id` (`created_by_id`),
  KEY `buildApp_brands_tb_deleted_by_id_9e515bbf_fk_buildApp_user_id` (`deleted_by_id`),
  KEY `buildApp_brands_tb_updated_by_id_c333138b_fk_buildApp_user_id` (`updated_by_id`),
  CONSTRAINT `buildApp_brands_tb_created_by_id_b0e5bca3_fk_buildApp_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `buildApp_brands_tb_deleted_by_id_9e515bbf_fk_buildApp_user_id` FOREIGN KEY (`deleted_by_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `buildApp_brands_tb_updated_by_id_c333138b_fk_buildApp_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `buildApp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_brands_tb`
--

LOCK TABLES `buildApp_brands_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_brands_tb` DISABLE KEYS */;
INSERT INTO `buildApp_brands_tb` VALUES (1,'Marboland','Mar01b6bc','2021-09-07','','False',NULL,3,NULL,NULL);
/*!40000 ALTER TABLE `buildApp_brands_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_category_tb`
--

DROP TABLE IF EXISTS `buildApp_category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_category_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(32) NOT NULL,
  `category_id` varchar(32) NOT NULL,
  `created_date` varchar(32) NOT NULL,
  `updated_date` varchar(32) NOT NULL,
  `deleted_status` varchar(32) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `deleted_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buildApp_category_tb_created_by_id_3279bf03_fk_buildApp_user_id` (`created_by_id`),
  KEY `buildApp_category_tb_deleted_by_id_501b3287_fk_buildApp_user_id` (`deleted_by_id`),
  KEY `buildApp_category_tb_updated_by_id_42937fa9_fk_buildApp_user_id` (`updated_by_id`),
  CONSTRAINT `buildApp_category_tb_created_by_id_3279bf03_fk_buildApp_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `buildApp_category_tb_deleted_by_id_501b3287_fk_buildApp_user_id` FOREIGN KEY (`deleted_by_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `buildApp_category_tb_updated_by_id_42937fa9_fk_buildApp_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `buildApp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_category_tb`
--

LOCK TABLES `buildApp_category_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_category_tb` DISABLE KEYS */;
INSERT INTO `buildApp_category_tb` VALUES (1,'Tiles','Til0eb706','8/10/2021','8/10/2021','False',NULL,NULL,NULL,NULL,'category/DSC08555.jpg'),(2,'Sanitary Ware','Sanc8943c','8/10/2021','9/10/2021','False',NULL,NULL,NULL,NULL,'category/DSC08351.jpg'),(3,'Shower Panels','Sho182bf9','8/10/2021','9/10/2021','False',NULL,NULL,NULL,NULL,'category/DSC08316.jpg'),(4,'Jacuzzi','Jace607f6','8/10/2021','9/10/2021','False',NULL,NULL,NULL,NULL,'category/jacuzzi-7.jpeg'),(5,'Spa Art Basin','Spa5875f0','8/10/2021','9/10/2021','False',NULL,NULL,NULL,NULL,'category/spaartbasin-1.jpg'),(6,'Cabinets And LED Mirrors','Cabc91693','8/10/2021','9/10/2021','False',NULL,NULL,NULL,NULL,'category/cabinetledmirrors-1.jpg');
/*!40000 ALTER TABLE `buildApp_category_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_contactus_tb`
--

DROP TABLE IF EXISTS `buildApp_contactus_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_contactus_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `details` varchar(300) NOT NULL,
  `date` datetime(6) NOT NULL,
  `response_status` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_contactus_tb`
--

LOCK TABLES `buildApp_contactus_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_contactus_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_contactus_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_gallery_tb`
--

DROP TABLE IF EXISTS `buildApp_gallery_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_gallery_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `gallery` varchar(100) NOT NULL,
  `latest_product` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `gallery_type` varchar(100) NOT NULL,
  `deleted_at` datetime(6) NOT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buildApp_gallery_tb_created_by_id_82d8fe5e_fk_buildApp_user_id` (`created_by_id`),
  CONSTRAINT `buildApp_gallery_tb_created_by_id_82d8fe5e_fk_buildApp_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `buildApp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_gallery_tb`
--

LOCK TABLES `buildApp_gallery_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_gallery_tb` DISABLE KEYS */;
INSERT INTO `buildApp_gallery_tb` VALUES (1,'TILES','marbo land','gallery/tile-1.jpg','gallery/tile-1_HBNAtuT.jpg','Deploying state of the art technology into making your homes beautiful with our premium assortment of tiles and cabinets. Discover the most exquisite collection with ATK Build Mart.','tiles','2021-08-30 07:11:31.481675',0,'2021-08-30 07:11:31.481732',NULL),(2,'Sanitary Ware','parryware','gallery/sanitaryware-4.jpg','gallery/sanitaryware-4_iYira7t.jpg','Revolutionizing sanitary ware collection through excellent craftsmanship and comfort, ATK Buildmart offers a wide range of sanitaryware, that elevates your bathroom decor.','Sanitary ware','2021-08-30 08:00:04.775852',0,'2021-08-30 08:00:04.775903',NULL),(3,'Shower Panels','parryware','gallery/showerpanel-2.jpg','gallery/showerpanel-2_7h2VLcY.jpg','Exquisite shower panels for every bathroom design, minimising cost and maximising luxury along with contemporary style.','Shower Panels','2021-08-30 08:01:20.073697',0,'2021-08-30 08:01:20.073743',NULL),(4,'Jacuzzi','kohler','gallery/jacuzzi-8.jpeg','gallery/jacuzzi-8_Elr6C1r.jpeg','Bringing in state-of-the-art to transform your mind,soul and body to wellness, through their signature hot-tubs,saunas,bath-tubs and showers.','Jacuzzi','2021-08-30 08:02:53.328423',0,'2021-08-30 08:02:53.328467',NULL),(5,'Spa Art Basin','kohler','gallery/spaartbasin-2.jpg','gallery/spaartbasin-2_DXGAnKA.jpg','Specially curated basins, made with brilliant designs that matches the comfort and beauty of its surroundings enhancing its features perfectly.','spa art basin','2021-08-30 08:12:31.589629',0,'2021-08-30 08:12:31.589688',NULL),(6,'Cabinets And LED Mirrors','kohler','gallery/cabinetledmirrors-1.jpg','gallery/cabinetledmirrors-1_WGGtNTT.jpg','A space becomes perfect when it is paired with cabinets and mirrors that speak a legacy of excellent design and world-class quality. Presenting our collection of cabinets and mirrors to upgrade your f','Cabinet & Led Mirrors','2021-08-30 08:13:40.729761',0,'2021-08-30 08:13:40.729806',NULL);
/*!40000 ALTER TABLE `buildApp_gallery_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_gallerytypes_tb`
--

DROP TABLE IF EXISTS `buildApp_gallerytypes_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_gallerytypes_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `gallerytype_id` varchar(32) NOT NULL,
  `date` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_gallerytypes_tb`
--

LOCK TABLES `buildApp_gallerytypes_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_gallerytypes_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_gallerytypes_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_getprice_tb`
--

DROP TABLE IF EXISTS `buildApp_getprice_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_getprice_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `city` varchar(100) NOT NULL,
  `details` varchar(300) NOT NULL,
  `date` datetime(6) NOT NULL,
  `product_id_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buildApp_getprice_tb_product_id_id_cbdd9568_fk_buildApp_` (`product_id_id`),
  CONSTRAINT `buildApp_getprice_tb_product_id_id_cbdd9568_fk_buildApp_` FOREIGN KEY (`product_id_id`) REFERENCES `buildApp_products_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_getprice_tb`
--

LOCK TABLES `buildApp_getprice_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_getprice_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_getprice_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_newsletter_tb`
--

DROP TABLE IF EXISTS `buildApp_newsletter_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_newsletter_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_newsletter_tb`
--

LOCK TABLES `buildApp_newsletter_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_newsletter_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_newsletter_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_products_tb`
--

DROP TABLE IF EXISTS `buildApp_products_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_products_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) NOT NULL,
  `product_id` varchar(32) DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_image1` varchar(100) DEFAULT NULL,
  `product_image2` varchar(100) DEFAULT NULL,
  `product_image3` varchar(100) DEFAULT NULL,
  `product_image_main` varchar(100) DEFAULT NULL,
  `price` double NOT NULL,
  `product_description` varchar(200) DEFAULT NULL,
  `product_details` varchar(200) DEFAULT NULL,
  `product_priority` varchar(32) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `deleted_status` tinyint(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `deleted_by_id` int DEFAULT NULL,
  `updated_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buildApp_products_tb_brand_id_ad262ae5_fk_buildApp_brands_tb_id` (`brand_id`),
  KEY `buildApp_products_tb_category_id_11afb1eb_fk_buildApp_` (`category_id`),
  KEY `buildApp_products_tb_created_by_id_29910c27_fk_buildApp_user_id` (`created_by_id`),
  KEY `buildApp_products_tb_deleted_by_id_3de8b85e_fk_buildApp_user_id` (`deleted_by_id`),
  KEY `buildApp_products_tb_updated_by_id_1f29a749_fk_buildApp_user_id` (`updated_by_id`),
  CONSTRAINT `buildApp_products_tb_brand_id_ad262ae5_fk_buildApp_brands_tb_id` FOREIGN KEY (`brand_id`) REFERENCES `buildApp_brands_tb` (`id`),
  CONSTRAINT `buildApp_products_tb_category_id_11afb1eb_fk_buildApp_` FOREIGN KEY (`category_id`) REFERENCES `buildApp_category_tb` (`id`),
  CONSTRAINT `buildApp_products_tb_created_by_id_29910c27_fk_buildApp_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `buildApp_products_tb_deleted_by_id_3de8b85e_fk_buildApp_user_id` FOREIGN KEY (`deleted_by_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `buildApp_products_tb_updated_by_id_1f29a749_fk_buildApp_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `buildApp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_products_tb`
--

LOCK TABLES `buildApp_products_tb` WRITE;
/*!40000 ALTER TABLE `buildApp_products_tb` DISABLE KEYS */;
INSERT INTO `buildApp_products_tb` VALUES (1,'Tiles','Til15b1f1','product/DSC08378.jpg','product/DSC08378_ZDkgtDE.jpg','product/DSC08378_dUPToEq.jpg','product/DSC08378_coczsd4.jpg','product/DSC08378_bL1my84.jpg',100,'DDSHAVSFHCVAHC','FSZHAF','VGV','2021-09-07 11:44:59.542740','2021-09-06 18:30:00.000000',1,'2021-09-06 18:30:00.000000',1,1,3,3,3);
/*!40000 ALTER TABLE `buildApp_products_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_user`
--

DROP TABLE IF EXISTS `buildApp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_user` (
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
  `mobile` varchar(10) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `userType` int NOT NULL,
  `pswd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_user`
--

LOCK TABLES `buildApp_user` WRITE;
/*!40000 ALTER TABLE `buildApp_user` DISABLE KEYS */;
INSERT INTO `buildApp_user` VALUES (1,'pbkdf2_sha256$216000$FnfuLszRvhgY$Kfhl0KrxHIYHQM4DiB49+A6Yc6Zuhjfj4XkCLdj4CrI=','2021-08-30 07:01:06.230586',1,'atkbuild','','','',1,1,'2021-08-30 06:12:04.982757',NULL,NULL,'',1,'2021-08-30 06:12:05.116844',1,NULL),(2,'pbkdf2_sha256$216000$O0gqZRqFhBfq$RY3IWp/ZfzoKo78tKeCSeUzJpbfb+bIM/RppVf0FUs4=',NULL,0,'atkbuildmart','','','',0,1,'2021-08-30 06:57:24.489817',NULL,NULL,'',1,'2021-08-30 06:57:24.640789',2,'atk@123'),(3,'pbkdf2_sha256$260000$4vcOSDs52TZ8kcK969sFzw$fg9kRyPfzyloK2PJixHN3cnbVrAuoDPnJTQ7fp4UPEQ=',NULL,0,'ATK','','','atkmart72@gmail.com',0,1,'2021-09-07 11:14:25.249820',NULL,'ATK Buildmart','',1,'2021-09-07 11:14:25.408911',2,'#Atkbuild111');
/*!40000 ALTER TABLE `buildApp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_user_groups`
--

DROP TABLE IF EXISTS `buildApp_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `buildApp_user_groups_user_id_group_id_5ccae4ba_uniq` (`user_id`,`group_id`),
  KEY `buildApp_user_groups_group_id_6a9fff1b_fk_auth_group_id` (`group_id`),
  CONSTRAINT `buildApp_user_groups_group_id_6a9fff1b_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `buildApp_user_groups_user_id_bb722e5b_fk_buildApp_user_id` FOREIGN KEY (`user_id`) REFERENCES `buildApp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_user_groups`
--

LOCK TABLES `buildApp_user_groups` WRITE;
/*!40000 ALTER TABLE `buildApp_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildApp_user_user_permissions`
--

DROP TABLE IF EXISTS `buildApp_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildApp_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `buildApp_user_user_permi_user_id_permission_id_d796958b_uniq` (`user_id`,`permission_id`),
  KEY `buildApp_user_user_p_permission_id_5f38dddf_fk_auth_perm` (`permission_id`),
  CONSTRAINT `buildApp_user_user_p_permission_id_5f38dddf_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `buildApp_user_user_p_user_id_e0c0df3b_fk_buildApp_` FOREIGN KEY (`user_id`) REFERENCES `buildApp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildApp_user_user_permissions`
--

LOCK TABLES `buildApp_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `buildApp_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildApp_user_user_permissions` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_buildApp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_buildApp_user_id` FOREIGN KEY (`user_id`) REFERENCES `buildApp_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-08-30 07:03:44.753194','1','Tiles',1,'[{\"added\": {}}]',9,1),(2,'2021-08-30 07:05:26.955703','2','Sanitary Ware',1,'[{\"added\": {}}]',9,1),(3,'2021-08-30 07:06:08.010640','3','Shower Panels',1,'[{\"added\": {}}]',9,1),(4,'2021-08-30 07:07:39.075252','4','Jacuzzi',1,'[{\"added\": {}}]',9,1),(5,'2021-08-30 07:09:05.677150','5','Spa Art Basin',1,'[{\"added\": {}}]',9,1),(6,'2021-08-30 07:10:06.998425','6','Cabinets And LED Mirrors',1,'[{\"added\": {}}]',9,1),(7,'2021-08-30 07:11:31.483154','1','1',1,'[{\"added\": {}}]',15,1),(8,'2021-08-30 08:00:04.779009','2','2',1,'[{\"added\": {}}]',15,1),(9,'2021-08-30 08:01:20.075108','3','3',1,'[{\"added\": {}}]',15,1),(10,'2021-08-30 08:02:53.329751','4','4',1,'[{\"added\": {}}]',15,1),(11,'2021-08-30 08:12:31.591523','5','5',1,'[{\"added\": {}}]',15,1),(12,'2021-08-30 08:13:40.731257','6','6',1,'[{\"added\": {}}]',15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(7,'buildApp','aboutus_tb'),(8,'buildApp','brands_tb'),(9,'buildApp','category_tb'),(10,'buildApp','contactus_tb'),(15,'buildApp','gallery_tb'),(11,'buildApp','gallerytypes_tb'),(14,'buildApp','getprice_tb'),(12,'buildApp','newsletter_tb'),(13,'buildApp','products_tb'),(6,'buildApp','user'),(4,'contenttypes','contenttype'),(5,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-08-30 06:05:06.542137'),(2,'contenttypes','0002_remove_content_type_name','2021-08-30 06:05:06.595476'),(3,'auth','0001_initial','2021-08-30 06:05:06.664305'),(4,'auth','0002_alter_permission_name_max_length','2021-08-30 06:05:06.815461'),(5,'auth','0003_alter_user_email_max_length','2021-08-30 06:05:06.826722'),(6,'auth','0004_alter_user_username_opts','2021-08-30 06:05:06.837139'),(7,'auth','0005_alter_user_last_login_null','2021-08-30 06:05:06.846827'),(8,'auth','0006_require_contenttypes_0002','2021-08-30 06:05:06.851670'),(9,'auth','0007_alter_validators_add_error_messages','2021-08-30 06:05:06.860146'),(10,'auth','0008_alter_user_username_max_length','2021-08-30 06:05:06.868839'),(11,'auth','0009_alter_user_last_name_max_length','2021-08-30 06:05:06.878219'),(12,'auth','0010_alter_group_name_max_length','2021-08-30 06:05:06.895330'),(13,'auth','0011_update_proxy_permissions','2021-08-30 06:05:06.903866'),(14,'auth','0012_alter_user_first_name_max_length','2021-08-30 06:05:06.912647'),(15,'buildApp','0001_initial','2021-08-30 06:05:07.302394'),(16,'admin','0001_initial','2021-08-30 06:05:07.882979'),(17,'admin','0002_logentry_remove_auto_add','2021-08-30 06:05:07.977201'),(18,'admin','0003_logentry_add_action_flag_choices','2021-08-30 06:05:08.000106'),(19,'buildApp','0002_auto_20210501_1537','2021-08-30 06:05:08.294254'),(20,'buildApp','0003_category_tb_category_image','2021-08-30 06:05:08.344788'),(21,'sessions','0001_initial','2021-08-30 06:05:08.366257');
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
INSERT INTO `django_session` VALUES ('5oijz8riwrqzgltrvgsui4s5hwigbtep','.eJxVjs0OwiAQhN-FsyEBdlvr0bvPQBZ2kfpTkv4cjPHdhaQHvU1mvpnMW3na1uy3RWY_sjopow6_XqB4l6kFfKPpWnQs0zqPQTdE7-miL4Xlcd7Zv4FMS65tMBERxEjH2Ee2ZLtwBMHQG6Y0gHNgTHLW9RBx6BApOUi1EaoQhjr6fLWD9vMF2aU6YA:1mKbEg:OBteFhJX7OQeA7iqOuaXUhQPWHDtGNkiGzRkRlYTl3Y','2021-09-13 06:57:38.566463'),('ckbb8iqunms7gvae1f62e699hvv7849f','eyJteWlkIjozfQ:1mNZJd:SSlSxhipa4IYeCO6r-JbF7ApFOvI1bSRxRFhUvB5bhE','2021-09-21 11:31:01.349417'),('jzlh88nrbl7ged1np9yss1v0fu77os6r','.eJxVjLEOwjAMRP8lM4rkxG4oIzvfUDmxQwsokZp2Qvw7rdQBttPde_c2A6_LOKxN52ESczFgTr9d5PTUsg_y4HKvNtWyzFO0O2KPtdlbFX1dD_bvYOQ2bjZCIkIF7YRCEseui2dUigGEc4_eI0D2zgdM1HdEnD3mzYhbUEHz-QLX7jfR:1mKbI2:kbRuNYba3Jgnl2ft8OF2ZMVsJ-WbFchIWwXGXDa5fDE','2021-09-13 07:01:06.234748'),('revkfvb7gsn510rw0yro2m28tj8p5cto','eyJteWlkIjozfQ:1mOcG8:eRvD6VM2VM-hOpYfnSUyeV59Rke9TJA9BEUn-uwe8IU','2021-09-24 08:51:44.660743');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 10:04:53
