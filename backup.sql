CREATE DATABASE  IF NOT EXISTS `smartmenu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `smartmenu`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: smartmenu
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `allergens`
--

DROP TABLE IF EXISTS `allergens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allergens` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergens`
--

LOCK TABLES `allergens` WRITE;
/*!40000 ALTER TABLE `allergens` DISABLE KEYS */;
INSERT INTO `allergens` VALUES (1,'gluten','Gluten','Glutine','https://menudigitale.easycomande.it/storage/photos/1/allergens/gluten.png','G','G','<p>Gluten</p>','<p>Glutine</p>',1,'2020-06-10 10:28:44','2020-06-22 08:10:30'),(2,'celery','Celery','Sedano','https://menudigitale.easycomande.it/storage/photos/1/allergens/celery.png','S','S','<p>Celery</p>','<p>Sedano</p>',1,'2020-06-10 15:00:03','2020-06-22 08:11:49'),(3,'nuts','Nuts','Frutta a Guscio','https://menudigitale.easycomande.it/storage/photos/1/allergens/nuts.png','FG','FG','<p>Nuts</p>','<p>Frutta a Guscio</p>',1,'2020-06-11 11:14:10','2020-06-22 08:11:22'),(4,'milk','Milk','Latte','https://menudigitale.easycomande.it/storage/photos/1/allergens/milk.png','L','L','<p>Milk</p>','<p>Latte</p>',1,'2020-06-15 12:10:17','2020-06-22 08:12:25'),(5,'eggs','Eggs','Uova','https://menudigitale.easycomande.it/storage/photos/1/allergens/eggs.png','U','U','<p>Eggs</p>','<p>Uova</p>',1,'2020-06-22 08:13:05','2020-06-22 08:13:18'),(6,'fish','Fish','Pesce','https://menudigitale.easycomande.it/storage/photos/1/allergens/fish.png','P','P','<p>Fish</p>','<p>Pesce</p>',1,'2020-06-22 08:13:56','2020-06-22 08:13:56'),(7,'lupins','Lupins','Lupini','https://menudigitale.easycomande.it/storage/photos/1/allergens/lupins.png','L','L','<p>Lupins</p>','<p>Lupini</p>',1,'2020-06-22 08:14:28','2020-06-22 08:14:28'),(8,'mustard','Mustard','Senape','https://menudigitale.easycomande.it/storage/photos/1/allergens/mustard.png','SE','SE','<p>Mustad</p>','<p>Senape</p>',1,'2020-06-22 08:14:56','2020-06-22 08:14:56'),(9,'peanuts','Peanuts','Arachidi','https://menudigitale.easycomande.it/storage/photos/1/allergens/peanuts.png','A','A','<p>Peanuts</p>','<p>Arachidi</p>',1,'2020-06-22 08:15:47','2020-06-22 08:15:47'),(10,'sesam','Sesam','Sesamo','https://menudigitale.easycomande.it/storage/photos/1/allergens/sesam.png','SS','SS','<p>Sesam</p>','<p>Sesamo</p>',1,'2020-06-22 08:16:27','2020-06-22 08:16:27'),(11,'shellfish','Shell Fish','Crostacei','https://menudigitale.easycomande.it/storage/photos/1/allergens/shellfish.png','C','C','<p>Shellfish</p>','<p>Crostacei</p>',1,'2020-06-22 08:17:06','2020-06-22 08:17:06'),(12,'soya','Soya','Soia','https://menudigitale.easycomande.it/storage/photos/1/allergens/soya.png','SO','SO','<p>Soya</p>','<p>Soia</p>',1,'2020-06-22 08:17:32','2020-06-22 08:17:32'),(13,'sulphites','Sulphites','Solfiti','https://menudigitale.easycomande.it/storage/photos/1/allergens/sulphites.png','AS','AS','<p>Sulphites</p>','<p>Solfiti</p>',1,'2020-06-22 08:18:15','2020-06-22 08:18:15'),(14,'clams','Clams','Molluschi','https://menudigitale.easycomande.it/storage/photos/1/allergens/clams.png','M','M','<p>Clams</p>','<p>Molluschi</p>',1,'2020-06-22 08:19:14','2020-06-22 08:19:14');
/*!40000 ALTER TABLE `allergens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishes` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure_id` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `allergens` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`),
  KEY `dishes_structure_id_foreign` (`structure_id`),
  KEY `dishes_user_id_foreign` (`user_id`),
  CONSTRAINT `dishes_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishes`
--

LOCK TABLES `dishes` WRITE;
/*!40000 ALTER TABLE `dishes` DISABLE KEYS */;
INSERT INTO `dishes` VALUES (1,'pastaesalsiccia','Pasta with Sausage','Pasta E Salsiccia','https://menudigitale.easycomande.it/storage/photos/1/Structure Category/423px-Coppa_Italia_-_Logo_2019.svg.png',1,1,'ingredients','12','2,4,5','1,2','1','<p>Pasta with Sausage</p>','<p>Pasta e Salsiccia</p>',1,'2020-06-15 13:18:08','2020-06-15 13:18:08');
/*!40000 ALTER TABLE `dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'frozen','Frozen','Surgelato','https://menudigitale.easycomande.it/storage/photos/1/features/frozen.png','FR','SU','<p>Frozen</p>','<p>Surgelato</p>',1,'2020-06-15 12:12:15','2020-06-22 08:21:32'),(2,'knockeddown','Knocked Down','Abbattuto','https://menudigitale.easycomande.it/storage/photos/1/features/knocked-down.png','KD','AB','<p>Knocked Down</p>','<p>Abbattuto</p>',1,'2020-06-22 08:22:10','2020-06-22 08:22:10'),(3,'spicy','Spicy','Piccante','https://menudigitale.easycomande.it/storage/photos/1/features/spicy.png','S','P','<p>Spicy</p>','<p>Piccante</p>',1,'2020-06-22 08:22:40','2020-06-22 08:22:40'),(4,'bio','Bio','Bio','https://menudigitale.easycomande.it/storage/photos/1/features/bio.png','B','B','<p>Bio</p>','<p>Bio</p>',1,'2020-06-22 08:23:08','2020-06-22 08:23:08'),(5,'vegan','Vegan','Vegano','https://menudigitale.easycomande.it/storage/photos/1/features/vegan.png','VEG','VEG','<p>Vegan</p>','<p>Vegano</p>',1,'2020-06-22 08:23:37','2020-06-22 08:23:37'),(6,'vegetarian','Vegetarian','Vegetariano','https://menudigitale.easycomande.it/storage/photos/1/features/vegetarian.png','VG','VG','<p>Vegetarian</p>','<p>Vegetariano</p>',1,'2020-06-22 08:24:12','2020-06-22 08:24:12'),(7,'glutenfree','Gluten Free','Senza Glutine','https://menudigitale.easycomande.it/storage/photos/1/features/gluten-free.png','GF','SG','<p>Gluten Free</p>','<p>Senza Glutine</p>',1,'2020-06-22 08:25:00','2020-06-22 08:25:00'),(8,'lactosefree','Lactose Free','Senza Lattosio','https://menudigitale.easycomande.it/storage/photos/1/features/lactose-free.png','LF','SL','<p>Lactose Free</p>','<p>Senza Lattosio</p>',1,'2020-06-22 08:25:39','2020-06-22 08:25:39');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allergens` longtext COLLATE utf8mb4_unicode_ci,
  `description_en` longtext COLLATE utf8mb4_unicode_ci,
  `description_it` longtext COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'sedano','Sedan','Sedano','1','<p>Sedan</p>','<p>Sedano</p>',1,'1','2020-06-11 09:59:03','2020-06-18 13:11:47'),(2,'farina','Flour 00','Farina 00','1',NULL,NULL,1,'1','2020-06-11 10:02:22','2020-06-11 15:57:57'),(3,'pesce','Fish','Pesce','3','<p>Fish</p>','<p>Pesce</p>',1,'1','2020-06-11 11:15:11','2020-06-11 14:22:34'),(4,'pasta','Pasta','Pasta','2,1',NULL,NULL,1,'1','2020-06-11 15:40:30','2020-06-11 15:54:58'),(5,'salsiccia','Sausage','Salsiccia',NULL,NULL,NULL,1,'1','2020-06-11 15:44:16','2020-06-11 15:55:29'),(6,'salame','Salami','Salame','2','<p>Salami</p>','<p>Salame</p>',1,'4','2020-06-16 12:52:21','2020-06-16 12:52:21');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_categories` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci,
  `description_it` longtext COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`),
  KEY `item_categories_user_id_foreign` (`user_id`),
  CONSTRAINT `item_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_categories`
--

LOCK TABLES `item_categories` WRITE;
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
INSERT INTO `item_categories` VALUES (1,'firstcourse','First Course','Primi','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/firstcourse.png',NULL,NULL,1,1,'2020-06-15 15:05:53','2020-06-23 13:11:20'),(2,'wines','Wines','Vini','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/wine.png',NULL,NULL,1,1,'2020-06-15 15:49:02','2020-06-23 13:39:45'),(3,'drink','Drinks','Drinks','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/drink.png',NULL,NULL,1,1,'2020-06-16 08:31:39','2020-06-24 09:36:20'),(4,'maincourse','Main Course','Secondi','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/maincourse.png',NULL,NULL,1,1,'2020-06-17 08:21:32','2020-06-23 13:11:09'),(5,'pizza','Pizza','Pizza','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/pizza.png',NULL,NULL,1,1,'2020-06-17 10:37:44','2020-06-23 13:46:51'),(6,'sidedishes','Side Dishes','Contorni','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/sidedish.png',NULL,NULL,1,1,'2020-06-18 14:59:53','2020-06-23 13:08:00'),(7,'softdrink','Soft Drinks','Soft Drinks','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/softdrink.png',NULL,NULL,1,1,'2020-06-24 09:00:02','2020-06-24 09:00:16'),(8,'sandwich','Sandwiches','Panini','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/sandwich.png',NULL,NULL,1,1,'2020-06-24 09:04:31','2020-06-24 09:04:31'),(9,'dessert','Dessert','Dolci','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/dessert.png',NULL,NULL,1,1,'2020-06-24 09:09:25','2020-06-24 09:09:25'),(10,'bitter','Bitter & Spirit','Amari & Liquori','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/bitter.png',NULL,NULL,1,1,'2020-06-24 09:13:21','2020-06-24 09:13:21'),(11,'appetizer','Appetizers','Antipasti','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/appetizer.png',NULL,NULL,1,1,'2020-06-24 09:22:23','2020-06-24 09:28:18'),(12,'fry','Fry','Friggitoria','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/fry.png',NULL,NULL,1,1,'2020-06-24 09:24:56','2020-06-24 09:24:56'),(13,'special','Specials','Speciali','https://menudigitale.easycomande.it/storage/photos/1/itemcategories/special.png',NULL,NULL,0,1,'2020-06-24 09:28:08','2020-06-24 09:28:08');
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_id` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` longtext COLLATE utf8mb4_unicode_ci,
  `allergens` longtext COLLATE utf8mb4_unicode_ci,
  `features` longtext COLLATE utf8mb4_unicode_ci,
  `winery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wine_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wine_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci,
  `description_it` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`),
  KEY `items_category_id_foreign` (`category_id`),
  KEY `items_structure_id_foreign` (`structure_id`),
  KEY `items_user_id_foreign` (`user_id`),
  CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'pastaesalsiccia',1,'Pasta with Sausage','Pasta E Salsiccia',NULL,1,1,'ingredients','12','5,4','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'<p>Pasta</p>','<p>Pasta</p>',1,'2020-06-16 08:54:44','2020-06-22 12:32:58'),(2,'filetto',4,'Fillet','Filetto',NULL,1,1,'ingredients','10','4','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Filetto</p>','<p>Filetto</p>',1,'2020-06-17 08:28:36','2020-06-17 08:28:36'),(3,'pastaesalame',1,'Pasta with Salami','Pasta e Salame',NULL,2,1,'ingredients','20','2,5,1,4','1,2','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,'2020-06-18 12:23:43','2020-06-18 12:23:43');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_id` int(10) unsigned NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci,
  `description_it` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`),
  KEY `menus_structure_id_foreign` (`structure_id`),
  KEY `menus_user_id_foreign` (`user_id`),
  CONSTRAINT `menus_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `menus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'primipiatti','First Course','Primi Piatti',NULL,1,1,'1,2','1',NULL,'hide_price',NULL,NULL,1,'2020-06-16 09:28:53','2020-06-22 13:53:38'),(2,'secondi','Main Course','Secondi Piatti',NULL,1,1,'2','0','12','ingredients',NULL,NULL,3,'2020-06-22 13:25:34','2020-06-22 13:53:38'),(3,'pizze','Pizze','Pizze',NULL,2,1,'3','0',NULL,'ingredients',NULL,NULL,4,'2020-06-22 13:38:28','2020-06-22 13:38:28');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_05_27_123143_laratrust_setup_tables',1),(5,'2020_05_27_145254_create_structure_categories_table',2),(6,'2020_06_10_093931_create_allergens_table',3),(7,'2020_06_10_111237_create_ingredients_table',4),(8,'2020_06_15_095701_create_towns_table',5),(9,'2020_06_15_100350_create_structures_table',5),(10,'2020_06_15_115517_create_features_table',6),(11,'2020_06_15_121240_create_dishes_table',7),(12,'2020_06_15_142008_create_item_categories_table',8),(14,'2020_06_15_142639_create_items_table',9),(15,'2020_06_16_083744_create_menus_table',10),(16,'2020_06_16_094002_create_structure_users_table',11),(17,'2020_06_22_143354_create_qr_codes_table',12);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,2),(2,2),(3,2),(4,2),(9,2),(10,2),(9,3),(10,3),(11,4),(12,4),(13,4),(14,4);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_user` (
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'create-users','Create Users','Create Users','2020-05-27 13:43:44','2020-05-27 13:43:44'),(2,'read-users','Read Users','Read Users','2020-05-27 13:43:44','2020-05-27 13:43:44'),(3,'update-users','Update Users','Update Users','2020-05-27 13:43:44','2020-05-27 13:43:44'),(4,'delete-users','Delete Users','Delete Users','2020-05-27 13:43:44','2020-05-27 13:43:44'),(5,'create-payments','Create Payments','Create Payments','2020-05-27 13:43:44','2020-05-27 13:43:44'),(6,'read-payments','Read Payments','Read Payments','2020-05-27 13:43:44','2020-05-27 13:43:44'),(7,'update-payments','Update Payments','Update Payments','2020-05-27 13:43:44','2020-05-27 13:43:44'),(8,'delete-payments','Delete Payments','Delete Payments','2020-05-27 13:43:44','2020-05-27 13:43:44'),(9,'read-profile','Read Profile','Read Profile','2020-05-27 13:43:44','2020-05-27 13:43:44'),(10,'update-profile','Update Profile','Update Profile','2020-05-27 13:43:44','2020-05-27 13:43:44'),(11,'create-module_1_name','Create Module_1_name','Create Module_1_name','2020-05-27 13:43:45','2020-05-27 13:43:45'),(12,'read-module_1_name','Read Module_1_name','Read Module_1_name','2020-05-27 13:43:45','2020-05-27 13:43:45'),(13,'update-module_1_name','Update Module_1_name','Update Module_1_name','2020-05-27 13:43:45','2020-05-27 13:43:45'),(14,'delete-module_1_name','Delete Module_1_name','Delete Module_1_name','2020-05-27 13:43:45','2020-05-27 13:43:45');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_codes`
--

DROP TABLE IF EXISTS `qr_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qr_codes` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_enable` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `structure_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_codes`
--

LOCK TABLES `qr_codes` WRITE;
/*!40000 ALTER TABLE `qr_codes` DISABLE KEYS */;
INSERT INTO `qr_codes` VALUES (1,'masaniello',1,'Pieronano1987',1,1,'2020-06-22 15:26:56','2020-06-22 15:26:56');
/*!40000 ALTER TABLE `qr_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,'App\\User'),(1,2,'App\\User'),(5,3,'App\\User'),(5,4,'App\\User');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadministrator','Superadministrator','Superadministrator','2020-05-27 13:43:44','2020-05-27 13:43:44'),(2,'administrator','Administrator','Administrator','2020-05-27 13:43:45','2020-05-27 13:43:45'),(3,'user','User','User','2020-05-27 13:43:45','2020-05-27 13:43:45'),(4,'role_name','Role Name','Role Name','2020-05-27 13:43:45','2020-05-27 13:43:45'),(5,'owner','Owner','Owner','2020-06-16 10:24:40','2020-06-16 10:24:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structure_categories`
--

DROP TABLE IF EXISTS `structure_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structure_categories` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_svg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structure_categories`
--

LOCK TABLES `structure_categories` WRITE;
/*!40000 ALTER TABLE `structure_categories` DISABLE KEYS */;
INSERT INTO `structure_categories` VALUES (1,'restaurant','Restaurant','Ristorante','https://menudigitale.easycomande.it/storage/photos/1/structurecategories/restaurant.png','https://menudigitale.easycomande.it/storage/photos/1/structurecategories/restaurant.png','fas fa-utensils','https://menudigitale.easycomande.it/storage/photos/1/structurecategories/restaurant.png','<p>Restaurant</p>','<p>Ristorante</p>',1,'2020-06-10 08:46:54','2020-06-23 12:53:28'),(2,'bar','Bar','Bar','https://menudigitale.easycomande.it/storage/photos/1/structurecategories/bar.png','https://menudigitale.easycomande.it/storage/photos/1/structurecategories/bar.png','fas fa-cocktail','https://menudigitale.easycomande.it/storage/photos/1/structurecategories/bar.png','<p>Bar</p>','<p>Bar</p>',1,'2020-06-10 08:54:09','2020-06-23 12:53:13');
/*!40000 ALTER TABLE `structure_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structure_users`
--

DROP TABLE IF EXISTS `structure_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structure_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `structure_id` int(10) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `structure_users_structure_id_foreign` (`structure_id`),
  KEY `structure_users_user_id_foreign` (`user_id`),
  CONSTRAINT `structure_users_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `structure_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structure_users`
--

LOCK TABLES `structure_users` WRITE;
/*!40000 ALTER TABLE `structure_users` DISABLE KEYS */;
INSERT INTO `structure_users` VALUES (1,1,3,'2020-06-16 10:25:40','2020-06-16 10:25:40'),(2,2,4,'2020-06-18 12:22:22','2020-06-18 12:22:22');
/*!40000 ALTER TABLE `structure_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structures` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town_id` int(10) unsigned NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `subcategories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripadvisor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_album` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci,
  `sponsored` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`),
  KEY `structures_town_id_foreign` (`town_id`),
  KEY `structures_category_id_foreign` (`category_id`),
  CONSTRAINT `structures_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `structure_categories` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `structures_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structures`
--

LOCK TABLES `structures` WRITE;
/*!40000 ALTER TABLE `structures` DISABLE KEYS */;
INSERT INTO `structures` VALUES (1,'masaniello','Masaniello Art Cafe\'','Largo Cesario Console, 7',1,'https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-00.jpg',2,'','40.6338737','14.6023588','+39 089871929','info@masanielloartcafe.it','www.masanielloartcafe.it','7383352','MasanielloArtCafe','636583833136187','masaniello_art_cafe_amalfi','<p>Masaniello Art Cafe\' - Amalfi, Italy</p>','<p>Masaniello Art Cafe\' - Amalfi, Italy</p>','https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-01.jpg,https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-02.jpg,https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-03.jpg',0,1,'2020-06-15 11:01:39','2020-06-15 11:01:39'),(2,'ilpinguino','Il Pinguino','via Fra Gerardo Sasso',1,'https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-00.jpg',1,'','40.634482','14.603132','089855454','info@ilpinguino.it','www.ilpinguino.it','7383352','ilpnguino','927903807305351','ilpinguino','<p>Il Pinguino</p>','<p>Il Pinguino</p>','https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-00.jpg',0,1,'2020-06-18 12:15:21','2020-06-18 12:15:21');
/*!40000 ALTER TABLE `structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towns`
--

DROP TABLE IF EXISTS `towns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `towns` (
  `id_code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (1,'amalfi','Amalfi','https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-00.jpg','40.634176','14.602545','comunediamalfi','222836363','+39 089 873512','https://www.amalfi.gov.it','<p>Amalfi was founded by the Romans in the IV century A.D. (in the coat of arms reads \"ex Descendit patribus Romanorum\"). The town became independent from the Byzantine Empire in 839, and proclaimed itself Maritime Republic (the first of the four most important ones with Pisa, Genoa and Venice). The core of its wealth was produced form the trade with the East. Amalfi reached its maximum splendor in the XI century with its powerful and agile fleet, with berths in the main ports of the Mediterranean. The Arsenal of masonry, used for the construction of the hulls of the galleys, are today two stone brick halls, divided by ten pillars. The sea front and the ancient port of Amalfi were swallowed by the sea, after an underwater landslide, caused by a powerful current of Libeccio in the night between 24 and 25 November 1343.</p>','<p>Fondata dai Romani nel IV sec d.C. (nello stemma della citt&agrave; si legge \"Descendit ex patribus Romanorum\") e resasi autonoma dall\'Impero bizantino nell\'839, Amalfi, la prima delle quattro Repubbliche Marinare, fece dei traffici commerciali con l\'Oriente il perno della sua ricchezza. Raggiunse il massimo del suo splendore nell\'XI secolo: era dotata di una potente ed agile flotta, con attracchi nei principali porti del Mediterraneo. Dell\'arsenale in muratura, utilizzato per la costruzione degli scafi delle galee di combattimento, restano oggi solo due corsie divise da dieci pilastri; la parte antistante, nonch&eacute; l\'antico porto di Amalfi, &egrave; stato risucchiato dal mare in seguito ad una frana sottomarina, provocata da una possente corrente di Libeccio nella notte fra il 24 e il 25 novembre del 1343.</p>','<p>Amalfi was founded by the Romans in the IV century A.D. (in the coat of arms reads \"ex Descendit patribus Romanorum\"). The town became independent from the Byzantine Empire in 839, and proclaimed itself Maritime Republic (the first of the four most important ones with Pisa, Genoa and Venice). The core of its wealth was produced form the trade with the East. Amalfi reached its maximum splendor in the XI century with its powerful and agile fleet, with berths in the main ports of the Mediterranean. The Arsenal of masonry, used for the construction of the hulls of the galleys, are today two stone brick halls, divided by ten pillars. The sea front and the ancient port of Amalfi were swallowed by the sea, after an underwater landslide, caused by a powerful current of Libeccio in the night between 24 and 25 November 1343.<br />The local traditions narrate that the mariners of Amalfi were the first to use the compass during their voyages, identifying the name of the inventor Flavio Gioia.<br />The present town, which lies on the higher grounds in the valley, features a series of white houses, most with barrel vault ceilings and built on terraces within a picturesque web of alleys and stairways.</p>\r\n<p>The main monument and symbol of the city is the Cathedral of St. Andrew, preceded by an imposing staircase. The original structure is in Romanesque style, currently covered with sumptuous Baroque decorations. The polychrome fa&ccedil;ade, preceded by an elegant portico, is dominated by the mosaic tympanum, Christ\'s triumph, artwork of Domenico Morelli, whose proofs are still preserved in the hall, entitled to him, in the Town Hall. Inside the Cathedral preserves a wide selection of masterpieces: an elegant coffered ceiling with paintings of the XVIII century, a wooden crucifix of the XIII century, a mother of pearl cross from Jerusalem, the baptismal font (a basin of porphyry stone from an ancient Roman villa), two pillars of Egyptian granite from nearby Paestum that support the main arch, spiral columns and an Ambon of the XII century. In the crypt are preserved the relics of St. Andrew, from which, since 1304, exudes a dew, called \"manna\", which is collected in a glass bowl that for the locals has miraculous effects.</p>\r\n<p>The Campanile (bell tower), edified since 1180, is composed of bifore and trifore windows, green and yellow majolica roof tiles, all with Arabesque influenced features. Dating to the IX century, the adjoining Basilica of the Crucifix, built over an existing early Christian church, at present remain only some of the columns and their capitals. Entitled to Our Lady of the Assumption and the Saints Cosma and Damiano, it is the seat of the Diocesan Museum of Sacred Arts, a permanent exhibition of the treasures of the Cathedral.</p>\r\n<p>The Cloister of Paradise (XIII century) is an elegant cloister in Moorish narrow crossed arches. Initially used as a burial place of the notables of Amalfi, today it preserves some Roman sarcophagi, a XIV century sarcophagus and the remains of the old fa&ccedil;ade of the Cathedral.<br />In the Civic Museum in the Town Hall are preserved the famous \"Tavole Amalfitane\" (Tabula Civitatis Malphae), the first legal text of navigation rules which had a great influence up till the XVII century. These rules are the main structure of the naval mercantile Foscarini Code, traced in Vienna and returned to Amalfi in 1929.<br />Going up to the Valle dei Mulini, worth a visit is the Paper Museum, located in the ruins of an old medieval mill of the XIII century, witnessing the old production techniques of the Amalfi paper-making traditions and the functionality of the old mills operated by the power of the stream Canneto.</p>','<p>Fondata dai Romani nel IV sec d.C. (nello stemma della citt&agrave; si legge \"Descendit ex patribus Romanorum\") e resasi autonoma dall\'Impero bizantino nell\'839, Amalfi, la prima delle quattro Repubbliche Marinare, fece dei traffici commerciali con l\'Oriente il perno della sua ricchezza. Raggiunse il massimo del suo splendore nell\'XI secolo: era dotata di una potente ed agile flotta, con attracchi nei principali porti del Mediterraneo. Dell\'arsenale in muratura, utilizzato per la costruzione degli scafi delle galee di combattimento, restano oggi solo due corsie divise da dieci pilastri; la parte antistante, nonch&eacute; l\'antico porto di Amalfi, &egrave; stato risucchiato dal mare in seguito ad una frana sottomarina, provocata da una possente corrente di Libeccio nella notte fra il 24 e il 25 novembre del 1343.<br />La tradizione tramanda che gli amalfitani furono i primi ad utilizzare la bussola durante le loro navigazioni, identificando l\'inventore col nome di Flavio Gioia.</p>\r\n<p>L\'odierno centro abitato, che sorge in parte su un pend&igrave;o, &egrave; caratterizzato da case bianche con volta a botte costruite su terrazzamenti ed una pittoresca trama di vicoli e scale.<br />Il monumento principale, nonch&eacute; simbolo della citt&agrave;, &egrave; il Duomo di Sant\'Andrea, preceduto da una scenografica scalinata. L\'impianto originario della struttura &egrave; romanico, attualmente rivestito da una sontuosa veste barocca. La policroma facciata, preceduta da un elegante portico, &egrave; dominata dal mosaico del timpano, il Trionfo di Cristo, opera di Domenico Morelli i cui cartoni originali sono tutt\'ora conservati presso l\'omonima sala della sede municipale. All\'interno &egrave; un tripudio di opere d\'arte: un elegante soffitto a cassettoni, tele del XVIII secolo, un crocifisso ligneo del XIII secolo, una croce di madreperla proveniente da Gerusalemme, la fonte battesimale (una vasca di porfido proveniente da un\'antica villa romana), due antiche colonne di granito egizio provenienti dalla vicina Paestum che sorreggono l\'arco trionfale, colonnine tortili e amboni del XII secolo. Nella cripta sono conservate le reliquie di Sant\'Andrea da cui, sin dal 1304 trasuda una rugiada, la manna, raccolta in un\'ampolla e dagli effetti taumaturgici.<br />Il Campanile, esistente sin dal 1180, &egrave; composto da bifore e trifore con coronamento arabeggiante e copertura ad embrici maiolicati verdi e gialli.</p>\r\n<p>Risale, invece, al IX secolo la Basilica del Crocifisso, sorta su un preesistente impianto paleocristiano di cui oggi restano alcune colonne e capitelli. Dedicata alla Madonna Assunta ed ai Santi Cosma e Damiano, oggi ospita il Museo Diocesano di Arte Sacra che raccoglie i Tesori del Duomo.<br />Il Chiostro del Paradiso (XIII secolo) &egrave; un elegante claustro in stile arabeggiante a stretti archi acuti ed incrociati. Inizialmente adoperato come luogo di sepoltura di notabili amalfitani, oggi conserva alcuni sarcofagi romani, un sarcofago trecentesco, resti dell\'antica facciata del Duomo.</p>\r\n<p>Presso il Museo Civico sono conservate le famose Tavole Amalfitane (Tabula Civitatis Malphae), il primo testo di diritto della navigazione che ebbe una grande influenza fino al XVII secolo. Parte integrante del Codice Foscariniano, furono ritrovate a Vienna e riportate ad Amalfi nel 1929.<br />Salendo verso la Valle dei Mulini &egrave; possibile visitare il Museo della Carta, situato in un\'antica cartiera medievale del XIII secolo, assistendo alle tecniche di realizzazione della rinomata carta di Amalfi e vedere in azione i vecchi mulini azionati dalla potenza del torrente Canneto.</p>','https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-01.jpg,https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-02.jpg,https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-03.jpg','2020-06-15 10:47:25','2020-06-15 10:47:25');
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','filippo@localidautore.it',NULL,'$2y$10$rs2a5nxO9d5yCXKOvuHdO.DlJm5oM0g9vIrwOf9R5LBQnBmPSMdje','xGzrZPGnmp3p8GDuXujK1bt2HMggqIr3DjCKAjzd89nNKWAx41pbU9d2s0Dr','2020-05-27 12:57:38','2020-06-23 12:20:55'),(2,'Filippo Di Costanzo','filippodicostanzo@me.com',NULL,'$2y$10$eafPU6BTkUazho53yWWkrueOHwK2UWpDdP7yUmwASPI4QdmOuK0JW',NULL,'2020-05-27 13:50:31','2020-05-27 13:50:31'),(3,'Masaniello Art Cafe','info@masanielloartcafe.it',NULL,'$2y$10$FGfnvLxaa0XO00lV/.uuQe5OnywRU9Mrk4yl9srSmq2QO05Z6ZkDi',NULL,'2020-06-16 10:25:20','2020-06-16 10:25:20'),(4,'Borgo San Pietro','info@borgosanpietro.it',NULL,'$2y$10$JaphNw0g5ucf1gH4Cc4YRu7N2wZ965r75P67GX32IiMTVln1/0IP2',NULL,'2020-06-16 12:50:24','2020-06-16 12:50:24');
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

-- Dump completed on 2020-06-24 15:06:49
