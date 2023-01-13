-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 13 日 03:09
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `hw_0114`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `movie_log`
--

CREATE TABLE `movie_log` (
  `id` int(11) NOT NULL,
  `genre` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `review` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_data`
--

CREATE TABLE `user_data` (
  `id` int(12) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_data`
--

INSERT INTO `user_data` (`id`, `name`, `email`, `lpw`, `date`) VALUES
(1, '', 'ishi', '$2y$10$D8PqmXcOGYbqeaEEbxlM5uRg.6.lSacKQvNAEHXIdMLmiSdexG9bu', '0000-00-00 00:00:00'),
(31, '', '', '$2y$10$xdWdjLwq1NHuBqqFjnBb9OB1qZR2.WjsCE2xY7H9QaOXTTx7.bwRy', '2023-01-13 00:53:06');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `movie_log`
--
ALTER TABLE `movie_log`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `movie_log`
--
ALTER TABLE `movie_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
