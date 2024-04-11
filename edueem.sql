-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2024 at 11:51 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edueem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, '2024-03-24 23:07:56'),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, '2024-03-24 23:07:56'),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2024-03-24 23:07:56'),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-03-24 23:07:56'),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-03-24 23:07:56'),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2024-03-24 23:07:56'),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2024-03-24 23:07:56'),
(8, 0, 8, 'Helpers', 'icon-cogs', '', NULL, '2024-03-22 23:44:19', '2024-03-24 23:07:56'),
(9, 8, 9, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-03-22 23:44:19', '2024-03-24 23:07:56'),
(10, 8, 10, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-03-22 23:44:19', '2024-03-24 23:07:56'),
(11, 8, 11, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-03-22 23:44:19', '2024-03-24 23:07:56'),
(12, 8, 12, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-03-22 23:44:19', '2024-03-24 23:07:56'),
(13, 14, 21, 'Courses', 'icon-file', 'courses', NULL, '2024-03-23 05:11:32', '2024-03-27 02:27:47'),
(14, 0, 19, 'Stuff Management', 'icon-atlas', NULL, '*', '2024-03-23 05:18:03', '2024-03-27 02:27:47'),
(15, 14, 20, 'Course Categories', 'icon-file', 'coursecategory', NULL, '2024-03-23 05:28:50', '2024-03-27 02:27:47'),
(16, 14, 22, 'Studymaterials', 'icon-file', 'studymaterials', NULL, '2024-03-23 19:25:34', '2024-03-27 02:27:47'),
(20, 21, 14, 'Orders', 'icon-file', 'orders', '*', '2024-03-24 23:02:45', '2024-03-27 02:27:47'),
(21, 0, 13, 'Sales/Order', 'icon-comments-dollar', NULL, '*', '2024-03-24 23:06:13', '2024-03-27 02:27:47'),
(22, 0, 15, 'CMS/Static Block', 'icon-border-all', NULL, NULL, '2024-03-24 23:13:29', '2024-03-27 02:27:47'),
(32, 22, 18, 'Contents', 'icon-file', 'contents', '*', '2024-03-25 19:58:52', '2024-03-27 02:27:47'),
(30, 22, 16, 'Category', 'icon-compass', 'category', '*', '2024-03-24 23:54:09', '2024-03-27 02:27:47'),
(31, 22, 17, 'Subcategories', 'icon-file', 'subcategories', NULL, '2024-03-24 23:55:43', '2024-03-27 02:27:47'),
(33, 0, 23, 'Online Examination', 'icon-language', NULL, NULL, '2024-03-27 02:27:16', '2024-03-27 02:27:47'),
(34, 33, 24, 'Exams', 'icon-file', 'exam', NULL, '2024-03-28 05:36:38', '2024-03-28 06:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu--`
--

CREATE TABLE `admin_menu--` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_menu--`
--

INSERT INTO `admin_menu--` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-03-26 05:33:36', '2024-03-26 05:33:36'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-03-26 05:33:36', '2024-03-26 05:33:36'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-03-26 05:33:36', '2024-03-26 05:33:36'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-03-26 05:33:36', '2024-03-26 05:33:36'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-03-26 05:33:36', '2024-03-26 05:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 05:32:56', '2024-03-26 05:32:56'),
(2, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 05:33:54', '2024-03-26 05:33:54'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 05:33:56', '2024-03-26 05:33:56'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:01', '2024-03-26 05:35:01'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:09', '2024-03-26 05:35:09'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:14', '2024-03-26 05:35:14'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:45', '2024-03-26 05:35:45'),
(8, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:50', '2024-03-26 05:35:50'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:52', '2024-03-26 05:35:52'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 05:35:59', '2024-03-26 05:35:59'),
(11, 1, 'admin/category/contentbycat', 'GET', '127.0.0.1', '[]', '2024-03-26 05:36:01', '2024-03-26 05:36:01'),
(12, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 05:36:04', '2024-03-26 05:36:04'),
(13, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 05:36:22', '2024-03-26 05:36:22'),
(14, 1, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-26 05:37:01', '2024-03-26 05:37:01'),
(15, 1, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-26 05:38:14', '2024-03-26 05:38:14'),
(16, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 06:14:18', '2024-03-26 06:14:18'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 06:14:26', '2024-03-26 06:14:26'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 06:17:36', '2024-03-26 06:17:36'),
(19, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-26 06:17:39', '2024-03-26 06:17:39'),
(20, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 06:17:41', '2024-03-26 06:17:41'),
(21, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 06:17:42', '2024-03-26 06:17:42'),
(22, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 06:18:17', '2024-03-26 06:18:17'),
(23, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 06:18:19', '2024-03-26 06:18:19'),
(24, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 06:18:22', '2024-03-26 06:18:22'),
(25, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:18:23', '2024-03-26 06:18:23'),
(26, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 06:18:30', '2024-03-26 06:18:30'),
(27, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 06:23:52', '2024-03-26 06:23:52'),
(28, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 06:23:54', '2024-03-26 06:23:54'),
(29, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-26 06:23:58', '2024-03-26 06:23:58'),
(30, 1, 'admin/coursecategory/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:00', '2024-03-26 06:24:00'),
(31, 1, 'admin/coursecategory', 'POST', '127.0.0.1', '{\"category_name\":\"Mains\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 06:24:06', '2024-03-26 06:24:06'),
(32, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:06', '2024-03-26 06:24:06'),
(33, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:09', '2024-03-26 06:24:09'),
(34, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:10', '2024-03-26 06:24:10'),
(35, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"course_name\":\"Hindi\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 06:24:15', '2024-03-26 06:24:15'),
(36, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:15', '2024-03-26 06:24:15'),
(37, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:15', '2024-03-26 06:24:15'),
(38, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:17', '2024-03-26 06:24:17'),
(39, 1, 'admin/courses/coursebycat', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:34', '2024-03-26 06:24:34'),
(40, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:24:36', '2024-03-26 06:24:36'),
(41, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:26:51', '2024-03-26 06:26:51'),
(42, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:28:00', '2024-03-26 06:28:00'),
(43, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:28:01', '2024-03-26 06:28:01'),
(44, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:31:42', '2024-03-26 06:31:42'),
(45, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:31:56', '2024-03-26 06:31:56'),
(46, 1, 'admin/courses/coursebycat', 'GET', '127.0.0.1', '[]', '2024-03-26 06:41:55', '2024-03-26 06:41:55'),
(47, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 06:42:02', '2024-03-26 06:42:02'),
(48, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 06:42:34', '2024-03-26 06:42:34'),
(49, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:42:36', '2024-03-26 06:42:36'),
(50, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:42:51', '2024-03-26 06:42:51'),
(51, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:43:28', '2024-03-26 06:43:28'),
(52, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:44:55', '2024-03-26 06:44:55'),
(53, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:44:56', '2024-03-26 06:44:56'),
(54, 1, 'admin/courses/coursebycat', 'GET', '127.0.0.1', '[]', '2024-03-26 06:45:07', '2024-03-26 06:45:07'),
(55, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:46:46', '2024-03-26 06:46:46'),
(56, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:47:30', '2024-03-26 06:47:30'),
(57, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:47:35', '2024-03-26 06:47:35'),
(58, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:47:44', '2024-03-26 06:47:44'),
(59, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:50:38', '2024-03-26 06:50:38'),
(60, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 06:50:39', '2024-03-26 06:50:39'),
(61, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 06:50:41', '2024-03-26 06:50:41'),
(62, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 06:51:15', '2024-03-26 06:51:15'),
(63, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 07:36:58', '2024-03-26 07:36:58'),
(64, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 07:36:59', '2024-03-26 07:36:59'),
(65, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:05', '2024-03-26 07:37:05'),
(66, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:05', '2024-03-26 07:37:05'),
(67, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:08', '2024-03-26 07:37:08'),
(68, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:09', '2024-03-26 07:37:09'),
(69, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:38', '2024-03-26 07:37:38'),
(70, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:42', '2024-03-26 07:37:42'),
(71, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:47', '2024-03-26 07:37:47'),
(72, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:48', '2024-03-26 07:37:48'),
(73, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:49', '2024-03-26 07:37:49'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 07:37:51', '2024-03-26 07:37:51'),
(75, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-26 07:39:16', '2024-03-26 07:39:16'),
(76, 1, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-26 07:39:21', '2024-03-26 07:39:21'),
(77, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 08:43:15', '2024-03-26 08:43:15'),
(78, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:43:17', '2024-03-26 08:43:17'),
(79, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 08:43:30', '2024-03-26 08:43:30'),
(80, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:43:32', '2024-03-26 08:43:32'),
(81, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 08:44:07', '2024-03-26 08:44:07'),
(82, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:44:08', '2024-03-26 08:44:08'),
(83, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:48:12', '2024-03-26 08:48:12'),
(84, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:48:57', '2024-03-26 08:48:57'),
(85, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:01', '2024-03-26 08:49:01'),
(86, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:02', '2024-03-26 08:49:02'),
(87, 1, 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"Prelims\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 08:49:14', '2024-03-26 08:49:14'),
(88, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:14', '2024-03-26 08:49:14'),
(89, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:15', '2024-03-26 08:49:15'),
(90, 1, 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"Mains\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 08:49:18', '2024-03-26 08:49:18'),
(91, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:18', '2024-03-26 08:49:18'),
(92, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:19', '2024-03-26 08:49:19'),
(93, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:20', '2024-03-26 08:49:20'),
(94, 1, 'admin/subcategories', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"name\":\"Math\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 08:49:27', '2024-03-26 08:49:27'),
(95, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:49:27', '2024-03-26 08:49:27'),
(96, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:53:39', '2024-03-26 08:53:39'),
(97, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 08:54:56', '2024-03-26 08:54:56'),
(98, 1, 'admin/subcategories', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"Math\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 08:55:03', '2024-03-26 08:55:03'),
(99, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 08:55:04', '2024-03-26 08:55:04'),
(100, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 08:56:53', '2024-03-26 08:56:53'),
(101, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 08:57:05', '2024-03-26 08:57:05'),
(102, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 08:58:50', '2024-03-26 08:58:50'),
(103, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 08:58:55', '2024-03-26 08:58:55'),
(104, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 09:01:06', '2024-03-26 09:01:06'),
(105, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:01:37', '2024-03-26 09:01:37'),
(106, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:01:52', '2024-03-26 09:01:52'),
(107, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:02:23', '2024-03-26 09:02:23'),
(108, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:02:27', '2024-03-26 09:02:27'),
(109, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:04:34', '2024-03-26 09:04:34'),
(110, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 09:04:38', '2024-03-26 09:04:38'),
(111, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 09:04:40', '2024-03-26 09:04:40'),
(112, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 09:04:43', '2024-03-26 09:04:43'),
(113, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:04:44', '2024-03-26 09:04:44'),
(114, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:04:46', '2024-03-26 09:04:46'),
(115, 1, 'admin/studymaterials', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"subject\":\"1\",\"title\":\"Test\",\"fees\":\"100\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:04:57', '2024-03-26 09:04:57'),
(116, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:04:58', '2024-03-26 09:04:58'),
(117, 1, 'admin/subcategories', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"name\":\"Math\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:05:58', '2024-03-26 09:05:58'),
(118, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:05:59', '2024-03-26 09:05:59'),
(119, 1, 'admin/subcategories/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 09:06:03', '2024-03-26 09:06:03'),
(120, 1, 'admin/subcategories/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:06:08', '2024-03-26 09:06:08'),
(121, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:06:08', '2024-03-26 09:06:08'),
(122, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 09:06:16', '2024-03-26 09:06:16'),
(123, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:06:18', '2024-03-26 09:06:18'),
(124, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:06:19', '2024-03-26 09:06:19'),
(125, 1, 'admin/studymaterials', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"subject\":\"1\",\"title\":\"test\",\"fees\":\"100\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:06:34', '2024-03-26 09:06:34'),
(126, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 09:06:34', '2024-03-26 09:06:34'),
(127, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 09:07:00', '2024-03-26 09:07:00'),
(128, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 09:07:06', '2024-03-26 09:07:06'),
(129, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:07:16', '2024-03-26 09:07:16'),
(130, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:09:51', '2024-03-26 09:09:51'),
(131, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:10:09', '2024-03-26 09:10:09'),
(132, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:10:42', '2024-03-26 09:10:42'),
(133, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 09:12:32', '2024-03-26 09:12:32'),
(134, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:12:33', '2024-03-26 09:12:33'),
(135, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:41:52', '2024-03-26 09:41:52'),
(136, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:41:57', '2024-03-26 09:41:57'),
(137, 1, 'admin/subcategories', 'GET', '127.0.0.1', '{\"_columns_\":\"categorylist.name,created_at,deleted_at,name,updated_at\"}', '2024-03-26 09:42:10', '2024-03-26 09:42:10'),
(138, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 09:42:14', '2024-03-26 09:42:14'),
(139, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 09:42:15', '2024-03-26 09:42:15'),
(140, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 09:42:16', '2024-03-26 09:42:16'),
(141, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:42:17', '2024-03-26 09:42:17'),
(142, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:42:47', '2024-03-26 09:42:47'),
(143, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:47:49', '2024-03-26 09:47:49'),
(144, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:48:03', '2024-03-26 09:48:03'),
(145, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:48:04', '2024-03-26 09:48:04'),
(146, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:48:22', '2024-03-26 09:48:22'),
(147, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:48:24', '2024-03-26 09:48:24'),
(148, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:48:58', '2024-03-26 09:48:58'),
(149, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:49:07', '2024-03-26 09:49:07'),
(150, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:49:58', '2024-03-26 09:49:58'),
(151, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:50:01', '2024-03-26 09:50:01'),
(152, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:50:03', '2024-03-26 09:50:03'),
(153, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:51:26', '2024-03-26 09:51:26'),
(154, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:51:35', '2024-03-26 09:51:35'),
(155, 1, 'admin/subcategories/subcatbycat', 'GET', '127.0.0.1', '[]', '2024-03-26 09:52:52', '2024-03-26 09:52:52'),
(156, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:53:03', '2024-03-26 09:53:03'),
(157, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:53:09', '2024-03-26 09:53:09'),
(158, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:53:27', '2024-03-26 09:53:27'),
(159, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:53:30', '2024-03-26 09:53:30'),
(160, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 09:55:27', '2024-03-26 09:55:27'),
(161, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 09:55:29', '2024-03-26 09:55:29'),
(162, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 10:00:27', '2024-03-26 10:00:27'),
(163, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 10:00:46', '2024-03-26 10:00:46'),
(164, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 10:00:52', '2024-03-26 10:00:52'),
(165, 1, 'admin/contents', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategories\":\"1\",\"content\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<h2>Where can I get some?<\\/h2>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td rowspan=\\\"2\\\">&nbsp;<\\/td>\\r\\n\\t\\t\\t<td rowspan=\\\"2\\\">\\r\\n\\t\\t\\t<table>\\r\\n\\t\\t\\t\\t<tbody>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>paragraphs<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>words<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>bytes<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>lists<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t<\\/tbody>\\r\\n\\t\\t\\t<\\/table>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>Start with &#39;Lorem<br \\/>\\r\\n\\t\\t\\tipsum dolor sit amet...&#39;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 10:01:13', '2024-03-26 10:01:13'),
(166, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 10:01:13', '2024-03-26 10:01:13'),
(167, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:08', '2024-03-26 10:02:08'),
(168, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 10:02:16', '2024-03-26 10:02:16'),
(169, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:20', '2024-03-26 10:02:20'),
(170, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 10:02:22', '2024-03-26 10:02:22'),
(171, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 10:02:25', '2024-03-26 10:02:25'),
(172, 1, 'admin/contents', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"content\":\"<h2>What is Lorem Ipsum?<\\/h2>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h2>Why do we use it?<\\/h2>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2>Where does it come from?<\\/h2>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<h2>Where can I get some?<\\/h2>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\\r\\n\\r\\n<table>\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td rowspan=\\\"2\\\">&nbsp;<\\/td>\\r\\n\\t\\t\\t<td rowspan=\\\"2\\\">\\r\\n\\t\\t\\t<table>\\r\\n\\t\\t\\t\\t<tbody>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>paragraphs<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>words<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>bytes<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t\\t<tr>\\r\\n\\t\\t\\t\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t\\t\\t\\t<td>lists<\\/td>\\r\\n\\t\\t\\t\\t\\t<\\/tr>\\r\\n\\t\\t\\t\\t<\\/tbody>\\r\\n\\t\\t\\t<\\/table>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>Start with &#39;Lorem<br \\/>\\r\\n\\t\\t\\tipsum dolor sit amet...&#39;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"_token\":\"iCbAOzEZLAFwhCvU5Zra4ZVPzaeJeFLBrQPM9uAx\"}', '2024-03-26 10:02:34', '2024-03-26 10:02:34'),
(173, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:34', '2024-03-26 10:02:34'),
(174, 1, 'admin/contents/1', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:42', '2024-03-26 10:02:42'),
(175, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:48', '2024-03-26 10:02:48'),
(176, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:48', '2024-03-26 10:02:48'),
(177, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:51', '2024-03-26 10:02:51'),
(178, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:52', '2024-03-26 10:02:52'),
(179, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:53', '2024-03-26 10:02:53'),
(180, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-26 10:02:53', '2024-03-26 10:02:53'),
(181, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 23:38:03', '2024-03-26 23:38:03'),
(182, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 23:38:09', '2024-03-26 23:38:09'),
(183, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-26 23:38:11', '2024-03-26 23:38:11'),
(184, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"6EvJgjYqS7oC8rnVWQhrPpZLKTsE6h3t7xSt7tSG\"}', '2024-03-26 23:38:13', '2024-03-26 23:38:13'),
(185, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 23:38:24', '2024-03-26 23:38:24'),
(186, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-26 23:38:25', '2024-03-26 23:38:25'),
(187, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"6EvJgjYqS7oC8rnVWQhrPpZLKTsE6h3t7xSt7tSG\"}', '2024-03-26 23:38:27', '2024-03-26 23:38:27'),
(188, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:38:57', '2024-03-26 23:38:57'),
(189, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2024-03-26 23:39:15', '2024-03-26 23:39:15'),
(190, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"neeraj\",\"name\":\"Neerah\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"admin123\",\"search_terms\":null,\"roles\":[null],\"permissions\":[\"4\",\"2\",null],\"_token\":\"6EvJgjYqS7oC8rnVWQhrPpZLKTsE6h3t7xSt7tSG\"}', '2024-03-26 23:39:43', '2024-03-26 23:39:43'),
(191, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:39:44', '2024-03-26 23:39:44'),
(192, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-26 23:39:46', '2024-03-26 23:39:46'),
(193, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2024-03-26 23:39:47', '2024-03-26 23:39:47'),
(194, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"Student\",\"permissions\":[\"2\",\"4\",null],\"_token\":\"6EvJgjYqS7oC8rnVWQhrPpZLKTsE6h3t7xSt7tSG\"}', '2024-03-26 23:40:21', '2024-03-26 23:40:21'),
(195, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:21', '2024-03-26 23:40:21'),
(196, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:23', '2024-03-26 23:40:23'),
(197, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:29', '2024-03-26 23:40:29'),
(198, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:37', '2024-03-26 23:40:37'),
(199, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:39', '2024-03-26 23:40:39'),
(200, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"neeraj\",\"name\":\"Neerah\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$K4aWe9BchPJaxzdpPAAWB.Zf.TJdlzScUMYFtW3hWRE51.08mExmS\",\"roles\":[\"2\",null],\"search_terms\":null,\"permissions\":[\"2\",\"4\",null],\"_token\":\"6EvJgjYqS7oC8rnVWQhrPpZLKTsE6h3t7xSt7tSG\",\"_method\":\"PUT\"}', '2024-03-26 23:40:45', '2024-03-26 23:40:45'),
(201, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:46', '2024-03-26 23:40:46'),
(202, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:50', '2024-03-26 23:40:50'),
(203, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 23:40:53', '2024-03-26 23:40:53'),
(204, 2, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 23:41:00', '2024-03-26 23:41:00'),
(205, 2, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 23:41:02', '2024-03-26 23:41:02'),
(206, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-26 23:41:05', '2024-03-26 23:41:05'),
(207, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 23:41:09', '2024-03-26 23:41:09'),
(208, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-26 23:41:56', '2024-03-26 23:41:56'),
(209, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-26 23:41:59', '2024-03-26 23:41:59'),
(210, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:00', '2024-03-26 23:42:00'),
(211, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:01', '2024-03-26 23:42:01'),
(212, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:03', '2024-03-26 23:42:03'),
(213, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:06', '2024-03-26 23:42:06'),
(214, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:07', '2024-03-26 23:42:07'),
(215, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:07', '2024-03-26 23:42:07'),
(216, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:08', '2024-03-26 23:42:08'),
(217, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:11', '2024-03-26 23:42:11'),
(218, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:14', '2024-03-26 23:42:14'),
(219, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:22', '2024-03-26 23:42:22'),
(220, 1, 'admin/auth/menu/31/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:29', '2024-03-26 23:42:29'),
(221, 1, 'admin/auth/menu/31', 'PUT', '127.0.0.1', '{\"parent_id\":\"22\",\"search_terms\":null,\"title\":\"Subcategories\",\"icon\":\"icon-file\",\"uri\":\"subcategories\",\"roles\":[null],\"permission\":null,\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\",\"_method\":\"PUT\"}', '2024-03-26 23:42:36', '2024-03-26 23:42:36'),
(222, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:36', '2024-03-26 23:42:36'),
(223, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:43', '2024-03-26 23:42:43'),
(224, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:52', '2024-03-26 23:42:52'),
(225, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:42:54', '2024-03-26 23:42:54'),
(226, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:10', '2024-03-26 23:43:10'),
(227, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:21', '2024-03-26 23:43:21'),
(228, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:29', '2024-03-26 23:43:29'),
(229, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:42', '2024-03-26 23:43:42'),
(230, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:44', '2024-03-26 23:43:44'),
(231, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:51', '2024-03-26 23:43:51'),
(232, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:53', '2024-03-26 23:43:53'),
(233, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-26 23:43:59', '2024-03-26 23:43:59'),
(234, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:44:01', '2024-03-26 23:44:01'),
(235, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:45:44', '2024-03-26 23:45:44'),
(236, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:45:45', '2024-03-26 23:45:45'),
(237, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-26 23:45:47', '2024-03-26 23:45:47'),
(238, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-26 23:45:48', '2024-03-26 23:45:48'),
(239, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:45:58', '2024-03-26 23:45:58'),
(240, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:14', '2024-03-26 23:46:14'),
(241, 1, 'admin/studymaterials/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:19', '2024-03-26 23:46:19'),
(242, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":null,\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-26 23:46:29', '2024-03-26 23:46:29'),
(243, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-26 23:46:30', '2024-03-26 23:46:30'),
(244, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:38', '2024-03-26 23:46:38'),
(245, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:43', '2024-03-26 23:46:43'),
(246, 1, 'admin/contents/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:44', '2024-03-26 23:46:44'),
(247, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:54', '2024-03-26 23:46:54'),
(248, 1, 'admin/contents/1', 'GET', '127.0.0.1', '[]', '2024-03-26 23:46:57', '2024-03-26 23:46:57'),
(249, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-26 23:47:04', '2024-03-26 23:47:04'),
(250, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:32', '2024-03-27 00:02:32'),
(251, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:36', '2024-03-27 00:02:36'),
(252, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:37', '2024-03-27 00:02:37'),
(253, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:38', '2024-03-27 00:02:38'),
(254, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:40', '2024-03-27 00:02:40'),
(255, 1, 'admin/subcategories/1', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:43', '2024-03-27 00:02:43'),
(256, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:48', '2024-03-27 00:02:48'),
(257, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:49', '2024-03-27 00:02:49'),
(258, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:50', '2024-03-27 00:02:50'),
(259, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:50', '2024-03-27 00:02:50'),
(260, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:54', '2024-03-27 00:02:54'),
(261, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:55', '2024-03-27 00:02:55'),
(262, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 00:02:55', '2024-03-27 00:02:55'),
(263, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-27 00:03:15', '2024-03-27 00:03:15'),
(264, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-27 00:43:32', '2024-03-27 00:43:32'),
(265, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-27 00:43:45', '2024-03-27 00:43:45'),
(266, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:00', '2024-03-27 00:44:00'),
(267, 1, 'admin/coursecategory/create', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:02', '2024-03-27 00:44:02'),
(268, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:06', '2024-03-27 00:44:06'),
(269, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-03-27 00:44:07', '2024-03-27 00:44:07'),
(270, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:21', '2024-03-27 00:44:21'),
(271, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:23', '2024-03-27 00:44:23'),
(272, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:31', '2024-03-27 00:44:31'),
(273, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-27 00:44:33', '2024-03-27 00:44:33'),
(274, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-27 00:44:35', '2024-03-27 00:44:35'),
(275, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-27 00:44:42', '2024-03-27 00:44:42'),
(276, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-27 00:44:46', '2024-03-27 00:44:46'),
(277, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-27 00:45:28', '2024-03-27 00:45:28'),
(278, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-27 00:45:32', '2024-03-27 00:45:32'),
(279, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-27 00:45:38', '2024-03-27 00:45:38'),
(280, 1, 'admin/studymaterials', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"subject\":\"1\",\"title\":\"asdsd\",\"fees\":\"40\",\"_token\":\"wQz3911EtQ6mZLB4uk5cfo1MCrU3E5IqXNQptiPp\"}', '2024-03-27 00:45:54', '2024-03-27 00:45:54'),
(281, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-27 00:45:54', '2024-03-27 00:45:54'),
(282, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-27 00:46:09', '2024-03-27 00:46:09'),
(283, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-27 00:46:14', '2024-03-27 00:46:14'),
(284, 2, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-27 00:46:22', '2024-03-27 00:46:22'),
(285, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-27 00:46:26', '2024-03-27 00:46:26'),
(286, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-27 00:56:12', '2024-03-27 00:56:12'),
(287, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-27 00:56:35', '2024-03-27 00:56:35'),
(288, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$Mv9lPzF2ATPoo7.fuf5jTOeE8APWx2E5doOKKSqjMSkl\\/uvv08TN6\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\",\"_method\":\"PUT\"}', '2024-03-27 00:57:02', '2024-03-27 00:57:02'),
(289, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-27 00:57:02', '2024-03-27 00:57:02'),
(290, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"avatar_file_del_\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/open-admin\\/open-admin\\/gfx\\/user.svg,\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$Mv9lPzF2ATPoo7.fuf5jTOeE8APWx2E5doOKKSqjMSkl\\/uvv08TN6\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\",\"_method\":\"PUT\"}', '2024-03-27 00:57:29', '2024-03-27 00:57:29'),
(291, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-27 00:57:29', '2024-03-27 00:57:29'),
(292, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-27 00:57:37', '2024-03-27 00:57:37'),
(293, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 00:57:59', '2024-03-27 00:57:59'),
(294, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-27 00:58:00', '2024-03-27 00:58:00'),
(295, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\"}', '2024-03-27 00:58:03', '2024-03-27 00:58:03'),
(296, 1, 'admin/contents', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"content\":\"<p>aerasfsdfdfsdsf<\\/p>\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\"}', '2024-03-27 00:58:11', '2024-03-27 00:58:11'),
(297, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 00:58:11', '2024-03-27 00:58:11'),
(298, 1, 'admin/contents/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\"}', '2024-03-27 00:58:16', '2024-03-27 00:58:16'),
(299, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 00:58:17', '2024-03-27 00:58:17'),
(300, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 01:12:54', '2024-03-27 01:12:54'),
(301, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-27 01:22:24', '2024-03-27 01:22:24'),
(302, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-27 01:22:27', '2024-03-27 01:22:27'),
(303, 1, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-27 01:22:28', '2024-03-27 01:22:28'),
(304, 1, 'admin/orders', 'POST', '127.0.0.1', '{\"item\":\"Test\",\"qty\":\"1\",\"price\":\"100\",\"item_id\":\"1\",\"user\":\"2\",\"total_price\":\"100\",\"payment_mode\":\"CC\",\"transection_id\":\"TESTTR12\",\"payment_status\":\"Success\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\"}', '2024-03-27 01:23:07', '2024-03-27 01:23:07'),
(305, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-27 01:23:07', '2024-03-27 01:23:07'),
(306, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2024-03-27 01:54:30', '2024-03-27 01:54:30'),
(307, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-27 02:23:29', '2024-03-27 02:23:29'),
(308, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 02:23:37', '2024-03-27 02:23:37'),
(309, 1, 'admin/contents/1', 'GET', '127.0.0.1', '[]', '2024-03-27 02:23:41', '2024-03-27 02:23:41'),
(310, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-27 02:23:46', '2024-03-27 02:23:46'),
(311, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-27 02:23:49', '2024-03-27 02:23:49'),
(312, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-27 02:25:01', '2024-03-27 02:25:01'),
(313, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-27 02:26:24', '2024-03-27 02:26:24'),
(314, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Online Examination\",\"icon\":\"icon-language\",\"uri\":null,\"roles\":[\"1\",\"2\",null],\"permission\":null,\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\"}', '2024-03-27 02:27:16', '2024-03-27 02:27:16'),
(315, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-27 02:27:16', '2024-03-27 02:27:16'),
(316, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"21\\\",\\\"children\\\":[{\\\"id\\\":\\\"20\\\"}]},{\\\"id\\\":\\\"22\\\",\\\"children\\\":[{\\\"id\\\":\\\"30\\\"},{\\\"id\\\":\\\"31\\\"},{\\\"id\\\":\\\"32\\\"}]},{\\\"id\\\":\\\"14\\\",\\\"children\\\":[{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"16\\\"}]},{\\\"id\\\":\\\"33\\\"}]\",\"_token\":\"x0vljgniJ19ldQul2qqDCy7KKMhnehLqQ4wUjIKS\"}', '2024-03-27 02:27:47', '2024-03-27 02:27:47'),
(317, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-27 02:27:47', '2024-03-27 02:27:47'),
(318, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-27 02:27:48', '2024-03-27 02:27:48'),
(319, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:33', '2024-03-28 05:33:33'),
(320, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:37', '2024-03-28 05:33:37'),
(321, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:41', '2024-03-28 05:33:41'),
(322, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:46', '2024-03-28 05:33:46'),
(323, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:48', '2024-03-28 05:33:48'),
(324, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:50', '2024-03-28 05:33:50'),
(325, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:51', '2024-03-28 05:33:51'),
(326, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:33:56', '2024-03-28 05:33:56'),
(327, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-28 05:34:11', '2024-03-28 05:34:11'),
(328, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"examination\",\"model_name\":\"App\\\\Models\\\\Exam\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ExamController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"course_category\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"course_id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"exam_name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"fees\",\"type\":\"float\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"KM2HOerpeiyAiLlupvhzFd5cwfv65Ltd9hYEErMU\"}', '2024-03-28 05:36:38', '2024-03-28 05:36:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(329, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-28 05:36:38', '2024-03-28 05:36:38'),
(330, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-28 05:37:03', '2024-03-28 05:37:03'),
(331, 1, 'admin/exams', 'GET', '127.0.0.1', '[]', '2024-03-28 05:37:07', '2024-03-28 05:37:07'),
(332, 1, 'admin/exams', 'GET', '127.0.0.1', '[]', '2024-03-28 05:37:09', '2024-03-28 05:37:09'),
(333, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 05:37:20', '2024-03-28 05:37:20'),
(334, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 05:37:44', '2024-03-28 05:37:44'),
(335, 1, 'admin/auth/menu/34/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 05:37:52', '2024-03-28 05:37:52'),
(336, 1, 'admin/auth/menu/34', 'PUT', '127.0.0.1', '{\"parent_id\":\"33\",\"search_terms\":null,\"title\":\"Exams\",\"icon\":\"icon-file\",\"uri\":\"exams\",\"roles\":[null],\"permission\":null,\"_token\":\"KM2HOerpeiyAiLlupvhzFd5cwfv65Ltd9hYEErMU\",\"_method\":\"PUT\"}', '2024-03-28 05:38:02', '2024-03-28 05:38:02'),
(337, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:02', '2024-03-28 05:38:02'),
(338, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:06', '2024-03-28 05:38:06'),
(339, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:16', '2024-03-28 05:38:16'),
(340, 1, 'admin/auth/menu/34/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:19', '2024-03-28 05:38:19'),
(341, 1, 'admin/auth/menu/34', 'PUT', '127.0.0.1', '{\"parent_id\":\"33\",\"search_terms\":null,\"title\":\"Exams\",\"icon\":\"icon-file\",\"uri\":\"exam\",\"roles\":[null],\"permission\":null,\"_token\":\"KM2HOerpeiyAiLlupvhzFd5cwfv65Ltd9hYEErMU\",\"_method\":\"PUT\"}', '2024-03-28 05:38:22', '2024-03-28 05:38:22'),
(342, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:23', '2024-03-28 05:38:23'),
(343, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:23', '2024-03-28 05:38:23'),
(344, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:26', '2024-03-28 05:38:26'),
(345, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:37', '2024-03-28 05:38:37'),
(346, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:39', '2024-03-28 05:38:39'),
(347, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:52', '2024-03-28 05:38:52'),
(348, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-28 05:38:54', '2024-03-28 05:38:54'),
(349, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"KM2HOerpeiyAiLlupvhzFd5cwfv65Ltd9hYEErMU\"}', '2024-03-28 05:38:56', '2024-03-28 05:38:56'),
(350, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-28 05:39:02', '2024-03-28 05:39:02'),
(351, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-28 05:40:15', '2024-03-28 05:40:15'),
(352, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 05:40:17', '2024-03-28 05:40:17'),
(353, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:41:01', '2024-03-28 05:41:01'),
(354, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:41:02', '2024-03-28 05:41:02'),
(355, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:41:03', '2024-03-28 05:41:03'),
(356, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:45:19', '2024-03-28 05:45:19'),
(357, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:46:58', '2024-03-28 05:46:58'),
(358, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:46:59', '2024-03-28 05:46:59'),
(359, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:47:00', '2024-03-28 05:47:00'),
(360, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:47:01', '2024-03-28 05:47:01'),
(361, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:47:01', '2024-03-28 05:47:01'),
(362, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:47:21', '2024-03-28 05:47:21'),
(363, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:52:38', '2024-03-28 05:52:38'),
(364, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:55:40', '2024-03-28 05:55:40'),
(365, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:55:56', '2024-03-28 05:55:56'),
(366, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:56:09', '2024-03-28 05:56:09'),
(367, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:57:23', '2024-03-28 05:57:23'),
(368, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:57:26', '2024-03-28 05:57:26'),
(369, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 05:57:32', '2024-03-28 05:57:32'),
(370, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:12:35', '2024-03-28 06:12:35'),
(371, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:18:57', '2024-03-28 06:18:57'),
(372, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:19:00', '2024-03-28 06:19:00'),
(373, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:19:05', '2024-03-28 06:19:05'),
(374, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:19:08', '2024-03-28 06:19:08'),
(375, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:19:09', '2024-03-28 06:19:09'),
(376, 2, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-28 06:19:15', '2024-03-28 06:19:15'),
(377, 2, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-28 06:20:47', '2024-03-28 06:20:47'),
(378, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:20:50', '2024-03-28 06:20:50'),
(379, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:20:56', '2024-03-28 06:20:56'),
(380, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:20:58', '2024-03-28 06:20:58'),
(381, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:21:09', '2024-03-28 06:21:09'),
(382, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:22:32', '2024-03-28 06:22:32'),
(383, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:22:34', '2024-03-28 06:22:34'),
(384, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:24:48', '2024-03-28 06:24:48'),
(385, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:24:50', '2024-03-28 06:24:50'),
(386, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:25:21', '2024-03-28 06:25:21'),
(387, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:25:22', '2024-03-28 06:25:22'),
(388, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-28 06:25:25', '2024-03-28 06:25:25'),
(389, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:25:27', '2024-03-28 06:25:27'),
(390, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:25:34', '2024-03-28 06:25:34'),
(391, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:26:09', '2024-03-28 06:26:09'),
(392, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:26:41', '2024-03-28 06:26:41'),
(393, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:26:44', '2024-03-28 06:26:44'),
(394, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:27:03', '2024-03-28 06:27:03'),
(395, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-03-28 06:27:07', '2024-03-28 06:27:07'),
(396, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 06:27:26', '2024-03-28 06:27:26'),
(397, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"orders\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"admin\\/orders\",\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\"}', '2024-03-28 06:28:14', '2024-03-28 06:28:14'),
(398, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:28:15', '2024-03-28 06:28:15'),
(399, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:28:19', '2024-03-28 06:28:19'),
(400, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"orders\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/orders\",\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\",\"_method\":\"PUT\"}', '2024-03-28 06:28:23', '2024-03-28 06:28:23'),
(401, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:28:23', '2024-03-28 06:28:23'),
(402, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:28:28', '2024-03-28 06:28:28'),
(403, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:29:27', '2024-03-28 06:29:27'),
(404, 1, 'admin/auth/permissions/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\"}', '2024-03-28 06:29:30', '2024-03-28 06:29:30'),
(405, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:29:31', '2024-03-28 06:29:31'),
(406, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:44:05', '2024-03-28 06:44:05'),
(407, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:44:07', '2024-03-28 06:44:07'),
(408, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:12', '2024-03-28 06:50:12'),
(409, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:14', '2024-03-28 06:50:14'),
(410, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"neeraj\",\"name\":\"Neerah\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$K4aWe9BchPJaxzdpPAAWB.Zf.TJdlzScUMYFtW3hWRE51.08mExmS\",\"roles\":[\"2\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\",\"_method\":\"PUT\"}', '2024-03-28 06:50:29', '2024-03-28 06:50:29'),
(411, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:29', '2024-03-28 06:50:29'),
(412, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:32', '2024-03-28 06:50:32'),
(413, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:35', '2024-03-28 06:50:35'),
(414, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"Student\",\"permissions\":[null],\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\",\"_method\":\"PUT\"}', '2024-03-28 06:50:44', '2024-03-28 06:50:44'),
(415, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:44', '2024-03-28 06:50:44'),
(416, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:48', '2024-03-28 06:50:48'),
(417, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:52', '2024-03-28 06:50:52'),
(418, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:50:58', '2024-03-28 06:50:58'),
(419, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"21\",\"search_terms\":null,\"title\":\"Orders\",\"icon\":\"icon-file\",\"uri\":\"orders\",\"roles\":[\"2\",\"1\",null],\"permission\":\"*\",\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\",\"_method\":\"PUT\"}', '2024-03-28 06:51:06', '2024-03-28 06:51:06'),
(420, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:06', '2024-03-28 06:51:06'),
(421, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"21\\\",\\\"children\\\":[{\\\"id\\\":\\\"20\\\"}]},{\\\"id\\\":\\\"22\\\",\\\"children\\\":[{\\\"id\\\":\\\"30\\\"},{\\\"id\\\":\\\"31\\\"},{\\\"id\\\":\\\"32\\\"}]},{\\\"id\\\":\\\"14\\\",\\\"children\\\":[{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"16\\\"}]},{\\\"id\\\":\\\"33\\\",\\\"children\\\":[{\\\"id\\\":\\\"34\\\"}]}]\",\"_token\":\"ARZBcFtDe1eG2WStXxXFVK5zv8qjpbcW99mL1j8y\"}', '2024-03-28 06:51:13', '2024-03-28 06:51:13'),
(422, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:13', '2024-03-28 06:51:13'),
(423, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:17', '2024-03-28 06:51:17'),
(424, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:20', '2024-03-28 06:51:20'),
(425, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:23', '2024-03-28 06:51:23'),
(426, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:31', '2024-03-28 06:51:31'),
(427, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:51:41', '2024-03-28 06:51:41'),
(428, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:52:04', '2024-03-28 06:52:04'),
(429, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:52:43', '2024-03-28 06:52:43'),
(430, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:52:50', '2024-03-28 06:52:50'),
(431, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:52:52', '2024-03-28 06:52:52'),
(432, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:52:55', '2024-03-28 06:52:55'),
(433, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:53:01', '2024-03-28 06:53:01'),
(434, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:54:30', '2024-03-28 06:54:30'),
(435, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:54:37', '2024-03-28 06:54:37'),
(436, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:54:50', '2024-03-28 06:54:50'),
(437, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:03', '2024-03-28 06:55:03'),
(438, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:04', '2024-03-28 06:55:04'),
(439, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:12', '2024-03-28 06:55:12'),
(440, 1, 'admin/auth/permissions/6/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:36', '2024-03-28 06:55:36'),
(441, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:47', '2024-03-28 06:55:47'),
(442, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:51', '2024-03-28 06:55:51'),
(443, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:55:53', '2024-03-28 06:55:53'),
(444, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 06:56:34', '2024-03-28 06:56:34'),
(445, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"Student order\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/order\\/*\",\"_token\":\"BgsK5NL1CsiAcspnNCAtZLLIUoZzcEQ0m6e2a1Vc\"}', '2024-03-28 06:56:43', '2024-03-28 06:56:43'),
(446, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:56:43', '2024-03-28 06:56:43'),
(447, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:56:54', '2024-03-28 06:56:54'),
(448, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:56:55', '2024-03-28 06:56:55'),
(449, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"Student\",\"permissions\":[\"8\",null],\"_token\":\"BgsK5NL1CsiAcspnNCAtZLLIUoZzcEQ0m6e2a1Vc\",\"_method\":\"PUT\"}', '2024-03-28 06:57:00', '2024-03-28 06:57:00'),
(450, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:00', '2024-03-28 06:57:00'),
(451, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:05', '2024-03-28 06:57:05'),
(452, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:08', '2024-03-28 06:57:08'),
(453, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:11', '2024-03-28 06:57:11'),
(454, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:16', '2024-03-28 06:57:16'),
(455, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:27', '2024-03-28 06:57:27'),
(456, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 06:57:33', '2024-03-28 06:57:33'),
(457, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:06', '2024-03-28 06:58:06'),
(458, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:09', '2024-03-28 06:58:09'),
(459, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:13', '2024-03-28 06:58:13'),
(460, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:19', '2024-03-28 06:58:19'),
(461, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:22', '2024-03-28 06:58:22'),
(462, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"Student order\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/orders\\/*\",\"_token\":\"LbJXLioUZFpjhSwnNAncOySAGqn41wStahOC5jmd\",\"_method\":\"PUT\"}', '2024-03-28 06:58:34', '2024-03-28 06:58:34'),
(463, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:34', '2024-03-28 06:58:34'),
(464, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:36', '2024-03-28 06:58:36'),
(465, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:38', '2024-03-28 06:58:38'),
(466, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"student\",\"name\":\"Student\",\"permissions\":[\"8\",null],\"_token\":\"LbJXLioUZFpjhSwnNAncOySAGqn41wStahOC5jmd\",\"_method\":\"PUT\"}', '2024-03-28 06:58:42', '2024-03-28 06:58:42'),
(467, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:43', '2024-03-28 06:58:43'),
(468, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:46', '2024-03-28 06:58:46'),
(469, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:53', '2024-03-28 06:58:53'),
(470, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:58:56', '2024-03-28 06:58:56'),
(471, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:03', '2024-03-28 06:59:03'),
(472, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:16', '2024-03-28 06:59:16'),
(473, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:19', '2024-03-28 06:59:19'),
(474, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:24', '2024-03-28 06:59:24'),
(475, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:31', '2024-03-28 06:59:31'),
(476, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"Student order\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/orders\\/{id}\",\"_token\":\"1Pq4O7ihhhHAlZosOPEeo6S08IqWpyyK34yYGwZz\",\"_method\":\"PUT\"}', '2024-03-28 06:59:45', '2024-03-28 06:59:45'),
(477, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:45', '2024-03-28 06:59:45'),
(478, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:49', '2024-03-28 06:59:49'),
(479, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:52', '2024-03-28 06:59:52'),
(480, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 06:59:58', '2024-03-28 06:59:58'),
(481, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 07:00:06', '2024-03-28 07:00:06'),
(482, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:00:09', '2024-03-28 07:00:09'),
(483, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 07:00:14', '2024-03-28 07:00:14'),
(484, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 07:00:18', '2024-03-28 07:00:18'),
(485, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 07:00:24', '2024-03-28 07:00:24'),
(486, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 07:00:32', '2024-03-28 07:00:32'),
(487, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:13', '2024-03-28 07:01:13'),
(488, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:16', '2024-03-28 07:01:16'),
(489, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:17', '2024-03-28 07:01:17'),
(490, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:25', '2024-03-28 07:01:25'),
(491, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"slug\":\"orders\",\"name\":\"Student order\",\"search_terms\":null,\"http_method\":[null],\"http_path\":\"\\/orders\\/\",\"_token\":\"5lqUYtlHX1qMchfxWHKWA9yyo7dWcJ2sWL6RJxnD\",\"_method\":\"PUT\"}', '2024-03-28 07:01:30', '2024-03-28 07:01:30'),
(492, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:30', '2024-03-28 07:01:30'),
(493, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:34', '2024-03-28 07:01:34'),
(494, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:37', '2024-03-28 07:01:37'),
(495, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:40', '2024-03-28 07:01:40'),
(496, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:45', '2024-03-28 07:01:45'),
(497, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:48', '2024-03-28 07:01:48'),
(498, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:01:50', '2024-03-28 07:01:50'),
(499, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:08', '2024-03-28 07:02:08'),
(500, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:12', '2024-03-28 07:02:12'),
(501, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:17', '2024-03-28 07:02:17'),
(502, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:29', '2024-03-28 07:02:29'),
(503, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:37', '2024-03-28 07:02:37'),
(504, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:43', '2024-03-28 07:02:43'),
(505, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:52', '2024-03-28 07:02:52'),
(506, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-28 07:02:55', '2024-03-28 07:02:55'),
(507, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 07:03:32', '2024-03-28 07:03:32'),
(508, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"My Orders\",\"icon\":\"icon-align-justify\",\"uri\":\"orders\",\"roles\":[\"2\",null],\"permission\":\"orders\",\"_token\":\"elyN3VQCDEX6spXvxS7AEEHIA4YdA0ox3uJBuw75\"}', '2024-03-28 07:04:09', '2024-03-28 07:04:09'),
(509, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:09', '2024-03-28 07:04:09'),
(510, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:14', '2024-03-28 07:04:14'),
(511, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:17', '2024-03-28 07:04:17'),
(512, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:21', '2024-03-28 07:04:21'),
(513, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:24', '2024-03-28 07:04:24'),
(514, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:30', '2024-03-28 07:04:30'),
(515, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:36', '2024-03-28 07:04:36'),
(516, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:44', '2024-03-28 07:04:44'),
(517, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:49', '2024-03-28 07:04:49'),
(518, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-28 07:04:52', '2024-03-28 07:04:52'),
(519, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 00:35:49', '2024-03-29 00:35:49'),
(520, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:35:53', '2024-03-29 00:35:53'),
(521, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:35:54', '2024-03-29 00:35:54'),
(522, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:37:14', '2024-03-29 00:37:14'),
(523, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:37:16', '2024-03-29 00:37:16'),
(524, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:37:23', '2024-03-29 00:37:23'),
(525, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:37:26', '2024-03-29 00:37:26'),
(526, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"Test exam\",\"fees\":\"100\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:37:38', '2024-03-29 00:37:38'),
(527, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:37:40', '2024-03-29 00:37:40'),
(528, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:38:05', '2024-03-29 00:38:05'),
(529, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:38:20', '2024-03-29 00:38:20'),
(530, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:38:22', '2024-03-29 00:38:22'),
(531, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"test\",\"fees\":\"100\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:38:30', '2024-03-29 00:38:30'),
(532, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:38:31', '2024-03-29 00:38:31'),
(533, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 00:39:23', '2024-03-29 00:39:23'),
(534, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:39:27', '2024-03-29 00:39:27'),
(535, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"test\",\"fees\":\"100\",\"_token\":\"tVKvLUcnIILihKS7y6oN1tPz5ohbP8sHgAIxzlWw\"}', '2024-03-29 00:39:33', '2024-03-29 00:39:33'),
(536, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:39:33', '2024-03-29 00:39:33'),
(537, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:39:46', '2024-03-29 00:39:46'),
(538, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:45:33', '2024-03-29 00:45:33'),
(539, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:45:47', '2024-03-29 00:45:47'),
(540, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:45:49', '2024-03-29 00:45:49'),
(541, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:45:51', '2024-03-29 00:45:51'),
(542, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:45:52', '2024-03-29 00:45:52'),
(543, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 00:46:04', '2024-03-29 00:46:04'),
(544, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 01:39:27', '2024-03-29 01:39:27'),
(545, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 01:39:33', '2024-03-29 01:39:33'),
(546, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 05:44:06', '2024-03-29 05:44:06'),
(547, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 05:44:14', '2024-03-29 05:44:14'),
(548, 1, 'admin/exam/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PKu2dlVVi1E2E1rLNlfZGShjL2CEeCS06BiuCG0m\"}', '2024-03-29 05:46:13', '2024-03-29 05:46:13'),
(549, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 05:46:13', '2024-03-29 05:46:13'),
(550, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 05:46:27', '2024-03-29 05:46:27'),
(551, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 05:46:30', '2024-03-29 05:46:30'),
(552, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 05:46:33', '2024-03-29 05:46:33'),
(553, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 05:50:30', '2024-03-29 05:50:30'),
(554, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 05:50:37', '2024-03-29 05:50:37'),
(555, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 06:48:28', '2024-03-29 06:48:28'),
(556, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 06:48:32', '2024-03-29 06:48:32'),
(557, 1, 'admin/exam', 'GET', '127.0.0.1', '{\"id\":\"1\"}', '2024-03-29 06:48:37', '2024-03-29 06:48:37'),
(558, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:22', '2024-03-29 06:54:22'),
(559, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:23', '2024-03-29 06:54:23'),
(560, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:25', '2024-03-29 06:54:25'),
(561, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:26', '2024-03-29 06:54:26'),
(562, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:28', '2024-03-29 06:54:28'),
(563, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:31', '2024-03-29 06:54:31'),
(564, 1, 'admin/auth/menu/35', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PKu2dlVVi1E2E1rLNlfZGShjL2CEeCS06BiuCG0m\"}', '2024-03-29 06:54:40', '2024-03-29 06:54:40'),
(565, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:40', '2024-03-29 06:54:40'),
(566, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:42', '2024-03-29 06:54:42'),
(567, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:46', '2024-03-29 06:54:46'),
(568, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:49', '2024-03-29 06:54:49'),
(569, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:54:54', '2024-03-29 06:54:54'),
(570, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-03-29 06:55:02', '2024-03-29 06:55:02'),
(571, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-29 06:55:21', '2024-03-29 06:55:21'),
(572, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-29 06:55:23', '2024-03-29 06:55:23'),
(573, 1, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-29 06:55:26', '2024-03-29 06:55:26'),
(574, 1, 'admin/orders/1', 'GET', '127.0.0.1', '[]', '2024-03-29 06:55:37', '2024-03-29 06:55:37'),
(575, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 06:55:41', '2024-03-29 06:55:41'),
(576, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 07:42:23', '2024-03-29 07:42:23'),
(577, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 07:48:18', '2024-03-29 07:48:18'),
(578, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 07:48:23', '2024-03-29 07:48:23'),
(579, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 14:14:08', '2024-03-29 14:14:08'),
(580, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 14:26:15', '2024-03-29 14:26:15'),
(581, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 14:26:18', '2024-03-29 14:26:18'),
(582, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-29 14:26:20', '2024-03-29 14:26:20'),
(583, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-29 22:41:50', '2024-03-29 22:41:50'),
(584, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-29 22:41:59', '2024-03-29 22:41:59'),
(585, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-29 22:42:02', '2024-03-29 22:42:02'),
(586, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-29 22:42:07', '2024-03-29 22:42:07'),
(587, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-29 22:42:10', '2024-03-29 22:42:10'),
(588, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"PIW68JPiZfJdkgjFhnOBJW5xvIEnthgIzw6yaRuW\"}', '2024-03-29 22:42:13', '2024-03-29 22:42:13'),
(589, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:07', '2024-03-30 05:08:07'),
(590, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:14', '2024-03-30 05:08:14'),
(591, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:21', '2024-03-30 05:08:21'),
(592, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:22', '2024-03-30 05:08:22'),
(593, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:22', '2024-03-30 05:08:22'),
(594, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:29', '2024-03-30 05:08:29'),
(595, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:08:32', '2024-03-30 05:08:32'),
(596, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"jAMMoMNBkx2KQ4O0tPBiAcO7vdKrzuUqC12acVK6\"}', '2024-03-30 05:08:34', '2024-03-30 05:08:34'),
(597, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"jAMMoMNBkx2KQ4O0tPBiAcO7vdKrzuUqC12acVK6\"}', '2024-03-30 05:08:36', '2024-03-30 05:08:36'),
(598, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:12:44', '2024-03-30 05:12:44'),
(599, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:16:03', '2024-03-30 05:16:03'),
(600, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:16:05', '2024-03-30 05:16:05'),
(601, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:18:03', '2024-03-30 05:18:03'),
(602, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:18:05', '2024-03-30 05:18:05'),
(603, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:19:00', '2024-03-30 05:19:00'),
(604, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:19:03', '2024-03-30 05:19:03'),
(605, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:19:06', '2024-03-30 05:19:06'),
(606, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:19:21', '2024-03-30 05:19:21'),
(607, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:20:00', '2024-03-30 05:20:00'),
(608, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:21:54', '2024-03-30 05:21:54'),
(609, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:22:28', '2024-03-30 05:22:28'),
(610, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"subcategory\":null,\"course_id\":null,\"exam_name\":null,\"fees\":null,\"_token\":\"jAMMoMNBkx2KQ4O0tPBiAcO7vdKrzuUqC12acVK6\"}', '2024-03-30 05:22:39', '2024-03-30 05:22:39'),
(611, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:22:40', '2024-03-30 05:22:40'),
(612, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:22:55', '2024-03-30 05:22:55'),
(613, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:23:05', '2024-03-30 05:23:05'),
(614, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:25:10', '2024-03-30 05:25:10'),
(615, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:21', '2024-03-30 05:26:21'),
(616, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:25', '2024-03-30 05:26:25'),
(617, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:30', '2024-03-30 05:26:30'),
(618, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:35', '2024-03-30 05:26:35'),
(619, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:38', '2024-03-30 05:26:38'),
(620, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:40', '2024-03-30 05:26:40'),
(621, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:46', '2024-03-30 05:26:46'),
(622, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:26:53', '2024-03-30 05:26:53'),
(623, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:05', '2024-03-30 05:27:05'),
(624, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:12', '2024-03-30 05:27:12'),
(625, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:14', '2024-03-30 05:27:14'),
(626, 2, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:19', '2024-03-30 05:27:19'),
(627, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:21', '2024-03-30 05:27:21'),
(628, 2, 'admin/orders/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"z7kxbfxZYe3NQXtTWN5N4ZdRTmjwmjwIRDPwwDwc\"}', '2024-03-30 05:27:24', '2024-03-30 05:27:24'),
(629, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:24', '2024-03-30 05:27:24'),
(630, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:27', '2024-03-30 05:27:27'),
(631, 2, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:37', '2024-03-30 05:27:37'),
(632, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:42', '2024-03-30 05:27:42'),
(633, 2, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:43', '2024-03-30 05:27:43'),
(634, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:45', '2024-03-30 05:27:45'),
(635, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:49', '2024-03-30 05:27:49'),
(636, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-30 05:27:52', '2024-03-30 05:27:52'),
(637, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:29:09', '2024-03-30 05:29:09'),
(638, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:29:15', '2024-03-30 05:29:15'),
(639, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:30:29', '2024-03-30 05:30:29'),
(640, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:31:01', '2024-03-30 05:31:01'),
(641, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:31:03', '2024-03-30 05:31:03'),
(642, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:41:21', '2024-03-30 05:41:21'),
(643, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-30 05:41:25', '2024-03-30 05:41:25'),
(644, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:41:29', '2024-03-30 05:41:29'),
(645, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:41:33', '2024-03-30 05:41:33'),
(646, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 05:41:35', '2024-03-30 05:41:35'),
(647, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"FPj0CMXPfAyYjYXgsMYUVJ7GGiVjZvN0AA5cxDyq\"}', '2024-03-30 05:41:53', '2024-03-30 05:41:53'),
(648, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"Test exam1\",\"total_no_of_question\":\"100\",\"marks_per_ques\":\"1\",\"total_marks\":\"100\",\"pass_marks\":\"50\",\"negative_per\":\".25\",\"fees\":\"100\",\"_token\":\"FPj0CMXPfAyYjYXgsMYUVJ7GGiVjZvN0AA5cxDyq\"}', '2024-03-30 05:43:05', '2024-03-30 05:43:05'),
(649, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:43:05', '2024-03-30 05:43:05'),
(650, 1, 'admin/exam/2', 'GET', '127.0.0.1', '[]', '2024-03-30 05:43:09', '2024-03-30 05:43:09'),
(651, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:43:13', '2024-03-30 05:43:13'),
(652, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 05:44:17', '2024-03-30 05:44:17'),
(653, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-30 05:49:54', '2024-03-30 05:49:54'),
(654, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-30 05:49:55', '2024-03-30 05:49:55'),
(655, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 05:49:56', '2024-03-30 05:49:56'),
(656, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:50:00', '2024-03-30 05:50:00'),
(657, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 05:55:22', '2024-03-30 05:55:22'),
(658, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-30 05:55:24', '2024-03-30 05:55:24'),
(659, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:55:26', '2024-03-30 05:55:26'),
(660, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 05:56:08', '2024-03-30 05:56:08'),
(661, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-03-30 06:05:52', '2024-03-30 06:05:52'),
(662, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 06:06:41', '2024-03-30 06:06:41'),
(663, 1, 'admin/contents', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-03-30 06:07:02', '2024-03-30 06:07:02'),
(664, 1, 'admin/contents', 'GET', '127.0.0.1', '{\"_columns_\":\"category,created_at,id,subcategory,updated_at\"}', '2024-03-30 06:07:07', '2024-03-30 06:07:07'),
(665, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 06:07:17', '2024-03-30 06:07:17'),
(666, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:07:18', '2024-03-30 06:07:18'),
(667, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:07:23', '2024-03-30 06:07:23'),
(668, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-30 06:09:14', '2024-03-30 06:09:14'),
(669, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 06:09:15', '2024-03-30 06:09:15'),
(670, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-30 06:09:16', '2024-03-30 06:09:16'),
(671, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 06:09:19', '2024-03-30 06:09:19'),
(672, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:09:20', '2024-03-30 06:09:20'),
(673, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:09:22', '2024-03-30 06:09:22'),
(674, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:18:24', '2024-03-30 06:18:24'),
(675, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 06:18:37', '2024-03-30 06:18:37'),
(676, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:18:38', '2024-03-30 06:18:38'),
(677, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:23:05', '2024-03-30 06:23:05'),
(678, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:23:25', '2024-03-30 06:23:25'),
(679, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:23:39', '2024-03-30 06:23:39'),
(680, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:23:58', '2024-03-30 06:23:58'),
(681, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:24:55', '2024-03-30 06:24:55'),
(682, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:25:52', '2024-03-30 06:25:52'),
(683, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:25:54', '2024-03-30 06:25:54'),
(684, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:27:09', '2024-03-30 06:27:09'),
(685, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:27:11', '2024-03-30 06:27:11'),
(686, 1, 'admin/contents', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"page_title\":\"test title\",\"content\":\"<p>test description<\\/p>\",\"meta_title\":\"test meta\",\"meta_description\":\"test meta d\",\"meta_keyword\":\"test keyword\",\"other_tags\":\"test other\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:27:44', '2024-03-30 06:27:44'),
(687, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 06:27:44', '2024-03-30 06:27:44'),
(688, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 06:33:09', '2024-03-30 06:33:09'),
(689, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:33:11', '2024-03-30 06:33:11'),
(690, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:33:23', '2024-03-30 06:33:23'),
(691, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\"}', '2024-03-30 06:33:25', '2024-03-30 06:33:25'),
(692, 1, 'admin/contents', 'POST', '127.0.0.1', '{\"category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"page_title\":\"asd\",\"content\":\"<p>asd<\\/p>\",\"meta_title\":\"asd\",\"meta_description\":\"asd\",\"meta_keyword\":\"asd\",\"other_tags\":\"asd\",\"_token\":\"MHttiL4ewNqwYkRfP4y9XZ8oibIeyduAoFZvDZSo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/contents\"}', '2024-03-30 06:33:34', '2024-03-30 06:33:34'),
(693, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 06:33:34', '2024-03-30 06:33:34'),
(694, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 06:33:47', '2024-03-30 06:33:47'),
(695, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 09:32:19', '2024-03-30 09:32:19'),
(696, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-30 09:33:00', '2024-03-30 09:33:00'),
(697, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-30 09:33:01', '2024-03-30 09:33:01'),
(698, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:33:12', '2024-03-30 09:33:12'),
(699, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-30 09:33:49', '2024-03-30 09:33:49'),
(700, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:34:00', '2024-03-30 09:34:00'),
(701, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-03-30 09:34:53', '2024-03-30 09:34:53'),
(702, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-30 09:35:04', '2024-03-30 09:35:04'),
(703, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:35:05', '2024-03-30 09:35:05'),
(704, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-30 09:35:55', '2024-03-30 09:35:55'),
(705, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 09:36:19', '2024-03-30 09:36:19'),
(706, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-03-30 09:37:11', '2024-03-30 09:37:11'),
(707, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,item,item_id,payment_mode,payment_status,price,qty,total_price,transection_id,updated_at\"}', '2024-03-30 09:38:43', '2024-03-30 09:38:43'),
(708, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-30 09:39:05', '2024-03-30 09:39:05'),
(709, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-30 09:39:09', '2024-03-30 09:39:09'),
(710, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:39:11', '2024-03-30 09:39:11'),
(711, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-03-30 09:39:18', '2024-03-30 09:39:18'),
(712, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-03-30 09:39:21', '2024-03-30 09:39:21'),
(713, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:39:23', '2024-03-30 09:39:23'),
(714, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 09:40:19', '2024-03-30 09:40:19'),
(715, 1, 'admin/orders/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:42:53', '2024-03-30 09:42:53'),
(716, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 09:43:03', '2024-03-30 09:43:03'),
(717, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:21', '2024-03-30 09:53:21'),
(718, 1, 'admin/coursecategory/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:24', '2024-03-30 09:53:24'),
(719, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:26', '2024-03-30 09:53:26'),
(720, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:33', '2024-03-30 09:53:33'),
(721, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:35', '2024-03-30 09:53:35'),
(722, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:42', '2024-03-30 09:53:42'),
(723, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:44', '2024-03-30 09:53:44'),
(724, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:53:46', '2024-03-30 09:53:46'),
(725, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"l9ApWvN0DhrFCCmSYCzB4aOxOOxJFiTA0jYgGm6x\"}', '2024-03-30 09:53:48', '2024-03-30 09:53:48'),
(726, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 09:54:14', '2024-03-30 09:54:14'),
(727, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:54:54', '2024-03-30 09:54:54'),
(728, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 09:55:09', '2024-03-30 09:55:09'),
(729, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-30 09:55:18', '2024-03-30 09:55:18'),
(730, 1, 'admin/studymaterials/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 09:55:23', '2024-03-30 09:55:23'),
(731, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 09:56:10', '2024-03-30 09:56:10'),
(732, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:56:12', '2024-03-30 09:56:12'),
(733, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 09:56:19', '2024-03-30 09:56:19'),
(734, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:56:28', '2024-03-30 09:56:28'),
(735, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-30 09:56:44', '2024-03-30 09:56:44'),
(736, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,fees,material_data,title,updated_at\"}', '2024-03-30 09:56:59', '2024-03-30 09:56:59'),
(737, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-30 09:57:27', '2024-03-30 09:57:27'),
(738, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:57:58', '2024-03-30 09:57:58'),
(739, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:00', '2024-03-30 09:58:00'),
(740, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:01', '2024-03-30 09:58:01'),
(741, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:21', '2024-03-30 09:58:21'),
(742, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:25', '2024-03-30 09:58:25'),
(743, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"l9ApWvN0DhrFCCmSYCzB4aOxOOxJFiTA0jYgGm6x\"}', '2024-03-30 09:58:28', '2024-03-30 09:58:28'),
(744, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:30', '2024-03-30 09:58:30'),
(745, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:33', '2024-03-30 09:58:33'),
(746, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-30 09:58:46', '2024-03-30 09:58:46'),
(747, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-03-30 09:59:49', '2024-03-30 09:59:49'),
(748, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-03-30 09:59:51', '2024-03-30 09:59:51'),
(749, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"l9ApWvN0DhrFCCmSYCzB4aOxOOxJFiTA0jYgGm6x\"}', '2024-03-30 09:59:53', '2024-03-30 09:59:53'),
(750, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-03-30 10:00:47', '2024-03-30 10:00:47'),
(751, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 10:02:22', '2024-03-30 10:02:22'),
(752, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-03-30 10:02:28', '2024-03-30 10:02:28'),
(753, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"l9ApWvN0DhrFCCmSYCzB4aOxOOxJFiTA0jYgGm6x\"}', '2024-03-30 10:02:31', '2024-03-30 10:02:31'),
(754, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"l9ApWvN0DhrFCCmSYCzB4aOxOOxJFiTA0jYgGm6x\"}', '2024-03-30 10:02:33', '2024-03-30 10:02:33'),
(755, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 10:03:35', '2024-03-30 10:03:35');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(756, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:04:40', '2024-03-30 10:04:40'),
(757, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:04:54', '2024-03-30 10:04:54'),
(758, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:04:56', '2024-03-30 10:04:56'),
(759, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:04:57', '2024-03-30 10:04:57'),
(760, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:04:59', '2024-03-30 10:04:59'),
(761, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 10:08:38', '2024-03-30 10:08:38'),
(762, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 10:08:41', '2024-03-30 10:08:41'),
(763, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:39', '2024-03-30 10:09:39'),
(764, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:43', '2024-03-30 10:09:43'),
(765, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:48', '2024-03-30 10:09:48'),
(766, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:49', '2024-03-30 10:09:49'),
(767, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:51', '2024-03-30 10:09:51'),
(768, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:53', '2024-03-30 10:09:53'),
(769, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-30 10:09:58', '2024-03-30 10:09:58'),
(770, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-03-30 10:10:45', '2024-03-30 10:10:45'),
(771, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:04', '2024-03-30 10:11:04'),
(772, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:09', '2024-03-30 10:11:09'),
(773, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:12', '2024-03-30 10:11:12'),
(774, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:27', '2024-03-30 10:11:27'),
(775, 2, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:29', '2024-03-30 10:11:29'),
(776, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:34', '2024-03-30 10:11:34'),
(777, 2, 'admin/orders/1/edit', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:43', '2024-03-30 10:11:43'),
(778, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 10:11:46', '2024-03-30 10:11:46'),
(779, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:14:39', '2024-03-30 10:14:39'),
(780, 2, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-03-30 10:15:25', '2024-03-30 10:15:25'),
(781, 2, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-03-30 10:15:30', '2024-03-30 10:15:30'),
(782, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-03-30 10:16:06', '2024-03-30 10:16:06'),
(783, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-03-30 10:16:10', '2024-03-30 10:16:10'),
(784, 2, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 06:54:08', '2024-04-01 06:54:08'),
(785, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-01 06:54:12', '2024-04-01 06:54:12'),
(786, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 06:54:15', '2024-04-01 06:54:15'),
(787, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-01 06:54:24', '2024-04-01 06:54:24'),
(788, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-01 06:54:27', '2024-04-01 06:54:27'),
(789, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-01 06:54:32', '2024-04-01 06:54:32'),
(790, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-01 07:02:04', '2024-04-01 07:02:04'),
(791, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-04-01 07:04:45', '2024-04-01 07:04:45'),
(792, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-01 07:04:49', '2024-04-01 07:04:49'),
(793, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-01 07:04:51', '2024-04-01 07:04:51'),
(794, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"course_name\":\"History\",\"fees\":\"100\",\"_token\":\"WZ2f2DmcRFqGgh1AEn5okXMqCED8ZLKKrdDPbAsM\"}', '2024-04-01 07:04:59', '2024-04-01 07:04:59'),
(795, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-01 07:04:59', '2024-04-01 07:04:59'),
(796, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-01 07:05:06', '2024-04-01 07:05:06'),
(797, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-01 07:05:53', '2024-04-01 07:05:53'),
(798, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-04-01 07:05:56', '2024-04-01 07:05:56'),
(799, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"WZ2f2DmcRFqGgh1AEn5okXMqCED8ZLKKrdDPbAsM\"}', '2024-04-01 07:05:58', '2024-04-01 07:05:58'),
(800, 1, 'admin/studymaterials', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"subject\":\"1\",\"title\":\"asda\",\"_token\":\"WZ2f2DmcRFqGgh1AEn5okXMqCED8ZLKKrdDPbAsM\"}', '2024-04-01 07:06:06', '2024-04-01 07:06:06'),
(801, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:06', '2024-04-01 07:06:06'),
(802, 1, 'admin/studymaterials/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:12', '2024-04-01 07:06:12'),
(803, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:29', '2024-04-01 07:06:29'),
(804, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:30', '2024-04-01 07:06:30'),
(805, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:31', '2024-04-01 07:06:31'),
(806, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:33', '2024-04-01 07:06:33'),
(807, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:06:59', '2024-04-01 07:06:59'),
(808, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:07:01', '2024-04-01 07:07:01'),
(809, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:07:17', '2024-04-01 07:07:17'),
(810, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:07:20', '2024-04-01 07:07:20'),
(811, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-01 07:07:22', '2024-04-01 07:07:22'),
(812, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:07:29', '2024-04-01 07:07:29'),
(813, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-01 07:09:24', '2024-04-01 07:09:24'),
(814, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-01 07:09:44', '2024-04-01 07:09:44'),
(815, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-04-01 07:17:33', '2024-04-01 07:17:33'),
(816, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from oredrs\",\"_token\":\"WZ2f2DmcRFqGgh1AEn5okXMqCED8ZLKKrdDPbAsM\"}', '2024-04-01 07:17:46', '2024-04-01 07:17:46'),
(817, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from oredr\",\"_token\":\"WZ2f2DmcRFqGgh1AEn5okXMqCED8ZLKKrdDPbAsM\"}', '2024-04-01 07:17:58', '2024-04-01 07:17:58'),
(818, 1, 'admin/helpers/terminal/database', 'POST', '127.0.0.1', '{\"c\":\"db:mysql\",\"q\":\"select * from salesorder\",\"_token\":\"WZ2f2DmcRFqGgh1AEn5okXMqCED8ZLKKrdDPbAsM\"}', '2024-04-01 07:18:10', '2024-04-01 07:18:10'),
(819, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-01 07:18:23', '2024-04-01 07:18:23'),
(820, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-04 12:12:06', '2024-04-04 12:12:06'),
(821, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 12:12:13', '2024-04-04 12:12:13'),
(822, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 12:13:06', '2024-04-04 12:13:06'),
(823, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-04 12:17:19', '2024-04-04 12:17:19'),
(824, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:17:20', '2024-04-04 12:17:20'),
(825, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:18:27', '2024-04-04 12:18:27'),
(826, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"course_category\":\"1\",\"search_terms\":null,\"course_name\":\"asas\",\"fees\":\"1212\",\"description\":\"<p>asdasd<\\/p>\",\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\"}', '2024-04-04 12:18:34', '2024-04-04 12:18:34'),
(827, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-04 12:18:34', '2024-04-04 12:18:34'),
(828, 1, 'admin/courses/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 12:18:40', '2024-04-04 12:18:40'),
(829, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-04 12:18:46', '2024-04-04 12:18:46'),
(830, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:19:43', '2024-04-04 12:19:43'),
(831, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:19:47', '2024-04-04 12:19:47'),
(832, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:20:54', '2024-04-04 12:20:54'),
(833, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:21:21', '2024-04-04 12:21:21'),
(834, 1, 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"test\",\"page_url\":\"asdasd\",\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\"}', '2024-04-04 12:21:25', '2024-04-04 12:21:25'),
(835, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:21:25', '2024-04-04 12:21:25'),
(836, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:23:58', '2024-04-04 12:23:58'),
(837, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:24:01', '2024-04-04 12:24:01'),
(838, 1, 'admin/category/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 12:24:04', '2024-04-04 12:24:04'),
(839, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:24:06', '2024-04-04 12:24:06'),
(840, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:24:07', '2024-04-04 12:24:07'),
(841, 1, 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"sadad\",\"page_url\":\"asdasd\",\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\"}', '2024-04-04 12:24:11', '2024-04-04 12:24:11'),
(842, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:24:11', '2024-04-04 12:24:11'),
(843, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:24:14', '2024-04-04 12:24:14'),
(844, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 12:25:06', '2024-04-04 12:25:06'),
(845, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 12:26:42', '2024-04-04 12:26:42'),
(846, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:26:43', '2024-04-04 12:26:43'),
(847, 1, 'admin/subcategories', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"asd\",\"page_url\":\"asd\",\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\"}', '2024-04-04 12:26:51', '2024-04-04 12:26:51'),
(848, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 12:26:51', '2024-04-04 12:26:51'),
(849, 1, 'admin/subcategories/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 12:26:52', '2024-04-04 12:26:52'),
(850, 1, 'admin/subcategories/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"asd\",\"page_url\":\"asd\",\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\",\"_method\":\"PUT\"}', '2024-04-04 12:26:55', '2024-04-04 12:26:55'),
(851, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 12:26:55', '2024-04-04 12:26:55'),
(852, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:26:57', '2024-04-04 12:26:57'),
(853, 1, 'admin/subcategories', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"search_terms\":null,\"name\":\"asd\",\"page_url\":\"asd\",\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\"}', '2024-04-04 12:27:02', '2024-04-04 12:27:02'),
(854, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:27:02', '2024-04-04 12:27:02'),
(855, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 12:27:03', '2024-04-04 12:27:03'),
(856, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-04 12:31:45', '2024-04-04 12:31:45'),
(857, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:31:47', '2024-04-04 12:31:47'),
(858, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 12:32:14', '2024-04-04 12:32:14'),
(859, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:32:16', '2024-04-04 12:32:16'),
(860, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:33:23', '2024-04-04 12:33:23'),
(861, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":null,\"search_terms\":null,\"subcategory\":null,\"exam_name\":null,\"total_no_of_question\":null,\"marks_per_ques\":null,\"test_time\":\"asdas\",\"pass_marks\":null,\"negative_per\":null,\"_token\":\"1MPsY7nEZaFjDGqZWS4elvh7SHrP3sskd7gPLVf9\"}', '2024-04-04 12:33:34', '2024-04-04 12:33:34'),
(862, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 12:33:34', '2024-04-04 12:33:34'),
(863, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-04 22:41:35', '2024-04-04 22:41:35'),
(864, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 22:41:40', '2024-04-04 22:41:40'),
(865, 1, 'admin/category/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:41:42', '2024-04-04 22:41:42'),
(866, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 22:41:50', '2024-04-04 22:41:50'),
(867, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 22:41:54', '2024-04-04 22:41:54'),
(868, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 22:41:55', '2024-04-04 22:41:55'),
(869, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-04 22:42:01', '2024-04-04 22:42:01'),
(870, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 22:42:02', '2024-04-04 22:42:02'),
(871, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-04 22:42:40', '2024-04-04 22:42:40'),
(872, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:42:41', '2024-04-04 22:42:41'),
(873, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:44:04', '2024-04-04 22:44:04'),
(874, 1, 'admin/subcategories/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:44:15', '2024-04-04 22:44:15'),
(875, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 22:45:51', '2024-04-04 22:45:51'),
(876, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:45:52', '2024-04-04 22:45:52'),
(877, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-04 22:46:16', '2024-04-04 22:46:16'),
(878, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"3\",\"exam_name\":\"asd\",\"total_no_of_question\":\"asd\",\"marks_per_ques\":\"asd\",\"test_time\":\"as\",\"pass_marks\":\"sad\",\"negative_per\":\".25\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-04 22:46:19', '2024-04-04 22:46:19'),
(879, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:46:19', '2024-04-04 22:46:19'),
(880, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:16', '2024-04-04 22:49:16'),
(881, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:22', '2024-04-04 22:49:22'),
(882, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:34', '2024-04-04 22:49:34'),
(883, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:43', '2024-04-04 22:49:43'),
(884, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:44', '2024-04-04 22:49:44'),
(885, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:51', '2024-04-04 22:49:51'),
(886, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:49:52', '2024-04-04 22:49:52'),
(887, 1, 'admin/contents', 'POST', '127.0.0.1', '{\"category\":null,\"search_terms\":null,\"subcategory\":null,\"page_title\":null,\"content\":null,\"meta_title\":null,\"meta_description\":null,\"meta_keyword\":null,\"other_tags\":null,\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-04 22:50:00', '2024-04-04 22:50:00'),
(888, 1, 'admin/contents/create', 'GET', '127.0.0.1', '[]', '2024-04-04 22:50:00', '2024-04-04 22:50:00'),
(889, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-04 22:50:03', '2024-04-04 22:50:03'),
(890, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-04 22:58:31', '2024-04-04 22:58:31'),
(891, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-04 23:00:58', '2024-04-04 23:00:58'),
(892, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 23:01:13', '2024-04-04 23:01:13'),
(893, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:01:14', '2024-04-04 23:01:14'),
(894, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:01:58', '2024-04-04 23:01:58'),
(895, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:02:43', '2024-04-04 23:02:43'),
(896, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:03:36', '2024-04-04 23:03:36'),
(897, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:05:31', '2024-04-04 23:05:31'),
(898, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:06:04', '2024-04-04 23:06:04'),
(899, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-04 23:07:04', '2024-04-04 23:07:04'),
(900, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 23:12:50', '2024-04-04 23:12:50'),
(901, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 23:12:54', '2024-04-04 23:12:54'),
(902, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-04 23:13:04', '2024-04-04 23:13:04'),
(903, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-04 23:13:07', '2024-04-04 23:13:07'),
(904, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 23:13:37', '2024-04-04 23:13:37'),
(905, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 23:25:59', '2024-04-04 23:25:59'),
(906, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 23:26:02', '2024-04-04 23:26:02'),
(907, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 23:41:07', '2024-04-04 23:41:07'),
(908, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-04 23:41:17', '2024-04-04 23:41:17'),
(909, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-04 23:41:30', '2024-04-04 23:41:30'),
(910, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-04 23:41:32', '2024-04-04 23:41:32'),
(911, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 00:39:02', '2024-04-05 00:39:02'),
(912, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 01:06:54', '2024-04-05 01:06:54'),
(913, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-05 01:06:56', '2024-04-05 01:06:56'),
(914, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-05 01:06:57', '2024-04-05 01:06:57'),
(915, 1, 'admin/contents', 'GET', '127.0.0.1', '[]', '2024-04-05 01:06:59', '2024-04-05 01:06:59'),
(916, 1, 'admin/subcategories', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:01', '2024-04-05 01:07:01'),
(917, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:02', '2024-04-05 01:07:02'),
(918, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:04', '2024-04-05 01:07:04'),
(919, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:14', '2024-04-05 01:07:14'),
(920, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:15', '2024-04-05 01:07:15'),
(921, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:21', '2024-04-05 01:07:21'),
(922, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:23', '2024-04-05 01:07:23'),
(923, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:26', '2024-04-05 01:07:26'),
(924, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:28', '2024-04-05 01:07:28'),
(925, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:31', '2024-04-05 01:07:31'),
(926, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:34', '2024-04-05 01:07:34'),
(927, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:34', '2024-04-05 01:07:34'),
(928, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 01:07:39', '2024-04-05 01:07:39'),
(929, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"3\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 01:07:42', '2024-04-05 01:07:42'),
(930, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 01:07:44', '2024-04-05 01:07:44'),
(931, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"3\",\"exam_name\":\"zxXz\",\"total_no_of_question\":\"1\",\"marks_per_ques\":\"2\",\"test_time\":\"2\",\"pass_marks\":\"2\",\"negative_per\":\".25\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 01:07:56', '2024-04-05 01:07:56'),
(932, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 01:07:56', '2024-04-05 01:07:56'),
(933, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-05 02:33:02', '2024-04-05 02:33:02'),
(934, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 02:33:04', '2024-04-05 02:33:04'),
(935, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 02:33:06', '2024-04-05 02:33:06'),
(936, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 02:33:07', '2024-04-05 02:33:07'),
(937, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"asd\",\"total_no_of_question\":\"2\",\"marks_per_ques\":\"2\",\"test_time\":\"2\",\"pass_marks\":\"2\",\"negative_per\":\".5\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 02:33:16', '2024-04-05 02:33:16'),
(938, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 02:33:41', '2024-04-05 02:33:41'),
(939, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 02:33:44', '2024-04-05 02:33:44'),
(940, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 02:33:45', '2024-04-05 02:33:45'),
(941, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"asd\",\"total_no_of_question\":\"43\",\"marks_per_ques\":\"34\",\"test_time\":\"34\",\"pass_marks\":\"34\",\"negative_per\":\".30\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 02:33:56', '2024-04-05 02:33:56'),
(942, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 02:33:56', '2024-04-05 02:33:56'),
(943, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 02:34:53', '2024-04-05 02:34:53'),
(944, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\"}', '2024-04-05 02:34:57', '2024-04-05 02:34:57'),
(945, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"3\",\"exam_name\":\"sefs\",\"total_no_of_question\":\"34\",\"marks_per_ques\":\"24\",\"test_time\":\"234\",\"pass_marks\":\"234\",\"negative_per\":\".25\",\"_token\":\"CDJGPLVZkNnAy2Ye1qraSZni3Kh72qAdqUBx84rA\",\"_previous_\":\"http:\\/\\/127.0.0.1:1000\\/admin\\/exam\"}', '2024-04-05 02:35:05', '2024-04-05 02:35:05'),
(946, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 02:35:14', '2024-04-05 02:35:14'),
(947, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 02:35:14', '2024-04-05 02:35:14'),
(948, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 02:35:27', '2024-04-05 02:35:27'),
(949, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 02:35:29', '2024-04-05 02:35:29'),
(950, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-05 07:24:01', '2024-04-05 07:24:01'),
(951, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 07:24:07', '2024-04-05 07:24:07'),
(952, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 07:24:09', '2024-04-05 07:24:09'),
(953, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 07:24:32', '2024-04-05 07:24:32'),
(954, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-05 07:24:56', '2024-04-05 07:24:56'),
(955, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"exam_questions_answers\",\"model_name\":\"App\\\\Models\\\\Question\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\QuestionController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"course_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_a\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_b\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_c\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_d\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer_text\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"ans_option\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"kKi8MP1olSIOXy4KPYXzCnyw0uhK86PxUV7pljh0\"}', '2024-04-05 07:38:32', '2024-04-05 07:38:32'),
(956, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-05 07:38:32', '2024-04-05 07:38:32'),
(957, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:39:01', '2024-04-05 07:39:01'),
(958, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 07:39:04', '2024-04-05 07:39:04'),
(959, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 07:40:36', '2024-04-05 07:40:36'),
(960, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-05 07:40:44', '2024-04-05 07:40:44'),
(961, 1, 'admin/auth/menu/36/edit', 'GET', '127.0.0.1', '[]', '2024-04-05 07:40:48', '2024-04-05 07:40:48'),
(962, 1, 'admin/auth/menu/36', 'PUT', '127.0.0.1', '{\"parent_id\":\"33\",\"search_terms\":null,\"title\":\"Questions\",\"icon\":\"icon-file\",\"uri\":\"question\",\"roles\":[null],\"permission\":null,\"_token\":\"kKi8MP1olSIOXy4KPYXzCnyw0uhK86PxUV7pljh0\",\"_method\":\"PUT\"}', '2024-04-05 07:41:17', '2024-04-05 07:41:17'),
(963, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-05 07:41:17', '2024-04-05 07:41:17'),
(964, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-05 07:41:20', '2024-04-05 07:41:20'),
(965, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:41:22', '2024-04-05 07:41:22'),
(966, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 07:41:24', '2024-04-05 07:41:24'),
(967, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:43:23', '2024-04-05 07:43:23'),
(968, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:46:51', '2024-04-05 07:46:51'),
(969, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:46:53', '2024-04-05 07:46:53'),
(970, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:47:03', '2024-04-05 07:47:03'),
(971, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 07:48:49', '2024-04-05 07:48:49'),
(972, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-05 07:48:58', '2024-04-05 07:48:58'),
(973, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-05 07:49:03', '2024-04-05 07:49:03'),
(974, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 08:53:51', '2024-04-05 08:53:51'),
(975, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 08:53:53', '2024-04-05 08:53:53'),
(976, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-05 10:20:01', '2024-04-05 10:20:01'),
(977, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:20:04', '2024-04-05 10:20:04'),
(978, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:20:05', '2024-04-05 10:20:05'),
(979, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 10:25:55', '2024-04-05 10:25:55'),
(980, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:25:56', '2024-04-05 10:25:56'),
(981, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"ZjfDvBsXrk0k3Jz3bxZUMc7IDtBd2Pag1cDagZbi\"}', '2024-04-05 10:25:58', '2024-04-05 10:25:58'),
(982, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:26:31', '2024-04-05 10:26:31'),
(983, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:26:32', '2024-04-05 10:26:32'),
(984, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"ZjfDvBsXrk0k3Jz3bxZUMc7IDtBd2Pag1cDagZbi\"}', '2024-04-05 10:26:33', '2024-04-05 10:26:33'),
(985, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:29:53', '2024-04-05 10:29:53'),
(986, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:30:09', '2024-04-05 10:30:09'),
(987, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 10:34:49', '2024-04-05 10:34:49'),
(988, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:34:52', '2024-04-05 10:34:52'),
(989, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-05 10:35:01', '2024-04-05 10:35:01'),
(990, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 10:35:03', '2024-04-05 10:35:03'),
(991, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-05 10:35:05', '2024-04-05 10:35:05'),
(992, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 10:35:06', '2024-04-05 10:35:06'),
(993, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 10:35:26', '2024-04-05 10:35:26'),
(994, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 10:36:19', '2024-04-05 10:36:19'),
(995, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 10:36:28', '2024-04-05 10:36:28'),
(996, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:36:35', '2024-04-05 10:36:35'),
(997, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 10:36:36', '2024-04-05 10:36:36'),
(998, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:36:36', '2024-04-05 10:36:36'),
(999, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:38:01', '2024-04-05 10:38:01'),
(1000, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:38:50', '2024-04-05 10:38:50'),
(1001, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 10:38:54', '2024-04-05 10:38:54'),
(1002, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:38:55', '2024-04-05 10:38:55'),
(1003, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:01', '2024-04-05 10:39:01'),
(1004, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:04', '2024-04-05 10:39:04'),
(1005, 1, 'admin/question', 'POST', '127.0.0.1', '{\"course_id\":\"sad\",\"question\":\"asd\",\"option_a\":\"asd\",\"option_b\":\"asd\",\"option_c\":\"sad\",\"option_d\":\"asd\",\"answer_text\":\"sad\",\"ans_option\":\"sad\",\"_token\":\"ZjfDvBsXrk0k3Jz3bxZUMc7IDtBd2Pag1cDagZbi\"}', '2024-04-05 10:39:15', '2024-04-05 10:39:15'),
(1006, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:15', '2024-04-05 10:39:15'),
(1007, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:17', '2024-04-05 10:39:17'),
(1008, 1, 'admin/question/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"ZjfDvBsXrk0k3Jz3bxZUMc7IDtBd2Pag1cDagZbi\"}', '2024-04-05 10:39:20', '2024-04-05 10:39:20'),
(1009, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:20', '2024-04-05 10:39:20'),
(1010, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:22', '2024-04-05 10:39:22'),
(1011, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:24', '2024-04-05 10:39:24'),
(1012, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:27', '2024-04-05 10:39:27'),
(1013, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:38', '2024-04-05 10:39:38'),
(1014, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:39:41', '2024-04-05 10:39:41'),
(1015, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:09', '2024-04-05 10:40:09'),
(1016, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:11', '2024-04-05 10:40:11'),
(1017, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:13', '2024-04-05 10:40:13'),
(1018, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:14', '2024-04-05 10:40:14'),
(1019, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:14', '2024-04-05 10:40:14'),
(1020, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:16', '2024-04-05 10:40:16'),
(1021, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:19', '2024-04-05 10:40:19'),
(1022, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-05 10:40:19', '2024-04-05 10:40:19'),
(1023, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-05 21:54:22', '2024-04-05 21:54:22'),
(1024, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 21:54:27', '2024-04-05 21:54:27'),
(1025, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:54:28', '2024-04-05 21:54:28'),
(1026, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:57:19', '2024-04-05 21:57:19'),
(1027, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-05 21:57:29', '2024-04-05 21:57:29'),
(1028, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 21:57:36', '2024-04-05 21:57:36'),
(1029, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:57:37', '2024-04-05 21:57:37'),
(1030, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:27', '2024-04-05 21:58:27'),
(1031, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:27', '2024-04-05 21:58:27'),
(1032, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:28', '2024-04-05 21:58:28'),
(1033, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:28', '2024-04-05 21:58:28'),
(1034, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:32', '2024-04-05 21:58:32'),
(1035, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:35', '2024-04-05 21:58:35'),
(1036, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:38', '2024-04-05 21:58:38'),
(1037, 1, 'admin/category/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:39', '2024-04-05 21:58:39'),
(1038, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:41', '2024-04-05 21:58:41'),
(1039, 1, 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:42', '2024-04-05 21:58:42'),
(1040, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:50', '2024-04-05 21:58:50'),
(1041, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 21:58:54', '2024-04-05 21:58:54'),
(1042, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-05 21:59:44', '2024-04-05 21:59:44'),
(1043, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 21:59:46', '2024-04-05 21:59:46'),
(1044, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-05 21:59:48', '2024-04-05 21:59:48'),
(1045, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"p3pKzBBwbpcbPxuuszTpSCbrbtrhyIi3XSYDkI0t\"}', '2024-04-05 21:59:50', '2024-04-05 21:59:50'),
(1046, 1, 'admin/exam', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"Test exam math\",\"total_no_of_question\":\"100\",\"marks_per_ques\":\"100\",\"test_time\":\"100\",\"pass_marks\":\"50\",\"negative_per\":\".25\",\"_token\":\"p3pKzBBwbpcbPxuuszTpSCbrbtrhyIi3XSYDkI0t\"}', '2024-04-05 22:00:20', '2024-04-05 22:00:20'),
(1047, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-05 22:00:20', '2024-04-05 22:00:20'),
(1048, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-05 22:00:23', '2024-04-05 22:00:23'),
(1049, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 22:00:25', '2024-04-05 22:00:25'),
(1050, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 22:01:31', '2024-04-05 22:01:31'),
(1051, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"p3pKzBBwbpcbPxuuszTpSCbrbtrhyIi3XSYDkI0t\"}', '2024-04-05 22:01:33', '2024-04-05 22:01:33'),
(1052, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 22:03:08', '2024-04-05 22:03:08'),
(1053, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 22:04:09', '2024-04-05 22:04:09'),
(1054, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 22:04:44', '2024-04-05 22:04:44'),
(1055, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"p3pKzBBwbpcbPxuuszTpSCbrbtrhyIi3XSYDkI0t\"}', '2024-04-05 22:04:46', '2024-04-05 22:04:46'),
(1056, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-05 22:06:35', '2024-04-05 22:06:35'),
(1057, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"p3pKzBBwbpcbPxuuszTpSCbrbtrhyIi3XSYDkI0t\"}', '2024-04-05 22:06:37', '2024-04-05 22:06:37'),
(1058, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 06:04:19', '2024-04-06 06:04:19'),
(1059, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:04:27', '2024-04-06 06:04:27'),
(1060, 1, 'admin/category', 'GET', '127.0.0.1', '[]', '2024-04-06 06:07:00', '2024-04-06 06:07:00'),
(1061, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 06:07:13', '2024-04-06 06:07:13'),
(1062, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:07:15', '2024-04-06 06:07:15'),
(1063, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 06:07:22', '2024-04-06 06:07:22'),
(1064, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 06:07:48', '2024-04-06 06:07:48'),
(1065, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:08:01', '2024-04-06 06:08:01'),
(1066, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 06:08:13', '2024-04-06 06:08:13'),
(1067, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:08:44', '2024-04-06 06:08:44'),
(1068, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 06:09:01', '2024-04-06 06:09:01'),
(1069, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 06:09:40', '2024-04-06 06:09:40'),
(1070, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:09:53', '2024-04-06 06:09:53'),
(1071, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 06:10:00', '2024-04-06 06:10:00'),
(1072, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:10:01', '2024-04-06 06:10:01'),
(1073, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"t2jTzTD5C8O8DDTIPOJxOTAwB2QLXV76tUgBcAyZ\"}', '2024-04-06 06:10:04', '2024-04-06 06:10:04'),
(1074, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:10:41', '2024-04-06 06:10:41'),
(1075, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '[]', '2024-04-06 06:10:44', '2024-04-06 06:10:44'),
(1076, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 06:11:48', '2024-04-06 06:11:48'),
(1077, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:11:49', '2024-04-06 06:11:49'),
(1078, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"t2jTzTD5C8O8DDTIPOJxOTAwB2QLXV76tUgBcAyZ\"}', '2024-04-06 06:11:59', '2024-04-06 06:11:59'),
(1079, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:12:12', '2024-04-06 06:12:12'),
(1080, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:12:14', '2024-04-06 06:12:14'),
(1081, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"t2jTzTD5C8O8DDTIPOJxOTAwB2QLXV76tUgBcAyZ\"}', '2024-04-06 06:12:19', '2024-04-06 06:12:19'),
(1082, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"t2jTzTD5C8O8DDTIPOJxOTAwB2QLXV76tUgBcAyZ\"}', '2024-04-06 06:12:30', '2024-04-06 06:12:30'),
(1083, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"t2jTzTD5C8O8DDTIPOJxOTAwB2QLXV76tUgBcAyZ\"}', '2024-04-06 06:12:36', '2024-04-06 06:12:36'),
(1084, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:48', '2024-04-06 06:13:48'),
(1085, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:50', '2024-04-06 06:13:50'),
(1086, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:57', '2024-04-06 06:13:57'),
(1087, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:58', '2024-04-06 06:13:58'),
(1088, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1089, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1090, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1091, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1092, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1093, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1094, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1095, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:13:59', '2024-04-06 06:13:59'),
(1096, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1097, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1098, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1099, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1100, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1101, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1102, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1103, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:00', '2024-04-06 06:14:00'),
(1104, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:01', '2024-04-06 06:14:01'),
(1105, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:01', '2024-04-06 06:14:01'),
(1106, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:01', '2024-04-06 06:14:01'),
(1107, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:01', '2024-04-06 06:14:01'),
(1108, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1109, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1110, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1111, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1112, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1113, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1114, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:03', '2024-04-06 06:14:03'),
(1115, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1116, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1117, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1118, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1119, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1120, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1121, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1122, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1123, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:04', '2024-04-06 06:14:04'),
(1124, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1125, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1126, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1127, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1128, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1129, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1130, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1131, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1132, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1133, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:05', '2024-04-06 06:14:05'),
(1134, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1135, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1136, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1137, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1138, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1139, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1140, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1141, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1142, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:06', '2024-04-06 06:14:06'),
(1143, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1144, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1145, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1146, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1147, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1148, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1149, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1150, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:07', '2024-04-06 06:14:07'),
(1151, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:14:08', '2024-04-06 06:14:08'),
(1152, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:16:02', '2024-04-06 06:16:02'),
(1153, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:16:04', '2024-04-06 06:16:04'),
(1154, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 06:16:07', '2024-04-06 06:16:07'),
(1155, 1, 'admin/question/create', 'GET', '127.0.0.1', '[]', '2024-04-06 06:16:08', '2024-04-06 06:16:08'),
(1156, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"t2jTzTD5C8O8DDTIPOJxOTAwB2QLXV76tUgBcAyZ\"}', '2024-04-06 06:16:45', '2024-04-06 06:16:45'),
(1157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 06:25:44', '2024-04-06 06:25:44'),
(1158, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:25:54', '2024-04-06 06:25:54'),
(1159, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 06:29:03', '2024-04-06 06:29:03'),
(1160, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 06:29:05', '2024-04-06 06:29:05'),
(1161, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 06:29:09', '2024-04-06 06:29:09'),
(1162, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 06:29:57', '2024-04-06 06:29:57'),
(1163, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 06:32:47', '2024-04-06 06:32:47'),
(1164, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 06:32:49', '2024-04-06 06:32:49'),
(1165, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 09:49:59', '2024-04-06 09:49:59'),
(1166, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 09:50:03', '2024-04-06 09:50:03'),
(1167, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 09:50:05', '2024-04-06 09:50:05'),
(1168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 09:50:06', '2024-04-06 09:50:06'),
(1169, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 09:51:30', '2024-04-06 09:51:30'),
(1170, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 09:51:32', '2024-04-06 09:51:32'),
(1171, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 09:51:34', '2024-04-06 09:51:34'),
(1172, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 09:51:35', '2024-04-06 09:51:35'),
(1173, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 09:51:35', '2024-04-06 09:51:35'),
(1174, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 09:51:40', '2024-04-06 09:51:40'),
(1175, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:32', '2024-04-06 10:12:32'),
(1176, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:36', '2024-04-06 10:12:36'),
(1177, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:36', '2024-04-06 10:12:36'),
(1178, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:36', '2024-04-06 10:12:36');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1179, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:36', '2024-04-06 10:12:36'),
(1180, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:36', '2024-04-06 10:12:36'),
(1181, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1182, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1183, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1184, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1185, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1186, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1187, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1188, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1189, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1190, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1191, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1192, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1193, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1194, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1195, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1196, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:37', '2024-04-06 10:12:37'),
(1197, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1198, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1199, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1200, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1201, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1202, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1203, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:40', '2024-04-06 10:12:40'),
(1204, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1205, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1206, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1207, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1208, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1209, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1210, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1211, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1212, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1213, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1214, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1215, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1216, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1217, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:41', '2024-04-06 10:12:41'),
(1218, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:43', '2024-04-06 10:12:43'),
(1219, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1220, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1221, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1222, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1223, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1224, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1225, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1226, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1227, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1228, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1229, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1230, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1231, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1232, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1233, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1234, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1235, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1236, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:46', '2024-04-06 10:12:46'),
(1237, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:47', '2024-04-06 10:12:47'),
(1238, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:47', '2024-04-06 10:12:47'),
(1239, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:47', '2024-04-06 10:12:47'),
(1240, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1241, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1242, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1243, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1244, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1245, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1246, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1247, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1248, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1249, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1250, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1251, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1252, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1253, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1254, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1255, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:49', '2024-04-06 10:12:49'),
(1256, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1257, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1258, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1259, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1260, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1261, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1262, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1263, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1264, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1265, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1266, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:50', '2024-04-06 10:12:50'),
(1267, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1268, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1269, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1270, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1271, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1272, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1273, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1274, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1275, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1276, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1277, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1278, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1279, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1280, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1281, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:51', '2024-04-06 10:12:51'),
(1282, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1283, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1284, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1285, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1286, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1287, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1288, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1289, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1290, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1291, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1292, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1293, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1294, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1295, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1296, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1297, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1298, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:58', '2024-04-06 10:12:58'),
(1299, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:59', '2024-04-06 10:12:59'),
(1300, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:59', '2024-04-06 10:12:59'),
(1301, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:59', '2024-04-06 10:12:59'),
(1302, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:12:59', '2024-04-06 10:12:59'),
(1303, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:13:10', '2024-04-06 10:13:10'),
(1304, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:16:24', '2024-04-06 10:16:24'),
(1305, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-06 10:16:25', '2024-04-06 10:16:25'),
(1306, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:16:27', '2024-04-06 10:16:27'),
(1307, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:16:36', '2024-04-06 10:16:36'),
(1308, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:20:41', '2024-04-06 10:20:41'),
(1309, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:21:04', '2024-04-06 10:21:04'),
(1310, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:24:16', '2024-04-06 10:24:16'),
(1311, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:25:07', '2024-04-06 10:25:07'),
(1312, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:26:01', '2024-04-06 10:26:01'),
(1313, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:26:54', '2024-04-06 10:26:54'),
(1314, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:27:08', '2024-04-06 10:27:08'),
(1315, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:27:38', '2024-04-06 10:27:38'),
(1316, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-06 10:27:52', '2024-04-06 10:27:52'),
(1317, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:27:54', '2024-04-06 10:27:54'),
(1318, 1, 'admin/exam/2', 'GET', '127.0.0.1', '[]', '2024-04-06 10:27:56', '2024-04-06 10:27:56'),
(1319, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:28:00', '2024-04-06 10:28:00'),
(1320, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:30:36', '2024-04-06 10:30:36'),
(1321, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:35:22', '2024-04-06 10:35:22'),
(1322, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:37:08', '2024-04-06 10:37:08'),
(1323, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:37:13', '2024-04-06 10:37:13'),
(1324, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:40:08', '2024-04-06 10:40:08'),
(1325, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:40:53', '2024-04-06 10:40:53'),
(1326, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:41:33', '2024-04-06 10:41:33'),
(1327, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:41:37', '2024-04-06 10:41:37'),
(1328, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:41:48', '2024-04-06 10:41:48'),
(1329, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:42:24', '2024-04-06 10:42:24'),
(1330, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:45:05', '2024-04-06 10:45:05'),
(1331, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:45:59', '2024-04-06 10:45:59'),
(1332, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 10:47:23', '2024-04-06 10:47:23'),
(1333, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:02:30', '2024-04-06 11:02:30'),
(1334, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:03:11', '2024-04-06 11:03:11'),
(1335, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:04:12', '2024-04-06 11:04:12'),
(1336, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:05:23', '2024-04-06 11:05:23'),
(1337, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:06:58', '2024-04-06 11:06:58'),
(1338, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:08:30', '2024-04-06 11:08:30'),
(1339, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:09:12', '2024-04-06 11:09:12'),
(1340, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:09:58', '2024-04-06 11:09:58'),
(1341, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:12:35', '2024-04-06 11:12:35'),
(1342, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:13:39', '2024-04-06 11:13:39'),
(1343, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:13:53', '2024-04-06 11:13:53'),
(1344, 1, 'admin/exam', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,exam_name,marks_per_ques,negative_per,pass_marks,test_time,total_no_of_question,updated_at\"}', '2024-04-06 11:14:13', '2024-04-06 11:14:13'),
(1345, 1, 'admin/exam', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,exam_name,marks_per_ques,negative_per,pass_marks,test_time,total_no_of_question,updated_at\"}', '2024-04-06 11:15:00', '2024-04-06 11:15:00'),
(1346, 1, 'admin/exam', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,exam_name,marks_per_ques,negative_per,pass_marks,test_time,total_no_of_question,updated_at\"}', '2024-04-06 11:15:18', '2024-04-06 11:15:18'),
(1347, 1, 'admin/exam', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,exam_name,marks_per_ques,negative_per,pass_marks,test_time,total_no_of_question,updated_at\"}', '2024-04-06 11:16:10', '2024-04-06 11:16:10'),
(1348, 1, 'admin/exam', 'GET', '127.0.0.1', '{\"_columns_\":\"created_at,deleted_at,exam_name,marks_per_ques,negative_per,pass_marks,test_time,total_no_of_question,updated_at\"}', '2024-04-06 11:17:10', '2024-04-06 11:17:10'),
(1349, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-06 11:17:12', '2024-04-06 11:17:12'),
(1350, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:21:47', '2024-04-06 11:21:47'),
(1351, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:24:14', '2024-04-06 11:24:14'),
(1352, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:24:27', '2024-04-06 11:24:27'),
(1353, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:27:23', '2024-04-06 11:27:23'),
(1354, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:27:32', '2024-04-06 11:27:32'),
(1355, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:27:41', '2024-04-06 11:27:41'),
(1356, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-06 11:27:44', '2024-04-06 11:27:44'),
(1357, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:27:45', '2024-04-06 11:27:45'),
(1358, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:29:43', '2024-04-06 11:29:43'),
(1359, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:34:31', '2024-04-06 11:34:31'),
(1360, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 11:34:44', '2024-04-06 11:34:44'),
(1361, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:13:25', '2024-04-06 12:13:25'),
(1362, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:13:49', '2024-04-06 12:13:49'),
(1363, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:14:07', '2024-04-06 12:14:07'),
(1364, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '{\"ids\":[\"3\",\"4\"]}', '2024-04-06 12:14:25', '2024-04-06 12:14:25'),
(1365, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Exam\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchEdit\",\"_key\":\"2,3,4\",\"_token\":\"NQIgYP4f7Amn5sSVF7TordmltRN8APhdSfkO8GIM\"}', '2024-04-06 12:14:25', '2024-04-06 12:14:25'),
(1366, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '{\"ids\":[\"3\",\"4\"]}', '2024-04-06 12:14:25', '2024-04-06 12:14:25'),
(1367, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:14:30', '2024-04-06 12:14:30'),
(1368, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:14:54', '2024-04-06 12:14:54'),
(1369, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:15:08', '2024-04-06 12:15:08'),
(1370, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:18:05', '2024-04-06 12:18:05'),
(1371, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:18:26', '2024-04-06 12:18:26'),
(1372, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:22:57', '2024-04-06 12:22:57'),
(1373, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:23:38', '2024-04-06 12:23:38'),
(1374, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:29:06', '2024-04-06 12:29:06'),
(1375, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:40:28', '2024-04-06 12:40:28'),
(1376, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:46:18', '2024-04-06 12:46:18'),
(1377, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:46:45', '2024-04-06 12:46:45'),
(1378, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:48:13', '2024-04-06 12:48:13'),
(1379, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:49:52', '2024-04-06 12:49:52'),
(1380, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:50:34', '2024-04-06 12:50:34'),
(1381, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:50:55', '2024-04-06 12:50:55'),
(1382, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:51:06', '2024-04-06 12:51:06'),
(1383, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:51:13', '2024-04-06 12:51:13'),
(1384, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:51:37', '2024-04-06 12:51:37'),
(1385, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:52:32', '2024-04-06 12:52:32'),
(1386, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:52:40', '2024-04-06 12:52:40'),
(1387, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:52:47', '2024-04-06 12:52:47'),
(1388, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:52:51', '2024-04-06 12:52:51'),
(1389, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:53:35', '2024-04-06 12:53:35'),
(1390, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:53:41', '2024-04-06 12:53:41'),
(1391, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 12:55:45', '2024-04-06 12:55:45'),
(1392, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:43', '2024-04-06 13:07:43'),
(1393, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:44', '2024-04-06 13:07:44'),
(1394, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:45', '2024-04-06 13:07:45'),
(1395, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:50', '2024-04-06 13:07:50'),
(1396, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:51', '2024-04-06 13:07:51'),
(1397, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:51', '2024-04-06 13:07:51'),
(1398, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:07:55', '2024-04-06 13:07:55'),
(1399, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:10:20', '2024-04-06 13:10:20'),
(1400, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:10:27', '2024-04-06 13:10:27'),
(1401, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:10:28', '2024-04-06 13:10:28'),
(1402, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-06 13:10:29', '2024-04-06 13:10:29'),
(1403, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:10:30', '2024-04-06 13:10:30'),
(1404, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:13:17', '2024-04-06 13:13:17'),
(1405, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:13:44', '2024-04-06 13:13:44'),
(1406, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:14:18', '2024-04-06 13:14:18'),
(1407, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:17:42', '2024-04-06 13:17:42'),
(1408, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:18:22', '2024-04-06 13:18:22'),
(1409, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:21:12', '2024-04-06 13:21:12'),
(1410, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:21:38', '2024-04-06 13:21:38'),
(1411, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:21:46', '2024-04-06 13:21:46'),
(1412, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:21:54', '2024-04-06 13:21:54'),
(1413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 13:23:14', '2024-04-06 13:23:14'),
(1414, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-04-06 13:23:19', '2024-04-06 13:23:19'),
(1415, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-06 13:23:27', '2024-04-06 13:23:27'),
(1416, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:00', '2024-04-06 13:24:00'),
(1417, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:15', '2024-04-06 13:24:15'),
(1418, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:17', '2024-04-06 13:24:17'),
(1419, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1420, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1421, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1422, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1423, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1424, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1425, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1426, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1427, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1428, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1429, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1430, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1431, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1432, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1433, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1434, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1435, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1436, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1437, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1438, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1439, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:18', '2024-04-06 13:24:18'),
(1440, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1441, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1442, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1443, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1444, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1445, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1446, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1447, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1448, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1449, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1450, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1451, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1452, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1453, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1454, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1455, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1456, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1457, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1458, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1459, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1460, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:20', '2024-04-06 13:24:20'),
(1461, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1462, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1463, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1464, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1465, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1466, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1467, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1468, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1469, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1470, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1471, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1472, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1473, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1474, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1475, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1476, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1477, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1478, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1479, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1480, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1481, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:21', '2024-04-06 13:24:21'),
(1482, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1483, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1484, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1485, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1486, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1487, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1488, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1489, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1490, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1491, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1492, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1493, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1494, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1495, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1496, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1497, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1498, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1499, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1500, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1501, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1502, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:22', '2024-04-06 13:24:22'),
(1503, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1504, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1505, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1506, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1507, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1508, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1509, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1510, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1511, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1512, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1513, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1514, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1515, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1516, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1517, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1518, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1519, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1520, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1521, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1522, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1523, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:23', '2024-04-06 13:24:23'),
(1524, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1525, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1526, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1527, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1528, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1529, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1530, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1531, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:24', '2024-04-06 13:24:24'),
(1532, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1533, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1534, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1535, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1536, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1537, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1538, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1539, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1540, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1541, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1542, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1543, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1544, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1545, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1546, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1547, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1548, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1549, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1550, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1551, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1552, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1553, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1554, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1555, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1556, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1557, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1558, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1559, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1560, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1561, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:25', '2024-04-06 13:24:25'),
(1562, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:26', '2024-04-06 13:24:26'),
(1563, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:26', '2024-04-06 13:24:26'),
(1564, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:26', '2024-04-06 13:24:26'),
(1565, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:26', '2024-04-06 13:24:26'),
(1566, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1567, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1568, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1569, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1570, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1571, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1572, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1573, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1574, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1575, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1576, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1577, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1578, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1579, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1580, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1581, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1582, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1583, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1584, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1585, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1586, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:34', '2024-04-06 13:24:34'),
(1587, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1588, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1589, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1590, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1591, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1592, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1593, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1594, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1595, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1596, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1597, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1598, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1599, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1600, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1601, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1602, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1603, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1604, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1605, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1606, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1607, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:35', '2024-04-06 13:24:35'),
(1608, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1609, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1610, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1611, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1612, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1613, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1614, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1615, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1616, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1617, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1618, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1619, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1620, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1621, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1622, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1623, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1624, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1625, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1626, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1627, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1628, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-06 13:24:36', '2024-04-06 13:24:36'),
(1629, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 13:29:52', '2024-04-06 13:29:52'),
(1630, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-06 13:29:54', '2024-04-06 13:29:54'),
(1631, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-06 13:29:57', '2024-04-06 13:29:57'),
(1632, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 06:44:56', '2024-04-07 06:44:56'),
(1633, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:45:01', '2024-04-07 06:45:01'),
(1634, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:53:12', '2024-04-07 06:53:12'),
(1635, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:53:17', '2024-04-07 06:53:17'),
(1636, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-04-07 06:56:08', '2024-04-07 06:56:08'),
(1637, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:56:11', '2024-04-07 06:56:11'),
(1638, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:56:14', '2024-04-07 06:56:14'),
(1639, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:00', '2024-04-07 06:57:00'),
(1640, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:01', '2024-04-07 06:57:01'),
(1641, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:02', '2024-04-07 06:57:02'),
(1642, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:02', '2024-04-07 06:57:02'),
(1643, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:02', '2024-04-07 06:57:02'),
(1644, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:03', '2024-04-07 06:57:03'),
(1645, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:03', '2024-04-07 06:57:03'),
(1646, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:04', '2024-04-07 06:57:04'),
(1647, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:05', '2024-04-07 06:57:05'),
(1648, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 06:57:06', '2024-04-07 06:57:06'),
(1649, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 07:33:49', '2024-04-07 07:33:49'),
(1650, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:33:56', '2024-04-07 07:33:56'),
(1651, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:19', '2024-04-07 07:34:19'),
(1652, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:20', '2024-04-07 07:34:20'),
(1653, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:22', '2024-04-07 07:34:22'),
(1654, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:24', '2024-04-07 07:34:24'),
(1655, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:26', '2024-04-07 07:34:26'),
(1656, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:28', '2024-04-07 07:34:28'),
(1657, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:30', '2024-04-07 07:34:30'),
(1658, 1, 'admin/exam/2', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:33', '2024-04-07 07:34:33'),
(1659, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:34:35', '2024-04-07 07:34:35'),
(1660, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:35:27', '2024-04-07 07:35:27'),
(1661, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:36:10', '2024-04-07 07:36:10'),
(1662, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:40:22', '2024-04-07 07:40:22'),
(1663, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:41:10', '2024-04-07 07:41:10'),
(1664, 1, 'admin/exam/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:42:26', '2024-04-07 07:42:26'),
(1665, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:42:42', '2024-04-07 07:42:42'),
(1666, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:42:46', '2024-04-07 07:42:46'),
(1667, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:42:47', '2024-04-07 07:42:47'),
(1668, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:42:49', '2024-04-07 07:42:49'),
(1669, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:42:49', '2024-04-07 07:42:49'),
(1670, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:43:09', '2024-04-07 07:43:09'),
(1671, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:43:28', '2024-04-07 07:43:28'),
(1672, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 07:45:41', '2024-04-07 07:45:41'),
(1673, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 07:45:49', '2024-04-07 07:45:49'),
(1674, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:34', '2024-04-07 07:46:34'),
(1675, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:36', '2024-04-07 07:46:36'),
(1676, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:37', '2024-04-07 07:46:37'),
(1677, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:38', '2024-04-07 07:46:38'),
(1678, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:38', '2024-04-07 07:46:38'),
(1679, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:39', '2024-04-07 07:46:39');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1680, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:40', '2024-04-07 07:46:40'),
(1681, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:41', '2024-04-07 07:46:41'),
(1682, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:43', '2024-04-07 07:46:43'),
(1683, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:46:43', '2024-04-07 07:46:43'),
(1684, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:48:22', '2024-04-07 07:48:22'),
(1685, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:48:37', '2024-04-07 07:48:37'),
(1686, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-07 07:48:41', '2024-04-07 07:48:41'),
(1687, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:48:56', '2024-04-07 07:48:56'),
(1688, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:48:59', '2024-04-07 07:48:59'),
(1689, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:49:01', '2024-04-07 07:49:01'),
(1690, 1, 'admin/question', 'GET', '127.0.0.1', '[]', '2024-04-07 07:49:09', '2024-04-07 07:49:09'),
(1691, 1, 'admin/question/2', 'GET', '127.0.0.1', '[]', '2024-04-07 07:49:11', '2024-04-07 07:49:11'),
(1692, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 07:53:09', '2024-04-07 07:53:09'),
(1693, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:53:13', '2024-04-07 07:53:13'),
(1694, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:55:07', '2024-04-07 07:55:07'),
(1695, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:55:11', '2024-04-07 07:55:11'),
(1696, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:55:12', '2024-04-07 07:55:12'),
(1697, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:55:16', '2024-04-07 07:55:16'),
(1698, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:55:49', '2024-04-07 07:55:49'),
(1699, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-07 07:56:00', '2024-04-07 07:56:00'),
(1700, 1, 'admin/auth/menu/36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 07:56:05', '2024-04-07 07:56:05'),
(1701, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-07 07:56:05', '2024-04-07 07:56:05'),
(1702, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-07 07:56:09', '2024-04-07 07:56:09'),
(1703, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 07:56:11', '2024-04-07 07:56:11'),
(1704, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:11:27', '2024-04-07 08:11:27'),
(1705, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:12:08', '2024-04-07 08:12:08'),
(1706, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:15:01', '2024-04-07 08:15:01'),
(1707, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:33:31', '2024-04-07 08:33:31'),
(1708, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:33:34', '2024-04-07 08:33:34'),
(1709, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:38', '2024-04-07 08:45:38'),
(1710, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:41', '2024-04-07 08:45:41'),
(1711, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:44', '2024-04-07 08:45:44'),
(1712, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:46', '2024-04-07 08:45:46'),
(1713, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:48', '2024-04-07 08:45:48'),
(1714, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:49', '2024-04-07 08:45:49'),
(1715, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:50', '2024-04-07 08:45:50'),
(1716, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:51', '2024-04-07 08:45:51'),
(1717, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:52', '2024-04-07 08:45:52'),
(1718, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:53', '2024-04-07 08:45:53'),
(1719, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:54', '2024-04-07 08:45:54'),
(1720, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:55', '2024-04-07 08:45:55'),
(1721, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:45:59', '2024-04-07 08:45:59'),
(1722, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 08:46:02', '2024-04-07 08:46:02'),
(1723, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 09:26:29', '2024-04-07 09:26:29'),
(1724, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-04-07 09:35:45', '2024-04-07 09:35:45'),
(1725, 1, 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"admin:import\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 09:36:16', '2024-04-07 09:36:16'),
(1726, 1, 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"admin:controller QuestionController\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 09:37:12', '2024-04-07 09:37:12'),
(1727, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-04-07 09:37:28', '2024-04-07 09:37:28'),
(1728, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 09:37:30', '2024-04-07 09:37:30'),
(1729, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-07 09:40:19', '2024-04-07 09:40:19'),
(1730, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"question\",\"model_name\":\"App\\\\Models\\\\Question\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\QuestionController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"exam_id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question_text\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_a\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_b\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_c\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"option_d\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer_text\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer_option\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 09:43:47', '2024-04-07 09:43:47'),
(1731, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-07 09:43:47', '2024-04-07 09:43:47'),
(1732, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-04-07 09:44:20', '2024-04-07 09:44:20'),
(1733, 1, 'admin/questions', 'GET', '127.0.0.1', '[]', '2024-04-07 09:44:48', '2024-04-07 09:44:48'),
(1734, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:51:05', '2024-04-07 09:51:05'),
(1735, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:51:32', '2024-04-07 09:51:32'),
(1736, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:51:42', '2024-04-07 09:51:42'),
(1737, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:53:07', '2024-04-07 09:53:07'),
(1738, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:54:04', '2024-04-07 09:54:04'),
(1739, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:54:38', '2024-04-07 09:54:38'),
(1740, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 09:55:02', '2024-04-07 09:55:02'),
(1741, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:01:07', '2024-04-07 10:01:07'),
(1742, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:04:09', '2024-04-07 10:04:09'),
(1743, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:05:10', '2024-04-07 10:05:10'),
(1744, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:07:06', '2024-04-07 10:07:06'),
(1745, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:07:25', '2024-04-07 10:07:25'),
(1746, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:07:34', '2024-04-07 10:07:34'),
(1747, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:08:19', '2024-04-07 10:08:19'),
(1748, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:08:40', '2024-04-07 10:08:40'),
(1749, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:08:41', '2024-04-07 10:08:41'),
(1750, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:08:56', '2024-04-07 10:08:56'),
(1751, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:09:03', '2024-04-07 10:09:03'),
(1752, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:09:20', '2024-04-07 10:09:20'),
(1753, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:09:32', '2024-04-07 10:09:32'),
(1754, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:09:35', '2024-04-07 10:09:35'),
(1755, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:09:46', '2024-04-07 10:09:46'),
(1756, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:09:53', '2024-04-07 10:09:53'),
(1757, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:10:08', '2024-04-07 10:10:08'),
(1758, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:10:10', '2024-04-07 10:10:10'),
(1759, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:10:16', '2024-04-07 10:10:16'),
(1760, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:10:30', '2024-04-07 10:10:30'),
(1761, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:10:32', '2024-04-07 10:10:32'),
(1762, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:01', '2024-04-07 10:12:01'),
(1763, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:20', '2024-04-07 10:12:20'),
(1764, 1, 'admin/auth/menu/37', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 10:12:28', '2024-04-07 10:12:28'),
(1765, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:28', '2024-04-07 10:12:28'),
(1766, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:30', '2024-04-07 10:12:30'),
(1767, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:34', '2024-04-07 10:12:34'),
(1768, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:36', '2024-04-07 10:12:36'),
(1769, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:12:43', '2024-04-07 10:12:43'),
(1770, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:28:57', '2024-04-07 10:28:57'),
(1771, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:28:58', '2024-04-07 10:28:58'),
(1772, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:33:25', '2024-04-07 10:33:25'),
(1773, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:33:26', '2024-04-07 10:33:26'),
(1774, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:33:35', '2024-04-07 10:33:35'),
(1775, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:35:14', '2024-04-07 10:35:14'),
(1776, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:35:30', '2024-04-07 10:35:30'),
(1777, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:35:37', '2024-04-07 10:35:37'),
(1778, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:35:55', '2024-04-07 10:35:55'),
(1779, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:36:14', '2024-04-07 10:36:14'),
(1780, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:36:21', '2024-04-07 10:36:21'),
(1781, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:36:36', '2024-04-07 10:36:36'),
(1782, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:37:22', '2024-04-07 10:37:22'),
(1783, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:37:26', '2024-04-07 10:37:26'),
(1784, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:28', '2024-04-07 10:39:28'),
(1785, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:32', '2024-04-07 10:39:32'),
(1786, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:34', '2024-04-07 10:39:34'),
(1787, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:39', '2024-04-07 10:39:39'),
(1788, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:42', '2024-04-07 10:39:42'),
(1789, 1, 'admin/orders', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:45', '2024-04-07 10:39:45'),
(1790, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:47', '2024-04-07 10:39:47'),
(1791, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:48', '2024-04-07 10:39:48'),
(1792, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 10:39:56', '2024-04-07 10:39:56'),
(1793, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:01', '2024-04-07 10:40:01'),
(1794, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:12', '2024-04-07 10:40:12'),
(1795, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:15', '2024-04-07 10:40:15'),
(1796, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:17', '2024-04-07 10:40:17'),
(1797, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:20', '2024-04-07 10:40:20'),
(1798, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:28', '2024-04-07 10:40:28'),
(1799, 1, 'admin/exam/3/edit', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:32', '2024-04-07 10:40:32'),
(1800, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 10:40:37', '2024-04-07 10:40:37'),
(1801, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 10:40:40', '2024-04-07 10:40:40'),
(1802, 1, 'admin/exam/3', 'PUT', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"sefs\",\"total_no_of_question\":\"34\",\"marks_per_ques\":\"24\",\"test_time\":\"234\",\"pass_marks\":\"234\",\"negative_per\":\".25\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\",\"_method\":\"PUT\"}', '2024-04-07 10:40:43', '2024-04-07 10:40:43'),
(1803, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:43', '2024-04-07 10:40:43'),
(1804, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-07 10:40:57', '2024-04-07 10:40:57'),
(1805, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 10:49:56', '2024-04-07 10:49:56'),
(1806, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 12:20:25', '2024-04-07 12:20:25'),
(1807, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 12:20:26', '2024-04-07 12:20:26'),
(1808, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-07 12:20:28', '2024-04-07 12:20:28'),
(1809, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 12:20:30', '2024-04-07 12:20:30'),
(1810, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-07 12:20:57', '2024-04-07 12:20:57'),
(1811, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 12:21:00', '2024-04-07 12:21:00'),
(1812, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 12:21:02', '2024-04-07 12:21:02'),
(1813, 1, 'admin/exam/2', 'PUT', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"3\",\"exam_name\":\"Test exam1\",\"total_no_of_question\":\"100\",\"marks_per_ques\":\"1\",\"test_time\":\"0\",\"pass_marks\":\"50\",\"negative_per\":\".25\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\",\"_method\":\"PUT\"}', '2024-04-07 12:21:06', '2024-04-07 12:21:06'),
(1814, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 12:21:06', '2024-04-07 12:21:06'),
(1815, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 12:21:18', '2024-04-07 12:21:18'),
(1816, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 12:21:58', '2024-04-07 12:21:58'),
(1817, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:22:02', '2024-04-07 12:22:02'),
(1818, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:52:12', '2024-04-07 12:52:12'),
(1819, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:53:32', '2024-04-07 12:53:32'),
(1820, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:55:17', '2024-04-07 12:55:17'),
(1821, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:57:29', '2024-04-07 12:57:29'),
(1822, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:57:51', '2024-04-07 12:57:51'),
(1823, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:58:01', '2024-04-07 12:58:01'),
(1824, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:58:05', '2024-04-07 12:58:05'),
(1825, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:58:47', '2024-04-07 12:58:47'),
(1826, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 12:58:55', '2024-04-07 12:58:55'),
(1827, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 13:00:52', '2024-04-07 13:00:52'),
(1828, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 13:01:19', '2024-04-07 13:01:19'),
(1829, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 13:01:35', '2024-04-07 13:01:35'),
(1830, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 13:02:50', '2024-04-07 13:02:50'),
(1831, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:02:59', '2024-04-07 13:02:59'),
(1832, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:03:03', '2024-04-07 13:03:03'),
(1833, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:03:25', '2024-04-07 13:03:25'),
(1834, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:04:32', '2024-04-07 13:04:32'),
(1835, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:04:45', '2024-04-07 13:04:45'),
(1836, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 13:04:48', '2024-04-07 13:04:48'),
(1837, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 13:05:17', '2024-04-07 13:05:17'),
(1838, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 13:06:22', '2024-04-07 13:06:22'),
(1839, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:06:32', '2024-04-07 13:06:32'),
(1840, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-07 13:06:34', '2024-04-07 13:06:34'),
(1841, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:06:37', '2024-04-07 13:06:37'),
(1842, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:06:39', '2024-04-07 13:06:39'),
(1843, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:06:42', '2024-04-07 13:06:42'),
(1844, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:07:06', '2024-04-07 13:07:06'),
(1845, 1, 'admin/questions/2', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-04-07 13:07:14', '2024-04-07 13:07:14'),
(1846, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:16:33', '2024-04-07 13:16:33'),
(1847, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:16:39', '2024-04-07 13:16:39'),
(1848, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:16:51', '2024-04-07 13:16:51'),
(1849, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:16:56', '2024-04-07 13:16:56'),
(1850, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 13:17:00', '2024-04-07 13:17:00'),
(1851, 1, 'admin/questions/2', 'POST', '127.0.0.1', '{\"course_category\":\"2\",\"search_terms\":null,\"subcategory\":\"1\",\"exam_name\":\"zx\",\"total_no_of_question\":\"3\",\"marks_per_ques\":\"23\",\"test_time\":\"23\",\"pass_marks\":\"23\",\"negative_per\":\".30\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 13:17:14', '2024-04-07 13:17:14'),
(1852, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:17:14', '2024-04-07 13:17:14'),
(1853, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:17:55', '2024-04-07 13:17:55'),
(1854, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:18:11', '2024-04-07 13:18:11'),
(1855, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:18:25', '2024-04-07 13:18:25'),
(1856, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-07 13:18:31', '2024-04-07 13:18:31'),
(1857, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:18:39', '2024-04-07 13:18:39'),
(1858, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:18:41', '2024-04-07 13:18:41'),
(1859, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-07 13:19:41', '2024-04-07 13:19:41'),
(1860, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:19:43', '2024-04-07 13:19:43'),
(1861, 1, 'admin/questions/3', 'GET', '127.0.0.1', '[]', '2024-04-07 13:20:02', '2024-04-07 13:20:02'),
(1862, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:20:06', '2024-04-07 13:20:06'),
(1863, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:20:08', '2024-04-07 13:20:08'),
(1864, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:20:09', '2024-04-07 13:20:09'),
(1865, 1, 'admin/questions/5', 'GET', '127.0.0.1', '[]', '2024-04-07 13:20:11', '2024-04-07 13:20:11'),
(1866, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:20:13', '2024-04-07 13:20:13'),
(1867, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:24:26', '2024-04-07 13:24:26'),
(1868, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:24:51', '2024-04-07 13:24:51'),
(1869, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:26:03', '2024-04-07 13:26:03'),
(1870, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:26:30', '2024-04-07 13:26:30'),
(1871, 1, 'admin/questions/1', 'GET', '127.0.0.1', '[]', '2024-04-07 13:28:24', '2024-04-07 13:28:24'),
(1872, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:28:33', '2024-04-07 13:28:33'),
(1873, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:28:36', '2024-04-07 13:28:36'),
(1874, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:28:38', '2024-04-07 13:28:38'),
(1875, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:28:50', '2024-04-07 13:28:50'),
(1876, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:30:46', '2024-04-07 13:30:46'),
(1877, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:30:49', '2024-04-07 13:30:49'),
(1878, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:32:11', '2024-04-07 13:32:11'),
(1879, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:32:21', '2024-04-07 13:32:21'),
(1880, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:39:49', '2024-04-07 13:39:49'),
(1881, 1, 'admin/subcategories/subcatbycat', 'POST', '127.0.0.1', '{\"query\":\"2\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 13:39:55', '2024-04-07 13:39:55'),
(1882, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:40:24', '2024-04-07 13:40:24'),
(1883, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:40:26', '2024-04-07 13:40:26'),
(1884, 1, 'admin/questions/1', 'GET', '127.0.0.1', '[]', '2024-04-07 13:40:44', '2024-04-07 13:40:44'),
(1885, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:45:48', '2024-04-07 13:45:48'),
(1886, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:45:50', '2024-04-07 13:45:50'),
(1887, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:51:54', '2024-04-07 13:51:54'),
(1888, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:14', '2024-04-07 13:52:14'),
(1889, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:22', '2024-04-07 13:52:22'),
(1890, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:23', '2024-04-07 13:52:23'),
(1891, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:30', '2024-04-07 13:52:30'),
(1892, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:31', '2024-04-07 13:52:31'),
(1893, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:35', '2024-04-07 13:52:35'),
(1894, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-07 13:52:37', '2024-04-07 13:52:37'),
(1895, 1, 'admin/questions/2', 'POST', '127.0.0.1', '{\"exam_id\":null,\"question_text\":\"as\",\"option_a\":\"as\",\"option_b\":\"as\",\"option_c\":\"as\",\"option_d\":\"asd\",\"answer_text\":\"asd\",\"answer_option\":\"as\",\"_token\":\"8bFmfBmWzPcoabgC0BpxzNChkxCMZfDKzX38qfcj\"}', '2024-04-07 13:53:01', '2024-04-07 13:53:01'),
(1896, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:53:01', '2024-04-07 13:53:01'),
(1897, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-07 13:56:13', '2024-04-07 13:56:13'),
(1898, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 07:07:52', '2024-04-08 07:07:52'),
(1899, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 07:07:55', '2024-04-08 07:07:55'),
(1900, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 07:07:56', '2024-04-08 07:07:56'),
(1901, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 07:08:01', '2024-04-08 07:08:01'),
(1902, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 07:08:02', '2024-04-08 07:08:02'),
(1903, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 07:08:03', '2024-04-08 07:08:03'),
(1904, 1, 'admin/questions/5', 'GET', '127.0.0.1', '[]', '2024-04-08 07:08:08', '2024-04-08 07:08:08'),
(1905, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 07:08:11', '2024-04-08 07:08:11'),
(1906, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 07:08:16', '2024-04-08 07:08:16'),
(1907, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:02', '2024-04-08 23:34:02'),
(1908, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:07', '2024-04-08 23:34:07'),
(1909, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:08', '2024-04-08 23:34:08'),
(1910, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:09', '2024-04-08 23:34:09'),
(1911, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:21', '2024-04-08 23:34:21'),
(1912, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:22', '2024-04-08 23:34:22'),
(1913, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:25', '2024-04-08 23:34:25'),
(1914, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:34:26', '2024-04-08 23:34:26'),
(1915, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:16', '2024-04-08 23:47:16'),
(1916, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:20', '2024-04-08 23:47:20'),
(1917, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:23', '2024-04-08 23:47:23'),
(1918, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:24', '2024-04-08 23:47:24'),
(1919, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:28', '2024-04-08 23:47:28'),
(1920, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:33', '2024-04-08 23:47:33'),
(1921, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:38', '2024-04-08 23:47:38'),
(1922, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:40', '2024-04-08 23:47:40'),
(1923, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-08 23:47:57', '2024-04-08 23:47:57'),
(1924, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:48:02', '2024-04-08 23:48:02'),
(1925, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:48:06', '2024-04-08 23:48:06'),
(1926, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:48:07', '2024-04-08 23:48:07'),
(1927, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:48:42', '2024-04-08 23:48:42'),
(1928, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-08 23:48:49', '2024-04-08 23:48:49'),
(1929, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:05', '2024-04-08 23:51:05'),
(1930, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:08', '2024-04-08 23:51:08'),
(1931, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:09', '2024-04-08 23:51:09'),
(1932, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:10', '2024-04-08 23:51:10'),
(1933, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:11', '2024-04-08 23:51:11'),
(1934, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:47', '2024-04-08 23:51:47'),
(1935, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:56', '2024-04-08 23:51:56'),
(1936, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-08 23:51:59', '2024-04-08 23:51:59'),
(1937, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-08 23:54:10', '2024-04-08 23:54:10'),
(1938, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:54:13', '2024-04-08 23:54:13'),
(1939, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:54:15', '2024-04-08 23:54:15'),
(1940, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-08 23:54:19', '2024-04-08 23:54:19'),
(1941, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-08 23:54:20', '2024-04-08 23:54:20'),
(1942, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-08 23:54:22', '2024-04-08 23:54:22'),
(1943, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 00:46:50', '2024-04-09 00:46:50'),
(1944, 1, 'admin/exam/2/edit', 'GET', '127.0.0.1', '[]', '2024-04-09 00:46:53', '2024-04-09 00:46:53'),
(1945, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 00:46:55', '2024-04-09 00:46:55'),
(1946, 1, 'admin/questions/4', 'GET', '127.0.0.1', '[]', '2024-04-09 00:46:57', '2024-04-09 00:46:57'),
(1947, 1, 'admin/questions/4/create', 'GET', '127.0.0.1', '[]', '2024-04-09 00:46:58', '2024-04-09 00:46:58'),
(1948, 1, 'admin/questions/4/create', 'GET', '127.0.0.1', '[]', '2024-04-09 01:20:59', '2024-04-09 01:20:59'),
(1949, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:13', '2024-04-09 01:21:13'),
(1950, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:14', '2024-04-09 01:21:14'),
(1951, 1, 'admin/coursecategory', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:17', '2024-04-09 01:21:17'),
(1952, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:17', '2024-04-09 01:21:17'),
(1953, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:19', '2024-04-09 01:21:19'),
(1954, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:23', '2024-04-09 01:21:23'),
(1955, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:24', '2024-04-09 01:21:24'),
(1956, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-04-09 01:21:31', '2024-04-09 01:21:31'),
(1957, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-09 02:48:09', '2024-04-09 02:48:09'),
(1958, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 02:48:12', '2024-04-09 02:48:12'),
(1959, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 02:48:15', '2024-04-09 02:48:15'),
(1960, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 02:48:20', '2024-04-09 02:48:20'),
(1961, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 02:48:22', '2024-04-09 02:48:22'),
(1962, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:28:57', '2024-04-09 03:28:57'),
(1963, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 03:29:00', '2024-04-09 03:29:00'),
(1964, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:29:01', '2024-04-09 03:29:01'),
(1965, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:29:21', '2024-04-09 03:29:21'),
(1966, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 03:29:24', '2024-04-09 03:29:24'),
(1967, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:29:25', '2024-04-09 03:29:25'),
(1968, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:29:26', '2024-04-09 03:29:26'),
(1969, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:30:21', '2024-04-09 03:30:21'),
(1970, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:42:43', '2024-04-09 03:42:43'),
(1971, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:49:43', '2024-04-09 03:49:43'),
(1972, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:49:58', '2024-04-09 03:49:58'),
(1973, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:50:13', '2024-04-09 03:50:13'),
(1974, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:50:21', '2024-04-09 03:50:21'),
(1975, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:50:24', '2024-04-09 03:50:24'),
(1976, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:50:28', '2024-04-09 03:50:28'),
(1977, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Question\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchEdit\",\"_key\":\"1\",\"_token\":\"3H9lie5doqJBz1T5eFRvuHNwiFohXg1HX0LB7Avl\"}', '2024-04-09 03:50:33', '2024-04-09 03:50:33'),
(1978, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:50:35', '2024-04-09 03:50:35'),
(1979, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 03:50:37', '2024-04-09 03:50:37'),
(1980, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 03:51:39', '2024-04-09 03:51:39'),
(1981, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 03:51:50', '2024-04-09 03:51:50'),
(1982, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-09 04:12:57', '2024-04-09 04:12:57'),
(1983, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 04:13:00', '2024-04-09 04:13:00'),
(1984, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 04:13:12', '2024-04-09 04:13:12'),
(1985, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 04:13:31', '2024-04-09 04:13:31'),
(1986, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:13', '2024-04-09 04:29:13'),
(1987, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:23', '2024-04-09 04:29:23'),
(1988, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:24', '2024-04-09 04:29:24'),
(1989, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:25', '2024-04-09 04:29:25'),
(1990, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:33', '2024-04-09 04:29:33'),
(1991, 1, 'admin/studymaterials', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:34', '2024-04-09 04:29:34'),
(1992, 1, 'admin/studymaterials/create', 'GET', '127.0.0.1', '[]', '2024-04-09 04:29:36', '2024-04-09 04:29:36'),
(1993, 1, 'admin/courses/coursebycat', 'POST', '127.0.0.1', '{\"query\":\"1\",\"_token\":\"3H9lie5doqJBz1T5eFRvuHNwiFohXg1HX0LB7Avl\"}', '2024-04-09 04:29:38', '2024-04-09 04:29:38'),
(1994, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 04:46:34', '2024-04-09 04:46:34'),
(1995, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 04:46:36', '2024-04-09 04:46:36'),
(1996, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 04:46:37', '2024-04-09 04:46:37'),
(1997, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:48', '2024-04-09 05:28:48'),
(1998, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(1999, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(2000, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(2001, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(2002, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(2003, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(2004, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:50', '2024-04-09 05:28:50'),
(2005, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2006, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2007, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2008, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2009, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2010, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2011, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2012, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2013, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2014, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2015, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2016, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:51', '2024-04-09 05:28:51'),
(2017, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:52', '2024-04-09 05:28:52'),
(2018, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:52', '2024-04-09 05:28:52'),
(2019, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:55', '2024-04-09 05:28:55'),
(2020, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:57', '2024-04-09 05:28:57'),
(2021, 1, 'admin/exam/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:28:58', '2024-04-09 05:28:58'),
(2022, 1, 'admin/exam', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:01', '2024-04-09 05:29:01'),
(2023, 1, 'admin/questions/2', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:02', '2024-04-09 05:29:02'),
(2024, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2025, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2026, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2027, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2028, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2029, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2030, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:07', '2024-04-09 05:29:07'),
(2031, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2032, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2033, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2034, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2035, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2036, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2037, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2038, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2039, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2040, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2041, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2042, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2043, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:08', '2024-04-09 05:29:08'),
(2044, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:29:09', '2024-04-09 05:29:09'),
(2045, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:30:00', '2024-04-09 05:30:00'),
(2046, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:30:15', '2024-04-09 05:30:15'),
(2047, 1, 'admin/questions/2/create', 'GET', '127.0.0.1', '[]', '2024-04-09 05:31:58', '2024-04-09 05:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-03-26 05:33:36', '2024-03-26 05:33:36'),
(8, 'Student order', 'orders', '', '/orders/', '2024-03-28 06:56:43', '2024-03-28 07:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-03-26 05:32:26', '2024-03-26 05:32:26'),
(2, 'Student', 'student', '2024-03-26 23:40:21', '2024-03-26 23:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 33, NULL, NULL),
(2, 33, NULL, NULL),
(2, 20, NULL, NULL),
(1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(190) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$Mv9lPzF2ATPoo7.fuf5jTOeE8APWx2E5doOKKSqjMSkl/uvv08TN6', 'Administrator', '', NULL, '2024-03-26 05:32:26', '2024-03-27 00:57:02'),
(2, 'neeraj', '$2y$12$K4aWe9BchPJaxzdpPAAWB.Zf.TJdlzScUMYFtW3hWRE51.08mExmS', 'Neerah', NULL, NULL, '2024-03-26 23:39:44', '2024-03-26 23:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `page_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prelims', '', '2024-03-26 08:49:14', '2024-03-26 08:49:14', NULL),
(2, 'Mains', '', '2024-03-26 08:49:18', '2024-03-26 08:49:18', NULL),
(3, 'test', 'asdasd', '2024-04-04 12:21:25', '2024-04-04 12:21:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int UNSIGNED NOT NULL,
  `category` int DEFAULT NULL,
  `subcategory` int DEFAULT NULL,
  `page_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_keyword` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `other_tags` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `category`, `subcategory`, `page_title`, `meta_title`, `meta_description`, `meta_keyword`, `other_tags`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '', '', '', '', '', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\">&nbsp;</td>\r\n			<td rowspan=\"2\">\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>paragraphs</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>words</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>bytes</td>\r\n					</tr>\r\n					<tr>\r\n						<td>&nbsp;</td>\r\n						<td>lists</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>Start with &#39;Lorem<br />\r\n			ipsum dolor sit amet...&#39;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2024-03-26 10:02:34', '2024-03-26 10:02:34'),
(3, 2, 1, 'test title', 'test meta', 'test meta d', 'test keyword', 'test other', '<p>test description</p>', '2024-03-30 06:27:44', '2024-03-30 06:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int UNSIGNED NOT NULL,
  `course_category` int DEFAULT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `fees` float NOT NULL,
  `meta_title` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `other_tags` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_category`, `course_name`, `description`, `fees`, `meta_title`, `meta_description`, `meta_keyword`, `other_tags`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Hindi', '', 0, '', '', '', '', '2024-03-26 06:24:15', '2024-03-26 06:24:15', NULL),
(2, 1, 'History', '', 100, '', '', '', '', '2024-04-01 07:04:59', '2024-04-01 07:04:59', NULL),
(3, 1, 'asas', '<p>asdasd</p>', 1212, '', '', '', '', '2024-04-04 12:18:34', '2024-04-04 12:18:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coursecategory`
--

CREATE TABLE `coursecategory` (
  `id` int UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `coursecategory`
--

INSERT INTO `coursecategory` (`id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mains', '2024-03-26 06:24:06', '2024-03-26 06:24:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `id` int UNSIGNED NOT NULL,
  `course_category` int DEFAULT NULL,
  `subcategory` int DEFAULT NULL,
  `exam_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `total_no_of_question` int DEFAULT NULL,
  `marks_per_ques` float DEFAULT NULL,
  `total_marks` float DEFAULT NULL,
  `pass_marks` float DEFAULT NULL,
  `test_time` int DEFAULT NULL,
  `negative_per` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`id`, `course_category`, `subcategory`, `exam_name`, `total_no_of_question`, `marks_per_ques`, `total_marks`, `pass_marks`, `test_time`, `negative_per`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'test', 0, 0, 0, 0, 0, 0, '2024-03-29 00:39:33', '2024-03-29 05:46:13', '2024-03-29 05:46:13'),
(2, 2, 3, 'Test exam1', 100, 1, 100, 50, 0, 0.25, '2024-03-30 05:43:05', '2024-04-07 12:21:06', NULL),
(3, 2, 1, 'sefs', 34, 24, NULL, 234, 234, 0.25, '2024-04-05 02:35:05', '2024-04-07 10:40:43', NULL),
(4, 2, 1, 'Test exam math', 100, 100, NULL, 50, 100, 0.25, '2024-04-05 22:00:20', '2024-04-05 22:00:20', NULL),
(5, 2, 1, 'zx', 3, 23, NULL, 23, 23, 0.3, '2024-04-07 13:17:14', '2024-04-07 13:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_questions_answers--`
--

CREATE TABLE `exam_questions_answers--` (
  `id` int UNSIGNED NOT NULL,
  `course_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `question` text COLLATE utf8mb3_unicode_ci,
  `option_a` text COLLATE utf8mb3_unicode_ci,
  `option_b` text COLLATE utf8mb3_unicode_ci,
  `option_c` text COLLATE utf8mb3_unicode_ci,
  `option_d` text COLLATE utf8mb3_unicode_ci,
  `answer_text` text COLLATE utf8mb3_unicode_ci,
  `ans_option` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_23_161132_create_course_table', 1),
(7, '2024_03_23_162850_create_Coursecategory_table', 1),
(8, '2024_03_24_062533_create_study_materials_table', 1),
(9, '2024_03_25_100245_create_salesorder_table', 1),
(10, '2024_03_25_102345_create_category_table', 1),
(11, '2024_03_25_105543_create_subcategory_table', 1),
(12, '2024_03_26_065852_create_content_table', 1),
(13, '2024_03_28_110638_create_examination_table', 2),
(14, '2014_10_12_100000_create_password_resets_table', 3),
(15, '2024_04_05_130832_create_exam_questions_answers_table', 3),
(16, '2024_04_07_151347_create_question_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int UNSIGNED NOT NULL,
  `exam_id` int DEFAULT NULL,
  `question_text` text COLLATE utf8mb3_unicode_ci,
  `option_a` text COLLATE utf8mb3_unicode_ci,
  `option_b` text COLLATE utf8mb3_unicode_ci,
  `option_c` text COLLATE utf8mb3_unicode_ci,
  `option_d` text COLLATE utf8mb3_unicode_ci,
  `answer_text` text COLLATE utf8mb3_unicode_ci,
  `answer_option` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `exam_id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `answer_text`, `answer_option`, `created_at`, `updated_at`) VALUES
(1, 2, 'sadas', 'asdasd', 'q3ew', 'asd', 'asd', 'asd', 'd', NULL, NULL),
(2, 2, 'as', 'as', 'as', 'as', 'asd', 'asd', 'as', '2024-04-07 13:53:01', '2024-04-07 13:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `salesorder`
--

CREATE TABLE `salesorder` (
  `id` int UNSIGNED NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT '1',
  `price` double(8,2) DEFAULT NULL,
  `item_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `transection_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `salesorder`
--

INSERT INTO `salesorder` (`id`, `item`, `qty`, `price`, `item_id`, `user`, `total_price`, `payment_mode`, `transection_id`, `payment_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Test', 1, 100.00, '1', '2', '100', 'CC', 'TESTTR12', 'Success', '2024-03-27 01:23:07', '2024-03-27 01:23:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` int UNSIGNED NOT NULL,
  `course_category` int DEFAULT NULL COMMENT 'Subject category',
  `subject` int DEFAULT NULL COMMENT 'Coursename',
  `material_data` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Name of the material',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `study_materials`
--

INSERT INTO `study_materials` (`id`, `course_category`, `subject`, `material_data`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'public/upload/study-data//920222328680360911 (1)_4.pdf', 'test', '2024-03-26 09:06:34', '2024-03-26 09:06:34', NULL),
(2, 1, 1, 'public/upload/study-data//920222328680360911 (1)_5.pdf', 'asdsd', '2024-03-27 00:45:54', '2024-03-27 00:45:54', NULL),
(3, 1, 1, 'public/upload/study-data//57237419-newspaper-license.pdf', 'asda', '2024-04-01 07:06:06', '2024-04-01 07:06:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `parent_id`, `name`, `page_url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Math', '', '2024-03-26 08:55:03', '2024-03-26 08:55:03', NULL),
(2, NULL, 'Math', '', '2024-03-26 09:05:58', '2024-03-26 09:06:08', '2024-03-26 09:06:08'),
(3, 2, 'asd', 'asd', '2024-04-04 12:26:51', '2024-04-04 12:26:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu--`
--
ALTER TABLE `admin_menu--`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursecategory`
--
ALTER TABLE `coursecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_questions_answers--`
--
ALTER TABLE `exam_questions_answers--`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesorder`
--
ALTER TABLE `salesorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `admin_menu--`
--
ALTER TABLE `admin_menu--`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2048;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coursecategory`
--
ALTER TABLE `coursecategory`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_questions_answers--`
--
ALTER TABLE `exam_questions_answers--`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salesorder`
--
ALTER TABLE `salesorder`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
