-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-02 23:30:08
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
-- 資料表結構 `campaign_prodduct`
--

CREATE TABLE `campaign_prodduct` (
  `sid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `notice` longtext DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `policy` longtext DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `intro` int(11) NOT NULL,
  `campaignImg` varchar(255) DEFAULT NULL,
  `campaignCover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `campaign_prodduct`
--

INSERT INTO `campaign_prodduct` (`sid`, `title`, `time`, `price`, `date`, `rating`, `hot`, `season`, `notice`, `district`, `address`, `policy`, `category`, `content`, `intro`, `campaignImg`, `campaignCover`) VALUES
(1, '手作體驗・親子 DIY 幸福甜點', 180, 1450, '2021-03-20', 4.5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '取消訂單，將收取所有實際產生費用', 'handmade', '享受自己做甜點的幸福時光，超過 80 種以上不同的甜點，除了享受美味、也享受幸福溫馨的 2 小時左右旅程～結束時除了將新鮮現作的甜點立刻帶走之外, 還可以跟家人、朋友分享並傳打卡增加自己的粉絲與成就！', 0, 'campaignImg1.png,campaignImg2.png,campaignImg3.png', 'campaignImg1.png'),
(2, '手作體驗・DIY情人節裝飾蛋糕', 180, 1000, '2021-03-01', 4.6, 1, 1, '未滿 12 歲之兒童需由一名成年大人陪同製作 ，2 歲以下幼兒不計入人頭。', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '所選日期 4 天（含）之前取消，收取手續費 0%', 'handmade', '提供您與三五好友，享受輕鬆寫意的交流場域，發掘生活的無限美好，共創甜蜜故事。全方位的科技服務品牌，顛覆傳統作法，以「客自化」全新思維出發，採全自助烘焙，即便烘焙新手都能親手完成甜點。', 0, 'campaignImg4.png,campaignImg5.png,campaignImg6.png,campaignImg7.png,campaignImg8.png', 'campaignImg4.png'),
(3, '甜點品嚐・手沖咖啡＋甜點下午茶', 180, 1000, '2021-07-05', 5, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '手沖咖啡體驗教學為您提供手沖咖啡所需要的器具以及咖啡豆，初步簡單地為您介紹器具及咖啡豆特性，並且讓你迅速掌握手沖要領，接著體驗手沖咖啡的樂趣。現在又多了新選擇，板橋門市，歡迎大家一起來體驗！', 0, 'campaignImg9.png,campaignImg10.png,campaignImg11.png,campaignImg12.png', 'campaignImg10.png'),
(4, '手作體驗・六大基酒調酒課程', 180, 1300, '2021-03-20', 4.9, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '基酒，顧名思義指的是調酒時候作為基底的酒，也是一杯雞尾酒當中最主要的材料，一般被普遍使用的基酒總共有六種，分別是：伏特加（Vodka）、琴酒（Gin）、蘭姆酒（Rum）、龍舌蘭（Tequila）、威士忌（Whiskey）、白蘭地（Brandy）；六大基酒調酒體驗，每一堂課將選用一種基酒進行三杯雞尾酒的調製，全課程總共分為 6 堂課，課程中由專業調酒講師進行調酒以及基酒的知識傳授，並教導調酒技巧，帶領學員們親手調製出不亞於專業的雞尾酒。', 0, 'campaignImg13.png,campaignImg14.png,campaignImg15.png', 'campaignImg13.png'),
(5, '手作體驗・製作專屬紀念烈酒', 180, 1400, '2021-04-29', 4.2, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '\"您將在這品嚐多種不同特色的酒 (包括無酒精的甜酒)，感受酒的多樣性。\r\n此行程您可以挑戰小遊戲，試著分辨出不同的烈酒，挑戰成功還可以拿到小禮物。最後將會製作貼有您的照片的紀念品 (內容為300毫烈酒 )，來這裡創造出獨一無二，只屬於你的紀念品吧。\"', 0, 'campaignImg16.png,campaignImg17.png,campaignImg18.png', 'campaignImg16.png'),
(6, '職人講座・永續經營的創新力', 180, 2500, '2021-03-29', 4.6, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '如何為品牌/產品找到新的市場機會？以產品建立口碑的經典老牌，如何建立品牌思維與新一代消費市場溝通？', 0, 'campaignImg19.png,campaignImg20.png,campaignImg21.png,campaignImg22.png', 'campaignImg19.png'),
(7, '職人講座・甜點私廚的餐桌', 180, 1000, '2021-03-18', 5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '現在甜點當道，擔任甜點私廚需要滿足挑嘴的人同時還要實現對料理的理想，將分享在講究美學的現代社會中，如何滿足消費者口腹並介紹台灣的甜點文化。', 0, 'campaignImg23.png,campaignImg24.png,campaignImg25.png', 'campaignImg24.png'),
(8, '烈酒鑑賞・格蘭花格品酩會', 180, 800, '2021-04-20', 4.7, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '創立自1836年的蘇格蘭單一麥芽威士忌品牌、兩次榮獲【威士忌雜誌Whisky Magazine】票選為「年度最佳威士忌酒廠」的Glenfarclas格蘭花格，於2021年再度展開【雪莉工藝 六代祖傳】品酩會。由格蘭花格品牌大使帶領您重回格蘭花格獨立經營的家族歷史故事，探索堅持六個世代的極致製酒工藝，品飲傳承180年的酒藏佳釀，從17年、21年到25年，感受不同層次風味的品飲體驗。', 0, 'campaignImg26.png,campaignImg27.png,campaignImg28.png', 'campaignImg28.png'),
(9, '手作體驗・經典法式甜點DIY教學', 180, 1200, '2021-06-05', 4.9, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '醉糕品味的主廚會親自教你如何烘焙出最道地經典的法國甜點，他還會偷偷告訴你這些傳統或創意甜點的美味秘方喔！', 0, 'campaignImg29.png,campaignImg30.png,campaignImg31.png', 'campaignImg30.png'),
(10, '甜點鑑賞・Salon de Sweet甜點沙龍', 180, 2000, '2021-05-20', 4, 0, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '超過30種正宗的手工甜品以及30多種以上的料理可以在90分鐘內無限享用，甜品的種類繁多，有草莓奶油蛋糕、南瓜布丁、黑森林蛋糕、重磅蛋糕、石榴果凍、香蕉芝士蛋糕，蘋果派、水果卷、奶油泡芙、橘子果晶，酸奶慕斯等等。', 0, 'campaignImg32.png,campaignImg33.png,campaignImg34.png', 'campaignImg12.png');

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

-- --------------------------------------------------------

--
-- 資料表結構 `cart_activity`
--

CREATE TABLE `cart_activity` (
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `p_sid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `cart_studio`
--

CREATE TABLE `cart_studio` (
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `studio_id` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `time_period` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, 3, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '84');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `mid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `account` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`mid`, `username`, `account`, `password`, `email`, `address`, `birthday`, `tel`, `pic`, `created_at`) VALUES
(84, 'fish', 'fish', '123456', 'spe9g0908@gmail.com', '台北市', '1987-01-22', '0915115144', '5fe549d52e3df.jpg', '2020-12-18 09:51:06'),
(143, '王一明', 'ffff', '123456', '1111@gmaul.com', '台北市', '1970-01-03', '0915115144', NULL, '0000-00-00 00:00:00'),
(144, '王一明', 'abcd', '123456', '11113@gmaul.com', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `orders1`
--

CREATE TABLE `orders1` (
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `freight` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `receiverMobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_state` varchar(255) DEFAULT '訂單成立',
  `designated_date` date DEFAULT NULL,
  `designated_period` varchar(255) DEFAULT '不指定',
  `delivery` varchar(10) NOT NULL,
  `deliver_state` varchar(255) NOT NULL DEFAULT '備貨中',
  `payment_type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `pan_no1` varchar(4) NOT NULL,
  `pan_no2` varchar(4) NOT NULL,
  `pan_no3` varchar(4) NOT NULL,
  `pan_no4` varchar(4) NOT NULL,
  `creditCardExpireMonth` varchar(2) NOT NULL,
  `creditCardExpireYear` varchar(4) NOT NULL,
  `creditCardBack` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `orders1`
--

INSERT INTO `orders1` (`sid`, `mid`, `amount`, `freight`, `receiver`, `receiverMobile`, `address`, `order_date`, `order_state`, `designated_date`, `designated_period`, `delivery`, `deliver_state`, `payment_type`, `username`, `tel`, `pan_no1`, `pan_no2`, `pan_no3`, `pan_no4`, `creditCardExpireMonth`, `creditCardExpireYear`, `creditCardBack`) VALUES
(369, 84, 3800, 2000, '林柏瑜', '0912365798', '台北市文山區指南路二段64號', '2021-02-26 14:20:22', '訂單成立', '2021-03-08', '8:00-12:00', '快遞宅配', '備貨中', '信用卡一次付清', '林柏瑜', '0912365798', '2563', '4579', '8677', '4401', '6', '2021', '489');

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
  `address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_state` varchar(255) DEFAULT '訂單成立',
  `designated_date` date DEFAULT current_timestamp(),
  `designated_period` varchar(255) DEFAULT '不指定',
  `deliver_state` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `orders3`
--

INSERT INTO `orders3` (`sid`, `mid`, `amount`, `receiver`, `receiverMobile`, `address`, `order_date`, `order_state`, `designated_date`, `designated_period`, `deliver_state`, `payment_type`) VALUES
(67, 1, 7140, '', '', '', '2020-12-23 16:50:13', '訂單成立', '0000-00-00', '不指定', '未出貨', '貨到付款'),
(68, 1, 5600, '', '', '', '2020-12-24 10:11:20', '訂單成立', '0000-00-00', '不指定', '未出貨', '貨到付款');

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
(425, 369, 1, 1),
(426, 369, 3, 3),
(427, 369, 4, 4),
(428, 369, 2, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `product_cate`
--

CREATE TABLE `product_cate` (
  `sid` int(255) NOT NULL,
  `p_categories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_cate`
--

INSERT INTO `product_cate` (`sid`, `p_categories`) VALUES
(1, '全部商品'),
(2, '紅酒風味'),
(3, '白酒風味'),
(4, '烈酒風味'),
(5, '利口酒風味');

-- --------------------------------------------------------

--
-- 資料表結構 `product_list`
--

CREATE TABLE `product_list` (
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
-- 傾印資料表的資料 `product_list`
--

INSERT INTO `product_list` (`p_sid`, `p_name`, `p_cate`, `p_size`, `p_price`, `p_intro`, `p_img`, `p_carousel_img`, `p_desc`, `Alcohol_vol`, `ingredient`, `cake`, `m_v`, `storage`, `expir`, `member_id`) VALUES
(1, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(2, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(3, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(4, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(5, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(6, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(7, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(8, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(9, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(10, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(24, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(25, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(26, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(27, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(28, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(29, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(30, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(31, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(32, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(33, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(34, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(35, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(36, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(37, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(38, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(39, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(40, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(41, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(42, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(43, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(44, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(45, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(46, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(47, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(48, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(49, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(50, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(51, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(52, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(53, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(54, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(55, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(56, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(57, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(58, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(59, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(60, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(61, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(62, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(63, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- 資料表結構 `studio_product`
--

CREATE TABLE `studio_product` (
  `sid` int(11) NOT NULL,
  `studio_id` varchar(255) NOT NULL,
  `studio_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `studio_product`
--

INSERT INTO `studio_product` (`sid`, `studio_id`, `studio_name`, `img`) VALUES
(1, 'A01', '大安館教室', 'class1-1'),
(2, 'A02', '東門管教室', 'class2-1'),
(4, 'A03', '西門館教室', 'class3-1');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `campaign_prodduct`
--
ALTER TABLE `campaign_prodduct`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `cart1_items`
--
ALTER TABLE `cart1_items`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`mid`),
  ADD KEY `product_sid` (`p_sid`);

--
-- 資料表索引 `cart_activity`
--
ALTER TABLE `cart_activity`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `cart_studio`
--
ALTER TABLE `cart_studio`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `account` (`account`);

--
-- 資料表索引 `orders1`
--
ALTER TABLE `orders1`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `orders3`
--
ALTER TABLE `orders3`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `order_items1`
--
ALTER TABLE `order_items1`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`order_sid`),
  ADD KEY `product_sid` (`p_sid`);

--
-- 資料表索引 `product_cate`
--
ALTER TABLE `product_cate`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`p_sid`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 資料表索引 `studioorder`
--
ALTER TABLE `studioorder`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `studio_product`
--
ALTER TABLE `studio_product`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `campaign_prodduct`
--
ALTER TABLE `campaign_prodduct`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart1_items`
--
ALTER TABLE `cart1_items`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_activity`
--
ALTER TABLE `cart_activity`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_studio`
--
ALTER TABLE `cart_studio`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders1`
--
ALTER TABLE `orders1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders3`
--
ALTER TABLE `orders3`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_items1`
--
ALTER TABLE `order_items1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_cate`
--
ALTER TABLE `product_cate`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_list`
--
ALTER TABLE `product_list`
  MODIFY `p_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `studioorder`
--
ALTER TABLE `studioorder`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `studio_product`
--
ALTER TABLE `studio_product`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
