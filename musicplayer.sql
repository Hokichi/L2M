-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 03:50 AM
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
  `date_release` int(4) DEFAULT NULL,
  `type` enum('album','ep','single') COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `title`, `img_url`, `date_release`, `type`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Nhạc thiếu nhi Xuân Mai tuyển chọn', '', 2003, 'album', 0, '2022-01-02 15:41:58', '2022-01-06 09:36:35'),
(2, 'Con Cò Bé Bé Vol.3', '', 2004, 'album', 0, '2022-01-02 15:42:10', '2022-01-06 09:36:40'),
(3, 'M-TP', '', 2017, 'album', 0, '2022-01-02 15:42:24', '2022-01-06 09:36:45'),
(4, 'SQUARE ONE', '', 2016, 'ep', 0, '2022-01-02 15:42:37', '2022-01-06 09:36:56'),
(5, '30 (Deluxe Edition)', '', 2021, 'album', 0, '2022-01-02 15:42:46', '2022-01-06 09:37:00'),
(6, 'Tình Khôn Nguôi', '', 2019, 'album', 0, '2022-01-02 15:42:57', '2022-01-06 09:37:03'),
(7, 'Đôi Mắt Người Xưa', '', 2010, 'album', 0, '2022-01-02 15:43:09', '2022-01-06 09:37:07'),
(8, 'Mang tiền về cho mẹ (Single)', '', 2021, 'single', 0, '2022-01-02 17:56:01', '2022-01-06 09:37:13'),
(9, 'Show Của Đen (Live 2019)', '', 2020, 'album', 0, '2022-01-02 17:56:16', '2022-01-06 09:37:17'),
(10, 'Montero', '', 2021, 'album', 0, '2022-01-02 17:56:23', '2022-01-06 09:37:20'),
(11, 'Planet Her (Deluxe Edition)', '', 2021, 'album', 0, '2022-01-02 17:56:29', '2022-01-06 09:37:24'),
(12, 'Cho mình em (Single)', '', 2021, 'single', 0, '2022-01-02 17:56:36', '2022-01-06 09:37:28'),
(13, 'Yêu Rồi Yêu Rồi Yêu - EP', '', 2021, 'ep', 0, '2022-01-05 18:58:52', '2022-01-06 09:37:31'),
(14, 'Thật Bất Ngờ', '', 2016, 'album', 0, '2022-01-05 19:00:06', '2022-01-06 09:37:35'),
(15, 'Gieo Quẻ (Casting Coin) (Single)', '', 2022, 'single', 0, '2022-01-05 19:00:24', '2022-01-06 02:00:24'),
(16, 'Đúng Cũng Thành Sai (Single)', '', 2020, 'single', 0, '2022-01-05 19:00:36', '2022-01-06 02:00:36'),
(17, 'Ánh Nắng Của Anh (Single)', '', 2016, 'single', 0, '2022-01-05 19:00:56', '2022-01-06 02:00:56'),
(18, 'The Very Best of Yiruma: Yiruma & Piano (CD1)', '', 2011, 'album', 0, '2022-01-05 19:01:53', '2022-01-06 02:01:53'),
(19, 'Nattividad', '', 2021, 'album', 0, '2022-01-05 19:02:16', '2022-01-06 02:02:16'),
(20, 'Vice Versa', '', 2021, 'album', 0, '2022-01-05 19:02:28', '2022-01-06 02:02:28'),
(21, 'Sling', '', 2021, 'album', 0, '2022-01-05 19:02:37', '2022-01-06 02:02:37'),
(22, 'Cho Tôi Lang Thang (Single)', '', 2017, 'single', 0, '2022-01-05 19:02:55', '2022-01-06 02:02:55'),
(23, 'Tình khúc Trịnh Công Sơn', '', 2018, 'album', 0, '2022-01-05 19:03:12', '2022-01-06 02:03:12'),
(24, 'Tình khúc Trịnh Công Sơn', '', 1974, 'album', 0, '2022-01-05 19:03:25', '2022-01-06 02:03:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
