-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2021 at 09:20 AM
-- Server version: 10.3.30-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `takoenco_homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `subject_id`, `subject_type`, `type`, `created_at`, `updated_at`) VALUES
(5, 12, 4, 'App\\Models\\Reply', 'created_reply', '2021-06-16 12:26:45', '2021-06-16 12:26:45'),
(6, 12, 2, 'App\\Models\\Like', 'created_like', '2021-06-16 12:26:52', '2021-06-16 12:26:52'),
(31, 16, 20, 'App\\Models\\Reply', 'created_reply', '2021-06-16 15:15:40', '2021-06-16 15:15:40'),
(32, 12, 12, 'App\\Models\\Like', 'created_like', '2021-06-16 15:22:50', '2021-06-16 15:22:50'),
(34, 12, 22, 'App\\Models\\Reply', 'created_reply', '2021-06-17 03:32:10', '2021-06-17 03:32:10'),
(35, 12, 23, 'App\\Models\\Reply', 'created_reply', '2021-06-17 03:34:28', '2021-06-17 03:34:28'),
(36, 12, 13, 'App\\Models\\Like', 'created_like', '2021-06-17 03:34:54', '2021-06-17 03:34:54'),
(37, 17, 14, 'App\\Models\\Like', 'created_like', '2021-06-17 03:35:41', '2021-06-17 03:35:41'),
(39, 17, 25, 'App\\Models\\Reply', 'created_reply', '2021-06-17 03:44:18', '2021-06-17 03:44:18'),
(40, 17, 15, 'App\\Models\\Like', 'created_like', '2021-06-17 03:44:22', '2021-06-17 03:44:22'),
(41, 18, 26, 'App\\Models\\Reply', 'created_reply', '2021-06-17 07:14:11', '2021-06-17 07:14:11'),
(42, 12, 16, 'App\\Models\\Like', 'created_like', '2021-06-17 07:16:32', '2021-06-17 07:16:32'),
(43, 13, 27, 'App\\Models\\Reply', 'created_reply', '2021-06-17 16:12:30', '2021-06-17 16:12:30'),
(45, 18, 29, 'App\\Models\\Reply', 'created_reply', '2021-06-20 01:44:32', '2021-06-20 01:44:32'),
(46, 12, 17, 'App\\Models\\Like', 'created_like', '2021-06-21 05:41:10', '2021-06-21 05:41:10'),
(47, 13, 30, 'App\\Models\\Reply', 'created_reply', '2021-06-28 10:19:43', '2021-06-28 10:19:43'),
(48, 12, 18, 'App\\Models\\Like', 'created_like', '2021-06-29 15:47:31', '2021-06-29 15:47:31'),
(49, 12, 31, 'App\\Models\\Reply', 'created_reply', '2021-06-29 15:48:58', '2021-06-29 15:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2021-06-12 14:51:27', NULL),
(2, 'Node.js', 'nodejs', '2021-06-12 14:51:27', NULL),
(3, 'Vue.js', 'vuejs', '2021-06-12 14:51:27', NULL),
(4, 'React.js', 'reactjs', '2021-06-12 14:51:27', NULL),
(5, 'Angular', 'angular', '2021-06-12 14:51:27', NULL),
(6, 'ASP.Net', 'aspnet', '2021-06-12 14:51:27', NULL),
(7, 'Django', 'django', '2021-06-12 14:51:27', NULL),
(8, 'Nuxt.js', 'nuxtjs', '2021-06-12 14:51:27', NULL),
(9, 'React Native', 'react-native', '2021-06-12 14:51:27', NULL),
(10, 'NativeScript', 'nativescript', '2021-06-12 14:51:27', NULL),
(11, 'Crypto', 'crypto', '2021-06-16 11:44:03', '2021-06-16 11:44:03'),
(14, 'Web Developer', 'web-developer', '2021-06-16 11:45:00', '2021-06-16 11:45:00'),
(15, 'Bitcoin', 'bitcoin', '2021-06-16 11:45:00', '2021-06-16 11:45:00'),
(16, ' Music', ' music', '2021-06-16 14:24:54', '2021-06-16 14:24:54'),
(17, 'Fun ', 'fun ', '2021-06-16 14:24:54', '2021-06-16 14:24:54'),
(18, 'review', 'review', '2021-06-16 14:24:54', '2021-06-16 14:24:54'),
(19, 'Operating System', 'operating-system', '2021-06-16 14:24:54', '2021-06-16 14:24:54'),
(20, 'Tips & Trik ', 'tips&trik ', '2021-06-16 14:24:54', '2021-06-16 14:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `liked_id` int(10) UNSIGNED NOT NULL,
  `liked_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `liked_id`, `liked_type`, `created_at`, `updated_at`) VALUES
