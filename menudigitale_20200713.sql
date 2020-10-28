CREATE DATABASE  IF NOT EXISTS `smartmenu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `smartmenu`;
-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 10.4.13.165:3306
-- Generation Time: Jul 13, 2020 at 10:31 AM
-- Server version: 10.1.44-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menudigitale`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergens`
--

CREATE TABLE `allergens` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `initials_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `initials_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `allergens`
--

INSERT INTO `allergens` (`id_code`, `id`, `name_en`, `name_it`, `icon`, `initials_en`, `initials_it`, `description_en`, `description_it`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'gluten', 'Gluten', 'Glutine', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/gluten.png', 'G', 'G', '<p>Gluten</p>', '<p>Glutine</p>', 1, '2020-06-10 10:28:44', '2020-06-22 08:10:30'),
(2, 'celery', 'Celery', 'Sedano', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/celery.png', 'S', 'S', '<p>Celery</p>', '<p>Sedano</p>', 1, '2020-06-10 15:00:03', '2020-06-22 08:11:49'),
(3, 'nuts', 'Nuts', 'Frutta a Guscio', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/nuts.png', 'FG', 'FG', '<p>Nuts</p>', '<p>Frutta a Guscio</p>', 1, '2020-06-11 11:14:10', '2020-06-22 08:11:22'),
(4, 'milk', 'Milk', 'Latte', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/milk.png', 'L', 'L', '<p>Milk</p>', '<p>Latte</p>', 1, '2020-06-15 12:10:17', '2020-06-22 08:12:25'),
(5, 'eggs', 'Eggs', 'Uova', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/eggs.png', 'U', 'U', '<p>Eggs</p>', '<p>Uova</p>', 1, '2020-06-22 08:13:05', '2020-06-22 08:13:18'),
(6, 'fish', 'Fish', 'Pesce', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/fish.png', 'P', 'P', '<p>Fish</p>', '<p>Pesce</p>', 1, '2020-06-22 08:13:56', '2020-06-22 08:13:56'),
(7, 'lupins', 'Lupins', 'Lupini', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/lupins.png', 'L', 'L', '<p>Lupins</p>', '<p>Lupini</p>', 1, '2020-06-22 08:14:28', '2020-06-22 08:14:28'),
(8, 'mustard', 'Mustard', 'Senape', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/mustard.png', 'SE', 'SE', '<p>Mustad</p>', '<p>Senape</p>', 1, '2020-06-22 08:14:56', '2020-06-22 08:14:56'),
(9, 'peanuts', 'Peanuts', 'Arachidi', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/allergens/peanuts.png', 'A', 'A', '<p>Peanuts</p>', '<p>Arachidi</p>', 1, '2020-06-22 08:15:47', '2020-06-24 12:04:55'),
(10, 'sesam', 'Sesam', 'Sesamo', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/sesam.png', 'SS', 'SS', '<p>Sesam</p>', '<p>Sesamo</p>', 1, '2020-06-22 08:16:27', '2020-06-22 08:16:27'),
(11, 'shellfish', 'Shell Fish', 'Crostacei', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/shellfish.png', 'C', 'C', '<p>Shellfish</p>', '<p>Crostacei</p>', 1, '2020-06-22 08:17:06', '2020-06-22 08:17:06'),
(12, 'soya', 'Soya', 'Soia', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/soya.png', 'SO', 'SO', '<p>Soya</p>', '<p>Soia</p>', 1, '2020-06-22 08:17:32', '2020-06-22 08:17:32'),
(13, 'sulphites', 'Sulphites', 'Solfiti', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/sulphites.png', 'AS', 'AS', '<p>Sulphites</p>', '<p>Solfiti</p>', 1, '2020-06-22 08:18:15', '2020-06-22 08:18:15'),
(14, 'clams', 'Clams', 'Molluschi', 'https://menudigitale.easycomande.it/storage/photos/1/allergens/clams.png', 'M', 'M', '<p>Clams</p>', '<p>Molluschi</p>', 1, '2020-06-22 08:19:14', '2020-06-22 08:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `structure_id` int(10) UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ingredients` longtext COLLATE utf8_unicode_ci NOT NULL,
  `allergens` longtext COLLATE utf8_unicode_ci NOT NULL,
  `features` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id_code`, `id`, `name_en`, `name_it`, `cover`, `structure_id`, `visible`, `view`, `price`, `ingredients`, `allergens`, `features`, `description_en`, `description_it`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'pastaesalsiccia', 'Pasta with Sausage', 'Pasta E Salsiccia', 'https://menudigitale.easycomande.it/storage/photos/1/Structure Category/423px-Coppa_Italia_-_Logo_2019.svg.png', 1, 1, 'ingredients', '12', '2,4,5', '1,2', '1', '<p>Pasta with Sausage</p>', '<p>Pasta e Salsiccia</p>', 1, '2020-06-15 13:18:08', '2020-06-15 13:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `initials_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `initials_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id_code`, `id`, `name_en`, `name_it`, `icon`, `initials_en`, `initials_it`, `description_en`, `description_it`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'frozen', 'Frozen', 'Surgelato', 'https://menudigitale.easycomande.it/storage/photos/1/features/frozen.png', 'FR', 'SU', '<p>Frozen</p>', '<p>Surgelato</p>', 1, '2020-06-15 12:12:15', '2020-06-22 08:21:32'),
