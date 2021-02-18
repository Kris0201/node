-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-18 10:46:54
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
-- 資料表結構 `orders1`
--

CREATE TABLE `orders1` (
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `receiverMobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_state` varchar(255) DEFAULT '訂單成立',
  `designated_date` date DEFAULT current_timestamp(),
  `designated_period` varchar(255) DEFAULT '不指定',
  `deliver_state` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `orders1`
--

INSERT INTO `orders1` (`sid`, `mid`, `amount`, `receiver`, `receiverMobile`, `address`, `order_date`, `order_state`, `designated_date`, `designated_period`, `deliver_state`, `payment_type`) VALUES
(67, 1, 7140, '', '', '', '2020-12-23 16:50:13', '訂單成立', '0000-00-00', '不指定', '未出貨', '貨到付款'),
(68, 1, 5600, '', '', '', '2020-12-24 10:11:20', '訂單成立', '0000-00-00', '不指定', '未出貨', '貨到付款');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders1`
--
ALTER TABLE `orders1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
