-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-18 09:51:38
-- 伺服器版本： 10.4.17-MariaDB
-- PHP 版本： 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `topic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_items1`
--

CREATE TABLE `order_items1` (
  `sid` int(11) NOT NULL,
  `order_sid` int(11) NOT NULL,
  `p_sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_items1`
--

INSERT INTO `order_items1` (`sid`, `order_sid`, `p_sid`, `quantity`) VALUES
(1, 4, 22, 1),
(2, 4, 17, 2),
(3, 4, 22, 1),
(6, 9, 6, 1),
(7, 9, 8, 2),
(8, 9, 22, 1),
(12, 11, 5, 2),
(13, 11, 15, 1),
(78, 63, 1, 1),
(79, 63, 2, 2),
(80, 63, 3, 3),
(81, 63, 4, 4),
(83, 65, 1, 5),
(84, 65, 2, 5),
(85, 65, 3, 6),
(86, 65, 4, 6),
(87, 66, 1, 1),
(88, 66, 2, 1),
(89, 66, 3, 2),
(90, 66, 4, 12),
(91, 67, 1, 1),
(92, 67, 2, 1),
(93, 68, 1, 10),
(94, 0, 1, 10),
(95, 0, 1, 10),
(96, 0, 1, 10),
(97, 0, 1, 10),
(98, 0, 1, 10),
(99, 0, 1, 5);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_items1`
--
ALTER TABLE `order_items1`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`order_sid`),
  ADD KEY `product_sid` (`p_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_items1`
--
ALTER TABLE `order_items1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
