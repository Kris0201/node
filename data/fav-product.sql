-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-18 03:44:40
-- 伺服器版本： 10.4.16-MariaDB
-- PHP 版本： 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `new cake list`
--

-- --------------------------------------------------------

--
-- 資料表結構 `drunken_cake_product_list_blank`
--

CREATE TABLE `fav-product` (
  `p_sid` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_cate` int(255) NOT NULL,
  `p_size` varchar(255) DEFAULT NULL,
  `p_price` int(11) NOT NULL,
  `p_intro` varchar(255) DEFAULT NULL,
  `p_img` varchar(255) DEFAULT NULL,
  `p_carousel_img` varchar(255) NOT NULL,
  `p_desc` varchar(255) DEFAULT NULL,
  `Alcohol_vol` float NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `cake` varchar(255) NOT NULL,
  `m_v` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `expir` varchar(255) NOT NULL,
  `member_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `drunken_cake_product_list_blank`
--
ALTER TABLE `drunken_cake_product_list_blank`
  ADD PRIMARY KEY (`p_sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `drunken_cake_product_list_blank`
--
ALTER TABLE `drunken_cake_product_list_blank`
  MODIFY `p_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
