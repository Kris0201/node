-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-18 03:34:03
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `studern_rent`
--

-- --------------------------------------------------------

--
-- 資料表結構 `studioorder`
--

CREATE TABLE `studioorder` (
  `sid` int(11) NOT NULL,
  `studio_name` varchar(255) DEFAULT NULL,
  `studio_id` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_id` varchar(255) DEFAULT NULL,
  `time_period` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `studioorder`
--

INSERT INTO `studioorder` (`sid`, `studio_name`, `studio_id`, `date`, `time_id`, `time_period`, `price`) VALUES
(1, '大安館教室', 'A01', '2020-02-15', 'A', '09:00-12:00AM', 6000),
(2, '東門館教室', 'A02', '2020-02-16', 'B', '14:00-17:00PM', 6000),
(3, '西門管教室', 'A03', '2020-02-17', 'C', '09:00-17:00PM', 10000),
(4, '東門館教室', 'A02', '2020-02-18', 'B', '14:00-17:00PM', 6000),
(5, '大安館教室', 'A01', '2020-02-19', 'A', '09:00-12:00AM', 6000),
(6, '西門管教室', 'A03', '2020-02-20', 'C', '09:00-17:00PM', 10000),
(7, '西門管教室', 'A03', '2020-02-21', 'C', '09:00-17:00PM', 10000),
(8, '西門管教室', 'A03', '2020-02-22', 'C', '09:00-17:00PM', 10000),
(9, '西門管教室', 'A03', '2020-02-23', 'C', '09:00-17:00PM', 10000),
(10, '西門管教室', 'A03', '2020-02-24', 'C', '09:00-17:00PM', 10000);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `studioorder`
--
ALTER TABLE `studioorder`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `studioorder`
--
ALTER TABLE `studioorder`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
