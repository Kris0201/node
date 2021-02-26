-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-25 16:08:16
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
-- 資料庫： `topic`
--

-- --------------------------------------------------------

--
-- 資料表結構 `fav-product`
--

CREATE TABLE `fav-product` (
  `p_sid` int(11) NOT NULL,
  `fav_id` int(11) NOT NULL DEFAULT 0,
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
-- 傾印資料表的資料 `fav-product`
--

INSERT INTO `fav-product` (`p_sid`, `fav_id`, `p_name`, `p_cate`, `p_size`, `p_price`, `p_intro`, `p_img`, `p_carousel_img`, `p_desc`, `Alcohol_vol`, `ingredient`, `cake`, `m_v`, `storage`, `expir`, `member_id`) VALUES
(3, 3, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '84'),
(1, 1, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '84');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
