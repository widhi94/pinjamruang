-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 09:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinjam_ruang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dasbor', 'fa-dashboard', '/', NULL, NULL, NULL),
(2, 0, 10, 'Admin', 'fa-tasks', '', NULL, NULL, '2021-08-11 18:34:07'),
(3, 2, 11, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2021-08-11 18:34:07'),
(4, 2, 12, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2021-08-11 18:34:07'),
(5, 2, 13, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2021-08-11 18:34:07'),
(6, 2, 14, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2021-08-11 18:34:07'),
(7, 2, 15, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2021-08-11 18:34:07'),
(8, 0, 5, 'Helpers', 'fa-gears', '', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(9, 8, 6, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(10, 8, 7, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(11, 8, 8, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(12, 8, 9, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(13, 0, 2, 'Tipe Ruangan', 'fa-cubes', 'room-types', 'list.room_types', '2021-08-04 15:21:35', '2021-08-11 19:18:40'),
(14, 0, 3, 'Ruangan', 'fa-trello', 'rooms', 'list.rooms', '2021-08-04 15:22:06', '2021-08-11 19:18:21'),
(15, 0, 4, 'Pinjam Ruang', 'fa-calendar', 'borrow-rooms', 'list.borrow_rooms', '2021-08-04 15:22:30', '2021-08-11 19:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-06 20:40:50', '2023-01-06 20:40:50'),
(2, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:41:06', '2023-01-06 20:41:06'),
(3, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"1234\",\"password_confirmation\":\"1234\",\"_token\":\"oTnfw9pj1HugaYJwCGhsVYKHXEY2S08VRorv1Iy1\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\"}', '2023-01-06 20:41:48', '2023-01-06 20:41:48'),
(4, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2023-01-06 20:41:49', '2023-01-06 20:41:49'),
(5, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:42:00', '2023-01-06 20:42:00'),
(6, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:42:08', '2023-01-06 20:42:08'),
(7, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:42:21', '2023-01-06 20:42:21'),
(8, 1, 'admin/borrow-rooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:42:26', '2023-01-06 20:42:26'),
(9, 1, 'admin/borrow-rooms/1', 'PUT', '127.0.0.1', '{\"borrower_id\":\"61\",\"room_id\":\"18\",\"borrow_at\":\"2023-01-10 07:30\",\"until_at\":\"2023-01-10 09:30\",\"lecturer_id\":\"3\",\"lecturer_approval_status\":\"1\",\"admin_id\":null,\"admin_approval_status\":\"0\",\"processed_at\":null,\"returned_at\":null,\"notes\":null,\"_token\":\"oTnfw9pj1HugaYJwCGhsVYKHXEY2S08VRorv1Iy1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/borrow-rooms\"}', '2023-01-06 20:42:54', '2023-01-06 20:42:54'),
(10, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-06 20:42:54', '2023-01-06 20:42:54'),
(11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:43:32', '2023-01-06 20:43:32'),
(12, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:43:43', '2023-01-06 20:43:43'),
(13, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:44:36', '2023-01-06 20:44:36'),
(14, 1, 'admin/room-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:44:45', '2023-01-06 20:44:45'),
(15, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:44:58', '2023-01-06 20:44:58'),
(16, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:45:00', '2023-01-06 20:45:00'),
(17, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:45:09', '2023-01-06 20:45:09'),
(18, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-06 20:45:17', '2023-01-06 20:45:17'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-07 23:26:15', '2023-01-07 23:26:15'),
(20, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:26:28', '2023-01-07 23:26:28'),
(21, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:26:53', '2023-01-07 23:26:53'),
(22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:26:58', '2023-01-07 23:26:58'),
(23, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:27:09', '2023-01-07 23:27:09'),
(24, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:27:15', '2023-01-07 23:27:15'),
(25, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:27:24', '2023-01-07 23:27:24'),
(26, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-01-07 23:27:30', '2023-01-07 23:27:30'),
(27, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-01-07 23:27:33', '2023-01-07 23:27:33'),
(28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2023-01-07 23:27:36', '2023-01-07 23:27:36'),
(29, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-01-07 23:27:47', '2023-01-07 23:27:47'),
(30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-07 23:28:09', '2023-01-07 23:28:09'),
(31, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:29:50', '2023-01-07 23:29:50'),
(32, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:29:53', '2023-01-07 23:29:53'),
(33, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:29:56', '2023-01-07 23:29:56'),
(34, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"a\",\"room_type_id\":\"1\",\"max_people\":\"20\",\"status\":\"0\",\"notes\":null,\"_token\":\"okW55prRclCUVwmAF3Mf2gT9LCwuUr4gPXqGjfPg\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms\"}', '2023-01-07 23:39:57', '2023-01-07 23:39:57'),
(35, 1, 'admin/rooms/26', 'GET', '127.0.0.1', '[]', '2023-01-07 23:39:58', '2023-01-07 23:39:58'),
(36, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:44:48', '2023-01-07 23:44:48'),
(37, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:44:54', '2023-01-07 23:44:54'),
(38, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:44:57', '2023-01-07 23:44:57'),
(39, 1, 'admin/room-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:45:04', '2023-01-07 23:45:04'),
(40, 1, 'admin/room-types', 'POST', '127.0.0.1', '{\"name\":\"bsl\",\"is_active\":\"on\",\"_token\":\"okW55prRclCUVwmAF3Mf2gT9LCwuUr4gPXqGjfPg\",\"after-save\":\"3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/room-types\"}', '2023-01-07 23:51:15', '2023-01-07 23:51:15'),
(41, 1, 'admin/room-types/24', 'GET', '127.0.0.1', '[]', '2023-01-07 23:51:15', '2023-01-07 23:51:15'),
(42, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:51:32', '2023-01-07 23:51:32'),
(43, 1, 'admin/room-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:51:35', '2023-01-07 23:51:35'),
(44, 1, 'admin/room-types', 'POST', '127.0.0.1', '{\"name\":\"b\",\"is_active\":\"on\",\"_token\":\"okW55prRclCUVwmAF3Mf2gT9LCwuUr4gPXqGjfPg\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/room-types\"}', '2023-01-07 23:51:45', '2023-01-07 23:51:45'),
(45, 1, 'admin/room-types/25/edit', 'GET', '127.0.0.1', '[]', '2023-01-07 23:51:46', '2023-01-07 23:51:46'),
(46, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:52:06', '2023-01-07 23:52:06'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:52:10', '2023-01-07 23:52:10'),
(48, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:52:31', '2023-01-07 23:52:31'),
(49, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-01-07 23:52:36', '2023-01-07 23:52:36'),
(50, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-01-07 23:52:47', '2023-01-07 23:52:47'),
(51, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:52:55', '2023-01-07 23:52:55'),
(52, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:52:58', '2023-01-07 23:52:58'),
(53, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2023-01-07 23:53:40', '2023-01-07 23:53:40'),
(54, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:53:57', '2023-01-07 23:53:57'),
(55, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:54:50', '2023-01-07 23:54:50'),
(56, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:54:59', '2023-01-07 23:54:59'),
(57, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"adak\",\"name\":\"adak\",\"password\":\"1234\",\"password_confirmation\":\"1234\",\"roles\":[\"2\",null],\"permissions\":[\"1\",null],\"_token\":\"okW55prRclCUVwmAF3Mf2gT9LCwuUr4gPXqGjfPg\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2023-01-07 23:55:14', '2023-01-07 23:55:14'),
(58, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-07 23:55:15', '2023-01-07 23:55:15'),
(59, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:55:25', '2023-01-07 23:55:25'),
(60, 65, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-07 23:55:37', '2023-01-07 23:55:37'),
(61, 65, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:55:53', '2023-01-07 23:55:53'),
(62, 65, 'admin/borrow-rooms/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-07 23:56:44', '2023-01-07 23:56:44'),
(63, 65, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 00:01:25', '2023-01-08 00:01:25'),
(64, 65, 'admin/borrow-rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 00:01:27', '2023-01-08 00:01:27'),
(65, 65, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-01-08 00:05:55', '2023-01-08 00:05:55'),
(66, 65, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 00:05:56', '2023-01-08 00:05:56'),
(67, 65, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 00:06:05', '2023-01-08 00:06:05'),
(68, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 04:41:43', '2023-01-08 04:41:43'),
(69, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:41:53', '2023-01-08 04:41:53'),
(70, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2023-01-08 04:42:00', '2023-01-08 04:42:00'),
(71, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:42:09', '2023-01-08 04:42:09'),
(72, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:42:14', '2023-01-08 04:42:14'),
(73, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:42:16', '2023-01-08 04:42:16'),
(74, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.1 GUAVA\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms\"}', '2023-01-08 04:44:05', '2023-01-08 04:44:05'),
(75, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:44:05', '2023-01-08 04:44:05'),
(76, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.2 Banana\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:45:00', '2023-01-08 04:45:00'),
(77, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:45:01', '2023-01-08 04:45:01'),
(78, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.3 Mango\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:45:39', '2023-01-08 04:45:39'),
(79, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:45:40', '2023-01-08 04:45:40'),
(80, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.4 Apple\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:46:04', '2023-01-08 04:46:04'),
(81, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:46:05', '2023-01-08 04:46:05'),
(82, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.5 Grape\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:46:29', '2023-01-08 04:46:29'),
(83, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:46:29', '2023-01-08 04:46:29'),
(84, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.6 Avocado\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:46:56', '2023-01-08 04:46:56'),
(85, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:46:56', '2023-01-08 04:46:56'),
(86, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.7 Apricot\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:47:16', '2023-01-08 04:47:16'),
(87, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:47:17', '2023-01-08 04:47:17'),
(88, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 04:48:24', '2023-01-08 04:48:24'),
(89, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 04:48:24', '2023-01-08 04:48:24'),
(90, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.8 Blueberry\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:49:17', '2023-01-08 04:49:17'),
(91, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:49:18', '2023-01-08 04:49:18'),
(92, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.9 Lemon\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:49:37', '2023-01-08 04:49:37'),
(93, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:49:38', '2023-01-08 04:49:38'),
(94, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 04:49:44', '2023-01-08 04:49:44'),
(95, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.10 Plum\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:50:11', '2023-01-08 04:50:11'),
(96, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:50:11', '2023-01-08 04:50:11'),
(97, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.11 Cherry\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:50:45', '2023-01-08 04:50:45'),
(98, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:50:45', '2023-01-08 04:50:45'),
(99, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.12\",\"room_type_id\":\"2\",\"max_people\":\"20\",\"status\":\"3\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:50:59', '2023-01-08 04:50:59'),
(100, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:50:59', '2023-01-08 04:50:59'),
(101, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.13\",\"room_type_id\":\"2\",\"max_people\":\"40\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"2\"}', '2023-01-08 04:51:22', '2023-01-08 04:51:22'),
(102, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 04:51:23', '2023-01-08 04:51:23'),
(103, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.14\",\"room_type_id\":\"2\",\"max_people\":\"40\",\"status\":\"3\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"after-save\":\"3\"}', '2023-01-08 04:51:44', '2023-01-08 04:51:44'),
(104, 1, 'admin/rooms/40', 'GET', '127.0.0.1', '[]', '2023-01-08 04:51:44', '2023-01-08 04:51:44'),
(105, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 04:51:52', '2023-01-08 04:51:52'),
(106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 04:53:25', '2023-01-08 04:53:25'),
(107, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:53:34', '2023-01-08 04:53:34'),
(108, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:53:37', '2023-01-08 04:53:37'),
(109, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"dosen\",\"name\":\"dosen\",\"password\":\"1234\",\"password_confirmation\":\"1234\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"CQ12tsncxfuqDPIgQfoBQdNIirbj47YKxvB7fnZE\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2023-01-08 04:54:03', '2023-01-08 04:54:03'),
(110, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-08 04:54:03', '2023-01-08 04:54:03'),
(111, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:54:49', '2023-01-08 04:54:49'),
(112, 1, 'admin/borrow-rooms/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:54:55', '2023-01-08 04:54:55'),
(113, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:57:14', '2023-01-08 04:57:14'),
(114, 1, 'admin/borrow-rooms/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:57:19', '2023-01-08 04:57:19'),
(115, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 04:58:23', '2023-01-08 04:58:23'),
(116, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:58:30', '2023-01-08 04:58:30'),
(117, 68, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 04:59:25', '2023-01-08 04:59:25'),
(118, 68, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:59:39', '2023-01-08 04:59:39'),
(119, 68, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:59:46', '2023-01-08 04:59:46'),
(120, 68, 'admin/borrow-rooms/4', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 04:59:50', '2023-01-08 04:59:50'),
(121, 68, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 05:00:07', '2023-01-08 05:00:07'),
(122, 68, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 05:00:14', '2023-01-08 05:00:14'),
(123, 68, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 05:00:19', '2023-01-08 05:00:19'),
(124, 68, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 05:13:31', '2023-01-08 05:13:31'),
(125, 68, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 05:21:27', '2023-01-08 05:21:27'),
(126, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 05:23:10', '2023-01-08 05:23:10'),
(127, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 05:23:17', '2023-01-08 05:23:17'),
(128, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 07:51:01', '2023-01-08 07:51:01'),
(129, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 07:52:58', '2023-01-08 07:52:58'),
(130, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 07:58:55', '2023-01-08 07:58:55'),
(131, 1, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 07:59:02', '2023-01-08 07:59:02'),
(132, 1, 'admin/api/administrators', 'GET', '127.0.0.1', '{\"q\":\"f\"}', '2023-01-08 07:59:11', '2023-01-08 07:59:11'),
(133, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-08 07:59:19', '2023-01-08 07:59:19'),
(134, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 07:59:25', '2023-01-08 07:59:25'),
(135, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"adak_gizi\",\"name\":\"adak gizi\",\"password\":\"1234\",\"password_confirmation\":\"1234\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"WikEQvMIF71qJgFbTvWZeUd8eM607FYFV7eB5vNi\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2023-01-08 07:59:44', '2023-01-08 07:59:44'),
(136, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-08 07:59:45', '2023-01-08 07:59:45'),
(137, 1, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '[]', '2023-01-08 07:59:48', '2023-01-08 07:59:48'),
(138, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 07:59:59', '2023-01-08 07:59:59'),
(139, 71, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 08:00:13', '2023-01-08 08:00:13'),
(140, 71, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:00:24', '2023-01-08 08:00:24'),
(141, 71, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:00:33', '2023-01-08 08:00:33'),
(142, 71, 'admin/borrow-rooms/6', 'PUT', '127.0.0.1', '{\"admin_id\":null,\"admin_approval_status\":\"1\",\"processed_at\":null,\"returned_at\":null,\"notes\":null,\"_token\":\"aMkWKis8tL5vKhPVFy2tkhKEws3nJY15iCHO5vsw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/borrow-rooms\"}', '2023-01-08 08:00:50', '2023-01-08 08:00:50'),
(143, 71, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 08:00:50', '2023-01-08 08:00:50'),
(144, 71, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:01:03', '2023-01-08 08:01:03'),
(145, 70, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 08:01:13', '2023-01-08 08:01:13'),
(146, 70, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:01:18', '2023-01-08 08:01:18'),
(147, 70, 'admin/borrow-rooms/6', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:01:24', '2023-01-08 08:01:24'),
(148, 70, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:01:34', '2023-01-08 08:01:34'),
(149, 71, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 08:01:47', '2023-01-08 08:01:47'),
(150, 71, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:01:52', '2023-01-08 08:01:52'),
(151, 71, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:01:57', '2023-01-08 08:01:57'),
(152, 71, 'admin/borrow-rooms/6', 'PUT', '127.0.0.1', '{\"admin_id\":\"71\",\"admin_approval_status\":\"1\",\"processed_at\":\"2023-01-08 15:00\",\"returned_at\":null,\"notes\":null,\"_token\":\"Ar4csiewtuxkUp2O7G3KYbOJtipy9fnznhM9pi8q\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/borrow-rooms\"}', '2023-01-08 08:02:22', '2023-01-08 08:02:22'),
(153, 71, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 08:02:23', '2023-01-08 08:02:23'),
(154, 71, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:02:39', '2023-01-08 08:02:39'),
(155, 71, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-08 08:09:08', '2023-01-08 08:09:08'),
(156, 71, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:09:15', '2023-01-08 08:09:15'),
(157, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 08:09:23', '2023-01-08 08:09:23'),
(158, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:09:34', '2023-01-08 08:09:34'),
(159, 1, 'admin/borrow-rooms/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:09:48', '2023-01-08 08:09:48'),
(160, 1, 'admin/api/administrators', 'GET', '127.0.0.1', '{\"q\":\"ada\"}', '2023-01-08 08:10:03', '2023-01-08 08:10:03'),
(161, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:10:24', '2023-01-08 08:10:24'),
(162, 1, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:10:28', '2023-01-08 08:10:28'),
(163, 1, 'admin/borrow-rooms/6', 'PUT', '127.0.0.1', '{\"borrower_id\":\"70\",\"room_id\":\"28\",\"borrow_at\":\"2023-01-08 15:00\",\"until_at\":\"2023-01-08 16:00\",\"lecturer_id\":\"67\",\"lecturer_approval_status\":\"1\",\"admin_id\":\"71\",\"admin_approval_status\":\"1\",\"processed_at\":\"2023-01-08 15:00\",\"returned_at\":\"2023-01-08 15:10\",\"notes\":null,\"_token\":\"Whzh6qQKC4AC6FuI9xTJ8X1L8fGHzljvSRSnH3YY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/borrow-rooms\"}', '2023-01-08 08:10:44', '2023-01-08 08:10:44'),
(164, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 08:10:45', '2023-01-08 08:10:45'),
(165, 1, 'admin/borrow-rooms/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:10:50', '2023-01-08 08:10:50'),
(166, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:14:49', '2023-01-08 08:14:49'),
(167, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:15:03', '2023-01-08 08:15:03'),
(168, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 08:15:10', '2023-01-08 08:15:10'),
(169, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:15:21', '2023-01-08 08:15:21'),
(170, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 08:15:30', '2023-01-08 08:15:30'),
(171, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-01-08 11:09:51', '2023-01-08 11:09:51'),
(172, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 11:29:27', '2023-01-08 11:29:27'),
(173, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 11:29:30', '2023-01-08 11:29:30'),
(174, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 11:29:53', '2023-01-08 11:29:53'),
(175, 1, 'admin/rooms/27', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 11:30:05', '2023-01-08 11:30:05'),
(176, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 11:30:10', '2023-01-08 11:30:10'),
(177, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 11:30:26', '2023-01-08 11:30:26'),
(178, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:41:21', '2023-01-08 15:41:21'),
(179, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:41:24', '2023-01-08 15:41:24'),
(180, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.1 Monstera\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":null,\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms\"}', '2023-01-08 15:42:26', '2023-01-08 15:42:26'),
(181, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:42:26', '2023-01-08 15:42:26'),
(182, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.2 Amarilis\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:43:04', '2023-01-08 15:43:04'),
(183, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:43:04', '2023-01-08 15:43:04'),
(184, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.3 Adenium\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:43:24', '2023-01-08 15:43:24'),
(185, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:43:25', '2023-01-08 15:43:25'),
(186, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.4 Aglonema\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"3\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:44:12', '2023-01-08 15:44:12'),
(187, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:44:13', '2023-01-08 15:44:13'),
(188, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.5 Akasia\",\"room_type_id\":\"2\",\"max_people\":\"40\",\"status\":\"0\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:44:32', '2023-01-08 15:44:32'),
(189, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:44:33', '2023-01-08 15:44:33'),
(190, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.6 Anthurium\",\"room_type_id\":\"2\",\"max_people\":\"40\",\"status\":\"0\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:45:04', '2023-01-08 15:45:04'),
(191, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:45:05', '2023-01-08 15:45:05'),
(192, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.7 Azalea\",\"room_type_id\":\"2\",\"max_people\":\"40\",\"status\":\"0\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:45:31', '2023-01-08 15:45:31'),
(193, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:45:31', '2023-01-08 15:45:31'),
(194, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"B.8 Begonia\",\"room_type_id\":\"2\",\"max_people\":\"25\",\"status\":\"0\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:45:52', '2023-01-08 15:45:52'),
(195, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:45:53', '2023-01-08 15:45:53'),
(196, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.1 Cut Nyak Dien\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:46:36', '2023-01-08 15:46:36'),
(197, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:46:37', '2023-01-08 15:46:37'),
(198, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.2 Kartini\",\"room_type_id\":\"2\",\"max_people\":\"51\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:46:55', '2023-01-08 15:46:55'),
(199, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:46:55', '2023-01-08 15:46:55'),
(200, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.3 Dewi Sartika\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:47:17', '2023-01-08 15:47:17'),
(201, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:47:18', '2023-01-08 15:47:18'),
(202, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.4 Fatmawati\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:47:44', '2023-01-08 15:47:44'),
(203, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:47:45', '2023-01-08 15:47:45'),
(204, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.5 Malahayati\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:48:05', '2023-01-08 15:48:05'),
(205, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:48:06', '2023-01-08 15:48:06'),
(206, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:48:31', '2023-01-08 15:48:31'),
(207, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-01-08 15:48:37', '2023-01-08 15:48:37'),
(208, 1, 'admin/rooms/48/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:48:45', '2023-01-08 15:48:45'),
(209, 1, 'admin/rooms/48', 'PUT', '127.0.0.1', '{\"name\":\"B.8 Begonia\",\"room_type_id\":\"2\",\"max_people\":\"25\",\"status\":\"3\",\"notes\":\"Lokasi Hasanudin\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms?&page=2\"}', '2023-01-08 15:48:51', '2023-01-08 15:48:51'),
(210, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-01-08 15:48:52', '2023-01-08 15:48:52'),
(211, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:49:00', '2023-01-08 15:49:00'),
(212, 1, 'admin/rooms/44', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:49:07', '2023-01-08 15:49:07'),
(213, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:49:11', '2023-01-08 15:49:11'),
(214, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:49:20', '2023-01-08 15:49:20'),
(215, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.10 Lantai 1 BSL\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms\"}', '2023-01-08 15:49:57', '2023-01-08 15:49:57'),
(216, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:49:58', '2023-01-08 15:49:58'),
(217, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.11 Lantai 2 BSL\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:50:12', '2023-01-08 15:50:12'),
(218, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:50:13', '2023-01-08 15:50:13'),
(219, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.12 Kujang\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"3\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:50:49', '2023-01-08 15:50:49'),
(220, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:50:50', '2023-01-08 15:50:50'),
(221, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.13 Keris\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:51:11', '2023-01-08 15:51:11'),
(222, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:51:12', '2023-01-08 15:51:12'),
(223, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"C.14 Rencong\",\"room_type_id\":\"2\",\"max_people\":\"50\",\"status\":\"0\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:51:39', '2023-01-08 15:51:39'),
(224, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:51:40', '2023-01-08 15:51:40'),
(225, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.12 Soeharto\",\"room_type_id\":\"2\",\"max_people\":\"80\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:52:17', '2023-01-08 15:52:17'),
(226, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:52:18', '2023-01-08 15:52:18'),
(227, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"A.13 Soekarno\",\"room_type_id\":\"2\",\"max_people\":\"100\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"after-save\":\"2\"}', '2023-01-08 15:52:52', '2023-01-08 15:52:52'),
(228, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:52:53', '2023-01-08 15:52:53'),
(229, 1, 'admin/rooms', 'POST', '127.0.0.1', '{\"name\":\"LC\",\"room_type_id\":\"2\",\"max_people\":\"80\",\"status\":\"0\",\"notes\":\"Lokasi BJ Habibie\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\"}', '2023-01-08 15:53:22', '2023-01-08 15:53:22'),
(230, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 15:53:23', '2023-01-08 15:53:23'),
(231, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:53:36', '2023-01-08 15:53:36'),
(232, 1, 'admin/rooms/57/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:53:42', '2023-01-08 15:53:42'),
(233, 1, 'admin/rooms/57', 'PUT', '127.0.0.1', '{\"name\":\"C.13 Keris\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"3\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms?page=2\"}', '2023-01-08 15:53:48', '2023-01-08 15:53:48'),
(234, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-01-08 15:53:48', '2023-01-08 15:53:48'),
(235, 1, 'admin/rooms/57/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:53:56', '2023-01-08 15:53:56'),
(236, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:53:59', '2023-01-08 15:53:59'),
(237, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:54:12', '2023-01-08 15:54:12'),
(238, 1, 'admin/rooms/create', 'GET', '127.0.0.1', '[]', '2023-01-08 15:54:40', '2023-01-08 15:54:40'),
(239, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:54:48', '2023-01-08 15:54:48'),
(240, 1, 'admin/rooms/60/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:55:04', '2023-01-08 15:55:04'),
(241, 1, 'admin/rooms/60', 'PUT', '127.0.0.1', '{\"name\":\"A.13 Soekarno\",\"room_type_id\":\"2\",\"max_people\":\"114\",\"status\":\"0\",\"notes\":\"Lokasi Dipenogoro\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms?page=2\"}', '2023-01-08 15:55:13', '2023-01-08 15:55:13'),
(242, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-01-08 15:55:14', '2023-01-08 15:55:14'),
(243, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:55:30', '2023-01-08 15:55:30'),
(244, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-01-08 15:56:04', '2023-01-08 15:56:04'),
(245, 1, 'admin/rooms/57', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:56:10', '2023-01-08 15:56:10'),
(246, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:56:25', '2023-01-08 15:56:25'),
(247, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 15:57:33', '2023-01-08 15:57:33'),
(248, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:57:42', '2023-01-08 15:57:42'),
(249, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-01-08 15:57:48', '2023-01-08 15:57:48'),
(250, 1, 'admin/rooms/57', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:57:54', '2023-01-08 15:57:54'),
(251, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:57:59', '2023-01-08 15:57:59'),
(252, 1, 'admin/rooms/57/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:58:03', '2023-01-08 15:58:03'),
(253, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_Models_BorrowRoom\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-08 15:58:48', '2023-01-08 15:58:48'),
(254, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:58:49', '2023-01-08 15:58:49'),
(255, 1, 'admin/rooms/57', 'PUT', '127.0.0.1', '{\"name\":\"C.13 Keris\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"2\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms?&page=2\"}', '2023-01-08 15:58:56', '2023-01-08 15:58:56'),
(256, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-01-08 15:58:56', '2023-01-08 15:58:56'),
(257, 1, 'admin/rooms/57/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:59:03', '2023-01-08 15:59:03'),
(258, 1, 'admin/rooms/57', 'PUT', '127.0.0.1', '{\"name\":\"C.13 Keris\",\"room_type_id\":\"2\",\"max_people\":\"30\",\"status\":\"2\",\"notes\":\"Lokasi Sudirman\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/rooms?&page=2\"}', '2023-01-08 15:59:07', '2023-01-08 15:59:07'),
(259, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-01-08 15:59:08', '2023-01-08 15:59:08'),
(260, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 15:59:13', '2023-01-08 15:59:13'),
(261, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-01-08 15:59:16', '2023-01-08 15:59:16'),
(262, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2023-01-08 15:59:48', '2023-01-08 15:59:48'),
(263, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:00:03', '2023-01-08 16:00:03'),
(264, 1, 'admin/room-types/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:00:46', '2023-01-08 16:00:46'),
(265, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:00:53', '2023-01-08 16:00:53'),
(266, 1, 'admin/room-types/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:00:56', '2023-01-08 16:00:56'),
(267, 1, 'admin/room-types/2', 'PUT', '127.0.0.1', '{\"name\":\"Kelas\",\"is_active\":\"off\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/room-types\"}', '2023-01-08 16:01:02', '2023-01-08 16:01:02'),
(268, 1, 'admin/room-types', 'GET', '127.0.0.1', '[]', '2023-01-08 16:01:02', '2023-01-08 16:01:02'),
(269, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:01:54', '2023-01-08 16:01:54'),
(270, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"App_Models_BorrowRoom\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-01-08 16:02:00', '2023-01-08 16:02:00'),
(271, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:02:01', '2023-01-08 16:02:01'),
(272, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 16:02:53', '2023-01-08 16:02:53'),
(273, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 16:02:56', '2023-01-08 16:02:56'),
(274, 1, 'admin/room-types', 'GET', '127.0.0.1', '[]', '2023-01-08 16:03:00', '2023-01-08 16:03:00'),
(275, 1, 'admin/room-types/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:03:06', '2023-01-08 16:03:06'),
(276, 1, 'admin/room-types/2', 'PUT', '127.0.0.1', '{\"name\":\"Kelas\",\"is_active\":\"on\",\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/room-types\"}', '2023-01-08 16:03:09', '2023-01-08 16:03:09'),
(277, 1, 'admin/room-types', 'GET', '127.0.0.1', '[]', '2023-01-08 16:03:09', '2023-01-08 16:03:09'),
(278, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:03:13', '2023-01-08 16:03:13'),
(279, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 16:09:53', '2023-01-08 16:09:53'),
(280, 1, 'admin/rooms/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:10:02', '2023-01-08 16:10:02'),
(281, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 16:10:09', '2023-01-08 16:10:09'),
(282, 1, 'admin/borrow-rooms/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:10:14', '2023-01-08 16:10:14'),
(283, 1, 'admin/borrow-rooms/5/edit', 'GET', '127.0.0.1', '[]', '2023-01-08 16:11:54', '2023-01-08 16:11:54'),
(284, 1, 'admin/api/administrators', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2023-01-08 16:12:02', '2023-01-08 16:12:02'),
(285, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:12:32', '2023-01-08 16:12:32'),
(286, 1, 'admin/rooms/27/edit', 'GET', '127.0.0.1', '[]', '2023-01-08 16:14:30', '2023-01-08 16:14:30'),
(287, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-08 16:14:35', '2023-01-08 16:14:35'),
(288, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:15:03', '2023-01-08 16:15:03'),
(289, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"superadmin\",\"name\":\"Super Admin\",\"password\":\"$2y$10$554Mb7\\/OMr2S6O7\\/DLrp5OLRj8ixlHtYqcpamwyK3LKWoL7KUDORe\",\"password_confirmation\":\"$2y$10$554Mb7\\/OMr2S6O7\\/DLrp5OLRj8ixlHtYqcpamwyK3LKWoL7KUDORe\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"CKCnOxEs9JCXbPw2FiDW4Eu0K6T6TWXxb8iKeOCx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/users\"}', '2023-01-08 16:15:42', '2023-01-08 16:15:42'),
(290, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-01-08 16:15:43', '2023-01-08 16:15:43'),
(291, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:16:16', '2023-01-08 16:16:16'),
(292, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:16:19', '2023-01-08 16:16:19'),
(293, 1, 'admin/rooms', 'GET', '127.0.0.1', '[]', '2023-01-08 16:16:21', '2023-01-08 16:16:21'),
(294, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:16:27', '2023-01-08 16:16:27'),
(295, 1, 'admin/rooms/57', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:16:33', '2023-01-08 16:16:33'),
(296, 1, 'admin/rooms/57/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:17:39', '2023-01-08 16:17:39'),
(297, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:37:41', '2023-01-08 16:37:41'),
(298, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:37:44', '2023-01-08 16:37:44'),
(299, 1, 'admin/rooms/28', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:37:49', '2023-01-08 16:37:49'),
(300, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:37:56', '2023-01-08 16:37:56'),
(301, 1, 'admin/rooms/29', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:38:08', '2023-01-08 16:38:08'),
(302, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-01-08 16:38:11', '2023-01-08 16:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\n                                /auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\n                                /auth/permissions\n                                /auth/menu\n                                /auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2021-08-04 15:20:58', '2021-08-04 15:20:58'),
(7, 'List Room Types', 'list.room_types', 'GET', '/room-types*', '2021-08-11 18:32:56', '2021-08-11 19:08:23'),
(8, 'Create Room Type', 'create.room_types', 'POST', '/room-types*', '2021-08-11 18:47:16', '2021-08-11 19:09:02'),
(9, 'Edit Room Type', 'edit.room_types', 'PUT', '/room-types/*', '2021-08-11 18:54:49', '2021-08-11 19:09:47'),
(11, 'Delete Room Type', 'delete.room_types', 'DELETE', '/room-types/*', '2021-08-11 19:01:03', '2021-08-11 19:01:03'),
(12, 'List Rooms', 'list.rooms', 'GET', '/rooms*', '2021-08-11 19:11:31', '2021-08-11 19:11:31'),
(13, 'Create Room', 'create.rooms', 'POST', '/rooms*', '2021-08-11 19:11:55', '2021-08-11 19:11:55'),
(14, 'Edit Room', 'edit.rooms', 'PUT', '/rooms/*', '2021-08-11 19:12:23', '2021-08-11 19:12:23'),
(15, 'Delete Room', 'delete.rooms', 'DELETE', '/rooms/*', '2021-08-11 19:12:40', '2021-08-11 19:12:40'),
(16, 'List Borrow Rooms', 'list.borrow_rooms', 'GET', '/borrow-rooms*', '2021-08-11 19:13:24', '2021-08-11 19:13:24'),
(17, 'Create Borrow Room', 'create.borrow_rooms', 'POST', '/borrow-rooms*', '2021-08-11 19:13:49', '2021-08-11 19:13:49'),
(18, 'Edit Borrow Room', 'edit.borrow_rooms', 'PUT', '/borrow-rooms/*', '2021-08-11 19:14:12', '2021-08-11 19:14:12'),
(19, 'Delete Borrow Rooms', 'delete.borrow_rooms', 'DELETE', '/borrow-rooms/*', '2021-08-11 19:14:35', '2021-08-11 19:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'administrator', '2021-08-04 15:19:17', '2021-08-04 15:19:17'),
(2, 'Administrator', 'tata-usaha', '2021-08-04 15:39:30', '2021-08-04 15:39:30'),
(3, 'Dosen', 'dosen', '2021-08-04 15:39:37', '2021-08-04 15:39:37'),
(4, 'Mahasiswa', 'mahasiswa', '2021-08-04 15:42:04', '2021-08-04 15:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 7, NULL, NULL),
(3, 12, NULL, NULL),
(3, 16, NULL, NULL),
(3, 18, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 9, NULL, NULL),
(2, 11, NULL, NULL),
(2, 12, NULL, NULL),
(2, 13, NULL, NULL),
(2, 14, NULL, NULL),
(2, 15, NULL, NULL),
(2, 16, NULL, NULL),
(2, 17, NULL, NULL),
(2, 18, NULL, NULL),
(2, 19, NULL, NULL),
(4, 2, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL),
(4, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 6, NULL, NULL),
(3, 7, NULL, NULL),
(3, 8, NULL, NULL),
(3, 9, NULL, NULL),
(3, 10, NULL, NULL),
(3, 11, NULL, NULL),
(3, 12, NULL, NULL),
(3, 13, NULL, NULL),
(3, 14, NULL, NULL),
(3, 15, NULL, NULL),
(3, 16, NULL, NULL),
(3, 17, NULL, NULL),
(3, 18, NULL, NULL),
(3, 19, NULL, NULL),
(3, 20, NULL, NULL),
(3, 21, NULL, NULL),
(3, 22, NULL, NULL),
(3, 23, NULL, NULL),
(3, 24, NULL, NULL),
(3, 25, NULL, NULL),
(3, 26, NULL, NULL),
(3, 27, NULL, NULL),
(3, 28, NULL, NULL),
(3, 29, NULL, NULL),
(3, 30, NULL, NULL),
(3, 31, NULL, NULL),
(3, 32, NULL, NULL),
(3, 33, NULL, NULL),
(3, 34, NULL, NULL),
(3, 35, NULL, NULL),
(3, 36, NULL, NULL),
(3, 37, NULL, NULL),
(3, 38, NULL, NULL),
(3, 39, NULL, NULL),
(3, 40, NULL, NULL),
(3, 41, NULL, NULL),
(3, 42, NULL, NULL),
(3, 43, NULL, NULL),
(3, 44, NULL, NULL),
(3, 45, NULL, NULL),
(3, 46, NULL, NULL),
(3, 47, NULL, NULL),
(3, 48, NULL, NULL),
(3, 49, NULL, NULL),
(3, 50, NULL, NULL),
(3, 51, NULL, NULL),
(3, 52, NULL, NULL),
(3, 53, NULL, NULL),
(3, 54, NULL, NULL),
(3, 55, NULL, NULL),
(3, 56, NULL, NULL),
(3, 57, NULL, NULL),
(3, 58, NULL, NULL),
(3, 59, NULL, NULL),
(3, 60, NULL, NULL),
(4, 61, NULL, NULL),
(4, 62, NULL, NULL),
(4, 63, NULL, NULL),
(4, 64, NULL, NULL),
(2, 65, NULL, NULL),
(4, 66, NULL, NULL),
(3, 67, NULL, NULL),
(4, 68, NULL, NULL),
(4, 69, NULL, NULL),
(4, 70, NULL, NULL),
(2, 71, NULL, NULL),
(4, 72, NULL, NULL),
(2, 73, NULL, NULL),
(2, 74, NULL, NULL),
(2, 75, NULL, NULL),
(2, 76, NULL, NULL),
(4, 77, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '$2y$10$554Mb7/OMr2S6O7/DLrp5OLRj8ixlHtYqcpamwyK3LKWoL7KUDORe', 'Super Admin', NULL, 'nbfmnTXuFPYUckaxcRWsLyNH690nK4Yfs4y36K1dSW5P81xqCsbU3jbHGUUm', '2021-08-11 03:21:03', '2023-01-08 16:15:42'),
(67, 'dosen', '$2y$10$EZlnSb6ygtEqApHhneOL8eOP5j0SgXxAawhKOs18XzsZcY12kvZa6', 'dosen', NULL, NULL, '2023-01-08 04:54:03', '2023-01-08 04:54:03'),
(68, '1234', '$2y$10$eRdbeX7/.i2fvEEwqliu2ebRjFEqEKShNubdfknZ7Sg4ayXzzW0By', 'WIDI', NULL, 'rzswy6bGLG51tDJRwN65yO8RQpxIJTKPpZiiQobFiudZRlFDRFpXB9iJIO1S', '2023-01-08 04:54:41', '2023-01-08 04:54:41'),
(69, '1111', '$2y$10$Ce0V0ohStsRhRXqJN8Td0.LE0dlTjktOMDnjJm1kbHuLAOveQSREa', 'HAFIDH', NULL, NULL, '2023-01-08 05:22:24', '2023-01-08 05:22:24'),
(70, '1123', '$2y$10$SXgVsT8QZ/ibM7qt8sX.teKXPzphq7FK.Kun2uXS/XveGbU5UQPvG', 'DIDI', NULL, 'asU5zXvyxJb6zGPBAYKtuEOlgQAs8wKzBOO5AIzZg6nh8DezEwto8TnmqzNP', '2023-01-08 07:58:50', '2023-01-08 07:58:50'),
(71, 'adak_gizi', '$2y$10$ItQGOkSfIXv0k9hKEucEhesj4jwM8fHe/1eW.vXvj.El.TTzFzBTK', 'adak gizi', NULL, 'qNY66OsKFmLyVnXcmUpz8msYGG90lnZnmVF1ObEAwTuED8JNz6eBbSGN3pyi', '2023-01-08 07:59:44', '2023-01-08 07:59:44'),
(72, '1124', '$2y$10$PDmztzFP.GgcJC88FzsiV.0nbQIC4UYvI95tqjhMe4JqOh8YOYf5.', 'DIDI', NULL, NULL, '2023-01-08 08:07:33', '2023-01-08 08:07:33'),
(73, 'adak_tlm', '$2y$10$5oY10FjZ2ZqDIQRkZG42k.8yBWBLztH3t5.oGK1ADlfQj2Z4mryS6', 'Adak TLM', NULL, NULL, '2023-01-08 11:11:33', '2023-01-08 11:13:32'),
(74, 'adak_kesling', '$2y$10$pB8Nhub6In/YZtTjV1qGTuGDQoGV8FEbHSdJEUWP9aT6YSn91O0u2', 'Adak Kesling', NULL, NULL, '2023-01-08 11:11:54', '2023-01-08 11:11:54'),
(75, 'adak_promkes', '$2y$10$zi2V9MKS2EMzVjzO/Agi1OgpN/PJGvK7aqvQWziyZxaglu/KM20VC', 'Adak Promkes', NULL, NULL, '2023-01-08 11:12:24', '2023-01-08 11:12:24'),
(76, 'adak_direk', '$2y$10$oVSPx8BbEg9frpJyYkdohubge1WbAoDUu1SZhIJu00sAF47vPHEFC', 'adak direktorat', NULL, NULL, '2023-01-08 11:13:09', '2023-01-08 11:13:09'),
(77, '1125', '$2y$10$T9i/YOG.T0cEAq4DBGOQd.p6NfWDOZFpGsZdW6dMwCFOrY2ssDTMO', 'AJENG', NULL, NULL, '2023-01-08 15:57:21', '2023-01-08 15:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_details`
--

CREATE TABLE `admin_user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_user_id` int(10) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_details`
--

INSERT INTO `admin_user_details` (`id`, `admin_user_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 61, '{\"full_name\":\"WIDI\",\"nim\":\"1234\",\"study_program\":\"teknik-informatika\"}', '2023-01-06 09:15:39', '2023-01-06 09:15:39'),
(2, 62, '{\"full_name\":\"IKA\",\"nim\":\"331111\",\"study_program\":\"teknik-informatika\"}', '2023-01-06 09:16:36', '2023-01-06 09:16:36'),
(3, 63, '{\"full_name\":\"MUMU\",\"nim\":\"4321\",\"study_program\":\"teknik-informatika\"}', '2023-01-06 09:32:12', '2023-01-06 09:32:12'),
(4, 64, '{\"full_name\":\"MIMI\",\"nim\":\"1122\",\"study_program\":\"teknik-informatika\"}', '2023-01-06 09:32:57', '2023-01-06 09:32:57'),
(5, 66, '{\"full_name\":\"HADI\",\"nim\":\"1123\",\"study_program\":\"teknik-informatika\"}', '2023-01-08 00:05:48', '2023-01-08 00:05:48'),
(6, 68, '{\"full_name\":\"WIDI\",\"nim\":\"1234\",\"study_program\":\"teknik-informatika\"}', '2023-01-08 04:54:41', '2023-01-08 04:54:41'),
(7, 69, '{\"full_name\":\"HAFIDH\",\"nim\":\"1111\",\"study_program\":\"teknik-multimedia-dan-jaringan\",\"hp\":\"085722047491\"}', '2023-01-08 05:22:24', '2023-01-08 05:22:24'),
(8, 70, '{\"full_name\":\"DIDI\",\"nim\":\"1123\",\"study_program\":\"teknik-multimedia-dan-jaringan\",\"hp\":\"08112233\"}', '2023-01-08 07:58:50', '2023-01-08 07:58:50'),
(9, 72, '{\"full_name\":\"DIDI\",\"nim\":\"1124\",\"study_program\":\"teknik-informatika\",\"hp\":\"08123\"}', '2023-01-08 08:07:33', '2023-01-08 08:07:33'),
(10, 77, '{\"full_name\":\"AJENG\",\"nim\":\"1125\",\"study_program\":\"d3tlm\",\"hp\":\"086754\"}', '2023-01-08 15:57:21', '2023-01-08 15:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(65, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_rooms`
--

CREATE TABLE `borrow_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrower_id` int(10) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_at` datetime NOT NULL,
  `until_at` datetime NOT NULL,
  `lecturer_id` int(10) UNSIGNED NOT NULL,
  `lecturer_approval_status` tinyint(4) NOT NULL DEFAULT 1,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_approval_status` tinyint(4) DEFAULT NULL,
  `processed_at` datetime DEFAULT NULL,
  `returned_at` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrow_rooms`
--

INSERT INTO `borrow_rooms` (`id`, `borrower_id`, `room_id`, `borrow_at`, `until_at`, `lecturer_id`, `lecturer_approval_status`, `admin_id`, `admin_approval_status`, `processed_at`, `returned_at`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 68, 27, '2023-01-11 07:30:00', '2023-01-11 10:30:00', 67, 1, NULL, NULL, NULL, NULL, NULL, '2023-01-08 04:54:41', '2023-01-08 04:54:41', NULL),
(5, 69, 27, '2023-01-09 07:30:00', '2023-01-09 09:30:00', 67, 1, NULL, NULL, NULL, NULL, NULL, '2023-01-08 05:22:24', '2023-01-08 05:22:24', NULL),
(6, 70, 28, '2023-01-08 15:00:00', '2023-01-08 16:00:00', 67, 1, 1, 1, '2023-01-08 15:00:00', '2023-01-08 15:10:00', NULL, '2023-01-08 07:58:50', '2023-01-08 08:10:44', NULL),
(7, 72, 28, '2023-01-08 16:01:00', '2023-01-08 17:00:00', 67, 1, NULL, NULL, NULL, NULL, NULL, '2023-01-08 08:07:33', '2023-01-08 08:07:33', NULL),
(8, 77, 57, '2023-01-09 07:30:00', '2023-01-09 09:30:00', 67, 1, NULL, NULL, NULL, NULL, NULL, '2023-01-08 15:57:21', '2023-01-08 15:58:48', '2023-01-08 15:58:48'),
(9, 77, 57, '2023-01-09 07:30:00', '2023-01-09 09:30:00', 67, 1, NULL, NULL, NULL, NULL, NULL, '2023-01-08 15:59:41', '2023-01-08 16:02:00', '2023-01-08 16:02:00'),
(10, 77, 57, '2023-01-09 07:30:00', '2023-01-09 09:30:00', 67, 1, NULL, NULL, NULL, NULL, NULL, '2023-01-08 16:02:34', '2023-01-08 16:02:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_08_03_195726_create_room_types_table', 1),
(6, '2021_08_03_201834_create_rooms_table', 1),
(7, '2021_08_05_200746_create_borrow_rooms_table', 1),
(8, '2021_08_10_204722_create_admin_user_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_people` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `max_people`, `status`, `notes`, `room_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, 'A.1 GUAVA', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:44:05', '2023-01-08 04:44:05', NULL),
(28, 'A.2 Banana', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:45:00', '2023-01-08 04:45:00', NULL),
(29, 'A.3 Mango', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:45:39', '2023-01-08 04:45:39', NULL),
(30, 'A.4 Apple', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:46:04', '2023-01-08 04:46:04', NULL),
(31, 'A.5 Grape', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:46:29', '2023-01-08 04:46:29', NULL),
(32, 'A.6 Avocado', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:46:56', '2023-01-08 04:46:56', NULL),
(33, 'A.7 Apricot', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:47:16', '2023-01-08 04:47:16', NULL),
(34, 'A.8 Blueberry', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:49:17', '2023-01-08 04:49:17', NULL),
(35, 'A.9 Lemon', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:49:37', '2023-01-08 04:49:37', NULL),
(36, 'A.10 Plum', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:50:11', '2023-01-08 04:50:11', NULL),
(37, 'A.11 Cherry', 50, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:50:45', '2023-01-08 04:50:45', NULL),
(38, 'A.12', 20, 3, 'Lokasi Dipenogoro', 2, '2023-01-08 04:50:59', '2023-01-08 04:50:59', NULL),
(39, 'A.13', 40, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 04:51:23', '2023-01-08 04:51:23', NULL),
(40, 'A.14', 40, 3, 'Lokasi Dipenogoro', 2, '2023-01-08 04:51:44', '2023-01-08 04:51:44', NULL),
(41, 'B.1 Monstera', 50, 0, NULL, 2, '2023-01-08 15:42:26', '2023-01-08 15:42:26', NULL),
(42, 'B.2 Amarilis', 50, 0, 'Lokasi Hasanudin', 2, '2023-01-08 15:43:04', '2023-01-08 15:43:04', NULL),
(43, 'B.3 Adenium', 50, 0, 'Lokasi Hasanudin', 2, '2023-01-08 15:43:24', '2023-01-08 15:43:24', NULL),
(44, 'B.4 Aglonema', 30, 3, 'Lokasi Hasanudin', 2, '2023-01-08 15:44:12', '2023-01-08 15:44:12', NULL),
(45, 'B.5 Akasia', 40, 0, 'Lokasi Hasanudin', 2, '2023-01-08 15:44:32', '2023-01-08 15:44:32', NULL),
(46, 'B.6 Anthurium', 40, 0, 'Lokasi Hasanudin', 2, '2023-01-08 15:45:05', '2023-01-08 15:45:05', NULL),
(47, 'B.7 Azalea', 40, 0, 'Lokasi Hasanudin', 2, '2023-01-08 15:45:31', '2023-01-08 15:45:31', NULL),
(48, 'B.8 Begonia', 25, 3, 'Lokasi Hasanudin', 2, '2023-01-08 15:45:52', '2023-01-08 15:48:51', NULL),
(49, 'C.1 Cut Nyak Dien', 50, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:46:36', '2023-01-08 15:46:36', NULL),
(50, 'C.2 Kartini', 51, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:46:55', '2023-01-08 15:46:55', NULL),
(51, 'C.3 Dewi Sartika', 50, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:47:17', '2023-01-08 15:47:17', NULL),
(52, 'C.4 Fatmawati', 50, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:47:44', '2023-01-08 15:47:44', NULL),
(53, 'C.5 Malahayati', 50, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:48:05', '2023-01-08 15:48:05', NULL),
(54, 'C.10 Lantai 1 BSL', 30, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:49:57', '2023-01-08 15:49:57', NULL),
(55, 'C.11 Lantai 2 BSL', 30, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:50:12', '2023-01-08 15:50:12', NULL),
(56, 'C.12 Kujang', 30, 3, 'Lokasi Sudirman', 2, '2023-01-08 15:50:49', '2023-01-08 15:50:49', NULL),
(57, 'C.13 Keris', 30, 2, 'Lokasi Sudirman', 2, '2023-01-08 15:51:11', '2023-01-08 15:58:56', NULL),
(58, 'C.14 Rencong', 50, 0, 'Lokasi Sudirman', 2, '2023-01-08 15:51:39', '2023-01-08 15:51:39', NULL),
(59, 'A.12 Soeharto', 80, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 15:52:17', '2023-01-08 15:52:17', NULL),
(60, 'A.13 Soekarno', 114, 0, 'Lokasi Dipenogoro', 2, '2023-01-08 15:52:52', '2023-01-08 15:55:13', NULL),
(61, 'LC', 80, 0, 'Lokasi BJ Habibie', 2, '2023-01-08 15:53:23', '2023-01-08 15:53:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Lab', 1, '2021-08-04 15:52:24', '2021-08-04 15:52:24'),
(2, 'Kelas', 1, '2021-08-04 15:52:24', '2023-01-08 16:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
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
-- Indexes for table `admin_user_details`
--
ALTER TABLE `admin_user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `borrow_rooms`
--
ALTER TABLE `borrow_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_rooms_room_id_foreign` (`room_id`),
  ADD KEY `borrow_rooms_borrower_id_foreign` (`borrower_id`),
  ADD KEY `borrow_rooms_lecturer_id_foreign` (`lecturer_id`),
  ADD KEY `borrow_rooms_admin_id_foreign` (`admin_id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `admin_user_details`
--
ALTER TABLE `admin_user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `borrow_rooms`
--
ALTER TABLE `borrow_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow_rooms`
--
ALTER TABLE `borrow_rooms`
  ADD CONSTRAINT `borrow_rooms_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_rooms_borrower_id_foreign` FOREIGN KEY (`borrower_id`) REFERENCES `admin_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_rooms_lecturer_id_foreign` FOREIGN KEY (`lecturer_id`) REFERENCES `admin_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_rooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
