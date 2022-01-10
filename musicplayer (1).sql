-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 06:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicplayer`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date_release` year(4) DEFAULT NULL,
  `type` enum('Album','Ep','Single') COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `title`, `img_url`, `date_release`, `type`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Nhạc thiếu nhi Xuân Mai tuyển chọn', '~/img/album/Descendants_of_the_Sun-p1222054337.jpg', 2003, 'Album', 0, '2022-01-02 15:41:58', '2022-01-08 21:42:09'),
(2, 'Con Cò Bé Bé Vol.3', '', 2004, 'Album', 0, '2022-01-02 15:42:10', '2022-01-06 09:36:40'),
(3, 'M-TP', '', 2017, 'Album', 0, '2022-01-02 15:42:24', '2022-01-06 09:36:45'),
(4, 'SQUARE ONE', '', 2016, 'Ep', 0, '2022-01-02 15:42:37', '2022-01-06 09:36:56'),
(5, '30 (Deluxe Edition)', '', 2021, 'Album', 0, '2022-01-02 15:42:46', '2022-01-06 09:37:00'),
(6, 'Tình Khôn Nguôi', '', 2019, 'Album', 0, '2022-01-02 15:42:57', '2022-01-06 09:37:03'),
(7, 'Đôi Mắt Người Xưa', '', 2010, 'Album', 0, '2022-01-02 15:43:09', '2022-01-06 09:37:07'),
(8, 'Mang tiền về cho mẹ (Single)', '', 2021, 'Single', 0, '2022-01-02 17:56:01', '2022-01-06 09:37:13'),
(9, 'Show Của Đen (Live 2019)', '', 2020, 'Album', 0, '2022-01-02 17:56:16', '2022-01-06 09:37:17'),
(10, 'Montero', '', 2021, 'Album', 0, '2022-01-02 17:56:23', '2022-01-06 09:37:20'),
(11, 'Planet Her (Deluxe Edition)', '', 2021, 'Album', 0, '2022-01-02 17:56:29', '2022-01-06 09:37:24'),
(12, 'Cho mình em (Single)', '', 2021, 'Single', 0, '2022-01-02 17:56:36', '2022-01-06 09:37:28'),
(13, 'Yêu Rồi Yêu Rồi Yêu - EP', '', 2021, 'Ep', 0, '2022-01-05 18:58:52', '2022-01-06 09:37:31'),
(14, 'Thật Bất Ngờ', '', 2016, 'Album', 0, '2022-01-05 19:00:06', '2022-01-06 09:37:35'),
(15, 'Gieo Quẻ (Casting Coin) (Single)', '', 2022, 'Single', 0, '2022-01-05 19:00:24', '2022-01-06 02:00:24'),
(16, 'Đúng Cũng Thành Sai (Single)', '', 2020, 'Single', 0, '2022-01-05 19:00:36', '2022-01-06 02:00:36'),
(17, 'Ánh Nắng Của Anh (Single)', '', 2016, 'Single', 0, '2022-01-05 19:00:56', '2022-01-06 02:00:56'),
(19, 'Nattividad', '', 2021, 'Album', 0, '2022-01-05 19:02:16', '2022-01-06 02:02:16'),
(20, 'Vice Versa', '', 2021, 'Album', 0, '2022-01-05 19:02:28', '2022-01-06 02:02:28'),
(21, 'Sling', '', 2021, 'Album', 0, '2022-01-05 19:02:37', '2022-01-06 02:02:37'),
(22, 'Cho Tôi Lang Thang (Single)', '', 2017, 'Single', 0, '2022-01-05 19:02:55', '2022-01-06 02:02:55'),
(23, 'Tình khúc Trịnh Công Sơn', '', 2018, 'Album', 0, '2022-01-05 19:03:12', '2022-01-06 02:03:12'),
(24, 'Tình khúc Trịnh Công Sơn', '', 1974, 'Album', 0, '2022-01-05 19:03:25', '2022-01-06 02:03:25'),
(38, 'gfgdfgfd', '~/img/album/montero224736842.jpg', 2122, 'Ep', 0, '2022-01-08 14:47:43', '2022-01-08 21:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `name`, `description`, `img_url`, `created_at`, `updated_at`) VALUES
(1, 'Sơn Tùng MTP', NULL, '~/img/artist/sontungmtp221629456.jpg', '2022-01-02 12:00:01', '2022-01-02 20:16:29'),
(2, 'Mỹ Tâm', NULL, '~/img/artist/mytam221636655.jpg', '2022-01-02 09:35:34', '2022-01-02 20:16:36'),
(3, 'Hà Anh Tuấn', NULL, '~/img/artist/haanhtuan221558775.jpg', '2022-01-02 09:39:30', '2022-01-02 20:15:58'),
(4, 'Lệ Quyên', 'Lệ Quyên tên thật là Vũ Lệ Quyên sinh ngày 02/04/1981 tại Hà Nội, là ca sĩ dòng nhạc nhẹ của Việt Nam.', '~/img/artist/lequyen222331555.jpeg', '2022-01-02 12:18:38', '2022-01-02 20:23:31'),
(5, 'Đức Phúc', NULL, '~/img/artist/ducphuc222110087.jpg', '2022-01-02 12:50:35', '2022-01-02 20:21:10'),
(6, 'Xuân Mai', NULL, '~/img/artist/xuanmai221822821.jpg', '2022-01-02 15:41:12', '2022-01-03 01:18:23'),
(7, 'Adele', NULL, '~/img/artist/adele221837550.jpg', '2022-01-02 15:41:21', '2022-01-03 01:18:37'),
(8, 'Quang Lê', NULL, '~/img/artist/quangle221847101.jpg', '2022-01-02 15:41:32', '2022-01-03 01:18:47'),
(9, 'Black Pink', NULL, '~/img/artist/blackpink221927627.jpg', '2022-01-02 18:19:27', '2022-01-03 01:19:27'),
(10, 'Đen', NULL, '~/img/artist/denvau221950450.jpg', '2022-01-02 18:19:50', '2022-01-03 01:19:50'),
(11, 'Doja Cat', NULL, '~/img/artist/dojacat222100846.jpg', '2022-01-02 18:20:05', '2022-01-03 01:21:00'),
(12, 'Lil Nas X', NULL, '~/img/artist/Lil-Nas-X222042620.jpg', '2022-01-02 18:20:42', '2022-01-03 01:20:42'),
(13, 'BINZ', NULL, '~/img/artist/binz224758646.jpg', '2022-01-05 19:47:58', '2022-01-06 02:47:58'),
(14, 'Tóc Tiên', NULL, '~/img/artist/toctien224818724.jpg', '2022-01-05 19:48:18', '2022-01-06 02:48:18'),
(15, 'Trúc Nhân', NULL, '~/img/artist/trucnhan224841343.jpg', '2022-01-05 19:48:41', '2022-01-06 02:48:41'),
(16, 'Hoàng Thùy Linh', NULL, '~/img/artist/hoangthuylinh224905340.jpg', '2022-01-05 19:49:05', '2022-01-06 02:49:05'),
(17, 'Yiruma', NULL, '~/img/artist/yiruma225007962.jpg', '2022-01-05 19:49:43', '2022-01-06 02:50:07'),
(18, 'Natti Natasha', NULL, '~/img/artist/NattiNatasha225037314.jpg', '2022-01-05 19:50:37', '2022-01-06 02:50:37'),
(19, 'Rauw Alejandro', NULL, '~/img/artist/RauwAlejandro225059730.jpg', '2022-01-05 19:50:59', '2022-01-06 02:50:59'),
(20, 'Clairo', NULL, '~/img/artist/Clairo225113833.jpg', '2022-01-05 19:51:13', '2022-01-06 02:51:13'),
(21, 'Ngọt', NULL, '~/img/artist/Ngọt225128262.jpg', '2022-01-05 19:51:28', '2022-01-06 02:51:28'),
(22, 'Khánh Ly', NULL, '~/img/artist/khanhly225154137.jpg', '2022-01-05 19:51:54', '2022-01-06 02:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `artist_album`
--

CREATE TABLE `artist_album` (
  `artist_album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artist_album`
--

INSERT INTO `artist_album` (`artist_album_id`, `artist_id`, `album_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2022-01-02 18:03:46', '2022-01-03 01:03:46'),
(2, 6, 1, '2022-01-02 18:03:46', '2022-01-03 01:03:46'),
(3, 2, 16, '2022-01-05 19:38:59', '2022-01-06 02:38:59'),
(4, 4, 23, '2022-01-05 19:38:59', '2022-01-06 02:38:59'),
(5, 4, 6, '2022-01-05 19:39:32', '2022-01-06 02:39:32'),
(6, 5, 17, '2022-01-05 19:39:32', '2022-01-06 02:39:32'),
(7, 7, 5, '2022-01-05 19:40:06', '2022-01-06 02:40:06'),
(8, 8, 7, '2022-01-05 19:40:06', '2022-01-06 02:40:06'),
(9, 9, 4, '2022-01-05 19:40:25', '2022-01-06 02:40:25'),
(10, 10, 9, '2022-01-05 19:40:25', '2022-01-06 02:40:25'),
(11, 12, 10, '2022-01-05 19:41:17', '2022-01-06 02:41:17'),
(12, 11, 11, '2022-01-05 19:41:17', '2022-01-06 02:41:17'),
(13, 14, 13, '2022-01-05 19:54:40', '2022-01-06 02:54:40'),
(14, 15, 14, '2022-01-05 19:54:40', '2022-01-06 02:54:40'),
(15, 16, 15, '2022-01-05 19:55:10', '2022-01-06 02:55:10'),
(17, 18, 19, '2022-01-05 19:55:37', '2022-01-06 02:55:37'),
(18, 19, 20, '2022-01-05 19:55:37', '2022-01-06 02:55:37'),
(19, 20, 21, '2022-01-05 19:56:20', '2022-01-06 02:56:20'),
(20, 22, 24, '2022-01-05 19:56:20', '2022-01-06 02:56:20'),
(21, 21, 22, '2022-01-05 19:57:02', '2022-01-06 02:57:02'),
(22, 10, 22, '2022-01-05 19:57:02', '2022-01-06 02:57:02'),
(36, 20, 38, '2022-01-08 14:47:43', '2022-01-08 21:47:43'),
(37, 21, 38, '2022-01-08 14:47:43', '2022-01-08 21:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `artist_song`
--

CREATE TABLE `artist_song` (
  `artist_song_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artist_song`
--

INSERT INTO `artist_song` (`artist_song_id`, `song_id`, `artist_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2022-01-02 16:15:43', '2022-01-02 23:15:43'),
(2, 2, 6, '2022-01-02 16:15:43', '2022-01-02 23:15:43'),
(3, 3, 6, '2022-01-05 20:02:03', '2022-01-06 03:02:03'),
(4, 4, 6, '2022-01-05 20:02:03', '2022-01-06 03:02:03'),
(5, 5, 6, '2022-01-05 20:02:19', '2022-01-06 03:02:19'),
(6, 6, 6, '2022-01-05 20:02:19', '2022-01-06 03:02:19'),
(7, 7, 6, '2022-01-05 20:02:39', '2022-01-06 03:02:39'),
(8, 8, 6, '2022-01-05 20:02:39', '2022-01-06 03:02:39'),
(9, 9, 6, '2022-01-05 20:02:52', '2022-01-06 03:02:52'),
(10, 10, 6, '2022-01-05 20:02:52', '2022-01-06 03:02:52'),
(11, 11, 1, '2022-01-05 20:03:43', '2022-01-06 03:03:43'),
(12, 12, 1, '2022-01-05 20:03:43', '2022-01-06 03:03:43'),
(13, 13, 1, '2022-01-05 20:04:02', '2022-01-06 03:04:02'),
(14, 14, 1, '2022-01-05 20:04:02', '2022-01-06 03:04:02'),
(15, 15, 1, '2022-01-05 20:04:20', '2022-01-06 03:04:20'),
(16, 16, 1, '2022-01-05 20:04:20', '2022-01-06 03:04:20'),
(17, 17, 9, '2022-01-05 20:04:33', '2022-01-06 03:04:33'),
(18, 18, 9, '2022-01-05 20:04:33', '2022-01-06 03:04:33'),
(19, 19, 7, '2022-01-05 20:04:59', '2022-01-06 03:04:59'),
(20, 20, 7, '2022-01-05 20:04:59', '2022-01-06 03:04:59'),
(21, 21, 4, '2022-01-05 20:05:21', '2022-01-06 03:05:21'),
(22, 22, 4, '2022-01-05 20:05:21', '2022-01-06 03:05:21'),
(23, 23, 4, '2022-01-05 20:06:06', '2022-01-06 03:06:06'),
(24, 24, 4, '2022-01-05 20:06:06', '2022-01-06 03:06:06'),
(25, 25, 4, '2022-01-05 20:06:06', '2022-01-06 03:06:06'),
(26, 26, 4, '2022-01-05 20:06:06', '2022-01-06 03:06:06'),
(27, 27, 8, '2022-01-05 20:06:56', '2022-01-06 03:06:56'),
(28, 28, 8, '2022-01-05 20:06:56', '2022-01-06 03:06:56'),
(29, 29, 8, '2022-01-05 20:06:56', '2022-01-06 03:06:56'),
(30, 30, 8, '2022-01-05 20:06:56', '2022-01-06 03:06:56'),
(31, 31, 10, '2022-01-05 20:07:24', '2022-01-06 03:07:24'),
(32, 32, 10, '2022-01-05 20:07:24', '2022-01-06 03:07:24'),
(33, 33, 10, '2022-01-05 20:07:45', '2022-01-06 03:07:45'),
(34, 34, 10, '2022-01-05 20:07:45', '2022-01-06 03:07:45'),
(35, 35, 10, '2022-01-05 20:08:04', '2022-01-06 03:08:04'),
(36, 36, 10, '2022-01-05 20:08:04', '2022-01-06 03:08:04'),
(37, 37, 10, '2022-01-05 20:08:19', '2022-01-06 03:08:19'),
(38, 38, 10, '2022-01-05 20:08:19', '2022-01-06 03:08:19'),
(39, 39, 12, '2022-01-05 20:08:44', '2022-01-06 03:08:44'),
(40, 40, 12, '2022-01-05 20:08:44', '2022-01-06 03:08:44'),
(41, 41, 11, '2022-01-05 20:09:59', '2022-01-06 03:09:59'),
(42, 42, 11, '2022-01-05 20:09:59', '2022-01-06 03:09:59'),
(43, 43, 11, '2022-01-05 20:10:17', '2022-01-06 03:10:17'),
(44, 44, 11, '2022-01-05 20:10:17', '2022-01-06 03:10:17'),
(45, 45, 11, '2022-01-05 20:10:32', '2022-01-06 03:10:32'),
(46, 46, 11, '2022-01-05 20:10:32', '2022-01-06 03:10:32'),
(47, 47, 11, '2022-01-05 20:10:54', '2022-01-06 03:10:54'),
(48, 48, 11, '2022-01-05 20:10:54', '2022-01-06 03:10:54'),
(49, 49, 11, '2022-01-05 20:12:04', '2022-01-06 03:12:04'),
(50, 50, 13, '2022-01-05 20:12:04', '2022-01-06 03:12:04'),
(51, 50, 10, '2022-01-05 20:12:24', '2022-01-06 03:12:24'),
(52, 51, 14, '2022-01-05 20:12:24', '2022-01-06 03:12:24'),
(53, 52, 14, '2022-01-05 20:12:38', '2022-01-06 03:12:38'),
(54, 53, 14, '2022-01-05 20:12:38', '2022-01-06 03:12:38'),
(55, 54, 14, '2022-01-05 20:13:09', '2022-01-06 03:13:09'),
(56, 55, 15, '2022-01-05 20:13:09', '2022-01-06 03:13:09'),
(57, 56, 15, '2022-01-05 20:13:52', '2022-01-06 03:13:52'),
(58, 57, 15, '2022-01-05 20:13:52', '2022-01-06 03:13:52'),
(59, 58, 16, '2022-01-05 20:14:14', '2022-01-06 03:14:14'),
(60, 58, 10, '2022-01-05 20:14:14', '2022-01-06 03:14:14'),
(61, 59, 2, '2022-01-05 20:14:59', '2022-01-06 03:14:59'),
(62, 60, 5, '2022-01-05 20:14:59', '2022-01-06 03:14:59'),
(63, 61, 17, '2022-01-05 20:15:27', '2022-01-06 03:15:27'),
(64, 62, 17, '2022-01-05 20:15:27', '2022-01-06 03:15:27'),
(65, 63, 17, '2022-01-05 20:15:45', '2022-01-06 03:15:45'),
(66, 64, 17, '2022-01-05 20:15:45', '2022-01-06 03:15:45'),
(67, 65, 17, '2022-01-05 20:16:04', '2022-01-06 03:16:04'),
(68, 66, 17, '2022-01-05 20:16:04', '2022-01-06 03:16:04'),
(69, 67, 17, '2022-01-05 20:16:36', '2022-01-06 03:16:36'),
(70, 68, 17, '2022-01-05 20:16:36', '2022-01-06 03:16:36'),
(71, 69, 17, '2022-01-05 20:16:59', '2022-01-06 03:16:59'),
(72, 70, 17, '2022-01-05 20:16:59', '2022-01-06 03:16:59'),
(73, 71, 18, '2022-01-05 20:18:01', '2022-01-06 03:18:01'),
(74, 72, 18, '2022-01-05 20:18:01', '2022-01-06 03:18:01'),
(75, 73, 18, '2022-01-05 20:18:51', '2022-01-06 03:18:51'),
(76, 74, 18, '2022-01-05 20:18:55', '2022-01-06 03:18:55'),
(77, 75, 18, '2022-01-05 20:19:04', '2022-01-06 03:19:04'),
(78, 76, 18, '2022-01-05 20:19:08', '2022-01-06 03:19:08'),
(79, 77, 19, '2022-01-05 20:19:53', '2022-01-06 03:19:53'),
(80, 78, 19, '2022-01-05 20:19:57', '2022-01-06 03:19:57'),
(81, 79, 19, '2022-01-05 20:20:01', '2022-01-06 03:20:01'),
(82, 80, 19, '2022-01-05 20:20:05', '2022-01-06 03:20:05'),
(83, 81, 20, '2022-01-05 20:20:19', '2022-01-06 03:20:19'),
(84, 82, 20, '2022-01-05 20:20:22', '2022-01-06 03:20:22'),
(85, 83, 20, '2022-01-05 20:20:26', '2022-01-06 03:20:26'),
(86, 84, 20, '2022-01-05 20:20:30', '2022-01-06 03:20:30'),
(87, 85, 20, '2022-01-05 20:20:34', '2022-01-06 03:20:34'),
(88, 86, 20, '2022-01-05 20:20:38', '2022-01-06 03:20:38'),
(89, 87, 20, '2022-01-05 20:20:41', '2022-01-06 03:20:41'),
(90, 88, 20, '2022-01-05 20:20:44', '2022-01-06 03:20:44'),
(91, 89, 21, '2022-01-05 20:21:04', '2022-01-06 03:21:04'),
(92, 89, 10, '2022-01-05 20:21:12', '2022-01-06 03:21:12'),
(93, 90, 10, '2022-01-05 20:21:39', '2022-01-06 03:21:39'),
(94, 90, 21, '2022-01-05 20:21:55', '2022-01-06 03:21:55'),
(95, 91, 4, '2022-01-05 20:22:18', '2022-01-06 03:22:18'),
(96, 92, 4, '2022-01-05 20:22:24', '2022-01-06 03:22:24'),
(97, 93, 4, '2022-01-05 20:22:27', '2022-01-06 03:22:27'),
(98, 94, 4, '2022-01-05 20:22:33', '2022-01-06 03:22:33'),
(99, 95, 4, '2022-01-05 20:22:37', '2022-01-06 03:22:37'),
(100, 96, 22, '2022-01-05 20:22:54', '2022-01-06 03:22:54'),
(101, 97, 22, '2022-01-05 20:22:58', '2022-01-06 03:22:58'),
(102, 98, 22, '2022-01-05 20:23:01', '2022-01-06 03:23:01'),
(103, 99, 22, '2022-01-05 20:23:05', '2022-01-06 03:23:05'),
(104, 100, 22, '2022-01-05 20:23:09', '2022-01-06 03:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`, `img_url`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Pop', '~/img/genre/Pop222048657.png', NULL, '2022-01-01 03:24:06', '2022-01-05 16:20:48'),
(2, 'Bolero', '~/img/genre/Bolero222112430.jpg', NULL, '2022-01-01 03:27:15', '2022-01-05 16:21:12'),
(3, 'Hiphop', '~/img/genre/hiphop222121078.webp', NULL, '2022-01-01 03:27:32', '2022-01-05 16:21:21'),
(4, 'R&B', '~/img/genre/r&b222129371.png', NULL, '2022-01-01 03:27:42', '2022-01-05 16:21:29'),
(5, 'Nhạc phim', '~/img/genre/nhacphim222138300.png', NULL, '2022-01-01 03:28:05', '2022-01-05 16:21:38'),
(6, 'EDM', '~/img/genre/EDM222147331.jfif', 'Sôi động', '2022-01-01 07:07:19', '2022-01-05 16:21:47'),
(8, 'Nhạc không lời', '~/img/genre/nhackhongloi222213898.jpg', NULL, '2022-01-02 12:13:50', '2022-01-05 16:22:13'),
(9, 'Latin', '~/img/genre/latin222221716.jpg', NULL, '2022-01-02 12:15:38', '2022-01-05 16:22:21'),
(11, 'Acoustic', '~/img/genre/acoustic222241357.jpg', NULL, '2022-01-02 12:16:11', '2022-01-05 16:22:41'),
(12, 'Nhạc Trịnh', '~/img/genre/trinh-cong-son220742019.jpg', NULL, '2022-01-05 19:07:42', '2022-01-06 02:07:42'),
(13, 'Nhạc trẻ', '~/img/genre/nhactre221056649.jpg', NULL, '2022-01-05 19:10:56', '2022-01-06 02:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlist_id`, `title`, `user_id`, `img_url`, `description`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Nhạc Âu Mỹ Hot', 1, NULL, NULL, 0, '2022-01-05 20:24:10', '2022-01-06 08:31:21'),
(2, 'Tuyển tập Nhạc Trịnh', 1, NULL, NULL, 0, '2022-01-06 01:32:06', '2022-01-06 08:32:06'),
(3, 'Rap hôm nay nghe gì?', 1, NULL, NULL, 0, '2022-01-06 01:36:34', '2022-01-06 08:36:34'),
(4, 'Tết đến rồi', 1, NULL, NULL, 0, '2022-01-06 01:38:07', '2022-01-06 08:38:07'),
(5, 'Hôm nay nghe gì?', 1, NULL, NULL, 0, '2022-01-06 01:41:49', '2022-01-06 08:41:49'),
(6, 'Tuyển tập nhạc Việt', 1, NULL, NULL, 0, '2022-01-06 01:41:49', '2022-01-06 08:41:49'),
(7, 'Tình khúc bolero', 1, NULL, NULL, 0, '2022-01-06 01:42:35', '2022-01-06 08:42:35'),
(8, 'Piano Chill', 1, NULL, NULL, 0, '2022-01-06 01:45:02', '2022-01-06 08:45:02'),
(9, 'K-pop hits', 1, NULL, NULL, 0, '2022-01-06 01:49:54', '2022-01-06 08:49:54'),
(10, 'Trở về tuổi thơ', 1, NULL, NULL, 0, '2022-01-06 01:50:19', '2022-01-06 08:50:19'),
(11, 'gdfgfđ', 1, '~/img/playlist/Bolero220510797.jpg', NULL, 0, '2022-01-07 16:05:11', '2022-01-07 23:05:11'),
(12, 'fshgfhdf', 1, '~/img/playlist/Bolero220532687.jpg', NULL, 0, '2022-01-07 16:05:32', '2022-01-07 23:05:32'),
(13, 'fdfgdfgfd', 1, '~/img/playlist/Bolero220901320.jpg', NULL, 0, '2022-01-07 16:09:01', '2022-01-07 23:09:01'),
(14, 'fhfhfhgf', 1, '~/img/playlist/hiphop221014429.webp', '<p>sdfdsd</p>', 0, '2022-01-07 16:10:14', '2022-01-07 23:10:14'),
(15, 'đgfdgfhfg', 1, '~/img/playlist/Bolero221105738.jpg', NULL, 1, '2022-01-07 16:11:05', '2022-01-07 23:11:05'),
(16, 'dfsfdfs', 1, '~/img/playlist/nhacphim222348804.png', '<p>fdsd</p>', 1, '2022-01-07 16:23:49', '2022-01-07 23:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_song`
--

CREATE TABLE `playlist_song` (
  `playlist_song_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `playlist_song`
--

INSERT INTO `playlist_song` (`playlist_song_id`, `playlist_id`, `song_id`, `created_at`, `updated_at`) VALUES
(1, 1, 40, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(2, 1, 43, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(3, 1, 70, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(4, 1, 20, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(5, 1, 42, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(6, 1, 65, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(7, 1, 39, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(8, 1, 76, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(9, 1, 19, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(10, 1, 85, '2022-01-06 01:54:22', '2022-01-06 08:54:22'),
(11, 4, 1, '2022-01-06 01:55:31', '2022-01-06 08:55:31'),
(12, 4, 9, '2022-01-06 01:55:31', '2022-01-06 08:55:31'),
(13, 2, 99, '2022-01-06 01:57:41', '2022-01-06 08:57:41'),
(14, 2, 96, '2022-01-06 01:57:41', '2022-01-06 08:57:41'),
(15, 2, 97, '2022-01-06 01:57:41', '2022-01-06 08:57:41'),
(16, 2, 98, '2022-01-06 01:57:41', '2022-01-06 08:57:41'),
(17, 2, 91, '2022-01-06 01:58:39', '2022-01-06 08:58:39'),
(18, 2, 100, '2022-01-06 01:58:39', '2022-01-06 08:58:39'),
(19, 3, 38, '2022-01-06 01:59:59', '2022-01-06 08:59:59'),
(20, 3, 37, '2022-01-06 01:59:59', '2022-01-06 08:59:59'),
(21, 3, 36, '2022-01-06 01:59:59', '2022-01-06 08:59:59'),
(22, 5, 14, '2022-01-06 02:01:02', '2022-01-06 09:01:02'),
(23, 5, 11, '2022-01-06 02:01:02', '2022-01-06 09:01:02'),
(24, 5, 50, '2022-01-06 02:01:30', '2022-01-06 09:01:30'),
(25, 5, 33, '2022-01-06 02:01:30', '2022-01-06 09:01:30'),
(26, 5, 58, '2022-01-06 02:01:58', '2022-01-06 09:01:58'),
(27, 5, 60, '2022-01-06 02:01:58', '2022-01-06 09:01:58'),
(28, 7, 22, '2022-01-06 02:03:16', '2022-01-06 09:03:16'),
(29, 7, 30, '2022-01-06 02:03:16', '2022-01-06 09:03:16'),
(30, 8, 69, '2022-01-06 02:06:34', '2022-01-06 09:06:34'),
(31, 8, 61, '2022-01-06 02:06:34', '2022-01-06 09:06:34'),
(32, 9, 18, '2022-01-06 02:07:44', '2022-01-06 09:07:44'),
(33, 10, 4, '2022-01-06 02:07:44', '2022-01-06 09:07:44'),
(34, 10, 8, '2022-01-06 02:08:14', '2022-01-06 09:08:14'),
(35, 10, 10, '2022-01-06 02:08:14', '2022-01-06 09:08:14'),
(36, 10, 7, '2022-01-06 02:09:36', '2022-01-06 09:09:36'),
(37, 10, 6, '2022-01-06 02:09:36', '2022-01-06 09:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `playsong`
--

CREATE TABLE `playsong` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `album_id` int(11) NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_user`
--

CREATE TABLE `session_user` (
  `session_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `track_no` int(11) DEFAULT NULL,
  `lyrics` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_release` year(4) DEFAULT current_timestamp(),
  `views` int(255) DEFAULT 0,
  `upload_type` enum('Link','Audio') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Link',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `title`, `img_url`, `path`, `duration`, `album_id`, `genre_id`, `track_no`, `lyrics`, `date_release`, `views`, `upload_type`, `created_at`, `updated_at`) VALUES
(1, 'Ngày tết quê em\r\n', NULL, 'https://data00.chiasenhac.com/downloads/1841/4/1840593-6c64feaa/128/Ngay%20Tet%20Que%20Em%20-%20Xuan%20Mai.mp3', '05:40', 1, NULL, NULL, NULL, NULL, 0, 'Link', '2022-01-02 15:50:28', '2022-01-06 21:51:52'),
(2, 'Mùa Xuân Đến Rồi\r\n', NULL, 'https://data00.chiasenhac.com/downloads/1841/4/1840594-9bd832d5/128/Mua%20Xuan%20Den%20Roi%20-%20Xuan%20Mai.mp3', '05:30', 1, NULL, NULL, NULL, NULL, 0, 'Link', '2022-01-02 15:50:19', '2022-01-06 21:20:05'),
(3, 'Thắng Cảnh Việt Nam\r\n', NULL, 'https://data00.chiasenhac.com/downloads/1841/4/1840595-70f10e93/128/Thang%20Canh%20Viet%20Nam%20-%20Xuan%20Mai.mp3', '03:25', 1, NULL, NULL, NULL, NULL, 0, 'Link', '2022-01-02 15:50:33', '2022-01-06 21:25:56'),
(4, '18 Vị La Hán\r\n', NULL, 'https://data00.chiasenhac.com/downloads/1841/4/1840596-19e9305a/128/18%20Vi%20La%20Han%20-%20Xuan%20Mai.mp3', '04:01', 1, NULL, NULL, NULL, NULL, 0, 'Link', '2022-01-02 15:51:37', '2022-01-06 21:26:19'),
(5, 'Đi Học\r\n', NULL, 'https://data00.chiasenhac.com/downloads/1841/4/1840597-b714e713/128/Di%20Hoc%20-%20Xuan%20Mai.mp3', '04:03', 1, NULL, NULL, NULL, NULL, 0, 'Link', '2022-01-02 15:59:38', '2022-01-06 21:27:06'),
(6, 'Gà trống và mèo con', '', 'https://data00.chiasenhac.com/downloads/1841/3/1840598-6fb74c4d/128/Ga%20Trong%20Meo%20Con%20Cun%20Con%20-%20Xuan%20Mai.mp3', '03:27', 1, NULL, 0, '', NULL, 0, 'Link', '2022-01-02 16:01:43', '2022-01-06 21:08:01'),
(7, 'Cô giáo', '', 'https://data00.chiasenhac.com/downloads/1841/3/1840599-971b66c5/128/Co%20Giao%20-%20Xuan%20Mai.mp3', '05:33', 1, NULL, 0, '', NULL, 0, 'Link', '2022-01-02 16:02:17', '2022-01-06 00:31:50'),
(8, 'Ai thương con nhiều hơn', '', 'https://data53.chiasenhac.com/downloads/1063/0/1062058-f71e04e9/128/Ai%20Thuong%20Con%20Nhieu%20Hon%20-%20Xuan%20Mai.mp3', '02:48', 1, NULL, 0, '', NULL, 0, 'Link', '2022-01-02 16:02:47', '2022-01-02 23:23:43'),
(9, 'Bé Chúc Tết', '', 'https://data53.chiasenhac.com/downloads/1063/3/1062061-5154ccb2/128/Be%20Chuc%20Tet%20-%20Xuan%20Mai.mp3\r\n', '03:05', 2, NULL, 0, '', NULL, 0, 'Link', '2022-01-02 16:03:06', '2022-01-06 00:32:01'),
(10, '36 Phố Phường', '', 'https://data53.chiasenhac.com/downloads/1063/3/1062062-4ef2c779/128/36%20Pho%20Phuong%20-%20Xuan%20Mai.mp3\r\n', '05:05', 2, NULL, 0, '', NULL, 0, 'Link', '2022-01-02 16:03:31', '2022-01-06 00:32:09'),
(11, 'Cơn Mưa Ngang Qua\r\n', NULL, 'https://data3.chiasenhac.com/downloads/1781/3/1780294-d5910590/128/Con%20Mua%20Ngang%20Qua%20-%20Son%20Tung%20M-TP.mp3\r\n', '04:48', 3, 1, NULL, NULL, NULL, 0, 'Link', '2022-01-02 16:05:35', '2022-01-06 00:32:21'),
(12, 'Nắng Ấm Xa Dần', '', 'https://data3.chiasenhac.com/downloads/1781/3/1780296-28ce3cc4/128/Nang%20Am%20Xa%20Dan%20-%20Son%20Tung%20M-TP.mp3\r\n', '03:08', 3, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:07:25', '2022-01-06 00:32:31'),
(13, 'Em Của Ngày Hôm Qua', '', 'https://data3.chiasenhac.com/downloads/1781/3/1780297-6d00a56b/128/Em%20Cua%20Ngay%20Hom%20Qua%20-%20Son%20Tung%20M-TP.mp3\r\n', '04:23', 3, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:09:23', '2022-01-06 00:32:41'),
(14, 'Ấn Nút Nhớ Thả Giấc Mơ', '', 'https://data3.chiasenhac.com/downloads/1781/3/1780303-2c63a67a/128/An%20Nut%20Nho%20Tha%20Giac%20Mo%20-%20Son%20Tung%20M-TP.mp3\r\n', '04:04', 3, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:09:47', '2022-01-06 00:32:49'),
(15, 'Như Ngày Hôm Qua', '', 'https://data3.chiasenhac.com/downloads/1781/3/1780306-4e2f841c/128/Nhu%20Ngay%20Hom%20Qua%20-%20Son%20Tung%20M-TP.mp3\r\n', '03:43', 3, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:10:05', '2022-01-06 00:32:58'),
(16, 'Một Năm Mới Bình An', '', 'https://data3.chiasenhac.com/downloads/1781/3/1780308-098d82bd/128/Mot%20Nam%20Moi%20Binh%20An%20-%20Son%20Tung%20M-TP.mp3\r\n', '03:43', 3, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:10:17', '2022-01-06 00:33:06'),
(17, 'Boombayah', '', 'https://data00.chiasenhac.com/downloads/1822/3/1821873-3b083a57/128/Boombayah%20-%20BlackPink.mp3\r\n', '04:01', 4, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:11:25', '2022-01-06 00:33:14'),
(18, 'Whistle', '', 'https://data00.chiasenhac.com/downloads/1822/3/1821874-32664e05/128/Whistle%20-%20BlackPink.mp3\r\n', '03:22', 4, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:11:44', '2022-01-06 00:33:21'),
(19, 'Strangers By Nature', '', 'https://data25.chiasenhac.com/download2/2208/3/2207646-b3884cc9/128/Strangers%20By%20Nature%20-%20Adele.mp3\r\n', '', 5, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:12:19', '2022-01-06 00:33:30'),
(20, 'Easy On Me', '', 'https://data25.chiasenhac.com/download2/2202/3/2201284-0ac3f306/128/Easy%20On%20Me%20-%20Adele.mp3\r\n', '', 5, 1, 0, '', 0000, 0, 'Link', '2022-01-02 16:12:35', '2022-01-06 00:33:40'),
(21, 'Không Còn Nợ Nhau', '', 'https://data33.chiasenhac.com/downloads/1988/3/1987679-de25004b/128/Khong%20Con%20No%20Nhau%20-%20Le%20Quyen.mp3\r\n', '04:11', 6, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:14:14', '2022-01-06 00:33:53'),
(22, 'Tình Khôn Nguôi', '', 'https://data33.chiasenhac.com/downloads/1988/3/1987680-308f9508/128/Tinh%20Khon%20Nguoi%20-%20Le%20Quyen.mp3\r\n', '04:57', 6, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:16:45', '2022-01-06 00:34:01'),
(23, 'Yêu Anh Hơn Chính Em', '', 'https://data33.chiasenhac.com/downloads/1988/3/1987681-5fec9a60/128/Yeu%20Anh%20Hon%20Chinh%20Em%20-%20Le%20Quyen.mp3\r\n', '04:42', 6, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:17:05', '2022-01-06 00:34:15'),
(24, 'Vì Em Còn Thương', '', 'https://data33.chiasenhac.com/downloads/1988/3/1987682-a2f13c62/128/Vi%20Em%20Con%20Thuong%20-%20Le%20Quyen.mp3\r\n', '04:40', 6, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:17:59', '2022-01-06 00:34:23'),
(25, 'Yêu Thương Một Đời', '', 'https://data33.chiasenhac.com/downloads/1988/3/1987683-148cbe84/128/Yeu%20Thuong%20Mot%20Doi%20-%20Le%20Quyen.mp3\r\n', '04:18', 6, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:18:19', '2022-01-06 00:34:33'),
(26, 'Giận Thì Giận Mà Thương Thì Thương', '', 'https://data33.chiasenhac.com/downloads/1988/3/1987684-a1c14f02/128/Gian%20Thi%20Gian%20Ma%20Thuong%20Thi%20Thuong%20-%20Le.mp3\r\n', '04:55', 6, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:18:52', '2022-01-06 00:34:56'),
(27, 'Đôi Mắt Người Xưa', '', 'https://data.chiasenhac.com/down2/2211/3/2210335-e0f5b121/128/Doi%20Mat%20Nguoi%20Xua%20-%20Quang%20Le.mp3\r\n', '04:59', 7, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:19:27', '2022-01-06 00:35:04'),
(28, 'Lời Tạ Từ', '', 'https://data.chiasenhac.com/down2/2211/3/2210339-62191a82/128/Loi%20Ta%20Tu%20-%20Quang%20Le.mp3\r\n', '05:38', 7, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:19:47', '2022-01-06 00:35:22'),
(29, 'Trộm nhìn nhau', '', 'https://data.chiasenhac.com/down2/2211/3/2210342-59606c45/128/Trom%20Nhin%20Nhau%20-%20Quang%20Le.mp3\r\n', '05:38', 7, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:20:14', '2022-01-06 00:35:30'),
(30, 'Áo Đẹp Nàng Dâu', '', 'https://data.chiasenhac.com/down2/2211/3/2210334-40a89cc4/128/Ao%20Dep%20Nang%20Dau%20-%20Quang%20Le_%20Mai%20Thien%20Va.mp3\r\n', '05:19', 7, 2, 0, '', 0000, 0, 'Link', '2022-01-02 16:20:38', '2022-01-06 00:35:36'),
(31, 'Mang tiền về cho mẹ', '', 'https://data.chiasenhac.com/down2/2211/3/2210334-40a89cc4/128/Ao%20Dep%20Nang%20Dau%20-%20Quang%20Le_%20Mai%20Thien%20Va.mp3\r\n', '', 8, 3, 0, '', 0000, 0, 'Link', '2022-01-02 17:57:34', '2022-01-06 00:35:48'),
(32, 'Lối nhỏ', '', 'https://data.chiasenhac.com/down2/2211/0/2210420-cad860c9/128/Loi%20Nho%20-%20Den_%20Phuong%20Anh%20Dao.mp3', '', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 17:57:52', '2022-01-03 00:57:52'),
(33, 'Anh Đếch Cần Gì Nhiều Ngoài Em (Live)', '', 'https://data.chiasenhac.com/down2/2199/3/2198424-e11e02c8/128/Anh%20Dech%20Can%20Gi%20Nhieu%20Ngoai%20Em%20Live_%20-%20D.mp3\r\n', '04:06', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 17:58:15', '2022-01-06 00:36:10'),
(34, 'Mười Năm (Live)', '', 'https://data.chiasenhac.com/down2/2199/3/2198417-be381e1c/128/Muoi%20Nam%20Live_%20-%20Den_%20Ngoc%20Linh.mp3\r\n', '04:45', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 17:58:37', '2022-01-06 00:36:18'),
(35, 'Lộn Xộn 2 (Live)', '', 'https://data.chiasenhac.com/down2/2199/3/2198418-65bbb7b7/128/Lon%20Xon%202%20Live_%20-%20Den.mp3\r\n', '02:28', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 17:59:26', '2022-01-06 00:36:25'),
(36, 'Hai Triệu Năm (Live)', '', 'https://data.chiasenhac.com/down2/2199/3/2198427-df56b3e1/128/Hai%20Trieu%20Nam%20Live_%20-%20Den_%20Bien.mp3\r\n', '04:58', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 18:00:02', '2022-01-06 00:37:58'),
(37, 'Bài Này Chill Phết (Live)\r\n', '', 'https://data.chiasenhac.com/down2/2199/3/2198426-f0561439/128/Bai%20Nay%20Chill%20Phet%20Live_%20-%20Den_%20Min.mp3\r\n', '04:54', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 18:00:19', '2022-01-06 00:38:26'),
(38, 'Đưa Nhau Đi Trốn (Live)', '', 'https://data.chiasenhac.com/down2/2199/3/2198428-dcee38e9/128/Dua%20Nhau%20Di%20Tron%20Live_%20-%20Den_%20Linh%20Cao.mp3\r\n', '04:25', 9, 3, 0, '', 0000, 0, 'Link', '2022-01-02 18:00:53', '2022-01-06 00:38:42'),
(39, 'Montero (Call Me By Your Name)', '', 'https://data.chiasenhac.com/down2/2196/3/2195296-71fa7218/128/Montero%20Call%20Me%20By%20Your%20Name_%20-%20Lil%20Nas.mp3\r\n', '02:17', 10, 3, 0, '', 0000, 0, 'Link', '2022-01-02 18:01:22', '2022-01-06 00:38:50'),
(40, 'Dead Right Now', '', 'https://data.chiasenhac.com/down2/2196/3/2195297-2e28fe31/128/Dead%20Right%20Now%20-%20Lil%20Nas%20X.mp3\r\n', '03:41', 10, 3, 0, '', 0000, 0, 'Link', '2022-01-02 18:02:13', '2022-01-06 00:38:58'),
(41, 'YouRight\r\n', NULL, 'https://data.chiasenhac.com/down2/2178/3/2177460-1c226d30/128/You%20Right%20-%20Doja%20Cat_%20The%20Weeknd.mp3\r\n', '03:36', NULL, NULL, NULL, NULL, NULL, 0, 'Link', '2022-01-05 17:42:10', '2022-01-06 00:42:10'),
(42, 'Kiss Me More', '', 'https://data.chiasenhac.com/down2/2178/3/2177466-ca229beb/128/Kiss%20Me%20More%20-%20Doja%20Cat_%20SZA.mp3', '03:28', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:52:25', '2022-01-06 01:52:25'),
(43, 'Been Like This', '', 'https://data.chiasenhac.com/down2/2178/3/2177461-4f5f1d53/128/Been%20Like%20This%20-%20Doja%20Cat.mp3', '02:57', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:52:53', '2022-01-06 01:52:53'),
(44, 'Love To Dream', '', 'https://data.chiasenhac.com/down2/2178/3/2177459-5dc0e1ab/128/Love%20To%20Dream%20-%20Doja%20Cat.mp3', '03:36', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:53:13', '2022-01-06 01:53:13'),
(45, 'Need To Know', '', 'https://data.chiasenhac.com/down2/2178/3/2177457-abeb707d/128/Need%20To%20Know%20-%20Doja%20Cat.mp3', '03:30', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:53:32', '2022-01-06 01:53:32'),
(46, 'Payday', '', 'https://data.chiasenhac.com/down2/2178/3/2177455-a6fe00df/128/Payday%20-%20Doja%20Cat_%20Young%20Thug.mp3', '03:32', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:53:55', '2022-01-06 01:53:55'),
(47, 'Imagine', '', 'https://data.chiasenhac.com/down2/2178/3/2177464-b63957c1/128/Imagine%20-%20Doja%20Cat.mp3', '02:28', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:54:12', '2022-01-06 01:54:12'),
(48, 'Alone', '', 'https://data.chiasenhac.com/down2/2178/3/2177465-91c62514/128/Alone%20-%20Doja%20Cat.mp3', '02:56', 11, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:54:43', '2022-01-06 01:57:30'),
(49, 'Ride\r\n', '', 'https://data.chiasenhac.com/down2/2178/3/2177937-ad4304f5/128/Ride%20-%20Doja%20Cat.mp3\r\n', '03:26', 12, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:55:11', '2022-01-06 01:56:59'),
(50, 'Cho mình em', '', 'https://data.chiasenhac.com/down2/2163/1/2162151-5e98da19/128/Cho%20Minh%20Em%20-%20Binz_%20Den.mp3', '03:26', 12, 4, 0, '', 0000, 0, 'Link', '2022-01-05 18:56:18', '2022-01-06 01:56:18'),
(51, 'Trên Chuyến Xe Lên Đà Lạt Chiều Nay', '', 'https://data.chiasenhac.com/down2/2214/3/2213376-d4a6b9c4/128/Tren%20Chuyen%20Xe%20Len%20Da%20Lat%20Chieu%20Nay%20-%20To.mp3', '03:53', 13, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:11:25', '2022-01-06 02:11:25'),
(52, 'Từ Những Thói Quen', '', 'https://data.chiasenhac.com/down2/2214/3/2213375-dab7b052/128/Tu%20Nhung%20Thoi%20Quen%20-%20Toc%20Tien.mp3', '04:14', 13, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:12:20', '2022-01-06 02:12:20'),
(53, 'Mình Yêu Đến Đây Thôi', '', 'https://data.chiasenhac.com/down2/2214/3/2213374-bb3c2433/128/Minh%20Yeu%20Den%20Day%20Thoi%20-%20Toc%20Tien.mp3', '04:45', 13, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:12:37', '2022-01-06 02:12:37'),
(54, 'Em Đã Có Người Mới', '', 'https://data.chiasenhac.com/down2/2214/3/2213377-fe868371/128/Em%20Da%20Co%20Nguoi%20Moi%20-%20Toc%20Tien_%20Nguoi%20cu.mp3', '03:20', 13, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:12:55', '2022-01-06 02:12:55'),
(55, 'Thật Bất Ngờ', '', 'https://data22.chiasenhac.com/downloads/1538/3/1537054-a164167e/128/That%20Bat%20Ngo%20-%20Truc%20Nhan.mp3', '03:32', 14, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:13:28', '2022-01-06 02:13:28'),
(56, 'Vẽ (Electro Version)', '', 'https://data22.chiasenhac.com/downloads/1538/3/1537060-cd453fef/128/Ve%20Electro%20Version_%20-%20Truc%20Nhan.mp3', '04:17', 14, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:13:45', '2022-01-06 02:13:45'),
(57, 'Bốn Chữ Lắm', '', 'https://data22.chiasenhac.com/downloads/1538/3/1537061-1cd98213/128/Bon%20Chu%20Lam%20-%20Truc%20Nhan_%20Truong%20Nhi.mp3', '04:20', 14, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:14:03', '2022-01-06 02:14:03'),
(58, 'Gieo Quẻ', '', 'https://data.chiasenhac.com/down2/2216/3/2215074-8d51eab0/128/Gieo%20Que%20-%20Hoang%20Thuy%20Linh_%20Den.mp3', '03:19', 15, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:14:25', '2022-01-06 02:14:25'),
(59, 'Đúng Cũng Thành Sai', '', 'https://data3.chiasenhac.com/downloads/2120/3/2119974-401a7459/128/Dung%20Cung%20Thanh%20Sai%20-%20My%20Tam.mp3', '04:47', 16, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:14:49', '2022-01-06 02:14:49'),
(60, 'Ánh Nắng Của Anh (Chờ em đến ngày mai OST)', '', 'https://data3.chiasenhac.com/downloads/1751/3/1750325-63589c26/128/Anh%20Nang%20Cua%20Anh%20-%20Duc%20Phuc.mp3', '04:24', 17, 13, 0, '', 0000, 0, 'Link', '2022-01-05 19:15:08', '2022-01-06 02:15:08'),
(61, 'Wait There', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146693-2b4ffbf5/128/Wait%20There%20-%20Yiruma.mp3', '04:55', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:15:45', '2022-01-06 02:16:59'),
(62, 'Tears On Love\r\n', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146695-491bd62a/128/I%20-%20Yiruma.mp3', '04:11', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:16:17', '2022-01-06 09:10:10'),
(63, 'I', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146695-491bd62a/128/I%20-%20Yiruma.mp3', '04:11', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:17:29', '2022-01-06 02:17:29'),
(64, 'May Be', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146696-aa42e378/128/May%20Be%20-%20Yiruma.mp3', '04:01', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:18:08', '2022-01-06 02:18:08'),
(65, 'Love Me', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146697-f191394b/128/Love%20Me%20-%20Yiruma.mp3', '04:05', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:18:23', '2022-01-06 02:18:23'),
(66, 'River Flows In You', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146698-10a09ef0/128/River%20Flows%20In%20You%20-%20Yiruma.mp3', '03:08', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:18:36', '2022-01-06 02:18:36'),
(67, 'It\'s Your Day', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146699-0820ffb2/128/It_s%20Your%20Day%20-%20Yiruma.mp3', '03:41', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:18:53', '2022-01-06 02:18:53'),
(68, 'When The Love Falls', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146700-5f569f01/128/When%20The%20Love%20Falls%20-%20Yiruma.mp3', '03:17', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:19:09', '2022-01-06 02:19:09'),
(69, 'Passing By', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146701-15bfc80e/128/Passing%20By%20-%20Yiruma.mp3', '04:36', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:19:30', '2022-01-06 02:19:30'),
(70, 'Do You', '', 'https://data55.chiasenhac.com/downloads/1147/3/1146702-3aa864ae/128/Do%20You%20-%20Yiruma.mp3', '04:09', NULL, 8, 0, '', 0000, 0, 'Link', '2022-01-05 19:19:45', '2022-01-06 02:19:45'),
(71, 'Frozen', '', 'https://data.chiasenhac.com/down2/2198/3/2197042-58cf16d3/128/Frozen%20-%20Natti%20Natasha.mp3', '03:40', 19, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:20:20', '2022-01-06 02:20:20'),
(72, 'Imposible Amor', '', 'https://data.chiasenhac.com/down2/2198/3/2197043-a28b3ff6/128/Imposible%20Amor%20-%20Natti%20Natasha_%20Maluma.mp3', '02:53', 19, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:20:41', '2022-01-06 02:20:41'),
(73, 'Noches En Miami', '', 'https://data.chiasenhac.com/down2/2198/3/2197044-d1e74a2f/128/Noches%20En%20Miami%20-%20Natti%20Natasha.mp3', '02:34', 19, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:20:58', '2022-01-06 02:20:58'),
(74, 'Antes Que Salga El Sol', '', 'https://data.chiasenhac.com/down2/2198/3/2197045-59f13108/128/Antes%20Que%20Salga%20El%20Sol%20-%20Natti%20Natasha_.mp3', '03:04', 19, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:21:22', '2022-01-06 02:21:22'),
(75, 'No Quiero Saber', '', 'https://data.chiasenhac.com/down2/2198/3/2197046-623136cd/128/No%20Quiero%20Saber%20-%20Natti%20Natasha.mp3', '02:49', 19, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:21:41', '2022-01-06 02:21:41'),
(76, 'Ram Pam Pam', '', 'https://data.chiasenhac.com/down2/2198/3/2197047-aefb3097/128/Ram%20Pam%20Pam%20-%20Natti%20Natasha_%20Becky%20G.mp3', '03:20', 19, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:21:58', '2022-01-06 02:21:58'),
(77, 'Todo De Ti', '', 'https://data.chiasenhac.com/down2/2178/3/2177849-de10adc1/128/Todo%20De%20Ti%20-%20Rauw%20Alejandro.mp3', '03:19', 20, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:23:46', '2022-01-06 02:23:46'),
(78, 'Sexo Virtual', '', 'https://data.chiasenhac.com/down2/2178/3/2177850-4dfcdca1/128/Sexo%20Virtual%20-%20Rauw%20Alejandro.mp3', '03:28', 20, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:24:12', '2022-01-06 02:24:12'),
(79, 'Nubes', '', 'https://data.chiasenhac.com/down2/2178/3/2177851-8430f278/128/Nubes%20-%20Rauw%20Alejandro.mp3', '02:58', 20, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:25:05', '2022-01-06 02:25:05'),
(80, 'Track 4', '', 'https://data.chiasenhac.com/down2/2178/3/2177852-99d53b0f/128/Track%204%20-%20Rauw%20Alejandro.mp3', '03:48', 20, 9, 0, '', 0000, 0, 'Link', '2022-01-05 19:25:24', '2022-01-06 02:25:24'),
(81, 'Bambi', '', 'https://data.chiasenhac.com/down2/2181/3/2180940-d49dfafd/128/Bambi%20-%20Clairo.mp3', '04:37', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:26:03', '2022-01-06 02:26:03'),
(82, 'Amoeba', '', 'https://data.chiasenhac.com/down2/2181/3/2180939-5c7f5c2d/128/Amoeba%20-%20Clairo.mp3', '03:48', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:27:49', '2022-01-06 02:27:49'),
(83, 'Partridge', '', 'https://data.chiasenhac.com/down2/2181/3/2180938-dab409b4/128/Partridge%20-%20Clairo.mp3', '03:13', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:28:09', '2022-01-06 02:28:09'),
(84, 'Zinnias', '', 'https://data.chiasenhac.com/down2/2181/3/2180937-f1db9269/128/Zinnias%20-%20Clairo.mp3', '02:54', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:28:30', '2022-01-06 02:28:30'),
(85, 'Blouse\r\n', '', 'https://data.chiasenhac.com/down2/2176/3/2175283-3611affb/128/Blouse%20-%20Clairo.mp3', '04:47', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:28:56', '2022-01-06 02:29:38'),
(86, 'Wade', '', 'https://data.chiasenhac.com/down2/2181/3/2180934-ec3d11f5/128/Wade%20-%20Clairo.mp3', '04:47', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:29:01', '2022-01-06 02:29:01'),
(87, 'Harbor', '', 'https://data.chiasenhac.com/down2/2181/3/2180935-e667d6b3/128/Harbor%20-%20Clairo.mp3', '04:24', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:30:09', '2022-01-06 02:30:09'),
(88, 'Just for today', '', 'https://data.chiasenhac.com/down2/2181/3/2180933-2a13f97e/128/Just%20For%20Today%20-%20Clairo.mp3', '03:37', 21, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:30:23', '2022-01-06 02:30:23'),
(89, 'Một thời để nhớ', '', 'https://data38.chiasenhac.com/downloads/1870/3/1869516-058d2046/128/Mot%20Thoi%20De%20Nho%20-%20Den_%20Ngot.mp3', '03:54', 22, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:31:11', '2022-01-06 02:31:11'),
(90, 'Cho Tôi Lang Thang', '', 'https://data3.chiasenhac.com/downloads/1774/3/1773435-efa435fc/32/Cho%20Toi%20Lang%20Thang%20-%20Ngot_%20Den.m4a', '04:18', 22, NULL, 0, '', 0000, 0, 'Link', '2022-01-05 19:31:40', '2022-01-06 02:31:40'),
(91, 'Ướt Mi', '', 'https://data37.chiasenhac.com/downloads/1881/3/1880482-c58d30cb/128/Uot%20Mi%20-%20Le%20Quyen.mp3', '04:38', 23, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:32:13', '2022-01-06 02:32:13'),
(92, 'Ru Em Từng Ngón Xuân Nồng', '', 'https://data38.chiasenhac.com/downloads/1881/3/1880486-612b1510/128/Ru%20Em%20Tung%20Ngon%20Xuan%20Nong%20-%20Le%20Quyen.mp3', '04:58', 23, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:32:32', '2022-01-06 02:32:32'),
(93, 'Ru Đời Đi Nhé', '', 'https://data38.chiasenhac.com/downloads/1881/3/1880490-50437f7f/128/Ru%20Doi%20Di%20Nhe%20-%20Le%20Quyen.mp3', '04:39', 23, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:32:57', '2022-01-06 02:32:57'),
(94, 'Phôi Pha', '', 'https://data38.chiasenhac.com/downloads/1881/3/1880492-7df5d0b8/128/Phoi%20Pha%20-%20Le%20Quyen.mp3', '04:29', 23, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:33:14', '2022-01-06 02:33:14'),
(95, 'Gọi Tên Bốn Mùa', '', 'https://data38.chiasenhac.com/downloads/1881/3/1880493-1a4459ce/128/Goi%20Ten%20Bon%20Mua%20-%20Le%20Quyen.mp3', '04:21', 23, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:33:31', '2022-01-06 02:33:31'),
(96, 'Cát Bụi', '', 'https://data52.chiasenhac.com/downloads/1031/3/1030049-c99d0ecb/128/Cat%20Bui%20-%20Khanh%20Ly.mp3', '03:28', 24, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:34:00', '2022-01-06 02:34:00'),
(97, 'Nối Vòng Tay Lớn', '', 'https://data52.chiasenhac.com/downloads/1031/3/1030051-60e22845/128/Thuong%20Mot%20Nguoi%20-%20Khanh%20Ly.mp3', '03:08', 24, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:34:17', '2022-01-06 02:34:17'),
(98, 'Thương Một Người ', '', 'https://data52.chiasenhac.com/downloads/1031/3/1030056-2ec0c842/128/Noi%20Vong%20Tay%20Lon%20-%20Khanh%20Ly.mp3', '05:43', 24, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:34:45', '2022-01-06 02:34:45'),
(99, 'Diễm Xưa', '', 'https://data52.chiasenhac.com/downloads/1031/3/1030052-f44b6e87/128/Tinh%20Xa%20-%20Khanh%20Ly.mp3', '03:31', 24, 12, 0, '', 0000, 0, 'Link', '2022-01-05 19:35:22', '2022-01-06 02:35:22'),
(100, 'Tình Xa', '', 'https://data52.chiasenhac.com/downloads/1031/3/1030057-e1b0d3d0/128/Diem%20Xua%20-%20Khanh%20Ly.mp3', '05:53', 24, 12, 0, 'Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người  Mừng ngày Tết trên khắp quê tôi  Ngàn hoa thơm khoa sắc xinh tươi  Đàn em thơ khoe áo mới  Chạy tung tăng vui pháo hoa  Mừng ngày Tết trên khắp quê tôi  Người ra Trung, ra Bắc, vô Nam  Dù đi đâu ai cũng nhớ  Về chung vui bên gia đình  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người  Mừng ngày Tết phố xá đông vui  Người đi thăm, đi viếng, đi chơi  Người lo đi mua sắm Tết  Người dâng hương đi lễ chùa  Mừng ngày Tết ta chúc cho nhau  Một năm thêm sung túc an vui  Người nông dân thêm lúa thóc  Người thương gia mau phát tài  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người', 0000, 0, 'Link', '2022-01-05 19:35:37', '2022-01-07 00:20:18'),
(101, 'đfdf', '~/img/song/nhacphim224411797.png', '~/audio', '3:25', NULL, 5, NULL, '<p>sdfdfsf</p>', NULL, NULL, 'Link', '2022-01-07 12:44:11', '2022-01-07 19:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8_unicode_ci NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_actived` tinyint(1) NOT NULL DEFAULT 0,
  `provider` enum('local','google','facebook') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `password`, `role`, `img_url`, `is_actived`, `provider`, `created_at`, `updated_at`) VALUES
(1, 'admin', '18520992@gm.edu.vn', 'admin123', 'admin', NULL, 1, 'local', '2022-01-06 01:28:49', '2022-01-06 08:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_album`
--

CREATE TABLE `user_album` (
  `user_album_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_artist`
--

CREATE TABLE `user_artist` (
  `user_artist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_playlist`
--

CREATE TABLE `user_playlist` (
  `user_playlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_song`
--

CREATE TABLE `user_song` (
  `user_song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `artist_album`
--
ALTER TABLE `artist_album`
  ADD PRIMARY KEY (`artist_album_id`),
  ADD KEY `art_alb_fk_1` (`album_id`),
  ADD KEY `art_alb_fk_2` (`artist_id`);

--
-- Indexes for table `artist_song`
--
ALTER TABLE `artist_song`
  ADD PRIMARY KEY (`artist_song_id`),
  ADD KEY `art_song_fk_1` (`artist_id`),
  ADD KEY `art_song_fk_2` (`song_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlist_id`),
  ADD KEY `playlist_user_fk` (`user_id`);

--
-- Indexes for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD PRIMARY KEY (`playlist_song_id`),
  ADD KEY `playlist_song_ibfk_1` (`playlist_id`),
  ADD KEY `playlist_song_ibfk_2` (`song_id`);

--
-- Indexes for table `playsong`
--
ALTER TABLE `playsong`
  ADD KEY `playsong_fk_1` (`album_id`),
  ADD KEY `playsong_fk_2` (`playlist_id`),
  ADD KEY `playsong_fk_3` (`song_id`),
  ADD KEY `playsong_fk_4` (`user_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`,`user_id`);

--
-- Indexes for table `session_user`
--
ALTER TABLE `session_user`
  ADD PRIMARY KEY (`session_user_id`),
  ADD KEY `session_user_fk` (`user_id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `song_album_fk` (`album_id`),
  ADD KEY `song_genre_fk` (`genre_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_album`
--
ALTER TABLE `user_album`
  ADD PRIMARY KEY (`user_album_id`),
  ADD KEY `user_album_fk_1` (`album_id`),
  ADD KEY `user_album_fk_2` (`user_id`);

--
-- Indexes for table `user_artist`
--
ALTER TABLE `user_artist`
  ADD PRIMARY KEY (`user_artist_id`),
  ADD KEY `user_artist_fk_1` (`user_id`),
  ADD KEY `user_artist_fk_2` (`artist_id`);

--
-- Indexes for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD PRIMARY KEY (`user_playlist_id`),
  ADD KEY `user_playlist_fk_1` (`playlist_id`),
  ADD KEY `user_playlist_fk_2` (`user_id`);

--
-- Indexes for table `user_song`
--
ALTER TABLE `user_song`
  ADD PRIMARY KEY (`user_song_id`),
  ADD KEY `user_song_fk_1` (`song_id`),
  ADD KEY `user_song_fk_2` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `artist_album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `artist_song`
--
ALTER TABLE `artist_song`
  MODIFY `artist_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `playlist_song`
--
ALTER TABLE `playlist_song`
  MODIFY `playlist_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `session_user`
--
ALTER TABLE `session_user`
  MODIFY `session_user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_album`
--
ALTER TABLE `user_album`
  MODIFY `user_album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_artist`
--
ALTER TABLE `user_artist`
  MODIFY `user_artist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_playlist`
--
ALTER TABLE `user_playlist`
  MODIFY `user_playlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_song`
--
ALTER TABLE `user_song`
  MODIFY `user_song_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artist_album`
--
ALTER TABLE `artist_album`
  ADD CONSTRAINT `art_alb_fk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `art_alb_fk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `artist_song`
--
ALTER TABLE `artist_song`
  ADD CONSTRAINT `art_song_fk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `art_song_fk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD CONSTRAINT `playlist_song_fk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_song_fk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_song_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlist_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session_user`
--
ALTER TABLE `session_user`
  ADD CONSTRAINT `session_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_album_fk` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `song_genre_fk` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user_album`
--
ALTER TABLE `user_album`
  ADD CONSTRAINT `user_album_fk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_album_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_artist`
--
ALTER TABLE `user_artist`
  ADD CONSTRAINT `user_artist_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_artist_fk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD CONSTRAINT `user_playlist_fk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_playlist_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_song`
--
ALTER TABLE `user_song`
  ADD CONSTRAINT `user_song_fk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_song_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
