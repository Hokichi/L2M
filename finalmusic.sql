-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 04:17 AM
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
-- Database: `finalmusic`
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
(22, 'Khánh Ly', NULL, '~/img/artist/khanhly225154137.jpg', '2022-01-05 19:51:54', '2022-01-06 02:51:54'),
(23, 'Yoo Mi Re', NULL, '~/img/defaultImg.png', '2022-01-13 01:29:49', '2022-01-13 08:29:49');

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
(104, 100, 22, '2022-01-05 20:23:09', '2022-01-06 03:23:09'),
(105, 102, 23, '2022-01-13 01:31:15', '2022-01-13 08:31:15');

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
(1, 'Ngày tết quê em', '~/img/album/xuanmaithieunhi224644185.jpg', '~/audio/Ngay Tet Que Em - Xuan Mai.mp3', '05:40', 1, 14, NULL, '[DK:]\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet den trong tim moi nguoi.\r\n\r\nMung ngay Tet tren khap que toi\r\nNgan hoa thom khoa sac xinh tuoi\r\nDan em tho khoe ao moi\r\nChay tung tang vui phao hoa\r\nMung ngay Tet tren khap que toi\r\nNguoi ra Trung, ra Bac, vo Nam\r\nDu di dau ai cung nho\r\nVe chung vui ben gia dinh.\r\n\r\n[DK:]\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet den trong tim moi nguoi.\r\n\r\nMung ngay Tet pho xa dong vui\r\nNguoi di tham, di vieng, di choi\r\nNguoi lo di mua sam Tet\r\nNguoi dang huong di le chua\r\nMung ngay Tet ta chuc cho nhau\r\nMot nam them sung tuc an vui\r\nNguoi nong dan them lua thoc\r\nNguoi thuong gia mau phat tai.\r\n\r\n[DK:]\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet Tet Tet Tet den roi\r\nTet den trong tim moi nguoi.', 2003, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:16:38'),
(2, 'Mùa Xuân Đến Rồi', '~/img/album/xuanmaithieunhi224644185.jpg', '~/audio/Mua Xuan Den Roi - Xuan Mai.mp3', '05:30', 1, 14, NULL, 'Sang hom nay troi da nang len roi\r\nCam tay nhau chung ta ra vuon choi\r\nNgam buom xinh dua tren canh hoa hong\r\nMua xuan toi hat ca reo vui mung.', 2003, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:02:15'),
(3, 'Thắng Cảnh Việt Nam', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FThang%20Canh%20Viet%20Nam%20-%20Xuan%20Mai.mp3?alt=media&token=a8fa6c1d-cd63-41ae-8e21-df062848817f', '03:25', 1, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 17:19:27'),
(4, '18 Vị La Hán', '~/img/album/xuanmaithieunhi224644185.jpg', '~/audio/18 Vi La Han - Xuan Mai.mp3', '04:01', 1, 14, NULL, NULL, 2003, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:20:39'),
(5, 'Đi Học', '~/img/album/xuanmaithieunhi224644185.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDi%20Hoc%20-%20Xuan%20Mai.mp3?alt=media&token=59a59f17-3c98-44f8-a87e-287f7710a149', '04:03', 1, 14, NULL, NULL, 2003, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 14:28:59'),
(6, 'Gà trống và mèo con', '~/img/album/xuanmaithieunhi224644185.jpg', '~/audio/Ga Trong Meo Con Cun Con - Xuan Mai.mp3', '03:27', 1, 14, NULL, 'Nha em co con ga trong \r\nMeo con va cun con Ga trong gay o o o \r\nMeo con luon rinh bat chuot \r\nCun con cham canh gac nha. \r\n\r\nNha em co con ga trong \r\nMeo con va cun con \r\nGa trong gay o o o \r\nMeo con luon rinh bat chuot \r\nCun con cham canh gac nha.', 2003, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:48:20'),
(7, 'Cô giáo', '~/img/album/xuanmaithieunhi224644185.jpg', '~/audio/Co Giao - Xuan Mai.mp3', '05:33', 1, 14, NULL, 'Me cua em o truong la co giao men thuong \r\nCo yeu em vo han, day do em ngay thang \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong. \r\n\r\nDay tung cau, tung loi \r\nTung net but, dang di \r\nMong cho em nen nguoi \r\nThanh chau ngoan cua Bac \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong. \r\n\r\nMe cua em o truong la co giao men thuong \r\nCo yeu em vo han, day do em ngay thang \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong. \r\n\r\nDay tung cau, tung loi \r\nTung net but, dang di \r\nMong cho em nen nguoi \r\nThanh chau ngoan cua Bac \r\nEm yeu biet bao nhieu me cua em o truong \r\nMe cua em o truong la co giao men thuong \r\nMe cua em o truong la co giao men thuong.', 2003, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:36:02'),
(8, 'Ai thương con nhiều hơn', '~/img/album/xuanmaithieunhi224644185.jpg', '~/audio/Ai Thuong Con Nhieu Hon - Xuan Mai.mp3', '02:48', 1, 14, NULL, 'Ba voi me deu thuong con\r\nNhung khong biet ai thuong con nhieu hon\r\nCon nghi hoai ma khong ra\r\nHoi bac gau, bup be cung lac dau.\r\n\r\nBa thuong con nhung ba khong noi\r\nMe yeu con me khong giau mot loi\r\nKho qua di thoi kho qua di thoi\r\nA con biet roi\r\nBa voi me deu thuong con bang nhau.', 2004, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:21:58'),
(9, 'Bé Chúc Tết', '~/img/album/xuanmai224658907.jpg', '~/audio/Be Chuc Tet - Xuan Mai.mp3', '03:05', 2, 14, NULL, 'Tet den roi! Vui that vui\r\nEm mac ao moi di chuc tet ho hang\r\nEm chuc ong ba song lau that lau\r\nEm chuc cha me manh khoe luon.\r\n\r\n[Rap:]\r\nChau chuc bac chuc di an khang va thinh vuong\r\nChau chuc co chuc chu nam nay that phat tai\r\nEm chuc anh chuc chi cham ngoan va hoc gioi\r\nVa cho ca nha that manh khoe, that yen vui!', 2004, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:32:35'),
(10, '36 Phố Phường', '~/img/album/xuanmai224658907.jpg', '~/audio/36 Pho Phuong - Xuan Mai.mp3', '05:05', 2, 14, NULL, NULL, 2003, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:21:29'),
(11, 'Cơn Mưa Ngang Qua', '~/img/album/mtp224711903.jpg', '~/audio/Con Mua Ngang Qua - Son Tung M-TP.mp3', '04:48', 3, 1, NULL, '[Intro:]\r\nLadykillah uh\r\nCan you feel me uh\r\nYoungpilots uh ok\r\nEh eh eh\r\nCon mua ngang qua\r\nCon mua di ngang qua\r\nDung lam roi them, them, them, nhieu giot le uh...\r\n\r\n1. Con dau day bao cau ca anh tang em\r\nTinh yeu em mang cuon lap di bao nhieu cau ca\r\nVa con lai day, doi moi dau thuong trong man dem\r\nPhai le loi, gong minh buoc qua niem dau khi em roi xa.\r\n\r\nCon mua roi lai them, lai them, lai them\r\nXe di khong gian ngap tran nu cuoi\r\nNhin lai noi day, bao ki niem gio chim xuong duoi ho sau \r\nVi em chinh em da doi thay\r\nVa doi ban tay am em,ngay nao con lai giu\r\nVi em, vi em...\r\n\r\n[DK:]\r\nVi em da xa roi,tinh anh chim trong man dem\r\nLa vi em da quen roi,tinh anh chi nhu giac mo\r\nEm buoc di roi. Oi bao con mua\r\nEm buoc di roi. Xin hay xua tan di em,bong dang hinh em\r\nEm da mai roi xa.\r\n\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh ma anh trao em\r\nThoi thoi em di di da het roi\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh em quen quen quen.\r\n\r\n2. Con mua ngang qua mang em di xa\r\nCon mua ngang qua khien em nhat nhoa\r\nChang mot loi chao nguoi voi roi bo di khong chia li \r\nCho con tim anh them bao yeu mem.\r\n\r\nCon mua ngang qua cuon di bao yeu thuong\r\nCon mua ngang qua khien con tim mat phuong huong\r\nCon mua kia nang hat,oi mua them nang hat\r\nEm da roi xa doi ban tay trong con tim cua anh.\r\n\r\nBuong loi ban tay em di, em di roi xa ben toi nguoi oi\r\nVa buong loi giac mo em cho, em cho con tim toi dau biet may\r\nThoi cung da den hoi ket that roi ma nguoi\r\nThoi cung da den hoi ket, dung nhin lam gi\r\nAnh se quen di mot ai, ai, ai, va roi lam ngo, ngo, ngo, uh.\r\n\r\n[Coda:]\r\nVa roi em di qua buoc qua\r\nO lai chon day voi bao u buon\r\nDe roi thang troi qua, roi nam troi qua, thoang qua oh...\r\n\r\nNu cuoi em dang o dau,nguoi oi O dau\r\nVa bo moi em dang o dau, anh tim\r\nLuc tim ma khong thay nu cuoi em\r\nNguoi hay noi tra loi di\r\nVi sao em di di quen di bao nhieu giac mo ben anh xua kia.\r\n\r\nCon mua can roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi\r\nCon mua can roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi\r\nCon con mua van roi roi roi.\r\n\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh ma anh trao em\r\nThoi thoi em di di da het roi\r\nMy girl, em quen di bao nhieu\r\nMy girl, em quen di bao lau\r\nMy girl, em quen di cuoc tinh em quen quen quen.', 2017, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:36:23'),
(12, 'Nắng Ấm Xa Dần', '~/img/album/mtp224711903.jpg', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNang%20Am%20Xa%20Dan%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=d3aa7ff6-ea61-403f-b5af-9504b19e0f31', '03:08', 3, 1, NULL, 'Nang am xa dan \r\nChuuuu?\r\nChang phai anh dau\r\nChuuuu?\r\nC phai anh dau?!\r\n\r\nNang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan bo roi,de lai nhung giac mo (giu lai di, giu lai di)\r\nNang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan, xa dan theo nhung tieng cuoi.\r\n(Hay mang di giup nhung noi buon)\r\n\r\n1. Theo thoi gian nhung hat mua nhu nang them\r\nXoa het thuong yeu man nong ngay nao giua chung ta\r\nAnh luc tim van cu mai luc tim\r\nGio ban tay co kim nen nhung cam xuc\r\nVui minh vao dem den anh chang tim thay loi ra.\r\n\r\nSau lung la tieng noi yeu anh, chang roi xa anh\r\nTruoc mat anh dieu day, no doi tra, tai sao nguoi voi quen mau?\r\nLa vi em\r\nBai ca anh viet se khong duoc tron ven dau em\r\nBuoc di\r\nEm yeu mot ai that roi mai chang la anh dau.\r\n\r\n[Chorus:]\r\nVay thi nguoi cu buoc di xa noi nay\r\nAnh binh minh se khong con noi day\r\nBuoc di xa noi nay\r\nNhung loi yeu se khong con noi day\r\nPhai tu dung len ma thoi, che nhe di nhung niem dau va noi buon\r\nXung quanh anh gio day co don minh anh om giac mo\r\nNhin em buoc ra di xa dan.\r\n\r\nEhhhhhh\r\nEm buoc ra di xa dan\r\nEhhhhh?\r\nNhin em buoc ra di xa dan\r\nEhhhhh?.\r\nNhin em buoc ra di xa dan.\r\n\r\n2. Den roi lai di\r\nCu voi vang di\r\nTrao cho anh bao yeu thuong roi em lai bo di\r\nGieo trong anh bao nhieu niem dau, roi em mau\r\nRoi bo anh, xa anh, quay mat lang le quen mau.\r\n\r\nUhhh..\r\nEm yeu quen that roi\r\nUhhh..\r\nChang mot loi chia li, quen roi, em yeu quen roi, quen roi.\r\n\r\n[Chorus x2]\r\n\r\nEhhhhhh\r\nNhin em buoc ra di xa dan\r\nEhhhhhh\r\nNhin em, nhin em buoc di\r\nEhhhhhh\r\nNhin em buoc ra di xa dan\r\nEhhhhhh\r\nNhin em buoc ra di xa dan.\r\n\r\n* Nang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan bo roi,de lai nhung giac mo (giu lai di, giu lai di)\r\nNang am xa dan roi\r\nNang am xa dan roi\r\nNang am xa dan, xa dan theo nhung tieng cuoi.\r\n(Hay mang di giup nhung noi buon)', 2013, NULL, 'Link', 1, '0000-00-00 00:00:00', '2022-01-13 00:42:04'),
(13, 'Em Của Ngày Hôm Qua', '~/img/album/mtp224711903.jpg', '~/audio/Em Cua Ngay Hom Qua - Son Tung M-TP.mp3', '04:23', 3, 1, NULL, 'Eh eh eh... \r\nEm dang noi nao... \r\nCan you feel me. \r\nCan you feel me. \r\nEh eh eh \r\nM-tp \r\n\r\nLieu rang chia tay trong em co quen duoc cau ca\r\nTinh yeu khi xua em trao cho anh dau nao phoi pha \r\nDung lua doi con tim anh, em se khong buong tay anh duoc dau ma. (Em khong the buoc di) \r\nGat nuoc mat yeu duoi do cu quay lai noi anh \r\nEm biet rang con mua qua dau co che lap duoc nu cuoi dau thuong kia\r\nNuoc mat do van roi vi em..Oh baby..No baby.. \r\n\r\nDung nhin anh nua, doi mat ngay xua gio o dau\r\nEm con la em\r\nEm da khac roi\r\nEm muon quay lung quen het di (That vay sao?) \r\nTinh yeu trong em gio toan gia doi\r\nAnh khong muon vui minh trong mo\r\nAnh khong muon di tim giac mo ngay hom nao. \r\n\r\nDung voi vang em hay la em cua ngay hom qua \r\nUhhhhhhh.. \r\nXin hay la em cua ngay hom qua\r\nUhhhhhhh.. \r\nDung bo mac anh mot minh noi day\r\nUhhhhhhh.. \r\nDung lai va xoa nhe di ki uc \r\nUhhhhhhh.. \r\nChim dam vao nhung loi ca diu em thuo nao. \r\n\r\nMua dang roi\r\nDoi tay buong loi\r\nMinh anh ngoi day tim lai nhung khoang khong duong nhu choi voi\r\nThat ngu ngoc\r\nVu vo\r\nLang thang tren con duong tim lai giac mo \r\nDuong nhu da qua xa\r\nVa em khong con thiet tha \r\nNam lay doi tay anh muon giu em o lai \r\nNeu cu tiep tuc ca hai se phai kho dau \r\nDung co to ra manh me \r\nDo dau phai la em\r\nVay di... TAM BIET EM..! \r\n\r\nNham mat lai hay nghi di \r\nLau nay em song cho minh em ma\r\nPhai khong em hoi nguoi...??? \r\nTim lai thoi gian cua rieng doi ta \r\nNhung sao trong anh da qua tuyet vong \r\nSu that dang bua vay noi anh \r\nForget baby...!!!!! \r\n\r\nDung nhin anh nua, doi mat ngay xua gio o dau??? \r\nEm con la em? \r\nEm da khac roi\r\nEm muon quay lung quen het di\r\nTinh yeu trong em gio toan gia doi \r\nAnh khong muon vui minh trong mo \r\nAnh khong muon di tim giac mo ngay hom nao. \r\n\r\nDung voi vang em hay la em cua ngay hom qua. \r\nUhhhhhhh.. \r\nXin hay la em cua ngay hom qua. \r\nUhhhhhhh.. \r\nDung bo mac anh mot minh noi day. \r\nUhhhhhhh.. \r\nDung lai va xoa nhe di ki uc. \r\nUhhhhhhh.. \r\n\r\nEm mang nhung cam xuc theo nguoi mat roi ...! \r\n\r\nEm mang tieng cuoi\r\nEm mang hanh phuc di roi xa \r\nXung quanh chi con moi anh va nhung noi dau\r\nHay xoa sach het di...Dung van vuong..\r\nVi em\r\nDo em \r\nChinh em\r\nHay mang het di...... \r\n\r\nNguoi cu voi vang \r\nNguoi cu voi vang\r\nXin hay la em cua ngay hom qua \r\nNguoi buoc xa roi\r\nVa nguoi da buoc xa roi. \r\n\r\nDung voi vang em hay la em cua ngay hom qua \r\nUhhhhhhh.. \r\nXin hay la em cua ngay hom qua \r\nUhhhhhhh.. \r\nDung bo mac anh mot minh noi day \r\nUhhhhhhh.. \r\nDung lai va xoa nhe di ki uc \r\nUhhhhhhh.. \r\n\r\nDung voi vang em hay la em cua ngay hom qua \r\nEm da quen chua? \r\nXin hay la em cua ngay hom qua \r\nAnh nghi nhung dong cam xuc trong em gio da het that roi day!! \r\nDung bo mac anh mot minh noi day \r\nChang con gi ca\r\nDung lai va xoa nhe di ki uc \r\nEm hay la em cua ngay hom qua di ... Xin em day ..!', 2013, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:46:34'),
(14, 'Ấn Nút Nhớ Thả Giấc Mơ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAn%20Nut%20Nho%20Tha%20Giac%20Mo%20-%20Son%20Tung%20M-TP.mp3?alt=media&token=77e8bc82-1839-4d8e-ad16-7ff78368ff44', '04:04', 3, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:09:47', '2022-01-11 23:17:55'),
(15, 'Như Ngày Hôm Qua', '~/img/album/mtp224711903.jpg', '~/audio/Nhu Ngay Hom Qua - Son Tung M-TP.mp3', '03:43', 3, 1, NULL, 'Cuoi con duong la bau troi xanh am em\r\nBen toi moi khi buon, lang le xoa tan au lo\r\nGat giot nuoc mat thang tram\r\nNiem tin mai luon dong day\r\nBai ca hat tron dem nay danh tang ban toi.\r\n\r\nLuon doi theo tung nu cuoi lang im phia sau\r\nBen toi mai khong roi, mac nang gat hay mua ngau\r\nDu thoi gian co xoa phai nhoa\r\nLac troi nhung ki uc\r\nBan toi van the khong he doi thay trai tim.\r\n\r\n[DK:]\r\nVay tay xin chao, nghen ngao gap lai ngay sau\r\nThuong nho nhau long ngap ngung khong muon roi\r\nVo vai xin binh an o phia truoc, cho du nhieu chong gai\r\nKien cuong len, roi moi chuyen cung se vuot qua.\r\n\r\nDau hai phuong troi du nghin trung, du xa xoi\r\nDoi mat nhin huong toi cuoi chan troi\r\nCam on ban nguoi luon sat ben, am tham doi nhin theo\r\nTay nam chat, gat dau cuoi, tim khac ghi\r\nMai nhu ngay hom qua.', 2017, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:15:23'),
(16, 'Một Năm Mới Bình An', '~/img/album/mtp224711903.jpg', '~/audio/Mot Nam Moi Binh An - Son Tung M-TP.mp3', '03:43', 3, 1, NULL, 'Xuan mang tinh yeu muon nha\r\nMang loi ca chan hoa\r\nYeu thuong hanh phuc sum vay \r\nTet nam nay, nong am dong day\r\nMua roi diu em gio mang huong ve\r\nDap diu trong canh chim xa voi\r\nTung nhip giay qua, con tim sao boi hoi.\r\n\r\nXuan sang canh la dam choi\r\nBao buon vui qua roi\r\nDua con ve voi yen binh, voi gia dinh nang nghia an tinh\r\nCay mai dao khoe sac hoa them mau\r\nNhe nhang trong nang xuan tuoi hong\r\nVe nha nhanh thoi, ba me dang ngong trong.\r\n\r\nBan be vui khoe ao moi, xuan toi, phoi phoi\r\nNhung bao li xi ngay ngan, may man, tuoi tan\r\nBanh chung thom lung ngat ngay xuan ve ngap tran loc muon noi\r\nNang ban mai he moi cuoi, diu dang xuan den.\r\n\r\n[DK:]\r\nE o o o o\r\nCo chu chim non mung vui hot sau nha\r\nE o o o o\r\nCo tieng em tho mung vui boc bao qua\r\nE o o o o\r\nCo gio mang xuan mung vui chuc ong ba\r\nCuoi mai thoi, mot nam moi binh an, nam moi binh an.\r\n\r\n[Rap:]\r\nOk. Ve nha voi me voi ba\r\nQuanh bep hong am ap vui hat ca\r\nNang mai ron rang e ap thuot tha\r\nPhao hoa bao hieu mot nam cu da qua\r\nNam muoi sac chua dung bao hy vong binh yen ve muon nha\r\nTet doan vien sum vay se chia tung mon qua\r\nRon rang mung ngay xuan\r\nHoa nhip cung ngay xuan.\r\n\r\n[Coda:]\r\nNao cung dang tay hoa vao may mung tet nay mua xuan toi\r\nMung tet sum vay, nu cuoi mai dong day\r\nMung tet nam nay, ron rang phao giao thua\r\nMung tet sum vay, nu cuoi mai dong day.', 2017, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:02:59'),
(17, 'Boombayah', '~/img/album/squareone220003781.jpg', '~/audio/Boombayah - BlackPink.mp3', '04:01', 4, 1, NULL, '[Intro: Jennie]\r\n(Hot) BlackPink in your area\r\n(Hot) BlackPink in your area\r\n\r\n[Verse 1: Lisa]\r\nBeen a bad girl, I know I am\r\nAnd I\'m so hot I need a fan\r\nI don\'t want a boy I need a man\r\n\r\n[Verse 2: Jennie]\r\nClick clack, botta bing, botta boom\r\nAll eyes on me when I step in the room\r\nIf you don\'t know, better ask somebody\r\nWatch your man hit the deck like pang pang pang\r\nParang pa patta patta pang pang pang\r\nRaise your glass to the roof like jjang jjang jjang\r\nHands up, lit with a bottle full of Henny\r\nWatch your mouth when you speak my name\r\nJennie\r\n\r\n[Pre-Chorus 1: Jisoo & Lisa]\r\nHikari ga odoru youni with me\r\nBlack to the Pink Itsu demo tokubetsu (Oh yes)\r\nMiraretemo I wanna dance\r\nLike ddara-dara dan ddan\r\nDdara-dara dan ddan\r\nDoo doo doo bow\r\n\r\n[Pre-Chorus 2: Rose & JiSoo]\r\nKonya agari makurou wow ah\r\nDon\'t stop kono koi no youkai ah\r\nYabai, hora sou, anata to odoritai no?\r\n\r\n[Chorus]\r\nBOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah yah\r\nBOOM-BOOMBAH BOOM-BOOMBAH (oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah (oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah\r\nBOOMBAYAH BOOMBAYAH!\r\n(Hot) Black Pink in your area~\r\n\r\n[Verse 3: Lisa]\r\nImma take what\'s mine so get out my way\r\nAin\'t got time, I go hard and slay\r\nMiddle finger up F you, pay me\r\n90\'s baby, I pump up the jam\r\nWhip it up whip it up\r\nBaby that lambo\r\nDroppin the chopper I be too hot too handle\r\nSavage, I\'m killing them, stack up my millions\r\nStopping my paper, go Brrrr\r\nRambo\r\n\r\n[Pre-Chorus: JiSoo, Jennie)]\r\nAtashi no koshi ni te o atete\r\nFront to my back\r\nMassugu no sutairu Oh yes\r\nShizen de I know you wanna touch\r\nLike touch, touch, touch\r\nDoo doo doo bow\r\n\r\n[Pre-Chorus 2: Rose; JiSoo]\r\nKon-ya agari makurou wow ah\r\nDon\'t Stop kono koi no youkai\r\nYabai, ochisou, anata to odoritai no?\r\n\r\n[Chorus]\r\nBOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah yah\r\nBOOM-BOOMBAH BOOM-BOOMBAH (oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah (oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah\r\nBOOMBAYAH BOOMBAYAH!\r\n(Hot) Black Pink in your area~\r\n\r\n[Outro: All]\r\nKonya mi o yudane te odoro u\r\nAno sora koe doko made iko u\r\nG?ru nante mushi toba sudake yo\r\nLet\'s go, let\'s go\r\nKonya mi o yudane te odoro u\r\nAno sora koe doko made iko u\r\nG?ru nante mushi toba sudake yo\r\nLet\'s go, let\'s go\r\n\r\nTranslation\r\n\r\n[Intro: Jennie]\r\n(Hot) BlackPink in your area\r\n(Hot) BlackPink in your area\r\n\r\n[Verse 1: Lisa]\r\nBeen a bad girl, I know I am\r\nAnd I\'m so hot I need a fan\r\nI don\'t want a boy I need a man\r\n\r\n[Verse 2: Jennie]\r\nClick clack, botta bing, botta boom\r\nAll eyes on me when I step in the room\r\nIf you don\'t know, better ask somebody\r\nWatch your man hit the deck like pang pang pang\r\nParang pa patta patta pang pang pang\r\nRaise your glass to the roof like jjang jjang jjang\r\nHands up, lit with a bottle full of Henny\r\nWatch your mouth when you speak my name\r\nJennie\r\n\r\n[Pre-Chorus 1: Jisoo & Lisa]\r\nThe light that dances with me\r\nBlack to the Pink, always a special time (Oh yes)\r\nEven if it\'s seen, I wanna dance\r\nLike ddara-dara dan ddan\r\nDdara-dara dan ddan\r\nDoo doo doo bow\r\n\r\n[Pre-Chorus 2: Rose & JiSoo]\r\nLet\'s go home all night\r\nDon\'t stop, like this love\r\nA demon of this love\r\nIt\'s risky, yeah it is, will I dance with you?\r\n\r\n[Chorus]\r\nBOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah yah\r\nBOOM-BOOMBAH BOOM-BOOMBAH (Oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah (Oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah\r\nBOOMBAYAH BOOMBAYAH!\r\n(Hot) Black Pink in your area~\r\n\r\n[Verse 3: Lisa]\r\nImma take what\'s mine so get out my way\r\nAin\'t got time, I go hard and slay\r\nMiddle finger up F you, pay me\r\n90\'s baby, I pump up the jam\r\nWhip it up whip it up\r\nBaby that lambo\r\nDroppin the chopper I be too hot too handle\r\nSavage, I\'m killing them, stack up my millions\r\nStopping my paper, go Brrrr\r\nRambo\r\n\r\n[Pre-Chorus: JiSoo, Jennie)]\r\nHolding my hand on my back\r\nFront to my back\r\nStraight up style, Oh yes\r\nNaturally, I know you wanna touch\r\nLike touch, touch, touch\r\nDoo doo doo bow\r\n\r\n[Pre-Chorus 2: Rose; JiSoo]\r\nLet\'s go home all night\r\nDon\'t stop, I\'m afraid to fall off\r\nA demon of this love\r\nIt\'s risky, yeah it is, will I dance with you?\r\n\r\n[Chorus]\r\nBOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah BOOMBAYAH\r\nYah yah yah yah\r\nBOOM-BOOMBAH BOOM-BOOMBAH (Oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah (Oppa!)\r\nYah yah yah yah yah yah yah yah yah yah\r\nYah yah yah yah yah yah yah yah yah yah\r\nBOOMBAYAH BOOMBAYAH!\r\n(Hot) Black Pink in your area~\r\n\r\n[Outro: All]\r\nLet\'s dance with yourself tonight\r\nLet\'s go over that sky, where shall we go?\r\nIgnore the goal It\'s only for you\r\nLet\'s go Let\'s go\r\nLet\'s dance with yourself tonight\r\nLet\'s go over that sky, where shall we go?\r\nIgnore the goal It\'s only for you\r\nLet\'s go Let\'s go', 2017, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:31:08'),
(18, 'Whistle', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWhistle%20-%20BlackPink.mp3?alt=media&token=7c8699ee-a6b1-4f99-bee1-730a32549b37', '03:22', 4, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:11:44', '2022-01-12 21:30:54'),
(19, 'Strangers By Nature', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FStrangers%20By%20Nature%20-%20Adele.mp3?alt=media&token=e9739c4e-bccc-47e9-a5ba-c4e597ff3e9e', '', 5, 1, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:12:19', '2022-01-12 17:18:51'),
(20, 'Easy On Me', '~/img/album/3d220024331.jpg', '~/audio/Easy On Me - Adele.mp3', '3:25', 5, 1, NULL, NULL, 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:42:59'),
(21, 'Không Còn Nợ Nhau', '~/img/album/tinhkhonnguoi220401372.jpg', '~/audio/Khong Con No Nhau - Le Quyen.mp3', '04:11', 6, 2, NULL, 'Chỉ là không thể ở bên cạnh nữa rồi\r\nChỉ là không thể giữ nhau được nữa rồi\r\nChỉ là con tim đã không còn nghe lý trí\r\nChỉ vì, vì chính anh.\r\n\r\nNặng lòng nhau chi trách nhau chỉ thêm buồn\r\nNhìn lại thời gian có nhau được bao ngày\r\nThà là chia tay để cho cả hai được giải thoát\r\nĐể chúng ta không còn nợ nhau.\r\n\r\nNhìn lại sau bấy nhiêu năm em được gì?\r\nTình yêu nay dành hết cho anh, em còn gì?\r\nDành cho anh cả tuổi thanh xuân\r\nChỉ để yêu một người vô tâm.\r\n\r\n[ĐK:]\r\nTrái tim này đã, đã chết theo ngày tháng\r\nChết theo thời gian in hằn cho quá khứ\r\nGiấc mơ này đã, đã vỡ tan thật rồi\r\nĐể em rồi xa vậy sẽ là tốt hơn.\r\n\r\nEm sẽ tìm quên trong những đêm lạnh giá\r\nEm sẽ tìm ra cho mình một lối thoát\r\nChính em sẽ đau se khóc trong vô vọng\r\nChính em sẽ xoá ký ức của ngày xưa.', 2019, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:54:42'),
(22, 'Tình Khôn Nguôi', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTinh%20Khon%20Nguoi%20-%20Le%20Quyen.mp3?alt=media&token=9398e7bb-03b3-4acb-ae67-80a722b22157', '04:57', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:16:45', '2022-01-12 17:20:15'),
(23, 'Yêu Anh Hơn Chính Em', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FYeu%20Anh%20Hon%20Chinh%20Em%20-%20Le%20Quyen.mp3?alt=media&token=07fc915d-b230-45b9-86c9-cd8b091bbf98', '04:42', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:17:05', '2022-01-12 21:31:13'),
(24, 'Vì Em Còn Thương', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FVi%20Em%20Con%20Thuong%20-%20Le%20Quyen.mp3?alt=media&token=84ccd3eb-abb3-4a54-808a-9d5a3116a648', '04:40', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:17:59', '2022-01-12 17:23:49'),
(25, 'Yêu Thương Một Đời', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FYeu%20Thuong%20Mot%20Doi%20-%20Le%20Quyen.mp3?alt=media&token=9cf32fc0-755b-4d33-86df-e146b4855350', '04:18', 6, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:18:19', '2022-01-12 21:31:27'),
(26, 'Giận Thì Giận Mà Thương Thì Thương', '~/img/album/tinhkhonnguoi220401372.jpg', '~/audio/Gian Thi Gian Ma Thuong Thi Thuong - Le.mp3', '04:55', 6, 2, NULL, 'Người sao cứ khiến yêu thương mệt nhoài\r\nKhiến con tim u hoài\r\nĐúng hay sai, lỗi do ai\r\nChẳng phải điều quan trọng nhất.\r\n\r\nTừng giọt nước mắt tuôn rơi thành dòng\r\nMuốn anh ôm vào lòng\r\nVì em yếu đuối\r\nChỉ mong được anh vỗ về.\r\n\r\nNgười ta nói cứ sau những giận hờn\r\nRồi ta sẽ yêu nhau nhiều hơn\r\nĐoạn đường hạnh phúc\r\nCòn lắm gập ghềnh phía trước.\r\n\r\n[ĐK:]\r\nGiận thì giận mà thương thì thương\r\nGiận thì giận mà thương càng thương\r\nChẳng cần xin lỗi, chỉ cần anh thôi\r\nHãy đến bên em người ơi.\r\n\r\nGiận thì giận thương thì thương\r\nGiận thì giận mà thương càng thương\r\nĐến tận cùng của nỗi nhớ\r\nRồi chỉ có mỗi em yêu anh nhiều hơn.\r\n\r\n[Coda:]\r\nChẳng có lý do nào tồn tại song song\r\nHai trái tim lạc nhịp\r\nVì khi đã yêu nhau\r\nXin hãy xem nhau là người quan trọng nhất.', 2019, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:47:59'),
(27, 'Đôi Mắt Người Xưa', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDoi%20Mat%20Nguoi%20Xua%20-%20Quang%20Le.mp3?alt=media&token=14d5fc53-b58b-409b-98d1-c8b8d6a6dd0c', '04:59', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:19:27', '2022-01-11 23:53:56'),
(28, 'Lời Tạ Từ', '~/img/album/doimatnguoixua220420013.jpg', '~/audio/Loi Ta Tu - Quang Le.mp3', '05:38', 7, 2, NULL, NULL, 2010, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:59:25'),
(29, 'Trộm nhìn nhau', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTrom%20Nhin%20Nhau%20-%20Quang%20Le.mp3?alt=media&token=d7ea7f31-6ddf-4fa5-9743-453be4cb1b8e', '05:38', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:20:14', '2022-01-12 17:21:31'),
(30, 'Áo Đẹp Nàng Dâu', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAo%20Dep%20Nang%20Dau%20-%20Quang%20Le_%20Mai%20Thien%20Va.mp3?alt=media&token=16ed1cff-e74c-4035-8ecc-55b0b1301849', '05:19', 7, 2, 0, '', 0000, 0, 'Link', 0, '2022-01-02 16:20:38', '2022-01-11 23:23:44'),
(31, 'Mang tiền về cho mẹ', '~/img/album/mangtienvechome220535388.jpg', '~/audio/Mang Tien Ve Cho Me - Den_ Nguyen Thao.mp3', NULL, 8, 3, NULL, '[Skit: Đen, Mẹ]\r\nAlo mẹ ạ? Tuần sau con về, mẹ có cần mua gì không ạ?\r\nThôi thôi! Không cần phải mua gì đâu! Nhà đủ hết rồi!\r\n\r\n[Intro: Đen]\r\nMang tiền về cho mẹ, mang tiền về cho mẹ\r\nMang tiền về cho mẹ, đừng mang ưu phiền về cho mẹ!\r\nMang tiền về cho mẹ, mang tiền về cho mẹ\r\nMang tiền về cho mẹ, đừng mang ưu phiền về cho mẹ!\r\n\r\n[Verse 1: Đen]\r\nNếu không có mẹ, con cũng chỉ là đồ bỏ mà thôi\r\nSẽ không có nề có nếp, dù đặt mình lên cái chõ đồ xôi\r\nCái máy tính mà con thu âm mấy bài đầu, mẹ đổi bằng nhiều ngày đổ mồ hôi (ướt nhòe)\r\nGiờ con đã đi làm và con kiếm tiền về, mẹ chỉ cần ngồi đó mà xơi (nước chè)\r\nÔi những ngày xám ngoét, gió liêu xiêu dáng mẹ gầy so\r\nCó khi mẹ ngất giữa đường vì cả ngày chẳng có gì no\r\nMẹ không dám ăn, không dám mặc, không dám tiêu cũng chỉ vì lo (lo cho con)\r\nGiờ con đeo túi tò te đi mua cho mẹ cái túi Dior\r\nTiếng nói đầu tiên là do ai dạy? (chính là mẹ)\r\nNét chữ đầu tiên là tay ai cầm? (chính là mẹ)\r\nSai lầm đầu tiên là nhờ ai sửa? (chính là mẹ)\r\nVấp ngã đầu đời là được ai nâng? (luôn là mẹ)\r\nBài hát hay nhất trần đời là lời mẹ ru giữa trưa nắng hè\r\nNhững ngày dài nhất trần đời là mẹ đi chợ xa chưa thấy về\r\nThức ăn ngon nhất trần đời là cơm bếp củi mẹ nấu xoong gang\r\nBước ra đời là ông này bà nọ, trở về nhà là một đứa con ngoan\r\nBước ra đời là ông này bà nọ, trở về nhà là một đứa con ngoan\r\n[Chorus: Nguyên Thảo]\r\nNhững đứa trẻ rồi sẽ đi xa nhà\r\nSẽ có rất nhiều hành trình qua trong đời\r\nMặc dù đời có lúc chẳng được như mong đợi\r\nRời xa mái nhà đừng hòng còn ai nuông chiều\r\nNhững đứa trẻ sẽ phải đi xa nhà\r\nSẽ phải nếm rất nhiều mặn, ngọt, cay, chua, đắng\r\n“Mẹ chỉ muốn chúng mày phải tự lo cho mình\r\nVề đây mà gầy là mẹ cho ăn đòn.”\r\n\r\n[Hook: Đen]\r\nMang tiền về cho mẹ (mẹ ơi), mang tiền về cho mẹ (mẹ ạ)\r\nMang tiền về cho mẹ, đừng mang ưu phiền về cho mẹ! (what?)\r\nMang tiền về cho mẹ (mẹ ơi), mang tiền về cho mẹ (mẹ ạ)\r\nMang tiền về cho mẹ, đừng mang ưu phiền về cho mẹ!\r\n\r\n[Verse 2: Đen]\r\nCon đã kiếm được tiền từ hình ảnh, kiếm được tiền từ âm thanh\r\nTất cả đều do cha sinh mẹ đẻ, dù không phải thế phiệt hay trâm anh\r\nNgười hâm mộ đợi con từ Đồng Khởi\r\nXếp hàng dài đến hết đường Ký Con\r\nXin chữ ký con\r\nCon rất quý họ, và cũng hy vọng là họ đều quý con\r\nTiền của con không có cần phải rửa\r\nNó cũng chỉ ám mùi mồ hôi\r\nMẹ yên tâm con là công dân tốt\r\nĐóng thuế đều và chỉ có đủ mà thôi\r\nNhạc con phiêu ở nhiều phương diện\r\nTiền con kiếm là tiền lương thiện\r\nĐem sức lực ra làm phương tiện\r\nSống phải đẹp như là hoa hậu\r\nDù không cần thiết được tặng vương miện\r\nCon trai giống mẹ nên là con hiền khô\r\nLao vào đời không làm mẹ thêm phiền lo\r\nBỏ qua dè bỉu, không cho cơm no\r\nMang về cho mẹ toàn tiền thơm tiền tho\r\nMẹ là mẹ của con, con là của mọi người\r\nLên sân khấu làm mọi người vui, về nhà làm cho mẹ cười\r\nVì thời gian nó thật là tàn khốc nên con thấy mình càng ngày càng non gan\r\nBao nhiêu tiền mua lại được một ngày mà con còn ngồi vừa lọt cái xoong gang?\r\nMuốn được nghe tiếng mẹ mắng mỗi ngày để con thấy mình còn chưa được khôn ngoan\r\nCon trai mẹ chỉ là người phục vụ nhưng muốn đời đối xử với mẹ như một bà hoàng\r\nNhư một bà hoàng\r\n[Chorus: Nguyên Thảo]\r\nNhững đứa trẻ rồi sẽ đi xa nhà\r\nSẽ có rất nhiều hành trình qua trong đời\r\nMặc dù đời có lúc chẳng được như mong đợi\r\nRời xa mái nhà đừng hòng còn ai nuông chiều\r\nNhững đứa trẻ sẽ phải đi xa nhà\r\nSẽ phải nếm rất nhiều mặn, ngọt, cay, chua, đắng\r\n“Mẹ chỉ muốn chúng mày phải tự lo cho mình\r\nVề đây mà gầy là mẹ cho ăn đòn.”\r\n\r\n[Bridge: Nguyên Thảo]\r\n\"Mấy đứa chúng mày liệu mà ăn cho nhiều\r\nĐừng ham chơi và chọn bạn mà chơi cho đúng\r\nNếu có gì gọi điện ngay cho mẹ\r\nChạy xe ra đường đừng rồ ga bốc đầu\r\nRa bên ngoài học điều hay mang về\r\nĐừng mang mất dạy, mày về đây tao đánh\r\nTiền đã khó kiếm rồi, tập xài cho tiết kiệm\r\nĐừng hút thuốc nhiều, mày lại như ba mày”\r\n\r\n~ Khúc hát ru của Nguyên Thảo ~\r\n\r\n[Verse 3: Đen]\r\nCon biết thời gian lạnh lùng và tàn khốc\r\nNó ám người ta từ da tới làn tóc\r\nKhông có ngoại lệ, cũng không có miễn trừ\r\nLà người quan sát không bao giờ có điểm mù\r\nMẹ bán lưng cho trời, bán mặt cho đất\r\nMẹ dạy đôi chân đừng dao động như con lắc\r\nNếu có nhiều tiền, con sản xuất son môi\r\nMàu cho các mẹ con đặt tên là “son sắt”\r\nGiờ không phải doanh nhân, con vẫn có kế toán\r\nĐể tiền của con không có đứa nào thó mất\r\nVì tay mẹ đã có, có quá nhiều vết chai\r\nNên con đưa tiền để mẹ cầm cho nó chắc\r\nChim thì có tổ, là con người thì chắc chắn phải có tông\r\nMuốn bay vào trời cao rộng, con nào không cần có lông?\r\nMang tiền về cho mẹ hiền, để mẹ may thêm đôi cánh\r\nMang buồn về cho mẹ phiền, sẽ gặp ngay thiên lôi đánh\r\nNhạc Rap đến từ Đông Nam Á (Việt Nam)\r\nMang lời mẹ bật cho bảy lục địa nghe (tiếng Việt)\r\nVâng lời mẹ, không gian trá\r\nXuất khẩu âm nhạc mang tiền về\r\n[Refrain: Đen]\r\nĐưa tiền cho mẹ, mẹ là tiền “vệ”\r\nĐừng làm điều xấu, sẽ thành tiền “lệ”\r\nLao động hăng say, hơn cả tiền “đề”\r\nCầm về tiền tốt, đừng có cầm về tiền “tệ”\r\nĐưa tiền cho mẹ, mẹ là tiền “vệ”\r\nĐừng làm điều xấu, sẽ thành tiền “lệ”\r\nLao động hăng say, hơn cả tiền “đề”\r\nCầm về tiền tốt, đừng có cầm về tiền “tệ”\r\nCũng may đã từng lênh đênh, để con biết yếu thì đừng ra gió\r\nCũng may là fan của Đen, họ chưa bao giờ từng la ó\r\nCũng may là tìm thấy đường, trong bao la muôn trùng xa đó\r\nVà cũng may là ba mẹ nghèo để cho con biết tiền làm ra khó\r\nCũng may đã từng lênh đênh, để con biết yếu thì đừng ra gió\r\nCũng may là fan của Đen, họ chưa bao giờ từng la ó\r\nCũng may là tìm thấy đường, trong bao la muôn trùng xa đó\r\nCũng may là ba mẹ nghèo để cho con biết tiền làm ra khó\r\n\r\n[Outro: Đen]\r\nMang tiền về cho mẹ (yeah, yeah, Đen Vâu), mang tiền về cho mẹ\r\nMang tiền về cho mẹ, đừng mang ưu phiền về cho mẹ! (Oh)\r\nMang tiền về cho mẹ (về cho mẹ), mang tiền về cho mẹ (về cho mẹ)\r\nMang tiền về cho mẹ, ba cần thì xin mẹ (haha yeah)', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:00:08'),
(32, 'Lối nhỏ', '~/img/album/showcuaden220639074.png', '~/audio/Loi Nho - Den_ Phuong Anh Dao.mp3', NULL, 9, 3, NULL, '[Verse 1: Đen]\r\nAy\r\nĐen Vâu\r\nEm vào đời bằng đại lộ còn anh vào đời bằng lối nhỏ\r\nAnh nhớ mình đã từng thổ lộ, anh nhớ rằng em đã chối bỏ\r\nAnh nhớ chuyến xe buổi tối đó, trên xe chỉ có một người ngồi\r\nAnh thấy thật buồn nhưng nhẹ nhõm, anh nhớ mình đã mỉm cười rồi\r\nAnh nghĩ anh cần cảm ơn em, vì những gì mà anh đã nếm trải\r\nKỉ niệm sẽ là thứ duy nhất, đi theo anh cả cuộc đời dài\r\nNếu không có gì để nhớ về, anh sợ lòng mình khô nứt nẻ\r\nHình dung em như là Nữ Oa, có thể vá tâm hồn này sứt mẻ\r\nAnh thường một mình, tìm đến nơi có nhiều cây cối (Yeah)\r\nNghĩ về những ngày tàn, đã trôi qua theo chiều tay với\r\nCũng chẳng nghĩ nhiều, anh không mong những điều may tới\r\nVài nỗi buồn đã cũ, sao bỗng nhiên giữa chiều nay mới (Ah)\r\nAnh vẫn thường nghe, thời \"Trống vắng\" hay là \"Kiếp ve sầu\"\r\nNhững giấc mộng non, như tán lá cây xanh biếc che đầu\r\nTình yêu thật ra đơn giản như là một cái bánh bao chay\r\nThắp lên lửa nhỏ, hơn là cứ đi tìm hái ánh sao bay.\r\n\r\n[Chorus : Phương Anh Đào]\r\nĐường xa quá, lắm lúc thấy mình lẻ loi\r\nNgười đã đến, vui đấy, nhưng rồi cũng đi\r\nChạm lên trái tim thấy cơn mơ còn cháy nồng\r\nNhiều đêm trắng xoá bay, lòng như có gió đầu mùa.\r\n\r\n[Verse 2 : Đen]\r\nEm vào đời từ cao tầng còn anh vào đời từ mái lá\r\nThế nên những điều anh mong cầu, không bao giờ là thái quá\r\nNhững thứ anh làm thường đơn giản, nên không hay được đánh giá cao\r\nVài người thường ăn hải sản, rồi lại chê bai mùi cá ao\r\nGiống như con người anh, dễ nắm bắt và dễ chịu\r\nBài hát này không sâu xa, rất dễ nghe và dễ hiểu\r\nAnh không có nhiều lưu ý, anh cảm thấy mình dễ chiều\r\nĐây không phải là nhạc buồn, đây thứ nhạc để chill.\r\n\r\nEm vào đời bằng náo nhiệt\r\nAnh vào đời bằng âm thầm\r\nEm đi tìm nốt thăng hoa\r\nLòng anh lại là âm trầm\r\nEm đi tìm lời phố thị\r\nAnh đi tìm tiếng ghi-ta\r\nEm đưa anh vào trong náo nhiệt\r\nAnh lắc đầu và đi ra\r\nEm vào đời bằng vang đỏ\r\nAnh vào đời bằng nước trà\r\nBằng cơn mưa thơm mùi đất và bằng hoa dại mọc trước nhà\r\nEm vào đời bằng kế hoạch\r\nAnh vào đời bằng mộng mơ\r\nLý trí em là công cụ còn trái tim anh là động cơ\r\nEm vào đời nhiều đồng nghiệp\r\nAnh vào nhiều thân tình\r\nAnh chỉ muốn chân mình đạp đất không muốn đạp ai dưới chân mình\r\nEm vào đời bằng mây trắng\r\nEm vào đời bằng nắng xanh\r\nEm vào đời bằng đại lộ và con đường đó giờ vắng anh.\r\n\r\n[Chorus: Phương Anh Đào]\r\nĐường xa quá, lắm lúc thấy mình lẻ loi\r\nNgười đã đến, vui đấy, nhưng rồi cũng đi\r\nChạm lên trái tim thấy cơn mơ còn cháy nồng\r\nNhiều đêm trắng xoá bay, lòng như có gió đầu mùa.\r\n\r\nĐường xa quá, lắm lúc thấy mình lẻ loi\r\nNgười đã đến, vui đấy, nhưng rồi cũng đi\r\nChạm lên trái tim thấy cơn mơ còn cháy nồng\r\nNhiều đêm trắng xoá bay, lòng như có gió đầu mùa.\r\n\r\nNa-na-na, na-na-na-na-na-na\r\nNa-na-na, na-na-na-na-na-na\r\nNa-na-na, na-na-na-na-na-na-na\r\nNa-na-na-na-na\r\nNa-na-na-na-na-na.\r\n...\r\n\r\n[Outro:]\r\n[Instrumental]', 2020, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:57:27'),
(33, 'Anh Đếch Cần Gì Nhiều Ngoài Em (Live)', '~/img/album/showcuaden220639074.png', '~/audio/Anh Dech Can Gi Nhieu Ngoai Em Live_ - D.mp3', '04:06', 9, 3, NULL, 'Và anh đếch cần gì nhiều ngoài em\r\nÔi một giấc mơ chơi vơi nhiều đêm\r\nVà anh đếch cần gì nhiều ngoài em\r\nThương một giấc mơ ôm ta nhiều đêm.\r\n\r\n \r\n\r\nVer 1:\r\n\r\n \r\n\r\nAnh như con cáo em như một cành nho xanh\r\nKhi em còn trẻ và đẹp em lại không dành cho anh\r\nTrong lòng anh là kho xăng, nụ cười em là mồi lửa\r\nEm phá vỡ đi quy tắc, rồi bỏ mặc anh ngồi sửa\r\n\r\nAnh như biến thành người nhện, vì trong lòng nhiều tơ vương\r\nNhớ em tốn nhiều calo, thế nên anh gầy trơ xương\r\nỞ trong xóm anh rất ngoan, chẳng ai thấy anh say mèm\r\nMẹ anh dặn anh đủ thứ, nhưng quên dặn đừng say em\r\n\r\nNhư con cuốn chiếu, anh có rất nhiều chân thật\r\nBài hát này ngọt vì đám tụi anh rất thân mật\r\nAnh như con cáo em vẫn là cành nho xanh\r\nNhưng mà em trẻ và đẹp, em lại không dành cho anh.\r\n\r\n \r\n\r\nMel:\r\n\r\n \r\n\r\nTa đã đi tìm về thương nhớ\r\nTa đã đi tìm đi tìm đi tìm\r\nTa đã đi tìm về quá khứ\r\nTa cứ đi tìm đi tìm\r\n\r\nVà anh đếch cần gì nhiều ngoài em\r\nVà anh đếch cần gì nhiều ngoài em\r\nVà anh đếch cần gì nhiều ngoài em\r\nVà anh đếch cần gì nhiều ngoài em\r\n\r\nVà anh đếch cần gì nhiều ngoài em\r\nÔi một giấc mơ chơi vơi nhiều đêm\r\nVà anh đếch cần gì nhiều ngoài em\r\nThương một giấc mơ ôm ta nhiều đêm.\r\n\r\n \r\n\r\nVer 2:\r\n\r\n \r\n\r\nMột ngày cùng em uống đến thoáng say là đủ\r\nKệ đời ngả nghiêng mình nằm dưới tán cây mà ngủ\r\nSẽ thật là tuyệt nếu rơi vào một chiều thu\r\nAnh cưa em đổ em gọi anh là tiều phu\r\n\r\nAnh có thể có danh tiếng nếu như mặt anh dày thêm\r\nAnh có thể có nhiều tiền nếu anh cày ngày cày đêm\r\nNhưng như một giấc mơ bị em chối bỏ trong chiều\r\nAnh không có được em dù cho cố bỏ công nhiều\r\n\r\nNồng độ cồn em bao nhiêu sao cứ làm anh lảo đảo\r\nEm chỉ mang lại chua cay như là gói mì hảo hảo\r\nMột lần chơi lớn để xem em có trầm trồ\r\nVì yêu em, anh như mang hết con tim đi cầm đồ.\r\n\r\n \r\n\r\n(Mel)', 2019, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:25:55'),
(34, 'Mười Năm (Live)', '~/img/album/showcuaden220639074.png', '~/audio/Muoi Nam Live_ - Den_ Ngoc Linh.mp3', '04:45', 9, 3, NULL, 'Ayy\r\nIt\'s Den Vau\r\nOne more time Lon Xon\r\nDìa dia\r\nCó người đến, có người đi và có người ở lại\r\nCó lúc khôn và cũng có lần nhỡ dại\r\nCó lúc tủi, có lúc vinh và có lúc thăng hoa\r\nCó ngày cười, có ngày khóc và có ngày hoan ca\r\nĐời cho ta quá nhiều thứ\r\nTa chưa cho đời được nhiều\r\nĐến bây giờ vẫn chưa học được cách làm sao để lời được nhiều\r\nMười năm như một bức hoạ, cũng may là trời đỡ xám hơn\r\nThứ mà ta học được nhiều nhất là cách xin lỗi và lời cám ơn\r\nMặt trời là cái bếp lớn\r\nCòn tia nắng là than hồng\r\nMỗi ngày mà ta thức dậy\r\nTa chỉ mong được an lòng\r\nHoàng hôn là dải lụa\r\nCòn màn đêm là tấm chăn\r\nMỗi đêm ta ngồi ta viết, ta chỉ mong không bị cấm ngăn\r\nNhởn nhơ trên con đường vắng, tự nhủ mình không cần tăng ga\r\nLắng nghe cuộc đời như lá, lá rơi nghiêng như Trần Đăng Khoa\r\nLời ca là chất kích thích, cho cuộc đời thêm phần thăng hoa\r\nÂm nhạc là cô gái đẹp, ta và nhạc bao lần trăng hoa\r\nCuộc đời này có được mấy lần mười năm?\r\nSống làm sao khi khó, còn được có những người thăm\r\nNhắm mắt và hồi tưởng, chẳng có đâu mà dài\r\nGiống như LK ta vẫn tự hỏi nhiều khi Đen Vâu là ai\r\nCó cánh hoa nào không tàn\r\nCó giấc mơ nào không tan\r\nHát để tâm tư vén màn\r\nThả mình xuôi với mây ngàn\r\nLòng mình vẫn chưa ngăn nắp\r\nNhìn lại buồn vui tháng năm\r\nMột đời này ta sẽ có mấy lần mười năm?\r\nTâm hồn của anh, anh không chắc nó hợp thời đại\r\nAnh níu những cành cây khô và mong ngày sau lá rợp trời lại\r\nMọi thứ ngày càng phát triển, sao chúng ta càng bị bất an?\r\nAnh sống giữa lòng thành phố, nhưng lại mơ về thị trấn hoang\r\nHoài niệm là thứ đồ chơi, ta càng lớn lại càng không chán\r\nGom từng chút, từng chút, từng chút như con dã tràng không cần công cáng\r\nNó là thứ tài sản vô giá, không ai mua và cũng không bán\r\nThấy lẻ loi như con chuồn chuồn, bay chơ vơ trên mặt sông thoáng\r\nCon người cũng như con chim, sáng kiếm ăn chiều bay vào tổ\r\nCon nào cũng như con nào, chẳng con sướng chẳng con nào khổ\r\nCon người cũng như con chim, chiều về tổ sáng thì kiếm ăn\r\nNgày mải mê đi tìm cơm gạo, đêm co mình dưới một miếng chăn\r\nCuộc đời là nồi cá kho, muốn nó ngon phải kho nhiều lửa\r\nCó quá nhiều thứ mưu cầu, ta chỉ cần được no nhiều bữa\r\nTa nhận của đời quá nhiều và ta cần phải cho nhiều nữa\r\nVà chỉ mong trong những đêm đông, mẹ không còn phải ho nhiều nữa\r\nCó cánh hoa nào không tàn\r\nCó giấc mơ nào không tan\r\nHát để tâm tư vén màn\r\nThả mình xuôi với mây ngàn\r\nLòng mình vẫn chưa ngăn nắp\r\nNhìn lại buồn vui tháng năm\r\nMột đời này ta sẽ có mấy lần mười năm\r\nTao đã từng đứng dưới cùng và đã từng việt vị\r\nTao đã nhận những lời khen và cả lời miệt thị\r\nVà tao tin nó vẫn còn đó vẫn chưa hề triệt tiêu\r\nMười năm qua tao vẫn cố gắng làm nhạc người Việt chill\r\nMấy thằng ghét tao, tụi nó cũng đã bỏ cuộc\r\nTao vẫn là con đóm đóm, tụi nó cháy như bó đuốc\r\nTao lập loè cả cuộc đời, tụi nó đã tắt từ lâu\r\nThời gian là thứ diệt cỏ ghê hơn cả thuốc trừ sâu\r\nMười năm tao vẫn là tao vẫn không khác mấy\r\nTừ nhạc ra ngoài đời thường vẫn thân xác ấy\r\nCó người nói tao thay đổi\r\nKhông! là tao thích nghi\r\nBật cười trước những phán xét, người đời thích nghi\r\nTao sẽ vẫn rap tiếp cho bản thân tao trước\r\nKhi mà tao còn thở, khi mà chân tao bước\r\nKhi tao còn lo lắng cho những người ghét tao\r\nDõi theo thằng không bỏ cuộc, mệt mỏi biết bao\r\nBước vào cuộc chơi tao không có gì để mà mất cả\r\nCách mà tao kiếm tiền là niềm vui vượt lên trên tất cả\r\nCon đường do tao chọn và tao cam tâm bước\r\nTao thà chìm dưới đại dương còn hơn bị tan trong nước\r\nĐêm nay tao thức trắng nhìn bầu trời sao\r\nMuốn được cười, muốn được khóc như ngày đầu đời tao\r\nCó cánh hoa nào không tàn\r\nCó giấc mơ nào không tan\r\nHát để tâm tư vén màn\r\nThả mình xuôi với mây ngàn\r\nLòng mình vẫn chưa ngăn nắp\r\nNhìn lại buồn vui tháng năm\r\nMột đời này ta sẽ có mấy lần mười năm', 2020, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:02:34'),
(35, 'Lộn Xộn 2 (Live)', '~/img/album/showcuaden220639074.png', '~/audio/Lon Xon 2 Live_ - Den.mp3', '02:28', 9, 3, NULL, 'Yeah babe, anh trở về lại với trường cũ\r\nAnh lại viết nhạc, vào cái giờ mà mọi người thường ngủ\r\nCảm thấy trống trải dù căn phòng này có đủ giường tủ\r\nHôm nay anh thấy buồn, buồn hơn cả nhạc Trường Vũ\r\nChơi nhạc mới đó vậy mà đã gần mười năm rồi\r\nAnh buồn vì có những ngày cành lá tâm tư anh lười đâm chồi\r\nBuồn những muộn phiền khiến cho lòng này cười không nổi\r\nBuồn vì có những ngày bất ổn nhưng không có đến một người thăm hỏi\r\nMiền bắc mùa này mưa phùn, thời tiết khó chịu lắm em\r\nAnh đi loanh quanh ngoài đường, đôi converse đã lấm lem\r\nTrong đầu anh không định hướng, lời nhạc này cũng mông lung\r\nBây giờ anh đứng ở đây, nhưng tâm hồn trên không trung\r\nThật may là anh có rap, có nhịp beat để thả vào\r\nNhư một tấm đệm êm, mỗi khi mệt anh ngả vào\r\nĐã từng hi vọng và cũng đã từng thất vọng nhiều\r\nRồi có một ngày tất cả trôi qua nhẹ như một giấc mộng chiều\r\nNhững quả bóng bay rồi cũng sẽ có ngày bị xẹp mất\r\nNhững ngày còn được chơi rap chắc chắn là những ngày đẹp nhất.\r\n\r\nVà tao lại feel như là cơn gió bay trong buổi chiều mượt mà\r\nMừng như thằng nhóc bỗng được mang đến cho thật nhiều hộp quà\r\nTrở về trường cũ cho tao có thể gởi gắm nhiều điều thật thà\r\nMỗi ngày còn rap vui như là Lục Vân Tiên gặp Kiều Nguyệt Nga.\r\n\r\nChẳng có gì đáng tự hào khi có những ngày đầy cực khổ\r\nNhưng nước mày uống còn ko nhiều bằng mồ hôi tao từng đổ\r\nTao là thằng con lớn, ông bà già tao ai lo?\r\nĐã có những ngày ăn bữa hôm nay chỉ mong ngày mai no\r\nAi thì cũng như ai, muốn có tiền, nhà và xe\r\nĐêm nằm thật yên giấc không muốn có phiền hà mà care\r\nAi thì cũng như ai thôi, bằng cách này hoặc cách khác\r\nVà tao thay đổi cuộc đời của tao bằng cách rap\r\nViết một bài nhạc mệt như đi cày trong trưa hè tháng sáu\r\nChất xám tao đưa vào đó thật ra không khác gì bán máu\r\nMày không thể nào mà đem đơn vị bình thường ra đo đạc\r\nÂm nhạc của tao giàu có không khác gì vàng trong kho bạc\r\nĐừng phán xét tao khi đời của tao sẽ chẳng ai sống cho\r\nMấy thằng thùng rỗng thì thường hay cho mình là cái trống to\r\nNhiều thằng đi bằng hai chân nhưng mà thật ra là giống bò\r\nCái chất của tao không thể nhầm lẫn dù cho tao hoá thành đống tro.\r\n\r\nVà tao lại feel như là cơn gió bay trong buổi chiều mượt mà\r\nMừng như thằng nhóc bỗng được mang đến cho thật nhiều hộp quà\r\nTrở về trường cũ cho tao có thể gởi gắm nhiều điều thật thà\r\nMỗi ngày còn rap vui như là Lục Vân Tiên gặp Kiều Nguyệt Nga.\r\n\r\nBabe muốn tìm nhạc chill, Đen Vâu chính là chợ đầu mối\r\nNghe nhạc của anh em sẽ thôi thấy sợ màu tối\r\nMuốn ngủ thật ngon, đem nhạc anh mà gối đầu giường\r\nTrong màn đêm đen, khi cơn mưa lạnh kia đang xối đầu đường\r\nSẽ có những ngày đầu của em cần tìm một nơi ngả\r\nNgày mà những âu lo cuộc đời này vùi dập em tơi tả\r\nEm rơi, ngã vào trong những lo toan\r\nPhổi em không có thuốc nhưng bởi vì bị chèn ép mà ho khan\r\nNhạc của anh em nên nghe vào đêm\r\nVà khi mà em đang cuộn mình lại trong chiếc chăn mềm\r\nVà khi mà em không biết mình nên vui hay buồn bã\r\nVà khi mà em không khóc nhưng nước mắt cứ tuôn ra\r\nKhóc đi, cười đi, tuôn ra đi cho hết một lần\r\nKhông còn cảm xúc, nghĩa là em đang chết một phần\r\nĐâu cần chèn lòng mình lại, muốn trở thành một Hoa Mộc Lan?\r\nNếu đời không cho ta là hoa hồng thì em hãy cứ vui làm đời hoa mọc lan.\r\n\r\nHoài niệm lại về theo cái cách mà anh không ngăn nổi\r\nTừ bán cầu não, xuống đến ngực sau đó làm căng phổi\r\nAnh thấy cồn cào như uống thuốc mà không chịu ăn cơm\r\nBiết là không tốt như hồi bé cố hít mùi xăng thơm\r\nThành phố buồn không phải vì thành phố không có em\r\nMà có em, nhưng mà mình sẽ khó mà gặp lại\r\nTa đã có những ngày sống trong mong chờ khắc khoải\r\nBuồn ngắc ngoải, nhưng chắc phải, đành gác lại, haizz\r\nEm biết không, đôi khi anh cần người trói\r\nBằng ánh mắt bằng hơi thở bằng cười nói\r\nBằng thinh lặng bằng hồ hởi bằng êm ru\r\nKhi trưa hè ngày đông lạnh trong đêm thu\r\nTâm tư này cần em để chấp cánh\r\nCó những thứ giá trị nhưng không hề lấp lánh\r\nBài hát này không có quảng cáo\r\nKhông có anh đời em chắc cũng chẳng sao.', 2020, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:57:50'),
(36, 'Hai Triệu Năm (Live)', '~/img/album/showcuaden220639074.png', '~/audio/HaiTrieuNam-DenBien-6007307.mp3', '04:58', 9, 3, NULL, NULL, 2019, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:49:14');
INSERT INTO `song` (`song_id`, `title`, `img_url`, `path`, `duration`, `album_id`, `genre_id`, `track_no`, `lyrics`, `date_release`, `views`, `upload_type`, `featured`, `created_at`, `updated_at`) VALUES
(37, 'Bài Này Chill Phết (Live)', '~/img/album/showcuaden220639074.png', '~/audio/Bai Nay Chill Phet Live_ - Den_ Min.mp3', '04:54', 9, 3, NULL, 'I just wanna chill with you tonight\r\nAnd all the sorrow left behind uh oh\r\nSometimes I feel lost in the crowd\r\nLife is full of ups and downs\r\nBut it’s alright, I feel peaceful inside\r\n\r\nVerse1:\r\nEm dạo này ổn không? Còn đi làm ở công ty cũ\r\nCòn đi sớm về hôm mà đồng lương vẫn không khi đủ\r\nĐồng nghiệp của Em thế nào? Trong thang máy có chào với nhau\r\nCó nói qua nói lại, và những cuộc họp có đào bới nhau\r\nSếp của Em thế nào, dễ tính hay thường gắt gỏng\r\nAnh ta có thương nhân viên hay thường buông lời sắc mỏng\r\nEm còn thiếu ngủ, trong những lần phải chạy deadline\r\nEm quên ăn quên uống, quên cả việc chải lại tóc tai\r\nNhững đôi giày cao gót chắc còn làm đau Em\r\nTiền bao nhiêu cho đủ, ai biết ngày sau Em?\r\nMắt Em còn mỏi không 8 tiếng nhìn màn hình\r\nNhững tối đi về đơn độc Em thấy lòng mình lặng thinh\r\nVà đừng để đời chỉ là những chuỗi ngày được chấm công\r\nMiệng cười như nắng hạ, nhưng trong lòng thì chớm đông\r\nNếu mà mệt quá, giữa thành phố sống chồng lên nhau\r\nCùng lắm thì mình về quê, mình nuôi cá và trồng thêm rau\r\n\r\nMelody:\r\nTrời thả vạt nắng khiến đám tóc Em hoe vàng\r\nChiều nay đi giữa thành phố Em bỗng thấy sao mơ màng\r\nTìm cho mình một không gian, bật bài nhạc làm Em chill\r\nTâm hồn Em, phiêu dạt theo áng mây bên trời\r\n\r\nVerse 2:\r\nAnh dạo này cũng bận nhiều, và cũng có thêm nhiều đêm diễn\r\nÂm nhạc mở lối cuộc đời Anh, như là ngọn hải đăng ở trên biển\r\nAnh được gặp những người nổi tiếng, trước giờ chỉ thấy trên tivi\r\nGặp H\'Hen Niê hoa hậu, gặp cả Sơn Tùng M-TP\r\nĐi hát vui lắm em, vì đồng âm của Anh họ rất tuyệt\r\nBọn Anh hát cùng nhau, khiến cho thanh xuân này như bất diệt\r\nAnh thấy mình không cô đơn, không áp lực nào buộc chân Anh\r\nNhiều khi Anh lên sân khấu mà dưới khán giả họ thuộc hơn Anh\r\nAnh cũng có những hợp đồng, những điều khoản mà Anh phải dần ***\r\nAnh cũng cần tiền, những dự án họ nói họ cần Đen\r\nVà những con số, nặng tới mức đủ sức làm choáng mình\r\nNhưng em yên tâm, Anh bán chất xám chứ chưa từng bán mình\r\nNhưng cũng có lúc mọi thứ không như là những gì ta muốn\r\nThế giới này vận hành theo cái cách luôn ghì ta xuống\r\nNhưng mà mộng mơ Anh nhiều như niêu cơm của Thạch Sanh\r\nAi muốn lấy cứ lấy, không thể nào mà sạch banh\r\n\r\nVerse 3:\r\nMình sướng hơn những người giàu nhỉ\r\nVầng trán mình chưa hề nhàu nhĩ\r\nDù chênh vênh như là cầu khỉ\r\nĐời sóng gió mình là tàu thuỷ\r\nVì một ngày còn sống, là một ngày đắm say\r\nNgày đẹp trời nhất, là ngày mình còn nắm tay\r\nMình sẽ không ngã, vì mình ngã họ hả hê\r\nBiển người cũng là biển, cho tụi mình tắm thoả thuê\r\nChúng ta sẽ không, là một ai trông giống họ\r\nSẽ không rỗng tuếch, như một cái chai trong đống lọ\r\nSáng chúng ta làm, vì tờ bạc nhiều màu trong ví\r\nĐêm về ta chill, riêng mình một bầu không khí\r\nVì tim ta còn trẻ, dù thân xác ta sẽ già\r\nNhưng mà ta không ủ rũ, như là mấy con sẻ già\r\nChúng ta có những chiều vàng, dắt tay nhau lên đồi xa\r\nNắng khoác lên mình lớp áo, nheo mắt lại nhìn trời hoa\r\nVà những đêm đen huyền dịu, cho tiếng lòng thêm dõng dạc\r\nTa thấy nhau bằng tâm hồn, không cần nhìn bằng võng mạc\r\nTa sẽ cố để có được những thứ mà ta chờ mong\r\nDưới ngọn đồi, căn nhà nhỏ, nhìn ra bờ sông\r\nVì anh chưa từng mơ ngày nào đó mình trở thành siêu sao\r\nTừ ngày thơ bé anh đã muốn trở thành chưởng môn phái Tiêu Dao\r\n\r\nEm ơi vui cười lên vì đời này ai không âu lo\r\nThôi băn khoăn ngày mai mệt nhoài hệt như con sâu đo\r\nEm đi ra ngoài kia tìm về vài chai Strongbow oh\r\nĐêm nay em cần chill, việc này để cho Đen Vâu lo !', 2019, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:31:44'),
(38, 'Đưa Nhau Đi Trốn (Live)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDua%20nhau%20di%20tron%20-%20Den.mp3?alt=media&token=ee52b441-0064-4478-976f-6d3391002a63', '04:25', 9, 3, 0, '', 0000, 0, 'Link', 0, '2022-01-02 18:00:53', '2022-01-11 23:57:53'),
(39, 'Montero (Call Me By Your Name)', '~/img/album/montero221833398.jpg', '~/audio/Montero Call Me By Your Name_ - Lil Nas.mp3', '02:17', 10, 3, NULL, '[Verse 1]\r\nI caught it bad yesterday\r\nYou hit me with a call to your place\r\nAin\'t been out in a while anyway\r\nWas hopin\' I could catch you throwin\' smiles in my face\r\nRomantic talkin\'? You don\'t even have to try\r\nYou\'re cute enough to fuck with me tonight\r\nLookin\' at the table, all I see is weed and white\r\nBaby, you livin\' the life, but nigga, you ain\'t livin\' right\r\n\r\n[Pre-Chorus]\r\nCocaine and drinkin\' with your friends\r\nYou live in the dark, boy, I cannot pretend\r\nI\'m not fazed, only here to sin\r\nIf Eve ain\'t in your garden, you know that you can\r\n\r\n[Chorus]\r\nCall me when you want, call me when you need\r\nCall me in the morning, I\'ll be on the way\r\nCall me when you want, call me when you need\r\nCall me out by your name, I\'ll be on the way like\r\n\r\n[Post-Chorus]\r\nMmm, mmm, mmm\r\nMmm, mmm, mmm\r\n\r\n[Verse 2]\r\nAyy, ayy\r\nI wanna sell what you\'re buyin\'\r\nI wanna feel on your ass in Hawaii\r\nI want that jet lag from fuckin\' and flyin\'\r\nShoot a child in your mouth while I\'m ridin\'\r\nOh, oh, oh, why me?\r\nA sign of the times every time that I speak\r\nA dime and a nine, it was mine every week\r\nWhat a time, an incline, God was shinin\' on me\r\nNow I can\'t leave\r\nAnd now I\'m actin\' hella elite\r\nNever want the niggas that\'s in my league\r\nI wanna fuck the ones I envy, I envy\r\n\r\n[Pre-Chorus]\r\nCocaine and drinkin\' with your friends\r\nYou live in the dark, boy, I cannot pretend\r\nI\'m not fazed, only here to sin\r\nIf Eve ain\'t in your garden, you know that you can\r\n\r\n[Chorus]\r\nCall me when you want, call me when you need\r\nCall me in the morning, I\'ll be on the way\r\nCall me when you want, call me when you need\r\nCall me out by your name, I\'ll be on the way like\r\n\r\n[Post-Chorus]\r\nOh, call me by your name (Mmm, mmm, mmm)\r\nTell me you love me in private\r\nCall me by your name (Mmm, mmm, mmm)\r\nI do not care if you lyin\'', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:01:05'),
(40, 'Dead Right Now', '~/img/album/montero221833398.jpg', '~/audio/Dead Right Now - Lil Nas X.mp3', '03:41', 10, 3, NULL, '[Verse 1]\r\nBreaker, breaker, 911, somebody come get this bitch\r\nThinkin\' you a star on the rise, you got time to reply\r\nDon’t lie, you can hit my shit\r\nYou can lend me five lil\' nigga, on the side, lil\' nigga\r\nCouple thou’, need to fix my whip\r\nHow you switch sides on a nigga who was down with you, nigga?\r\nYou a fraud, just a fib my nig\', my nig\', uh (Huh, mmm, mmm)\r\n\r\n[Pre-Chorus]\r\nYou know I never did you wrong\r\nEven though I\'m right here by the phone, dawg\r\nYou know, you never used to call\r\nKeep it that way now\r\n\r\n[Chorus]\r\nI\'ll treat you like you dead right now\r\nI\'m on your head right now\r\nYou wanna fuck with me so bad right now\r\nWell, now you can\'t right now, oh, oh, oh\r\n\r\n[Verse 2]\r\n2018, I was at my sister house the whole summer (Yeah)\r\nSongs wasn\'t doin’ numbers (Yeah)\r\nWhole life was goin’ under\r\nLeft school, then my dad and I had a face-to-face in Atlanta\r\nHe said, “It\'s one in a million chance, son,” I told him, “Daddy, I am that one-uh, uh-uh”\r\nI ain’t never need him, huh, I ain\'t never need no nigga, uh\r\nI ain\'t never need no feature\r\nIf I didn\'t blow, I would’ve died tryna be here\r\nIf it didn\'t go, suicide, wouldn\'t be here\r\nNow they all come around like they\'ve been here\r\nWhen you get this rich and famous, everybody come up to you singin\'\r\n\"Hallelujah, how\'d you do it?\"\r\n\"You\'ve been on my mind, you\'ve been runnin\' through it\", yeah (Hallelujah)\r\n\"Hallelujah, how\'d you do it?\"\r\n\"You\'ve been on my mind, you\'ve been runnin\' through it\", yeah (Yeah, yeah, yeah, yeah)\r\n\r\n[Pre-Chorus]\r\nYou know I never did you wrong\r\nEven though I\'m right here by the phone, dawg\r\nYou know, you never used to call\r\nKeep it that way now\r\n\r\n[Chorus]\r\nI\'ll treat you like you dead right now\r\nI\'m on your head right now\r\nYou wanna fuck with me so bad right now\r\nWell, now you can\'t right now, oh, oh, oh\r\n\r\n[Verse 3]\r\nMomma told me she was gonna stop fuckin\' around with that nigga (Fuckin\' \'round with that nigga)\r\nTold me she\'d be clean but I\'m knowin\' that her ass is a deceiver (Oh, oh, oh)\r\nMy momma told me that she love me, don\'t believe her\r\nWhen she get drunk, she hit me up, man, with a fever, like, woah\r\nYou ain\'t even all that pretty, you ain\'t even all that, nigga\r\nYou ain\'t helpin\' out with me, God will forgive you (Shit)\r\nYou ain\'t even all that pretty, you ain\'t even all that, nigga\r\nYou ain\'t helpin\' out with me, God will forgive you (Damn)\r\n\r\n[Pre-Chorus]\r\nYou know I never did you wrong\r\nEven though I\'m right here by the phone, dawg\r\nYou know, you never used to call\r\nKeep it that way now\r\n\r\n[Chorus]\r\nI\'ll treat you like you dead right now (I\'ll treat you like you\'re dead)\r\nI\'m on your head right now\r\nYou wanna fuck with me so bad right now (Well, now you can\'t)\r\nWell, now you can\'t right now, oh-\r\n\r\n[Outro]\r\nTreat you like you dead right now\r\nI\'m on your head right now\r\nYou wanna fuck with me so bad right now\r\nWell, now you can\'t right now, oh, oh, oh', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:36:49'),
(41, 'YouRight\r\n', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FYou%20Right%20-%20Doja%20Cat_%20The%20Weeknd.mp3?alt=media&token=3d1d2045-7741-485f-a2d0-f2e8f2b99436', '03:36', NULL, NULL, NULL, NULL, NULL, 0, 'Link', 0, '2022-01-05 17:42:10', '2022-01-12 21:32:20'),
(42, 'Kiss Me More', '~/img/album/planether221850949.jpg', '~/audio/Kiss Me More - Doja Cat_ SZA.mp3', '03:28', 11, 4, NULL, '[Verse 1: Doja Cat]\r\nWe hug and, yes, we make love\r\nAnd always just say goodnight (La-la-la-la-la-la)\r\nAnd we cuddle, sure, I do love it\r\nBut I need your lips on mine\r\n\r\n[Chorus: Doja Cat]\r\nCan you kiss me more?\r\nWe\'re so young, boy, we ain\'t got nothin\' to lose, uh-oh\r\nIt\'s just principle\r\nBaby, hold me \'cause I like the way you move, uh-oh\r\n\r\n[Post-Chorus: Doja Cat]\r\nBoy, you write your name, I can do the same\r\nOh, I love the taste, la-la-la-la-la-la\r\nAll on my tongue, I want it (La-la-la-la-la-la)\r\nBoy, you write your name, I can do the same\r\nOh, I love the taste, la-la-la-la-la-la\r\nAll on my tongue, I want it (La-la-la-la-la-la)\r\n\r\n[Verse 2: Doja Cat]\r\nI, I feel like fuckin\' somethin\'\r\nBut we could be corny, fuck it\r\nSugar, I ain\'t no dummy, dummy\r\nI likе to say, \"What if?\", but if\r\nWe could kiss and just cut the rubbish\r\nThen I might bе onto somethin\'\r\nI ain\'t givin\' you one in public\r\nI\'m givin\' you hundreds, fuck it\r\nSomethin\' we just gotta get into\r\nSign first, middle, last on the wisdom tooth\r\nNiggas wishin\' that the pussy was a kissin\' booth\r\nTaste breakfast, lunch, and gin and juice\r\nAnd that dinner just like dessert too\r\nAnd when we French, refresh, gimme two\r\nWhen I bite that lip, come get me too\r\nHe want lipstick, lip gloss, hickeys too, huh\r\n\r\n[Chorus: Doja Cat]\r\nCan you kiss me more?\r\nWe\'re so young, boy, we ain\'t got nothin\' to lose, uh-oh\r\nIt\'s just principle\r\nBaby, hold me \'cause I like the way you move, uh-oh\r\n\r\n[Post-Chorus: Doja Cat]\r\nBoy, you write your name, I can do the same\r\nOh, I love the taste, la-la-la-la-la-la\r\nAll on my tongue, I want it (La-la-la-la-la-la)\r\nBoy, you write your name, I can do the same\r\nOh, I love the taste, la-la-la-la-la-la\r\nAll on my tongue, I want it\r\n\r\n[Verse 3: SZA]\r\nSay give me a buck, need that gushy stuff\r\nPush the limit, no, you ain\'t good enough\r\nAll your niggas say that you lost without me\r\nAll my bitches feel like I dodged the county\r\nFuckin\' with you feel like jail, nigga\r\nI can\'t even exhale, nigga\r\nPussy like holy grail, you know that\r\nYou gon\' make me need bail, you know that\r\nCaught dippin\' with your friend\r\nYou ain\'t even half man, lyin\' on your—, you know that\r\nGot me a bag full of brick, you know that\r\nControl, don\'t slow the pace if I throw back\r\nAll this ass for real (Ah)\r\nDrama make you feel (Ah)\r\nFantasy and whip appeal is all I can give you\r\n\r\n[Chorus: Doja Cat, SZA & Both]\r\nCan you kiss me more?\r\nWe\'re so young, boy, we ain\'t got nothin\' to lose, uh-oh\r\nIt\'s just principle\r\nBaby, hold me \'cause I like the way you groove, uh-oh\r\nOh, darlin\'\r\n\r\n[Post-Chorus: SZA & Doja Cat]\r\nBoy, you write your name, I can do the same\r\nOoh, I love the taste, oh-la-la-la-la-la\r\nAll on my tongue, I want it\r\nBoy, you write your name, I can do the same\r\nOoh, I love the taste, oh-la-la-la-la-la\r\nAll on my tongue, I want it', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:55:06'),
(43, 'Been Like This', '~/img/album/planether221850949.jpg', '~/audio/Been Like This - Doja Cat.mp3', '02:57', 11, 4, NULL, '[Intro: Bryson Triller]\r\nSince you\'ve been like this\r\nBaby, I don\'t really wanna be in like this\r\nEver since you\'ve been like this\r\nBaby, I don\'t really wanna be in like this\r\n\r\n[Verse 1]\r\nSee you\'ve been changin\', baby\r\nIn good ways and bad ways\r\nCan\'t say what I say, it\'s far too late\r\nAnd I think you made me, baby\r\nMade me too nervous\r\nCryin\' and disheartened and I gotta tell you why\r\n\r\n[Chorus]\r\nSince you\'ve been like this (This, this, this, this)\r\nBaby, I don\'t really wanna be in like this (This, this, this, this)\r\nEver since you\'ve been like this (This, this, this, this)\r\nBaby, I don\'t really wanna be in like this (This, this, this, this)\r\n\r\n[Verse 2]\r\nWho is frontin\', babe?\r\nWe don\'t have fun these days\r\nIt\'s morе than complicated, I\r\n(Couldn\'t say you wasn\'t with it)\r\nTold me to stop my mind\r\nWhen you gavе up, I tried\r\nI gave you all this time\r\nGave you my everything\r\nSaid I can do this all night, baby\r\nSaid I was actin\' out of line, maybe\r\nCan\'t put my trauma to the side\r\nWhen you told me I was lyin\'\r\nHad me feelin\' like I died, baby\r\nI seen a grown man cry, baby\r\nJust see you do it, ain\'t special, no\r\nWonder when I ain\'t there\r\nWhat the fuck you\'ve been sayin\'\r\nTalkin\' \'bout how I sexed you up\r\n\r\n[Bridge]\r\nAnd I know it might mess you up\r\nHatin\' me ain\'t gon\' get you love\r\nAin\'t nobody gon\' set you up\r\nI ain\'t even gon\' sweat you, love\r\nAnd we\'ll never be friends like this\r\nGod couldn\'t forgive like this\r\nWhy I really went in like this\r\nThank God I ain\'t been like this (Yeah)\r\n\r\n[Chorus]\r\nSince you\'ve been like this (This, this, this, this)\r\nBaby, I don\'t really wanna be in like this (This, this, this, this)\r\nEver since you\'ve been like this (This, this, this, this)\r\nBaby, I don\'t really wanna be in like this (This, this, this, this)\r\nSince you\'ve been like this\r\n\r\n[Outro]\r\nI, bless your heart (Like this)\r\nBut I, I can\'t take no more (Like this)\r\nI, bless your heart (Like this)\r\nBut I, I can\'t take no more (Like this)\r\nSince you\'ve been like this\r\nBaby, I don\'t really wanna be in like this', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:26:41'),
(44, 'Love To Dream', '~/img/album/planether221850949.jpg', '~/audio/Love To Dream - Doja Cat.mp3', '03:36', 11, 4, NULL, '[Pre-Chorus]\r\nI know what you mean, you don\'t fuck with randoms\r\nI got everything, everything but real love\r\nI got in my head, I bet you could get me back out\r\nOr you could leave me there, \'cause\r\n\r\n[Chorus]\r\nWe just love to dream\r\nI fell asleep when you woke up, oh\r\nIt\'s not you, baby, it\'s just me\r\nI don\'t believe what I just lost\r\n\r\n[Verse 1]\r\nI don\'t wanna close my eyes\r\nNobody wants to fall (Fall) after they did it all (All)\r\nI wonder if I left my body there, would I\r\nDie right in my sleep (Sleep) but in reality (\'Ty)\r\nIt could feel like anything is possible\r\nWhen I hear you speak, it really drives it deep\r\nWoke up in a sweat in the middle of the night\r\nIt\'s gettin\' under my skin, baby\r\nI wouldn\'t wonder why\r\n\r\n[Pre-Chorus]\r\nI know what you mean, you don\'t fuck with randoms\r\nI got everything, everything but real love\r\nI got in my head, I bet you could get me back out\r\nOr you could leave me there, \'cause\r\n\r\n[Chorus]\r\nWe just love to dream\r\nI fell asleep when you woke up, oh\r\nIt\'s not you, baby (Na-na-na-na-na)\r\nIt\'s just me (Na-na-na-na-na)\r\nI don\'t believe (Na-na-na-na-na)\r\nWhat I just lost (Na-na-na-na-na)\r\n(I said, I said, I said) (Na-na-na-na-na)\r\n\r\n[Verse 2]\r\nAnd I said, \"Ooh, stop it\", ayy\r\nI look a little like \'Nashe, ayy\r\nYou look a little exhausted, ayy (Yah)\r\nWe should say nah to the party, ayy (Huh)\r\nTake me home in the Bugatti, ayy (Yahh)\r\nHope you like a little tear, put it on his tittie\r\nLike when ya rub my tum, ayy\r\nJump in bed without my bonnet, ah (My bonnet)\r\nTake a minute for the finer things (Yah)\r\nI don\'t even wanna sleep\r\nYou doin\' some weed, blow it in my China bang\r\nI be havin\' hella dreams\r\nPickin\' up his sheets feelin\' like a tidal wave\r\nHit me if you want it right away\r\nIf he hit me with the mornin\' sex\r\nShow up, hit him with apologies\r\nKicks on him with a pile of J\'s\r\nBricks on him with a dick on him (Yo)\r\nPut a fit on him with the Prada shades (Prada shades)\r\nTits on him and I ride away (Ride away)\r\nHow much do you want it? Twice a day\r\nFour times on the holidays (Yuh)\r\nKing come through, your dreams come true\r\nAnd trust me, you won\'t ever fall asleep\r\n\r\n[Pre-Chorus]\r\nI know what you mean, you don\'t fuck with randoms (And I hope you)\r\nI got everything, everything but real love (And I hope you)\r\nI got in my head, I bet you could get me back out (And I hope you)\r\nOr you could leave me there, \'cause (Or leave me there)\r\n\r\n[Chorus]\r\nWe just love to dream (And I hope you)\r\nI fell asleep (And I hope you) when you woke up, oh (And I hope you)\r\n(Oh, baby, baby) It\'s not you, baby (Na-na-na-na-na)\r\nIt\'s just me (Na-na-na-na-na)\r\nI don\'t believe (Na-na-na-na-na)\r\nWhat I just lost (Na-na-na-na-na)\r\n\r\n[Outro]\r\n(Na-na-na-na-na)\r\nOh-oh', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:55:47'),
(45, 'Need To Know', '~/img/album/planether221850949.jpg', '~/audio/Need To Know - Doja Cat.mp3', '03:30', 11, 4, NULL, '[Intro]\r\nYeah\r\n\r\n[Chorus]\r\nWanna know what it\'s like (Like)\r\nBaby, show me what it\'s like (Like)\r\nI don\'t really got no type (Type)\r\nI just wanna fuck all night\r\nYeah-yeah, oh-woah-woah (Oh, ooh, mmm)\r\nBaby, I need to know, mmm (Yeah, need to know)\r\nI just been fantasizin\' (Size)\r\nAnd we got a lotta time (Time)\r\nBaby, come throw the pipe (Pipe)\r\nGotta know what it\'s like (Like)\r\nYeah-yeah, oh-woah-woah\r\nBaby, I need to know, mmm\r\n\r\n[Verse 1]\r\nWhat\'s your size? (Size)\r\nAdd, subtract, divide (\'Vide)\r\nDaddy don\'t throw no curves (Curves)\r\nHold up, I\'m goin\' wide (Wide)\r\nWe could just start at ten (Ten)\r\nThen we can go to five (Five)\r\nI don\'t play with my pen (Pen)\r\nI mean what I writе\r\nYeah-yeah, woah-woah-woah\r\nI just can\'t help but bе sexual (Oh)\r\nTell me your schedule (Yeah)\r\nI got a lotta new tricks for you, baby\r\nJust sayin\' I\'m flexible (I will)\r\nI do what I can to get you off (I will)\r\nMight just fuck him with my makeup on (I will)\r\nEat it like I need an apron on (Yeah, oh)\r\nEat it \'til I need to change my thong (Yeah, ayy)\r\nWe could do it to your favorite song (Yeah, ayy)\r\nTake a ride into the danger zone\r\nYou know my nigga be buggin\' me\r\nI just be wonderin\' if you can fuck on me better\r\nItchin\' for me like an ugly sweater\r\nNeed it in me like a Chuck E. need cheddar\r\nI need to know\r\n\r\n[Chorus]\r\nWanna know what it\'s like (Like)\r\nBaby, show me what it\'s like (Like)\r\nI don\'t really got no type (Type)\r\nI just wanna fuck all night\r\nYeah-yeah, oh-woah-woah (Oh, ooh, mmm)\r\nBaby, I need to know, mmm (Yeah, need to know)\r\nI just been fantasizin\' (Size)\r\nAnd we got a lotta time (Time)\r\nBaby, come throw the pipe (Pipe)\r\nGotta know what it\'s like (Like)\r\nYeah-yeah, oh-woah-woah\r\nBaby, I need to know, mmm\r\n\r\n[Bridge]\r\nYou\'re exciting, boy, come find me\r\nYour eyes told me, \"Girl, come ride me\"\r\nFuck that feeling both us fighting\r\nCould he try me? (Yeah) Mmm, most likely\r\n\r\n[Verse 2]\r\nTryna see if you could handle this ass\r\nProlly give his ass a panic attack\r\nSorry if I gave a random erection\r\nProlly thinkin\' I\'m a telekinetic\r\nOh, wait, you a fan of the magic?\r\nPoof, pussy like an Alakazam\r\nI heard from a friend of a friend\r\nThat that dick was a ten out of ten\r\nI can\'t stand it, just one night me\r\nClink with the drink, gimme a sip\r\nTell me what\'s your kink, gimme the dick\r\nSpank me, slap me, choke me, bite me (Ew)\r\nOh, wait, I can take it (Ah)\r\nGive a fuck \'bout what your wifey\'s sayin\' (Yeah)\r\n\r\n[Chorus]\r\nWanna know what it\'s like (Like)\r\nBaby, show me what it\'s like (Like)\r\nI don\'t really got no type (Type)\r\nI just wanna fuck all night\r\nYeah-yeah, oh-woah-woah (Oh, ooh, mmm)\r\nBaby, I need to know, mmm (Yeah, need to know)\r\nI just been fantasizin\' (Size)\r\nAnd we got a lotta time (Time)\r\nBaby, come throw the pipe (Pipe)\r\nGotta know what it\'s like (Like)\r\nYeah-yeah, oh-woah-woah\r\nBaby, I need to know, mmm', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:14:14'),
(46, 'Payday', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPayday%20-%20Doja%20Cat_%20Young%20Thug.mp3?alt=media&token=c44d41f7-96ac-49ab-99a5-f084cd75da5c', '03:32', 11, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:53:55', '2022-01-12 01:32:17'),
(47, 'Imagine', '~/img/album/planether221850949.jpg', '~/audio/Imagine - Doja Cat.mp3', '02:28', 11, 4, NULL, '[Chorus]\r\nImagine, imagine\r\nPut the studio in the mansion\r\nPull up in a new high fashion\r\nPull up just like, \"Ooh, you a baddie\"\r\nImagine, imagine\r\nPut the studio in the mansion\r\nPull up in a new high fashion\r\nI pull up just like, \"Ooh, you a baddie\"\r\n\r\n[Verse 1]\r\nYou couldn\'t be more wrong\r\nWe show up and show out\r\nFive-hundred racks, sold out\r\nI never been more proud\r\nNeed more light on me\r\nShine on me\r\nThis my final form\r\nTell \'em all, \"Chile, please\"\r\nBaby, I blow your mind\r\nBuy all these\r\nPussy on dynamite\r\nGimme that, dine on me\r\n\r\n[Chorus]\r\nImagine, imagine\r\nPut the studio in the mansion\r\nPull up in a new high fashion\r\nPull up just like, \"Ooh, you a baddie\"\r\nImagine, imagine\r\nPut the studio in the mansion\r\nPull up in a new high fashion\r\nI pull up just like, \"Ooh, you a baddie\"\r\n\r\n[Verse 2]\r\nAll this work (This work) paid off (Off)\r\nWhen they had no faith at all (Faith at all)\r\nOne min. livin\' bummy, then go pray to God (Pray to God)\r\nFuck around and go completely un-relatable\r\nLike imagine, imagine\r\nThick as fuck but all I eat is salad\r\nSaucin\' with my thousands on an island\r\nGot imagination \'cause I\'m childish\r\n\r\n[Chorus]\r\nImagine, imagine\r\nPut the studio in the mansion\r\nPull up in a new high fashion\r\nPull up just like, \"Ooh, you a baddie\"\r\nImagine, imagine\r\nPut the studio in the mansion\r\nPull up in a new high fashion\r\nI pull up just like, \"Ooh, you a baddie\"', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:50:46'),
(48, 'Alone', '~/img/album/planether221850949.jpg', '~/audio/Alone - Doja Cat.mp3', '02:56', 11, 4, NULL, '[Chorus]\r\nBaby, when you fought me at the door\r\nKinda hard to force what\'s natural\r\nMaybe you don\'t want what you need most\r\nIs it crazy I\'m not scared to be alone?\r\n\r\n[Post-Chorus]\r\nNow I barely need ya\r\nDo what you do best and be alone\r\nGotta tell him, \"Rest in peace\"\r\nBet you thought I\'d die alone\r\nIt don\'t make sense to me\r\nBut I keep my head up high alone\r\nYou ain\'t even there for me\r\nBut now, you\'re scared to be alone\r\n\r\n[Verse 1]\r\nToo many drinks to think about you\r\nI had too many thoughts to let you wander\r\nNow you\'re an afterthought, I lost ya\r\nAnd now you want me, babe\r\nYou want me, but it\'s bye\r\nGivin\' mе reasons to fly\r\nPack all my shit and be wise\r\nJump in thе ride\r\nHit up my dude on the side\r\nLike, look what you threw to the side\r\nYou get the vibe\r\nEither we fuck or we fight\r\nBut I got the feelin\' you\'re right\r\nI\'m out my mind\r\nDoesn\'t make sense when I cry\r\nIf we can\'t make up, \'least we try\r\n\r\n[Chorus]\r\nBaby, when you fought me at the door (Fought me at the door)\r\nKinda hard to force what\'s natural (Oh, oh, oh)\r\nMaybe you don\'t want what you need most (Oh, oh, oh)\r\nIs it crazy I\'m not scared to be alone? (Yeah)\r\n\r\n[Verse 2]\r\nI ain\'t wanna share my dreams when it involves you\r\nNot the man I need (Yeah)\r\nStarted feelin\' like I failed my team\r\nMissin\' gigs for you, bet you never felt like me\r\nDifferent levels to the game, that\'s fast\r\nSpendin\' bands last week while your ass act cheap (Yeah)\r\nLonely at the top while your ass miles deep\r\nGot me thinkin\' that you scared of yourself, not me\r\nImpossible, from a Prius to gold carriages\r\nMiddle finger to you so you see what a whole karat is\r\nI need a answer, a reader of more tarots\r\nYou couldn\'t tell that the both of us needed a whole therapist\r\nI made you fam when I greeted your whole parents\r\nBut later, I realized they ain\'t teach you what no sharin\' is\r\nI know you hearin\' this, I know you scared of it\r\nBut bein\' lonely better than \'needs control,\' cherish it\r\n\r\n[Chorus]\r\nBaby, when you fought me at the door (Fought me at the door)\r\nKinda hard to force what\'s natural (Oh, oh, oh)\r\nMaybe you don\'t want what you need most (Oh, oh, oh)\r\nIs it crazy I\'m not scared to be alone?\r\n\r\n[Post-Chorus]\r\nNow I barely need ya (I barely need ya)\r\nDo what you do best and be alone\r\nGotta tell him, \"Rest in peace\"\r\nBet you thought I\'d die alone\r\nIt don\'t make sense to me\r\nBut I keep my head up high alone\r\nYou ain\'t even there for me\r\nBut now, you\'re scared to be alone\r\nAlone\r\nNow you scared to be alone', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:24:36'),
(49, 'Ride\r\n', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRide%20-%20Doja%20Cat.mp3?alt=media&token=b1204364-be28-4e1d-ad9e-6e59fc90f747', '03:26', 12, 4, 0, '', 0000, 0, 'Link', 0, '2022-01-05 18:55:11', '2022-01-12 01:33:14'),
(50, 'Cho mình em', '~/img/album/chominhem221920146.jpg', '~/audio/Cho Minh Em - Binz_ Den.mp3', '03:26', 12, 4, NULL, NULL, 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:33:43'),
(51, 'Trên Chuyến Xe Lên Đà Lạt Chiều Nay', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTren%20Chuyen%20Xe%20Len%20Da%20Lat%20Chieu%20Nay%20-%20To.mp3?alt=media&token=0c1b3de9-6a83-426a-99a6-50f2a61fd2ca', '03:53', 13, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:11:25', '2022-01-12 17:21:14'),
(52, 'Từ Những Thói Quen', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTu%20Nhung%20Thoi%20Quen%20-%20Toc%20Tien.mp3?alt=media&token=4070e2ff-4a24-4b68-bc7f-47041edfab8b', '04:14', 13, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:12:20', '2022-01-12 17:21:47'),
(53, 'Mình Yêu Đến Đây Thôi', '~/img/album/yeuroiyeuroi221940473.jpg', '~/audio/Minh Yeu Den Day Thoi - Toc Tien.mp3', '04:45', 13, 13, NULL, NULL, 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:01:31'),
(55, 'Thật Bất Ngờ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FThat%20Bat%20Ngo%20-%20Truc%20Nhan.mp3?alt=media&token=a2a2264e-c8e8-4156-bcf0-d03c68caf46e', '03:32', 14, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:13:28', '2022-01-12 17:19:44'),
(56, 'Vẽ (Electro Version)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FVe%20Electro%20Version_%20-%20Truc%20Nhan.mp3?alt=media&token=fc90949a-69b6-4062-8389-f179d194bcd1', '04:17', 14, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:13:45', '2022-01-12 17:23:33'),
(57, 'Bốn Chữ Lắm', '~/img/album/thatbatngo221952230.jpg', '~/audio/Bon Chu Lam - Truc Nhan_ Truong Nhi.mp3', '04:20', 14, 13, NULL, 'Yeu la dau, thuong la dau sao cho mong \r\nNguoi di ve dau van nho ve\r\nTinh la co khong khi nao.\r\nTay cam tay, thuong la thuong\r\nSao cho mong ngay mai ai biet ra sao\r\nNguoi co di xa tan phuong troi.\r\n\r\nNang trong mua tim nhau\r\nCho mot ngay yeu thuong la loi\r\nNoi cho nhau mot cau\r\nDe tung ngay ta thoi con trong ngong\r\nTrai tim thoi ngu yen\r\nDe tung dem ta say trien mien\r\nDe dem nay ngung troi\r\nMot minh anh noi day van thao thuc\r\n\r\nYeu lam...\r\nThuong lam... ma xa lam... dau lam...\r\nAi buon... Ai buon... Em buon... Vi ai\r\nYeu lam...\r\nThuong lam... ma xa lam... chu dau lam...\r\nAi cho... mong cho... em cho doi anh\r\nNa na na na na na na...', 2015, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:33:19'),
(58, 'Gieo Quẻ', '~/img/album/gieoque222006828.jpg', '~/audio/Gieo Que - Hoang Thuy Linh_ Den (1).mp3', '03:19', 15, 13, NULL, 'Thầy ơi\r\nCho con một quẻ xem bói đầu năm\r\nCon xin chắp tay nguyện cầu\r\nCung kính thành tâm\r\nNăm nay kinh tế thế nào?\r\nCông danh sự nghiệp ra sao?\r\nCho con biết ngay đi nào!!!\r\nChỉ riêng tình duyên thì con chẳng cần thầy phán ra\r\nTrời cho biết ngay thôi màaaa\r\nPhận duyên đến như món quà\r\nChờ mong tình yêu vội vàng rồi lại chẳng đến đâu\r\nThôi thì ta đừng âu sầu\r\nHẹn ngày sau sẽ gặp nhau!\r\nTình yêu đến như phép màu chẳng ai bói ra được đâu\r\nGặp nhau có duyên không hẹn\r\nTự nhiên ý hợp tâm đầu\r\nNgười ta ép mỡ ép dầu\r\nNào ai ép duyên được đâu\r\nTình yêu đến không mong cầu\r\nRồi mai có khi dài lâu woooh hoooo\r\nRồi mai có khi dài lâu woooh hoooo\r\n\r\nThầy ơi\r\nCho con một quẻ xem bói đầu năm\r\nCon xin chắp tay nguyện cầu\r\nCung kính thành tâm\r\nBao lâu chưa đi sang Hàn\r\nVisa con sắp hết hạn!\r\nCó đứa bạn nào đâm ngang\r\n“Nên mua đất hay mua vàng?”\r\nChỉ riêng tình duyên thì con chẳng cần thầy phán ra\r\nTrời cho biết ngay thôi màaaa\r\nPhận duyên đến như món quà\r\nChờ mong tình yêu vội vàng rồi lại chẳng đến đâu\r\nThôi thì ta đừng âu sầu\r\nHẹn ngày sau sẽ gặp nhau!\r\nTình yêu đến như phép màu chẳng ai bói ra được đâu\r\nGặp nhau có duyên không hẹn\r\nTự nhiên ý hợp tâm đầu\r\nNgười ta ép mỡ ép dầu\r\nNào ai ép duyên được đâu\r\nTình yêu đến không mong cầu\r\nRồi mai có khi dài lâu woooh hoooo\r\nRồi mai có khi dài lâu woooh hoooo\r\n\r\nCàng nhiều thứ trong đầu, càng nhiều điều nuối tiếc\r\nÍt đi điều mong cầu, lòng êm như suối biếc\r\nHôm qua đã xong rồi ngày mai thì khó biết\r\nCố gắng ngày hôm nay không gì là khó hết\r\nMuốn thì phải làm mà dịch ám đành phải lùi\r\nCòn sức còn khoẻ là còn mừng còn phải cười\r\nNhìn các cô chú đang chống dịch mòn cả người\r\nBớt than bớt thở, mình khổ một họ khổ mười\r\nNếu mà, nếu mà, nếu mà đợi\r\nĐời người chắc gì đã là đường bước được\r\nTương lai là thứ không bao giờ lường trước được\r\nĐi tìm điều tích cực để vui lên mà sống thì\r\nHướng nào cũng tốt, đường nào cũng thông', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:47:20'),
(59, 'Đúng Cũng Thành Sai', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FDung%20Cung%20Thanh%20Sai%20-%20My%20Tam.mp3?alt=media&token=e9f5b3ee-760a-43bf-8486-57a869eb161a', '04:47', 16, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:14:49', '2022-01-11 23:58:08'),
(60, 'Ánh Nắng Của Anh (Chờ em đến ngày mai OST)', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FAnh%20Nang%20Cua%20Anh%20-%20Duc%20Phuc.mp3?alt=media&token=609364a2-4671-43ac-87c4-68e566febcce', '04:24', 17, 13, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:15:08', '2022-01-11 23:18:15'),
(61, 'Wait There', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWait%20There%20-%20Yiruma.mp3?alt=media&token=c820e0b0-865b-4ad5-b128-87e8cac7e3ae', '04:55', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:51:41'),
(62, 'Tears On Love', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTears%20On%20Love%20-%20Yiruma.mp3?alt=media&token=c5987153-f082-422d-ab5b-c12e15ef637b', '04:11', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:52:55'),
(63, 'I', '~/img/defaultImg.png', '~/audio/I - Yiruma.mp3', '04:11', 39, 8, NULL, NULL, 2011, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:50:26'),
(64, 'May Be', '~/img/defaultImg.png', '~/audio/May Be - Yiruma.mp3', '04:01', 39, 8, NULL, NULL, 2011, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:00:39'),
(65, 'Love Me', '~/img/defaultImg.png', '~/audio/Love Me - Yiruma.mp3', '04:05', 39, 8, NULL, NULL, 2011, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:55:28'),
(66, 'River Flows In You', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRiver%20Flows%20In%20You%20-%20Yiruma.mp3?alt=media&token=216cfbed-4fc2-419b-9a1b-1bac3397b0b3', '03:08', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:56:43'),
(67, 'It\'s Your Day', '~/img/defaultImg.png', '~/audio/It_s Your Day - Yiruma.mp3', '03:41', 39, 8, NULL, NULL, 2011, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:51:49'),
(68, 'When The Love Falls', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWhen%20The%20Love%20Falls%20-%20Yiruma.mp3?alt=media&token=0140bd4a-d7d9-44de-921a-22cfc9d1db3f', '03:17', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:57:12'),
(69, 'Passing By', '~/img/defaultImg.png', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPassing%20By%20-%20Yiruma.mp3?alt=media&token=ae3d0cd3-f0af-4ab8-9c10-d7d62df9543e', '04:36', 39, 8, NULL, NULL, 2011, NULL, 'Link', 0, '0000-00-00 00:00:00', '2022-01-12 21:57:30'),
(70, 'Do You', '~/img/defaultImg.png', '~/audio/Do You - Yiruma.mp3', '04:09', 39, 8, NULL, NULL, 2011, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:37:36'),
(71, 'Frozen', '~/img/album/navida222051714.jpg', '~/audio/Frozen - Natti Natasha.mp3', '03:40', 19, 9, NULL, '[Intro]\r\nOh-oh\r\nYeah\r\nJaja\r\nCame on the beat\r\nYeah\r\n\r\n[Pre-Coro]\r\nCon to\' mi\' shortie\' en el club\r\nTanto hielo en el cuello que lo tengo frozen (Frozen)\r\nGuarden lo\' palo\' y la\' Glock\r\nPero el que se lamba, ustede\' ya han visto como tose (Blow)\r\nYa tú sabe\' (Rra)\r\nTanta gente en el VIP, má\' nadie cabe\r\nAlfombra roja cuando me bajo en la nave (Wuh)\r\nLlegamo\' y la disco la trancamo\' bajo llave (Wuh, wuh)\r\n\r\n[Coro]\r\nMe conocen como la killa (Yah)\r\nRra-pa-pam-pam, rompan fila (Rra)\r\nMoviendo mi pum-pum cuando suena el bum-bum\r\nDe piquеte yo tengo pila (Rra), yieh\r\n\r\n[Verso 1]\r\nDéjatе llevar, combina el pinky ring con el Audemars\r\nPiquete (Wuh) que nadie me puede tumbar\r\nEn una noche gasto lo que tú te hace\' anual y\r\nAsí quieren frontear\r\nCon carro\' y prenda\' no pueden costear (Yeah), yeah\r\nYa di la señal, solo un fantasmeo y te va\' a acostar (Rrah)\r\n\r\n[Refrán]\r\nY aquí no le bajamo\', activo\' andamo\' (Oh)\r\nDonde sea fronteamo\', la funda gastamo\'\r\nBaby, aquí no le bajamo\', activo\' andamo\' (Blow)\r\nDonde sea fronteamo\', la funda gastamo\', baby (Ey, yeh)\r\n\r\n[Pre-Coro]\r\nCon to\' mi\' shortie\' en el club\r\nTanto hielo en el cuello que lo tengo frozen (Frozen)\r\nGuarden lo\' palo\' y la\' Glock\r\nPero el que se lamba, ustede\' ya han visto como tose (Blow)\r\nYa tú sabe\' (Rra)\r\nTanta gente en el VIP, má\' nadie cabe (Bonfire)\r\nAlfombra roja cuando me bajo en la nave\r\nLlegamo\' y la disco la trancamo\' bajo llave\r\n\r\n[Coro]\r\nMe conocen como la killa (Wuh)\r\nRra-pa-pam-pam, rompan fila (Rra)\r\nMoviendo mi pum-pum cuando suena el bum-bum (Yeah)\r\nDe piquete yo tengo pila (Rra), yieh\r\n\r\n[Verso 2]\r\nA mí las cabra\' nadie me mete (Nope)\r\nSiempre fresh de la cabeza a los gavete\'\r\nRopa de diseñador, si no es Louis, Christian Dior\r\nRecuerdan no e\' hacer compra\', es cargar los paquete\' (Ja)\r\nHoy yo respaldo (Yeh), todo lo que yo predigo y cuando salgo (Sí)\r\nGasto má\' de cinco dígito\' al encargo, ey\r\nLo mío e\' mío y todo es saldo (Saldo)\r\n\r\n[Refrán]\r\nY aquí no le bajamo\', activo\' andamo\' (Yah)\r\nDonde sea fronteamo\', la funda gastamo\'\r\nBaby, aquí no le bajamo\', activo\' andamo\'\r\nDonde sea fronteamo\', la funda gastamo\', baby (Yah)\r\n\r\n[Pre-Coro]\r\nCon to\' mi\' shortie\' en el club\r\nTanto hielo en el cuello que lo tengo frozen (Frozen)\r\nGuarden lo\' palo\' y la\' Glock\r\nPero el que se lamba, ustede\' ya han visto como tose (Blow)\r\nYa tú sabe\'\r\nTanta gente en el VIP, má\' nadie cabe\r\nAlfombra roja cuando me bajo en la nave (Wuh)\r\nLlegamo\' y la disco la trancamo\' bajo llave\r\n\r\n[Coro]\r\nMe conocen como la killa (Killa)\r\nRra-pa-pam-pam, rompan fila (Rra)\r\nMoviendo mi pum-pum cuando suena el bum-bum (Yeah)\r\nDe piquete yo tengo pila (Romp), yieh\r\n\r\n[Outro]\r\nYeah\r\nNatti Nat\r\nNatti Nat\r\nYeah\r\nBajamo\', activo\' andamo\'\r\nDonde sea fronteamo\', la funda gastamo\'', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:46:58'),
(72, 'Imposible Amor', '~/img/album/navida222051714.jpg', '~/audio/Imposible Amor - Natti Natasha_ Maluma.mp3', '02:53', 19, 9, NULL, '[Intro: Natti Natasha]\r\nAhora quieres hacerte la victima aquí\r\nQué mal te queda ese papel\r\nOlvidando lo que hiciste ayer\r\nAhora pretendes humillarte ante mí\r\n¿Cuál de tus caras me habla?\r\nA ti no te creo nada\r\n\r\n[Coro: Natti Natasha & Maluma]\r\nEs imposible cambiarte\r\nY no pretendo que lo hagas por mí\r\nDime quipen soy para juzgarte\r\nCabrón se nace, no se hace, baby\r\nEs imposible cambiarme\r\nAsí que fue que te enamoraste demí\r\nNo vеngas hoy a juzgarme\r\nSi he sido así desdе que te conocí\r\n\r\n[Verso 1: Maluma]\r\nBájale a tu grita\'era, mira que no me como a cualquiera (Ajá)\r\nNo \'toy en ese flow de safaera\r\nYo sé que la cagué y te diste cuenta en la tercera\r\nSi lo piensas bien, no son tantas muertes en la guerra\r\nPor favor no te vayas, si quiere\' me engañas\r\nAsí te cobras to\' lo malo que hice contigo (Baby)\r\nNo me metas cizaña, conozco tus maña\'\r\nPor un par de culitos no hagas tanto lío\r\nDiscúlpame por ser como soy, acéptame\r\nDices que me odia\', pero sé que me amas\r\nSi soy el error, soy el que más te encanta\r\n\r\n[Coro: Natti Natasha & Maluma]\r\nEs imposible cambiarte\r\nY no pretendo que lo hagas por mí\r\nDime quipen soy para juzgarte\r\nCabrón se nace, no se hace, baby\r\nEs imposible cambiarme\r\nAsí que fue que te enamoraste demí\r\nNo vengas hoy a juzgarme\r\nSi he sido así desde que te conocí\r\n\r\n[Verso 2: Natti Natasha]\r\nPor esa puerta me voy y más nunca vuelvo (No)\r\nOlvídate de mi sabor y los beso\' en mi cuello\r\nSé que te vale tres carajos esta despedida\r\nHay mala sangre, tú no cambias ni porque Dios te lo pida (No, oh)\r\nY te queda bien, hierba mala nunca muere, siempre sabe bien (Yeah)\r\nTú solo ere\' un niño jugando a ser hombre\r\nCuando se lo metas a otra gritarás mi nombre (Natti Nat), nombre (Natti Nat)\r\n\r\n[Coro: Natti Natasha & Maluma]\r\nEs imposible cambiarte\r\nY no pretendo que lo hagas por mí\r\nDime quipen soy para juzgarte\r\nCabrón se nace, no se hace, baby\r\nEs imposible cambiarme\r\nAsí que fue que te enamoraste demí\r\nNo vengas hoy a juzgarme\r\nSi he sido así desde que te conocí\r\n\r\n[Outro: Maluma]\r\nMaluma, baby\r\nNatti Nat\r\nNatti Nat', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:51:27'),
(73, 'Noches En Miami', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNoches%20En%20Miami%20-%20Natti%20Natasha.mp3?alt=media&token=37af1cf3-a6b7-4a1d-93b1-722ecf6594e7', '02:34', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:20:58', '2022-01-12 01:29:54'),
(74, 'Antes Que Salga El Sol', '~/img/album/navida222051714.jpg', '~/audio/Antes Que Salga El Sol - Natti Natasha_.mp3', '03:04', 19, 9, NULL, '[Intro: Prince Royce & Natti Natasha]\r\nTan hermosa que te ves (Yeah-yeah)\r\nComo la primera vez (Yeah)\r\nYo no te he dejado de pensar\r\nY yo sé que te pasa igual\r\nQué bonito es volverte a encontrar\r\nExtrañaba esos besos y contigo bailar, mmm\r\n\r\n[Coro: Natti Natasha & Prince Royce]\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\n\r\n[Post-Coro: Natti Natasha & Prince Royce]\r\nOh-oh-oh-oh-oh\r\nPero aún así\r\nEh-eh-eh-eh-eh\r\n\r\n[Verso 1: Natti Natasha]\r\nTú no va\' a comerte una como yo never\r\nYo te pienso en casa solita y má\' si llueve\r\nEste cuerpo e\' tuyo, aquí lo tiene\'\r\nDale, ven pa\'cá, que par de beso\' tú me debe\'\r\nPa\' hacerte esa\' cosita\' de la\' que te gustaba\'\r\nPapi, contigo era todo o nada\r\nVamo\' a repetir lo que ya sabe la almohada\r\nEra exactamente como te lo imaginaba\'\r\n\r\n[Coro: Natti Natasha & Prince Royce]\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\n\r\n[Post-Coro: Natti Natasha & Prince Royce]\r\nOh-oh-oh-oh-oh\r\nPero aún así\r\nEh-eh-eh-eh-eh\r\n\r\n[Verso 2: Prince Royce]\r\nY es que volver a tener otra noche contigo\r\nEs como volver a encontrar el amor que perdimos\r\nComo en viejos tiempos, te digo\r\nNo puedo mirarte con ojos de amigos\r\nVoy a hacerte cosita\' de esa\' que te gustaban\r\nNatti, contigo no me falta nada\r\nDame un beso de eso\' que me dure una semana\r\nMami, esto e\' pa\' hoy, que yo no sé mañana\r\n\r\n[Coro: Natti Natasha & Prince Royce]\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así\r\n\r\n[Outro: Prince Royce & Natti Natasha, Ambos]\r\nOh-oh-oh-oh-oh\r\nRoyce\r\nNatti Nat, yeah\r\nEh-eh-eh-eh\r\nAntes que salga el sol por la mañana\r\nLlevemo\' la fiesta a la cama\r\nEres todo lo opuesto a mí\r\nPero aun así, pero aun así', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:26:17'),
(75, 'No Quiero Saber', '~/img/album/navida222051714.jpg', '~/audio/No Quiero Saber - Natti Natasha.mp3', '02:49', 19, 9, NULL, '[Coro]\r\nNo quiero saber si con otra mujer tú me fuiste infiel\r\nSi todavía me amas o lo haces por placer (Por placer)\r\nTen claro que pa\'trás tú no va\' a volver\r\nEs a ti el que le va a doler cuando me veas con él (Con él)\r\n\r\n[Verso 1]\r\nNo quiero saber nada (No), ni de ella ni de ti\r\nAhora ando desacatá\' (Ey, ey), rulin por ahí (Yah, yah)\r\nTodo\' los día\' en ya te dejo es pa\'l VIP (Wuh)\r\nIgnorando la\' llamada\', tú loco \'tás de mí (Jajaja)\r\nPensaste que yo estaba envuelta (Nope)\r\nY mira en un segundo te cambia la vuelta (Bonfirе, yah)\r\nEl que tenga tiendas quе la\' atienda (Dile, dile)\r\nYo soy Natti, papi, la real jodienda\r\n\r\n[Pre-Coro]\r\nSolo quedó mi perfume pega\'o en tu almohada\r\nYa extrañas mis besos\r\nQue no te dé por eso, no espere\' mi regreso (No, no, no, regreso)\r\n\r\n[Coro]\r\nNo quiero saber si con otra mujer tú me fuiste infiel\r\nSi todavía me amas o lo haces por placer (Haces por placer)\r\nTen claro que pa\'trás tú no va\' a volver\r\nEs a ti el que le va a doler cuando me veas con él (Con él)\r\n\r\n[Verso 2]\r\nAhora te toca sufir, dale, papi, aguanta\r\nYa lo de ella está en camino, se lo lleva el karma\r\nTú sabe\' que en tu cama yo soy la que manda\r\nTengo explota\'o el DM, a mí suelta me mandan (Dile, dile)\r\nYa no soy tu Natti, Natti (Natti, Natti), to\' los día\' de party (Día\' de party)\r\nUno me busca en el Lambo, otro en el Ferrari (Yeah, el Ferrari)\r\nTú no tiene\' torque pa\' frontear con esta mami (Esta mami)\r\nNi una que en la intimidad, te cuasa una tsunami (Sup, tsunami)\r\n\r\n[Pre-Coro]\r\nSolo quedó mi perfume pega\'o en tu almohada\r\nYa extrañas mis besos\r\nQue no te dé por eso, no espere\' mi regreso (Regreso)\r\n\r\n[Coro]\r\nNo quiero saber si con otra mujer tú me fuiste infiel\r\nSi todavía me amas o lo haces por placer (Haces por placer)\r\nTen claro que pa\'trá tú no va\' a volver\r\nEs a ti el que le va a doler cuando me veas con él (Con él)\r\nNo quiero saber si con otra mujer tú me fuiste infiel (Infiel)\r\nSi todavía me amas o lo haces por placer (Haces por placer)\r\nTen claro que pa\'trás tú no va\' a volver\r\nEs a ti el que le va a doler cuando me veas con él (Con él)\r\n\r\n[Outro]\r\nNatti Nat\r\nNatti Nat\r\nPina Records, yeah\r\nYeah, yah, ay, good gyal', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:16:03'),
(76, 'Ram Pam Pam', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRam%20Pam%20Pam%20-%20Natti%20Natasha_%20Becky%20G.mp3?alt=media&token=76f80db8-d788-4b69-9f92-6ce22036749a', '03:20', 19, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:21:58', '2022-01-12 01:32:59'),
(77, 'Todo De Ti', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTodo%20De%20Ti%20-%20Rauw%20Alejandro.mp3?alt=media&token=5bde3e3c-2c7c-49ef-9585-bb8b8b6ea31b', '03:19', 20, 9, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:23:46', '2022-01-13 00:41:24'),
(78, 'Sexo Virtual', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FSexo%20Virtual%20-%20Rauw%20Alejandro.mp3?alt=media&token=e858bfb9-ca0f-4baa-9cbc-365fc39a014e', '03:28', 20, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:24:12', '2022-01-12 17:18:37'),
(79, 'Nubes', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNubes%20-%20Rauw%20Alejandro.mp3?alt=media&token=007bf50d-5e85-4b21-af6d-15bef56cb9a2', '02:58', 20, 9, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:25:05', '2022-01-12 01:30:25'),
(80, 'Track 4', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTrack%204%20-%20Rauw%20Alejandro.mp3?alt=media&token=a43a4f92-6663-48ea-ac46-c10707e1d1b9', '03:48', 20, 9, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:25:24', '2022-01-13 00:41:21'),
(81, 'Bambi', '~/img/album/sling222129080.jpg', '~/audio/Bambi - Clairo.mp3', '04:37', 21, 15, NULL, 'I\'m stepping inside a universe\r\nDesigned against my own beliefs\r\nThey\'re toying with me, and tapping their feet\r\nThe work\'s laid out, cut out to the seams\r\nIt\'s not that I crave any more company\r\nI\'d like to say, say a few things\r\nClearing your throat, while I count to three\r\nKeep hold of my hand\r\nWe both know I can leave\r\n\r\nI don\'t like to cry before I know why\r\nBut honestly, I might\r\nYou pick a new fight, wiping tears from the night\r\nBlue ribbon ties while emotions are high\r\nI told all my friends\r\nThey were glad to see\r\nSat in a circle in front of my Claud\'s tapestry\r\nIn a dorm less than three minutes to drive\r\nWe both can always\r\n\r\n\"Take it or leave it\r\nThe moment\'s here and you should believe it\"\r\nKnow that you should\r\nI pull until I\'m left with the burns\r\nBlisters and the dirt left in between my fingers\r\nRushing so I can beat the line\r\nBut what if all I want is conversation and time?\r\nI move so I don\'t have to think twice\r\nI drift and float through counties with my one-sided climb\r\n\r\nOnce I make a choice to move forward, I\'ll take\r\nI\'ll take a picture for your locker', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:28:13');
INSERT INTO `song` (`song_id`, `title`, `img_url`, `path`, `duration`, `album_id`, `genre_id`, `track_no`, `lyrics`, `date_release`, `views`, `upload_type`, `featured`, `created_at`, `updated_at`) VALUES
(82, 'Amoeba', '~/img/album/sling222129080.jpg', '~/audio/Amoeba - Clairo.mp3', '03:48', 21, 15, NULL, '[Verse 1]\r\nBetween the gaps, I was swimming laps\r\nGot close to some epiphany\r\nI\'ll convince a friend to join deep ends\r\nHave your toes touch the lack of cement\r\n\r\n[Pre-Chorus]\r\nGather to one corner of the woods\r\nEcho chambers inside a neighborhood\r\nAnd centerfold, humility shown\r\nYou\'re not as good as what your mama\'s sewn\r\n\r\n[Chorus]\r\nAren\'t you glad that you reside in a Hell and in disguise?\r\nNobody yet everything, a pool to shed your memory\r\nCould you say you even tried?\r\nYou haven\'t called your family twice\r\nI can hope tonight goes diffеrently\r\nBut I show up to the party just to leavе\r\n\r\n[Verse 2]\r\nBetween the gaps, keep it under wraps\r\nHow I got to some epiphany\r\nI\'ll convince myself when it turns to twelve\r\nThe photos keep the sentiment\r\n\r\n[Pre-Chorus]\r\nGather to one corner of the woods\r\nEcho chambers inside a neighborhood\r\nAnd centerfold, humility shown\r\nYou\'re not as good as what your mama\'s sewn\r\n\r\n[Chorus]\r\nAren\'t you glad that you reside in a Hell and in disguise?\r\nNobody yet everything, a pool to shed your memory\r\nCould you say you even tried?\r\nYou haven\'t called your family twice\r\nI can hope tonight goes differently\r\nBut I show up to the party just to leave\r\n\r\n[Instrumental Break]\r\n\r\n[Outro]\r\nPulling back I tried to find\r\nThe point of wasting precious time\r\nI sip and toast to normalcy\r\nA fool\'s way into jealousy\r\nI mock and imitate goodbyes\r\nWhen I know that I can\'t deny\r\nThat I\'ll be here forever while\r\nI show up to the party just to leave', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:25:29'),
(83, 'Partridge', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPartridge%20-%20Clairo.mp3?alt=media&token=8eb20a05-4e94-4055-826a-791ea188ddc0', '03:13', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:28:09', '2022-01-12 01:30:43'),
(84, 'Zinnias', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FZinnias%20-%20Clairo.mp3?alt=media&token=d1880c68-d187-4fbb-a1e5-4d60a1f57bb4', '02:54', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:28:30', '2022-01-12 21:31:50'),
(85, 'Blouse', '~/img/album/sling222129080.jpg', '~/audio/Blouse - Clairo.mp3', '04:47', 21, 15, NULL, '[Verse 1]\r\nHere we are, quiet at your kitchen table\r\nWith courtesy to little pet peeves\r\nNapkins on laps, the strands pulled back\r\nI hang the scarf in my mom\'s inner rack\r\n\r\n[Chorus]\r\nWhy do I tell you how I feel\r\nWhen you\'re just looking down your blouse?\r\nIt\'s something I wouldn\'t say out loud\r\nIf touch could make them hear, then touch me now\r\nIf touch could make them hear, then touch me now\r\n\r\n[Verse 2]\r\nTalking to some who laugh and others scorned\r\nI guess humor could help me after all\r\nIt\'s funny, now I\'m just useless and a whore\r\nBut I\'ll get a cosign from your favorite one-man show\r\n\r\n[Chorus]\r\nWhy do I tell you how I feel\r\nWhen you\'re too busy looking down my blouse?\r\nIt\'s something I wouldn\'t say out loud\r\nIf touch could make them hear, then touch me now\r\nIf touch could make them hear, then touch me now\r\nIf touch could make them hear, then touch me now\r\nNow\r\n\r\n[Outro]\r\nMmm, mmm, mmm\r\nMhm, mhm, mhm, mmm\r\nMmm, mhm, mhm, mhm\r\nMmm, mhm, mhm, mhm', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:28:46'),
(86, 'Wade', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FWade%20-%20Clairo.mp3?alt=media&token=c7ba4ae6-b08b-460c-b623-b086159bed91', '04:47', 21, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:29:01', '2022-01-12 17:24:04'),
(87, 'Harbor', '~/img/album/sling222129080.jpg', '~/audio/Harbor - Clairo.mp3', '04:24', 21, 15, NULL, 'Okay, I\'m finished now\r\nAnd I kept my faith for long enough\r\nAnd I hope I\'m old and fairly sober\r\nIf I\'m let down\r\n\r\nMaybe you keep me around\r\nFor the constant affirmations\r\nWhile I scrounge for understanding\r\nAnd fall out\r\n\r\nI\'ll let you win and I\'ll let you tie\r\nThe ribbon to my hair\r\nJust so that we could come back to this\r\nIf we really cared\r\nThe morning gates stay open\r\nIf you had a thought that I\'d be there\r\nOh, I\'d be there\r\n\r\nOoh, ooh\r\nOoh\r\n\r\nKnow we could use a break\r\nBecause I can\'t feel my feet\r\nCarried you all the way upstairs\r\nSo you can sleep and I can think\r\n\r\nStand guard when I am near\r\nClinging on to everything you fear\r\nKeeping mе close while you hold me out and say\r\n\"I don\'t lovе you that way\"\r\n\r\nHarbor myself away from everyone else\r\nI\'m half-awake and intimate\r\nEyes closed and I\'ll commit\r\nWhat I wish I had with you\r\nI\'ll pretend until it\'s true\r\nI don\'t love you that way\r\n\r\nSwallow the pill, it\'s only fair that I hear\r\nKnow myself better than I have in years\r\nI don\'t know why I have to defend what I feel\r\nI try\r\n\r\nStand your guard when I am near\r\nLoathe me until you\'re reminded of the deal\r\nOne of us knows when you hold me out and say\r\nYou don\'t love me that way', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:49:50'),
(88, 'Just for today', '~/img/album/sling222129080.jpg', '~/audio/Just For Today - Clairo.mp3', '03:37', 21, 15, NULL, '[Verse 1]\r\nHonestly, I didn\'t think I\'d end up here this time\r\nOr anywhere at all, I\'m distant just enough to never fall behind\r\nPicturing the saddest scene of wearing bedsheets\r\nAnd two pats on the back, \"It just takes time\"\r\nIt\'s getting late\r\nSince when did taking time take all my life? Mm-mm\r\n\r\n[Chorus]\r\nMommy, I\'m afraid I\'ve been talking to the hotline again\r\nIt\'s stirring, but the ripples always seek out the ones who carry me, me\r\n\r\n[Verse 2]\r\nI blocked out the month of February for support\r\nAt least I have this year, I won\'t bе worrying anyone on tour, mm-mm\r\nAs we speak, I\'m hеre to meet devils for tea\r\nPeering \'round the corner of my life\r\nI throw my drink into the faces of my demise, mm-mm\r\n\r\n[Chorus]\r\nAt thirty, your honey\'s gonna ask you, \"What the hell is wrong with me?\"\r\nAnd finally, an answer from your throat comes crawling\r\nAnd you can proceed', 2021, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:52:52'),
(89, 'Một thời để nhớ', '~/img/album/chotoilangthang222145787.jpg', '~/audio/Mot Thoi De Nho - Den_ Ngot.mp3', '03:54', 22, 15, NULL, 'Hỡi cánh chim bay lưng trời! hỡi ánh mây trôi xa vời\r\nNhững lúc lang thang chân trời ai có nhớ.\r\n\r\nNhững bóng cây xanh sân trường\r\nGhế đá vấn vương ai chờ\r\nBóng nắng ngẩn ngơ bây giờ, ai nhớ ai?\r\n\r\nVề thăm trường xưa nhớ cơn mưa năm nào\r\nNhìn sân trường xưa nhớ lúc bên nhau.\r\n\r\n[ĐK:]\r\nNhững tháng năm bây giờ, đã phôi pha không ngờ\r\nNhững ước mơ tuổi hồng, sao không nhớ\r\nNhững tháng năm mong chờ, đã trôi qua bao giờ\r\nNhững tháng năm tuổi hồng, bao ước mơ.', 2017, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 10:13:38'),
(90, 'Cho Tôi Lang Thang', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FCho%20Toi%20Lang%20Thang%20-%20Ngot_%20Den.m4a?alt=media&token=a74e63ac-d92f-4df5-be44-b4cd6ead89e1', '04:18', 22, NULL, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:31:40', '2022-01-11 23:51:50'),
(91, 'Ướt Mi', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FUot%20Mi%20-%20Le%20Quyen.mp3?alt=media&token=e0d89d55-1ae0-4a27-b265-b766c9a4b24b', '04:38', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:32:13', '2022-01-12 17:22:01'),
(92, 'Ru Em Từng Ngón Xuân Nồng', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRu%20Em%20Tung%20Ngon%20Xuan%20Nong%20-%20Le%20Quyen.mp3?alt=media&token=12a38b20-ca96-437d-9475-3e91cd457b7e', '04:58', 23, 12, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:32:32', '2022-01-13 00:41:10'),
(93, 'Ru Đời Đi Nhé', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FRu%20Doi%20Di%20Nhe%20-%20Le%20Quyen.mp3?alt=media&token=c5d12928-ef60-4838-883b-6097539ff4ec', '04:39', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:32:57', '2022-01-12 01:33:49'),
(94, 'Phôi Pha', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FPhoi%20Pha%20-%20Le%20Quyen.mp3?alt=media&token=40ac6813-cf18-42ca-9db8-91b6ac19617c', '04:29', 23, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:33:14', '2022-01-12 01:32:35'),
(95, 'Gọi Tên Bốn Mùa', '~/img/album/tinhkhuctrinhcongsonlequyen222203049.jpg', '~/audio/Goi Ten Bon Mua - Le Quyen.mp3', '04:21', 23, 12, NULL, '1. Em đứng lên gọi mưa vào Hạ\r\nTừng cơn mưa từng cơn mưa\r\nTừng cơn mưa mưa thì thầm dưới chân ngà\r\nEm đứng lên mùa Thu tàn tạ\r\nHàng cây khô cành bơ vơ\r\nHàng cây đưa em đi về giọt nắng nhấp nhô.\r\n\r\nEm đứng lên mùa Đông nhạt nhoà\r\nTừng đêm mưa từng đêm mưa\r\nTừng đêm mưa mưa lạnh từng ngón sương mù\r\nEm đứng lên mùa Xuân vừa mở\r\nNụ xuân xanh cành thênh thang\r\nChim về vào ngày tuổi em trên cành bão bùng.\r\n\r\n[ĐK:]\r\nRồi mùa Xuân không về, mùa Thu cũng ra đi\r\nMùa Đông vời vợi, mùa Hạ khói mây\r\nRồi từ nay em gọi, tình yêu dấu chim bay\r\nGọi thân hao gầy, gọi buồn ngất ngây.\r\n\r\n2. Ôi tóc em dài đêm thần thoại\r\nVùng tương lai chợt xa xôi\r\nTuổi xuân ơi sao lạnh dòng máu trong người\r\nNghe xót xa hằn lên tuổi trời\r\nTrẻ thơ ơi trẻ thơ ơi\r\nTin buồn từ ngày mẹ cho mang nặng kiếp người.', 2018, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:48:39'),
(96, 'Cát Bụi', '~/img/album/tinhkhuctrinhcongson222214158.jpg', '~/audio/Cat Bui - Khanh Ly.mp3', '03:28', 24, 12, NULL, '1. Hat bui nao hoa kiep than toi\r\nDe mot mai vuon hinh hai lon day\r\nOi cat bui tuyet voi\r\nMat troi soi mot kiep rong choi.\r\n\r\nHat bui nao hoa kiep than toi\r\nDe mot mai toi ve lam cat bui\r\nOi cat bui met nhoai\r\nTieng dong nao go nhip khong nguoi.\r\n\r\n[DK:]\r\nBao nhieu nam lam kiep con nguoi\r\nChot mot chieu toc trang nhu voi\r\nLa ua tren cao rung day\r\nCho tram nam vao chet mot ngay.\r\n\r\n2. Mat troi nao soi sang tim toi\r\nDe tinh yeu xay mon thanh da cuoi\r\nXin up mat bui ngui\r\nTung ngay qua moi ngong tin vui.\r\n\r\nCum rung nao la xac xo cay\r\nTu vuc sau nghe loi moi da day\r\nOi cat bui phan nay\r\nVet muc nao xoa bo khong hay.', 1974, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:35:42'),
(97, 'Nối Vòng Tay Lớn', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FNoi%20Vong%20Tay%20Lon%20-%20Khanh%20Ly.mp3?alt=media&token=4217034e-714f-490c-90f4-5ebe9f53566f', '03:08', 24, 12, 0, '', 0000, 0, 'Link', 1, '2022-01-05 19:34:17', '2022-01-13 00:41:14'),
(98, 'Thương Một Người ', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FThuong%20Mot%20Nguoi%20-%20Khanh%20Ly.mp3?alt=media&token=2bc920ee-c556-42d7-b6b1-35653cd5e64b', '05:43', 24, 12, 0, '', 0000, 0, 'Link', 0, '2022-01-05 19:34:45', '2022-01-12 17:20:00'),
(99, 'Diễm Xưa', '~/img/album/tinhkhuctrinhcongson222214158.jpg', '~/audio/Diem Xua - Khanh Ly.mp3', '03:31', 24, 12, NULL, '1. Mua van mua bay, tren tang thap co\r\nDai tay em may thuo mat xanh xao\r\nNghe la thu mua reo mon got nho\r\nÐuong dai hun hut cho mat them sau.\r\n\r\nMua van hay mua tren hang la nho\r\nBuoi chieu ngoi ngong nhung chuyen mua qua\r\nTren buoc chan em, am tham la do\r\nChot hon xanh buot cho minh xot xa.\r\n\r\n[DK:]\r\nChieu nay con mua sao em khong lai \r\nNho mai trong con dau vui\r\nLam sao co nhau, han len noi dau\r\nBuoc chan em xin ve mau.\r\n\r\n2. Mua van hay mua, cho doi bien dong\r\nLam sao em nho nhung vet chim di\r\nXin hay cho mua qua mien dat rong\r\nÐe nguoi phieu lang quen minh lang du.\r\n\r\n[Coda:]\r\nMua van hay mua, cho doi bien dong\r\nLam sao em biet bia da khong dau\r\nXin hay cho mua qua mien dat rong\r\nNgay sau soi da cung can co nhau\r\nNgay sau soi da cung can co nhau.', 1974, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 09:37:10'),
(100, 'Tình Xa', '', 'https://firebasestorage.googleapis.com/v0/b/l2mplayer-ce45f.appspot.com/o/Audio%2FTinh%20Xa%20-%20Khanh%20Ly.mp3?alt=media&token=051c9f02-34ec-456f-8a5f-4728de2b754e', '05:53', 24, 12, 0, 'Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người  Mừng ngày Tết trên khắp quê tôi  Ngàn hoa thơm khoa sắc xinh tươi  Đàn em thơ khoe áo mới  Chạy tung tăng vui pháo hoa  Mừng ngày Tết trên khắp quê tôi  Người ra Trung, ra Bắc, vô Nam  Dù đi đâu ai cũng nhớ  Về chung vui bên gia đình  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người  Mừng ngày Tết phố xá đông vui  Người đi thăm, đi viếng, đi chơi  Người lo đi mua sắm Tết  Người dâng hương đi lễ chùa  Mừng ngày Tết ta chúc cho nhau  Một năm thêm sung túc an vui  Người nông dân thêm lúa thóc  Người thương gia mau phát tài  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết Tết Tết Tết đến rồi  Tết đến trong tim mọi người', 0000, 0, 'Link', 0, '2022-01-05 19:35:37', '2022-01-12 17:20:30'),
(101, 'đfdf', '~/img/song/nhacphim224411797.png', '~/audio', '3:25', NULL, 5, NULL, '<p>sdfdfsf</p>', NULL, NULL, 'Link', 0, '2022-01-07 12:44:11', '2022-01-07 19:44:11'),
(102, 'Yoon Mi Rae', '~/img/defaultImg.png', '~/audio/Always - Yoon Mi Rae.mp3', '3:25', 38, 5, NULL, NULL, 2016, NULL, 'Audio', 0, '0000-00-00 00:00:00', '2022-01-13 08:31:15');

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
(1, 'admin', '18520992@gm.edu.vn', 'admin123', 'Admin', '~/img/user/Clairo225430359.jpg', 1, 'local', '2022-01-06 01:28:49', '2022-01-13 07:46:48'),
(2, 'linhlinh', 'ngoclinhhhh1442@gmail.com', 'E10ADC3949BA59ABBE56E057F20F883E', 'Admin', '~/img/user/FB_IMG_1521808252122220106684.jpg', 0, 'local', '0000-00-00 00:00:00', '2022-01-13 08:01:06');

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
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `artist_album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `artist_song`
--
ALTER TABLE `artist_song`
  MODIFY `artist_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
