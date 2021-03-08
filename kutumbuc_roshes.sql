-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2021 at 04:43 PM
-- Server version: 10.1.41-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kutumbuc_roshes`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `computer_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `computer_ip`, `session_id`, `type`, `created_at`, `updated_at`) VALUES
(1, '1', 'Added new service with title - Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:08:11', '2021-02-24 21:08:11'),
(2, '1', 'updated service with title - Test Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:08:24', '2021-02-24 21:08:24'),
(3, '1', 'updated service with title - Test Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:08:37', '2021-02-24 21:08:37'),
(4, '1', 'featured service with name - Test Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:08:45', '2021-02-24 21:08:45'),
(5, '1', 'unfeatured service with name - Test Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:08:53', '2021-02-24 21:08:53'),
(6, '1', 'deactivated service with name - Test Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:09:00', '2021-02-24 21:09:00'),
(7, '1', 'activated service with name - Test Test', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:09:05', '2021-02-24 21:09:05'),
(8, '1', 'Added new project category with Title - Construction', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:31:40', '2021-02-24 21:31:40'),
(9, '1', 'Added new project category with Title - Information Technology', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:31:49', '2021-02-24 21:31:49'),
(10, '1', 'updated project category with Title - Information Technologyyy', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:31:58', '2021-02-24 21:31:58'),
(11, '1', 'updated project category with Title - Information Technology', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:32:08', '2021-02-24 21:32:08'),
(12, '1', 'deactivated project category with name - Information Technology', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:32:14', '2021-02-24 21:32:14'),
(13, '1', 'deactivated project category with name - Construction', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:32:14', '2021-02-24 21:32:14'),
(14, '1', 'activated project category with name - Information Technology', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:32:19', '2021-02-24 21:32:19'),
(15, '1', 'activated project category with name - Construction', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:32:19', '2021-02-24 21:32:19'),
(16, '1', 'Added new project with title - Construction of Three story building', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:33:45', '2021-02-24 21:33:45'),
(17, '1', 'Added new project with title - Development of POS Solution', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:34:46', '2021-02-24 21:34:46'),
(18, '1', 'deactivated project with name - Development of POS Solution', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:34:55', '2021-02-24 21:34:55'),
(19, '1', 'deactivated project with name - Construction of Three story building', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:34:55', '2021-02-24 21:34:55'),
(20, '1', 'activated project with name - Development of POS Solution', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:00', '2021-02-24 21:35:00'),
(21, '1', 'activated project with name - Construction of Three story building', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:00', '2021-02-24 21:35:00'),
(22, '1', 'featured project with name - Development of POS Solution', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:05', '2021-02-24 21:35:05'),
(23, '1', 'featured project with name - Construction of Three story building', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:05', '2021-02-24 21:35:05'),
(24, '1', 'unfeatured project with name - Development of POS Solution', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:11', '2021-02-24 21:35:11'),
(25, '1', 'unfeatured project with name - Construction of Three story building', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:11', '2021-02-24 21:35:11'),
(26, '1', 'updated project with title - Development of POS Solutionssss', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:23', '2021-02-24 21:35:23'),
(27, '1', 'updated project with title - Development of POS Solution', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:35:35', '2021-02-24 21:35:35'),
(28, '1', 'Added new team member with Name - Francis Mogbana', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:51:09', '2021-02-24 21:51:09'),
(29, '1', 'Added new team member with Name - Francis Moore', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:53:58', '2021-02-24 21:53:58'),
(30, '1', 'updated team member with Name - Francis Mogbana', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:17', '2021-02-24 21:55:17'),
(31, '1', 'deactivated team member with name - Francis Moore', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:25', '2021-02-24 21:55:25'),
(32, '1', 'deactivated team member with name - Francis Mogbana', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:25', '2021-02-24 21:55:25'),
(33, '1', 'activated team member with name - Francis Moore', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:31', '2021-02-24 21:55:31'),
(34, '1', 'activated team member with name - Francis Mogbana', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:31', '2021-02-24 21:55:31'),
(35, '1', 'featured team member with name - Francis Moore', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:37', '2021-02-24 21:55:37'),
(36, '1', 'featured team member with name - Francis Mogbana', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:37', '2021-02-24 21:55:37'),
(37, '1', 'unfeatured team member with name - Francis Moore', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:44', '2021-02-24 21:55:44'),
(38, '1', 'unfeatured team member with name - Francis Mogbana', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 21:55:44', '2021-02-24 21:55:44'),
(39, '1', 'uploaded new images to gallery', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 22:12:09', '2021-02-24 22:12:09'),
(40, '1', 'uploaded new images to gallery', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 22:17:24', '2021-02-24 22:17:24'),
(41, '1', 'uploaded new images to gallery', '127.0.0.1', 'Ig5bnrm7j55aCx10ZXijBDbE3b2p730g5W4KxYZC', 1, '2021-02-24 22:17:52', '2021-02-24 22:17:52'),
(42, '1', 'Added new home image banner.', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:05:22', '2021-02-25 18:05:22'),
(43, '1', 'Added new home image banner.', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:05:38', '2021-02-25 18:05:38'),
(44, '1', 'Added new home image banner.', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:05:53', '2021-02-25 18:05:53'),
(45, '1', 'Home banner image updated', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:20:04', '2021-02-25 18:20:04'),
(46, '1', 'Home banner image updated', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:20:13', '2021-02-25 18:20:13'),
(47, '1', 'Home banner image updated', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:20:20', '2021-02-25 18:20:20'),
(48, '1', 'Home banner image updated', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:20:45', '2021-02-25 18:20:45'),
(49, '1', 'Home banner image updated', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:20:52', '2021-02-25 18:20:52'),
(50, '1', 'Home banner image updated', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 18:20:59', '2021-02-25 18:20:59'),
(51, '1', 'Updated Ministry details.', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:12:47', '2021-02-25 20:12:47'),
(52, '1', 'Updated Ministry details.', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:14:19', '2021-02-25 20:14:19'),
(53, '1', 'updated service with title - Structural Engineering', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:22:19', '2021-02-25 20:22:19'),
(54, '1', 'Added new service with title - Civil Engineering', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:24:09', '2021-02-25 20:24:09'),
(55, '1', 'Added new service with title - Oil and Gas', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:25:25', '2021-02-25 20:25:25'),
(56, '1', 'featured service with name - Oil and Gas', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:51:12', '2021-02-25 20:51:12'),
(57, '1', 'featured service with name - Civil Engineering', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:51:12', '2021-02-25 20:51:12'),
(58, '1', 'featured service with name - Structural Engineering', '127.0.0.1', 'YPVudi7C5nSrPzqEg3mWAnb66XLCZCT4V4ygshhq', 1, '2021-02-25 20:51:12', '2021-02-25 20:51:12'),
(59, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:04:41', '2021-02-26 18:04:41'),
(60, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:06:06', '2021-02-26 18:06:06'),
(61, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:06:34', '2021-02-26 18:06:34'),
(62, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:19:18', '2021-02-26 18:19:18'),
(63, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:20:48', '2021-02-26 18:20:48'),
(64, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:30:44', '2021-02-26 18:30:44'),
(65, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:49:16', '2021-02-26 18:49:16'),
(66, '1', 'Updated Ministry details.', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 18:50:56', '2021-02-26 18:50:56'),
(67, '1', 'featured team member with name - Francis Moore', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 19:05:24', '2021-02-26 19:05:24'),
(68, '1', 'featured team member with name - Francis Mogbana', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 19:05:24', '2021-02-26 19:05:24'),
(69, '1', 'Added new team member with Name - Nony Moore', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 19:07:47', '2021-02-26 19:07:47'),
(70, '1', 'featured team member with name - Nony Moore', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 19:08:01', '2021-02-26 19:08:01'),
(71, '1', 'Added new service with title - Project Consultancy', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:22:44', '2021-02-26 20:22:44'),
(72, '1', 'updated service with title - Oil and Gas', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:23:40', '2021-02-26 20:23:40'),
(73, '1', 'updated service with title - Project Consultancy', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:23:53', '2021-02-26 20:23:53'),
(74, '1', 'updated service with title - Oil and Gas', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:24:39', '2021-02-26 20:24:39'),
(75, '1', 'updated service with title - Oil and Gas', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:26:10', '2021-02-26 20:26:10'),
(76, '1', 'updated service with title - Civil Engineering', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:27:12', '2021-02-26 20:27:12'),
(77, '1', 'updated service with title - Structural Engineering', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:28:06', '2021-02-26 20:28:06'),
(78, '1', 'Social accounts updated', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:32:59', '2021-02-26 20:32:59'),
(79, '1', 'updated project with title - Development of POS Solution', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:58:29', '2021-02-26 20:58:29'),
(80, '1', 'updated project category with Title - Oil and Gas', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 20:58:56', '2021-02-26 20:58:56'),
(81, '1', 'updated project with title - Rice Mill Factory', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:04:15', '2021-02-26 21:04:15'),
(82, '1', 'updated project with title - Construction of Mariot hotel', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:05:47', '2021-02-26 21:05:47'),
(83, '1', 'Added new project with title - Construction of 3km drainage channel', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:08:01', '2021-02-26 21:08:01'),
(84, '1', 'Added new project with title - Ultimate Mall', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:09:00', '2021-02-26 21:09:00'),
(85, '1', 'Added new project with title - 3.2KM Road', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:10:41', '2021-02-26 21:10:41'),
(86, '1', 'Added new project with title - Eight bedroom duplex', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:11:55', '2021-02-26 21:11:55'),
(87, '1', 'Added new project with title - Code 2 restaurant', '127.0.0.1', 'Nk3Fjp7ju8EnsqdxVhG78T4ml8JxO52m5LXwkAUC', 1, '2021-02-26 21:12:48', '2021-02-26 21:12:48'),
(88, '1', 'deactivated project with name - Eight bedroom duplex', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:08:45', '2021-02-27 09:08:45'),
(89, '1', 'deactivated project with name - 3.2KM Road', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:08:45', '2021-02-27 09:08:45'),
(90, '1', 'deactivated project with name - Ultimate Mall', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:08:45', '2021-02-27 09:08:45'),
(91, '1', 'Added new blog category. Title - Technology', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:35:51', '2021-02-27 09:35:51'),
(92, '1', 'Added new blog category. Title - Engineering & Technology', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:36:23', '2021-02-27 09:36:23'),
(93, '1', 'deleted blog category with name  - Technology', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:36:30', '2021-02-27 09:36:30'),
(94, '1', 'Added new blog category. Title - Lifestyle', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 09:36:55', '2021-02-27 09:36:55'),
(95, '1', 'Added new blog post. Title - NNPC losses 200,000b daily to theft', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 10:09:45', '2021-02-27 10:09:45'),
(96, '1', 'Added new blog post. Title - Lagos begins modular building construction', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 10:12:17', '2021-02-27 10:12:17'),
(97, '1', 'Added new blog post. Title - Construction picks up in cities as materials become costly', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 10:15:38', '2021-02-27 10:15:38'),
(98, '1', 'Added new blog post. Title - How digital engineering can help the construction sector', '127.0.0.1', 'GBqTbgYlQwiXfGlLhq95ecgqtVrlLr70fD1QjibM', 1, '2021-02-27 10:18:20', '2021-02-27 10:18:20'),
(99, '1', 'enquiry status changed to processing', '127.0.0.1', 'Ys5srQ43J6yJYEsqjRtgkjGHTZqOpzXnhz5lZDir', 1, '2021-02-27 12:30:39', '2021-02-27 12:30:39'),
(100, '1', 'enquiry status changed to processing', '127.0.0.1', 'Ys5srQ43J6yJYEsqjRtgkjGHTZqOpzXnhz5lZDir', 1, '2021-02-27 12:30:39', '2021-02-27 12:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `role` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_reset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fname`, `lname`, `tel`, `email`, `country`, `state`, `city`, `address`, `image`, `status`, `role`, `password`, `password_reset`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'User', '08011111111', 'admin@roshes.ng', NULL, NULL, NULL, NULL, NULL, 1, 3, '$2y$10$0800taZVPgQE3yukmXj5neg6w/21nDk/if5VVLLvo32aIQik97ACC', NULL, 1, '2021-02-22 20:03:02', '2021-02-22 20:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `title`, `description`, `button_name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '1614279921.jpg', NULL, 'Vestibulum tincidunt', 'Ut wisi enim ad minim veniam, quis nostrud exerci', NULL, 1, 1, '2021-02-25 18:05:21', '2021-02-25 18:20:59'),
(2, '1614279938.jpg', NULL, 'Vestibulum tincidunt', 'Ut wisi enim ad minim veniam, quis nostrud exerci', NULL, 1, 1, '2021-02-25 18:05:38', '2021-02-25 18:20:52'),
(3, '1614279953.jpg', NULL, 'Vestibulum tincidunt', 'Ut wisi enim ad minim veniam, quis nostrud exerci', NULL, 1, 1, '2021-02-25 18:05:53', '2021-02-25 18:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_video` int(11) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `slug`, `title`, `description`, `image`, `video_id`, `is_video`, `cat_id`, `status`, `featured`, `created_by`, `created_at`, `updated_at`, `keywords`) VALUES
(1, 'nnpc-losses-200000b-daily-to-theft-1614424185', 'NNPC losses 200,000b daily to theft', '<p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">The Nigerian National Petroleum Corporation (NNPC) has said the nation was still losing about 200,000 barrels of crude oil daily to theft and vandalism.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">Group Managing Director (GMD) Mallam Mele Kyari, alongside his top management staff, made this known in a meeting with the Chief of Defence Staff, Major General Lucky Irabor at Defence Headquarters in Abuja.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">He commended the security agencies for their support and called for more protection for NNPC’s operational assets and personnel.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">He disclosed though petroleum products theft on the System 2B Pipeline has reduced considerably due to support from the security agencies, the nation was still losing about 200,000 barrels of crude oil daily to theft and vandalism.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">“We have two sets of losses, one coming from our products and the other coming from crude oil. In terms of crude losses, it is still going on. On the average, we are losing 200,000 barrels of crude every day,” Kyari stated.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">Irabor commended Kyari for initiating the engagement, saying: “I am delighted that you made this effort, and I tell you that the Armed Forces of Nigeria will collaborate with you to protect NNPC’s assets”.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">Major General Irabor, who acknowledged the significant role of the oil and gas sector to the economy, said there was need for collaboration between the NNPC and the Armed Forces to protect oil and gas facilities which he described as the critical national assets.</p>', '1614424185.jpg', NULL, NULL, 2, 1, NULL, 1, '2021-02-27 10:09:45', '2021-02-27 10:09:45', NULL),
(2, 'lagos-begins-modular-building-construction-1614424337', 'Lagos begins modular building construction', '<p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">To ensure a conducive and secured environment for learning, the Lagos State Government has through its Special Committee on Rehabilitation of Public School (SCRPS) began modular building construction in public schools.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">One of such was at Vetland Junior Grammar School, Agege, while others are to be replicated in all the education districts. The Chairman of SCRPS, Mr. Hakeem Smith, who disclosed during a briefing on the committee’s achievements in the last one year, said the committee, established in 2004 by the Tinubu led administration as an intervention body has made giant strides in addressing the numerous infrastructural decays in Lagos public schools.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">With education and technology ranking uppermost in the Babajide Sanwo-Olu Administration’s T.H.E.M.E.S Agenda, he said, the committee’s focus was classified into six different areas namely; construction of new classroom blocks where there are shortfalls, rehabilitation of old and dilapidated classroom blocks, completion of abandoned classroom blocks, emergency works, construction of new schools in communities where non-existed and provision of students, teachers and principal’s furniture and other relevant initiatives.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">According to him, after the visitation to schools for needs assessment, a comprehensive list was generated for Year 2020 projects and divided into phase one and two.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">The phase one of the projects, Smith said, took off and comprises about 300 new classrooms, with on going construction of hostels, provision of about 100,000 student furniture in secondary and primary schools as well as emergency intervention in 42 schools in Lagos state public primary and secondary schools with varying classrooms per schools.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">Mr. Smith stressed that the on-going schools rehabilitation programme in the state at various sites have in no small measure contributed to the socio-economic outlook of the state.x</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">The construction industry, he said, helps the Gross Domestic Product (GDP) of any country, hence, the schools rehabilitation projects through the primary objective of erecting of structures in public schools has created numerous value chains of employment ranging from suppliers of building materials, bricklayers, tillers, carpenters and food vendors and others</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">He stressed that the year 2020, was a challenging one globally because of the corona virus outbreak, which grounded the world economy. Yet we made substantial progress with our phase one of the projects.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">“To date, the construction of about 300 classrooms is at various stages of completion.</p><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">The constructions of seven new hostel blocks, which will provide about 1, 400 bedding, are also nearing completion in the model colleges. In addition, the construction of eight watchtowers with alarm bells and perimeter fences to enhance security are already in place in those schools.</p><div><br></div>', '1614424337.jpg', NULL, NULL, 2, 1, NULL, 1, '2021-02-27 10:12:17', '2021-02-27 10:12:17', NULL),
(3, 'construction-picks-up-in-cities-as-materials-become-costly-1614424538', 'Construction picks up in cities as materials become costly', '<p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">After weeks of national lockdown, construction firms and property developers that jump-started operations in most Nigerian cities are alarmed by a sharp spike in building materials, especially cement, steel and paint prices, with experts urging the government to initiate negotiations with producers to rein in prices.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\"></p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">The lockdown has continued to cripple businesses in major cities and affecting construction workers. In the last count, more than 10,000 workers in projects are out of jobs. But with the easing of the lockdown, some of the construction firms and property developers are gradually going back to their sites in Lagos, Abuja, Port Harcourt, Kano, Kaduna and Aba.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">A new twist in the coronavirus pandemic is the scarcity of imported construction materials, which has raised products by 5-10 per cent over the prices of March. There are also hike in the prices of locally manufactured products such as cement, steel and paints.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">What is worrying property developers and construction firms are the increase in rates for a truck of sand and granite, which comes from across inter-state borders. In some circumstances, authorities at the checkpoints are stopping and seizing trucks carrying sand and granite.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">Dealers and manufacturers are blaming the high exchange rate of the naira to the dollar and increase in haulage costs. The new prices have taken most firms to the drawing board and delayed their openings. Operatives say some contractors may seek review of contract due to supply chains disruption, shortage of subcontractors and materials, and the termination of contracts to control expenses.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">The Executive Secretary, Paints Manufacturers Association of Nigeria (PMA), Mr. Jude Maduka who confirmed an increase in paint products by member companies told The Guardian, the price hike is inevitable for the industry’s survival.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">He stated that 70 per cent of raw materials used in the production of paints are imported, adding that the dollar to naira exchange rate has worsened the plight of manufacturers,</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">A top member of the Real Estate Developers Association of Nigeria (REDAN) and Chairman, Board of Trustees, Prince Oluseyi Lufadeju said, efforts of all the stakeholders in housing industry should be targeted at encouraging and ensuring that the bulk of building materials used in various projects are locally sourced.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">Lufadeju stressed that “it is no longer fanciful to rely on imported building materials for projects in the country. The closure of the ports definitely affected some imported materials from coming in. Taking advantage of situations like this, some traders jacked up their prices even when all construction sites were lockdown.</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">“Developers are adjusting themselves to the situation and definitely house prices will go up in response. The big lesson, however, is that COVID 19 has sent signals for everybody to be self-reliant. Even cement that is produced locally,&nbsp;wood products, granite and other building materials have their prices increased as a result of the lockdown. This happens whenever people try to take advantage of events and situations.&nbsp;</p><p style=\"margin-bottom: 1.2em; line-height: 1.55;\">“Ultimately,&nbsp;our best response is to keep on relying on locally produced materials. Eventually, we will be self-sufficient and proud in conserving foreign exchange as well as use our own products, which are very reliable, strong, durable and cost-efficient.”</p>', '1614424538.jpg', NULL, NULL, 2, 1, NULL, 1, '2021-02-27 10:15:38', '2021-02-27 10:15:38', NULL),
(4, 'how-digital-engineering-can-help-the-construction-sector-1614424700', 'How digital engineering can help the construction sector', '<p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\">The report analyses and evaluates the technologies and approaches that can be utilised to mitigate carbon emissions and provides an insight into the role of digital twins in the industry’s journey to net zero.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\">“The relationship between our planet and the built environment must be treated as symbiotic,\" says Asite CEO Nathan Doughty.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\">\"The industries central to delivering and maintaining our built environment: architecture, engineering and construction, property management, facilities and asset management, and, technology, software, and manufacturing have a huge role to play in the advancement of net zero carbon goals and are crucial to our future.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\">\"This report examines the challenges before us all and dives into how digital transformation and digital engineering will help us work together to achieve a resilient and sustainable built environment – for everything already built and everything we build next.”<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"></p><h2 style=\"padding: 0px; margin: 0.2em 0px;\">Issues within existing buildings</h2><p style=\"line-height: 1.6; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; margin-bottom: 15px; outline: 0px; padding: 0px; vertical-align: baseline;\"><br style=\"padding: 0px; margin: 0px;\">The report identifies the issues within existing buildings that must be addressed to meet global goals and the barriers preventing the widespread retrofitting required to accomplish global climate targets.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\">The snapshot report also discusses retrofitting on a global scale, examining government and organisation policies and initiatives from around the world – including the UK, Europe, UAE, North America, Australia, and India – to offer a global perspective on the issue.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\">In its conclusion, the report identifies how digital engineering can help the industry overcome the presented challenges and support the delivery of retrofits at scale to facilitate the construction industry in meeting its decarbonisation goals.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\">Digital twins are concluded to be the future of retrofitting. They offer the most comprehensive resource for retrofitting at scale as a composite of a variety of technologies. Digital twin technology will allow the industry to achieve current goals and also future-proof buildings beyond 2050 decarbonisation targets.</p>', '1614424700.jpg', NULL, NULL, 2, 1, NULL, 1, '2021-02-27 10:18:20', '2021-02-27 10:18:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `featured`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Engineering & Technology', 'engineering-technology-1614422183', 1, NULL, 1, '2021-02-27 09:36:23', '2021-02-27 09:36:23'),
(3, 'Lifestyle', 'lifestyle-1614422215', 1, NULL, 1, '2021-02-27 09:36:55', '2021-02-27 09:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescrpt` text COLLATE utf8mb4_unicode_ci,
  `fulldescrpt` text COLLATE utf8mb4_unicode_ci,
  `vision` text COLLATE utf8mb4_unicode_ci,
  `mission` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_descrpt` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `privacy` text COLLATE utf8mb4_unicode_ci,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_secure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_debug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_auth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `fullname`, `shortname`, `email`, `email2`, `tel`, `tel2`, `tel3`, `address`, `address2`, `shortdescrpt`, `fulldescrpt`, `vision`, `mission`, `value`, `keywords`, `meta_descrpt`, `logo`, `favicon`, `about`, `terms`, `privacy`, `currency`, `youtube_video`, `mail_host`, `mail_username`, `mail_password`, `mail_port`, `mail_secure`, `mail_debug`, `mail_auth`, `sms_host`, `sms_username`, `sms_password`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`, `background_image`) VALUES
(1, 'Roshes Limited', 'Roshes', 'contact@roshes.ng', NULL, '+234 902 996 9024', NULL, NULL, 'Suit 110 Bahamas Mall Gudu, F.C.T Abuja.', 'Suit 211 Ibom, E-library IBB way Uyo, Akwa Ibom State.', '<div class=\"OutlineElement Ltr  BCX0 SCXW123007934\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow: visible; cursor: text; clear: both; position: relative; direction: ltr;\"><div class=\"OutlineElement Ltr  BCX0 SCXW212493011\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow: visible; cursor: text; clear: both; position: relative; direction: ltr; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web&quot;, Arial, Verdana, sans-serif; font-size: 12px;\"><p class=\"Paragraph SCXW212493011 BCX0\" paraid=\"381164629\" paraeid=\"{1131491a-1ca0-415c-9022-2570bb861f2d}{237}\" style=\"margin-bottom: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow-wrap: break-word; vertical-align: baseline; font-kerning: none; background-color: transparent; color: windowtext;\"><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW212493011 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-variant-ligatures: none !important; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">Since 2013, we have been strongly committed to providing our customers with the highest level of service in the building, construction, oil and gas markets. Building and maintaining relationships with our customers is at the heart of our business and we have a planning and management style that is consultative and systematic.</span><span class=\"EOP SCXW212493011 BCX0\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">&nbsp;</span></p><p class=\"Paragraph SCXW212493011 BCX0\" paraid=\"381164629\" paraeid=\"{1131491a-1ca0-415c-9022-2570bb861f2d}{237}\" style=\"margin-bottom: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow-wrap: break-word; vertical-align: baseline; font-kerning: none; background-color: transparent; color: windowtext;\"><span class=\"EOP SCXW212493011 BCX0\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\"><br></span></p></div><div class=\"OutlineElement Ltr  BCX0 SCXW212493011\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow: visible; cursor: text; clear: both; position: relative; direction: ltr; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web&quot;, Arial, Verdana, sans-serif; font-size: 12px;\"><p class=\"Paragraph SCXW212493011 BCX0\" paraid=\"272592792\" paraeid=\"{1131491a-1ca0-415c-9022-2570bb861f2d}{243}\" style=\"margin-bottom: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow-wrap: break-word; vertical-align: baseline; font-kerning: none; background-color: transparent; color: windowtext;\"><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW212493011 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-variant-ligatures: none !important; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">We believe in a proactive approach to all aspects of our business, but in particular to quality, safety and delivery. By getting this right, we give our customers confidence and peace of mind during the process of planning, design and execution.</span><span class=\"EOP SCXW212493011 BCX0\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">&nbsp;</span></p><p class=\"Paragraph SCXW212493011 BCX0\" paraid=\"272592792\" paraeid=\"{1131491a-1ca0-415c-9022-2570bb861f2d}{243}\" style=\"margin-bottom: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow-wrap: break-word; vertical-align: baseline; font-kerning: none; background-color: transparent; color: windowtext;\"><span class=\"EOP SCXW212493011 BCX0\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\"><br></span></p></div><div class=\"OutlineElement Ltr  BCX0 SCXW212493011\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow: visible; cursor: text; clear: both; position: relative; direction: ltr; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web&quot;, Arial, Verdana, sans-serif; font-size: 12px;\"><p class=\"Paragraph SCXW212493011 BCX0\" paraid=\"1471705612\" paraeid=\"{1131491a-1ca0-415c-9022-2570bb861f2d}{249}\" style=\"margin-bottom: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow-wrap: break-word; vertical-align: baseline; font-kerning: none; background-color: transparent; color: windowtext;\"><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW212493011 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-variant-ligatures: none !important; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">We have the most experienced team; as such we maintain high standards of quality, safety and delivery. We have the capacity to deliver any scale of project.</span><span class=\"EOP SCXW212493011 BCX0\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">&nbsp;</span></p></div><div class=\"OutlineElement Ltr  BCX0 SCXW212493011\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow: visible; cursor: text; clear: both; position: relative; direction: ltr; font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Web&quot;, Arial, Verdana, sans-serif; font-size: 12px;\"><p class=\"Paragraph SCXW212493011 BCX0\" paraid=\"1834497324\" paraeid=\"{1131491a-1ca0-415c-9022-2570bb861f2d}{255}\" style=\"margin-bottom: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; overflow-wrap: break-word; vertical-align: baseline; font-kerning: none; background-color: transparent; color: windowtext;\"><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW212493011 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-variant-ligatures: none !important; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">We have successfully executed projects across major cities with precision, integrity and timely delivery.</span><span class=\"EOP SCXW212493011 BCX0\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; font-size: 12pt; line-height: 21.85px; font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif;\">&nbsp;</span></p></div></div>', NULL, 'To be a leading company by safely and consistently delivering quality and innovative projects and services.', 'To safely deliver projects that build the benchmark of quality for the benefit of our clients, shareholders, employees and the communities we serve.', NULL, NULL, NULL, 'logo_1614367158.PNG', 'favicon_1614367158.PNG', 'about_1614367158.jpg', NULL, NULL, '₦', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', '2021-02-26 18:04:33', '2021-02-26 20:32:59', 'background_1614367844.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `email`, `tel`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Francis Moggbana', 'fmogbana@yahoo.com', '08130148519', 'test', 5, '2021-02-26 20:16:31', '2021-02-27 12:30:39'),
(2, 'Francis Moggbana', 'fmogbana@yahoo.com', '08130148518', 'testing', 5, '2021-02-26 20:19:10', '2021-02-27 12:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `project_id`, `image`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 1, '1614208643.0TnEvM.jpg', 1, 1, '2021-02-24 22:17:23', '2021-02-24 22:22:02'),
(5, 1, '1614208643.zeHiH6.jpg', 1, 1, '2021-02-24 22:17:23', '2021-02-24 22:22:02'),
(6, 1, '1614208643.TQ5vni.jpg', 1, 1, '2021-02-24 22:17:23', '2021-02-24 22:22:02'),
(7, 1, '1614208644.xrDLzq.jpg', 1, 1, '2021-02-24 22:17:24', '2021-02-24 22:22:02'),
(8, 2, '1614208672.CIYUvt.jpg', 1, 1, '2021-02-24 22:17:52', '2021-02-24 22:22:02'),
(9, 2, '1614208672.0ZHz0s.jpg', 1, 1, '2021-02-24 22:17:52', '2021-02-24 22:22:02'),
(10, 1, '1614208693.jpeg', 1, 1, '2021-02-24 22:17:52', '2021-02-24 22:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2021_02_13_203140_create_ministries_table', 1),
(36, '2021_02_13_203423_create_events_table', 1),
(37, '2021_02_13_203443_create_blogs_table', 1),
(39, '2021_02_13_204435_create_programmes_table', 1),
(40, '2021_02_13_204841_create_donations_table', 1),
(41, '2021_02_13_204911_create_products_table', 1),
(42, '2021_02_13_205005_create_payment_gateways_table', 1),
(43, '2021_02_13_205022_create_payments_table', 1),
(44, '2021_02_13_205036_create_orders_table', 1),
(45, '2021_02_13_205134_create_ordered_products_table', 1),
(46, '2021_02_13_205353_create_admins_table', 1),
(47, '2021_02_13_205641_create_user_ministries_table', 1),
(48, '2021_02_13_210152_create_carts_table', 1),
(49, '2021_02_13_210310_create_parish_messages_table', 1),
(50, '2021_02_13_211858_create_ministry_activities_table', 1),
(51, '2021_02_13_211931_create_ministry_excos_table', 1),
(52, '2021_02_13_212336_create_event_images_table', 1),
(53, '2021_02_13_212543_create_blog_categories_table', 1),
(54, '2021_02_13_212559_create_product_categories_table', 1),
(55, '2021_02_13_225513_create_banks_table', 1),
(56, '2021_02_13_232415_create_banners_table', 1),
(57, '2021_02_14_162141_create_activity_logs_table', 1),
(58, '2021_02_20_191426_add_keywords_to_blogs_table', 1),
(59, '2021_02_20_225524_add_user_id_to_payments_table', 1),
(60, '2021_02_20_231026_create_enquiries_table', 1),
(61, '2021_02_20_231428_create_newsletters_table', 1),
(62, '2021_02_21_190152_add_venue_to_events_table', 1),
(63, '2021_02_24_194009_create_services_table', 2),
(64, '2021_02_24_194037_create_projects_table', 2),
(65, '2021_02_24_194131_create_project_categories_table', 2),
(66, '2021_02_24_194201_create_teams_table', 2),
(67, '2021_02_24_194239_create_galleries_table', 2),
(68, '2021_02_13_203516_create_companies_table', 3),
(69, '2021_02_26_192208_add_background_image_to_companies_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ministries`
--

CREATE TABLE `ministries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ministry_activities`
--

CREATE TABLE `ministry_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ministry_id` int(11) NOT NULL,
  `activity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ministry_excos`
--

CREATE TABLE `ministry_excos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ministry_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `payment_method` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parish_messages`
--

CREATE TABLE `parish_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `donation_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_gateway_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `slug`, `name`, `public_key`, `secret_key`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'paystack', 'Paystack', 'Your public key', 'Your secret key', '', 1, NULL, NULL),
(2, 'flutter', 'Flutterwave', 'Your public key', 'Your secret key', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `featured` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time NOT NULL,
  `week_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_date` date DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `slug`, `title`, `cat_id`, `description`, `image`, `client`, `location`, `project_date`, `featured`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'construction-of-three-story-building', 'Construction of Mariot hotel', 1, '<p><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun  BCX0 SCXW94426009\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Construction of&nbsp;</span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun  BCX0 SCXW94426009\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\"><span class=\"NormalTextRun SpellingErrorV2  BCX0 SCXW94426009\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; background-repeat: repeat-x; background-position: left bottom; background-image: url(&quot;data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iNXB4IiBoZWlnaHQ9IjRweCIgdmlld0JveD0iMCAwIDUgNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIj4KICAgIDwhLS0gR2VuZXJhdG9yOiBTa2V0Y2ggNTYuMiAoODE2NzIpIC0gaHR0cHM6Ly9za2V0Y2guY29tIC0tPgogICAgPHRpdGxlPnNwZWxsaW5nX3NxdWlnZ2xlPC90aXRsZT4KICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBTa2V0Y2guPC9kZXNjPgogICAgPGcgaWQ9IkZsYWdzIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTAxMC4wMDAwMDAsIC0yOTYuMDAwMDAwKSIgaWQ9InNwZWxsaW5nX3NxdWlnZ2xlIj4KICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTAxMC4wMDAwMDAsIDI5Ni4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0wLDMgQzEuMjUsMyAxLjI1LDEgMi41LDEgQzMuNzUsMSAzLjc1LDMgNSwzIiBpZD0iUGF0aCIgc3Ryb2tlPSIjRUIwMDAwIiBzdHJva2Utd2lkdGg9IjEiPjwvcGF0aD4KICAgICAgICAgICAgICAgIDxyZWN0IGlkPSJSZWN0YW5nbGUiIHg9IjAiIHk9IjAiIHdpZHRoPSI1IiBoZWlnaHQ9IjQiPjwvcmVjdD4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+&quot;); border-bottom: 1px solid transparent;\">Mariot</span></span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun  BCX0 SCXW94426009\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">&nbsp;hotel</span></p>', '1614206025.jpeg', 'Private', 'Delta State', '2021-02-01', 2, 1, 1, '2021-02-24 21:33:45', '2021-02-26 21:05:47'),
(2, 'development-of-pos-solution', 'Rice Mill Factory', 1, '<p>Rice Mill Factory</p>', '1614206086.jpeg', 'Federal Ministry of Agriculture', 'Tala tamfara, Zamfara state and Zuru, Kebbi state.', '2021-01-02', 2, 1, 1, '2021-02-24 21:34:46', '2021-02-26 21:04:15'),
(3, 'construction-of-3km-drainage-channel', 'Construction of 3km drainage channel', 1, '<p><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW247448185 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Construction of 3km drain</span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW247448185 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">age channel</span></p>', '1614377281.jpg', 'VKS Nigeria Limited', 'Ona awa, Akwa Ibom state.', NULL, NULL, 1, 1, '2021-02-26 21:08:01', '2021-02-26 21:08:01'),
(4, 'ultimate-mall', 'Ultimate Mall', 1, '<p><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW247448185 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Construction of 3km drain</span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW247448185 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">age channel</span></p>', '1614377340.jpg', 'Private', 'FCT, Abuja', NULL, NULL, 6, 1, '2021-02-26 21:09:00', '2021-02-27 09:08:45'),
(5, '32km-road', '3.2KM Road', 1, '<p><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun  BCX0 SCXW224030628\" style=\"place-content: normal; place-items: normal; place-self: auto; alignment-baseline: auto; animation: 0s ease 0s 1 normal none running none; appearance: none; backdrop-filter: none; backface-visibility: visible; background-image: none; background-position: 0% 0%; background-size: auto; background-repeat: repeat; background-attachment: scroll; background-origin: padding-box; background-clip: border-box; background-blend-mode: normal; baseline-shift: 0px; block-size: auto; border-block: 0px none rgb(0, 0, 0); border: 0px none rgb(0, 0, 0); border-radius: 0px; border-collapse: separate; border-inline: 0px none rgb(0, 0, 0); inset: auto; box-shadow: none; box-sizing: content-box; break-after: auto; break-before: auto; break-inside: auto; buffered-rendering: auto; caption-side: top; caret-color: rgb(0, 0, 0); clear: none; clip: auto; clip-path: none; clip-rule: nonzero; color-interpolation: srgb; color-interpolation-filters: linearrgb; color-rendering: auto; columns: auto auto; gap: normal; column-rule: 0px none rgb(0, 0, 0); column-span: none; content: normal; cursor: text; cx: 0px; cy: 0px; d: none; direction: ltr; display: inline; dominant-baseline: auto; empty-cells: show; fill: rgb(0, 0, 0); fill-opacity: 1; fill-rule: nonzero; filter: none; flex: 0 1 auto; flex-flow: row nowrap; float: none; flood-color: rgb(0, 0, 0); flood-opacity: 1; font-kerning: none; font-optical-sizing: auto; font-stretch: 100%; font-variant-numeric: normal; font-variant-east-asian: normal; grid-auto-columns: auto; grid-auto-flow: row; grid-auto-rows: auto; grid-area: auto / auto / auto / auto; grid-template-areas: none; grid-template-columns: none; grid-template-rows: none; height: auto; hyphens: manual; image-orientation: from-image; image-rendering: auto; inline-size: auto; inset-block: auto; inset-inline: auto; isolation: auto; lighting-color: rgb(255, 255, 255); line-break: auto; line-height: 19px; list-style: outside none disc; margin-block: 0px; margin: 0px; margin-inline: 0px; marker: none; mask-type: luminance; max-block-size: none; max-height: none; max-inline-size: none; max-width: none; min-block-size: 0px; min-height: 0px; min-inline-size: 0px; min-width: 0px; mix-blend-mode: normal; object-fit: fill; object-position: 50% 50%; offset: none 0px auto 0deg; opacity: 1; order: 0; outline: rgb(0, 0, 0) none 0px; outline-offset: 0px; overflow-anchor: auto; overflow-wrap: break-word; overflow: visible; overscroll-behavior-block: auto; overscroll-behavior-inline: auto; padding-block: 0px; padding: 0px; padding-inline: 0px; paint-order: normal; perspective: none; perspective-origin: 0px 0px; pointer-events: auto; position: static; r: 0px; resize: none; ruby-position: over; rx: auto; ry: auto; scroll-behavior: auto; scroll-margin-block: 0px; scroll-margin-inline: 0px; scroll-padding-block: auto; scroll-padding-inline: auto; shape-image-threshold: 0; shape-margin: 0px; shape-outside: none; shape-rendering: auto; speak: normal; stop-color: rgb(0, 0, 0); stop-opacity: 1; stroke: none; stroke-dasharray: none; stroke-dashoffset: 0px; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 4; stroke-opacity: 1; stroke-width: 1px; tab-size: 8; table-layout: auto; text-align-last: auto; text-anchor: start; text-decoration-style: solid; text-decoration-color: rgb(0, 0, 0); text-decoration-skip-ink: auto; text-overflow: clip; text-rendering: auto; text-shadow: none; text-size-adjust: auto; text-underline-position: auto; touch-action: auto; transform: none; transform-origin: 0px 0px; transform-style: flat; transition: all 0s ease 0s; unicode-bidi: normal; user-select: text; vector-effect: none; vertical-align: baseline; visibility: visible; width: auto; will-change: auto; word-break: normal; writing-mode: horizontal-tb; x: 0px; y: 0px; z-index: auto; zoom: 1; -webkit-app-region: none; border-spacing: 0px; -webkit-border-image: none; -webkit-box-align: stretch; -webkit-box-decoration-break: slice; -webkit-box-direction: normal; -webkit-box-flex: 0; -webkit-box-ordinal-group: 1; -webkit-box-orient: horizontal; -webkit-box-pack: start; -webkit-font-smoothing: auto; -webkit-highlight: none; -webkit-hyphenate-character: auto; -webkit-line-break: auto; -webkit-locale: &quot;en-US&quot;; -webkit-mask-box-image-outset: 0; -webkit-mask-box-image-repeat: stretch; -webkit-mask-box-image-slice: 0 fill; -webkit-mask-box-image-source: none; -webkit-mask-box-image-width: auto; -webkit-mask: none 0% 0% / auto repeat border-box border-box; -webkit-mask-composite: source-over; -webkit-print-color-adjust: economy; -webkit-rtl-ordering: logical; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-combine: none; -webkit-text-emphasis: none rgb(0, 0, 0); -webkit-text-emphasis-position: over right; -webkit-text-fill-color: rgb(0, 0, 0); -webkit-text-orientation: vertical-right; -webkit-text-security: none; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-user-drag: none; -webkit-user-modify: read-only; -webkit-writing-mode: horizontal-tb;\"><span class=\"NormalTextRun  BCX0 SCXW224030628\" style=\"font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif; font-size: 16px; font-variant-ligatures: no-common-ligatures no-discretionary-ligatures no-historical-ligatures no-contextual; background-color: inherit;\">3.2KM Road</span></span></p>', '1614377441.jpg', 'Ministry of works', 'Mbikpong Ikot akpaedu Road, Ibesikpo asutan LGA, Akwa Ibom', NULL, NULL, 6, 1, '2021-02-26 21:10:41', '2021-02-27 09:08:45'),
(6, 'eight-bedroom-duplex', 'Eight bedroom duplex', 1, '<p><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun  BCX0 SCXW135507038\" style=\"place-content: normal; place-items: normal; place-self: auto; alignment-baseline: auto; animation: 0s ease 0s 1 normal none running none; appearance: none; backdrop-filter: none; backface-visibility: visible; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0); background-blend-mode: normal; baseline-shift: 0px; block-size: auto; border-block: 0px none rgb(0, 0, 0); border: 0px none rgb(0, 0, 0); border-radius: 0px; border-collapse: separate; border-inline: 0px none rgb(0, 0, 0); inset: auto; box-shadow: none; box-sizing: content-box; break-after: auto; break-before: auto; break-inside: auto; buffered-rendering: auto; caption-side: top; caret-color: rgb(0, 0, 0); clear: none; clip: auto; clip-path: none; clip-rule: nonzero; color-interpolation: srgb; color-interpolation-filters: linearrgb; color-rendering: auto; columns: auto auto; gap: normal; column-rule: 0px none rgb(0, 0, 0); column-span: none; content: normal; cursor: text; cx: 0px; cy: 0px; d: none; direction: ltr; display: inline; dominant-baseline: auto; empty-cells: show; fill: rgb(0, 0, 0); fill-opacity: 1; fill-rule: nonzero; filter: none; flex: 0 1 auto; flex-flow: row nowrap; float: none; flood-color: rgb(0, 0, 0); flood-opacity: 1; font-family: WordVisi_MSFontService, &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif; font-kerning: none; font-optical-sizing: auto; font-size: 16px; font-stretch: 100%; font-variant-ligatures: no-common-ligatures no-discretionary-ligatures no-historical-ligatures no-contextual; font-variant-numeric: normal; font-variant-east-asian: normal; grid-auto-columns: auto; grid-auto-flow: row; grid-auto-rows: auto; grid-area: auto / auto / auto / auto; grid-template-areas: none; grid-template-columns: none; grid-template-rows: none; height: auto; hyphens: manual; image-orientation: from-image; image-rendering: auto; inline-size: auto; inset-block: auto; inset-inline: auto; isolation: auto; lighting-color: rgb(255, 255, 255); line-break: auto; line-height: 19px; list-style: outside none disc; margin-block: 0px; margin: 0px; margin-inline: 0px; marker: none; mask-type: luminance; max-block-size: none; max-height: none; max-inline-size: none; max-width: none; min-block-size: 0px; min-height: 0px; min-inline-size: 0px; min-width: 0px; mix-blend-mode: normal; object-fit: fill; object-position: 50% 50%; offset: none 0px auto 0deg; opacity: 1; order: 0; outline: rgb(0, 0, 0) none 0px; outline-offset: 0px; overflow-anchor: auto; overflow-wrap: break-word; overflow: visible; overscroll-behavior-block: auto; overscroll-behavior-inline: auto; padding-block: 0px; padding: 0px; padding-inline: 0px; paint-order: normal; perspective: none; perspective-origin: 0px 0px; pointer-events: auto; position: static; r: 0px; resize: none; ruby-position: over; rx: auto; ry: auto; scroll-behavior: auto; scroll-margin-block: 0px; scroll-margin-inline: 0px; scroll-padding-block: auto; scroll-padding-inline: auto; shape-image-threshold: 0; shape-margin: 0px; shape-outside: none; shape-rendering: auto; speak: normal; stop-color: rgb(0, 0, 0); stop-opacity: 1; stroke: none; stroke-dasharray: none; stroke-dashoffset: 0px; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 4; stroke-opacity: 1; stroke-width: 1px; tab-size: 8; table-layout: auto; text-align-last: auto; text-anchor: start; text-decoration-style: solid; text-decoration-color: rgb(0, 0, 0); text-decoration-skip-ink: auto; text-overflow: clip; text-rendering: auto; text-shadow: none; text-size-adjust: auto; text-underline-position: auto; touch-action: auto; transform: none; transform-origin: 0px 0px; transform-style: flat; transition: all 0s ease 0s; unicode-bidi: normal; user-select: text; vector-effect: none; vertical-align: baseline; visibility: visible; width: auto; will-change: auto; word-break: normal; writing-mode: horizontal-tb; x: 0px; y: 0px; z-index: auto; zoom: 1; -webkit-app-region: none; border-spacing: 0px; -webkit-border-image: none; -webkit-box-align: stretch; -webkit-box-decoration-break: slice; -webkit-box-direction: normal; -webkit-box-flex: 0; -webkit-box-ordinal-group: 1; -webkit-box-orient: horizontal; -webkit-box-pack: start; -webkit-font-smoothing: auto; -webkit-highlight: none; -webkit-hyphenate-character: auto; -webkit-line-break: auto; -webkit-locale: &quot;en-US&quot;; -webkit-mask-box-image-outset: 0; -webkit-mask-box-image-repeat: stretch; -webkit-mask-box-image-slice: 0 fill; -webkit-mask-box-image-source: none; -webkit-mask-box-image-width: auto; -webkit-mask: none 0% 0% / auto repeat border-box border-box; -webkit-mask-composite: source-over; -webkit-print-color-adjust: economy; -webkit-rtl-ordering: logical; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-combine: none; -webkit-text-emphasis: none rgb(0, 0, 0); -webkit-text-emphasis-position: over right; -webkit-text-fill-color: rgb(0, 0, 0); -webkit-text-orientation: vertical-right; -webkit-text-security: none; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-user-drag: none; -webkit-user-modify: read-only; -webkit-writing-mode: horizontal-tb;\"><span class=\"NormalTextRun  BCX0 SCXW135507038\" style=\"background-color: inherit;\">Eight bedroom duplex</span></span></p>', '1614377515.jpg', 'Private', 'Osongama Estate Uyo, Akwa Ibom state.', NULL, NULL, 6, 1, '2021-02-26 21:11:55', '2021-02-27 09:08:45'),
(7, 'code-2-restaurant', 'Code 2 restaurant', 1, '<p><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW154393938 BCX0\" style=\"place-content: normal; place-items: normal; place-self: auto; alignment-baseline: auto; animation: 0s ease 0s 1 normal none running none; appearance: none; backdrop-filter: none; backface-visibility: visible; background-image: none; background-position: 0% 0%; background-size: auto; background-repeat: repeat; background-attachment: scroll; background-origin: padding-box; background-clip: border-box; background-blend-mode: normal; baseline-shift: 0px; block-size: auto; border-block: 0px none rgb(0, 0, 0); border: 0px none rgb(0, 0, 0); border-radius: 0px; border-collapse: separate; border-inline: 0px none rgb(0, 0, 0); inset: auto; box-shadow: none; box-sizing: content-box; break-after: auto; break-before: auto; break-inside: auto; buffered-rendering: auto; caption-side: top; caret-color: rgb(0, 0, 0); clear: none; clip: auto; clip-path: none; clip-rule: nonzero; color-interpolation: srgb; color-interpolation-filters: linearrgb; color-rendering: auto; columns: auto auto; gap: normal; column-rule: 0px none rgb(0, 0, 0); column-span: none; content: normal; cursor: text; cx: 0px; cy: 0px; d: none; direction: ltr; display: inline; dominant-baseline: auto; empty-cells: show; fill: rgb(0, 0, 0); fill-opacity: 1; fill-rule: nonzero; filter: none; flex: 0 1 auto; flex-flow: row nowrap; float: none; flood-color: rgb(0, 0, 0); flood-opacity: 1; font-kerning: none; font-optical-sizing: auto; font-stretch: 100%; font-variant-numeric: normal; font-variant-east-asian: normal; grid-auto-columns: auto; grid-auto-flow: row; grid-auto-rows: auto; grid-area: auto / auto / auto / auto; grid-template-areas: none; grid-template-columns: none; grid-template-rows: none; height: auto; hyphens: manual; image-orientation: from-image; image-rendering: auto; inline-size: auto; inset-block: auto; inset-inline: auto; isolation: auto; lighting-color: rgb(255, 255, 255); line-break: auto; line-height: 19px; list-style: outside none disc; margin-block: 0px; margin: 0px; margin-inline: 0px; marker: none; mask-type: luminance; max-block-size: none; max-height: none; max-inline-size: none; max-width: none; min-block-size: 0px; min-height: 0px; min-inline-size: 0px; min-width: 0px; mix-blend-mode: normal; object-fit: fill; object-position: 50% 50%; offset: none 0px auto 0deg; opacity: 1; order: 0; outline: rgb(0, 0, 0) none 0px; outline-offset: 0px; overflow-anchor: auto; overflow-wrap: break-word; overflow: visible; overscroll-behavior-block: auto; overscroll-behavior-inline: auto; padding-block: 0px; padding: 0px; padding-inline: 0px; paint-order: normal; perspective: none; perspective-origin: 0px 0px; pointer-events: auto; position: static; r: 0px; resize: none; ruby-position: over; rx: auto; ry: auto; scroll-behavior: auto; scroll-margin-block: 0px; scroll-margin-inline: 0px; scroll-padding-block: auto; scroll-padding-inline: auto; shape-image-threshold: 0; shape-margin: 0px; shape-outside: none; shape-rendering: auto; speak: normal; stop-color: rgb(0, 0, 0); stop-opacity: 1; stroke: none; stroke-dasharray: none; stroke-dashoffset: 0px; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 4; stroke-opacity: 1; stroke-width: 1px; tab-size: 8; table-layout: auto; text-align-last: auto; text-anchor: start; text-decoration-style: solid; text-decoration-color: rgb(0, 0, 0); text-decoration-skip-ink: auto; text-overflow: clip; text-rendering: auto; text-shadow: none; text-size-adjust: auto; text-underline-position: auto; touch-action: auto; transform: none; transform-origin: 0px 0px; transform-style: flat; transition: all 0s ease 0s; unicode-bidi: normal; user-select: text; vector-effect: none; vertical-align: baseline; visibility: visible; width: auto; will-change: auto; word-break: normal; writing-mode: horizontal-tb; x: 0px; y: 0px; z-index: auto; zoom: 1; -webkit-app-region: none; border-spacing: 0px; -webkit-border-image: none; -webkit-box-align: stretch; -webkit-box-decoration-break: slice; -webkit-box-direction: normal; -webkit-box-flex: 0; -webkit-box-ordinal-group: 1; -webkit-box-orient: horizontal; -webkit-box-pack: start; -webkit-font-smoothing: auto; -webkit-highlight: none; -webkit-hyphenate-character: auto; -webkit-line-break: auto; -webkit-locale: &quot;en-US&quot;; -webkit-mask-box-image-outset: 0; -webkit-mask-box-image-repeat: stretch; -webkit-mask-box-image-slice: 0 fill; -webkit-mask-box-image-source: none; -webkit-mask-box-image-width: auto; -webkit-mask: none 0% 0% / auto repeat border-box border-box; -webkit-mask-composite: source-over; -webkit-print-color-adjust: economy; -webkit-rtl-ordering: logical; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); -webkit-text-combine: none; -webkit-text-emphasis: none rgb(0, 0, 0); -webkit-text-emphasis-position: over right; -webkit-text-fill-color: rgb(0, 0, 0); -webkit-text-orientation: vertical-right; -webkit-text-security: none; -webkit-text-stroke-color: rgb(0, 0, 0); -webkit-user-drag: none; -webkit-user-modify: read-only; -webkit-writing-mode: horizontal-tb;\"><span class=\"NormalTextRun SCXW154393938 BCX0\" style=\"font-family: &quot;Century Gothic&quot;, &quot;Century Gothic_EmbeddedFont&quot;, &quot;Century Gothic_MSFontService&quot;, sans-serif; font-size: 16px; font-variant-ligatures: no-common-ligatures no-discretionary-ligatures no-historical-ligatures no-contextual; background-color: inherit;\">Code 2 restaurant</span></span></p>', '1614377568.jpg', 'Private', 'Uyo, Akwa Ibom state.', NULL, NULL, 1, 1, '2021-02-26 21:12:48', '2021-02-26 21:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `name`, `slug`, `status`, `featured`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Construction', 'construction-1614205900', 1, NULL, 1, '2021-02-24 21:31:40', '2021-02-24 21:32:19'),
(2, 'Oil and Gas', 'information-technology-1614205909', 1, NULL, 1, '2021-02-24 21:31:49', '2021-02-26 20:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `slug`, `title`, `description`, `image`, `featured`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'test', 'Structural Engineering', '<ul><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW222435918 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Design</span></li><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW225638105 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Building</span></li><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW62271934 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Renovation</span></li></ul>', '1614288139.jpg', 1, 1, 1, '2021-02-24 21:08:11', '2021-02-26 20:28:06'),
(2, 'civil-engineering', 'Civil Engineering', '<ul><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW259342154 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Road Construction</span></li><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW163000167 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Excavation</span></li><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW197591729 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Maintenance</span></li></ul>', '1614288249.jpg', 1, 1, 1, '2021-02-25 20:24:09', '2021-02-26 20:27:12'),
(3, 'oil-and-gas', 'Oil and Gas', '<ul><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW201624298 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Trucking</span></li><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW210526925 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Storage</span></li><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW35804348 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Downstream</span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW35804348 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">&nbsp;</span></li></ul>', '1614288325.jpg', 1, 1, 1, '2021-02-25 20:25:25', '2021-02-26 20:26:10'),
(4, 'project-consultancy', 'Project Consultancy', '<ul><li><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW153417018 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Project&nbsp;</span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW153417018 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">Conceptualization</span><span data-contrast=\"auto\" xml:lang=\"EN-US\" lang=\"EN-US\" class=\"TextRun SCXW153417018 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">&nbsp;and Planning</span><span class=\"EOP SCXW153417018 BCX0\" data-ccp-props=\"{&quot;134233279&quot;:true,&quot;201341983&quot;:2,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\">&nbsp;</span></li><li><span class=\"EOP SCXW153417018 BCX0\" data-ccp-props=\"{&quot;134233279&quot;:true,&quot;201341983&quot;:2,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\"><span class=\"NormalTextRun SCXW33902914 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">Design Management and Coordination</span></span></li><li><span class=\"EOP SCXW153417018 BCX0\" data-ccp-props=\"{&quot;134233279&quot;:true,&quot;201341983&quot;:2,&quot;335559739&quot;:200,&quot;335559740&quot;:276}\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent; line-height: 19px;\"><span class=\"NormalTextRun SCXW33902914 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\"><span class=\"NormalTextRun SCXW95668832 BCX0\" style=\"margin: 0px; padding: 0px; user-select: text; -webkit-user-drag: none; -webkit-tap-highlight-color: transparent;\">Construction Project Management and Control</span></span></span></li></ul>', '1614374564.jpg', NULL, 1, 1, '2021-02-26 20:22:44', '2021-02-26 20:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `featured` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `position`, `description`, `image`, `facebook`, `twitter`, `instagram`, `linkedin`, `status`, `featured`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Francis Mogbana', 'francis-mogbana-1614207069', 'Director of Finance', '<p>test</p>', '1614207069.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', 1, 1, 1, '2021-02-24 21:51:09', '2021-02-26 19:05:24'),
(2, 'Francis Moore', 'francis-moore-1614207238', 'President / CEO', '<p>test</p>', '1614207238.jpg', 'https://www.facebook.com/', NULL, 'https://www.instagram.com/', NULL, 1, 1, 1, '2021-02-24 21:53:58', '2021-02-26 19:05:24'),
(3, 'Nony Moore', 'nony-moore-1614370067', 'Head Technologies', '<p>test</p>', '1614370067.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', 1, 1, 1, '2021-02-26 19:07:47', '2021-02-26 19:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_reset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_ministries`
--

CREATE TABLE `user_ministries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `ministry_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_id` (`ref_id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministries`
--
ALTER TABLE `ministries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `ministry_activities`
--
ALTER TABLE `ministry_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministry_excos`
--
ALTER TABLE `ministry_excos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_code` (`order_code`);

--
-- Indexes for table `parish_messages`
--
ALTER TABLE `parish_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`,`slug`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_id` (`ref_id`);

--
-- Indexes for table `user_ministries`
--
ALTER TABLE `user_ministries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ministries`
--
ALTER TABLE `ministries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ministry_activities`
--
ALTER TABLE `ministry_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ministry_excos`
--
ALTER TABLE `ministry_excos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parish_messages`
--
ALTER TABLE `parish_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_ministries`
--
ALTER TABLE `user_ministries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
