-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-03 09:03:39
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
-- 資料庫： `topic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `orders3`
--

CREATE TABLE `orders3` (
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `receiverMobile` varchar(255) NOT NULL,
  `classroom` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_state` varchar(255) DEFAULT '訂單成立',
  `designated_date` varchar(255) DEFAULT NULL,
  `designated_period` varchar(255) DEFAULT '不指定',
  `deliver_state` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `orders3`
--

INSERT INTO `orders3` (`sid`, `mid`, `amount`, `receiver`, `receiverMobile`, `classroom`, `order_date`, `order_state`, `designated_date`, `designated_period`, `deliver_state`, `payment_type`) VALUES
(67, 1, 7140, '', '', '大安館教室', '2020-12-23 16:50:13', '訂單成立', '2021-03-09', '09:00-12:00AM', '未出貨', '貨到付款'),
(68, 1, 5600, '', '', '東門館教室', '2020-12-24 10:11:20', '訂單成立', '2021-03-10', '不指定', '未出貨', '貨到付款'),
(69, 1, 5600, '', '', '西門館教室', '2020-12-24 10:11:20', '訂單成立', '2021-03-09', '不指定', '未出貨', '貨到付款');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `orders3`
--
ALTER TABLE `orders3`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders3`
--
ALTER TABLE `orders3`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
