-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-23 11:24:38
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
-- 資料表結構 `cart1_items`
--

CREATE TABLE `cart1_items` (
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `p_sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cart1_items`
--

INSERT INTO `cart1_items` (`sid`, `mid`, `p_sid`, `quantity`) VALUES
(101, 84, 1, 8),
(128, 84, 2, 7);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cart1_items`
--
ALTER TABLE `cart1_items`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`mid`),
  ADD KEY `product_sid` (`p_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart1_items`
--
ALTER TABLE `cart1_items`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