(2, 'knockeddown', 'Knocked Down', 'Abbattuto', 'https://menudigitale.easycomande.it/storage/photos/1/features/knocked-down.png', 'KD', 'AB', '<p>Knocked Down</p>', '<p>Abbattuto</p>', 1, '2020-06-22 08:22:10', '2020-06-22 08:22:10'),
(3, 'spicy', 'Spicy', 'Piccante', 'https://menudigitale.easycomande.it/storage/photos/1/features/spicy.png', 'S', 'P', '<p>Spicy</p>', '<p>Piccante</p>', 1, '2020-06-22 08:22:40', '2020-06-22 08:22:40'),
(4, 'bio', 'Bio', 'Bio', 'https://menudigitale.easycomande.it/storage/photos/1/features/bio.png', 'B', 'B', '<p>Bio</p>', '<p>Bio</p>', 1, '2020-06-22 08:23:08', '2020-06-22 08:23:08'),
(5, 'vegan', 'Vegan', 'Vegano', 'https://menudigitale.easycomande.it/storage/photos/1/features/vegan.png', 'VEG', 'VEG', '<p>Vegan</p>', '<p>Vegano</p>', 1, '2020-06-22 08:23:37', '2020-06-22 08:23:37'),
(6, 'vegetarian', 'Vegetarian', 'Vegetariano', 'https://menudigitale.easycomande.it/storage/photos/1/features/vegetarian.png', 'VG', 'VG', '<p>Vegetarian</p>', '<p>Vegetariano</p>', 1, '2020-06-22 08:24:12', '2020-06-22 08:24:12'),
(7, 'glutenfree', 'Gluten Free', 'Senza Glutine', 'https://menudigitale.easycomande.it/storage/photos/1/features/gluten-free.png', 'GF', 'SG', '<p>Gluten Free</p>', '<p>Senza Glutine</p>', 1, '2020-06-22 08:25:00', '2020-06-22 08:25:00'),
(8, 'lactosefree', 'Lactose Free', 'Senza Lattosio', 'https://menudigitale.easycomande.it/storage/photos/1/features/lactose-free.png', 'LF', 'SL', '<p>Lactose Free</p>', '<p>Senza Lattosio</p>', 1, '2020-06-22 08:25:39', '2020-06-22 08:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id_code`, `id`, `name_en`, `name_it`, `icon`, `visible`, `created_at`, `updated_at`) VALUES
(3, '010', '10 cl', '10 cl', NULL, 1, '2020-07-03 12:31:54', '2020-07-03 12:31:54'),
(4, '020', '20 cl', '20 cl', NULL, 1, '2020-07-03 12:32:10', '2020-07-03 12:32:10'),
(5, 'glass', 'Glass', 'Bicchiere', NULL, 1, '2020-07-04 06:12:55', '2020-07-04 06:12:55'),
(6, '033', '33 cl', '33 cl', NULL, 1, '2020-07-04 06:40:45', '2020-07-04 06:40:45'),
(7, '005', '5 cl', '5 cl', NULL, 1, '2020-07-12 12:09:32', '2020-07-12 12:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allergens` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_it` longtext COLLATE utf8_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id_code`, `id`, `name_en`, `name_it`, `allergens`, `description_en`, `description_it`, `visible`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'sedano', 'Sedan', 'Sedano', '1', '<p>Sedan</p>', '<p>Sedano</p>', 1, '1', '2020-06-11 09:59:03', '2020-06-18 13:11:47'),
(2, 'farina', 'Flour 00', 'Farina 00', '1', NULL, NULL, 1, '1', '2020-06-11 10:02:22', '2020-06-11 15:57:57'),
(3, 'pesce', 'Fish', 'Pesce', '3', '<p>Fish</p>', '<p>Pesce</p>', 1, '1', '2020-06-11 11:15:11', '2020-06-11 14:22:34'),
(4, 'pasta', 'Pasta', 'Pasta', '2,1', NULL, NULL, 1, '1', '2020-06-11 15:40:30', '2020-06-11 15:54:58'),
(5, 'salsiccia', 'Sausage', 'Salsiccia', NULL, NULL, NULL, 1, '1', '2020-06-11 15:44:16', '2020-06-11 15:55:29'),
(6, 'salame', 'Salami', 'Salame', '2', '<p>Salami</p>', '<p>Salame</p>', 1, '1', '2020-06-16 12:52:21', '2020-06-29 13:50:27'),
(7, 'xxx', 'xxx', 'xxx', '3,4', NULL, NULL, 1, '4', '2020-06-24 18:49:14', '2020-06-24 18:49:14'),
(8, 'rice', 'Rice', 'Riso', NULL, NULL, NULL, 1, '1', '2020-06-29 13:49:51', '2020-06-29 13:49:51'),
(9, 'peas', 'Peas', 'Piselli', NULL, NULL, NULL, 1, '1', '2020-06-29 13:50:59', '2020-06-29 13:50:59'),
(10, 'Mozzarella', 'Mozzarella', 'Mozzarella', '4', NULL, NULL, 1, '1', '2020-06-29 13:51:11', '2020-06-29 13:51:11'),
(11, 'potatoes', 'Potatoes', 'Patate', NULL, NULL, NULL, 1, '1', '2020-06-29 13:51:45', '2020-06-29 13:51:45'),
(12, 'tomato', 'Tomato', 'Pomodoro', NULL, NULL, NULL, 1, '1', '2020-07-04 06:29:40', '2020-07-04 06:29:40'),
(13, 'yaguara', 'Yaguara Organic Cachaca', 'Yaguara Organic Cachaca', NULL, NULL, NULL, 1, '6', '2020-07-04 11:35:22', '2020-07-04 11:35:22'),
(14, 'strowberrydriedtomatoes', 'Strowberry & Dried Tomatoes Liquor', 'Liquore di Fragole & Pomodori Secchi', NULL, NULL, NULL, 1, '6', '2020-07-04 11:36:17', '2020-07-04 11:36:17'),
(15, 'limejuice', 'Lime Juice', 'Succo di Lime', NULL, NULL, NULL, 1, '1', '2020-07-04 11:36:38', '2020-07-07 07:11:11'),
(16, 'blackolivesyrup', 'Black Olives Syrup', 'Sciroppo di Olive Nere', NULL, NULL, NULL, 1, '6', '2020-07-04 11:37:21', '2020-07-04 11:37:21'),
(17, 'crustas', 'Basil & Salt Crusta', 'Crustas di Basilico e Sale', NULL, NULL, NULL, 1, '6', '2020-07-04 11:37:47', '2020-07-04 11:37:47'),
(18, 'familybotanicspirits', 'Family Botanic Spirits', 'Family Botanic Spirits', NULL, NULL, NULL, 1, '6', '2020-07-04 11:52:18', '2020-07-04 11:52:18'),
(19, 'champagnecordial', 'Champagne Cordial', 'Champagne Cordial', NULL, NULL, NULL, 1, '6', '2020-07-04 11:52:57', '2020-07-04 11:52:57'),
(20, 'liquoredibergamotto', 'Bergamotto & Elderflower Liquor', 'Liquore di Bergamotto & Elderflower', NULL, NULL, NULL, 1, '6', '2020-07-04 11:57:22', '2020-07-04 11:57:22'),
(21, 'pinkgrapefruit', 'Pink Grapefruit Soda', 'Soda al Pompelmo Rosa', NULL, NULL, NULL, 1, '6', '2020-07-04 11:57:50', '2020-07-04 11:57:50'),
(22, 'espolontequila', 'Espolòn Tequila', 'Espolòn Tequila', NULL, NULL, NULL, 1, '6', '2020-07-04 11:58:14', '2020-07-04 11:58:14'),
(23, 'derrumbesmezcal', 'Derrumbes Mezcal', 'Derrumbes Mezcal', NULL, NULL, NULL, 1, '6', '2020-07-04 11:58:34', '2020-07-04 11:58:34'),
(24, 'shrubpassion', 'Passion Fruit & Pepperoni Shrub', 'Shrub Passion Fruit & Peperoni', NULL, NULL, NULL, 1, '6', '2020-07-04 11:59:18', '2020-07-04 11:59:18'),
(25, 'sodawater', 'Soda Water', 'Soda', NULL, NULL, NULL, 1, '1', '2020-07-04 11:59:29', '2020-07-07 07:10:57'),
(26, 'havana3infused', 'Havana 3 Mama Juana Infused', 'Havana 3 Infuso al Mama Juana', NULL, NULL, NULL, 1, '6', '2020-07-04 12:00:12', '2020-07-04 12:00:12'),
(27, 'beetrotschillyliquor', 'Beetroots & Chilly Liquor', 'Liquore di Barbabietole & Peperoncino', NULL, NULL, NULL, 1, '6', '2020-07-04 12:00:46', '2020-07-04 12:00:46'),
(28, 'fortifiedwine', 'Fortified Wine', 'Vino Fortificato', NULL, NULL, NULL, 1, '6', '2020-07-04 12:01:06', '2020-07-04 12:01:06'),
(29, 'campari', 'Campari', 'Campari', NULL, NULL, NULL, 1, '1', '2020-07-04 12:01:26', '2020-07-04 12:01:26'),
(30, 'tonicwater', 'Tonic Water', 'Acqua Tonica', NULL, NULL, NULL, 1, '1', '2020-07-04 12:01:38', '2020-07-04 12:01:38'),
(31, 'boompjesjenever', 'Boompjes Jenever', 'Boompjes Jenever', NULL, NULL, NULL, 1, '6', '2020-07-04 12:02:13', '2020-07-04 12:02:13'),
(32, 'citricwater', 'Citric Water', 'Acqua Citrica', NULL, NULL, NULL, 1, '6', '2020-07-04 12:02:27', '2020-07-04 12:02:33'),
(33, 'mentholsyrup', 'Menthol Syrup', 'Sciroppo di Mentolo', NULL, NULL, NULL, 1, '6', '2020-07-04 12:02:54', '2020-07-04 12:03:09'),
(34, 'lactofermentedblueberries', 'Lacto Fermented Blueberries', 'Mirtilli Lattofermentati', NULL, NULL, NULL, 1, '6', '2020-07-04 12:03:38', '2020-07-04 12:03:38'),
(35, 'roseliquor', 'Rose Liquor', 'Liquore alle Rose', NULL, NULL, NULL, 1, '6', '2020-07-04 12:03:57', '2020-07-04 12:03:57'),
(36, 'fevertreemediterranean', 'Fever Tree Mediterranean Tonic Water', 'Fever Tree Mediterranean Tonic Water', NULL, NULL, NULL, 1, '6', '2020-07-04 12:04:30', '2020-07-04 12:04:30'),
(37, 'cubebpeppertincture', 'Cubeb Pepper Tincture', 'Tintura di Cubube', NULL, NULL, NULL, 1, '6', '2020-07-04 12:05:17', '2020-07-04 12:05:17'),
(38, 'aperol', 'Aperol', 'Aperol', NULL, NULL, NULL, 1, '1', '2020-07-07 06:56:11', '2020-07-07 06:56:11'),
(39, 'redvermouth', 'Red Vermouth', 'Vermouth Rosso', NULL, NULL, NULL, 1, '1', '2020-07-07 06:56:40', '2020-07-07 06:56:40'),
(40, 'tequila', 'Tequila', 'Tequila', NULL, NULL, NULL, 1, '1', '2020-07-07 06:57:42', '2020-07-07 06:57:42'),
(41, 'gininfusedblacktea', 'Gin Infused with Black Tea', 'Gin Infuso al Tè Nero', NULL, NULL, NULL, 1, '1', '2020-07-07 06:58:42', '2020-07-07 06:58:42'),
(42, 'vanilla syrup', 'Vanilla Syrup', 'Sciroppo di Vaniglia', NULL, NULL, NULL, 1, '1', '2020-07-07 07:02:11', '2020-07-07 07:02:11'),
(43, 'chamomilesoda', 'Chamomile Soda', 'Soda alla Camomilla', NULL, NULL, NULL, 1, '1', '2020-07-07 07:02:46', '2020-07-07 07:02:46'),
(44, 'disaronno', 'Disaronno', 'Disaronno', NULL, NULL, NULL, 1, '1', '2020-07-07 07:03:19', '2020-07-07 07:03:19'),
(45, 'mezcal', 'Mezcal', 'Mezcal', NULL, NULL, NULL, 1, '1', '2020-07-07 07:03:28', '2020-07-07 07:03:28'),
(46, 'prosecco', 'Prosecco', 'Prosecco', NULL, NULL, NULL, 1, '1', '2020-07-07 07:03:51', '2020-07-07 07:03:51'),
(47, 'licoriceliqueur', 'Licorice Liqueur', 'Liquore di Liquirizia', NULL, NULL, NULL, 1, '7', '2020-07-07 07:14:28', '2020-07-07 07:14:28'),
(48, 'whiterum', 'White Rum', 'Rum Bianco', NULL, NULL, NULL, 1, '1', '2020-07-07 07:15:14', '2020-07-07 07:15:14'),
(49, 'winereduction', 'Wine Reduction', 'Riduzione di Vino', NULL, NULL, NULL, 1, '1', '2020-07-07 07:15:32', '2020-07-07 07:15:32'),
(50, 'mixofbitters', 'Mix of Bitters', 'Mix di Amari', NULL, NULL, NULL, 1, '7', '2020-07-07 07:16:14', '2020-07-07 07:16:14'),
(51, 'montenegrobitter', 'Montenegro Bitter', 'Amaro Montenegro', NULL, NULL, NULL, 1, '1', '2020-07-07 07:28:23', '2020-07-07 07:28:23'),
(52, 'syrupginger', 'Syrup Ginger', 'Sciroppo di Zenzero', NULL, NULL, NULL, 1, '1', '2020-07-07 07:29:09', '2020-07-07 07:29:09'),
(53, 'stgermain', 'St Germain', 'St Germain', NULL, NULL, NULL, 1, '1', '2020-07-07 11:16:53', '2020-07-07 11:16:53'),
(54, 'elderflower', 'Elderflower Syrup', 'Sciroppo di Fiori di Sambuco', NULL, NULL, NULL, 0, '1', '2020-07-07 11:18:20', '2020-07-07 11:18:20'),
(55, 'whitevermouth', 'White Vermouth', 'Vermouth Bianco', NULL, NULL, NULL, 1, '1', '2020-07-07 11:18:47', '2020-07-07 11:19:03'),
(56, 'suze', 'Suze', 'Suze', NULL, NULL, NULL, 1, '1', '2020-07-07 11:19:13', '2020-07-07 11:19:13'),
(57, 'gin', 'Gin', 'Gin', NULL, NULL, NULL, 1, '1', '2020-07-07 11:19:30', '2020-07-07 11:19:30'),
(58, 'bourbonwhisky', 'Bourbon Whisky', 'Bourbon Whisky', NULL, NULL, NULL, 1, '1', '2020-07-07 11:19:57', '2020-07-07 11:19:57'),
(59, 'ryewhisky', 'Rye Whisky', 'Rye Whisky', NULL, NULL, NULL, 1, '1', '2020-07-07 11:20:14', '2020-07-07 11:20:14'),
(60, 'cointreau', 'Cointreau', 'Cointreau', NULL, NULL, NULL, 1, '1', '2020-07-07 11:20:41', '2020-07-07 11:20:41'),
(61, 'agavenectar', 'Agave Nectar', 'Nettare D\'Agave', NULL, NULL, NULL, 1, '1', '2020-07-07 11:21:18', '2020-07-07 11:21:18'),
(62, 'vodka', 'Vodka', 'Vodka', NULL, NULL, NULL, 1, '1', '2020-07-07 11:21:50', '2020-07-07 11:21:50'),
(63, 'dryvermouth', 'Dry Vermouth', 'Dry Vermouth', NULL, NULL, NULL, 1, '1', '2020-07-07 11:22:05', '2020-07-07 11:22:05'),
(64, 'coffeeliqueur', 'Coffee Liqueur', 'Liquore di Caffè', NULL, NULL, NULL, 1, '1', '2020-07-07 11:22:31', '2020-07-07 11:22:31'),
(65, 'espresso', 'Espresso', 'Espresso', NULL, NULL, NULL, 1, '1', '2020-07-07 11:22:42', '2020-07-07 11:22:42'),
(66, 'sugarsyrup', 'Sugar Syrup', 'Sciroppo di Zucchero', NULL, NULL, NULL, 1, '1', '2020-07-07 11:23:06', '2020-07-07 11:23:06'),
(67, 'cranberryjuice', 'Cranberry Juice', 'Succo di Mirtillo', NULL, NULL, NULL, 1, '1', '2020-07-07 11:23:27', '2020-07-07 11:23:27'),
(68, 'passionfruitsyrup', 'Passion Fruit Syrup', 'Sciroppo di Frutto della Passione', NULL, NULL, NULL, 1, '1', '2020-07-07 11:24:08', '2020-07-07 11:57:36'),
(69, 'orangejuice', 'Orange Juice', 'Succo d\'Arancia', NULL, NULL, NULL, 1, '1', '2020-07-07 11:24:26', '2020-07-07 11:24:26'),
(70, 'peachliqueur', 'Peach Liqueur', 'Liquore di Pesca', NULL, NULL, NULL, 1, '1', '2020-07-07 11:24:41', '2020-07-07 11:24:41'),
(71, 'gingerale', 'Ginger Ale', 'Ginger Ale', NULL, NULL, NULL, 1, '1', '2020-07-07 11:24:59', '2020-07-07 11:24:59'),
(72, 'tomatojuice', 'Tomato Juice', 'Succo di Pomodoro', NULL, NULL, NULL, 1, '1', '2020-07-07 11:25:14', '2020-07-07 11:25:14'),
(73, 'pineapplepuree', 'Pineapple Puree', 'Purea di Ananas', NULL, NULL, NULL, 1, '1', '2020-07-07 11:25:57', '2020-07-07 11:25:57'),
(75, 'coconutliqueur', 'Coconut Liqueur', 'Liquore di Cocco', NULL, NULL, NULL, 1, '1', '2020-07-07 11:26:40', '2020-07-07 12:04:18'),
(76, 'peachpuree', 'Peach Puree', 'Purea di Pesca', NULL, NULL, NULL, 1, '1', '2020-07-07 11:27:15', '2020-07-07 11:27:15'),
(77, 'strawberrypuree', 'Strawberry Puree', 'Purea di Fragola', NULL, NULL, NULL, 1, '1', '2020-07-07 11:27:28', '2020-07-07 11:27:28'),
(78, 'cognac', 'Cognac', 'Cognac', NULL, NULL, NULL, 1, '1', '2020-07-07 11:27:38', '2020-07-07 11:27:38'),
(79, 'champagne', 'Champagne', 'Champagne', NULL, NULL, NULL, 1, '1', '2020-07-07 11:27:49', '2020-07-07 11:27:49'),
(80, 'angosturabitter', 'Angostura Bitter', 'Angostura', NULL, NULL, NULL, 1, '1', '2020-07-07 11:28:04', '2020-07-07 11:28:04'),
(81, 'sugarcube', 'Sugar Cube', 'Zolletta di Zucchero', NULL, NULL, NULL, 1, '1', '2020-07-07 11:28:17', '2020-07-07 11:28:17'),
(82, 'olivebrine', 'Olive Brine', 'Salamoia d\'Oliva', NULL, NULL, NULL, 1, '1', '2020-07-07 11:43:50', '2020-07-07 11:43:50'),
(83, 'mint', 'Mint', 'Menta', NULL, NULL, NULL, 1, '1', '2020-07-07 12:02:26', '2020-07-07 12:02:26'),
(84, 'brownsugar', 'Brown Sugar', 'Zucchero di Canna', NULL, NULL, NULL, 1, '1', '2020-07-07 12:02:39', '2020-07-07 12:02:39'),
(85, 'coconutsyrup', 'Coconut Syrup', 'Sciroppo di Cocco', NULL, NULL, NULL, 1, '1', '2020-07-07 12:03:52', '2020-07-07 12:03:52'),
(86, 'fiordilatte', 'Fior di Latte', 'Fior di Latte', NULL, NULL, NULL, 1, '1', '2020-07-08 10:21:21', '2020-07-08 10:22:12'),
(87, 'basil', 'Basil', 'Basilico', NULL, NULL, NULL, 1, '1', '2020-07-08 10:23:18', '2020-07-08 10:24:31'),
(88, 'triplesec', 'Triple Sec', 'Triple Sec', NULL, NULL, NULL, 1, '1', '2020-07-12 11:29:20', '2020-07-12 11:29:20'),
(89, 'sciroppodagave', 'Agave Syrup', 'Sciroppo d\'Agave', NULL, NULL, NULL, 1, '1', '2020-07-12 11:30:48', '2020-07-12 11:30:48'),
(90, 'lemonjuice', 'Lemon Juice', 'Succo di Limone', NULL, NULL, NULL, 0, '1', '2020-07-12 11:32:52', '2020-07-12 11:32:52'),
(91, 'sugar', 'Sugar', 'Zucchero', NULL, NULL, NULL, 1, '1', '2020-07-12 11:44:03', '2020-07-12 11:44:03'),
(92, 'scotchwhisky', 'Scotch Whisky', 'Scotch Whisky', NULL, NULL, NULL, 1, '1', '2020-07-12 11:45:25', '2020-07-12 11:45:25'),
(93, 'lime', 'Lime', 'Lime', NULL, NULL, NULL, 1, '1', '2020-07-12 11:45:35', '2020-07-12 11:45:35'),
(94, 'amaretto', 'Amaretto', 'Amaretto', NULL, NULL, NULL, 1, '1', '2020-07-12 11:45:47', '2020-07-12 11:45:47'),
(95, 'rum', 'Rum', 'Rum', NULL, NULL, NULL, 1, '1', '2020-07-12 11:46:36', '2020-07-12 11:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `structure_id` int(10) UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ingredients` longtext COLLATE utf8_unicode_ci,
  `allergens` longtext COLLATE utf8_unicode_ci,
  `features` longtext COLLATE utf8_unicode_ci,
  `wine_winery` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wine_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wine_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wine_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wine_region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_it` longtext COLLATE utf8_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_code`, `id`, `category_id`, `name_en`, `name_it`, `cover`, `structure_id`, `visible`, `view`, `price`, `ingredients`, `allergens`, `features`, `wine_winery`, `wine_year`, `format`, `vol`, `wine_type`, `wine_doc`, `wine_region`, `description_en`, `description_it`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'pastaesalsiccia', 1, 'Pasta with Sausage', 'Pasta E Salsiccia', NULL, 1, 1, 'ingredients', '12', '5,4', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Pasta</p>', '<p>Pasta</p>', 1, '2020-06-16 08:54:44', '2020-06-22 12:32:58'),
(2, 'filetto', 4, 'Fillet', 'Filetto', NULL, 1, 1, 'ingredients', '10', '4', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Filetto</p>', '<p>Filetto</p>', 1, '2020-06-17 08:28:36', '2020-06-17 08:28:36'),
(3, 'pastaesalame', 1, 'Pasta with Salami', 'Pasta e Salame', NULL, 2, 1, 'ingredients', '20', '2,5,1,4', '1,2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4, '2020-06-18 12:23:43', '2020-06-18 12:23:43'),
(4, 'margherita', 5, 'margherita', 'margherita', NULL, 2, 1, 'ingredients', '5', '2,6', '4', '7', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4, '2020-06-24 11:37:11', '2020-06-24 11:37:11'),
(5, '4formaggi', 5, '4 Formaggi', '4 Formaggi', NULL, 2, 1, 'description', '5', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Pizza ai 4 formaggi</p>', '<p>Pizza ai 4 formaggi</p>', 4, '2020-06-24 12:05:49', '2020-06-24 12:07:32'),
(6, '4stagioni', 5, '4 Stagioni', '4 Stagioni', NULL, 2, 1, 'ingredients', '7', '2,6,38', '1', '7,8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-06-24 12:41:57', '2020-07-12 11:39:38'),
(7, 'capricciosa', 5, 'capricciosa', 'capricciosa', NULL, 2, 1, 'ingredients', '8.5', '2,6,5', '11,3', '2,4,5', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4, '2020-06-24 12:49:52', '2020-06-24 12:49:52'),
(8, 'diavola', 5, 'diavola', 'diavola', 'https://www.petitchef.it/imgupl/recipe/pizza-alla-diavola--md-455636p707855.jpg', 2, 1, 'ingredients', '8', '2,6', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4, '2020-06-24 12:52:57', '2020-06-24 12:52:57'),
(9, 'salsicciabroccoli', 5, 'salsicciabroccoli', 'salsicciabroccoli', NULL, 2, 1, 'ingredients', '8', '2,5', '1', '3,6', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4, '2020-06-24 13:01:06', '2020-06-24 13:01:06'),
(10, 'calzone', 5, 'Calzone', 'Calzone', NULL, 2, 1, 'description', '8,5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Calzone super farcito</p>', '<p>Calzone super farcito</p>', 4, '2020-06-24 13:03:56', '2020-06-24 13:03:56'),
(11, 'cottopomodori', 8, 'Cotto e pomodori', 'Cotto e pomodori', NULL, 2, 1, 'ingredients', '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 4, '2020-06-24 13:57:16', '2020-06-24 13:57:16'),
(12, 'borgosanpietro', 11, 'Borgo San Pietro', 'Borgo San Pietro', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Borgo San Pietro</p>', '<p>Borgo San Pietro</p>', 5, '2020-06-25 15:18:34', '2020-06-25 15:18:34'),
(13, 'breasolarucolagrana', 11, 'Bresaola Rucola e Grana', 'Bresaola Rucola e Grana', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Bresaola Rucola e Grana</p>', '<p>Bresaola Rucola e Grana</p>', 5, '2020-06-25 15:19:16', '2020-06-25 15:19:16'),
(14, 'bruschetta', 11, 'Bruschetta cotto e funghi', 'Bruschetta cotto e funghi', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Bruschetta cotto e funghi</p>', '<p>Bruschetta cotto e funghi</p>', 5, '2020-06-25 15:19:56', '2020-06-25 15:19:56'),
(15, 'Bruschetta1', 11, 'Bruschetta Pomodoro e mozzarella', 'Bruschetta Pomodoro e mozzarella', NULL, 2, 0, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Bruschetta Pomodoro e mozzarella</p>', '<p>Bruschetta Pomodoro e mozzarella</p>', 5, '2020-06-25 15:20:25', '2020-06-25 15:20:25'),
(16, 'Caponata', 11, 'Caponata', 'Caponata', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Caponata</p>', '<p>Caponata</p>', 5, '2020-06-25 15:20:45', '2020-06-25 15:20:45'),
(17, 'Caprese', 11, 'Caprese', 'Caprese', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Caprese</p>', '<p>Caprese</p>', 5, '2020-06-25 15:21:07', '2020-06-25 15:21:07'),
(18, 'Misto Salumi', 11, 'Misto Salumi', 'Misto Salumi', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Misto Salumi</p>', '<p>Misto Salumi</p>', 5, '2020-06-25 15:21:30', '2020-06-25 15:21:30'),
(19, 'Prosciutto e Melone', 11, 'Prosciutto e Melone', 'Prosciutto e Melone', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Prosciutto e Melone</p>', '<p>Prosciutto e Melone</p>', 5, '2020-06-25 15:21:51', '2020-06-25 15:21:51'),
(20, 'Prosciutto e Mozzarella', 11, 'Prosciutto e Mozzarella', 'Prosciutto e Mozzarella', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Prosciutto e Mozzarella</p>', '<p>Prosciutto e Mozzarella</p>', 5, '2020-06-25 15:22:13', '2020-06-25 15:22:13'),
(21, 'lemonsqueezed', 7, 'Squeezed Lemon', 'Spremuta di Limone', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-06-29 12:15:18', '2020-07-12 10:58:02'),
(22, 'caffeespresso', 15, 'Espresso', 'Caffè Espresso', NULL, 3, 1, 'ingredients', '2,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-06-29 12:17:46', '2020-07-12 10:48:01'),
(23, 'cappuccino', 15, 'Cappuccino', 'Cappuccino', NULL, 3, 1, 'ingredients', '3,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-29 12:20:11', '2020-07-07 08:50:22'),
(24, 'cappuccinodeca', 15, 'Decaffeneid Cappuccino', 'Cappuccino Deca', NULL, 3, 1, 'ingredients', '4,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-29 12:20:41', '2020-07-07 08:50:32'),
(25, 'cappuccinosoya', 15, 'Soya Cappuccino', 'Cappuccino di Soia', NULL, 3, 1, 'ingredients', '4,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:21:15', '2020-07-12 10:48:14'),
(26, 'caffehag', 15, 'Decaffeinated Coffee', 'Caffe Hag', NULL, 3, 1, 'ingredients', '3,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:21:56', '2020-07-12 10:48:07'),
(27, 'icecoffeecream', 15, 'Ice Coffee Cream', 'Crema di Caffè', NULL, 3, 1, 'ingredients', '3,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:22:30', '2020-07-12 10:48:19'),
(28, 'ginsengcoffee', 15, 'Ginseng Coffee', 'Caffè al Ginseng', NULL, 3, 1, 'ingredients', '3,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:26:29', '2020-07-12 10:52:05'),
(29, 'barleycoffee', 15, 'Barley Coffee', 'Caffè d\'Orzo', NULL, 3, 1, 'ingredients', '3,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:27:03', '2020-07-12 10:52:08'),
(30, 'americancoffee', 15, 'American Coffee', 'Caffè Americano', NULL, 3, 1, 'ingredients', '3,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:27:26', '2020-07-12 10:52:11'),
(31, 'coffeemilk', 15, 'Coffee with Milk', 'Caffè Latte', NULL, 3, 1, 'ingredients', '4,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:27:54', '2020-07-12 10:48:04'),
(32, 'hotchocolate', 15, 'Hot Chocolate', 'Cioccolata Calda', NULL, 3, 1, 'ingredients', '4,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:28:20', '2020-07-12 10:48:17'),
(33, 'blendedcoffee', 15, 'Blended Coffee Drink', 'Caffè Shakerato', NULL, 3, 1, 'ingredients', '4,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:28:47', '2020-07-12 10:48:09'),
(34, 'irishcoffee', 15, 'Irish Coffee', 'Irish Coffee', NULL, 3, 1, 'ingredients', '9,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:29:10', '2020-07-12 10:48:21'),
(35, 'tea', 15, 'Tea', 'Tè', NULL, 3, 1, 'ingredients', '3,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mint, Red Fruits, Vanilla, Breakfast, Earl Grey</p>', '<p>Menta, Frutti Rossi, Vaniglia, Breakfast, Earl Grey</p>', 6, '2020-06-29 12:29:28', '2020-07-12 10:49:43'),
(36, 'herbtea', 15, 'Herb Tea', 'Tisane', NULL, 3, 1, 'ingredients', '4,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Fennel, Mallow, Wood Rose, Thorn Tree</p>', '<p>Finocchietto, Malva, Rosa di Bosco, Biancospino</p>', 6, '2020-06-29 12:29:57', '2020-07-12 10:52:24'),
(37, 'fruitjuice', 7, 'Fruit Juice', 'Succhi di Frutta', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Pear, Peach, Apple Apricot, Tomato, Ananas, Grapefruit, ACE, Green Apple, Orange, Mirtillo</p>', '<p>Pera, Pesca, Mela, Albicocca, Pomodoro, Ananas, Pompelmo, ACE, Mela Verde, Arancia, Mirtillo</p>', 6, '2020-06-29 12:31:46', '2020-07-12 10:59:33'),
(38, 'estatelemon', 7, 'Estathe Lemon', 'Estathe Limone', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:33:20', '2020-07-12 10:57:29'),
(39, 'estathepeach', 7, 'Estathe Peach', 'Estathe Pesca', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:33:52', '2020-07-12 10:57:32'),
(40, 'schweppes', 7, 'Schweppes', 'Schweppes', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:34:22', '2020-07-12 10:57:45'),
(41, 'cocacola', 7, 'Coca Cola', 'Coca Cola', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:34:45', '2020-07-12 10:56:59'),
(42, 'cocacolalight', 7, 'Coca Cola Light', 'Coca Cola Light', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:35:12', '2020-07-12 11:08:56'),
(43, 'cocacolazero', 7, 'Coca Cola Zero', 'Coca Cola Zero', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:35:32', '2020-07-12 10:57:07'),
(44, 'fanta', 7, 'Fanta', 'Fanta', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:36:27', '2020-07-12 10:57:35'),
(45, 'chinotto', 7, 'Chinotto', 'Chinotto', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:36:52', '2020-07-12 10:56:49'),
(46, 'sanpellegrinoorange', 7, 'San Pellegrino Orange', 'Aranciata San Pellegrino', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:37:29', '2020-07-12 10:56:24'),
(47, 'lemonsoda', 7, 'Lemon Soda', 'Lemon Soda', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:37:48', '2020-07-12 10:57:38'),
(48, 'cedratatassoni', 7, 'Cedrata Tassoni', 'Cedrata Tassoni', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:38:06', '2020-07-12 10:56:44'),
(49, 'sprite', 7, 'Sprite', 'Sprite', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:39:13', '2020-07-12 10:58:14'),
(50, 'mineralwater050', 7, 'Mineral Water Lt 0.5', 'Acqua Minerale 0.5 Lt', NULL, 3, 1, 'ingredients', '2,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:43:58', '2020-07-12 10:56:11'),
(51, 'mineralwater100', 7, 'Mineral Water Lt 1', 'Acqua Minerale 1 Lt', NULL, 3, 1, 'ingredients', '3,50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:44:38', '2020-07-12 10:56:21'),
(52, 'orangesqueezed', 7, 'Orange Sqeezed', 'Spremuta d\'Arancia', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 12:51:22', '2020-07-12 10:58:32'),
(53, 'crushedicelemon', 16, 'Crushed Ice Lemon', 'Granita al Limone', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:07:22', '2020-07-12 18:36:58'),
(54, 'wineglass', 2, 'Wine', 'Vino', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:15:14', '2020-07-12 11:08:41'),
(55, 'passito', 2, 'Passito', 'Passito', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:15:44', '2020-07-12 18:33:29'),
(56, 'sparklingwine', 2, 'Sparkling Wine', 'Prosecco', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'prosecco', NULL, NULL, NULL, NULL, 6, '2020-06-29 13:16:09', '2020-07-12 11:08:27'),
(57, 'terresaracenewhite', 2, 'Terre Saracene White', 'Terre Saracene Bianco', NULL, 3, 1, 'ingredients', '25,00', NULL, NULL, NULL, 'Ettore Sammarco', NULL, NULL, '14%', 'bianco', 'Doc', 'Campania', NULL, NULL, 6, '2020-06-29 13:18:07', '2020-07-12 18:36:26'),
(58, 'margherita', 5, 'Margherita', 'Margherita', NULL, 3, 1, 'ingredients', '8,00', '12,10', '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:19:20', '2020-07-12 18:41:12'),
(59, 'marinara', 5, 'Marinara', 'Marinara', NULL, 3, 1, 'ingredients', '8,00', '12', '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:19:54', '2020-07-12 18:41:16'),
(60, 'sandwich001', 8, 'Parma Ham & Mozzarella', 'Proiscutto Crudo & Mozzarella', NULL, 3, 1, 'ingredients', '8,00', NULL, '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:21:59', '2020-07-12 18:40:37'),
(61, 'sandwich002', 8, 'Mozzarella & Tomato', 'Mozzarella & Pomodoro', NULL, 3, 1, 'ingredients', '7,00', NULL, '4,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:23:04', '2020-07-12 18:40:33'),
(62, 'sandwich003', 8, 'Ham, Cheese & Fresh Tomato', 'Prosciutto, Formaggio & Pomodoro', NULL, 3, 1, 'ingredients', '7,00', NULL, '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:23:51', '2020-07-12 18:40:41'),
(63, 'sandwich004', 8, 'Salami & Cheese', 'Salame & Formaggio', NULL, 3, 1, 'ingredients', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-29 13:35:02', '2020-06-29 13:35:02'),
(64, 'sandwich005', 8, 'Hamburger & Cheese', 'Hamburger & Formaggio', NULL, 3, 1, 'ingredients', '8,00', NULL, '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:36:22', '2020-07-12 18:40:29'),
(65, 'sandwich006', 8, 'Chicken Cutlet, Tomato & Salad', 'Cotoletta, Pomodori & Insalata', NULL, 3, 1, 'ingredients', '8,00', NULL, '1,5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:37:17', '2020-07-12 18:40:26'),
(66, 'sandwich007', 8, 'Turkey, Green Salad & Cheese', 'Tacchino, Insalata & Formaggio', NULL, 3, 1, 'ingredients', '8,00', NULL, '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:38:39', '2020-07-12 18:41:08'),
(67, 'sandwich008', 8, 'Roast Beef, Green Salad & Fresh Tomato', 'Roast Beef, Insalata & Pomodori', NULL, 3, 1, 'ingredients', '8,00', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-29 13:39:45', '2020-07-12 18:41:05'),
(68, 'riceball', 12, 'Rice Ball', 'Arancini', NULL, 3, 1, 'ingredients', '5,00', '8,6,9,10', '4,5,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-06-29 13:52:43', '2020-07-12 18:39:46'),
(69, 'potatoescroques', 12, 'Potatoes Croques', 'Crocchette di Patate', NULL, 3, 1, 'ingredients', '4,00', '6,10', '4,5,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-06-29 13:53:51', '2020-07-12 18:39:59'),
(70, 'mixfried', 12, 'Mix Fried', 'Cuoppo Napoletano', NULL, 3, 1, 'ingredients', '10,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-06-29 13:54:39', '2020-07-12 18:40:04'),
(71, 'icecreamcup', 16, 'Ice Cream Cup (3 Flawor)', 'Coppa Gelato (3 Gusti)', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-30 10:00:35', '2020-07-12 18:36:51'),
(72, 'icecreamwhipped', 16, 'Ice Cream Cup with Whipped Cream', 'Coppa Gelato con Panna', NULL, 3, 1, 'ingredients', '7,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-30 10:02:38', '2020-07-12 18:36:55'),
(73, 'jaquelinekennedy', 9, 'Jaqueline Kennedy Cake', 'Dolce di Jaqueline Kennedy', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-30 10:07:36', '2020-07-12 10:53:01'),
(74, 'sfogliatella', 9, 'Sfogliatella', 'Sfogliatella', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:08:57', '2020-06-30 10:08:57'),
(75, 'siciliancornet', 9, 'Sicilian Cornet', 'Cannolo Siciliano', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:10:08', '2020-06-30 10:10:08'),
(76, 'codadaragosta', 9, 'Coda d\'Aragosta', 'Coda d\'Aragosta', NULL, 3, 1, 'ingredients', '7,00', NULL, '4,5,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:10:34', '2020-06-30 10:12:14'),
(77, 'lemondelights', 9, 'Lemon Delights', 'Delizia al Limone', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:11:14', '2020-06-30 10:12:21'),
(78, 'ricottatartlet', 9, 'Ricotta Cheese and Pears Tartlet', 'Tortina Ricotta e Pere', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:12:08', '2020-06-30 10:13:54'),
(79, 'almondsdelight', 9, 'Almonds Delights', 'Delizia alle Mandorle', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:13:45', '2020-06-30 10:15:33'),
(80, 'fruitstartlet', 9, 'Fruits Tartlet', 'Crostatina di Frutta', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:14:28', '2020-06-30 10:15:28'),
(81, 'pasticciotto', 9, 'Cherry Pie with Custard Cream', 'Pasticciotto Crema e Amarena', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:15:21', '2020-06-30 10:15:21'),
(82, 'lemonpasticciotto', 9, 'Lemon Custard', 'Pasticciotto al Limone', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:16:44', '2020-06-30 10:16:44'),
(83, 'frolla', 9, 'Short Crust Pastry', 'Frolla', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:17:20', '2020-06-30 10:17:20'),
(84, 'babarhum', 9, 'Babà with Rhum', 'Babà al Rhum', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:17:54', '2020-06-30 10:17:54'),
(85, 'babalimoncello', 9, 'Babà with Limoncello', 'Babà al Limoncello', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:18:37', '2020-06-30 10:18:37'),
(86, 'profiteroleslemon', 9, 'Profiteroles with Lemon', 'Profiteroles al Limone', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:19:47', '2020-06-30 10:19:47'),
(87, 'profiteroleschocolate', 9, 'Profiteroles with Chocolate', 'Profiteroles al Cioccolato', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:20:15', '2020-06-30 10:20:15'),
(88, 'tiramisu', 9, 'Tiramisù', 'Tiramisù', NULL, 3, 1, 'ingredients', '6,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:20:44', '2020-06-30 10:20:44'),
(89, 'homemadedessert', 9, 'Home Made Dessert', 'Dolci della Casa', NULL, 3, 1, 'ingredients', '5,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-06-30 10:21:11', '2020-07-12 10:53:42'),
(90, 'criossant', 9, 'Croissant', 'Cornetti', NULL, 3, 1, 'description', '2,50', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>(Cream, Jam, Chocolate, Empty)</p>', '<p>(Crema, Confettura, Cioccolato, Vuoto)</p>', 6, '2020-06-30 10:24:49', '2020-06-30 10:25:29'),
(91, 'brioche', 9, 'Brioche', 'Brioche', NULL, 3, 1, 'ingredients', '2,50', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:26:03', '2020-06-30 10:26:03'),
(92, 'krafen', 9, 'Krafen', 'Krafen', NULL, 3, 1, 'ingredients', '3,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:26:38', '2020-06-30 10:26:38'),
(93, 'krafennutella', 9, 'Krafen with Nutella', 'Krafen con Nutella', NULL, 3, 0, 'ingredients', '4,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:27:04', '2020-06-30 10:27:04'),
(94, 'graincroissant', 9, 'Whole Grain Croissant with Honey', 'Corentto Integrale e Miele', NULL, 3, 1, 'ingredients', '3,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:27:43', '2020-06-30 10:27:43'),
(95, 'briochecereals', 9, '5 Cereals Brioche', 'Brioche ai 5 Cereali', NULL, 3, 1, 'ingredients', '3,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:28:20', '2020-06-30 10:28:20'),
(96, 'francesina', 9, 'Mignon Brioche', 'Fracesina', NULL, 3, 1, 'ingredients', '2,50', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:28:50', '2020-06-30 10:28:50'),
(97, 'francesinanutella', 9, 'Mignon Brioche with Nutella', 'Francesina con Nutella', NULL, 3, 1, 'ingredients', '2,50', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-06-30 10:29:22', '2020-06-30 10:29:22'),
(98, 'aperolspritz', 3, 'Aperol Spritz', 'Aperol Spritz', NULL, 3, 1, 'ingredients', '8,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:13:27', '2020-07-04 06:13:37'),
(99, 'camparispritz', 3, 'Campari Spritz', 'Campari Spritz', NULL, 3, 1, 'ingredients', '8,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:14:07', '2020-07-04 06:14:07'),
(100, 'lemonspritz', 3, 'Lemon Spritz', 'Lemon Spritz', NULL, 3, 1, 'ingredients', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:14:38', '2020-07-04 06:14:38'),
(101, 'hugospritz', 3, 'Hugo Spritz', 'Hugo Spritz', NULL, 3, 1, 'ingredients', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:15:06', '2020-07-04 06:15:06'),
(102, 'ginfizz', 3, 'Gin Fizz', 'Gin Fizz', NULL, 3, 1, 'ingredients', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:15:39', '2020-07-04 06:15:39'),
(103, 'bloodymary', 3, 'Bloody Mary', 'Bloody Mary', NULL, 3, 1, 'ingredients', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:16:04', '2020-07-04 06:16:04'),
(104, 'americano', 3, 'Americano', 'Americano', 'https://menudigitale.easycomande.it/storage/app/public/photos/6/AF8E0E57-9D01-4FDD-9803-312F1CAEB11B.jpeg', 3, 1, 'ingredients', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:16:28', '2020-07-04 13:25:16'),
(105, 'negroni', 3, 'Negroni', 'Negroni', NULL, 3, 1, 'ingredients', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:16:58', '2020-07-04 06:16:58'),
(106, 'gintonic', 3, 'Gin Tonic', 'Gin Tonic', NULL, 3, 1, 'description', '10,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, '<p>Beefeater</p>', '<p>Beefeater</p>', 6, '2020-07-04 06:17:34', '2020-07-12 11:23:26'),
(108, 'margarita', 3, 'Margarita', 'Margarita', NULL, 3, 1, 'ingredients', '12,00', '40,88,15', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:18:23', '2020-07-12 11:49:38'),
(109, 'tommysmargarita', 3, 'Tommy\'s Margarita', 'Tommy\'s Margarita', NULL, 3, 1, 'ingredients', '12,00', '45,15,89', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:18:56', '2020-07-12 11:50:55'),
(110, 'paloma', 3, 'Paloma', 'Paloma', NULL, 3, 1, 'ingredients', '12,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:19:23', '2020-07-04 06:19:23'),
(111, 'caipiroska', 3, 'Caipiroska', 'Caipiroska', NULL, 3, 1, 'ingredients', '12,00', '62,15,84', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:19:45', '2020-07-12 11:43:15'),
(112, 'daiquiri', 3, 'Daiquiri', 'Daiquiri', NULL, 3, 1, 'ingredients', '12,00', '48,15,91', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:20:07', '2020-07-12 11:44:27'),
(113, 'boulevardier', 3, 'Boulevardier', 'Boulevardier', NULL, 3, 1, 'ingredients', '12,00', '58,39,29', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:20:34', '2020-07-12 11:40:33'),
(114, 'mojito', 3, 'Mojito', 'Mojito', NULL, 3, 1, 'ingredients', '12,00', '95,15,91,83', NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:20:55', '2020-07-12 11:47:02'),
(115, 'bitter', 7, 'Bitter', 'Bitter', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:24:28', '2020-07-04 06:24:28'),
(116, 'cocktailspellegrino', 7, 'Cocktail San Pellegrino', 'Cocktail San Pellegrino', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:25:02', '2020-07-04 06:25:02'),
(117, 'crodino', 7, 'Crodino', 'Crodino', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:25:23', '2020-07-04 06:25:23'),
(118, 'averna', 10, 'Averna', 'Averna', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:26:10', '2020-07-04 06:26:10'),
(119, 'amarodelcapo', 10, 'Amaro Del Capo', 'Amaro Del Capo', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 06:26:34', '2020-07-04 06:26:34'),
(120, 'fernetbranca', 10, 'Fernet Branca', 'Fernet Branca', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-04 06:26:53', '2020-07-12 12:05:40'),
(121, 'tomatotunamayonnaise', 17, 'Tomato, Tuna & Mayonnaise', 'Pomodoro, Tonno & Maionese', NULL, 3, 1, 'ingredients', '6,00', NULL, '1,6,5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:46:38', '2020-07-04 07:46:38'),
(122, 'tomatomozzarellamayonnaise', 17, 'Tomato, Mozzarella & Mayonnaise', 'Pomodoro, Mozzarella & Maionese', NULL, 3, 1, 'ingredients', '6,00', NULL, '1,4,5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:47:33', '2020-07-04 07:47:33'),
(123, 'hamcheese', 17, 'Ham & Cheese', 'Prosciutto & Formaggio', NULL, 3, 1, 'ingredients', '5,00', NULL, '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:48:06', '2020-07-04 07:48:06'),
(124, 'peroni', 18, 'Peroni', 'Peroni', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:48:46', '2020-07-04 07:48:46'),
(125, 'nastroazzurro', 18, 'Nastro Azzurro', 'Nastro Azzurro', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:49:10', '2020-07-04 07:49:10'),
(126, 'ichnusa', 18, 'Ichnusa', 'Ichnusa', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:49:34', '2020-07-04 07:49:34'),
(127, 'heineken', 18, 'Heineken', 'Heineken', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:49:57', '2020-07-04 07:49:57'),
(128, 'becks', 18, 'Beck\'s', 'Beck\'s', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:50:30', '2020-07-04 07:50:30'),
(129, 'ceres', 18, 'Ceres', 'Ceres', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:50:48', '2020-07-04 07:50:48'),
(130, 'corona', 18, 'Corona', 'Corona', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:51:05', '2020-07-04 07:51:05'),
(131, 'bud', 18, 'Bud', 'Bud', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:51:22', '2020-07-04 07:51:22'),
(132, 'tennents', 18, 'Tennent\'s', 'Tennent\'s', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:51:52', '2020-07-04 07:51:52'),
(133, 'smallglass', 18, 'Small Glass', 'Bicchiere Piccolo', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:52:42', '2020-07-04 07:52:42'),
(134, 'mediumglass', 18, 'Medium Glass', 'Bicchiere Medio', NULL, 3, 1, 'ingredients', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:53:03', '2020-07-04 07:53:03'),
(135, 'bigglass', 18, 'Big Glass', 'Bicchiere Grande', NULL, 3, 1, 'ingredients', '14,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 6, '2020-07-04 07:53:26', '2020-07-04 07:53:26'),
(136, 'theconfused', 3, 'The Confused', 'The Confused', NULL, 3, 1, 'ingredients', '10,00', '13,14,15,16,17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Profile: Salty - Refreshing</p>', '<p>Profilo: Fresco - Rinfrescante</p>', 6, '2020-07-04 11:39:24', '2020-07-04 11:39:24'),
(137, 'thelively', 3, 'The Lively', 'The Lively', NULL, 3, 1, 'ingredients', '10,00', '18,19,20,21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Profile: Floreal - Sweet</p>', '<p>Profilo: Floreale - Dolce</p>', 6, '2020-07-04 12:06:16', '2020-07-04 12:17:59'),
(138, 'theexotic', 3, 'The Exotic', 'The Exotic', NULL, 3, 1, 'ingredients', '10,00', '22,23,24,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Profile: Sour - Refreshing</p>', '<p>Profilo: Acidulo - Rinfrescante</p>', 6, '2020-07-04 12:09:27', '2020-07-04 12:18:25'),
(139, 'theheterogeneous', 3, 'The Heterogeneous', 'The Heterogeneous', NULL, 3, 1, 'ingredients', '10,00', '26,27,28,29,30', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Profile: Bitter - Slightly Spicy</p>', '<p>Profilo: Amaro - Leggermente Piccante</p>', 6, '2020-07-04 12:11:24', '2020-07-06 11:01:18'),
(140, 'theabstract', 3, 'The Abstract', 'The Abstract', NULL, 3, 1, 'ingredients', '10,00', '31,32,33,34,35,36,37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Profile: Refreshing - Balsamic</p>', '<p>Profilo: Dissentante - Balsamico</p>', 6, '2020-07-04 12:12:20', '2020-07-04 12:20:06'),
(141, 'agednegroni', 3, 'Aged Negroni', 'Negroni Invecchiato', NULL, 4, 1, 'description', '20,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<p>Negroni aged three months in barrique</p>', '<p>Negroni invecchiato tre mesi in barrique</p>', 7, '2020-07-07 07:13:16', '2020-07-07 07:13:16'),
(142, 'negrito', 3, 'Negrito', 'Negrito', NULL, 4, 1, 'ingredients', '12,00', '29,39,40,47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:14:00', '2020-07-07 07:14:41'),
(143, 'italianorosso', 3, 'Italiano Rosso', 'Italiano Rosso', NULL, 4, 1, 'ingredients', '12,00', '49,15,48,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:16:51', '2020-07-07 07:16:51'),
(144, 'amarissimo', 3, 'Amarissimo', 'Amarissimo', NULL, 4, 1, 'ingredients', '12,00', '50,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:17:33', '2020-07-07 07:17:33'),
(145, 'infusion', 3, 'Infusion', 'Infusion', NULL, 4, 1, 'ingredients', '12,00', '38,41,42,43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:18:02', '2020-07-07 07:18:02'),
(146, 'amberlady', 3, 'Amber Lady', 'Amber Lady', NULL, 4, 1, 'ingredients', '12,00', '44,39,51,30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:31:14', '2020-07-07 07:31:14'),
(147, 'saporito', 3, 'Saporito', 'Saporito', NULL, 4, 1, 'ingredients', '12,00', '40,45,52,15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:31:59', '2020-07-07 07:31:59'),
(148, 'aperolspritz', 3, 'Aperol Spritz', 'Aperol Spritz', NULL, 4, 1, 'ingredients', '10,00', '38,46,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 07:32:29', '2020-07-07 07:32:29'),
(149, 'camparispritz', 3, 'Campari Spritz', 'Campari Spritz', NULL, 4, 1, 'ingredients', '10,00', '29,46,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:34:21', '2020-07-07 11:34:21'),
(150, 'hugospritz', 3, 'Hugo Spritz', 'Hugo Spritz', NULL, 4, 1, 'ingredients', '10,00', '53,54,46,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:36:36', '2020-07-07 11:36:36'),
(151, 'americano', 3, 'Americano', 'Americano', NULL, 4, 1, 'ingredients', '10,00', '29,39,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:36:58', '2020-07-07 11:36:58'),
(152, 'whiteamericano', 3, 'White Americano', 'White Americano', NULL, 4, 1, 'ingredients', '10,00', '56,55,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:37:24', '2020-07-07 11:37:24'),
(153, 'negroni', 3, 'Negroni', 'Negroni', NULL, 4, 1, 'ingredients', '10,00', '29,39,57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:38:14', '2020-07-07 11:38:14'),
(154, 'negronisbagliato', 3, 'Negroni Sbagliato', 'Negroni Sbagliato', NULL, 4, 1, 'ingredients', '10,00', '29,39,46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:38:40', '2020-07-07 11:38:40'),
(155, 'whitenegroni', 3, 'White Negroni', 'White Negroni', NULL, 4, 1, 'ingredients', '10,00', '56,55,57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:39:24', '2020-07-07 11:40:41'),
(156, 'boulevardier', 3, 'Boulevardier', 'Boulevardier', NULL, 4, 1, 'ingredients', '10,00', '58,29,39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:40:21', '2020-07-07 11:40:21'),
(157, 'manhattan', 3, 'Manhattan', 'Manhattan', NULL, 4, 1, 'ingredients', '10,00', '59,39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:41:08', '2020-07-07 11:41:08'),
(158, 'margarita', 3, 'Margarita', 'Margarita', NULL, 4, 1, 'ingredients', '10,00', '40,60,15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:41:30', '2020-07-07 11:41:50'),
(159, 'tommysmargarita', 3, 'Tommy\'s Margarita', 'Tommy\'s Margarita', NULL, 4, 1, 'ingredients', '10,00', '45,61,15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:42:19', '2020-07-07 11:42:19'),
(160, 'martini', 3, 'Martini', 'Martini', NULL, 4, 1, 'ingredients', '10,00', '62,57,63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:42:42', '2020-07-07 11:42:42'),
(161, 'dirtymartini', 3, 'Dirty Martini', 'Dirty Martini', NULL, 4, 1, 'ingredients', '10,00', '62,57,63,82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:43:21', '2020-07-07 11:44:06'),
(162, 'espressomartini', 3, 'Espresso Martini', 'Espresso Martini', NULL, 4, 1, 'ingredients', '10,00', '62,64,65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:45:10', '2020-07-07 11:45:10'),
(163, 'ginfizz', 3, 'Gin Fizz', 'Gin Fizz', NULL, 4, 1, 'ingredients', '10,00', '57,15,66,25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:55:41', '2020-07-07 11:55:41'),
(164, 'cosmopolitan', 3, 'Cosmopolitan', 'Cosmopolitan', NULL, 4, 1, 'ingredients', '10,00', '62,60,15,67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:56:12', '2020-07-07 11:56:12'),
(165, 'capecode', 3, 'Cape Code', 'Cape Code', NULL, 4, 1, 'ingredients', '10,00', '62,67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:56:32', '2020-07-07 11:56:32'),
(167, 'bayofpassion', 3, 'Bay of Passion', 'Bay of Passion', NULL, 4, 1, 'ingredients', '10,00', '62,67,68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:57:12', '2020-07-07 11:57:12'),
(168, 'sexonthebeach', 3, 'Sex On The Beach', 'Sex On The Beach', NULL, 4, 1, 'ingredients', '10,00', '62,67,69,70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:58:24', '2020-07-07 11:58:24'),
(169, 'moscowmule', 3, 'Moscow Mule', 'Moscow Mule', NULL, 4, 1, 'ingredients', '10,00', '62,15,71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 11:58:49', '2020-07-07 11:58:49'),
(170, 'bloodymary', 3, 'Bloody Mary', 'Bloody Mary', NULL, 4, 1, 'ingredients', '10,00', '62,72,15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:01:16', '2020-07-07 12:01:16'),
(171, 'daiquiri', 3, 'Daiquiri', 'Daiquiri', NULL, 4, 1, 'ingredients', '10,00', '48,15,66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:01:46', '2020-07-07 12:01:46'),
(172, 'mojito', 3, 'Mojito', 'Mojito', NULL, 4, 1, 'ingredients', '10,00', '48,15,25,84,83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:02:14', '2020-07-07 12:03:00'),
(173, 'pinacolada', 3, 'Pina Colada', 'Pina Colada', NULL, 4, 1, 'ingredients', '10,00', '48,73,75,85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:04:27', '2020-07-07 12:04:43'),
(174, 'oldfashioned', 3, 'Old Fashioned', 'Old Fashioned', NULL, 4, 1, 'ingredients', '10,00', '58,66,80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:05:10', '2020-07-07 12:05:10'),
(175, 'whiskysour', 3, 'Whisky Sour', 'Whisky Sour', NULL, 4, 1, 'ingredients', '10,00', '58,66,15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:05:44', '2020-07-07 12:05:44'),
(176, 'disaronnosour', 3, 'Disaronno Sour', 'Disaronno Sour', NULL, 4, 1, 'ingredients', '10,00', '44,66,15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:06:14', '2020-07-07 12:06:14'),
(177, 'bellini', 3, 'Bellini', 'Bellini', NULL, 4, 1, 'ingredients', '10,00', '76,46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:06:49', '2020-07-07 12:06:49'),
(178, 'rossini', 3, 'Rossini', 'Rossini', NULL, 4, 1, 'ingredients', '10,00', '77,46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:07:06', '2020-07-07 12:07:06'),
(179, 'champagnecocktail', 3, 'Champagne Cocktail', 'Champagne Cocktail', NULL, 4, 1, 'ingredients', '10,00', '78,79,80,81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 7, '2020-07-07 12:07:33', '2020-07-07 12:07:33'),
(180, 'franciacortacouvee', 2, 'Franciacorta Couvée Prestige Brut', 'Franciacorta Couvée Prestige Brut', NULL, 4, 1, 'description', '60,00', NULL, NULL, NULL, 'Ca\' del Bosco', 'NV', NULL, NULL, 'spumante', 'Docg', 'Lombardia', '<p>Chardonnay, Pinot Nero, Pinot Bianco</p>', '<p>Chardonnay, Pinot Nero, Pinot Bianco</p>', 7, '2020-07-07 12:24:42', '2020-07-07 12:24:42'),
(181, 'franciacortarose', 2, 'Franciacorta Couvée Prestige Brut Rosè', 'Franciacorta Couvée Prestige Brut Rosè', NULL, 4, 1, 'description', '65,00', NULL, NULL, NULL, 'Ca\' Del Bosco', 'NV', NULL, NULL, 'spumante', 'Docg', 'Lombardia', '<p>Chardonnay, Pinot Nero, Pinot Bianco</p>', '<p>Chardonnay, Pinot Nero, Pinot Bianco</p>', 7, '2020-07-07 13:19:11', '2020-07-07 13:20:26'),
(182, 'franciacortaroyale', 2, 'Franciacorta Couvée Royale Brut', 'Franciacorta Couvée Royale Brut', NULL, 4, 1, 'description', '45,00', NULL, NULL, NULL, 'Marchesi Antinori - T. Montenisa', 'NV', NULL, NULL, 'spumante', 'Docg', 'Lombardia', '<p>Chardonnay, Pinot Nero</p>', '<p>Chardonnay, Pinot Nero</p>', 7, '2020-07-07 13:20:15', '2020-07-07 13:20:15'),
(183, 'metodoclassicobrut', 2, 'Metodo Classico Trento Doc Brut', 'Metodo Classico Trento Doc Brut', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Cesarini Sforza', 'NV', NULL, NULL, 'spumante', 'Doc', 'Trentino', '<p>Chardonnay</p>', '<p>Chardonnay</p>', 7, '2020-07-07 13:21:54', '2020-07-07 13:21:54'),
(184, 'metodoclassicorose', 2, 'Metodo Classico Trento Doc Brut Rosè', 'Metodo Classico Trento Doc Brut Rosè', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Cesarini Sforza', 'NV', NULL, NULL, 'spumante', 'Doc', 'Trentino', '<p>Chardonnay, Pinot Nero</p>', '<p>Chardonnay, Pinot Nero</p>', 7, '2020-07-07 13:23:32', '2020-07-07 13:23:32'),
(185, 'aquilareale', 2, 'Aquila Reale Riserva', 'Aquila Reale Riserva', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Cesarini Sforza', '2009', NULL, NULL, 'spumante', 'Doc', 'Trentino', '<p>Chardonnay</p>', '<p>Chardonnay</p>', 7, '2020-07-07 13:24:29', '2020-07-07 13:24:29'),
(186, '1673riserva', 2, '1673 Riserva Extra Brut', '1673 Riserva Extra Brut', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Cesarini Sforza', '2009', NULL, NULL, 'spumante', 'Doc', 'Trentino', '<p>Chardonnay</p>', '<p>Chardonnay</p>', 7, '2020-07-07 13:25:18', '2020-07-07 13:25:18'),
(187, 'campaniaspumantedemisec', 2, 'Campania Spumante Demì Sec', 'Campania Spumante Demì Sec', NULL, 4, 1, 'description', '30,00', NULL, NULL, NULL, 'Montesole', 'NV', NULL, NULL, 'spumante', 'Igt', 'Campania', '<p>Fiano</p>', '<p>Fiano</p>', 7, '2020-07-07 13:26:01', '2020-07-07 13:26:01'),
(188, 'campaniaspumantebrut', 2, 'Campania Spumante Brut', 'Campania Spumante Brut', NULL, 4, 1, 'description', '30,00', NULL, NULL, NULL, 'Montesole', 'NV', NULL, NULL, 'spumante', 'Igt', 'Campania', '<p>Greco</p>', '<p>Greco</p>', 7, '2020-07-07 13:30:33', '2020-07-07 13:30:33'),
(189, 'champagnepremiercrugrandereserve', 2, 'Champagne Premier Cru Grande Reserve', 'Champagne Premier Cru Grande Reserve', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Vilmart & C', 'NV', NULL, NULL, 'champagne', 'Aoc', 'Montagne de Reims Nord', '<p>Chardonnay, Pinot Nero</p>', '<p>Chardonnay, Pinot Nero</p>', 7, '2020-07-08 07:07:28', '2020-07-08 07:09:51'),
(190, 'champagnebrutcouvèestpeterssburg', 2, 'Champagne Brut Couvèe St. Peterssburg', 'Champagne Brut Couvèe St. Peterssburg', NULL, 4, 1, 'description', '110,00', NULL, NULL, NULL, 'Veuve Clicquot', 'NV', NULL, NULL, 'champagne', 'Aoc', 'Reims', '<p>Pinot Nero, Chardonnay, Pinot Meunier</p>', '<p>Pinot Nero, Chardonnay, Pinot Meunier</p>', 7, '2020-07-08 07:08:38', '2020-07-08 07:08:38'),
(191, 'champagnepremiercrulecranextrabrut', 2, 'Champagne Premier Cru Le Cran Extra Brut', 'Champagne Premier Cru Le Cran Extra Brut', NULL, 4, 1, 'description', '170,00', NULL, NULL, NULL, 'R. & V. Béreche', '2011', NULL, NULL, 'champagne', 'Docg', 'Montagne de Reims Nord', '<p>Chardonnay</p>', '<p>Chardonnay</p>', 7, '2020-07-08 07:09:39', '2020-07-08 07:09:39'),
(192, 'champagneroseprestigebrut', 2, 'Champagne Rosè Prestige Brut', 'Champagne Rosè Prestige Brut', NULL, 4, 1, 'description', '105,00', NULL, NULL, NULL, 'J.Charpentier', 'NV', NULL, NULL, 'champagne', 'Doc', 'Vallée de la Marne', '<p>Pinot Nero, Chardonnay, Pinot Meunier</p>', '<p>Pinot Nero, Chardonnay, Pinot Meunier</p>', 7, '2020-07-08 07:10:39', '2020-07-08 07:10:39'),
(193, 'caprese', 11, 'Caprese', 'Caprese', NULL, 4, 1, 'description', '12,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Classic \"Caprese\" with Jersey mozzarella and local cherry tomatoes</p>', '<p>\"Caprese\" classica con bocconcini di Jersey e pomodorini locali</p>', 7, '2020-07-08 07:14:08', '2020-07-08 07:14:08'),
(194, 'marenostrum', 11, 'Mare Nostrum', 'Mare Nostrum', NULL, 4, 1, 'description', '14,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Marinated anchovies and local octopus salad with seasonal vegetables</p>', '<p>Alici marinate e insalata di polipo nostrano con veraure di stagione</p>', 7, '2020-07-08 07:15:31', '2020-07-08 07:15:31'),
(195, 'parmigiana', 11, 'Aubergine and Zucchini Parmigiana', 'Parmigiana di Melenzane e Zucchine Classica', NULL, 4, 1, 'description', '12,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Aubergine and Zucchini Parmigiana</p>', '<p>Parmigiana di Melenzane e Zucchine Classica</p>', 7, '2020-07-08 07:16:22', '2020-07-08 07:16:22'),
(196, 'thefried', 11, 'The Fried', 'I Fritti', NULL, 4, 1, 'description', '12,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Stuffed ancfiovies with provola and lemon, shrimp croquettes, pumpkin flowers in<br />tempura ana cod in tempura</p>', '<p>Alici imbottite con provola e limone, croquette di gamberi, fiori di zucca in tempura e baccal&agrave; in tempura</p>', 7, '2020-07-08 07:17:52', '2020-07-08 07:17:52'),
(197, 'mixedappetizer', 11, 'Mixed Appetizer Trattoria da Lorenzo', 'Antipasto Misto Trattoria da Lorenzo', NULL, 4, 1, 'description', '25,00 a persona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>min. 2 portions</p>', '<p>min. 2 porzioni</p>', 7, '2020-07-08 07:19:03', '2020-07-08 07:25:24'),
(198, 'linguinewithsquid', 1, 'Linguine with Little Local Squid', 'Linguine con Calamaretti', NULL, 4, 1, 'description', '18,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Linguine with little local squid, \"pendolo\" tomatoes and provolone del monaco cheese</p>', '<p>Linguine con calamaretti, pomodori del pendolo e provolone del monaco</p>', 7, '2020-07-08 07:29:41', '2020-07-08 07:29:58'),
(199, 'scialatiellipastawithseafood', 1, 'Scialatielli Pasta with Seafood', 'Gli Scialatielli ai Frutti di Mare', NULL, 4, 1, 'description', '18,00', NULL, '14,1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Scialatielli Pasta with Seafood</p>', '<p style=\"padding-left: 40px;\">Gli Scialatielli ai Frutti di Mare</p>', 7, '2020-07-08 07:31:29', '2020-07-09 13:11:15'),
(200, 'vermicelliwithclams', 1, 'Vermicelli Pasta with Clams', 'I Vermicelli alle Vongole Veraci', NULL, 4, 1, 'description', '18,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Vermicelli Pasta with Clams</p>', '<p>I Vermicelli alle Vongole Veraci</p>', 7, '2020-07-08 07:32:09', '2020-07-08 07:32:09'),
(201, 'linguinepastawithlangoustine', 1, 'Linguine Pasta with Langoustine', 'Linguine agli Scampi', NULL, 4, 1, 'description', '20,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Linguine Pasta with Langoustine</p>', '<p>Linguine agli Scampi</p>', 7, '2020-07-08 07:42:53', '2020-07-08 07:42:53'),
(202, 'gnocchiallasorrentina', 1, 'Gnocchi with Sorrentina Sauce', 'Gnocchi alla Sorrentina', NULL, 4, 1, 'description', '16,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Gnocchi with Sorrentina Sauce</p>', '<p>Gnocchi alla Sorrentina</p>', 7, '2020-07-08 07:43:47', '2020-07-08 07:43:47'),
(203, 'paccheriwithscarpariello', 1, 'Paccheri Pasta with \"Scarpariello\" Sauce', 'Paccheri allo Scarpariello', NULL, 4, 1, 'description', '16,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Paccheri Pasta with \"Scarpariello\" Sauce</p>', '<p>Paccheri allo Scarpariello</p>', 7, '2020-07-08 07:44:22', '2020-07-08 07:44:22'),
(204, 'scialatielliwitheggplants', 1, 'Scialatielli Pasta with Eggplants', 'Scialatielli alla Siciliana', NULL, 4, 1, 'description', '16,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Scialatielli Pasta with Eggplants</p>', '<p>Scialatielli alla Siciliana</p>', 7, '2020-07-08 07:45:00', '2020-07-08 07:45:00'),
(205, 'mixparanza', 4, 'Mix Paranza Fresh Fish Fried', 'Frittura di Paranza del Golfo', NULL, 4, 1, 'description', '18,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mix Paranza Fresh Fish Fried</p>', '<p>Frittura di Paranza del Golfo</p>', 7, '2020-07-08 07:55:35', '2020-07-08 07:55:35'),
(206, 'bakedfish', 4, 'Baked Fish (Local Fish)', 'Pesce al Forno', NULL, 4, 1, 'description', 'S.P.Q.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Baked Fish (Local Fish)</p>', '<p>Pesce al Forno</p>', 7, '2020-07-08 07:56:06', '2020-07-08 07:56:06'),
(207, 'fishacquapazza', 4, 'Fish Acqua Pazza', 'Pesce all\'Acqua Pazza', NULL, 4, 1, 'description', 'S.P.Q.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Local Fish Acqua Pazza with Cherry Tomatoes</p>', '<p>Pesce all\'Acqua Pazza</p>', 7, '2020-07-08 07:57:01', '2020-07-08 07:57:01');
INSERT INTO `items` (`id_code`, `id`, `category_id`, `name_en`, `name_it`, `cover`, `structure_id`, `visible`, `view`, `price`, `ingredients`, `allergens`, `features`, `wine_winery`, `wine_year`, `format`, `vol`, `wine_type`, `wine_doc`, `wine_region`, `description_en`, `description_it`, `user_id`, `created_at`, `updated_at`) VALUES
(208, 'grilledprawnsorlangoustine', 4, 'Grilled Prawns or Langoustine', 'Grigliata di Scampi', NULL, 4, 1, 'description', '18,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Grilled Prawns or Langoustine</p>', '<p>Grigliata di Scampi</p>', 7, '2020-07-08 07:57:45', '2020-07-08 07:57:45'),
(209, 'squidherb', 4, 'Squid with Herb-Flawored Breadcrumbs and Grilled', 'Calamaro Grigliato con Panatura Aromatizzata alle Erbe', NULL, 4, 1, 'description', '18,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Squid with Herb-Flawored Breadcrumbs and Grilled</p>', '<p>Calamaro Grigliato con Panatura Aromatizzata alle Erbe</p>', 7, '2020-07-08 07:58:36', '2020-07-08 07:58:36'),
(210, 'beefsteak', 4, 'Beef Steak Cooked on Volcanic Stone', 'Bistecca di Filetto ai Ferri su Pietra Lavica', NULL, 4, 1, 'description', '18,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Beef Steak Cooked on Volcanic Stone</p>', '<p>Bistecca di Filetto ai Ferri su Pietra Lavica</p>', 7, '2020-07-08 07:59:10', '2020-07-08 07:59:10'),
(211, 'filletsteak', 4, 'Fillet Steak Cooked on Volcanic Stone', 'Filetto ai Ferri su Pietra Lavica', NULL, 4, 1, 'description', '20,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Fillet Steak Cooked on Volcanic Stone</p>', '<p>Filetto ai Ferri su Pietra Lavica</p>', 7, '2020-07-08 07:59:55', '2020-07-08 07:59:55'),
(212, 'tiramisu', 9, 'Tiramisù', 'Tiramisù', NULL, 4, 1, 'description', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tiramis&ugrave; with homemade savoiardo</p>', '<p>Tiramis&ugrave; con savoiardo fatto in casa</p>', 7, '2020-07-08 08:22:02', '2020-07-08 08:22:02'),
(213, 'lascassata', 9, 'La Scassata', 'La Scassata', NULL, 4, 1, 'description', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Ricotta Cream with Candided Fruit and Chocolate, Alomnd Crumble</p>', '<p>Crema di Ricotta, con Canditi e Cioccolato, Crumble alle Mandorle</p>', 7, '2020-07-08 08:22:58', '2020-07-08 08:22:58'),
(214, 'frozendessert', 9, 'Frozen Dessert with Walnuts and Hazelnuts', 'Semifreddo alle Nocciole e Noci', NULL, 4, 1, 'description', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Frozen Dessert with Walnuts and Hazelnuts</p>', '<p>Semifreddo alle Nocciole e Noci</p>', 7, '2020-07-08 08:23:46', '2020-07-08 08:23:46'),
(215, 'aglianicodeltaburnorosato', 2, 'Aglianico del Taburno Rosato', 'Aglianico del Taburno Rosato', NULL, 4, 1, 'description', '25,00', NULL, NULL, NULL, 'Fontanavecchia', '2019', NULL, NULL, 'rose', 'Doc', 'Campania', '<p>Aglianico</p>', '<p>Aglianico</p>', 7, '2020-07-08 09:48:38', '2020-07-08 09:48:38'),
(216, 'salentofiveroses', 2, 'Salento Five Roses', 'Salento Five Roses', NULL, 4, 1, 'description', '35,00', NULL, NULL, NULL, 'Leone de Castris', '2019', NULL, NULL, 'rose', 'Doc', 'Puglia', '<p>Negroamaro, Malvasia</p>', '<p>Negroamaro, Malvasia</p>', 7, '2020-07-08 09:50:26', '2020-07-08 09:50:26'),
(217, 'bolgherirosatoscalabrone', 2, 'Bolgheri Rosato Scalabrone', 'Bolgheri Rosato Scalabrone', NULL, 4, 1, 'description', '30,00', NULL, NULL, NULL, 'Antinori - Tenuta Guado al Tasso', '2019', NULL, NULL, 'rose', 'Doc', 'Toscana', '<p>Cabernet Sauvignon, Merlot, Syrah</p>', '<p>Cabernet Sauvignon, Merlot, Syrah</p>', 7, '2020-07-08 09:51:17', '2020-07-08 09:51:17'),
(218, 'lacrimarosa', 2, 'Lacrima Rosa', 'Lacrima Rosa', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Mastroberardino', '2019', NULL, NULL, 'rose', 'Doc', 'Campania', '<p>Aglianico</p>', '<p>Aglianico</p>', 7, '2020-07-08 09:52:04', '2020-07-08 09:52:04'),
(219, 'cassiopearosato', 2, 'Cassiopea Rosato', 'Cassiopea Rosato', NULL, 4, 1, 'description', '-', NULL, NULL, NULL, 'Poggio al Tesoro', '2019', NULL, NULL, 'rose', 'Doc', 'Toscana', '<p>Cabernet Franc, Merlot</p>', '<p>Cabernet Franc, Merlot</p>', 7, '2020-07-08 09:52:59', '2020-07-08 09:52:59'),
(220, 'barbarescocrichetpaje', 2, 'Barbaresco Crichet Paje', 'Barbaresco Crichet Paje', NULL, 4, 1, 'description', '1750,00', NULL, NULL, NULL, 'Roagna', '2010', NULL, NULL, 'rosso', 'Docg', 'Piemonte', '<p>Nebbiolo</p>', '<p>Nebbiolo</p>', 7, '2020-07-08 09:53:51', '2020-07-08 09:53:51'),
(221, 'barbarescopaje', 2, 'Barbaresco Paje', 'Barbaresco Paje', NULL, 4, 1, 'description', '550,00', NULL, NULL, NULL, 'Roagna', '2013', NULL, NULL, 'rosso', 'Docg', 'Piemonte', '<p>Nebbiolo</p>', '<p>Nebbiolo</p>', 7, '2020-07-08 09:54:33', '2020-07-08 09:54:33'),
(222, 'carloverdone', 8, 'Carlo Verdone', 'Carlo Verdone', NULL, 5, 1, 'ingredients', '6,00', '87,10,12', '1,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2020-07-08 10:40:41', '2020-07-08 10:40:41'),
(223, 'vinorosso', 19, 'Red Wine', 'Vino Rosso', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, 'Sammarco', '2020', NULL, '14', 'rosso', 'DOCG', 'Campania', NULL, NULL, 5, '2020-07-09 06:31:37', '2020-07-09 09:00:08'),
(224, 'spumante', 19, 'spumante', 'spumante', NULL, 2, 1, 'description', '8', NULL, NULL, NULL, 'Marisa Cuomo', '2018', NULL, '13', 'spumante', 'DOCG', 'Lazio', '<p>spumante</p>', '<p>spumante</p>', 5, '2020-07-09 09:01:02', '2020-07-09 09:01:02'),
(225, 'bianco', 19, 'bianco', 'bianco', NULL, 2, 1, 'description', '8', NULL, NULL, NULL, 'Sammarco', '2020', NULL, '14', 'bianco', 'DOCG', 'Piemonte', NULL, NULL, 5, '2020-07-09 10:47:44', '2020-07-09 10:50:35'),
(226, 'bianco2', 19, 'bianco2', 'bianco2', NULL, 2, 1, 'description', '5', NULL, NULL, NULL, 'Sammarco', '2020', NULL, '14', 'bianco', 'DOCG', 'Campania', NULL, NULL, 5, '2020-07-09 10:48:28', '2020-07-09 10:48:28'),
(227, 'rose', 19, 'rose', 'rose', NULL, 2, 0, 'description', '6', NULL, NULL, NULL, 'Marisa', '2015', '5', '44', 'rose', 'DOCG', 'Toscana', '<p>rose</p>', '<p>rose</p>', 5, '2020-07-09 12:28:42', '2020-07-09 12:28:42'),
(228, 'bianco3', 19, 'bianco3', 'bianco3', NULL, 2, 0, 'description', '5', NULL, NULL, NULL, 'Marisa Cuomo', '2020', '5', '14', 'bianco', 'DOCG', 'Campania', '<p>bianco3</p>', '<p>bianco3</p>', 5, '2020-07-09 12:31:03', '2020-07-09 12:31:03'),
(231, 'costaamalfifurorerosso', 2, 'Costa D’Amalfi Furore Rosso', 'Costa D’Amalfi Furore Rosso', NULL, 4, 1, 'description', '30,00', NULL, NULL, NULL, 'Marisa Cuomo', '2018', NULL, NULL, 'rosso', 'Doc', 'Campania', '<p>Aglianico, Piedirosso</p>', '<p>Aglianico, Piedirosso</p>', 7, '2020-07-09 13:31:06', '2020-07-09 13:31:06'),
(232, 'costadamalfitramonti', 2, 'Costa D’Amalfi Tramonti Rosso', 'Costa D’Amalfi Tramonti Rosso', NULL, 4, 1, 'description', '28,00', NULL, NULL, NULL, 'San Francesco', '2018', NULL, NULL, 'rosso', 'Doc', 'Campania', '<p>Aglianico, Piedirosso</p>', '<p>Aglianico, Piedirosso</p>', 7, '2020-07-09 13:42:33', '2020-07-09 13:42:33'),
(233, 'eiss', 2, 'È ISS', 'È ISS', NULL, 4, 1, 'description', '70,00', NULL, NULL, NULL, 'San Francesco', '2016', NULL, NULL, 'rosso', 'Doc', 'Campania', '<p>Aglianico, Piedirosso, Tintore</p>', '<p>Aglianico, Piedirosso, Tintore</p>', 7, '2020-07-09 13:47:06', '2020-07-09 13:47:06'),
(234, 'cookies', 9, 'Cookies', 'Biscotti Grandi', NULL, 3, 1, 'ingredients', '4,00', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 10:54:56', '2020-07-12 10:54:56'),
(235, 'smallcookies', 9, 'Small Cookies', 'Biscotti Piccoli', NULL, 3, 1, 'ingredients', '1,50', NULL, '4,5,1,3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 10:55:21', '2020-07-12 10:55:21'),
(236, 'syrup', 7, 'Syrup', 'Sciroppi', NULL, 3, 1, 'description', '4,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Mint, Barley, Milk of Almond, Cherry</p>', '<p>Menta, Orzata, Latte di Mandorla, Amarena</p>', 6, '2020-07-12 11:00:24', '2020-07-12 11:00:24'),
(237, 'powerade', 7, 'Powerade', 'Powerade', NULL, 3, 1, 'description', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Lemon, Orange, Ice</p>', '<p>Limone, Arancia, Ice</p>', 6, '2020-07-12 11:01:04', '2020-07-12 11:01:04'),
(238, 'redbull', 7, 'Red Bull', 'Red Bull', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:01:22', '2020-07-12 11:01:22'),
(239, 'terresaracenerose', 2, 'Terre Saracene Rose', 'Terre Saracene Rosè', NULL, 3, 1, 'ingredients', '25,00', NULL, NULL, NULL, 'Ettore Sammarco', NULL, NULL, NULL, 'rose', 'Doc', 'Campania', NULL, NULL, 6, '2020-07-12 11:03:17', '2020-07-12 11:03:17'),
(240, 'terresaracenered', 2, 'Terre Saracene Red', 'Terre Saracene Rosso', NULL, 3, 1, 'ingredients', '25,00', NULL, NULL, NULL, 'Ettore Sammarco', NULL, NULL, NULL, 'rosso', 'Doc', 'Campania', NULL, NULL, 6, '2020-07-12 11:03:47', '2020-07-12 18:36:34'),
(241, 'moetandchandonimperialbrut', 2, 'Moet & Chandon Imperial Brut', 'Moet & Chandon Imperial Brut', NULL, 3, 1, 'empty', '100,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'champagne', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:04:44', '2020-07-12 11:04:44'),
(242, 'veuveclicquot', 2, 'Veuve Clicquot', 'Veuve Clicquot', NULL, 3, 1, 'empty', '110,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'champagne', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:05:07', '2020-07-12 11:05:07'),
(243, 'berlucchi', 2, 'Berlucchi', 'Berlucchi', NULL, 3, 1, 'empty', '45,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spumante', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:05:35', '2020-07-12 11:07:51'),
(244, 'ferrari', 2, 'Ferrari', 'Ferrari', NULL, 3, 1, 'empty', '45,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spumante', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:06:11', '2020-07-12 11:09:16'),
(245, 'prosecco', 2, 'Prosecco', 'Prosecco', NULL, 3, 1, 'empty', '25,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'prosecco', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:06:24', '2020-07-12 11:08:33'),
(246, 'brachetto', 2, 'Brachetto', 'Brachetto', NULL, 3, 1, 'empty', '25,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spumante', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:06:38', '2020-07-12 11:07:57'),
(247, 'almabellavistacuveebrut', 2, 'Alma Bellavista Cuvèe Brut', 'Alma Bellavista Cuvèe Brut', NULL, 3, 1, 'empty', '90,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spumante', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:07:04', '2020-07-12 11:07:47'),
(248, 'cadelboscocuveeprestige', 2, 'Cà Del Bosco Cuvèe Prestige', 'Cà Del Bosco Cuvèe Prestige', NULL, 3, 1, 'empty', '95,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'spumante', NULL, NULL, NULL, NULL, 6, '2020-07-12 11:07:37', '2020-07-12 11:07:37'),
(249, 'martini', 3, 'Martini', 'Martini', NULL, 3, 1, 'description', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>White, Red, Dry, Ros&egrave;</p>', '<p>Bianco, Rosso, Dry Ros&egrave;</p>', 6, '2020-07-12 11:16:29', '2020-07-12 11:16:29'),
(250, 'puntemes', 3, 'Punt e Mes', 'Punt e Mes', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:16:51', '2020-07-12 11:16:51'),
(251, 'littletblanc', 3, 'Littlet Blanc', 'Littlet Blanc', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:17:05', '2020-07-12 11:17:05'),
(252, 'carpanoanticaformulavermouth', 3, 'Carpano Antica Formula Vermouth', 'Carpano Antica Formula Vermouth', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:17:23', '2020-07-12 11:17:23'),
(253, 'vermouthdelprofessore', 3, 'Vermouth del Professore', 'Vermouth del Professore', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:17:40', '2020-07-12 11:17:40'),
(254, 'vermouthdelprofessorerosso', 3, 'Vermouth del Professore Red', 'Vermouth del Professore Rosso', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:18:04', '2020-07-12 11:18:04'),
(255, 'vermouthcocchirosso', 3, 'Vermouth Cocchi Red', 'Vermouth Cocchi Rosso', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:18:28', '2020-07-12 11:18:28'),
(256, 'carpanoclassico', 3, 'Carpano Classico', 'Carpano Classico', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:18:50', '2020-07-12 11:18:50'),
(257, 'aperol', 3, 'Aperol', 'Aperol', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:19:04', '2020-07-12 11:19:04'),
(258, 'bittercampari', 3, 'Bitter Campari', 'Bitter Campari', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:19:21', '2020-07-12 11:19:21'),
(259, 'biancosarti', 3, 'Biancosarti', 'Biancosarti', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:19:37', '2020-07-12 11:19:37'),
(260, 'pernod', 3, 'Pernod', 'Pernod', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:19:54', '2020-07-12 11:19:54'),
(261, 'richard', 3, 'Richard', 'Richard', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:20:06', '2020-07-12 11:20:06'),
(262, 'camparisoda', 3, 'Campari Soda', 'Campari Soda', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:20:20', '2020-07-12 11:20:20'),
(263, 'aperolsoda', 3, 'Aperol Soda', 'Aperol Soda', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:20:34', '2020-07-12 11:20:34'),
(264, 'campariorange', 3, 'Campari Orange', 'Campari Orange', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:22:35', '2020-07-12 11:22:35'),
(265, 'cubalibre', 3, 'Cuba Libre', 'Cuba Libre', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:22:56', '2020-07-12 11:22:56'),
(266, 'gintonic', 3, 'Gin Tonic', 'Gin Tonic', NULL, 3, 1, 'description', '12,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Bombay, Tanqueray, Puro Italian Gin, Martin Miller\'s</p>', '<p>Bombay, Tanqueray, Puro Italian Gin, Martin Miller\'s</p>', 6, '2020-07-12 11:24:20', '2020-07-12 11:24:20'),
(267, 'gintonic', 3, 'Gin Tonic', 'Gin Tonic', NULL, 3, 1, 'description', '14,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Tanqueray n&deg;10, Hendrick\'s, Gin Mare, Monkey 47, N&deg;3 London Dry, Bulldog London Dry, Gin del Professore, A La Madame/Monsieur</p>', '<p>Tanqueray n&deg;10, Hendrick\'s, Gin Mare, Monkey 47, N&deg;3 London Dry, Bulldog London Dry, Gin del Professore, A La Madame/Monsieur</p>', 6, '2020-07-12 11:25:26', '2020-07-12 11:25:26'),
(268, 'manhattan', 3, 'Manhattan', 'Manhattan', NULL, 3, 1, 'ingredients', '12,00', '59,39,80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:26:00', '2020-07-12 11:26:00'),
(269, 'bronx', 3, 'Bronx', 'Bronx', NULL, 3, 1, 'ingredients', '12,00', '57,39,63,69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:26:34', '2020-07-12 11:26:34'),
(270, 'rossini', 3, 'Rossini', 'Rossini', NULL, 3, 1, 'ingredients', '10,00', '46,77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:26:56', '2020-07-12 11:26:56'),
(271, 'bellini', 3, 'Bellini', 'Bellini', NULL, 3, 1, 'ingredients', '10,00', '46,76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:27:20', '2020-07-12 11:27:20'),
(272, 'cocktailmartini', 3, 'Cocktail Martini', 'Cocktail Martini', NULL, 3, 1, 'ingredients', '12,00', '63,57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:27:48', '2020-07-12 11:27:48'),
(275, 'whitelady', 3, 'White Lady', 'White Lady', NULL, 3, 1, 'ingredients', '12,00', '57,60,90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:33:02', '2020-07-12 11:41:52'),
(276, 'godfather', 3, 'God Father', 'God Father', NULL, 3, 1, 'ingredients', '12,00', '92,94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:44:08', '2020-07-12 11:45:59'),
(277, 'lemoncellocream', 10, 'Lemoncello Cream', 'Crema di Limoncello', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:54:41', '2020-07-12 11:54:41'),
(278, 'fennelliqueur', 10, 'Fennel Liqueur', 'Finocchietto', NULL, 3, 1, 'ingredients', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:55:02', '2020-07-12 11:55:02'),
(279, 'limoncello', 10, 'Lemoncello', 'Limoncello', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:55:17', '2020-07-12 11:55:17'),
(280, 'malibu', 10, 'Malibù', 'Malibù', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:56:26', '2020-07-12 11:56:26'),
(281, 'kahlua', 10, 'Kahlua', 'Kahlua', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:56:43', '2020-07-12 11:56:43'),
(282, 'grandmarnier', 10, 'Grand Marnier', 'Grand Marnier', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:56:54', '2020-07-12 11:56:54'),
(283, 'cointreau', 10, 'Cointreau', 'Cointreau', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:57:05', '2020-07-12 11:57:05'),
(284, 'pimms', 10, 'Pimm\'s n°1', 'Pimm\'s n°1', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:57:28', '2020-07-12 11:57:28'),
(285, 'baileys', 10, 'Baileys', 'Baileys', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:57:38', '2020-07-12 11:57:38'),
(286, 'benedictine', 10, 'Benedictine', 'Benedictine', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:57:48', '2020-07-12 11:57:48'),
(287, 'southerncomfort', 10, 'Southern Comfort', 'Southern Comfort', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:58:00', '2020-07-12 11:58:00'),
(288, 'chambord', 10, 'Chambord', 'Chambord', NULL, 3, 1, 'empty', '8,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:58:11', '2020-07-12 11:58:11'),
(289, 'drambuie', 10, 'Drambuie', 'Drambuie', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 11:58:23', '2020-07-12 11:58:23'),
(290, 'sambuca', 10, 'Sambuca', 'Sambuca', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:04:48', '2020-07-12 12:04:48'),
(291, 'chinamartini', 10, 'China Martini', 'China Martini', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:05:02', '2020-07-12 12:05:02'),
(292, 'rabarbarozucca', 10, 'Rabarbaro Zucca', 'Rabarbaro Zucca', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:05:14', '2020-07-12 12:05:14'),
(293, 'montenegro', 10, 'Montenegro', 'Montenegro', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:05:25', '2020-07-12 12:05:25'),
(294, 'brancamenta', 10, 'Branca Menta', 'Branca Menta', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:05:57', '2020-07-12 12:05:57'),
(295, 'ramazzotti', 10, 'Ramazzotti', 'Ramazzotti', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:06:18', '2020-07-12 12:06:18'),
(296, 'cynar', 10, 'Cynar', 'Cynar', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:06:31', '2020-07-12 12:06:31'),
(297, 'lucano', 10, 'Lucano', 'Lucano', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:07:04', '2020-07-12 12:07:04'),
(298, 'amarettodisaronno', 10, 'Amaretto Disaronno', 'Amaretto Disaronno', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:07:21', '2020-07-12 12:07:21'),
(299, 'jagermeister', 10, 'Jagermeister', 'Jagermeister', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:07:35', '2020-07-12 12:07:35'),
(300, 'unicum', 10, 'Unicum', 'Unicum', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:07:45', '2020-07-12 12:07:45'),
(301, 'braulio', 10, 'Braulio', 'Braulio', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:07:55', '2020-07-12 12:07:55'),
(302, 'stolichnayaelit', 20, 'Stolichnaya Elit', 'Stolichnaya Elit', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:36:39', '2020-07-12 12:36:39'),
(303, 'greygoose', 20, 'Grey Goose', 'Grey Goose', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:36:56', '2020-07-12 12:36:56'),
(304, 'belvedere', 20, 'Belvedere', 'Belvedere', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:37:11', '2020-07-12 12:37:11'),
(305, 'ciroc', 20, 'Ciroc', 'Ciroc', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:37:26', '2020-07-12 12:37:26'),
(306, 'beluga', 20, 'Beluga', 'Beluga', NULL, 3, 1, 'empty', '14,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 12:37:40', '2020-07-12 12:37:40'),
(307, 'havana', 20, 'Havana', 'Havana', NULL, 3, 1, 'empty', '8,00', NULL, NULL, NULL, NULL, '7 y.o.', '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:13:53', '2020-07-12 18:15:38'),
(308, 'capitanmorgan', 20, 'Capitan Morgan', 'Capitan Morgan', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:16:56', '2020-07-12 18:16:56'),
(309, 'eldorado', 20, 'El Dorado', 'El Dorado', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, '5 y.o.', '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:17:19', '2020-07-12 18:17:19'),
(310, 'appletonsignatureblend', 20, 'Appleton Signature Blend', 'Appleton Signature Blend', NULL, 3, 1, 'empty', '8,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:17:44', '2020-07-12 18:17:44'),
(311, 'appletonsignatureblend', 20, 'Saint James Rhum Vieux Agricoles', 'Appleton Signature Blend', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:18:18', '2020-07-12 18:18:18'),
(312, 'zacapa23solerariserva', 20, 'Zacapa 23 Solera Riserva', 'Zacapa 23 Solera Riserva', NULL, 3, 1, 'empty', '14,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:18:49', '2020-07-12 18:18:49'),
(313, 'zacapaxosolera', 20, 'Zacapa XO Solera Gran Riserva Especial', 'Zacapa XO Solera Gran Riserva Especial', NULL, 3, 1, 'empty', '16,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:19:37', '2020-07-12 18:19:37'),
(314, 'balli', 20, 'J. Balli (7 Ans d\'Age) Agricoles', 'J. Balli (7 Ans d\'Age) Agricoles', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:20:10', '2020-07-12 18:20:10'),
(315, 'diplomaticoriservaexclusiva', 20, 'Diplomatico Riserva Exclusiva', 'Diplomatico Riserva Exclusiva', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:20:32', '2020-07-12 18:20:32'),
(316, 'clairinsajous', 20, 'Clairin Sajous (Pot Still Proof)', 'Clairin Sajous (Pot Still Proof)', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:21:13', '2020-07-12 18:21:13'),
(317, 'clairincasimir', 20, 'Clairin Casimir (Pur Jus de Canne)', 'Clairin Casimir (Pur Jus de Canne)', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:21:50', '2020-07-12 18:21:50'),
(318, 'clairinvaval', 20, 'Clairin Vaval (Pur Jus de Canne)', 'Clairin Vaval (Pur Jus de Canne)', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:22:23', '2020-07-12 18:22:23'),
(319, 'beefeater', 20, 'Beefeater', 'Beefeater', NULL, 3, 1, 'empty', '5,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 18:24:54', '2020-07-12 18:24:54'),
(320, 'n3londondry', 20, 'N°3 London Dry', 'N°3 London Dry', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:16:31', '2020-07-12 19:16:31'),
(321, 'martinmillers', 20, 'Martin Miller\'s', 'Martin Miller\'s', NULL, 3, 1, 'empty', '8,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:16:54', '2020-07-12 19:16:54'),
(322, 'tanqueray', 20, 'Tanqueray', 'Tanqueray', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:17:29', '2020-07-12 19:17:29'),
(323, 'tanqueray10', 20, 'Tanqueray n°10', 'Tanqueray n°10', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:17:56', '2020-07-12 19:17:56'),
(324, 'bombaysapphire', 20, 'Bombay Sapphire', 'Bombay Sapphire', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:18:20', '2020-07-12 19:18:20'),
(325, 'hendricks', 20, 'Hendrick\'s', 'Hendrick\'s', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:19:05', '2020-07-12 19:19:05'),
(326, 'bulldoglondondrygin', 20, 'Bulldog London Dry Gin', 'Bulldog London Dry Gin', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:19:30', '2020-07-12 19:19:30'),
(327, 'monkey47', 20, 'Monkey 47', 'Monkey 47', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Schwarzland Dry Gin</p>', '<p>Schwarzland Dry Gin</p>', 6, '2020-07-12 19:20:02', '2020-07-12 19:20:02'),
(328, 'ginmare', 20, 'Gin Mare', 'Gin Mare', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, '<p>Mediterranean Gin</p>', '<p>Mediterranean Gin</p>', 6, '2020-07-12 19:21:06', '2020-07-12 19:21:06'),
(329, 'playmouthgin', 20, 'Playmouth Gin', 'Playmouth Gin', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:22:07', '2020-07-12 19:22:07'),
(330, 'puro', 20, 'Puro', 'Puro', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, '<p>Italian Gin</p>', '<p>Italian Gin</p>', 6, '2020-07-12 19:22:32', '2020-07-12 19:22:32'),
(331, 'gindelprofessoremonsieur', 20, 'Gin del Professore Monsieur', 'Gin del Professore Monsieur', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:23:06', '2020-07-12 19:23:06'),
(332, 'gindelprofessorealamadame', 20, 'Gin del Professore A La Madame', 'Gin del Professore A La Madame', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:23:32', '2020-07-12 19:23:32'),
(333, 'christiandrouin', 20, 'Christian Drouin', 'Christian Drouin', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:24:13', '2020-07-12 19:24:13'),
(334, 'taliskersky', 20, 'Talisker Sky', 'Talisker Sky', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:25:00', '2020-07-12 19:25:00'),
(335, 'taliskerstorm', 20, 'Talisker Storm', 'Talisker Storm', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:25:28', '2020-07-12 19:25:28'),
(336, 'lagavulin', 20, 'Lagavulin', 'Lagavulin', NULL, 3, 1, 'empty', '14,00', NULL, NULL, NULL, NULL, '16 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:26:13', '2020-07-12 19:26:13'),
(337, 'caolila', 20, 'Caol Ila', 'Caol Ila', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, '12 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:26:41', '2020-07-12 19:26:41'),
(338, 'oban', 20, 'Oban', 'Oban', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, '14 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:27:01', '2020-07-12 19:27:01'),
(339, 'dalwhinnie', 20, 'Dalwhinnie', 'Dalwhinnie', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, '15 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:27:33', '2020-07-12 19:27:33'),
(340, 'glengrant', 20, 'Glen Grant', 'Glen Grant', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, '5 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:28:03', '2020-07-12 19:28:03'),
(341, 'cardhu', 20, 'Cardhu', 'Cardhu', NULL, 3, 1, 'empty', '13,00', NULL, NULL, NULL, NULL, '15 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:28:35', '2020-07-12 19:28:35'),
(342, 'macallan', 20, 'Macallan', 'Macallan', NULL, 3, 0, 'empty', '14,00', NULL, NULL, NULL, NULL, '12 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:29:10', '2020-07-12 19:29:10'),
(343, 'glenfiddich', 20, 'Glenfiddich', 'Glenfiddich', NULL, 3, 1, 'empty', '12,00', NULL, NULL, NULL, NULL, '12 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:29:38', '2020-07-12 19:29:38'),
(344, 'benriachpurehighlandmalt', 20, 'Benriach Pure Highland Malt', 'Benriach Pure Highland Malt', NULL, 3, 1, 'empty', '10,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:30:06', '2020-07-12 19:30:06'),
(345, 'portaskaigislay', 20, 'Port Askaig Islay', 'Port Askaig Islay', NULL, 3, 1, 'empty', '10.00', NULL, NULL, NULL, NULL, '8 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:30:30', '2020-07-12 19:30:30'),
(346, 'tiopepefinojerezsherry', 10, 'Tio Pepe Fino Jerez Sherry', 'Tio Pepe Fino Jerez Sherry', NULL, 3, 1, 'empty', '6,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:31:37', '2020-07-12 19:31:37'),
(347, 'fonsecatawnyport', 10, 'Fonseca Tawny Port', 'Fonseca Tawny Port', NULL, 3, 1, 'empty', '8,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:32:01', '2020-07-12 19:32:01'),
(348, 'grahms', 10, 'Grahm\'s', 'Grahm\'s', NULL, 3, 1, 'empty', '7,00', NULL, NULL, NULL, NULL, '10 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:32:59', '2020-07-12 19:33:14'),
(349, 'fonsecaporto', 10, 'Fonseca Porto', 'Fonseca Porto', NULL, 3, 1, 'empty', '9,00', NULL, NULL, NULL, NULL, '10 y.o.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:33:42', '2020-07-12 19:33:42'),
(350, 'sanderman', 10, 'Sanderman', 'Sanderman', NULL, 3, 1, 'empty', '11,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2020-07-12 19:34:00', '2020-07-12 19:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fields` longtext COLLATE utf8_unicode_ci,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_it` longtext COLLATE utf8_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id_code`, `id`, `name_en`, `name_it`, `cover`, `fields`, `description_en`, `description_it`, `visible`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'firstcourse', 'First Course', 'Primi', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/firstcourse.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-15 15:05:53', '2020-07-03 17:36:50'),
(2, 'wine', 'Wines', 'Vini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/wine.png', 'format,winery,year,winetype,winedoc,region,vol', NULL, NULL, 1, 1, '2020-06-15 15:49:02', '2020-07-07 12:23:30'),
(3, 'drink', 'Drinks', 'Drinks', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/drink.png', 'ingredients,features,format,vol', NULL, NULL, 1, 1, '2020-06-16 08:31:39', '2020-07-05 07:07:36'),
(4, 'maincourse', 'Main Course', 'Secondi', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/maincourse.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-17 08:21:32', '2020-07-08 07:54:59'),
(5, 'pizza', 'Pizza', 'Pizza', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/pizza.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-17 10:37:44', '2020-07-04 06:28:37'),
(6, 'sidedishes', 'Side Dishes', 'Contorni', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/sidedish.png', NULL, NULL, NULL, 1, 1, '2020-06-18 14:59:53', '2020-06-24 12:08:08'),
(7, 'softdrink', 'Soft Drinks', 'Soft Drinks', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/softdrink.png', 'format,vol', NULL, NULL, 1, 1, '2020-06-24 09:00:02', '2020-07-04 06:24:04'),
(8, 'sandwich', 'Sandwiches', 'Panini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/sandwich.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-24 09:04:31', '2020-07-04 11:32:45'),
(9, 'dessert', 'Dessert', 'Dolci', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/dessert.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-24 09:09:25', '2020-07-08 08:21:30'),
(10, 'bitter', 'Bitter & Spirit', 'Amari & Liquori', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/bitter.png', 'format,year,vol', NULL, NULL, 1, 1, '2020-06-24 09:13:21', '2020-07-12 19:32:56'),
(11, 'appetizer', 'Appetizers', 'Antipasti', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/appetizer.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-24 09:22:23', '2020-07-03 12:29:44'),
(12, 'fry', 'Fry', 'Friggitoria', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/fry.png', 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-06-24 09:24:56', '2020-07-12 18:39:31'),
(13, 'special', 'Specials', 'Speciali', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/special.png', NULL, NULL, NULL, 1, 1, '2020-06-24 09:28:08', '2020-06-24 12:52:14'),
(15, 'coffeebar', 'Coffee Bar', 'Caffetteria', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/coffeebar.png', 'ingredients', NULL, NULL, 1, 1, '2020-06-29 12:12:38', '2020-07-07 08:49:40'),
(16, 'icecream', 'Ice Cream', 'Gelati & Granite', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/itemcategories/icecream.png', 'ingredients,allergens', NULL, NULL, 1, 1, '2020-06-29 13:04:35', '2020-07-04 06:10:06'),
(17, 'toast', 'Toast', 'Toast', NULL, 'ingredients,allergens,features', NULL, NULL, 1, 1, '2020-07-04 06:31:54', '2020-07-04 06:34:42'),
(18, 'beer', 'Beer', 'Birra', NULL, 'format,vol', NULL, NULL, 1, 1, '2020-07-04 06:39:47', '2020-07-04 06:39:47'),
(19, 'cartadeivini', 'Wine Card', 'Carta dei Vini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/wine.png', 'ingredients,allergens,features,format,winery,year,winetype,winedoc,region,vol', NULL, NULL, 1, 5, '2020-07-09 06:30:02', '2020-07-09 06:30:02'),
(20, 'spirit', 'Spirit', 'Distillati', NULL, 'format,year', NULL, NULL, 1, 1, '2020-07-12 12:01:07', '2020-07-12 18:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `structure_id` int(10) UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `items` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_view` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci,
  `description_it` longtext COLLATE utf8_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id_code`, `id`, `name_en`, `name_it`, `cover`, `structure_id`, `visible`, `items`, `order`, `price`, `price_view`, `description_en`, `description_it`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'primipiatti', 'First Course', 'Primi Piatti', NULL, 1, 1, '1,2', '1', NULL, 'hide_price', NULL, NULL, 1, '2020-06-16 09:28:53', '2020-06-22 13:53:38'),
(2, 'secondi', 'Main Course', 'Secondi Piatti', NULL, 1, 1, '2', '0', '12', 'ingredients', NULL, NULL, 3, '2020-06-22 13:25:34', '2020-06-22 13:53:38'),
(6, 'pizza', 'Pizze', 'Pizze', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/pizza.png', 2, 1, '4,5,6,7,8,9,10', '1', NULL, 'show_price', NULL, NULL, 5, '2020-06-24 11:58:59', '2020-07-09 05:56:46'),
(7, 'panini', 'Panini', 'Panini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/sandwich.png', 2, 1, '11', '0', NULL, 'hide_price', NULL, NULL, 5, '2020-06-24 13:57:48', '2020-07-09 05:57:02'),
(8, 'antipasti', 'Antipasti', 'Antipasti', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/appetizer.png', 2, 1, '12,13,14,15,16,17,18,19,20', '0', NULL, 'show_price', '<p>Antipasti con salumi nostrani</p>', '<p>Antipasti con salumi nostrani</p>', 5, '2020-06-25 15:23:29', '2020-07-09 05:57:16'),
(9, 'coffeebar', 'Coffee Bar', 'Caffetteria', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/coffee.png', 3, 1, '22,23,24,25,26,27,28,29,30,31,32,33,34,35,36', '0', NULL, 'show_price', NULL, NULL, 1, '2020-06-29 12:23:14', '2020-07-07 05:38:48'),
(10, 'refreshments', 'Refreshments', 'Bibite', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/softdrink.png', 3, 1, '21,52,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51', '0', NULL, 'show_price', NULL, NULL, 1, '2020-06-29 12:50:22', '2020-07-07 06:05:12'),
(11, 'sandwiches', 'Sandwiches', 'Panini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/sandwich.png', 3, 1, '60,61,62,63,64,65,66,67', '0', NULL, 'show_price', NULL, NULL, 1, '2020-06-29 13:41:09', '2020-07-07 05:52:11'),
(12, 'rostisserie', 'Rostisserie', 'Rosticceria', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/piadina.png', 3, 1, '68,70,69', '0', NULL, 'show_price', NULL, NULL, 1, '2020-06-29 13:55:50', '2020-07-07 06:05:31'),
(13, 'icecream', 'Ice Cream & Crushed Ice', 'Gelati & Granite', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/icecream.png', 3, 1, '53,71,72', '0', NULL, 'show_price', NULL, NULL, 1, '2020-06-30 10:03:52', '2020-07-07 05:40:13'),
(14, 'wines', 'Wines', 'Vini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/wine.png', 3, 1, '54,55,56,57,240,239', '0', NULL, 'show_price', NULL, NULL, 6, '2020-06-30 10:04:43', '2020-07-12 18:35:25'),
(15, 'cakeandpastry', 'Cake & Pastry', 'La Nostra Pasticceria', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/dessert.png', 3, 1, '73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,234,235', '0', NULL, 'show_price', NULL, NULL, 6, '2020-06-30 10:22:12', '2020-07-12 10:55:45'),
(16, 'breakfast', 'Breakfast', 'Prima Colazione', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/croissant.png', 3, 1, '90,91,92,93,94,95,96,97', '0', NULL, 'show_price', NULL, NULL, 1, '2020-06-30 10:30:22', '2020-07-07 05:57:54'),
(17, 'cocktails', 'Cocktails', 'Cocktails', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/cocktail.png', 3, 1, '98,99,100,101,102,103,104,105,264,265,106,266,267,268,269,107,271,270,272,108,109,275,111,112,276,113,114', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-04 06:22:15', '2020-07-12 11:51:34'),
(18, 'pizza', 'Pizza', 'Pizza', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/pizza.png', 3, 1, '58,59', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 06:27:48', '2020-07-07 05:53:09'),
(19, 'italianbeer', 'Italian Beer', 'Birra Nazionale', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/beer.png', 3, 1, '124,125,126', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 07:54:29', '2020-07-07 05:56:50'),
(20, 'foreignbeer', 'Foreign Beer', 'Birra Estera', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/beer.png', 3, 1, '127,128,129,130,131,132', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 07:55:21', '2020-07-07 05:57:04'),
(21, 'sandomingodraughtbeer', 'San Domingo Draught Beer', 'Birra Alla Spina San Domingo', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/beer.png', 3, 1, '133,134,135', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 07:56:04', '2020-07-07 05:57:12'),
(22, 'noalcoolaperitif', 'No Alcool Aperitif', 'Aperitivi Analcolici', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/drink.png', 3, 1, '115,116,117', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 07:57:47', '2020-07-07 05:53:23'),
(23, 'bitters', 'Digestive Liquor', 'Digestivi', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/bitter.png', 3, 1, '290,291,292,293,120,294,295,118,296,297,119,298,299,300,301', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-04 07:58:25', '2020-07-12 12:39:20'),
(24, 'toast', 'Tramezzini & Toast', 'Tramezzini & Toast', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/toast.png', 3, 1, '121,122,123', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 08:01:40', '2020-07-07 06:04:37'),
(25, 'signaturehighball', 'Signature Highball', 'Signature Higball', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/cocktail.png', 3, 1, '136,137,138,139,140', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-04 11:40:33', '2020-07-07 05:57:39'),
(26, 'signaturedrinks', 'Signature Drinks', 'Signature Drinks', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/cocktail.png', 4, 1, '142,143,144,145', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-07 07:18:51', '2020-07-07 09:26:48'),
(27, 'specialdrink', 'Special Drink', 'Special Drink', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/cocktail.png', 4, 1, '141', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-07 07:30:15', '2020-07-07 09:26:55'),
(28, 'classicdrinks', 'Classic Drinks', 'Classic Drinks', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/cocktail.png', 4, 1, '148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,167,168,169,170,171,172,173,174,175,176,177,178,179', '0', NULL, 'show_price', NULL, NULL, 7, '2020-07-07 07:33:00', '2020-07-07 12:10:18'),
(29, 'sparklinwines', 'Sparklin Wines', 'Spumanti', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/champagne.png', 4, 1, '180,181,182,183,184,185,186,187,188', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-07 12:25:14', '2020-07-07 13:31:13'),
(30, 'champagne', 'Champagne', 'Champagne', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/champagne.png', 4, 1, '189,190,191,192', '0', NULL, 'show_price', NULL, NULL, 7, '2020-07-08 07:11:21', '2020-07-08 07:11:34'),
(31, 'appetizers', 'Appetizers', 'Antipasti', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/appetizer.png', 4, 1, '193,194,195,196,197', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-08 07:20:06', '2020-07-08 07:23:15'),
(32, 'thepasta', 'The Pasta', 'La Pasta', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/firstcourse.png', 4, 1, '198,199,200,201,202,203,204', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-08 07:45:58', '2020-07-08 07:47:09'),
(33, 'afterpasta', 'and After Pasta', 'e Dopo la Pasta', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/fish.png', 4, 1, '205,206,207,208,209,210,211', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-08 08:00:50', '2020-07-08 08:02:09'),
(34, 'dessert', 'Dessert', 'Dolci', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/dessert.png', 4, 1, '212,213,214', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-08 08:24:35', '2020-07-08 08:24:55'),
(35, 'rosewines', 'Rosè Wines', 'Vini Rosati', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/wine.png', 4, 1, '215,216,217,218,219', '0', NULL, 'show_price', NULL, NULL, 1, '2020-07-08 09:57:02', '2020-07-09 13:35:53'),
(36, 'sandwiches', 'Sandwiches', 'Panini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/sandwich.png', 5, 1, '222', '0', '€ 6.00', 'show_price', NULL, '<p>Pomodoro, mozzarella e basilico.</p>', 8, '2020-07-08 10:41:21', '2020-07-09 12:08:39'),
(37, 'cartadeivini', 'Wine Card', 'Carta dei Vini', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/champagne.png', 2, 1, '223,224,225,226,227,228,229', '0', NULL, 'show_price', NULL, NULL, 5, '2020-07-09 06:33:37', '2020-07-09 13:17:19'),
(38, 'vinirossicampania', 'Campania Red Wines', 'Vini Rossi Campania', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/menus/wine.png', 4, 1, '231,232,233', '0', NULL, 'show_price', NULL, NULL, 7, '2020-07-09 13:32:57', '2020-07-09 13:48:14'),
(39, 'champagne', 'Champagne', 'Champagne', NULL, 3, 1, '241,242', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 11:14:00', '2020-07-12 11:14:00'),
(40, 'spumanti', 'Spumanti', 'Spumanti', NULL, 3, 1, '243,244,245,246,247,248', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 11:14:38', '2020-07-12 11:14:38'),
(41, 'foreignliqueurs', 'Foreign Liqueurs', 'Liquori Esteri', NULL, 3, 1, '280,281,282,283,284,285,286,287,288,289', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 12:40:03', '2020-07-12 12:40:03'),
(42, 'vodka', 'Vodka', 'Vodka', NULL, 3, 1, '302,303,304,305,306', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 12:40:49', '2020-07-12 12:40:49'),
(43, 'rum', 'Rum', 'Rum', NULL, 3, 1, '307,308,309,310,311,312,313,314,315,316,317,318', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 18:23:15', '2020-07-12 18:23:15'),
(44, 'localliqueurs', 'Local Liqueurs', 'Liquori Locali', NULL, 3, 1, '277,278,279', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 18:42:49', '2020-07-12 18:42:49'),
(45, 'sherry', 'Sherry', 'Porto', NULL, 3, 1, '346,347,348,349,350', '0', NULL, 'show_price', NULL, NULL, 6, '2020-07-12 19:34:48', '2020-07-12 19:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_27_123143_laratrust_setup_tables', 1),
(5, '2020_05_27_145254_create_structure_categories_table', 2),
(6, '2020_06_10_093931_create_allergens_table', 3),
(7, '2020_06_10_111237_create_ingredients_table', 4),
(8, '2020_06_15_095701_create_towns_table', 5),
(9, '2020_06_15_100350_create_structures_table', 5),
(10, '2020_06_15_115517_create_features_table', 6),
(11, '2020_06_15_121240_create_dishes_table', 7),
(12, '2020_06_15_142008_create_item_categories_table', 8),
(14, '2020_06_15_142639_create_items_table', 9),
(15, '2020_06_16_083744_create_menus_table', 10),
(16, '2020_06_16_094002_create_structure_users_table', 11),
(17, '2020_06_22_143354_create_qr_codes_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-users', 'Create Users', 'Create Users', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(2, 'read-users', 'Read Users', 'Read Users', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(3, 'update-users', 'Update Users', 'Update Users', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(4, 'delete-users', 'Delete Users', 'Delete Users', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(5, 'create-payments', 'Create Payments', 'Create Payments', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(6, 'read-payments', 'Read Payments', 'Read Payments', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(7, 'update-payments', 'Update Payments', 'Update Payments', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(8, 'delete-payments', 'Delete Payments', 'Delete Payments', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(9, 'read-profile', 'Read Profile', 'Read Profile', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(10, 'update-profile', 'Update Profile', 'Update Profile', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(11, 'create-module_1_name', 'Create Module_1_name', 'Create Module_1_name', '2020-05-27 13:43:45', '2020-05-27 13:43:45'),
(12, 'read-module_1_name', 'Read Module_1_name', 'Read Module_1_name', '2020-05-27 13:43:45', '2020-05-27 13:43:45'),
(13, 'update-module_1_name', 'Update Module_1_name', 'Update Module_1_name', '2020-05-27 13:43:45', '2020-05-27 13:43:45'),
(14, 'delete-module_1_name', 'Delete Module_1_name', 'Delete Module_1_name', '2020-05-27 13:43:45', '2020-05-27 13:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `menus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_enable` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_daily` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `structure_id` int(10) UNSIGNED NOT NULL,
  `template_id` int(10) NOT NULL,
  `activation_start` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_end` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qr_codes`
--

INSERT INTO `qr_codes` (`id_code`, `id`, `active`, `menus`, `password_enable`, `password`, `password_daily`, `visible`, `structure_id`, `template_id`, `activation_start`, `activation_end`, `created_at`, `updated_at`) VALUES
(1, 'masaniello', 1, '1,2,6,7', 0, NULL, 0, 1, 1, 0, '29/06/2020', '31/12/2020', '2020-06-22 15:26:56', '2020-06-30 13:48:42'),
(2, 'borgosanpietro', 1, '8,7,6,37', 0, 'alefal', 1, 1, 2, 1, '29/06/2020', '28/11/2020', '2020-06-24 12:19:44', '2020-07-09 06:39:54'),
(3, '2020', 0, '', 0, NULL, 0, 1, 2, 0, '', '', '2020-06-24 12:53:59', '2020-06-24 12:53:59'),
(4, 'alsandomingo', 1, '9,10,22,14,19,20,21,13,23,17,25,16,15,12,11,18,24,42,41,40,39,43,44,45', 1, 'alsandomingo', 1, 1, 3, 1, '29/06/2020', '31/12/2020', '2020-06-29 12:25:14', '2020-07-12 19:35:00'),
(5, 'trattoriadalorenzo', 1, '31,32,33,34,28,26,27,38,35,30,29', 1, 'dalorenzo', 1, 1, 4, 1, '07/07/2020', '31/12/2020', '2020-07-07 09:17:57', '2020-07-09 13:33:53'),
(6, 'cinemairis', 1, '36', 0, NULL, 0, 1, 5, 1, '08/07/2020', '31/07/2020', '2020-07-08 10:43:11', '2020-07-08 10:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadministrator', 'Superadministrator', 'Superadministrator', '2020-05-27 13:43:44', '2020-05-27 13:43:44'),
(2, 'administrator', 'Administrator', 'Administrator', '2020-05-27 13:43:45', '2020-05-27 13:43:45'),
(3, 'user', 'User', 'User', '2020-05-27 13:43:45', '2020-05-27 13:43:45'),
(4, 'role_name', 'Role Name', 'Role Name', '2020-05-27 13:43:45', '2020-05-27 13:43:45'),
(5, 'owner', 'Owner', 'Owner', '2020-06-16 10:24:40', '2020-06-16 10:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User'),
(1, 2, 'App\\User'),
(5, 3, 'App\\User'),
(5, 4, 'App\\User'),
(1, 5, 'App\\User'),
(5, 6, 'App\\User'),
(5, 7, 'App\\User'),
(5, 8, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `town_id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tripadvisor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_album` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8_unicode_ci,
  `sponsored` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id_code`, `id`, `name`, `address`, `town_id`, `logo`, `cover`, `category_id`, `subcategories`, `latitude`, `longitude`, `telephone`, `email`, `website`, `tripadvisor`, `facebook`, `facebook_album`, `instagram`, `description_en`, `description_it`, `images`, `sponsored`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'masaniello', 'Masaniello Art Cafe\'', 'Largo Cesario Console, 7', 1, '', 'https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-00.jpg', 2, '', '40.6338737', '14.6023588', '+39 089871929', 'info@masanielloartcafe.it', 'www.masanielloartcafe.it', '7383352', 'MasanielloArtCafe', '636583833136187', 'masaniello_art_cafe_amalfi', '<p>Masaniello Art Cafe\' - Amalfi, Italy</p>', '<p>Masaniello Art Cafe\' - Amalfi, Italy</p>', 'https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-01.jpg,https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-02.jpg,https://menudigitale.easycomande.it/storage/photos/1/structures/amalfi/masanielloartcafe/masanielloartcafe-03.jpg', 0, 1, '2020-06-15 11:01:39', '2020-06-15 11:01:39'),
(2, 'borgosanpietro', 'Borgo San Pietro', 'via Fra Gerardo Sasso', 2, '', 'https://menudigitale.easycomande.it/storage/app/public/photos/4/L9A5568.jpg', 1, '', '40.658114', '14.608219', '089855454', 'info@riannarooms.com', 'http://www.riannarooms.com/', NULL, NULL, NULL, NULL, '<p>A disposizione dei nostri ospiti, con lo scopo di rendere il loro soggiorno pi&ugrave; piacevole possibile, c&rsquo;&egrave; il Bar Pizzeria&nbsp;<strong>Borgo San Pietro</strong>&nbsp;con a disposizione una sala interna ed una esterna con un ampio spazio gradevole agli ospiti per la particolare posizione tranquilla. Qui &egrave; possibile, ogni sera, sorseggiare un buon cocktail accompagnato da una buona pizza fatta secondo l&rsquo;antica tradizione napoletana. Durante la giornata lo staff del Bar Pizzeria Borgo San Pietro sar&agrave; a vostra completa disposizione aiutandovi nel difficile compito di scegliere tra gli svariati piatti del nostro snack men&ugrave;. Tutta la struttura dispone di una connessione Wi-Fi gratuita</p>', '<p>A disposizione dei nostri ospiti, con lo scopo di rendere il loro soggiorno pi&ugrave; piacevole possibile, c&rsquo;&egrave; il Bar Pizzeria&nbsp;<strong>Borgo San Pietro</strong>&nbsp;con a disposizione una sala interna ed una esterna con un ampio spazio gradevole agli ospiti per la particolare posizione tranquilla. Qui &egrave; possibile, ogni sera, sorseggiare un buon cocktail accompagnato da una buona pizza fatta secondo l&rsquo;antica tradizione napoletana. Durante la giornata lo staff del Bar Pizzeria Borgo San Pietro sar&agrave; a vostra completa disposizione aiutandovi nel difficile compito di scegliere tra gli svariati piatti del nostro snack men&ugrave;. Tutta la struttura dispone di una connessione Wi-Fi gratuita</p>', 'https://menudigitale.easycomande.it/storage/app/public/photos/4/L9A5568.jpg', 0, 1, '2020-06-18 12:15:21', '2020-06-24 14:16:47'),
(3, 'alsandomingo', 'Al San Domingo', 'Piazza Duomo, 1', 3, 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/ravello/alsandomingo/alsandomingo-logo.png', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/ravello/alsandomingo/alsandomingo-00.jpg', 2, '', '40.6489907', '14.611272', '+39 089 857142', 'info@alsandomingo.it', NULL, '4737268', 'baralsandomingo1929', '1285191574893128', 'baralsandomingo', '<p>Situated in the main square of Ravello, the bar San Domingo offers the widest window and possibilities of products from our traditional pastry and confectionery from delicious plates to a light snack. During the night, the bar San Domingo transforms itself, gifting its clients a glamorous atmosphere with a wide selection of spirits and wines from the imagination of the bartenders making you live and feel a fantastic experience in relation to the world of mixology.</p>', '<p>Situato nella piazza principale di Ravello, il bar San Domingo offre la un ambia scelta di prodotti, dalla pasticceria tradizionale a piatti deliziosi fino ad uno spuntino leggero. Durante la notte il bar San Domingo si trasforma, regalando ai suoi clienti un\'atmosfera glamour con un\'ampia selezione di liquori e vini suggeriti dall\'immaginazione dei baristi che vi faranno vivere e sentire un\'esperienza fantastica immersi nel mondo del mixology.</p>', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/ravello/alsandomingo/alsandomingo-01.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/ravello/alsandomingo/alsandomingo-02.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/ravello/alsandomingo/alsandomingo-03.jpg', 0, 1, '2020-06-29 11:39:52', '2020-07-07 06:16:54'),
(4, 'trattoriadalorenzo', 'Trattoria Da Lorenzo', 'via Sasso fra Gerardo, 10', 2, 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/scala/trattoriadalorenzo/trattoriadalorenzo-logo.png', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/scala/trattoriadalorenzo/trattoriadalorenzo-00.jpg', 1, '', '40.6568566', '14.6104901', '+39 089 858290', 'info@trattoriadalorenzo.com', 'www.trattoriadalorenzo.com', '1210580', 'trattoriadalorenzo', '243348652365915', 'trattoriadalorenzo', '<p>&ldquo;Trattoria da Lorenzo&rdquo; offers its clients simple, high quality dishes, in a peaceful, relaxing atmosphere. Lorenzo and his family will welcome you in such a way you will feel at home. The restaurant offers local specialties of the Amalfi Coast and Campania&rsquo;s tradition &ndash; with fresh fish coming from the nearest market, in a pleasant and friendly environment.</p>\r\n<p>What characterizes this place is the homely atmosphere, a relaxing ambiance that only a friendly place can give you. You will be served fish bought by Lorenzo himself every morning, right after the catch, and cooked by the expert and capable hands of chefs Annamaria and Gerardo. This will guarantee you dishes made with the freshest ingredients in the area and a real, natural taste.</p>', '<p>La &ldquo;Trattoria da Lorenzo&rdquo; offre ai propri clienti piatti semplici ma di qualit&agrave; in un&rsquo;atmosfera serena e rilassante. L&rsquo;accoglienza che vi verr&agrave; riservata da Lorenzo e la sua famiglia vi far&agrave; sentire a casa. Il ristorante offre piatti tipici della costiera amalfitana e della tradizione campana &ndash; con pesce fresco di giornata proveniente dal mercato pi&ugrave; vicino, in un&rsquo; atmosfera cordiale e familiare.</p>\r\n<p>Ma ci&ograve; che caratterizza davvero questo posto &egrave; l&rsquo;aria di casa, l&rsquo;atmosfera rilassante che solo un posto amico pu&ograve; trasmetterti. Il pesce che vi verr&agrave; servito viene acquistato ogni mattino da Lorenzo, subito dopo essere stato pescato, per venire poi affidato alle mani esperte e capaci degli chef Annamaria e Gerardo. Ci&ograve; vi garantir&agrave; piatti realizzati con prodotti freschi e dal sapore genuino</p>', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/scala/trattoriadalorenzo/trattoriadalorenzo-01.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/scala/trattoriadalorenzo/trattoriadalorenzo-02.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/scala/trattoriadalorenzo/trattoriadalorenzo-03.jpg', 0, 1, '2020-07-07 06:47:55', '2020-07-07 09:20:21'),
(5, 'cinemairis', 'Cinema Iris', 'via Santa Maria Maggiore', 1, 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/amalfi/cinemairis/cinemairis-logo.png', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/amalfi/cinemairis/cinemairis-00.jpg', 2, '', '40.634909', '14.6025581', '+39 320 8450116', 'info@cinemairis.it', 'www.cinemairis.it', '12504084', 'cinemairisamalfi', '1438418812920512', 'cinemairisamalfi', '<p>After about 35 years of intermittent operation, the iris cinema has officially reopened its doors, a meeting point for generations for many Amalfi and coastal inhabitants. In addition to projecting the latest innovations in cinema programming, the room, completely renovated and modernized, can also host collateral events, conferences and meetings. Between one projection and the other, do not miss a bit of healthy relaxation and a chat with friends at the iris Cinema bar.</p>', '<p>Dopo circa 35 anni di intermittente funzionamento, ha ufficialmente riaperto i battenti il Cinema iris, punto di incontro da generazioni per tanti amalfitani ed abitanti della costiera. Oltre a proiettare le ultimissime novit&agrave; della programmazione cinematografica, la sala, completamente ristrutturata e rimodernata, pu&ograve; ospitare anche eventi collaterali, conferenze e meeting. Tra una proiezione e l&rsquo;altra, non lasciarti sfuggire un po&rsquo; di sano relax e quattro chiacchiere con gli amici al bar del Cinema iris.</p>', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/amalfi/cinemairis/cinemairis-01.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/amalfi/cinemairis/cinemairis-02.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/structures/amalfi/cinemairis/cinemairis-03.jpg', 0, 1, '2020-07-08 10:19:52', '2020-07-08 10:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `structure_categories`
--

CREATE TABLE `structure_categories` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_it` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_svg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `structure_categories`
--

INSERT INTO `structure_categories` (`id_code`, `id`, `name_en`, `name_it`, `cover`, `icon`, `icon_svg`, `map`, `description_en`, `description_it`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'restaurant', 'Restaurant', 'Ristorante', 'https://menudigitale.easycomande.it/storage/photos/1/structurecategories/restaurant.png', 'https://menudigitale.easycomande.it/storage/photos/1/structurecategories/restaurant.png', 'fas fa-utensils', 'https://menudigitale.easycomande.it/storage/photos/1/structurecategories/restaurant.png', '<p>Restaurant</p>', '<p>Ristorante</p>', 1, '2020-06-10 08:46:54', '2020-06-23 12:53:28'),
(2, 'bar', 'Bar', 'Bar', 'https://menudigitale.easycomande.it/storage/photos/1/structurecategories/bar.png', 'https://menudigitale.easycomande.it/storage/photos/1/structurecategories/bar.png', 'fas fa-cocktail', 'https://menudigitale.easycomande.it/storage/photos/1/structurecategories/bar.png', '<p>Bar</p>', '<p>Bar</p>', 1, '2020-06-10 08:54:09', '2020-06-23 12:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `structure_users`
--

CREATE TABLE `structure_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `structure_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `structure_users`
--

INSERT INTO `structure_users` (`id`, `structure_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2020-06-16 10:25:40', '2020-06-16 10:25:40'),
(2, 2, 4, '2020-06-18 12:22:22', '2020-06-18 12:22:22'),
(3, 3, 6, '2020-06-29 12:19:33', '2020-06-29 12:19:33'),
(4, 4, 7, '2020-07-07 07:12:12', '2020-07-07 07:12:12'),
(5, 5, 8, '2020-07-08 10:20:18', '2020-07-08 10:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_code`, `id`, `name`, `image`, `description`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'simple', 'Simple', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/templates/simple-01.jpg', NULL, 1, '2020-07-07 09:16:11', '2020-07-07 09:16:11'),
(2, 'accordion', 'Accordion', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/templates/accordion-01.jpg', NULL, 1, '2020-07-07 10:02:12', '2020-07-07 10:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id_code` int(10) UNSIGNED NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resume_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `resume_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description_it` longtext COLLATE utf8_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id_code`, `id`, `name`, `cover`, `latitude`, `longitude`, `facebook`, `instagram_id`, `telephone`, `website`, `resume_en`, `resume_it`, `description_en`, `description_it`, `images`, `created_at`, `updated_at`) VALUES
(1, 'amalfi', 'Amalfi', 'https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-00.jpg', '40.634176', '14.602545', 'comunediamalfi', '222836363', '+39 089 873512', 'https://www.amalfi.gov.it', '<p>Amalfi was founded by the Romans in the IV century A.D. (in the coat of arms reads \"ex Descendit patribus Romanorum\"). The town became independent from the Byzantine Empire in 839, and proclaimed itself Maritime Republic (the first of the four most important ones with Pisa, Genoa and Venice). The core of its wealth was produced form the trade with the East. Amalfi reached its maximum splendor in the XI century with its powerful and agile fleet, with berths in the main ports of the Mediterranean. The Arsenal of masonry, used for the construction of the hulls of the galleys, are today two stone brick halls, divided by ten pillars. The sea front and the ancient port of Amalfi were swallowed by the sea, after an underwater landslide, caused by a powerful current of Libeccio in the night between 24 and 25 November 1343.</p>', '<p>Fondata dai Romani nel IV sec d.C. (nello stemma della citt&agrave; si legge \"Descendit ex patribus Romanorum\") e resasi autonoma dall\'Impero bizantino nell\'839, Amalfi, la prima delle quattro Repubbliche Marinare, fece dei traffici commerciali con l\'Oriente il perno della sua ricchezza. Raggiunse il massimo del suo splendore nell\'XI secolo: era dotata di una potente ed agile flotta, con attracchi nei principali porti del Mediterraneo. Dell\'arsenale in muratura, utilizzato per la costruzione degli scafi delle galee di combattimento, restano oggi solo due corsie divise da dieci pilastri; la parte antistante, nonch&eacute; l\'antico porto di Amalfi, &egrave; stato risucchiato dal mare in seguito ad una frana sottomarina, provocata da una possente corrente di Libeccio nella notte fra il 24 e il 25 novembre del 1343.</p>', '<p>Amalfi was founded by the Romans in the IV century A.D. (in the coat of arms reads \"ex Descendit patribus Romanorum\"). The town became independent from the Byzantine Empire in 839, and proclaimed itself Maritime Republic (the first of the four most important ones with Pisa, Genoa and Venice). The core of its wealth was produced form the trade with the East. Amalfi reached its maximum splendor in the XI century with its powerful and agile fleet, with berths in the main ports of the Mediterranean. The Arsenal of masonry, used for the construction of the hulls of the galleys, are today two stone brick halls, divided by ten pillars. The sea front and the ancient port of Amalfi were swallowed by the sea, after an underwater landslide, caused by a powerful current of Libeccio in the night between 24 and 25 November 1343.<br />The local traditions narrate that the mariners of Amalfi were the first to use the compass during their voyages, identifying the name of the inventor Flavio Gioia.<br />The present town, which lies on the higher grounds in the valley, features a series of white houses, most with barrel vault ceilings and built on terraces within a picturesque web of alleys and stairways.</p>\r\n<p>The main monument and symbol of the city is the Cathedral of St. Andrew, preceded by an imposing staircase. The original structure is in Romanesque style, currently covered with sumptuous Baroque decorations. The polychrome fa&ccedil;ade, preceded by an elegant portico, is dominated by the mosaic tympanum, Christ\'s triumph, artwork of Domenico Morelli, whose proofs are still preserved in the hall, entitled to him, in the Town Hall. Inside the Cathedral preserves a wide selection of masterpieces: an elegant coffered ceiling with paintings of the XVIII century, a wooden crucifix of the XIII century, a mother of pearl cross from Jerusalem, the baptismal font (a basin of porphyry stone from an ancient Roman villa), two pillars of Egyptian granite from nearby Paestum that support the main arch, spiral columns and an Ambon of the XII century. In the crypt are preserved the relics of St. Andrew, from which, since 1304, exudes a dew, called \"manna\", which is collected in a glass bowl that for the locals has miraculous effects.</p>\r\n<p>The Campanile (bell tower), edified since 1180, is composed of bifore and trifore windows, green and yellow majolica roof tiles, all with Arabesque influenced features. Dating to the IX century, the adjoining Basilica of the Crucifix, built over an existing early Christian church, at present remain only some of the columns and their capitals. Entitled to Our Lady of the Assumption and the Saints Cosma and Damiano, it is the seat of the Diocesan Museum of Sacred Arts, a permanent exhibition of the treasures of the Cathedral.</p>\r\n<p>The Cloister of Paradise (XIII century) is an elegant cloister in Moorish narrow crossed arches. Initially used as a burial place of the notables of Amalfi, today it preserves some Roman sarcophagi, a XIV century sarcophagus and the remains of the old fa&ccedil;ade of the Cathedral.<br />In the Civic Museum in the Town Hall are preserved the famous \"Tavole Amalfitane\" (Tabula Civitatis Malphae), the first legal text of navigation rules which had a great influence up till the XVII century. These rules are the main structure of the naval mercantile Foscarini Code, traced in Vienna and returned to Amalfi in 1929.<br />Going up to the Valle dei Mulini, worth a visit is the Paper Museum, located in the ruins of an old medieval mill of the XIII century, witnessing the old production techniques of the Amalfi paper-making traditions and the functionality of the old mills operated by the power of the stream Canneto.</p>', '<p>Fondata dai Romani nel IV sec d.C. (nello stemma della citt&agrave; si legge \"Descendit ex patribus Romanorum\") e resasi autonoma dall\'Impero bizantino nell\'839, Amalfi, la prima delle quattro Repubbliche Marinare, fece dei traffici commerciali con l\'Oriente il perno della sua ricchezza. Raggiunse il massimo del suo splendore nell\'XI secolo: era dotata di una potente ed agile flotta, con attracchi nei principali porti del Mediterraneo. Dell\'arsenale in muratura, utilizzato per la costruzione degli scafi delle galee di combattimento, restano oggi solo due corsie divise da dieci pilastri; la parte antistante, nonch&eacute; l\'antico porto di Amalfi, &egrave; stato risucchiato dal mare in seguito ad una frana sottomarina, provocata da una possente corrente di Libeccio nella notte fra il 24 e il 25 novembre del 1343.<br />La tradizione tramanda che gli amalfitani furono i primi ad utilizzare la bussola durante le loro navigazioni, identificando l\'inventore col nome di Flavio Gioia.</p>\r\n<p>L\'odierno centro abitato, che sorge in parte su un pend&igrave;o, &egrave; caratterizzato da case bianche con volta a botte costruite su terrazzamenti ed una pittoresca trama di vicoli e scale.<br />Il monumento principale, nonch&eacute; simbolo della citt&agrave;, &egrave; il Duomo di Sant\'Andrea, preceduto da una scenografica scalinata. L\'impianto originario della struttura &egrave; romanico, attualmente rivestito da una sontuosa veste barocca. La policroma facciata, preceduta da un elegante portico, &egrave; dominata dal mosaico del timpano, il Trionfo di Cristo, opera di Domenico Morelli i cui cartoni originali sono tutt\'ora conservati presso l\'omonima sala della sede municipale. All\'interno &egrave; un tripudio di opere d\'arte: un elegante soffitto a cassettoni, tele del XVIII secolo, un crocifisso ligneo del XIII secolo, una croce di madreperla proveniente da Gerusalemme, la fonte battesimale (una vasca di porfido proveniente da un\'antica villa romana), due antiche colonne di granito egizio provenienti dalla vicina Paestum che sorreggono l\'arco trionfale, colonnine tortili e amboni del XII secolo. Nella cripta sono conservate le reliquie di Sant\'Andrea da cui, sin dal 1304 trasuda una rugiada, la manna, raccolta in un\'ampolla e dagli effetti taumaturgici.<br />Il Campanile, esistente sin dal 1180, &egrave; composto da bifore e trifore con coronamento arabeggiante e copertura ad embrici maiolicati verdi e gialli.</p>\r\n<p>Risale, invece, al IX secolo la Basilica del Crocifisso, sorta su un preesistente impianto paleocristiano di cui oggi restano alcune colonne e capitelli. Dedicata alla Madonna Assunta ed ai Santi Cosma e Damiano, oggi ospita il Museo Diocesano di Arte Sacra che raccoglie i Tesori del Duomo.<br />Il Chiostro del Paradiso (XIII secolo) &egrave; un elegante claustro in stile arabeggiante a stretti archi acuti ed incrociati. Inizialmente adoperato come luogo di sepoltura di notabili amalfitani, oggi conserva alcuni sarcofagi romani, un sarcofago trecentesco, resti dell\'antica facciata del Duomo.</p>\r\n<p>Presso il Museo Civico sono conservate le famose Tavole Amalfitane (Tabula Civitatis Malphae), il primo testo di diritto della navigazione che ebbe una grande influenza fino al XVII secolo. Parte integrante del Codice Foscariniano, furono ritrovate a Vienna e riportate ad Amalfi nel 1929.<br />Salendo verso la Valle dei Mulini &egrave; possibile visitare il Museo della Carta, situato in un\'antica cartiera medievale del XIII secolo, assistendo alle tecniche di realizzazione della rinomata carta di Amalfi e vedere in azione i vecchi mulini azionati dalla potenza del torrente Canneto.</p>', 'https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-01.jpg,https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-02.jpg,https://menudigitale.easycomande.it/storage/photos/1/Towns/Amalfi/amalfi-03.jpg', '2020-06-15 10:47:25', '2020-06-15 10:47:25'),
(2, 'scala', 'Scala', 'https://www.amalficoast.it/images/dbpimg/paesi/scala-14.jpg', '40.653930', '14.607532', 'comunediscala', 'nd', '+39089857115', 'http://www.comune.scala.sa.it/', '<p>Comune di Scala</p>\r\n<p>Un\'altura posta a circa 400 metri sul mare &egrave; il roccioso sito su cui fu edificata, con chiaro intento strategico, la cittadina di Scala. Secondo un\'antica cronaca essa sarebbe stata fondata nel IV secolo da naufraghi romani diretti verso Costantinopoli. La notizia non &egrave; tuttavia storicamente dimostrata.</p>', '<p>Comune di Scala</p>\r\n<p>Un\'altura posta a circa 400 metri sul mare &egrave; il roccioso sito su cui fu edificata, con chiaro intento strategico, la cittadina di Scala. Secondo un\'antica cronaca essa sarebbe stata fondata nel IV secolo da naufraghi romani diretti verso Costantinopoli. La notizia non &egrave; tuttavia storicamente dimostrata.</p>', '<p>Comune di Scala</p>\r\n<p>Un\'altura posta a circa 400 metri sul mare &egrave; il roccioso sito su cui fu edificata, con chiaro intento strategico, la cittadina di Scala. Secondo un\'antica cronaca essa sarebbe stata fondata nel IV secolo da naufraghi romani diretti verso Costantinopoli. La notizia non &egrave; tuttavia storicamente dimostrata.</p>', '<p>Comune di Scala</p>\r\n<p>Un\'altura posta a circa 400 metri sul mare &egrave; il roccioso sito su cui fu edificata, con chiaro intento strategico, la cittadina di Scala. Secondo un\'antica cronaca essa sarebbe stata fondata nel IV secolo da naufraghi romani diretti verso Costantinopoli. La notizia non &egrave; tuttavia storicamente dimostrata.</p>', 'https://menudigitale.easycomande.it/storage/app/public/photos/5/scala-14.jpg', '2020-06-24 14:13:26', '2020-06-24 14:13:26'),
(3, 'ravello', 'Ravello', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/towns/ravello/ravello-00.jpg', '40.649257', '14.611433', 'comuneravello', '868777', '+39089857112', 'http://www.comune.ravello.sa.it/', '<p><strong>Ravello</strong> is a true pearl of the Amalfi Coast. It exudes a tantalising sense of beauty, idle luxury and the past. Perched above the Coast, the town bristles with sumptuous churches, places and villas.</p>', '<p><strong>Ravello</strong>&nbsp;&egrave; una vera perla della Costa d&rsquo;Amalfi. Trasuda un provocante senso di bellezza, lusso e storia. Arroccata sulla Costa, la citt&agrave; &egrave; colma di chiese e ville sontuose.</p>', '<p><strong>Ravello</strong>&nbsp;is a true pearl of the Amalfi Coast. It exudes a tantalising sense of beauty, idle luxury and the past. Perched above the Coast, the town bristles with sumptuous churches, places and villas.<br /><br />Is is a long-time favourite haunt for composers, writers and Hollywood stars. It is today known for its ravishing gardens and stupendous views, the best in the world according to former resident Gore Vidal, and certainly the best on the coast.</p>', '<p><strong>Ravello</strong>&nbsp;&egrave; una vera perla della Costa d&rsquo;Amalfi. Trasuda un provocante senso di bellezza, lusso e storia. Arroccata sulla Costa, la citt&agrave; &egrave; colma di chiese e ville sontuose.</p>\r\n<p>&Egrave; stata da sempre una delle mete preferite da compositori, scrittori e star Hollywoodiane. Oggi &egrave; nota per i suoi stupendi giardini e le sue magnifiche viste, considerate le migliori del mondo da uno degli ultimi ospiti, Gore Vidal, e di sicuro le migliori della costa.</p>', 'https://menudigitale.easycomande.it/storage/app/public/photos/1/towns/ravello/ravello-01.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/towns/ravello/ravello-02.jpg,https://menudigitale.easycomande.it/storage/app/public/photos/1/towns/ravello/ravello-03.jpg', '2020-06-29 11:25:01', '2020-06-29 11:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'filippo@localidautore.it', NULL, '$2y$10$rs2a5nxO9d5yCXKOvuHdO.DlJm5oM0g9vIrwOf9R5LBQnBmPSMdje', 'ZjsL1DPtlxJN02N9bUiyAlASIiD2IfIkzXcaLwDq8nyaF4gs2lb3OOgUEzei', '2020-05-27 12:57:38', '2020-06-23 12:20:55'),
(2, 'Filippo Di Costanzo', 'filippodicostanzo@me.com', NULL, '$2y$10$eafPU6BTkUazho53yWWkrueOHwK2UWpDdP7yUmwASPI4QdmOuK0JW', NULL, '2020-05-27 13:50:31', '2020-05-27 13:50:31'),
(3, 'Masaniello Art Cafe', 'info@masanielloartcafe.it', NULL, '$2y$10$FGfnvLxaa0XO00lV/.uuQe5OnywRU9Mrk4yl9srSmq2QO05Z6ZkDi', NULL, '2020-06-16 10:25:20', '2020-06-16 10:25:20'),
(4, 'Borgo San Pietro', 'info@riannarooms.com', NULL, '$2y$10$iP9xOPhU9NVe403/neZ4vOl0aCT3/Ir6pEKZwN0LfwmZ5iDdwEQzS', NULL, '2020-06-16 12:50:24', '2020-06-24 19:02:36'),
(5, 'Alessandro Falcone', 'alefalwebmaster@gmail.com', NULL, '$2y$10$ziop99p4anEJIqaXS4DOyezNqr9.fqRJViROJpPc12ErTlUT6Szwm', 'pSassWdpjTdEpcZ0owN7JMZp8WnVKToxGF07SSNUi3YCA25TQ2ob5AuuR21v', '2020-06-24 11:10:53', '2020-06-24 11:10:53'),
(6, 'Al San Domingo', 'alsandomingo@gmail.com', NULL, '$2y$10$w2swDfvClesoT1DDCNgLfOEwLFsnVQzSFWc4cCfHFqRyMvWOdqZ8K', 'K7anOoZCLjVVO5MfClyngZUADis82oEZte4r7nma5tCNZtRcm2sSpZrgL3Vn', '2020-06-29 12:18:44', '2020-06-29 12:18:44'),
(7, 'Trattoria Da Lorenzo', 'info@trattoriadalorenzo.com', NULL, '$2y$10$6KISaQxlY4NbyuByzRZcP.Jr7rfXongfBEaUAxAXVLkQZsyQXlgxu', 'qJ4dNolPQlzYLnNRSnyEIieAqRlUkVJNqleNxra6bfMrLAitHJWxsna1Hnew', '2020-07-07 06:48:40', '2020-07-07 06:48:40'),
(8, 'Cinema Iris', 'info@cinemairis.it', NULL, '$2y$10$lE1uO2NoA6uhQNJ/GVFjI.c32CkvpHmOCkfU7nHNXH/RnBgVPl86a', NULL, '2020-07-08 10:07:07', '2020-07-08 10:08:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergens`
--
ALTER TABLE `allergens`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `dishes_structure_id_foreign` (`structure_id`),
  ADD KEY `dishes_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_structure_id_foreign` (`structure_id`),
  ADD KEY `items_user_id_foreign` (`user_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `item_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `menus_structure_id_foreign` (`structure_id`),
  ADD KEY `menus_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `structures_town_id_foreign` (`town_id`),
  ADD KEY `structures_category_id_foreign` (`category_id`);

--
-- Indexes for table `structure_categories`
--
ALTER TABLE `structure_categories`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `structure_users`
--
ALTER TABLE `structure_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structure_users_structure_id_foreign` (`structure_id`),
  ADD KEY `structure_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allergens`
--
ALTER TABLE `allergens`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `structure_categories`
--
ALTER TABLE `structure_categories`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `structure_users`
--
ALTER TABLE `structure_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id_code` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `item_categories` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD CONSTRAINT `item_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `structures`
--
ALTER TABLE `structures`
  ADD CONSTRAINT `structures_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `structure_categories` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `structures_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `structure_users`
--
ALTER TABLE `structure_users`
  ADD CONSTRAINT `structure_users_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `structure_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
