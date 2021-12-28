-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 05:28 AM
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
  `date_release` date DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` float NOT NULL,
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `track_no` int(11) DEFAULT NULL,
  `lyrics` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_release` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` date DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL,
  `img_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_actived` tinyint(1) NOT NULL,
  `provider` enum('local','google','facebook') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `artist_song`
--
ALTER TABLE `artist_song`
  ADD PRIMARY KEY (`artist_song_id`),
  ADD KEY `art_song_fk_1` (`artist_id`),
  ADD KEY `song_id` (`song_id`);

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
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `song_id` (`song_id`);

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
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `song_genre_fk` (`genre_id`),
  ADD KEY `song_album_fk` (`album_id`);

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
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_artist`
--
ALTER TABLE `user_artist`
  ADD PRIMARY KEY (`user_artist_id`),
  ADD KEY `user_artist_fk_1` (`artist_id`);

--
-- Indexes for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD PRIMARY KEY (`user_playlist_id`),
  ADD KEY `user_playlist_fk_1` (`playlist_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_song`
--
ALTER TABLE `user_song`
  ADD PRIMARY KEY (`user_song_id`),
  ADD KEY `user_song_fk_1` (`song_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist_album`
--
ALTER TABLE `artist_album`
  MODIFY `artist_album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artist_song`
--
ALTER TABLE `artist_song`
  MODIFY `artist_song_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist_song`
--
ALTER TABLE `playlist_song`
  MODIFY `playlist_song_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `art_alb_fk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `art_alb_fk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);

--
-- Constraints for table `artist_song`
--
ALTER TABLE `artist_song`
  ADD CONSTRAINT `art_song_fk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  ADD CONSTRAINT `art_song_fk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD CONSTRAINT `playlist_song_fk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`),
  ADD CONSTRAINT `playlist_song_fk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  ADD CONSTRAINT `playlist_song_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`),
  ADD CONSTRAINT `playlist_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_album_fk` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `song_genre_fk` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `user_album`
--
ALTER TABLE `user_album`
  ADD CONSTRAINT `user_album_fk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `user_album_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_artist`
--
ALTER TABLE `user_artist`
  ADD CONSTRAINT `user_artist_fk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  ADD CONSTRAINT `user_artist_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_playlist`
--
ALTER TABLE `user_playlist`
  ADD CONSTRAINT `user_playlist_fk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`),
  ADD CONSTRAINT `user_playlist_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_song`
--
ALTER TABLE `user_song`
  ADD CONSTRAINT `user_song_fk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  ADD CONSTRAINT `user_song_fk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
