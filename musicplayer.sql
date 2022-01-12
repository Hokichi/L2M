-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 06:42 PM
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
(1, 'Nhạc thiếu nhi Xuân Mai tuyển chọn', '~/img/album/xuanmaithieunhi224644185.jpg', 2003, 'Album', 1, '0000-00-00 00:00:00', '2022-01-12 16:09:58'),
(2, 'Con Cò Bé Bé Vol.3', '~/img/album/xuanmai224658907.jpg', 2004, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 21:46:58'),
(3, 'M-TP', '~/img/album/mtp224711903.jpg', 2017, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 21:47:11'),
(4, 'SQUARE ONE', '~/img/album/squareone220003781.jpg', 2016, 'Ep', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:59'),
(5, '30 (Deluxe Edition)', '~/img/album/3d220024331.jpg', 2021, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:00:24'),
(6, 'Tình Khôn Nguôi', '~/img/album/tinhkhonnguoi220401372.jpg', 2019, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:04:01'),
(7, 'Đôi Mắt Người Xưa', '~/img/album/doimatnguoixua220420013.jpg', 2010, 'Album', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:37'),
(8, 'Mang tiền về cho mẹ (Single)', '~/img/album/mangtienvechome220535388.jpg', 2021, 'Single', 0, '0000-00-00 00:00:00', '2022-01-11 22:05:35'),
(9, 'Show Của Đen (Live 2019)', '~/img/album/showcuaden220639074.png', 2020, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:06:39'),
(10, 'Montero', '~/img/album/montero221833398.jpg', 2021, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:18:33'),
(11, 'Planet Her (Deluxe Edition)', '~/img/album/planether221850949.jpg', 2021, 'Album', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:43'),
(12, 'Cho mình em (Single)', '~/img/album/chominhem221920146.jpg', 2021, 'Single', 0, '0000-00-00 00:00:00', '2022-01-11 22:19:20'),
(13, 'Yêu Rồi Yêu Rồi Yêu - EP', '~/img/album/yeuroiyeuroi221940473.jpg', 2021, 'Ep', 0, '0000-00-00 00:00:00', '2022-01-11 22:19:40'),
(14, 'Thật Bất Ngờ', '~/img/album/thatbatngo221952230.jpg', 2016, 'Album', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:40'),
(15, 'Gieo Quẻ (Casting Coin) (Single)', '~/img/album/gieoque222006828.jpg', 2022, 'Single', 0, '0000-00-00 00:00:00', '2022-01-11 22:20:06'),
(16, 'Đúng Cũng Thành Sai (Single)', '~/img/album/dungcungthanhsai222021314.jpg', 2020, 'Single', 0, '0000-00-00 00:00:00', '2022-01-11 22:20:21'),
(17, 'Ánh Nắng Của Anh (Single)', '~/img/album/anhnangcuaanh222033731.jpg', 2016, 'Single', 0, '0000-00-00 00:00:00', '2022-01-11 22:20:33'),
(19, 'Nattividad', '~/img/album/navida222051714.jpg', 2021, 'Album', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:54'),
(20, 'Vice Versa', '~/img/album/viceversa222104098.jpg', 2021, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:21:04'),
(21, 'Sling', '~/img/album/sling222129080.jpg', 2021, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:21:29'),
(22, 'Cho Tôi Lang Thang (Single)', '~/img/album/chotoilangthang222145787.jpg', 2017, 'Single', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:46'),
(23, 'Tình khúc Trịnh Công Sơn', '~/img/album/tinhkhuctrinhcongsonlequyen222203049.jpg', 2018, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:22:03'),
(24, 'Tình khúc Trịnh Công Sơn', '~/img/album/tinhkhuctrinhcongson222214158.jpg', 1974, 'Album', 0, '0000-00-00 00:00:00', '2022-01-11 22:22:14'),
(38, 'gfgdfgfd', '~/img/album/montero224736842.jpg', 2122, 'Ep', 0, '2022-01-08 14:47:43', '2022-01-08 21:47:43'),
(39, 'The Very Best of Yiruma: Yiruma & Piano (CD1)', '~/img/album/yiruma222310082.jpg', 2011, 'Album', 1, '0000-00-00 00:00:00', '2022-01-13 00:40:49');

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
(6, 'Xuân Mai', NULL, '~/img/artist/xuanmai223228982.jpg', '2022-01-02 15:41:12', '2022-01-12 15:32:29'),
(7, 'Adele', NULL, '~/img/artist/adele221837550.jpg', '2022-01-02 15:41:21', '2022-01-03 01:18:37'),
(8, 'Quang Lê', NULL, '~/img/artist/quangle223257811.jpg', '2022-01-02 15:41:32', '2022-01-12 15:32:57'),
(9, 'Black Pink', NULL, '~/img/artist/blackpink221927627.jpg', '2022-01-02 18:19:27', '2022-01-03 01:19:27'),
(10, 'Đen', NULL, '~/img/artist/denvau223311118.jpg', '2022-01-02 18:19:50', '2022-01-12 15:33:11'),
(11, 'Doja Cat', NULL, '~/img/artist/dojacat222100846.jpg', '2022-01-02 18:20:05', '2022-01-03 01:21:00'),
(12, 'Lil Nas X', NULL, '~/img/artist/Lil-Nas-X223325426.jpg', '2022-01-02 18:20:42', '2022-01-12 15:33:25'),
(13, 'BINZ', NULL, '~/img/artist/binz224758646.jpg', '2022-01-05 19:47:58', '2022-01-06 02:47:58'),
(14, 'Tóc Tiên', NULL, '~/img/artist/toctien224818724.jpg', '2022-01-05 19:48:18', '2022-01-06 02:48:18'),
(15, 'Trúc Nhân', NULL, '~/img/artist/trucnhan224841343.jpg', '2022-01-05 19:48:41', '2022-01-06 02:48:41'),
(16, 'Hoàng Thùy Linh', NULL, '~/img/artist/hoangthuylinh224905340.jpg', '2022-01-05 19:49:05', '2022-01-06 02:49:05'),
(17, 'Yiruma', NULL, '~/img/artist/yiruma225007962.jpg', '2022-01-05 19:49:43', '2022-01-06 02:50:07'),
(18, 'Natti Natasha', NULL, '~/img/artist/NattiNatasha223340099.jpg', '2022-01-05 19:50:37', '2022-01-12 15:33:40'),
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
(37, 21, 38, '2022-01-08 14:47:43', '2022-01-08 21:47:43'),
(38, 6, 2, '2022-01-11 14:46:58', '2022-01-11 21:46:58'),
(39, 10, 8, '2022-01-11 15:05:35', '2022-01-11 22:05:35'),
(40, 10, 12, '2022-01-11 15:19:20', '2022-01-11 22:19:20'),
(41, 13, 12, '2022-01-11 15:19:20', '2022-01-11 22:19:20'),
(42, 17, 39, '2022-01-12 14:23:10', '2022-01-12 21:23:10');

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
(12, 'Nhạc Trịnh', '~/img/genre/trinh-cong-son224515607.jpg', NULL, '2022-01-05 19:07:42', '2022-01-11 21:45:15'),
(13, 'Nhạc trẻ', '~/img/genre/nhactre224533470.jpg', NULL, '2022-01-05 19:10:56', '2022-01-11 21:45:33'),
(14, 'Nhạc thiếu nhi', '~/img/genre/nhacthieunhi223124933.jpg', NULL, '2022-01-11 15:31:25', '2022-01-11 22:31:25'),
(15, 'Indie', '~/img/genre/indie225325758.jpg', NULL, '2022-01-12 15:53:25', '2022-01-12 22:53:25');

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
(1, 'Nhạc Âu Mỹ Hot', NULL, '~/img/playlist/346 (4)220541003.jpg', NULL, 0, '2022-01-05 20:24:10', '2022-01-12 16:05:41'),
(2, 'Tuyển tập Nhạc Trịnh', NULL, '~/img/playlist/download220552368.jfif', NULL, 0, '2022-01-06 01:32:06', '2022-01-12 16:05:52'),
(3, 'Rap hôm nay nghe gì?', NULL, '~/img/playlist/download (1)220602583.jfif', NULL, 0, '2022-01-06 01:36:34', '2022-01-12 16:06:02'),
(4, 'Tết đến rồi', NULL, '~/img/playlist/1517470695553_500220611615.jpg', NULL, 0, '2022-01-06 01:38:07', '2022-01-12 16:06:11'),
(5, 'Hôm nay nghe gì?', NULL, '~/img/playlist/1600239008217220622166.jpg', NULL, 0, '2022-01-06 01:41:49', '2022-01-12 16:06:22'),
(6, 'Tuyển tập nhạc Việt', NULL, '~/img/playlist/1533036784864_500220644002.jpg', NULL, 0, '2022-01-06 01:41:49', '2022-01-12 16:06:44'),
(7, 'Tình khúc bolero', NULL, '~/img/playlist/download (4)220659398.jfif', NULL, 0, '2022-01-06 01:42:35', '2022-01-12 16:06:59'),
(8, 'Piano Chill', NULL, '~/img/playlist/download (2)220710491.jfif', NULL, 0, '2022-01-06 01:45:02', '2022-01-12 16:07:10'),
(9, 'K-pop hits', NULL, '~/img/playlist/download (3)220718973.jfif', NULL, 0, '2022-01-06 01:49:54', '2022-01-12 16:07:18'),
(10, 'Trở về tuổi thơ', NULL, '~/img/playlist/stt-tuoi-tho-2220728358.jpg', NULL, 0, '2022-01-06 01:50:19', '2022-01-12 16:07:28');

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
(37, 10, 6, '2022-01-06 02:09:36', '2022-01-06 09:09:36'),
(38, 1, 44, '2022-01-10 14:03:40', '2022-01-10 21:03:40'),
(39, 1, 45, '2022-01-10 14:05:50', '2022-01-10 21:05:50'),
(40, 6, 51, '2022-01-10 14:07:51', '2022-01-10 21:07:51'),
(41, 1, 41, '2022-01-10 14:17:26', '2022-01-10 21:17:26'),
(43, 10, 4, '2022-01-12 09:08:55', '2022-01-12 16:08:55'),
(44, 10, 1, '2022-01-12 09:09:05', '2022-01-12 16:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `playsong`
--

CREATE TABLE `playsong` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `session_user_id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `album_id` int(11) NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
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
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_id`, `title`, `img_url`, `path`, `duration`, `album_id`, `genre_id`, `track_no`, `lyrics`, `date_release`, `views`, `upload_type`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Ngày tết quê em', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNgay%20Tet%20Que%20Em%20-%20Xuan%20Mai.mp3?alt=media&token=cea51191-17da-4d86-9359-9309ecf1eef9', '05:40', 1, 14, NULL, '[DK:]\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet den trong tim moi nguoi.\r\n\r\nMung ngay Tet tren khap que toi\r\nNgan hoa thom khoa sac xinh tuoi\r\nDan em tho khoe ao moi\r\nChay tung tang vui phao hoa\r\nMung ngay Tet tren khap que toi\r\nNguoi ra Trung, ra Bac, vo Nam\r\nDu di dau ai cung nho\r\nVe chung vui ben gia dinh.\r\n\r\n[DK:]\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet den trong tim moi nguoi.\r\n\r\nMung ngay Tet pho xa dong vui\r\nNguoi di tham, di vieng, di choi\r\nNguoi lo di mua sam Tet\r\nNguoi dang huong di le chua\r\nMung ngay Tet ta chuc cho nhau\r\nMot nam them sung tuc an vui\r\nNguoi nong dan them lua thoc\r\nNguoi thuong gia mau phat tai.\r\n\r\n[DK:]\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet den trong tim moi nguoi.', 2003, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:26'),
(2, 'Mùa Xuân Đến Rồi', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMua%20Xuan%20Den%20Roi%20-%20Xuan%20Mai.mp3?alt=media&token=f0d97023-9092-457b-aa83-010044a75a11', '05:30', 1, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 14:26:37'),
(3, 'Thắng Cảnh Việt Nam', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FThang%20Canh%20Viet%20Nam%20-%20Xuan%20Mai.mp3?alt=media&token=a8fa6c1d-cd63-41ae-8e21-df062848817f', '03:25', 1, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 17:19:27'),
(4, '18 Vị La Hán', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2F18%20Vi%20La%20Han%20-%20Xuan%20Mai.mp3?alt=media&token=405b3d8c-4e19-4600-8ba6-691a36279f1f', '04:01', 1, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-11 23:04:37'),
(5, 'Đi Học', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDi%20Hoc%20-%20Xuan%20Mai.mp3?alt=media&token=59a59f17-3c98-44f8-a87e-287f7710a149', '04:03', 1, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 14:28:59'),
(6, 'Gà trống và mèo con', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FGa%20Trong%20Meo%20Con%20Cun%20Con%20-%20Xuan%20Mai.mp3?alt=media&token=7be74a11-5622-4643-8e10-48c1dd0db355', '03:27', 1, 14, NULL, 'Nha em co con ga trong \r\nMeo con va cun con Ga trong gay o o o \r\nMeo con luon rinh bat chuot \r\nCun con cham canh gac nha. \r\n\r\nNha em co con ga trong \r\nMeo con va cun con \r\nGa trong gay o o o \r\nMeo con luon rinh bat chuot \r\nCun con cham canh gac nha.', 2003, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:23'),
(7, 'Cô giáo', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FCo%20Giao%20-%20Xuan%20Mai.mp3?alt=media&token=2de1c746-6c65-49f2-9a3e-359c3a2bafc1', '05:33', 1, 14, NULL, 'Me cua em o truong la co giao men thuong \r\nCo yeu em vo han, day do em ngay thang \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong. \r\n\r\nDay tung cau, tung loi \r\nTung net but, dang di \r\nMong cho em nen nguoi \r\nThanh chau ngoan cua Bac \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong. \r\n\r\nMe cua em o truong la co giao men thuong \r\nCo yeu em vo han, day do em ngay thang \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong. \r\n\r\nDay tung cau, tung loi \r\nTung net but, dang di \r\nMong cho em nen nguoi \r\nThanh chau ngoan cua Bac \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong \r\nMe cua em o truong la co giao men thuong.', 2003, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:20'),
(8, 'Ai thương con nhiều hơn', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAi%20Thuong%20Con%20Nhieu%20Hon%20-%20Xuan%20Mai.mp3?alt=media&token=50e7dd0e-c84b-4016-8899-8a2b27c2d490', '02:48', 1, 14, NULL, 'Ba voi me deu thuong con\r\nNhung khong biet ai thuong con nhieu hon\r\nCon nghi hoai ma khong ra\r\nHoi bac gau, bup be cung lac dau.\r\n\r\nBa thuong con nhung ba khong noi\r\nMe yeu con me khong giau mot loi\r\nKho qua di thoi kho qua di thoi\r\nA con biet roi\r\nBa voi me deu thuong con bang nhau.', 2004, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:17'),
(9, 'Bé Chúc Tết', '~/img/album/xuanmai224658907.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBe%20Chuc%20Tet%20-%20Xuan%20Mai.mp3?alt=media&token=293addd2-d8ac-4d7c-b957-5aa3123db3d2', '03:05', 2, 14, NULL, 'Tet den roi! Vui that vui\r\nEm mac ao moi di chuc tet ho hang\r\nEm chuc ong ba song lau that lau\r\nEm chuc cha me manh khoe luon.\r\n\r\n[Rap:]\r\nChau chuc bac chuc di an khang va thinh vuong\r\nChau chuc co chuc chu nam nay that phat tai\r\nEm chuc anh chuc chi cham ngoan va hoc gioi\r\nVa cho ca nha that manh khoe, that yen vui!', 2004, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:14'),
(10, '36 Phố Phường', '~/img/album/xuanmai224658907.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2F36%20Pho%20Phuong%20-%20Xuan%20Mai.mp3?alt=media&token=a0c637d6-83c6-457b-91f8-d41b7097d05f', '05:05', 2, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 14:35:20'),
(11, 'Cơn Mưa Ngang Qua', '~/img/album/mtp224711903.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FCon%20Mua%20Ngang%20Qua%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=8b35b7a0-cc7e-480b-ac92-4e73e8a85b04', '04:48', 3, 1, NULL, '[Intro:]\r\nLadykillah uh\r\nCan you feel me uh\r\nYoungpilots uh ok\r\nEh eh eh\r\nCon mua ngang qua\r\nCon mua di ngang qua\r\nDung lam roi them, them, them, nhieu giot le uh...\r\n\r\n1. Con dau day bao cau ca anh tang em\r\nTinh yeu em mang cuon lap di bao nhieu cau ca\r\nVa con lai day, doi moi dau thuong trong man dem\r\nPhai le loi, gong minh buoc qua niem dau khi em roi xa.\r\n\r\nCon mua roi lai them, lai them, lai them\r\nXe di khong gian ngap tran nu cuoi\r\nNhin lai noi day, bao ki niem gio chim xuong duoi ho sau \r\nVi em chinh em da doi thay\r\nVa doi ban tay am em,ngay nao con lai giu\r\nVi em, vi em...\r\n\r\n[DK:]\r\nVi em da xa roi,tinh anh chim trong man dem\r\nLa vi em da quen roi,tinh anh chi nhu giac mo\r\nEm buoc di roi. Oi bao con mua\r\nEm buoc di roi. Xin hay xua tan di em,bong dang hinh em\r\nEm da mai roi xa.\r\n\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh ma anh trao em\r\nThoi thoi em di di da het roi\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh em quen quen quen.\r\n\r\n2. Con mua ngang qua mang em di xa\r\nCon mua ngang qua khien em nhat nhoa\r\nChang mot loi chao nguoi voi roi bo di khong chia li \r\nCho con tim anh them bao yeu mem.\r\n\r\nCon mua ngang qua cuon di bao yeu thuong\r\nCon mua ngang qua khien con tim mat phuong huong\r\nCon mua kia nang hat,oi mua them nang hat\r\nEm da roi xa doi ban tay trong con tim cua anh.\r\n\r\nBuong loi ban tay em di, em di roi xa ben toi nguoi oi\r\nVa buong loi giac mo em cho, em cho con tim toi dau biet may\r\nThoi cung da den hoi ket that roi ma nguoi\r\nThoi cung da den hoi ket, dung nhin lam gi\r\nAnh se quen di mot ai, ai, ai, va roi lam ngo, ngo, ngo, uh.\r\n\r\n[Coda:]\r\nVa roi em di qua buoc qua\r\nO lai chon day voi bao u buon\r\nDe roi thang troi qua, roi nam troi qua, thoang qua oh...\r\n\r\nNu cuoi em dang o dau,nguoi oi O dau\r\nVa bo moi em dang o dau, anh tim\r\nLuc tim ma khong thay nu cuoi em\r\nNguoi hay noi tra loi di\r\nVi sao em di di quen di bao nhieu giac mo ben anh xua kia.\r\n\r\nCon mua can roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi\r\nCon mua can roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi.\r\n\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh ma anh trao em\r\nThoi thoi em di di da het roi\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh em quen quen quen.', 2017, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:06'),
(12, 'Nắng Ấm Xa Dần', '~/img/album/mtp224711903.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNang%20Am%20Xa%20Dan%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=d3aa7ff6-ea61-403f-b5af-9504b19e0f31', '03:08', 3, 1, NULL, 'Nang am xa dan \r\nChuuuu?\r\nChang phai anh dau\r\nChuuuu?\r\nC phai anh dau?!\r\n\r\nNang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan bo roi,de lai nhung giac mo (giu lai di, giu lai di)\r\nNang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan, xa dan theo nhung tieng cuoi.\r\n(Hay mang di giup nhung noi buon)\r\n\r\n1. Theo thoi gian nhung hat mua nhu nang them\r\nXoa het thuong yeu man nong ngay nao giua chung ta\r\nAnh luc tim van cu mai luc tim\r\nGio ban tay co kim nen nhung cam xuc\r\nVui minh vao dem den anh chang tim thay loi ra.\r\n\r\nSau lung la tieng noi yeu anh, chang roi xa anh\r\nTruoc mat anh dieu day, no doi tra, tai sao nguoi voi quen mau?\r\nLa vi em\r\nBai ca anh viet se khong duoc tron ven dau em\r\nBuoc di\r\nEm yeu mot ai that roi mai chang la anh dau.\r\n\r\n[Chorus:]\r\nVay thi nguoi cu buoc di xa noi nay\r\nAnh binh minh se khong con noi day\r\nBuoc di xa noi nay\r\nNhung loi yeu se khong con noi day\r\nPhai tu dung len ma thoi, che nhe di nhung niem dau va noi buon\r\nXung quanh anh gio day co don minh anh om giac mo\r\nNhin em buoc ra di xa dan.\r\n\r\nEhhhhhh\r\nEm buoc ra di xa dan\r\nEhhhhh?\r\nNhin em buoc ra di xa dan\r\nEhhhhh?.\r\nNhin em buoc ra di xa dan.\r\n\r\n2. Den roi lai di\r\nCu voi vang di\r\nTrao cho anh bao yeu thuong roi em lai bo di\r\nGieo trong anh bao nhieu niem dau, roi em mau\r\nRoi bo anh, xa anh, quay mat lang le quen mau.\r\n\r\nUhhh..\r\nEm yeu quen that roi\r\nUhhh..\r\nChang mot loi chia li, quen roi, em yeu quen roi, quen roi.\r\n\r\n[Chorus x2]\r\n\r\nEhhhhhh\r\nNhin em buoc ra di xa dan\r\nEhhhhhh\r\nNhin em, nhin em buoc di\r\nEhhhhhh\r\nNhin em buoc ra di xa dan\r\nEhhhhhh\r\nNhin em buoc ra di xa dan.\r\n\r\n* Nang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan bo roi,de lai nhung giac mo (giu lai di, giu lai di)\r\nNang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan, xa dan theo nhung tieng cuoi.\r\n(Hay mang di giup nhung noi buon)', 2013, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:04'),
(13, 'Em Của Ngày Hôm Qua', '~/img/album/mtp224711903.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FEm%20Cua%20Ngay%20Hom%20Qua%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=4d4f461f-bc61-4848-a087-1bd7f5cb3e4e', '04:23', 3, 1, NULL, 'Eh eh eh... \r\nEm dang noi nao... \r\nCan you feel me. \r\nCan you feel me. \r\nEh eh eh \r\nM-tp \r\n\r\nLieu rang chia tay trong em co quen duoc cau ca\r\nTinh yeu khi xua em trao cho anh dau nao phoi pha \r\nDung lua doi con tim anh, em se khong buong tay anh duoc dau ma. (Em khong the buoc di) \r\nGat nuoc mat yeu duoi do cu quay lai noi anh \r\nEm biet rang con mua qua dau co che lap duoc nu cuoi dau thuong kia\r\nNuoc mat do van roi vi em..Oh baby..No baby.. \r\n\r\nDung nhin anh nua, doi mat ngay xua gio o dau\r\nEm con la em\r\nEm da khac roi\r\nEm muon quay lung quen het di (That vay sao?) \r\nTinh yeu trong em gio toan gia doi\r\nAnh khong muon vui minh trong mo\r\nAnh khong muon di tim giac mo ngay hom nao. \r\n\r\nDung voi vang em hay la em cua ngay hom qua \r\nUhhhhhhh.. \r\nXin hay la em cua ngay hom qua\r\nUhhhhhhh.. \r\nDung bo mac anh mot minh noi day\r\nUhhhhhhh.. \r\nDung lai va xoa nhe di ki uc \r\nUhhhhhhh.. \r\nChim dam vao nhung loi ca diu em thuo nao. \r\n\r\nMua dang roi\r\nDoi tay buong loi\r\nMinh anh ngoi day tim lai nhung khoang khong duong nhu choi voi\r\nThat ngu ngoc\r\nVu vo\r\nLang thang tren con duong tim lai giac mo \r\nDuong nhu da qua xa\r\nVa em khong con thiet tha \r\nNam lay doi tay anh muon giu em o lai \r\nNeu cu tiep tuc ca hai se phai kho dau \r\nDung co to ra manh me \r\nDo dau phai la em\r\nVay di... TAM BIET EM..! \r\n\r\nNham mat lai hay nghi di \r\nLau nay em song cho minh em ma\r\nPhai khong em hoi nguoi...??? \r\nTim lai thoi gian cua rieng doi ta \r\nNhung sao trong anh da qua tuyet vong \r\nSu that dang bua vay noi anh \r\nForget baby...!!!!! \r\n\r\nDung nhin anh nua, doi mat ngay xua gio o dau??? \r\nEm con la em? \r\nEm da khac roi\r\nEm muon quay lung quen het di\r\nTinh yeu trong em gio toan gia doi \r\nAnh khong muon vui minh trong mo \r\nAnh khong muon di tim giac mo ngay hom nao. \r\n\r\nDung voi vang em hay la em cua ngay hom qua. \r\nUhhhhhhh.. \r\nXin hay la em cua ngay hom qua. \r\nUhhhhhhh.. \r\nDung bo mac anh mot minh noi day. \r\nUhhhhhhh.. \r\nDung lai va xoa nhe di ki uc. \r\nUhhhhhhh.. \r\n\r\nEm mang nhung cam xuc theo nguoi mat roi ...! \r\n\r\nEm mang tieng cuoi\r\nEm mang hanh phuc di roi xa \r\nXung quanh chi con moi anh va nhung noi dau\r\nHay xoa sach het di...Dung van vuong..\r\nVi em\r\nDo em \r\nChinh em\r\nHay mang het di...... \r\n\r\nNguoi cu voi vang \r\nNguoi cu voi vang\r\nXin hay la em cua ngay hom qua \r\nNguoi buoc xa roi\r\nVa nguoi da buoc xa roi. \r\n\r\nDung voi vang em hay la em cua ngay hom qua \r\nUhhhhhhh.. \r\nXin hay la em cua ngay hom qua \r\nUhhhhhhh.. \r\nDung bo mac anh mot minh noi day \r\nUhhhhhhh.. \r\nDung lai va xoa nhe di ki uc \r\nUhhhhhhh.. \r\n\r\nDung voi vang em hay la em cua ngay hom qua \r\nEm da quen chua? \r\nXin hay la em cua ngay hom qua \r\nAnh nghi nhung dong cam xuc trong em gio da het that roi day!! \r\nDung bo mac anh mot minh noi day \r\nChang con gi ca\r\nDung lai va xoa nhe di ki uc \r\nEm hay la em cua ngay hom qua di ... Xin em day ..!', 2013, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:00'),
(14, 'Ấn Nút Nhớ Thả Giấc Mơ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAn%20Nut%20Nho%20Tha%20Giac%20Mo%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=77e8bc82-1839-4d8e-ad16-7ff78368ff44', '04:04', 3, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:09:47', '2022-01-11 23:17:55'),
(15, 'Như Ngày Hôm Qua', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNhu%20Ngay%20Hom%20Qua%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=b7e84844-21cb-4f8a-a51f-6a5159d0110d', '03:43', 3, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:10:05', '2022-01-12 01:28:56'),
(16, 'Một Năm Mới Bình An', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMot%20Nam%20Moi%20Binh%20An%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=be335d2b-8cf8-4983-891e-c571ade47f21', '03:43', 3, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:10:17', '2022-01-12 00:19:15'),
(17, 'Boombayah', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBoombayah%20-%20BlackPink.mp3?alt=media&token=3a748712-0cfa-40bf-abbd-3b4f5857c983', '04:01', 4, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:11:25', '2022-01-11 23:51:16'),
(18, 'Whistle', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWhistle%20-%20BlackPink.mp3?alt=media&token=7c8699ee-a6b1-4f99-bee1-730a32549b37', '03:22', 4, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:11:44', '2022-01-12 21:30:54'),
(19, 'Strangers By Nature', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FStrangers%20By%20Nature%20-%20Adele.mp3?alt=media&token=e9739c4e-bccc-47e9-a5ba-c4e597ff3e9e', '', 5, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:12:19', '2022-01-12 17:18:51'),
(20, 'Easy On Me', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FEasy%20On%20Me%20-%20Adele.mp3?alt=media&token=7bc2e3d2-d369-47e9-988e-e4a8b9d73b16', '', 5, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:12:35', '2022-01-11 23:58:31'),
(21, 'Không Còn Nợ Nhau', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FKhong%20Con%20No%20Nhau%20-%20Le%20Quyen.mp3?alt=media&token=cd017f2d-4d4e-40bb-9b77-c7113c6a305d', '04:11', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:14:14', '2022-01-12 00:11:01'),
(22, 'Tình Khôn Nguôi', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTinh%20Khon%20Nguoi%20-%20Le%20Quyen.mp3?alt=media&token=9398e7bb-03b3-4acb-ae67-80a722b22157', '04:57', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:16:45', '2022-01-12 17:20:15'),
(23, 'Yêu Anh Hơn Chính Em', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FYeu%20Anh%20Hon%20Chinh%20Em%20-%20Le%20Quyen.mp3?alt=media&token=07fc915d-b230-45b9-86c9-cd8b091bbf98', '04:42', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:17:05', '2022-01-12 21:31:13'),
(24, 'Vì Em Còn Thương', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FVi%20Em%20Con%20Thuong%20-%20Le%20Quyen.mp3?alt=media&token=84ccd3eb-abb3-4a54-808a-9d5a3116a648', '04:40', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:17:59', '2022-01-12 17:23:49'),
(25, 'Yêu Thương Một Đời', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FYeu%20Thuong%20Mot%20Doi%20-%20Le%20Quyen.mp3?alt=media&token=9cf32fc0-755b-4d33-86df-e146b4855350', '04:18', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:18:19', '2022-01-12 21:31:27'),
(26, 'Giận Thì Giận Mà Thương Thì Thương', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FGian%20Thi%20Gian%20Ma%20Thuong%20Thi%20Thuong%20-%20Le.mp3?alt=media&token=bee6390c-6b80-4706-b4a2-4ac389c5fa88', '04:55', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:18:52', '2022-01-12 00:00:39'),
(27, 'Đôi Mắt Người Xưa', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDoi%20Mat%20Nguoi%20Xua%20-%20Quang%20Le.mp3?alt=media&token=14d5fc53-b58b-409b-98d1-c8b8d6a6dd0c', '04:59', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:19:27', '2022-01-11 23:53:56'),
(28, 'Lời Tạ Từ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FLoi%20Ta%20Tu%20-%20Quang%20Le.mp3?alt=media&token=4686d973-dd27-44db-9e5a-e90475666ad0', '05:38', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:19:47', '2022-01-12 00:12:25'),
(29, 'Trộm nhìn nhau', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTrom%20Nhin%20Nhau%20-%20Quang%20Le.mp3?alt=media&token=d7ea7f31-6ddf-4fa5-9743-453be4cb1b8e', '05:38', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:20:14', '2022-01-12 17:21:31'),
(30, 'Áo Đẹp Nàng Dâu', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAo%20Dep%20Nang%20Dau%20-%20Quang%20Le_%20Mai%20Thien%20Va.mp3?alt=media&token=16ed1cff-e74c-4035-8ecc-55b0b1301849', '05:19', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:20:38', '2022-01-11 23:23:44'),
(31, 'Mang tiền về cho mẹ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMang%20Tien%20Ve%20Cho%20Me%20-%20Den_%20Nguyen%20Thao.mp3?alt=media&token=9224e5da-c634-422a-a466-42a6923d2b59', '', 8, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 17:57:34', '2022-01-12 00:13:52'),
(32, 'Lối nhỏ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FLoi%20Nho%20-%20Den_%20Phuong%20Anh%20Dao.mp3?alt=media&token=a04933b1-aa04-4b82-bd37-c5e03a27308b', '', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 17:57:52', '2022-01-12 00:12:09'),
(33, 'Anh Đếch Cần Gì Nhiều Ngoài Em (Live)', '~/img/album/showcuaden220639074.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAnh%20Dech%20Can%20Gi%20Nhieu%20Ngoai%20Em%20Live_%20-%20D.mp3?alt=media&token=fd4db7fd-fbb9-4f63-8196-e1d6a71d4c05', '04:06', 9, 3, NULL, 'Và anh đếch cần gì nhiều ngoài em\r\nÔi một giấc mơ chơi vơi nhiều đêm\r\nVà anh đếch cần gì nhiều ngoài em\r\nThương một giấc mơ ôm ta nhiều đêm.\r\n\r\n \r\n\r\nVer 1:\r\n\r\n \r\n\r\nAnh như con cáo em như một cành nho xanh\r\nKhi em còn trẻ và đẹp em lại không dành cho anh\r\nTrong lòng anh là kho xăng, nụ cười em là mồi lửa\r\nEm phá vỡ đi quy tắc, rồi bỏ mặc anh ngồi sửa\r\n\r\nAnh như biến thành người nhện, vì trong lòng nhiều tơ vương\r\nNhớ em tốn nhiều calo, thế nên anh gầy trơ xương\r\nỞ trong xóm anh rất ngoan, chẳng ai thấy anh say mèm\r\nMẹ anh dặn anh đủ thứ, nhưng quên dặn đừng say em\r\n\r\nNhư con cuốn chiếu, anh có rất nhiều chân thật\r\nBài hát này ngọt vì đám tụi anh rất thân mật\r\nAnh như con cáo em vẫn là cành nho xanh\r\nNhưng mà em trẻ và đẹp, em lại không dành cho anh.\r\n\r\n \r\n\r\nMel:\r\n\r\n \r\n\r\nTa đã đi tìm về thương nhớ\r\nTa đã đi tìm đi tìm đi tìm\r\nTa đã đi tìm về quá khứ\r\nTa cứ đi tìm đi tìm\r\n\r\nVà anh đếch cần gì nhiều ngoài em\r\nVà anh đếch cần gì nhiều ngoài em\r\nVà anh đếch cần gì nhiều ngoài em\r\nVà anh đếch cần gì nhiều ngoài em\r\n\r\nVà anh đếch cần gì nhiều ngoài em\r\nÔi một giấc mơ chơi vơi nhiều đêm\r\nVà anh đếch cần gì nhiều ngoài em\r\nThương một giấc mơ ôm ta nhiều đêm.\r\n\r\n \r\n\r\nVer 2:\r\n\r\n \r\n\r\nMột ngày cùng em uống đến thoáng say là đủ\r\nKệ đời ngả nghiêng mình nằm dưới tán cây mà ngủ\r\nSẽ thật là tuyệt nếu rơi vào một chiều thu\r\nAnh cưa em đổ em gọi anh là tiều phu\r\n\r\nAnh có thể có danh tiếng nếu như mặt anh dày thêm\r\nAnh có thể có nhiều tiền nếu anh cày ngày cày đêm\r\nNhưng như một giấc mơ bị em chối bỏ trong chiều\r\nAnh không có được em dù cho cố bỏ công nhiều\r\n\r\nNồng độ cồn em bao nhiêu sao cứ làm anh lảo đảo\r\nEm chỉ mang lại chua cay như là gói mì hảo hảo\r\nMột lần chơi lớn để xem em có trầm trồ\r\nVì yêu em, anh như mang hết con tim đi cầm đồ.\r\n\r\n \r\n\r\n(Mel)', 2019, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:41:50'),
(34, 'Mười Năm (Live)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMuoi%20Nam%20Live_%20-%20Den_%20Ngoc%20Linh.mp3?alt=media&token=59e63d1c-edf1-432d-a517-ff3fbbc8f69d', '04:45', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 17:58:37', '2022-01-12 01:26:38'),
(35, 'Lộn Xộn 2 (Live)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FLon%20Xon%202%20Live_%20-%20Den.mp3?alt=media&token=caa6d6a0-12c0-4dac-8b86-4b55c4f55557', '02:28', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 17:59:26', '2022-01-12 00:12:39'),
(36, 'Hai Triệu Năm (Live)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FHaiTrieuNam-DenBien-6007307.mp3?alt=media&token=ec53991e-82ab-4a84-adbf-ba8aa051c6c1', '04:58', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 18:00:02', '2022-01-12 00:08:05'),
(37, 'Bài Này Chill Phết (Live)\r\n', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBai%20Nay%20Chill%20Phet%20Live_%20-%20Den_%20Min.mp3?alt=media&token=3dd2472c-ef81-4779-b07d-e977da6fe141', '04:54', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 18:00:19', '2022-01-11 23:23:56'),
(38, 'Đưa Nhau Đi Trốn (Live)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDua%20nhau%20di%20tron%20-%20Den.mp3?alt=media&token=ee52b441-0064-4478-976f-6d3391002a63', '04:25', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 18:00:53', '2022-01-11 23:57:53'),
(39, 'Montero (Call Me By Your Name)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMontero%20Call%20Me%20By%20Your%20Name_%20-%20Lil%20Nas.mp3?alt=media&token=f41514c1-4a3e-4867-8795-d7d73837a0d2', '02:17', 10, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 18:01:22', '2022-01-12 00:18:57'),
(40, 'Dead Right Now', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDead%20Right%20Now%20-%20Lil%20Nas%20X.mp3?alt=media&token=43814650-9d54-419f-9637-d4be84c73d7b', '03:41', 10, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 18:02:13', '2022-01-11 23:52:25'),
(41, 'YouRight\r\n', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FYou%20Right%20-%20Doja%20Cat_%20The%20Weeknd.mp3?alt=media&token=3d1d2045-7741-485f-a2d0-f2e8f2b99436', '03:36', NULL, NULL, NULL, NULL, NULL, 0, 'Link', 0, '2022-01-05 17:42:10', '2022-01-12 21:32:20'),
(42, 'Kiss Me More', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FKiss%20Me%20More%20-%20Doja%20Cat_%20SZA.mp3?alt=media&token=4e1bbfe9-2aef-4699-a934-b6b0deffe1c1', '03:28', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:52:25', '2022-01-12 00:11:55'),
(43, 'Been Like This', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBeen%20Like%20This%20-%20Doja%20Cat.mp3?alt=media&token=2272825b-e12f-4f0d-8b4b-01435ce79177', '02:57', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:52:53', '2022-01-11 23:36:12'),
(44, 'Love To Dream', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FLove%20To%20Dream%20-%20Doja%20Cat.mp3?alt=media&token=6e085e64-bfe6-4cc5-ad64-42d2dda190cb', '03:36', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:53:13', '2022-01-12 00:13:35'),
(45, 'Need To Know', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNeed%20To%20Know%20-%20Doja%20Cat.mp3?alt=media&token=ec35661d-3976-4275-ae3c-d03e84883c19', '03:30', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:53:32', '2022-01-12 01:28:17'),
(46, 'Payday', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPayday%20-%20Doja%20Cat_%20Young%20Thug.mp3?alt=media&token=c44d41f7-96ac-49ab-99a5-f084cd75da5c', '03:32', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:53:55', '2022-01-12 01:32:17'),
(47, 'Imagine', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FImagine%20-%20Doja%20Cat.mp3?alt=media&token=5fe01dad-d599-47df-b194-baf9ade109b5', '02:28', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:54:12', '2022-01-12 00:09:51'),
(48, 'Alone', '~/img/album/planether221850949.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAlone%20-%20Doja%20Cat.mp3?alt=media&token=5cb47f2e-0fe6-4715-81ef-e2e37cefd524', '02:56', 11, 4, NULL, '[Chorus]\r\nBaby, when you fought me at the door\r\nKinda hard to force what\'s natural\r\nMaybe you don\'t want what you need most\r\nIs it crazy I\'m not scared to be alone?\r\n\r\n[Post-Chorus]\r\nNow I barely need ya\r\nDo what you do best and be alone\r\nGotta tell him, \"Rest in peace\"\r\nBet you thought I\'d die alone\r\nIt don\'t make sense to me\r\nBut I keep my head up high alone\r\nYou ain\'t even there for me\r\nBut now, you\'re scared to be alone\r\n\r\n[Verse 1]\r\nToo many drinks to think about you\r\nI had too many thoughts to let you wander\r\nNow you\'re an afterthought, I lost ya\r\nAnd now you want me, babe\r\nYou want me, but it\'s bye\r\nGivin\' mе reasons to fly\r\nPack all my shit and be wise\r\nJump in thе ride\r\nHit up my dude on the side\r\nLike, look what you threw to the side\r\nYou get the vibe\r\nEither we fuck or we fight\r\nBut I got the feelin\' you\'re right\r\nI\'m out my mind\r\nDoesn\'t make sense when I cry\r\nIf we can\'t make up, \'least we try\r\n\r\n[Chorus]\r\nBaby, when you fought me at the door (Fought me at the door)\r\nKinda hard to force what\'s natural (Oh, oh, oh)\r\nMaybe you don\'t want what you need most (Oh, oh, oh)\r\nIs it crazy I\'m not scared to be alone? (Yeah)\r\n\r\n[Verse 2]\r\nI ain\'t wanna share my dreams when it involves you\r\nNot the man I need (Yeah)\r\nStarted feelin\' like I failed my team\r\nMissin\' gigs for you, bet you never felt like me\r\nDifferent levels to the game, that\'s fast\r\nSpendin\' bands last week while your ass act cheap (Yeah)\r\nLonely at the top while your ass miles deep\r\nGot me thinkin\' that you scared of yourself, not me\r\nImpossible, from a Prius to gold carriages\r\nMiddle finger to you so you see what a whole karat is\r\nI need a answer, a reader of more tarots\r\nYou couldn\'t tell that the both of us needed a whole therapist\r\nI made you fam when I greeted your whole parents\r\nBut later, I realized they ain\'t teach you what no sharin\' is\r\nI know you hearin\' this, I know you scared of it\r\nBut bein\' lonely better than \'needs control,\' cherish it\r\n\r\n[Chorus]\r\nBaby, when you fought me at the door (Fought me at the door)\r\nKinda hard to force what\'s natural (Oh, oh, oh)\r\nMaybe you don\'t want what you need most (Oh, oh, oh)\r\nIs it crazy I\'m not scared to be alone?\r\n\r\n[Post-Chorus]\r\nNow I barely need ya (I barely need ya)\r\nDo what you do best and be alone\r\nGotta tell him, \"Rest in peace\"\r\nBet you thought I\'d die alone\r\nIt don\'t make sense to me\r\nBut I keep my head up high alone\r\nYou ain\'t even there for me\r\nBut now, you\'re scared to be alone\r\nAlone\r\nNow you scared to be alone', 2021, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:41:46'),
(49, 'Ride\r\n', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRide%20-%20Doja%20Cat.mp3?alt=media&token=b1204364-be28-4e1d-ad9e-6e59fc90f747', '03:26', 12, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:55:11', '2022-01-12 01:33:14'),
(50, 'Cho mình em', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FCho%20Minh%20Em%20-%20Binz_%20Den.mp3?alt=media&token=df1761c1-cfed-46b3-a8df-68cbdc40417e', '03:26', 12, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:56:18', '2022-01-11 23:51:38'),
(51, 'Trên Chuyến Xe Lên Đà Lạt Chiều Nay', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTren%20Chuyen%20Xe%20Len%20Da%20Lat%20Chieu%20Nay%20-%20To.mp3?alt=media&token=0c1b3de9-6a83-426a-99a6-50f2a61fd2ca', '03:53', 13, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:11:25', '2022-01-12 17:21:14'),
(52, 'Từ Những Thói Quen', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTu%20Nhung%20Thoi%20Quen%20-%20Toc%20Tien.mp3?alt=media&token=4070e2ff-4a24-4b68-bc7f-47041edfab8b', '04:14', 13, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:12:20', '2022-01-12 17:21:47'),
(53, 'Mình Yêu Đến Đây Thôi', '', 'https://data.chiasenhac.com/down2/2214/3/2213374-bb3c2433/128/Minh%20Yeu%20Den%20Day%20Thoi%20-%20Toc%20Tien.mp3', '04:45', 13, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:12:37', '2022-01-06 02:12:37'),
(55, 'Thật Bất Ngờ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FThat%20Bat%20Ngo%20-%20Truc%20Nhan.mp3?alt=media&token=a2a2264e-c8e8-4156-bcf0-d03c68caf46e', '03:32', 14, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:13:28', '2022-01-12 17:19:44'),
(56, 'Vẽ (Electro Version)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FVe%20Electro%20Version_%20-%20Truc%20Nhan.mp3?alt=media&token=fc90949a-69b6-4062-8389-f179d194bcd1', '04:17', 14, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:13:45', '2022-01-12 17:23:33'),
(57, 'Bốn Chữ Lắm', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBon%20Chu%20Lam%20-%20Truc%20Nhan_%20Truong%20Nhi.mp3?alt=media&token=f8a589a8-3f45-4dd0-88a7-1b776905b6e4', '04:20', 14, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:14:03', '2022-01-11 23:51:04'),
(58, 'Gieo Quẻ', '~/img/album/gieoque222006828.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FGieo%20Que%20-%20Hoang%20Thuy%20Linh_%20Den.mp3?alt=media&token=9c5cea7c-82a4-422f-9087-1bad12bc6704', '03:19', 15, 13, NULL, 'Thầy ơi\r\nCho con một quẻ xem bói đầu năm\r\nCon xin chắp tay nguyện cầu\r\nCung kính thành tâm\r\nNăm nay kinh tế thế nào?\r\nCông danh sự nghiệp ra sao?\r\nCho con biết ngay đi nào!!!\r\nChỉ riêng tình duyên thì con chẳng cần thầy phán ra\r\nTrời cho biết ngay thôi màaaa\r\nPhận duyên đến như món quà\r\nChờ mong tình yêu vội vàng rồi lại chẳng đến đâu\r\nThôi thì ta đừng âu sầu\r\nHẹn ngày sau sẽ gặp nhau!\r\nTình yêu đến như phép màu chẳng ai bói ra được đâu\r\nGặp nhau có duyên không hẹn\r\nTự nhiên ý hợp tâm đầu\r\nNgười ta ép mỡ ép dầu\r\nNào ai ép duyên được đâu\r\nTình yêu đến không mong cầu\r\nRồi mai có khi dài lâu woooh hoooo\r\nRồi mai có khi dài lâu woooh hoooo\r\n\r\nThầy ơi\r\nCho con một quẻ xem bói đầu năm\r\nCon xin chắp tay nguyện cầu\r\nCung kính thành tâm\r\nBao lâu chưa đi sang Hàn\r\nVisa con sắp hết hạn!\r\nCó đứa bạn nào đâm ngang\r\n“Nên mua đất hay mua vàng?”\r\nChỉ riêng tình duyên thì con chẳng cần thầy phán ra\r\nTrời cho biết ngay thôi màaaa\r\nPhận duyên đến như món quà\r\nChờ mong tình yêu vội vàng rồi lại chẳng đến đâu\r\nThôi thì ta đừng âu sầu\r\nHẹn ngày sau sẽ gặp nhau!\r\nTình yêu đến như phép màu chẳng ai bói ra được đâu\r\nGặp nhau có duyên không hẹn\r\nTự nhiên ý hợp tâm đầu\r\nNgười ta ép mỡ ép dầu\r\nNào ai ép duyên được đâu\r\nTình yêu đến không mong cầu\r\nRồi mai có khi dài lâu woooh hoooo\r\nRồi mai có khi dài lâu woooh hoooo\r\n\r\nCàng nhiều thứ trong đầu, càng nhiều điều nuối tiếc\r\nÍt đi điều mong cầu, lòng êm như suối biếc\r\nHôm qua đã xong rồi ngày mai thì khó biết\r\nCố gắng ngày hôm nay không gì là khó hết\r\nMuốn thì phải làm mà dịch ám đành phải lùi\r\nCòn sức còn khoẻ là còn mừng còn phải cười\r\nNhìn các cô chú đang chống dịch mòn cả người\r\nBớt than bớt thở, mình khổ một họ khổ mười\r\nNếu mà, nếu mà, nếu mà đợi\r\nĐời người chắc gì đã là đường bước được\r\nTương lai là thứ không bao giờ lường trước được\r\nĐi tìm điều tích cực để vui lên mà sống thì\r\nHướng nào cũng tốt, đường nào cũng thông', 2021, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:41:38'),
(59, 'Đúng Cũng Thành Sai', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDung%20Cung%20Thanh%20Sai%20-%20My%20Tam.mp3?alt=media&token=e9f5b3ee-760a-43bf-8486-57a869eb161a', '04:47', 16, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:14:49', '2022-01-11 23:58:08'),
(60, 'Ánh Nắng Của Anh (Chờ em đến ngày mai OST)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAnh%20Nang%20Cua%20Anh%20-%20Duc%20Phuc.mp3?alt=media&token=609364a2-4671-43ac-87c4-68e566febcce', '04:24', 17, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:15:08', '2022-01-11 23:18:15'),
(61, 'Wait There', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWait%20There%20-%20Yiruma.mp3?alt=media&token=c820e0b0-865b-4ad5-b128-87e8cac7e3ae', '04:55', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:51:41'),
(62, 'Tears On Love', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTears%20On%20Love%20-%20Yiruma.mp3?alt=media&token=c5987153-f082-422d-ab5b-c12e15ef637b', '04:11', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:52:55'),
(63, 'I', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FI%20-%20Yiruma.mp3?alt=media&token=c88d221d-d6c6-4dbd-826c-639c15c7ab31', '04:11', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:53:18'),
(64, 'May Be', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMay%20Be%20-%20Yiruma.mp3?alt=media&token=36db04b2-fd46-4fb6-944b-1ee1311cbf84', '04:01', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:53:33'),
(65, 'Love Me', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FLove%20Me%20-%20Yiruma.mp3?alt=media&token=4cbfc447-117a-4d8e-b1aa-9e99d9a9ab02', '04:05', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:56:26'),
(66, 'River Flows In You', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRiver%20Flows%20In%20You%20-%20Yiruma.mp3?alt=media&token=216cfbed-4fc2-419b-9a1b-1bac3397b0b3', '03:08', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:56:43'),
(67, 'It\'s Your Day', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FIt_s%20Your%20Day%20-%20Yiruma.mp3?alt=media&token=121facdb-3e83-464b-a819-c86da23666f1', '03:41', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:56:58'),
(68, 'When The Love Falls', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWhen%20The%20Love%20Falls%20-%20Yiruma.mp3?alt=media&token=0140bd4a-d7d9-44de-921a-22cfc9d1db3f', '03:17', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:57:12'),
(69, 'Passing By', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPassing%20By%20-%20Yiruma.mp3?alt=media&token=ae3d0cd3-f0af-4ab8-9c10-d7d62df9543e', '04:36', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:57:30'),
(70, 'Do You', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDo%20You%20-%20Yiruma.mp3?alt=media&token=0f65c3dc-7435-4664-af0b-4b7372a5b141', '04:09', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:57:42'),
(71, 'Frozen', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FFrozen%20-%20Natti%20Natasha.mp3?alt=media&token=09a45633-96f3-45ec-942c-3ca52e3a6981', '03:40', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:20:20', '2022-01-11 23:59:49'),
(72, 'Imposible Amor', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FImposible%20Amor%20-%20Natti%20Natasha_%20Maluma.mp3?alt=media&token=0ad3abc9-fc67-43f4-b2fc-dff2b8011c2d', '02:53', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:20:41', '2022-01-12 00:10:07'),
(73, 'Noches En Miami', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNoches%20En%20Miami%20-%20Natti%20Natasha.mp3?alt=media&token=37af1cf3-a6b7-4a1d-93b1-722ecf6594e7', '02:34', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:20:58', '2022-01-12 01:29:54'),
(74, 'Antes Que Salga El Sol', '~/img/album/navida222051714.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAntes%20Que%20Salga%20El%20Sol%20-%20Natti%20Natasha_.mp3?alt=media&token=70ffb47f-e673-4e94-90a8-b088e89a6147', '03:04', 19, 9, NULL, '[Intro: Prince Royce & Natti Natasha]\r\nTan hermosa que te ves (Yeah-yeah)\r\nComo la primera vez (Yeah)\r\nYo no te he dejado de pensar\r\nY yo sé que te pasa igual\r\nQué bonito es volverte a encontrar\r\nExtrañaba esos besos y contigo bailar, mmm\r\n\r\n[Coro: Natti Natasha & Prince Royce]\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\n\r\n[Post-Coro: Natti Natasha & Prince Royce]\r\nOh-oh-oh-oh-oh\r\nPero aún así\r\nEh-eh-eh-eh-eh\r\n\r\n[Verso 1: Natti Natasha]\r\nTú no va\' a comerte una como yo never\r\nYo te pienso en casa solita y má\' si llueve\r\nEste cuerpo e\' tuyo, aquí lo tiene\'\r\nDale, ven pa\'cá, que par de beso\' tú me debe\'\r\nPa\' hacerte esa\' cosita\' de la\' que te gustaba\'\r\nPapi, contigo era todo o nada\r\nVamo\' a repetir lo que ya sabe la almohada\r\nEra exactamente como te lo imaginaba\'\r\n\r\n[Coro: Natti Natasha & Prince Royce]\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\n\r\n[Post-Coro: Natti Natasha & Prince Royce]\r\nOh-oh-oh-oh-oh\r\nPero aún así\r\nEh-eh-eh-eh-eh\r\n\r\n[Verso 2: Prince Royce]\r\nY es que volver a tener otra noche contigo\r\nEs como volver a encontrar el amor que perdimos\r\nComo en viejos tiempos, te digo\r\nNo puedo mirarte con ojos de amigos\r\nVoy a hacerte cosita\' de esa\' que te gustaban\r\nNatti, contigo no me falta nada\r\nDame un beso de eso\' que me dure una semana\r\nMami, esto e\' pa\' hoy, que yo no sé mañana\r\n\r\n[Coro: Natti Natasha & Prince Royce]\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\n\r\n[Outro: Prince Royce & Natti Natasha, Ambos]\r\nOh-oh-oh-oh-oh\r\nRoyce\r\nNatti Nat, yeah\r\nEh-eh-eh-eh\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así', 2021, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 22:56:30'),
(75, 'No Quiero Saber', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNo%20Quiero%20Saber%20-%20Natti%20Natasha.mp3?alt=media&token=7fd23196-0507-403e-871a-f5f6cb806bcc', '02:49', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:21:41', '2022-01-12 01:29:29'),
(76, 'Ram Pam Pam', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRam%20Pam%20Pam%20-%20Natti%20Natasha_%20Becky%20G.mp3?alt=media&token=76f80db8-d788-4b69-9f92-6ce22036749a', '03:20', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:21:58', '2022-01-12 01:32:59'),
(77, 'Todo De Ti', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTodo%20De%20Ti%20-%20Rauw%20Alejandro.mp3?alt=media&token=5bde3e3c-2c7c-49ef-9585-bb8b8b6ea31b', '03:19', 20, 9, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:23:46', '2022-01-13 00:41:24'),
(78, 'Sexo Virtual', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FSexo%20Virtual%20-%20Rauw%20Alejandro.mp3?alt=media&token=e858bfb9-ca0f-4baa-9cbc-365fc39a014e', '03:28', 20, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:24:12', '2022-01-12 17:18:37'),
(79, 'Nubes', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNubes%20-%20Rauw%20Alejandro.mp3?alt=media&token=007bf50d-5e85-4b21-af6d-15bef56cb9a2', '02:58', 20, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:25:05', '2022-01-12 01:30:25'),
(80, 'Track 4', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTrack%204%20-%20Rauw%20Alejandro.mp3?alt=media&token=a43a4f92-6663-48ea-ac46-c10707e1d1b9', '03:48', 20, 9, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:25:24', '2022-01-13 00:41:21'),
(81, 'Bambi', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBambi%20-%20Clairo.mp3?alt=media&token=b551db6c-6896-47ab-9bb0-00780569e1ed', '04:37', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:26:03', '2022-01-11 23:24:19'),
(82, 'Amoeba', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAmoeba%20-%20Clairo.mp3?alt=media&token=0a20d212-4c6e-4aa2-a8c6-ded975f545b3', '03:48', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:27:49', '2022-01-11 23:17:46'),
(83, 'Partridge', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPartridge%20-%20Clairo.mp3?alt=media&token=8eb20a05-4e94-4055-826a-791ea188ddc0', '03:13', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:28:09', '2022-01-12 01:30:43'),
(84, 'Zinnias', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FZinnias%20-%20Clairo.mp3?alt=media&token=d1880c68-d187-4fbb-a1e5-4d60a1f57bb4', '02:54', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:28:30', '2022-01-12 21:31:50'),
(85, 'Blouse\r\n', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FBlouse%20-%20Clairo.mp3?alt=media&token=b2d6af8a-19b2-4777-8986-a70a64353de0', '04:47', 21, NULL, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:28:56', '2022-01-13 00:41:17'),
(86, 'Wade', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWade%20-%20Clairo.mp3?alt=media&token=c7ba4ae6-b08b-460c-b623-b086159bed91', '04:47', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:29:01', '2022-01-12 17:24:04'),
(87, 'Harbor', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FHarbor%20-%20Clairo.mp3?alt=media&token=e8a7fb1b-e4e9-4d29-965f-73e13af9953d', '04:24', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:30:09', '2022-01-12 00:08:28'),
(88, 'Just for today', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FJust%20For%20Today%20-%20Clairo.mp3?alt=media&token=33f9fa2b-202a-4b9a-a026-c39dfe138766', '03:37', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:30:23', '2022-01-12 00:10:47'),
(89, 'Một thời để nhớ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FMot%20Thoi%20De%20Nho%20-%20Den_%20Ngot.mp3?alt=media&token=80140a40-c686-4cee-b5bc-0599197dbbd4', '03:54', 22, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:31:11', '2022-01-12 00:19:40'),
(90, 'Cho Tôi Lang Thang', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FCho%20Toi%20Lang%20Thang%20-%20Ngot_%20Den.m4a?alt=media&token=a74e63ac-d92f-4df5-be44-b4cd6ead89e1', '04:18', 22, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:31:40', '2022-01-11 23:51:50'),
(91, 'Ướt Mi', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FUot%20Mi%20-%20Le%20Quyen.mp3?alt=media&token=e0d89d55-1ae0-4a27-b265-b766c9a4b24b', '04:38', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:32:13', '2022-01-12 17:22:01'),
(92, 'Ru Em Từng Ngón Xuân Nồng', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRu%20Em%20Tung%20Ngon%20Xuan%20Nong%20-%20Le%20Quyen.mp3?alt=media&token=12a38b20-ca96-437d-9475-3e91cd457b7e', '04:58', 23, 12, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:32:32', '2022-01-13 00:41:10'),
(93, 'Ru Đời Đi Nhé', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRu%20Doi%20Di%20Nhe%20-%20Le%20Quyen.mp3?alt=media&token=c5d12928-ef60-4838-883b-6097539ff4ec', '04:39', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:32:57', '2022-01-12 01:33:49'),
(94, 'Phôi Pha', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPhoi%20Pha%20-%20Le%20Quyen.mp3?alt=media&token=40ac6813-cf18-42ca-9db8-91b6ac19617c', '04:29', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:33:14', '2022-01-12 01:32:35'),
(95, 'Gọi Tên Bốn Mùa', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FGoi%20Ten%20Bon%20Mua%20-%20Le%20Quyen.mp3?alt=media&token=99ab2569-f602-45bb-b689-a17851d9290e', '04:21', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:33:31', '2022-01-12 00:02:17'),
(96, 'Cát Bụi', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FCat%20Bui%20-%20Khanh%20Ly.mp3?alt=media&token=5415078c-62f9-433f-a538-0e313476c4cd', '03:28', 24, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:34:00', '2022-01-11 23:51:26'),
(97, 'Nối Vòng Tay Lớn', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNoi%20Vong%20Tay%20Lon%20-%20Khanh%20Ly.mp3?alt=media&token=4217034e-714f-490c-90f4-5ebe9f53566f', '03:08', 24, 12, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:34:17', '2022-01-13 00:41:14'),
(98, 'Thương Một Người ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FThuong%20Mot%20Nguoi%20-%20Khanh%20Ly.mp3?alt=media&token=2bc920ee-c556-42d7-b6b1-35653cd5e64b', '05:43', 24, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:34:45', '2022-01-12 17:20:00'),
(99, 'Diễm Xưa', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDiem%20Xua%20-%20Khanh%20Ly.mp3?alt=media&token=7cf1ed41-501c-40b6-a353-81a259e863ab', '03:31', 24, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:35:22', '2022-01-11 23:52:36');
INSERT INTO `song` (`song_id`, `title`, `img_url`, `path`, `duration`, `album_id`, `genre_id`, `track_no`, `lyrics`, `date_release`, `views`, `upload_type`, `featured`, `created_at`, `updated_at`) VALUES
(100, 'Tình Xa', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTinh%20Xa%20-%20Khanh%20Ly.mp3?alt=media&token=051c9f02-34ec-456f-8a5f-4728de2b754e', '05:53', 24, 12, 0, 'Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người  Mừng ngày Tết trên khắp quê tôi  Ngàn hoa thơm khoa sắc xinh tươi  Đàn em thơ khoe áo mới  Chạy tung tăng vui pháo hoa  Mừng ngày Tết trên khắp quê tôi  Người ra Trung, ra Bắc, vô Nam  Dù đi đâu ai cũng nhớ  Về chung vui bên gia đình  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người  Mừng ngày Tết phố xá đông vui  Người đi thăm, đi viếng, đi chơi  Người lo đi mua sắm Tết  Người dâng hương đi lễ chùa  Mừng ngày Tết ta chúc cho nhau  Một năm thêm sung túc an vui  Người nông dân thêm lúa thóc  Người thương gia mau phát tài  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người', 0000, 0, 'Link', 0, '2022-01-05 19:35:37', '2022-01-12 17:20:30'),
(101, 'đfdf', '~/img/song/nhacphim224411797.png', '~/audio', '3:25', NULL, 5, NULL, '<p>sdfdfsf</p>', NULL, NULL, 'Link', 0, '2022-01-07 12:44:11', '2022-01-07 19:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('Admin','User') COLLATE utf8_unicode_ci NOT NULL,
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
(1, 'admin', '18520992@gm.edu.vn', 'admin123', 'Admin', '~/img/user/Clairo225430359.jpg', 0, 'local', '2022-01-06 01:28:49', '2022-01-12 16:54:33');

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

--
-- Dumping data for table `user_album`
--

INSERT INTO `user_album` (`user_album_id`, `user_id`, `album_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2022-01-12 14:12:57', '2022-01-12 21:12:57'),
(2, 1, 13, '2022-01-12 14:12:57', '2022-01-12 21:12:57');

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

--
-- Dumping data for table `user_artist`
--

INSERT INTO `user_artist` (`user_artist_id`, `user_id`, `artist_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '2022-01-12 14:08:19', '2022-01-12 21:08:19'),
(2, 1, 14, '2022-01-12 14:08:19', '2022-01-12 21:08:19'),
(3, 1, 3, '2022-01-12 14:08:30', '2022-01-12 21:08:30'),
(4, 1, 12, '2022-01-12 14:08:30', '2022-01-12 21:08:30'),
(5, 1, 18, '2022-01-12 14:08:43', '2022-01-12 21:08:43'),
(6, 1, 5, '2022-01-12 14:08:43', '2022-01-12 21:08:43');

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

--
-- Dumping data for table `user_playlist`
--

INSERT INTO `user_playlist` (`user_playlist_id`, `user_id`, `playlist_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, '2022-01-12 14:07:48', '2022-01-12 21:07:48'),
(2, 1, 7, '2022-01-12 14:07:48', '2022-01-12 21:07:48'),
(3, 1, 6, '2022-01-12 14:08:02', '2022-01-12 21:08:02'),
(4, 1, 4, '2022-01-12 14:08:02', '2022-01-12 21:08:02');

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
-- Dumping data for table `user_song`
--

INSERT INTO `user_song` (`user_song_id`, `user_id`, `song_id`, `created_at`, `updated_at`) VALUES
(1, 1, 58, '2022-01-12 14:07:17', '2022-01-12 21:07:17'),
(2, 1, 4, '2022-01-12 14:07:17', '2022-01-12 21:07:17'),
(3, 1, 6, '2022-01-12 14:07:30', '2022-01-12 21:07:30'),
(4, 1, 12, '2022-01-12 14:07:30', '2022-01-12 21:07:30');

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
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `artist_album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `artist_song`
--
ALTER TABLE `artist_song`
  MODIFY `artist_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `playlist_song`
--
ALTER TABLE `playlist_song`
  MODIFY `playlist_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `user_album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_artist`
--
ALTER TABLE `user_artist`
  MODIFY `user_artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_playlist`
--
ALTER TABLE `user_playlist`
  MODIFY `user_playlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_song`
--
ALTER TABLE `user_song`
  MODIFY `user_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