(2, 12, 4, 'App\\Models\\Reply', '2021-06-16 12:26:52', '2021-06-16 12:26:52'),
(12, 12, 20, 'App\\Models\\Reply', '2021-06-16 15:22:50', '2021-06-16 15:22:50'),
(13, 12, 23, 'App\\Models\\Reply', '2021-06-17 03:34:54', '2021-06-17 03:34:54'),
(14, 17, 22, 'App\\Models\\Reply', '2021-06-17 03:35:41', '2021-06-17 03:35:41'),
(15, 17, 25, 'App\\Models\\Reply', '2021-06-17 03:44:22', '2021-06-17 03:44:22'),
(16, 12, 26, 'App\\Models\\Reply', '2021-06-17 07:16:32', '2021-06-17 07:16:32'),
(17, 12, 29, 'App\\Models\\Reply', '2021-06-21 05:41:10', '2021-06-21 05:41:10'),
(18, 12, 30, 'App\\Models\\Reply', '2021-06-29 15:47:31', '2021-06-29 15:47:31');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_26_130106_create_channels_table', 1),
(5, '2020_04_26_130249_create_threads_table', 1),
(6, '2020_04_26_130907_create_replies_table', 1),
(7, '2020_04_29_132635_create_activities_table', 1),
(8, '2020_04_29_161754_create_likes_table', 1),
(9, '2020_04_29_161943_create_thread_follows_table', 1),
(10, '2020_04_29_162155_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0face874-4b52-42e1-b2fc-0bf0b8d541b6', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 12, '{\"message\":\"Ida Bagus Putu Wira Kusuma replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/laravel\\/103#reply-12\"}', '2021-06-16 13:48:27', '2021-06-16 13:04:30', '2021-06-16 13:48:27'),
('1dbca5f6-d80d-478d-94bd-56dae598aedd', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 17, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-23\"}', '2021-06-17 03:36:30', '2021-06-17 03:34:28', '2021-06-17 03:36:30'),
('1e2798d0-5123-47c4-a5e7-61c1168ed1e0', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-19\"}', NULL, '2021-06-16 13:11:17', '2021-06-16 13:11:17'),
('48a8ea26-22be-4bd1-a207-b54bc45476f0', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-28\"}', NULL, '2021-06-18 12:04:38', '2021-06-18 12:04:38'),
('640ce9b3-ce3f-4916-ab5a-ffaac3e94202', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Yoseph Dyanih replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/web-developer\\/103#reply-20\"}', '2021-06-16 15:17:11', '2021-06-16 15:15:40', '2021-06-16 15:17:11'),
('6964ac2b-8a57-41f3-bcb8-b4b78306ca44', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 12, '{\"message\":\"Yoseph Dyanih replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/web-developer\\/103#reply-20\"}', '2021-06-17 00:23:56', '2021-06-16 15:15:40', '2021-06-17 00:23:56'),
('6c753030-1448-429f-878f-61e86c2d4d44', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 12, '{\"message\":\"Ida Bagus Putu Wira Kusuma replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-18\"}', '2021-06-16 13:48:15', '2021-06-16 13:11:05', '2021-06-16 13:48:15'),
('7c76b111-ca6b-4416-8684-ef8693178c95', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 17, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-28\"}', NULL, '2021-06-18 12:04:38', '2021-06-18 12:04:38'),
('81e5e056-b312-4f02-9fb5-0399e163e75b', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 12, '{\"message\":\"Ida Bagus Putu Wira Kusuma replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-17\"}', '2021-06-16 13:48:23', '2021-06-16 13:08:36', '2021-06-16 13:48:23'),
('958d63eb-7429-4eb0-9f7d-a32e2f12c0d2', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/laravel\\/103#reply-15\"}', '2021-06-16 13:10:46', '2021-06-16 13:07:45', '2021-06-16 13:10:46'),
('a37d86b4-4394-4c8f-8ddd-2b7b8a161e51', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Harun replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/web-developer\\/103#reply-26\"}', NULL, '2021-06-17 07:14:11', '2021-06-17 07:14:11'),
('d36fa41c-a63d-4849-848d-cd4372db9a08', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Harga Bitcoin\",\"link\":\"\\/threads\\/bitcoin\\/108#reply-23\"}', NULL, '2021-06-17 03:34:28', '2021-06-17 03:34:28'),
('e00053a7-9067-45dd-b7f1-d25d1d754317', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 13, '{\"message\":\"Muhammad Naufal Firdana Trisya replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/laravel\\/103#reply-16\"}', '2021-06-16 13:10:36', '2021-06-16 13:08:11', '2021-06-16 13:10:36'),
('f33a0190-b6b1-46f2-8d1a-11ae8b348455', 'App\\Notifications\\ThreadWasUpdated', 'App\\Models\\User', 12, '{\"message\":\"Harun replied to Installasi dan konfigurasi dns server pada sistem operasi Debain\",\"link\":\"\\/threads\\/web-developer\\/103#reply-26\"}', '2021-06-21 04:50:39', '2021-06-17 07:14:11', '2021-06-21 04:50:39');

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
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `thread_id`, `message`, `created_at`, `updated_at`) VALUES
(4, 12, 104, 'fdsfdsfdsf', '2021-06-16 12:26:45', '2021-06-16 12:29:38'),
(20, 16, 103, 'Sepertinya membahas investasi untuk kaum muda disini seru.', '2021-06-16 15:15:40', NULL),
(22, 12, 112, 'f', '2021-06-17 03:32:10', NULL),
(23, 12, 108, 'Mantap', '2021-06-17 03:34:28', NULL),
(25, 17, 113, 'mantap', '2021-06-17 03:44:18', NULL),
(26, 18, 103, 'Mantul infonya sangat bermanfaat', '2021-06-17 07:14:11', NULL),
(27, 13, 115, 'mantap broo', '2021-06-17 16:12:30', NULL),
(29, 18, 117, 'mantap infonya', '2021-06-20 01:44:32', NULL),
(30, 13, 119, 'haha canda', '2021-06-28 10:19:43', NULL),
(31, 12, 119, 'misoh ik', '2021-06-29 15:48:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` bigint(20) UNSIGNED NOT NULL,
  `best_reply_id` bigint(20) UNSIGNED DEFAULT NULL,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `user_id`, `channel_id`, `best_reply_id`, `replies_count`, `title`, `content`, `closed_at`, `created_at`, `updated_at`) VALUES
(103, 12, 14, 26, 2, 'Installasi dan konfigurasi dns server pada sistem operasi Debain', '<p>Untuk menjalankan dns pertama-tama kita harus menginstall bind9 terlebih dahulu</p>\r\n\r\n<pre>\r\n<code>apt-get install bind9\r\n</code></pre>\r\n\r\n<p>selanjutnya menuju ke direktori bind</p>\r\n\r\n<pre>\r\n<code>cd /etc/bind/\r\n</code></pre>\r\n\r\n<p>untuk melihat isi direktori pada bind kita cukup ketikan</p>\r\n\r\n<pre>\r\n<code> ls \r\n</code></pre>\r\n\r\n<p><a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--hfqqCmV4--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/gxmk7fjj67ci43jgryrh.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--hfqqCmV4--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/gxmk7fjj67ci43jgryrh.png\" /></a></p>\r\n\r\n<p>edit named.conf.default-zones</p>\r\n\r\n<pre>\r\n<code>nano nemed.conf.default-zones\r\n</code></pre>\r\n\r\n<p><a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--hXvKQqKs--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/wtl26t0pph9fdi7oq6es.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--hXvKQqKs--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/wtl26t0pph9fdi7oq6es.png\" /></a></p>\r\n\r\n<blockquote>\r\n<p>cut : ctrl+k<br />\r\npaste : ctrl+u</p>\r\n</blockquote>\r\n\r\n<p>Selanjutnya ubah nama dirketori db.local dan db.127</p>\r\n\r\n<pre>\r\n<code>cp db.local db.{terserah}\r\ncp db.127 db.192\r\n</code></pre>\r\n\r\n<p>edit data pada file db.{terserah}<br />\r\n<a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--WWJYJvUp--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/s5nmh2x67m9mc93d1tsn.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--WWJYJvUp--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/s5nmh2x67m9mc93d1tsn.png\" /></a></p>\r\n\r\n<p><a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--7i6gFHp2--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/8rpu3j0opm2e9zt9ase0.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--7i6gFHp2--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/8rpu3j0opm2e9zt9ase0.png\" /></a></p>\r\n\r\n<pre>\r\n<code>nano /etc/resolv.conf\r\n</code></pre>\r\n\r\n<pre>\r\n<code>search  terserah.org\r\nnameserver 192.168.19.71\r\n</code></pre>\r\n\r\n<pre>\r\n<code>nano /etc/network/interfaces\r\n</code></pre>\r\n\r\n<p><a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--hNm5kTTG--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/oz9l7b4rocqqh0dkdqnl.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--hNm5kTTG--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/oz9l7b4rocqqh0dkdqnl.png\" /></a></p>\r\n\r\n<pre>\r\n<code>service networking restart\r\n</code></pre>\r\n\r\n<pre>\r\n<code>ifconfig\r\n</code></pre>\r\n\r\n<pre>\r\n<code>service bind9 restart\r\n</code></pre>\r\n\r\n<pre>\r\n<code>nslookup terserah.org\r\n</code></pre>\r\n\r\n<pre>\r\n<code>apt-get install dnsutils</code></pre>', NULL, '2021-06-16 12:23:40', '2021-06-16 13:46:23'),
(108, 13, 15, NULL, 1, 'Harga Bitcoin', '<p>dsfdsfsdf</p>', NULL, '2021-06-16 12:48:05', NULL),
(109, 12, 14, NULL, 0, 'Selamat Datang Di Forum Takoen', '<p>hey</p>', '2021-06-16 14:14:56', '2021-06-16 14:14:38', '2021-06-16 14:16:03'),
(110, 12, 1, NULL, 0, 'Donasi Untuk Pengembangan Takoen', '<p>Saweria:&nbsp;<a href=\"https://saweria.co/featuringx\">https://saweria.co/featuringx</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2021-06-16 15:41:19', '2021-06-16 15:18:45', NULL),
(111, 12, 14, NULL, 0, 'Installasi dan Konfigurasi Web&Database Server Pada Sistem Operasi Debain', '<p>Pertama install apache terlebih dahulu</p>\r\n\r\n<p><code>apt-get install apache2&nbsp;</code></p>\r\n\r\n<p>setelah itu install web server mysql dan phpmyadmin</p>\r\n\r\n<code>apt-get install phpmyadmin mysql-server</code>\r\n\r\n<p><a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--eoKkFEIJ--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/4yjvju30f3qzkejtl7rc.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--eoKkFEIJ--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/4yjvju30f3qzkejtl7rc.png\" /></a></p>\r\n\r\n<p><br />\r\n<a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--pmImgQMf--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/ycwvzdxm98gs4nas6l7w.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--pmImgQMf--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/ycwvzdxm98gs4nas6l7w.png\" /></a></p>', NULL, '2021-06-17 00:53:47', '2021-06-17 02:43:13'),
(113, 12, 1, NULL, 1, 'Installasi dan konfigurasi Wordpress pada sistem operasi Debain', '<p>Pertama download wordpress terlebih dahulu&nbsp;</p>\r\n\r\n<p>Setelah itu ekstark terlebih dahulu</p>\r\n\r\n<p>pindahkan file wordpress ke direktori www</p>\r\n\r\n<p>cd /var/www</p>\r\n\r\n<p>lalu masuk ke direktori wordpress</p>\r\n\r\n<p>cd wordpress</p>\r\n\r\n<p>untuk melihat isi folder ketikan ls</p>\r\n\r\n<p>ubah direkotri wp-config-sample.php menjadi wp-config.php</p>\r\n\r\n<p>cp wp-config-sample.php wp-config.php</p>\r\n\r\n<p>Selanjutnya edit wp-config.php</p>\r\n\r\n<p>nano wp-config.php<br />\r\n<a href=\"https://res.cloudinary.com/practicaldev/image/fetch/s--L419dnja--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/gdkfikrghh7jfkf15i5z.png\"><img alt=\"image\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--L419dnja--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/gdkfikrghh7jfkf15i5z.png\" /></a></p>\r\n\r\n<p>Selanjutnya buka phpmyadmin pada browser lalu login</p>\r\n\r\n<p>setelah itu buat database baru</p>\r\n\r\n<p><img alt=\"\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--sZWYStVJ--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/aodhl8jkwkgjzifdz711.png\" /></p>\r\n\r\n<p>buka direktori apache</p>\r\n\r\n<p><code>cd /etc/apache2/sites-available/</code><br />\r\n<code>ls</code><br />\r\n<code>cp default wordpress</code><br />\r\n<code>nano wordpress</code></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://res.cloudinary.com/practicaldev/image/fetch/s--34vYQo6q--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/hnjrwhnn1i9rizpbhtcz.png\" /></p>\r\n\r\n<p>cd /etc/apache2/sites-available</p>\r\n\r\n<p>a2ensite wordpress</p>\r\n\r\n<p>service apache2 restart</p>', NULL, '2021-06-17 03:43:28', '2021-06-18 12:22:54'),
(114, 12, 14, NULL, 0, 'Cara Mengatasi Error E: Unable To Locate package pada Debian 7', '<p>Pernahkah anda mengalami error&nbsp;<strong>E: Unable To Locate package</strong>&nbsp;pada saat akan menginstall software ?, penyebabnya adalah karena Debian 7 anda tidak mempunyai repository software yang akan anda install. Pada kesempatan kali ini kita akan belajar&nbsp;<strong>Cara Mengatasi Error E: Unable To Locate package pada Debian 7.</strong>&nbsp;Oke kita langsung saja ke tutorialnya.<br />\r\n&nbsp;</p>\r\n\r\n<p>Cara Pertama : Menggunakan DVD Installer Debian 7</p>\r\n\r\n<p>Pastikan kita sudah memiliki ketiga DVD Installer Debian 7-nya, jika ada yang belum punya download&nbsp;<a href=\"https://www.debian.org/releases/wheezy/debian-installer/\" target=\"_blank\">disini.</a></p>\r\n\r\n<blockquote>Jika tidak meiliki ketiga DVD Installernya, dan tidak mempunyai ruang atau kuota yang besar untuk mendownloadnya, lompat ke cara yang kedua.</blockquote>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-7PCRm_eSA7I/WwmeiDs8OzI/AAAAAAAAAM4/ZlcTN9W1tQchLo2eVl7J4stK1XjoIOypQCEwYBhgL/s1600/2.png\" /></p>\r\n\r\n<p><br />\r\n1. Pertama kita buka virtualbox dan jalankan mesin virtual yang sudah kita buat.</p>\r\n\r\n<blockquote>Jika ada yang belum punya bisa lihat tutorialnya&nbsp;<a href=\"https://agtekno.blogspot.co.id/2018/05/cara-menginstall-debian-7-di-virtualbox.html\" target=\"_blank\">disini.</a></blockquote>\r\n\r\n<p><img alt=\"Menghubungkan Debian 7 di Virtualbox dengan Internet\" src=\"https://4.bp.blogspot.com/-Zmu1ulIRj6E/WwmekoYNrII/AAAAAAAAAMs/AOr2-g-xNfQpbBHD4Q9Un9WIFvaa3F3LgCEwYBhgL/s1600/3.png\" /></p>\r\n\r\n<p><br />\r\n2. Tunggu Debian booting, lalu kita&nbsp;<strong>login</strong>&nbsp;dengan user masing-masing.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-7E8uIY8Ux00/Wwmek0UCspI/AAAAAAAAAMo/57XBMn-xoSADpi7z_0-kdUGGVhxyisgJACEwYBhgL/s1600/4.png\" /></p>\r\n\r\n<p><br />\r\n3. Selanjutnya&nbsp;<strong>masuk ke user root,</strong>&nbsp;kita ketik&nbsp;<strong>su</strong>&nbsp;lalu masukan password root masing-masing, lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-mJaSeY9-csY/WwmelIQmsVI/AAAAAAAAAM8/O0C99dCmd1Q5L5YPJX9Hl8-lUPH74FEkgCEwYBhgL/s1600/5.png\" /></p>\r\n\r\n<p><br />\r\n4. Kita klik tab&nbsp;<strong>Devices &gt; CD/DVD Devices &gt; Choose a virtual CD/DVD disk file.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-Yy0fVlpnsH0/WwmelHCxl-I/AAAAAAAAAM0/USs9WcM7Q6AYz2hXOf1Xmr_skEnbBuSkACEwYBhgL/s1600/6.png\" /></p>\r\n\r\n<p><br />\r\n5. Lalu kita cari file&nbsp;<strong>DVD-2,</strong>&nbsp;lalu klik&nbsp;<strong>Open.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-wStKvDmSlZM/WwmelQgJZQI/AAAAAAAAAMw/pxap92q79NwupNmOuHCGufOpHg6dGKkwgCEwYBhgL/s1600/7.png\" /></p>\r\n\r\n<p><br />\r\n6. Selanjutnya kita ketik&nbsp;<strong>apt-cdrom add</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-UzmPpst3VCk/Wwmel74IXlI/AAAAAAAAAM4/ldL3yU2A9wIBD8Z_FbE6FGh6vGDMJU4QgCEwYBhgL/s1600/8.png\" /></p>\r\n\r\n<p><br />\r\n7. Maka akan tampil kalimat&nbsp;<strong>This disc is called,</strong>&nbsp;langsung saja kita ketik&nbsp;<strong>apt-cdrom ident</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-S4OqC-VnfLk/Wwmel5kb4WI/AAAAAAAAAM8/WbCRqmqvcHQCnilsHfXmxyjBBvE88tUGACEwYBhgL/s1600/9.png\" /></p>\r\n\r\n<p><br />\r\n8. Kita klik lagi tab&nbsp;<strong>Devices &gt; CD/DVD Devices &gt; Choose a virtual CD/DVD disk file.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-gu3FWYZTCGI/WwmegH-vsHI/AAAAAAAAAMs/AHc4UPCcA58RVnxIQcLOAtOxgbUf2O1EwCEwYBhgL/s1600/10.png\" /></p>\r\n\r\n<p><br />\r\n9. Lalu kita cari file&nbsp;<strong>DVD-3,</strong>&nbsp;lalu klik&nbsp;<strong>Open.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-EOagO-hKJtY/WwmegFoNFDI/AAAAAAAAAM0/iJZT3tPq0v8QAQch0hcUbw4RiBprZ4vpwCEwYBhgL/s1600/11.png\" /></p>\r\n\r\n<p><br />\r\n10. Jika muncul peringatan seperti dibawah, kita langsung klik&nbsp;<strong>Force Unmount.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-hY-osjl-9Z0/WwmegiouRJI/AAAAAAAAAM4/AfUR-HuHl1EbW8_mqejNpv4xGqHWDvXgwCEwYBhgL/s1600/12.png\" /></p>\r\n\r\n<p><br />\r\n11. Selanjutnya kita ketik lagi&nbsp;<strong>apt-cdrom add</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/--P5BpOWwSkA/Wwmeg1FfALI/AAAAAAAAAM8/ns3u4J5Z05ccxhXDplDs4CKWbR75BSdGgCEwYBhgL/s1600/13.png\" /></p>\r\n\r\n<p><br />\r\n12. Jika muncul kalimat&nbsp;<strong>Failed to mount &#39;/dev/sr0&#39; to &#39;/media/cdrom/&#39;</strong>&nbsp;kita ketik lagi&nbsp;<strong>apt-cdrom add</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-tAORRZUn-ws/Wwmegx4G_1I/AAAAAAAAAM8/5GM6s7-O7bcn-7tS4nXr-80M8c0SHx0jgCEwYBhgL/s1600/14.png\" /></p>\r\n\r\n<p><br />\r\n13. Jika sudah tampil kalimat&nbsp;<strong>This disc is called,</strong>&nbsp;langsung saja kita ketik&nbsp;<strong>apt-cdrom ident</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-kz-dVsrKiRU/WwmehePJYsI/AAAAAAAAAMs/iIPC3ABsyBszn6RoYcRUsInbn4S72vbfACEwYBhgL/s1600/15.png\" /></p>\r\n\r\n<p><br />\r\n14. Selanjutnya kita coba menginstall software, ketik&nbsp;<strong>apt-get install isc-dhcp-server</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-WConUkVf8qs/WwmehcHMc8I/AAAAAAAAAMk/BRc4BJ7NzSkKoPTwAZIQuz_zfCGc8eJSQCEwYBhgL/s1600/16.png\" /></p>\r\n\r\n<p><br />\r\n15. Maka akan muncul perintah bahwa kita harus memasukan DVD-2, kita klik tab&nbsp;<strong>Devices &gt; CD/DVD Devices &gt; Pilih DVD-2.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-qPZK-fVSNV8/WwmehfhwZkI/AAAAAAAAAMw/QK4ZI-r4_FcomdpAoCEqbBfHIKrWcVwnQCEwYBhgL/s1600/17.png\" /></p>\r\n\r\n<p><br />\r\n16. Jika muncul peringatan seperti dibawah, kita langsung klik&nbsp;<strong>Force Unmount.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-vKrPEj75J-4/Wwmeh4dpq2I/AAAAAAAAAM4/Xg09ULChSuErNUAccQDR_cXAKnkUPcUMgCEwYBhgL/s1600/18.png\" /></p>\r\n\r\n<p><br />\r\n17. Selanjutnya klik Enter, tunggu sampai proses installasi selesai.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-3XzmQtPyC1A/Wwmeh1itUlI/AAAAAAAAAMs/s5d92eH322c_zRvVjx12TCt0o1trG3rmwCEwYBhgL/s1600/19.png\" /></p>\r\n\r\n<p><br />\r\n18. Jika sudah selesai maka akan muncul tampilan seperti dibawah ini.</p>\r\n\r\n<blockquote>Peringatan&nbsp;<strong>Failed!</strong>&nbsp;bukan berarti installasi gagal, karena kita memang harus mensetting dhcp-servernya terlebih dahulu.</blockquote>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-h7BqL93HxLI/WwmeiZl7BGI/AAAAAAAAAM0/SjdSSPEP_k0d4jLanw2aR2UoKZcCTJ21wCEwYBhgL/s1600/20.png\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Cara Kedua : Menggunakan repository lokal (internet)</p>\r\n\r\n<p>Cara ini berguna bagi anda yang tidak memiliki ketiga DVD Installer Debian 7 dan tidak ingin mendownloadnya karena terbatasnya ruang atau kuota, dengan syarat&nbsp;<strong>PC dan mesin virtual Debian 7 anda harus terhubung ke internet.</strong></p>\r\n\r\n<blockquote>Jika mesin virtual Debian 7 anda belum terhubung ke internet bisa lihat tutorialnya&nbsp;<a href=\"https://agtekno.blogspot.co.id/2018/05/cara-menghubungkan-debian-7-di.html\" target=\"_blank\">disini.</a></blockquote>\r\n\r\n<p><br />\r\n1. Pertama kita buka virtualbox dan jalankan mesin virtual yang sudah kita buat.</p>\r\n\r\n<blockquote>Jika ada yang belum punya bisa lihat tutorialnya&nbsp;<a href=\"https://agtekno.blogspot.co.id/2018/05/cara-menginstall-debian-7-di-virtualbox.html\" target=\"_blank\">disini.</a></blockquote>\r\n\r\n<p><img alt=\"Menghubungkan Debian 7 di Virtualbox dengan Internet\" src=\"https://4.bp.blogspot.com/-Zmu1ulIRj6E/WwmekoYNrII/AAAAAAAAAMs/AOr2-g-xNfQpbBHD4Q9Un9WIFvaa3F3LgCEwYBhgL/s1600/3.png\" /></p>\r\n\r\n<p><br />\r\n2. Lalu tes terlebih dahulu apakah mesin virtual Debian 7 kita sudah terhubung ke internet?, kita ketik&nbsp;<strong>ping 8.8.8.8</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-wnnotSWZ-g4/WwmeigmKU8I/AAAAAAAAAM4/lmA-G1wuV84MPMjGS_3zV-rhqpXb-gLfACEwYBhgL/s1600/21.png\" /></p>\r\n\r\n<p><br />\r\n3. Jika sudah terhubung, kita ketik&nbsp;<strong>nano /etc/apt/sources.list</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-9m3IMWCr8_E/Wwmei2MptII/AAAAAAAAAM4/IwkbQ993-7Eff40i5HK7ltP1assmmNf4gCEwYBhgL/s1600/22.png\" /></p>\r\n\r\n<p><br />\r\n4. Maka akan muncul settingan default sepeti gambar dibawah ini.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-bhO5dwm1ULA/Wwmei34cw1I/AAAAAAAAAM0/8rGIbKrOzTEwCV5uK3OnZMbQBNwu285rQCEwYBhgL/s1600/23.png\" /></p>\r\n\r\n<p><br />\r\n5. Karena kita hanya akan menggunakan repository lokal, kita&nbsp;<strong>beri tanda pagar (#) pada samping kiri tulisan yang berwarna selain biru.</strong>&nbsp;Selanjutnya pada bagian bawah sendiri kita&nbsp;<strong>tambahkan repository lokalnya</strong>&nbsp;(disini kita menggunakan Repo Kambing UI).</p>\r\n\r\n<pre>\r\n<code>deb http://kambing.ui.ac.id/debian/ wheezy main non-free contrib\r\ndeb-src http://kambing.ui.ac.id/debian/ wheezy main non-free contrib</code></pre>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-UgdM9uaRqqY/WwmejAxxQMI/AAAAAAAAAM8/48AJFJG5vk0AtrxVDnEVaPO03I73ukMhwCEwYBhgL/s1600/24.png\" /></p>\r\n\r\n<p><br />\r\n6. Selanjutnya kita&nbsp;<strong>save&nbsp;</strong>(CTRL+O), klik Enter, lalu&nbsp;<strong>keluar&nbsp;</strong>(CTRL+X).</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-zYqutFlujfE/Wwmejh5Zg3I/AAAAAAAAAM4/wxyE4s0RRUYQMccP0YMafEXr6ReGyHoMACEwYBhgL/s1600/25.png\" /></p>\r\n\r\n<p><br />\r\n7. Selanjutnya kita ketik&nbsp;<strong>apt-get update</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-M4tltmz944k/WwmekIdXmQI/AAAAAAAAAMw/1Es8i5njOu4VrfVINYBeXrGMHC8Ums9cQCEwYBhgL/s1600/26.png\" /></p>\r\n\r\n<p><br />\r\n8. Tunggu hingga selesai, lalu kita ketik&nbsp;<strong>apt-get install isc-dhcp-server</strong>.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-e7WifTv6xUI/WwmekAgay_I/AAAAAAAAAM0/vD9cE3lkmeIw7rE29tLay0v_vOZ6vnSEgCEwYBhgL/s1600/27.png\" /></p>\r\n\r\n<p><br />\r\n9. Jika muncul pilihan untuk melanjutkan proses installasi, kita ketik&nbsp;<strong>Y</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-YKbAqUtN6eI/WwmekVXMp_I/AAAAAAAAAM4/4VUchP3wgmQ_QbRYHFvxchqAaGpC-I-RgCEwYBhgL/s1600/28.png\" /></p>\r\n\r\n<p><br />\r\n10. Jika sudah selesai maka akan muncul tampilan seperti dibawah ini.</p>\r\n\r\n<blockquote>Peringatan&nbsp;<strong>Failed!</strong>&nbsp;bukan berarti installasi gagal, karena kita memang harus mensetting dhcp-servernya terlebih dahulu.</blockquote>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-uArKULsKFM8/Wwmekb9uX8I/AAAAAAAAAMs/qfu8aaUOT44erQwuFnqg1HAZNDljr6ZiACEwYBhgL/s1600/29.png\" /></p>', '2021-06-17 16:59:44', '2021-06-17 12:20:14', NULL),
(115, 12, 14, NULL, 1, 'Cara Mengatasi Error E: Unable To Locate package pada Debian 7', '<p>Pernahkah anda mengalami error&nbsp;<strong>E: Unable To Locate package</strong>&nbsp;pada saat akan menginstall software ?, penyebabnya adalah karena Debian 7 anda tidak mempunyai repository software yang akan anda install. Pada kesempatan kali ini kita akan belajar&nbsp;<strong>Cara Mengatasi Error E: Unable To Locate package pada Debian 7.</strong>&nbsp;Oke kita langsung saja ke tutorialnya.<br />\r\n&nbsp;</p>\r\n\r\n<p>Cara Pertama : Menggunakan DVD Installer Debian 7</p>\r\n\r\n<p>Pastikan kita sudah memiliki ketiga DVD Installer Debian 7-nya, jika ada yang belum punya download&nbsp;<a href=\"https://www.debian.org/releases/wheezy/debian-installer/\" target=\"_blank\">disini.</a></p>\r\n\r\n<blockquote>Jika tidak meiliki ketiga DVD Installernya, dan tidak mempunyai ruang atau kuota yang besar untuk mendownloadnya, lompat ke cara yang kedua.</blockquote>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-7PCRm_eSA7I/WwmeiDs8OzI/AAAAAAAAAM4/ZlcTN9W1tQchLo2eVl7J4stK1XjoIOypQCEwYBhgL/s1600/2.png\" /></p>\r\n\r\n<p><br />\r\n1. Pertama kita buka virtualbox dan jalankan mesin virtual yang sudah kita buat.</p>\r\n\r\n<blockquote>Jika ada yang belum punya bisa lihat tutorialnya&nbsp;<a href=\"https://agtekno.blogspot.co.id/2018/05/cara-menginstall-debian-7-di-virtualbox.html\" target=\"_blank\">disini.</a></blockquote>\r\n\r\n<p><img alt=\"Menghubungkan Debian 7 di Virtualbox dengan Internet\" src=\"https://4.bp.blogspot.com/-Zmu1ulIRj6E/WwmekoYNrII/AAAAAAAAAMs/AOr2-g-xNfQpbBHD4Q9Un9WIFvaa3F3LgCEwYBhgL/s1600/3.png\" /></p>\r\n\r\n<p><br />\r\n2. Tunggu Debian booting, lalu kita&nbsp;<strong>login</strong>&nbsp;dengan user masing-masing.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-7E8uIY8Ux00/Wwmek0UCspI/AAAAAAAAAMo/57XBMn-xoSADpi7z_0-kdUGGVhxyisgJACEwYBhgL/s1600/4.png\" /></p>\r\n\r\n<p><br />\r\n3. Selanjutnya&nbsp;<strong>masuk ke user root,</strong>&nbsp;kita ketik&nbsp;<strong>su</strong>&nbsp;lalu masukan password root masing-masing, lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-mJaSeY9-csY/WwmelIQmsVI/AAAAAAAAAM8/O0C99dCmd1Q5L5YPJX9Hl8-lUPH74FEkgCEwYBhgL/s1600/5.png\" /></p>\r\n\r\n<p><br />\r\n4. Kita klik tab&nbsp;<strong>Devices &gt; CD/DVD Devices &gt; Choose a virtual CD/DVD disk file.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-Yy0fVlpnsH0/WwmelHCxl-I/AAAAAAAAAM0/USs9WcM7Q6AYz2hXOf1Xmr_skEnbBuSkACEwYBhgL/s1600/6.png\" /></p>\r\n\r\n<p><br />\r\n5. Lalu kita cari file&nbsp;<strong>DVD-2,</strong>&nbsp;lalu klik&nbsp;<strong>Open.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-wStKvDmSlZM/WwmelQgJZQI/AAAAAAAAAMw/pxap92q79NwupNmOuHCGufOpHg6dGKkwgCEwYBhgL/s1600/7.png\" /></p>\r\n\r\n<p><br />\r\n6. Selanjutnya kita ketik&nbsp;<strong>apt-cdrom add</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-UzmPpst3VCk/Wwmel74IXlI/AAAAAAAAAM4/ldL3yU2A9wIBD8Z_FbE6FGh6vGDMJU4QgCEwYBhgL/s1600/8.png\" /></p>\r\n\r\n<p><br />\r\n7. Maka akan tampil kalimat&nbsp;<strong>This disc is called,</strong>&nbsp;langsung saja kita ketik&nbsp;<strong>apt-cdrom ident</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-S4OqC-VnfLk/Wwmel5kb4WI/AAAAAAAAAM8/WbCRqmqvcHQCnilsHfXmxyjBBvE88tUGACEwYBhgL/s1600/9.png\" /></p>\r\n\r\n<p><br />\r\n8. Kita klik lagi tab&nbsp;<strong>Devices &gt; CD/DVD Devices &gt; Choose a virtual CD/DVD disk file.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-gu3FWYZTCGI/WwmegH-vsHI/AAAAAAAAAMs/AHc4UPCcA58RVnxIQcLOAtOxgbUf2O1EwCEwYBhgL/s1600/10.png\" /></p>\r\n\r\n<p><br />\r\n9. Lalu kita cari file&nbsp;<strong>DVD-3,</strong>&nbsp;lalu klik&nbsp;<strong>Open.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-EOagO-hKJtY/WwmegFoNFDI/AAAAAAAAAM0/iJZT3tPq0v8QAQch0hcUbw4RiBprZ4vpwCEwYBhgL/s1600/11.png\" /></p>\r\n\r\n<p><br />\r\n10. Jika muncul peringatan seperti dibawah, kita langsung klik&nbsp;<strong>Force Unmount.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-hY-osjl-9Z0/WwmegiouRJI/AAAAAAAAAM4/AfUR-HuHl1EbW8_mqejNpv4xGqHWDvXgwCEwYBhgL/s1600/12.png\" /></p>\r\n\r\n<p><br />\r\n11. Selanjutnya kita ketik lagi&nbsp;<strong>apt-cdrom add</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/--P5BpOWwSkA/Wwmeg1FfALI/AAAAAAAAAM8/ns3u4J5Z05ccxhXDplDs4CKWbR75BSdGgCEwYBhgL/s1600/13.png\" /></p>\r\n\r\n<p><br />\r\n12. Jika muncul kalimat&nbsp;<strong>Failed to mount &#39;/dev/sr0&#39; to &#39;/media/cdrom/&#39;</strong>&nbsp;kita ketik lagi&nbsp;<strong>apt-cdrom add</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-tAORRZUn-ws/Wwmegx4G_1I/AAAAAAAAAM8/5GM6s7-O7bcn-7tS4nXr-80M8c0SHx0jgCEwYBhgL/s1600/14.png\" /></p>\r\n\r\n<p><br />\r\n13. Jika sudah tampil kalimat&nbsp;<strong>This disc is called,</strong>&nbsp;langsung saja kita ketik&nbsp;<strong>apt-cdrom ident</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://4.bp.blogspot.com/-kz-dVsrKiRU/WwmehePJYsI/AAAAAAAAAMs/iIPC3ABsyBszn6RoYcRUsInbn4S72vbfACEwYBhgL/s1600/15.png\" /></p>\r\n\r\n<p><br />\r\n14. Selanjutnya kita coba menginstall software, ketik&nbsp;<strong>apt-get install isc-dhcp-server</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-WConUkVf8qs/WwmehcHMc8I/AAAAAAAAAMk/BRc4BJ7NzSkKoPTwAZIQuz_zfCGc8eJSQCEwYBhgL/s1600/16.png\" /></p>\r\n\r\n<p><br />\r\n15. Maka akan muncul perintah bahwa kita harus memasukan DVD-2, kita klik tab&nbsp;<strong>Devices &gt; CD/DVD Devices &gt; Pilih DVD-2.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-qPZK-fVSNV8/WwmehfhwZkI/AAAAAAAAAMw/QK4ZI-r4_FcomdpAoCEqbBfHIKrWcVwnQCEwYBhgL/s1600/17.png\" /></p>\r\n\r\n<p><br />\r\n16. Jika muncul peringatan seperti dibawah, kita langsung klik&nbsp;<strong>Force Unmount.</strong></p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-vKrPEj75J-4/Wwmeh4dpq2I/AAAAAAAAAM4/Xg09ULChSuErNUAccQDR_cXAKnkUPcUMgCEwYBhgL/s1600/18.png\" /></p>\r\n\r\n<p><br />\r\n17. Selanjutnya klik Enter, tunggu sampai proses installasi selesai.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-3XzmQtPyC1A/Wwmeh1itUlI/AAAAAAAAAMs/s5d92eH322c_zRvVjx12TCt0o1trG3rmwCEwYBhgL/s1600/19.png\" /></p>\r\n\r\n<p><br />\r\n18. Jika sudah selesai maka akan muncul tampilan seperti dibawah ini.</p>\r\n\r\n<blockquote>Peringatan&nbsp;<strong>Failed!</strong>&nbsp;bukan berarti installasi gagal, karena kita memang harus mensetting dhcp-servernya terlebih dahulu.</blockquote>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-h7BqL93HxLI/WwmeiZl7BGI/AAAAAAAAAM0/SjdSSPEP_k0d4jLanw2aR2UoKZcCTJ21wCEwYBhgL/s1600/20.png\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Cara Kedua : Menggunakan repository lokal (internet)</p>\r\n\r\n<p>Cara ini berguna bagi anda yang tidak memiliki ketiga DVD Installer Debian 7 dan tidak ingin mendownloadnya karena terbatasnya ruang atau kuota, dengan syarat&nbsp;<strong>PC dan mesin virtual Debian 7 anda harus terhubung ke internet.</strong></p>\r\n\r\n<blockquote>Jika mesin virtual Debian 7 anda belum terhubung ke internet bisa lihat tutorialnya&nbsp;<a href=\"https://agtekno.blogspot.co.id/2018/05/cara-menghubungkan-debian-7-di.html\" target=\"_blank\">disini.</a></blockquote>\r\n\r\n<p><br />\r\n1. Pertama kita buka virtualbox dan jalankan mesin virtual yang sudah kita buat.</p>\r\n\r\n<blockquote>Jika ada yang belum punya bisa lihat tutorialnya&nbsp;<a href=\"https://agtekno.blogspot.co.id/2018/05/cara-menginstall-debian-7-di-virtualbox.html\" target=\"_blank\">disini.</a></blockquote>\r\n\r\n<p><img alt=\"Menghubungkan Debian 7 di Virtualbox dengan Internet\" src=\"https://4.bp.blogspot.com/-Zmu1ulIRj6E/WwmekoYNrII/AAAAAAAAAMs/AOr2-g-xNfQpbBHD4Q9Un9WIFvaa3F3LgCEwYBhgL/s1600/3.png\" /></p>\r\n\r\n<p><br />\r\n2. Lalu tes terlebih dahulu apakah mesin virtual Debian 7 kita sudah terhubung ke internet?, kita ketik&nbsp;<strong>ping 8.8.8.8</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-wnnotSWZ-g4/WwmeigmKU8I/AAAAAAAAAM4/lmA-G1wuV84MPMjGS_3zV-rhqpXb-gLfACEwYBhgL/s1600/21.png\" /></p>\r\n\r\n<p><br />\r\n3. Jika sudah terhubung, kita ketik&nbsp;<strong>nano /etc/apt/sources.list</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-9m3IMWCr8_E/Wwmei2MptII/AAAAAAAAAM4/IwkbQ993-7Eff40i5HK7ltP1assmmNf4gCEwYBhgL/s1600/22.png\" /></p>\r\n\r\n<p><br />\r\n4. Maka akan muncul settingan default sepeti gambar dibawah ini.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-bhO5dwm1ULA/Wwmei34cw1I/AAAAAAAAAM0/8rGIbKrOzTEwCV5uK3OnZMbQBNwu285rQCEwYBhgL/s1600/23.png\" /></p>\r\n\r\n<p><br />\r\n5. Karena kita hanya akan menggunakan repository lokal, kita&nbsp;<strong>beri tanda pagar (#) pada samping kiri tulisan yang berwarna selain biru.</strong>&nbsp;Selanjutnya pada bagian bawah sendiri kita&nbsp;<strong>tambahkan repository lokalnya</strong>&nbsp;(disini kita menggunakan Repo Kambing UI).</p>\r\n\r\n<pre>\r\n<code>deb http://kambing.ui.ac.id/debian/ wheezy main non-free contrib\r\ndeb-src http://kambing.ui.ac.id/debian/ wheezy main non-free contrib</code></pre>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-UgdM9uaRqqY/WwmejAxxQMI/AAAAAAAAAM8/48AJFJG5vk0AtrxVDnEVaPO03I73ukMhwCEwYBhgL/s1600/24.png\" /></p>\r\n\r\n<p><br />\r\n6. Selanjutnya kita&nbsp;<strong>save&nbsp;</strong>(CTRL+O), klik Enter, lalu&nbsp;<strong>keluar&nbsp;</strong>(CTRL+X).</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://2.bp.blogspot.com/-zYqutFlujfE/Wwmejh5Zg3I/AAAAAAAAAM4/wxyE4s0RRUYQMccP0YMafEXr6ReGyHoMACEwYBhgL/s1600/25.png\" /></p>\r\n\r\n<p><br />\r\n7. Selanjutnya kita ketik&nbsp;<strong>apt-get update</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-M4tltmz944k/WwmekIdXmQI/AAAAAAAAAMw/1Es8i5njOu4VrfVINYBeXrGMHC8Ums9cQCEwYBhgL/s1600/26.png\" /></p>\r\n\r\n<p><br />\r\n8. Tunggu hingga selesai, lalu kita ketik&nbsp;<strong>apt-get install isc-dhcp-server</strong>.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://3.bp.blogspot.com/-e7WifTv6xUI/WwmekAgay_I/AAAAAAAAAM0/vD9cE3lkmeIw7rE29tLay0v_vOZ6vnSEgCEwYBhgL/s1600/27.png\" /></p>\r\n\r\n<p><br />\r\n9. Jika muncul pilihan untuk melanjutkan proses installasi, kita ketik&nbsp;<strong>Y</strong>&nbsp;lalu klik Enter.</p>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-YKbAqUtN6eI/WwmekVXMp_I/AAAAAAAAAM4/4VUchP3wgmQ_QbRYHFvxchqAaGpC-I-RgCEwYBhgL/s1600/28.png\" /></p>\r\n\r\n<p><br />\r\n10. Jika sudah selesai maka akan muncul tampilan seperti dibawah ini.</p>\r\n\r\n<blockquote>Peringatan&nbsp;<strong>Failed!</strong>&nbsp;bukan berarti installasi gagal, karena kita memang harus mensetting dhcp-servernya terlebih dahulu.</blockquote>\r\n\r\n<p><img alt=\"Mengatasi Error E: Unable To Locate package pada Debian 7\" src=\"https://1.bp.blogspot.com/-uArKULsKFM8/Wwmekb9uX8I/AAAAAAAAAMs/qfu8aaUOT44erQwuFnqg1HAZNDljr6ZiACEwYBhgL/s1600/29.png\" /></p>', NULL, '2021-06-17 12:20:15', NULL),
(116, 12, 1, NULL, 0, 'Install dan Konfigurasi Mail Server Debian', '<p>apt-get install courier-imap</p>\r\n\r\n<p>apt-get install gnutls-bin&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>jika tidak bisa di install ketikan apt--fix-broken install</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;apt-get install postfix</p>\r\n\r\n<p>cd /etc/postfix</p>\r\n\r\n<blockquote>\r\n<p>jika gagal</p>\r\n</blockquote>\r\n\r\n<p>cd /etc/postfix</p>\r\n\r\n<p>ls</p>\r\n\r\n<p>nano main.cf</p>\r\n\r\n<blockquote>\r\n<p>perbaiki kerusakan&nbsp;<a href=\"https://askubuntu.com/questions/691903/error-during-running-newaliases\">https://askubuntu.com/questions/691903/error-during-running-newaliases</a></p>\r\n</blockquote>\r\n\r\n<p>bagian bawah sendiri tamabahin</p>\r\n\r\n<p>home_mailbox = Maildir/</p>\r\n\r\n<p>lalu jalankan dpkg-reconfigure postfix</p>\r\n\r\n<p>nano db.firdana dan 192 tambahkan mail dan ip address</p>\r\n\r\n<p>service postfiix restart</p>\r\n\r\n<p>service courier-imap restart</p>\r\n\r\n<p>service courier-pop restart</p>\r\n\r\n<p>cd /home/clientftp</p>\r\n\r\n<p>ls</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2021-06-17 16:59:29', '2021-06-17 18:36:37');
INSERT INTO `threads` (`id`, `user_id`, `channel_id`, `best_reply_id`, `replies_count`, `title`, `content`, `closed_at`, `created_at`, `updated_at`) VALUES
(117, 12, 1, 29, 1, 'Mail dan Webmail', '<h1>Konfigurasi mail Server di Debian 7</h1>\r\n\r\n<p><img src=\"https://hlassets.paessler.com/common/files/preview/mail-server-monitoring.png\" /></p>\r\n\r\n<p>Assalamualaikum wr wb</p>\r\n\r\n<p>hai sobat&nbsp;<a href=\"https://ilmumultimediaa.wordpress.com/\">ilmu multimedia&nbsp;</a>sekarang disini saya akan membahas tentang cara konfigurasi<strong>&nbsp;[Mail Server]&nbsp;</strong>di Debian 7, nah sobat disini ada yang tau gak , apa sih mail server itu ?</p>\r\n\r\n<p>nah sebelum masuk ke pembahasan, mari kita cari tahu terlebih dahulu apa sih itu mail server?</p>\r\n\r\n<h3>Pengertian Mail Server</h3>\r\n\r\n<p>Mail Server&nbsp;atau&nbsp;<em>E-Mail Server</em>&nbsp;adalah perangkat lunak program yang mendistribusikan file atau informasi sebagai respons atas permintaan yang dikirim via email, mail server juga digunakan pada bitnet untuk menyediakan layanan serupa ftp. Selain itu mail server juga dapat dikatakan sebagai&nbsp;aplikasi yang digunakan untuk penginstalan email.</p>\r\n\r\n<p>Sebuah&nbsp;komputer&nbsp;yang didedikasikan untuk menjalankan jenis aplikasi perangkat lunak komputer yang juga disebut Mail Server, hal ini dianggap sebagai jantung dari setiap email sistem.&nbsp;Mail Server biasanya dikelola oleh seorang yang biasanya dipanggil&nbsp;<em>post master</em>.</p>\r\n\r\n<p>Tugas Post Master<br />\r\n&ndash; Mengelola Account<br />\r\n&ndash; Memonitor Kinerja Server<br />\r\n&ndash; Tugas Administratif Lainnya</p>\r\n\r\n<h3>Protokol Pada Mail Server</h3>\r\n\r\n<p>Protokol yang umum digunakan antara lain protokol SMTP, POP3 dan IMAP.</p>\r\n\r\n<ul>\r\n	<li><strong>SMTP</strong>&nbsp;<em>(Simple Mail Transfer Protocol)</em>&nbsp;digunakan sebagai standar untuk menampung dan mendistribusikan email.</li>\r\n	<li><strong>POP3</strong>&nbsp;<em>(Post Office Protocol v3)&nbsp;</em>dan&nbsp;<strong>IMAP</strong>&nbsp;<em>(Internet Mail Application Protocol)</em>&nbsp;digunakan agar user dapat mengambil dan membaca email secara remote yaitu tidak perlu login ke dalam sistem shelll mesin mail server tetapi cukup menguhubungi port tertentu dengan mail client yang mengimplementasikan protocol POP3 dan IMAP.</li>\r\n</ul>\r\n\r\n<h3>Server Pada Mail Server dan Penjelasannya</h3>\r\n\r\n<p>Pada mail server terdapat 2 server yang berbeda yaitu :</p>\r\n\r\n<ul>\r\n	<li><strong>Outgoing Server (Sending email) :</strong>&nbsp;Protocol server yang menangani adalah SMTP&nbsp;<em>(Simple Mail Transfer Protocol)&nbsp;</em>pada port 25.</li>\r\n	<li><strong>Incoming Server (Receiving email) :</strong>&nbsp;Protocol server yang menangani adalah POP3&nbsp;<em>(Post Office Protocol)</em>&nbsp;pada port 110 atau IMAP&nbsp;<em>(Internet Message Access Protocol)&nbsp;</em>pada port 143.</li>\r\n</ul>\r\n\r\n<p>Penjelasan dari Server yang menangani outgoing email dan incoming email sebagai berikut :</p>\r\n\r\n<p><strong>SMTP Server :</strong>&nbsp;Saat anda mengirimkan email maka email anda akan ditangani SMTP Server dan akan dikirim ke SMTP Server tujuan, baik secara langsung maupun melalui beberapa SMTP Server dijalurnya. Apabila server tujuan terkoneksi maka email akan dikirim, namun apabila tidak terjadi koneksi maka akan dimasukan ke dalam queue dan di resend setiap 15 menit, apabila dalam 5 hari tidak ada perubahan maka akan diberikan undeliver notice ke inbox pengirim.<br />\r\n<br />\r\n<strong>POP3 Server :</strong>&nbsp;Jika menggunakan POP3 Server, apabila kita akan membaca email maka email pada server di download sehingga email hanya akan ada pada mesin yang mendownload email tersebut (kita hanya bisa membaca email tersebut pada device yang mendownload email tersebut).<br />\r\n<br />\r\n<strong>IMAP Server :</strong>&nbsp;Jika menggunakan IMAP Server, email dapat dibuka kembali lewat device yang berbeda.</p>\r\n\r\n<h3>Fungsi Mail Server</h3>\r\n\r\n<p><em>Mail server</em>&nbsp;berfungsi sebagai pengatur atau penerima dan penyalur respon atas email yang masuk. Tak hanya itu fungsi utama dari program ini adalah sebagai aplikasi yang digunakan untuk menginstal email. Oleh karena itu aplikais ini sangat penting karena akan mengatur jalannya email dan merespon setiap email yang masuk.</p>\r\n\r\n<p><strong>Cara Kerja Mail Server</strong></p>\r\n\r\n<p>Setelah kamu tahu apa itu mail server, kini saatnya kamu tahu bagaimana mail server bekerja. Pada dasarnya ada dua cara kerja program ini. pertama, proses pengiriman email akan melewati tahapan yang agak panjang. saat email dikirim karena email akan disimpan pada server utama atau email server itu sendiri berdasarkan tujuan email akan dikirimkan kemana. Umumnya file ini berisi informasi yang dimana sumber tujuan, serta adanya waktu pengiriman. Nah saat kamu sebagai user membaca email berarti user telah mengakses server email tersebut dan membaca email yang tersimpan pada server yang di tampilkan pada browser pengguna.</p>\r\n\r\n<p>Untuk memahami cara kerja mail server yang kedua ini,kamu harus memahami ada beberapa istilah penting yaitu MUA atau mail user agent yaitu sebuah komponen yang berinteraksi secara langsung, misalnya adalah thunderbird, ms outlook, zimbra atau interface webmail seperti gmail ataupun yahoo.</p>\r\n\r\n<p>Selain itu istilah penting mail server lainnya adalah MTA atau mail transfer agent yang bertanggung jawab mentransfer email dari server mail kemudian sampai server mail penerima, contohnya adalah karena sendmail dan postfix. Selain itu MDA atau mail delivery agent, jika mta lokasi menerima email masuk dari mta terpencil maka email akan dikirim kek otak pengguna dengan mda.</p>\r\n\r\n<p>Istilah lain dalam mail server ada POP atau IMAP kedua singkatan ini merupakan sesuatu protocol yang digunakan untuk mengunduh email dari kotak penerima server untuk penerima MUA. Kemudian ada mail exchange record atau MX. Istilah ini merujuk pada entri dns untuk server mail. Record mx ini akan menunjuk pada alamt ip dimana email harus ditembakkan. Mx record yang rendah akan selalu menang karena mendapat priritas tertinggi. Contohnya misal mx 10 akan lebih baik dibandingkan dengan mx 20.</p>\r\n\r\n<p>Nah setelah kamu tahu berbagai istilah mengenai&nbsp;<a href=\"https://ilmumultimediaa.wordpress.com/konfigurasi-mail-server-di-debian-7\">Mail Server</a>&nbsp;, kini kamu akan mengetahui Cara kerja mail server yang kedua yaitu, setelah pengguna mengklik tombol sent, selanjutnya MTA akan mengirimkan ujung ke ujung pengiriman email dari server pengirim ke server tujuan. Kemudian mta local akan server tujuan penerima email kemudian dipindahkan ke mda setempat. Kemudian mda akan menulis email dikotak pesan pengguna. Ketika penerima membuka email, maka akan diambil alih oleh MUA dengan menggunakan protocol POP atau imap.</p>\r\n\r\n<p>nah itu dia mail server, sekarang kita masuk ke materi untuk memulai konfigurasinya</p>\r\n\r\n<p>langkah pertama sebat harus login terlebih dahulu ke Server Debian 7 nya, saya disini&nbsp;menggunakan mesin virtual yaitu virtual box .</p>\r\n\r\n<p>jika sobat sudah login, langkah selanjutnya yaitu menginstall paket-paket yang dibutuhkan untuk mail server nya, yaitu&nbsp;<strong>Postfix, Courier-Imap, Courier-Pop,&nbsp;</strong>dan&nbsp;<strong>Squirrelmail&nbsp;</strong>sebagai aplikasi email clientnya.</p>\r\n\r\n<p>untuk installasinya sebagai berikut :</p>\r\n\r\n<p>tulis perintah&nbsp;<em><strong>apt-get ins</strong></em><strong>tall postfix courier-imap courier-pop&nbsp;</strong>untuk memulain menginstall paketnya, dan jangan lupa masukkan disk/cd debiannya</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/110.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/110.png?w=750&amp;h=403\" /></a>nah kemudian sobat masukkan disk yang dimintanya<a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/21.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/21.png?w=750&amp;h=422\" /></a>kemudian nanti akan muncul popup peringatan postfix configuration, lalu sobat pilih&nbsp;<strong>[OK]&nbsp;</strong>seperti gambar dibawah</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/32.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/32.png?w=750&amp;h=414\" /></a>Kemudian pada popup selanjutnya yaitu memlih jenis email untuk digunakan, disini saya menggunakan yang&nbsp;<strong>[Situs Internet]</strong>&nbsp;lalu pilih&nbsp;<strong>[OK]</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/41.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/41.png?w=750&amp;h=415\" /></a>Popup selanjutnya sobat diminta untuk mengisi nama Mail Server sebagai contoh saya menggunakan domain utama yaitu&nbsp;<strong>iman.com,&nbsp;</strong>sesuaikan dengan nama domain pada server yang telah sobat buat.</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/51.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/51.png?w=750&amp;h=417\" /></a>setelah itu akan muncul perintah untuk memasuksan cd/disk debian 2 nya</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/61.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/61.png?w=750&amp;h=421\" /></a></p>\r\n\r\n<p>seperti biasa masukkan kembali cd/disk yang diperintahkan nya, jika di virtual box terdapat peringatan klik saja&nbsp;<strong>&ldquo;Paksa Unmount&rdquo;.</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/71.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/71.png?w=750&amp;h=422\" /></a>jika sudah maka nanti akan muncul popup yang memerintahkan untuk membuat folder admin web-based,terserah mau klik&nbsp;<strong>[Ya/Tidak].</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/81.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/81.png?w=750&amp;h=416\" /></a></p>\r\n\r\n<p>nah semua ketiga paket diatas sudah terinstall, kemudian sekarang tinggal konfigurasi untuk mail server selanjutnya. disini kalian harus membuat folder untuk maildirmake yaitu&nbsp;<strong>Maildir&nbsp;</strong></p>\r\n\r\n<p><em><strong>Maildirmake /etc/skel/Maildir</strong></em></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/91.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/91.png?w=750\" /></a></p>\r\n\r\n<p>kemudian kita buat 2 user baru untuk mailserver nya</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/111.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/111.png?w=750\" /></a></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/121.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/121.png?w=750\" /></a>selanjutnya konfigurasi file&nbsp;<strong>main.cf&nbsp;</strong>dengan perintah</p>\r\n\r\n<p><em><strong>nano /etc/postfix/main.cf</strong></em></p>\r\n\r\n<p>dan tambahkan script di baris paling bawah,</p>\r\n\r\n<p><strong><em>home_mailbox = Maildir/</em></strong></p>\r\n\r\n<p>jika sudah jangan lupa save konfigurasinya dengan menekan&nbsp;<strong>Ctrl+X+Y, Enter.</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/131.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/131.png?w=750&amp;h=179\" /></a></p>\r\n\r\n<p>Nah sekarang&nbsp; lanjut, kalian harus mengkonfigurasi beberapa hal yang harus diselesaikan. ketikkan perintah berikut</p>\r\n\r\n<p><em><strong>dpkg-reconfigure postfix</strong></em></p>\r\n\r\n<p>kemudian akan muncul popup, tinggal pilih&nbsp;<strong>[OK]&nbsp;</strong>kosongkan saja untuk penerima surel root dan postmaster.</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/141.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/141.png?w=750&amp;h=415\" /></a>pada popup selanjutnya tidak perlu ada yang dirubah pilih saja&nbsp;<strong>[OK].</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/151.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/151.png?w=750&amp;h=416\" /></a>selanjutnya pilih saja&nbsp;<strong>[Tidak].</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/161.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/161.png?w=750&amp;h=416\" /></a>selnjutnya yaitu konfigurasi jaringan lokal,isi jaringan lokalnya dengan ip server kita&nbsp; ip default atau tidak diisi juga tidak apa apa.</p>\r\n\r\n<p><em><strong>192.168.31.0/24&nbsp;</strong></em>atau&nbsp;<strong>0.0.0.0/0</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/171.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/171.png?w=750&amp;h=418\" /></a>pilih saja&nbsp;<strong>[Tidak]</strong>&nbsp;pada gambar dibawah ini.</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/181.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/181.png?w=750&amp;h=418\" /></a>pilih saja&nbsp;<strong>[OK]</strong>&nbsp;tidak perlu diubah.</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/191.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/191.png?w=750&amp;h=420\" /></a>ini juga sama jangan dirubah pilih saja&nbsp;<strong>[OK].</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/20.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/20.png?w=750&amp;h=417\" /></a>kemudian akan muncul popup untuk memilih protokol internet yang akan digunakan, pilih ip address versi 4 pilih saja&nbsp;<strong>[ipv4]</strong>&nbsp;dan klik&nbsp;<strong>[OK].</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/211.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/211.png?w=750&amp;h=417\" /></a></p>\r\n\r\n<p>langkah selanjutnya yaitu menginstall paket yang terkahir untuk mail server ini, yaitu&nbsp;<strong>Squirrelmail.&nbsp;</strong>Squirrelmail ini adalah paket yang akan digunakan untuk aplikasi pada client, supaya client dapat mudah mengirim dan menerima email.</p>\r\n\r\n<p>lansung saja ketikkan perintahnya sebagai berikut</p>\r\n\r\n<p><em><strong>apt-get install squirrelmail&nbsp;</strong></em></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/23.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/23.png?w=750&amp;h=344\" /></a></p>\r\n\r\n<p>masukkan cd/disk debian 7 nya sesuai yang diperintahkan</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/24.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/24.png?w=750&amp;h=422\" /></a></p>\r\n\r\n<p>kemudian kita disuruh kembali memasukkan cd/disk debian yang ke 2</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/25.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/25.png?w=750&amp;h=61\" /></a></p>\r\n\r\n<p>Masukkan kembali disk/cd nya, jika muncul peringatan pilih&nbsp;<strong>[Paksa Unmount].</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/26.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/26.png?w=750&amp;h=422\" /></a></p>\r\n\r\n<p>sekarang kita sudah dalam tahap akhir yaitu mengkonfigurasi VirtualHost untuk Mail-Server ini.Tmbahkan terlebih dahulu subdomain yang akan digunakan unutk Mail-Server ini, kalian harus sudah menambahkan dulu subdomain pada domain utama kalian.</p>\r\n\r\n<p>sebagai contoh, disini saya menggunakan domain yaitu&nbsp;<strong>[iman.com],</strong>kemudian untuk subdoamiannya yang akan digunakan oleh Mail-Server yaitu&nbsp;<strong>[mail.iman.com].</strong></p>\r\n\r\n<p>perlu kalian ingat juga, apakah kalian sudah membuat subdomain dengan nama sub yaitu&nbsp;<strong>&ldquo;mail&rdquo;&nbsp;</strong>pada file DNS?</p>\r\n\r\n<p>nah untuk memastikannya silahkan kalian buka kembali file&nbsp;<a href=\"https://ilmumultimediaa.wordpress.com/2018/10/30/konfigurasi-dns-server/\">DNS</a>&nbsp;kalian dengan mengetik perintah</p>\r\n\r\n<p><em><strong>nano /var/cache/bind/db.iman</strong></em></p>\r\n\r\n<p>disana terdapat file dengan awalan&nbsp;<strong>&ldquo;db&rdquo;,</strong>&nbsp;buka file tersebut yang sesuai dengan nama domain yang kalian gunakan, sebagai contih nama file yang saya buat&nbsp;<strong>&ldquo;db.iman&rdquo;.</strong></p>\r\n\r\n<p>buka kemudian tambahkan file seperti gambar dibawah ini</p>\r\n\r\n<p><em><strong>mail&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; in&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;A&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 192.168.31.10</strong></em></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/29.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/29.png?w=750&amp;h=423\" /></a>jangan lupa restar bind9 nya</p>\r\n\r\n<p><strong>service bind9 restart</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/30.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/30.png?w=750\" /></a></p>\r\n\r\n<p>kemudian jika kalian sudah, sekarang kalian masuk ke folder&nbsp;<strong>sites-enabled&nbsp;</strong>ketikkan perintahnya</p>\r\n\r\n<p><em><strong>cd /etc/apache2/sites-enabled</strong></em></p>\r\n\r\n<p>didalamnya terdapat file-file yang mungkin sudah kalian konfigurasi untuk web server dan lainnya. intinya disini kalian buat file dengan nama&nbsp;<strong>&ldquo;mail&rdquo;.</strong></p>\r\n\r\n<p>Supaya lebih cepat kalian bisa menyalin sebelumnya ke file&nbsp;<strong>&ldquo;mail&rdquo;.</strong></p>\r\n\r\n<p>contohnya, sebelumnya sudah terdapat file dengan nama&nbsp;<strong>&ldquo;web&rdquo;&nbsp;</strong>yang sudah digunakan untuk web server, jadi supaya cepat saya menyalin file tersebut ke&nbsp;<strong>&ldquo;mail&rdquo;&nbsp;</strong>ketikkan perintah berikut</p>\r\n\r\n<p><em><strong>cp web mail</strong></em></p>\r\n\r\n<p>Maka secara otomatis file&nbsp;<strong>&ldquo;mail&rdquo;&nbsp;</strong>sudah ada karena sudah kita copy sebelumnya, langkah selanjutnya konfigurasi file&nbsp;<strong>&ldquo;mail&rdquo;&nbsp;</strong>dan rubah seperti gambar di bawah ini</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/mail-server.png\"><img alt=\"mail server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/mail-server.png?w=750&amp;h=418\" /></a>jika sudah silahkan save konfigurasi dengan menekan&nbsp;<strong>Ctrl+X+Y,Enter,</strong>&nbsp;dan jangan lupa kalian restart semua paket-paket yang sudah kalian install diantaranya yaitu&nbsp;<strong>postfix,courier-imap, courier-pop&nbsp;</strong>dan&nbsp;<strong>apache2</strong>&nbsp;ketikkan perintah</p>\r\n\r\n<p><em><strong>service postfix restart</strong></em></p>\r\n\r\n<p><strong><em>service courier-imap restart</em></strong></p>\r\n\r\n<p><em><strong>service courier-pop restart</strong></em></p>\r\n\r\n<p><strong><em>service apache2 restart</em></strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/28.png\"><img alt=\"mail server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/28.png?w=750&amp;h=301\" /></a>untuk pengecekan silahkan buka browser kalian di client, lalu ketikkan di address bar nya</p>\r\n\r\n<p><strong>mail.domain.com</strong></p>\r\n\r\n<p>contoh mail server saya yaitu :&nbsp;<strong>mail.iman.com.</strong></p>\r\n\r\n<p>jika berhasil maka tampilannya akan tampak seperti gambar dibawah ini,tinggal login saja sesuai user dan pasword yang telah kita buat sebelumnya</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/311.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/311.png?w=750&amp;h=270\" /></a></p>\r\n\r\n<p>untuk memastikan apakah mail server tersebut berhasil atau tidak, silahkan kirim pesan email pilih&nbsp;<strong>compose&nbsp;</strong>dari salah satu user kepada user yang lainnya.</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/321.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/321.png?w=750&amp;h=366\" /></a></p>\r\n\r\n<p>tulis email dan ditujukan kepada siapa dan tekan&nbsp;<strong>send.</strong></p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/33.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/33.png?w=750&amp;h=387\" /></a></p>\r\n\r\n<p>di user sebelumnya kita log out saja, kemudian msuk dengan user yang baru saja dikirimi email</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/34.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/34.png?w=750&amp;h=278\" /></a></p>\r\n\r\n<p>nah inilah tampilan inbok atau kotak masuk email jika berhasil</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/35.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/35.png?w=750&amp;h=200\" /></a></p>\r\n\r\n<p>supaya tidak penasaran kita buka saja kotak masuk nya</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/36.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/36.png?w=750&amp;h=214\" /></a></p>\r\n\r\n<p>penerima</p>\r\n\r\n<p><a href=\"https://ilmumultimediaa.files.wordpress.com/2018/11/33.png\"><img alt=\"Mail Server\" src=\"https://ilmumultimediaa.files.wordpress.com/2018/11/33.png?w=750&amp;h=387\" /></a></p>\r\n\r\n<p>Pengirim</p>\r\n\r\n<p>Selesai&hellip;</p>\r\n\r\n<p>nah cukup mudah bukan , mungkin cukup sekian artikel kali ini, semoga bermanfaat bagi kita semua, silahkan share artikel ini jika bermanfaaat. jika ada yang mau ditanyakan silahkan komentar dibawah.</p>\r\n\r\n<p>Wassalamualaikum wr wb.</p>', NULL, '2021-06-18 14:57:18', NULL),
(118, 12, 1, NULL, 0, 'nslookup server cant find ip server', '<p>sesuaikan dengan named.conf.default-zones</p>', NULL, '2021-06-19 17:56:09', NULL),
(119, 13, 1, NULL, 2, 'nganu', '<p>bahas jaringan</p>', NULL, '2021-06-28 10:18:57', '2021-07-01 03:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `thread_follows`
--

CREATE TABLE `thread_follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thread_follows`
--

INSERT INTO `thread_follows` (`id`, `user_id`, `thread_id`, `created_at`, `updated_at`) VALUES
(2, 13, 103, '2021-06-16 12:26:03', '2021-06-16 12:26:03'),
(4, 12, 103, '2021-06-16 12:42:54', '2021-06-16 12:42:54'),
(6, 12, 108, '2021-06-16 12:58:54', '2021-06-16 12:58:54'),
(7, 13, 108, '2021-06-16 13:11:02', '2021-06-16 13:11:02'),
(8, 17, 108, '2021-06-17 00:37:28', '2021-06-17 00:37:28'),
(9, 17, 113, '2021-06-17 03:44:11', '2021-06-17 03:44:11'),
(10, 12, 111, '2021-06-17 03:46:12', '2021-06-17 03:46:12'),
(11, 18, 103, '2021-06-17 07:13:48', '2021-06-17 07:13:48'),
(12, 13, 115, '2021-06-17 16:12:23', '2021-06-17 16:12:23'),
(13, 18, 117, '2021-06-20 13:50:18', '2021-06-20 13:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/avatars/default_avatar.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Muhammad Naufal Firdana Trisya', 'firdana', 'firdananaufal@gmail.com', '2021-06-16 12:23:22', '$2y$10$RypY0p4/o2n31EOegWtOLOdkjO8qs/l/m0DuvDvrjKjekKY5oXDNy', 'uploads/avatars/1623896035.jpeg', NULL, '2021-06-16 12:22:23', '2021-06-17 03:13:55'),
(13, 'Ida Bagus Putu Wira Kusuma', 'wiragustu', 'wiragustu@gmail.com', '2021-06-16 12:24:35', '$2y$10$8ixtzCt2mJw4Ogt.kH5c2u4FvnLkIvNhzbdLzxgWyt7klCFj.M89u', 'uploads/avatars/1623845610.png', 'bHC2H8rlRZ5iQFUwwACyAaIa97eO1ff2HQVy0EpXLRyugrMywAdNJNtAVBMZ', '2021-06-16 12:24:03', '2021-06-16 13:13:30'),
(14, 'rickydwi@gmail.com', 'rickydwi', 'rickydwi@gmail.com', '2021-06-16 14:02:10', '$2y$10$/zQoGD2b97B2H8OPcoLaNezoj5vjmoWThAx87x82Vmj1Qetw1qOWe', 'uploads/avatars/default_avatar.png', NULL, '2021-06-16 13:59:03', '2021-06-16 14:03:13'),
(15, 'Fia', 'Baefi510', 'alifiaarma@gmail.com', '2021-06-16 15:10:13', '$2y$10$pveuC37ivFcbYxtsKBxovOY2Ibuidu4pz6ntJItWjn/QSLx5jsd5q', 'uploads/avatars/default_avatar.png', NULL, '2021-06-16 15:06:35', '2021-06-16 15:10:13'),
(16, 'Yoseph Dyanih', 'Yoseph Dyanih', 'yosephyoyo03@gmail.com', '2021-06-16 15:15:01', '$2y$10$DpObGhBZWkWW24WWQIDE0O4QQbmL60SVvDpqXD7hi55at4HUnvlRy', 'uploads/avatars/default_avatar.png', NULL, '2021-06-16 15:11:56', '2021-06-16 15:15:01'),
(17, 'Takoen', 'Takoen', 'admin@takoen.com', '2021-06-17 00:35:28', '$2y$10$KCweLHmj7H8mWHX.IW1VIOEssPlG7PqTeoNui/.0b5gQdO77OnVB2', 'uploads/avatars/default_avatar.png', NULL, '2021-06-17 00:25:18', '2021-06-17 00:35:28'),
(18, 'Harun', 'Harun Aprizal', 'harunpradana4@gmail.com', '2021-06-17 07:13:22', '$2y$10$rUnaRZA08qK1nILKI4mIAO0TcOdXO/Bf3NMDRnY5L/jfCg68nBHmC', 'uploads/avatars/default_avatar.png', NULL, '2021-06-17 04:01:09', '2021-06-17 07:13:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_index` (`user_id`),
  ADD KEY `activities_subject_id_index` (`subject_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_liked_id_liked_type_unique` (`user_id`,`liked_id`,`liked_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread_follows`
--
ALTER TABLE `thread_follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thread_follows_user_id_thread_id_unique` (`user_id`,`thread_id`),
  ADD KEY `thread_follows_thread_id_foreign` (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `thread_follows`
--
ALTER TABLE `thread_follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `thread_follows`
--
ALTER TABLE `thread_follows`
  ADD CONSTRAINT `thread_follows_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
