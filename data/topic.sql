-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-03-03 16:40:10
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
  `campaignImg` varchar(255) DEFAULT NULL,
  `campaignCover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `campaign_prodduct`
--

INSERT INTO `campaign_prodduct` (`sid`, `title`, `time`, `price`, `date`, `rating`, `hot`, `season`, `notice`, `district`, `address`, `policy`, `category`, `content`, `campaignImg`, `campaignCover`) VALUES
(1, '手作體驗・親子合作 DIY 幸福甜點', 180, 1450, '2021-03-20', 4.5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '取消訂單，將收取所有實際產生費用', 'handmade', '享受自己做甜點的幸福時光，超過 80 種以上不同的甜點，除了享受美味、也享受幸福溫馨的 2 小時左右旅程～結束時除了將新鮮現作的甜點立刻帶走之外, 還可以跟家人、朋友分享並傳打卡增加自己的粉絲與成就！', 'campaignImg1.png,campaignImg2.png,campaignImg3.png', 'campaignImg1.png'),
(2, '手作體驗・DIY情人節裝飾蛋糕', 180, 1000, '2021-03-01', 4.6, 1, 1, '未滿 12 歲之兒童需由一名成年大人陪同製作 ，2 歲以下幼兒不計入人頭。', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '所選日期 4 天（含）之前取消，收取手續費 0%', 'handmade', '提供您與三五好友，享受輕鬆寫意的交流場域，發掘生活的無限美好，共創甜蜜故事。全方位的科技服務品牌，顛覆傳統作法，以「客自化」全新思維出發，採全自助烘焙，即便烘焙新手都能親手完成甜點。', 'campaignImg4.png,campaignImg5.png,campaignImg6.png,campaignImg7.png,campaignImg8.png', 'campaignImg4.png'),
(3, '甜點品嚐・手沖咖啡＋甜點下午茶', 180, 1000, '2021-07-05', 5, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '手沖咖啡體驗教學為您提供手沖咖啡所需要的器具以及咖啡豆，初步簡單地為您介紹器具及咖啡豆特性，並且讓你迅速掌握手沖要領，接著體驗手沖咖啡的樂趣。現在又多了新選擇，板橋門市，歡迎大家一起來體驗！', 'campaignImg9.png,campaignImg10.png,campaignImg11.png,campaignImg12.png', 'campaignImg10.png'),
(4, '手作體驗・六大基酒調酒課程', 180, 1300, '2021-03-20', 4.9, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '基酒，顧名思義指的是調酒時候作為基底的酒，也是一杯雞尾酒當中最主要的材料，一般被普遍使用的基酒總共有六種，分別是：伏特加（Vodka）、琴酒（Gin）、蘭姆酒（Rum）、龍舌蘭（Tequila）、威士忌（Whiskey）、白蘭地（Brandy）；六大基酒調酒體驗，每一堂課將選用一種基酒進行三杯雞尾酒的調製，全課程總共分為 6 堂課，課程中由專業調酒講師進行調酒以及基酒的知識傳授，並教導調酒技巧，帶領學員們親手調製出不亞於專業的雞尾酒。', 'campaignImg13.png,campaignImg14.png,campaignImg15.png', 'campaignImg13.png'),
(5, '手作體驗・製作專屬紀念烈酒', 180, 1400, '2021-04-29', 4.2, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '\"您將在這品嚐多種不同特色的酒 (包括無酒精的甜酒)，感受酒的多樣性。\r\n此行程您可以挑戰小遊戲，試著分辨出不同的烈酒，挑戰成功還可以拿到小禮物。最後將會製作貼有您的照片的紀念品 (內容為300毫烈酒 )，來這裡創造出獨一無二，只屬於你的紀念品吧。\"', 'campaignImg16.png,campaignImg17.png,campaignImg18.png', 'campaignImg16.png'),
(6, '職人講座・永續經營的創新力', 180, 2500, '2021-03-29', 4.6, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '如何為品牌/產品找到新的市場機會？以產品建立口碑的經典老牌，如何建立品牌思維與新一代消費市場溝通？', 'campaignImg19.png,campaignImg20.png,campaignImg21.png,campaignImg22.png', 'campaignImg19.png'),
(7, '職人講座・留法甜點私廚的餐桌', 180, 1000, '2021-03-18', 5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '現在甜點當道，擔任甜點私廚需要滿足挑嘴的人同時還要實現對料理的理想，將分享在講究美學的現代社會中，如何滿足消費者口腹並介紹台灣的甜點文化。', 'campaignImg23.png,campaignImg24.png,campaignImg25.png', 'campaignImg24.png'),
(8, '烈酒鑑賞・格蘭花格品酩會', 180, 800, '2021-04-20', 4.7, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '創立自1836年的蘇格蘭單一麥芽威士忌品牌、兩次榮獲【威士忌雜誌Whisky Magazine】票選為「年度最佳威士忌酒廠」的Glenfarclas格蘭花格，於2021年再度展開【雪莉工藝 六代祖傳】品酩會。由格蘭花格品牌大使帶領您重回格蘭花格獨立經營的家族歷史故事，探索堅持六個世代的極致製酒工藝，品飲傳承180年的酒藏佳釀，從17年、21年到25年，感受不同層次風味的品飲體驗。', 'campaignImg26.png,campaignImg27.png,campaignImg28.png', 'campaignImg28.png'),
(9, '手作體驗・經典法式甜點DIY教學', 180, 1200, '2021-06-05', 4.9, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '醉糕品味的主廚會親自教你如何烘焙出最道地經典的法國甜點，他還會偷偷告訴你這些傳統或創意甜點的美味秘方喔！', 'campaignImg29.png,campaignImg30.png,campaignImg31.png', 'campaignImg30.png'),
(10, '甜點鑑賞・Salon de Sweet甜點沙龍', 180, 2000, '2021-05-20', 4, 0, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '超過30種正宗的手工甜品以及30多種以上的料理可以在90分鐘內無限享用，甜品的種類繁多，有草莓奶油蛋糕、南瓜布丁、黑森林蛋糕、重磅蛋糕、石榴果凍、香蕉芝士蛋糕，蘋果派、水果卷、奶油泡芙、橘子果晶，酸奶慕斯等等。', 'campaignImg32.png,campaignImg33.png,campaignImg34.png', 'campaignImg12.png'),
(11, '品嚐鑑賞・香薰主題健康下午茶', 180, 1400, '2021-06-28', 4.1, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '一個寧靜的地方，讓你逃離煩囂的下午茶，隨心抽出專屬於你的「魔法薰香」, 由你挑選喜愛的精油滴入香薰機，咬一口精緻甜點，聞一點香薰，保證令你身心靈同時放鬆。', 'campaignImg35.png,campaignImg36.png,campaignImg37.png,campaignImg38.png,campaignImg39.png', 'campaignImg35.png'),
(12, '品嚐鑑賞・粉紅夢幻甜點午茶', 200, 1000, '2021-04-10', 4.3, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '期間限定粉紅泡泡下午茶，以粉紅色作主打，可兩人享用多達十款鹹甜點，快相約你的閨蜜好友來一場甜蜜約會啦！我們提供無可抗拒的緻美食佳餚及精心調製的特式雞尾酒，並設有露天平台，提供特色文青戶外帳篷、網紅直播器材及打卡拍攝道具等。\r\n', 'campaignImg40.png,campaignImg41.png,campaignImg42.png,campaignImg43.png,campaignImg44.png,campaignImg45.png,campaignImg46.png', 'campaignImg40.png'),
(13, '職人講座・專家帶你葡萄酒入門', 210, 3000, '2021-07-04', 4.6, 1, 1, '報名者需年滿18歲', '台北市，大安區', '台北市，中正區', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '講者經營代理法國布根地和香檳區的精品葡萄酒，秉持著對葡萄酒的熱忱，提供消費者最高的服務品質與合理的價格，未來我們將不定期舉辦具有主題的稀世珍釀品酒會，推廣葡萄酒生活美學，和提供最專業的葡萄酒訊息，努力維持高度的顧客滿意度。', 'campaignImg47.png,campaignImg48.png,campaignImg49.png,campaignImg50.png,campaignImg51.png,campaignImg52.png', 'campaignImg47.png'),
(14, '手作體驗・無麩質法式甜點 DIY 教學', 150, 1600, '2021-03-29', 4.7, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '對麩質過敏不代表你要一輩子成為甜點絕緣體！現在你可以自己在家做美味的法式有機無麩質甜點，享受當個法國甜心，我們的法國廚師 Dominique 會教你如何使用 100％ 有機而且不含膚質的食材，去烘焙出經典的法式甜點；如果你有額外的食材需求，例如不含乳製品或豆類製品，我們也能為你客製化專屬食譜！', 'campaignImg53.png,campaignImg54.png,campaignImg55.png,campaignImg56.png,campaignImg57.png,campaignImg58.png', 'campaignImg54.png'),
(15, '手作體驗・法國主廚教學馬卡龍', 180, 1000, '2021-04-02', 4.9, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '讓你的巴黎之旅留下一道美麗的色彩吧！你將在巴黎市中心向法國甜點大廚一同學習製作馬卡龍，探索這小小甜餅及其奶油內餡中的層層美學，小班制的甜點課程最多只接受 8 位參加者，確保法國主廚能好好教導每一位參與者，你也能夠輕鬆成為馬卡龍大師！', 'campaignImg59.png,campaignImg60.png,campaignImg61.png', 'campaignImg61.png');

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
(2, 2, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '84'),
(3, 3, '可拉斯可', 4, '6吋', 650, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '84');

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
(84, 'fish123', 'fish123', '123456', '123@gmail.com', '台北市', '1987-01-22', '0915115144', '5fe549d52e3df.jpg', '2020-12-18 09:51:06');

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

--
-- 傾印資料表的資料 `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('0LakhGTuKLS57x-QKpfNLFlYSkEk8Af0', 1614885350, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:15:49.529Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:15:49 GMT+0800 (台北標準時間)\"}'),
('0qkdvmsW25yIzWSr570ezVU8M0W7pj07', 1614879913, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:12.602Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:12 GMT+0800 (台北標準時間)\"}'),
('1NUAp06Om7UVkze-qsksY4tJZn79E9Xj', 1614885451, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:17:30.826Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:17:30 GMT+0800 (台北標準時間)\"}'),
('2G-zTPBu2I5wFvD0ts5xVwZ4tGdBzlwq', 1614879940, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:40.324Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:40 GMT+0800 (台北標準時間)\"}'),
('2_ahF_e1mXDVnuBlYF42_7wSIxQaF8pl', 1614880001, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:46:41.080Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:46:41 GMT+0800 (台北標準時間)\"}'),
('3ocNMGjuqMWN09bvADEp_3aC6CsMH7SZ', 1614881311, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:08:30.758Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:08:30 GMT+0800 (台北標準時間)\"}'),
('4SJq171cbH2F8y0Ii7-BR4IdQm4QVI_I', 1614880439, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:59.443Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:59 GMT+0800 (台北標準時間)\"}'),
('4hoRei60R6uiw0OadsKPVSYfud7CnKMJ', 1614879938, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:38.370Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:38 GMT+0800 (台北標準時間)\"}'),
('5q8KCA2K8pBfbR3w86ljSXyfHodnehxT', 1614880458, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:54:18.416Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:54:18 GMT+0800 (台北標準時間)\"}'),
('6dwMnoWKOxmK2RwiJssEmrCepAJUYa9J', 1614880975, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:02:54.971Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:02:54 GMT+0800 (台北標準時間)\"}'),
('6vEZmw4Hurw82sKCZ5qZ6Qj5f9DcxKzt', 1614880453, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:54:13.191Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:54:13 GMT+0800 (台北標準時間)\"}'),
('72gZQmXfCzOErTUOyFJMZP5nU-iTEn2P', 1614879501, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:20.694Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:20 GMT+0800 (台北標準時間)\"}'),
('7QDiENiarPu-UUY2vIhVC8-63KScRtZD', 1614885434, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:17:14.161Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:17:14 GMT+0800 (台北標準時間)\"}'),
('7bNAjyksm6PqgX3eER1eL4ouVFnuMkjs', 1614880153, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:49:13.378Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:49:13 GMT+0800 (台北標準時間)\"}'),
('9AymwT86oE7ijkoLOfPSGjDx-q1R3-uK', 1614881314, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:08:33.766Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:08:33 GMT+0800 (台北標準時間)\"}'),
('9YRdEQS0VS_OgW0yZlU6Kv37DaxFVZ0T', 1614880418, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:38.093Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:38 GMT+0800 (台北標準時間)\"}'),
('9_ABv83zXPY4yjTCZKEKPg4mDD7RKJx-', 1614880973, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:02:52.799Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:02:52 GMT+0800 (台北標準時間)\"}'),
('9_c-TUoAorCuAJoz5zSJW7zEvEM6krS-', 1614880691, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:58:10.729Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:58:10 GMT+0800 (台北標準時間)\"}'),
('Ao8LQbq4L7gJBnGKw_3pE7UJ4thnoN0v', 1615142233, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T18:37:13.051Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 11:30:33 GMT+0800 (台北標準時間)\"}'),
('BR7rrk7C-e1fb8FKAwIDM6TV-OtXKH9c', 1614940537, '{\"cookie\":{\"originalMaxAge\":179999990,\"expires\":\"2021-03-05T10:35:37.177Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:37 GMT+0800 (台北標準時間)\",\"user\":{\"mid\":84,\"username\":\"fish\",\"account\":\"fish\",\"password\":\"123456\",\"email\":\"spe9g0908@gmail.com\",\"address\":\"台北市\",\"birthday\":\"1987-01-21T16:00:00.000Z\",\"tel\":\"0915115144\",\"pic\":\"5fe549d52e3df.jpg\",\"created_at\":\"2020-12-18T01:51:06.000Z\"}}'),
('BTs0-C5K2cyropQMWWN3yF98tBtyZALd', 1614881302, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:08:22.405Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:08:22 GMT+0800 (台北標準時間)\"}'),
('BUhpNgxb4ZbvqxHrlnnF5qrP8UjJ92Qo', 1614880285, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:51:24.749Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:51:24 GMT+0800 (台北標準時間)\"}'),
('BVKOtor7ywfTlkcmzCiHB5LtoU8ZeC61', 1615160516, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:56.445Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:16 GMT+0800 (台北標準時間)\"}'),
('BcvbpkSvcX02fL3-1fAKZUPkc2kVXKMN', 1614885448, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:17:27.648Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:17:27 GMT+0800 (台北標準時間)\"}'),
('BtgjIxASGKALVRr8vQodRY9OQa69vlfu', 1614885432, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:17:11.577Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:17:11 GMT+0800 (台北標準時間)\"}'),
('ETdrNg9TNAYYJT3xmYJplHlMEnGBpGJb', 1615160511, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:50.770Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:10 GMT+0800 (台北標準時間)\"}'),
('F7gRJkLTCI8ek_xnQYuF33EYZBPEMxsk', 1614880160, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:49:20.458Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:49:20 GMT+0800 (台北標準時間)\"}'),
('Fcs5pQ8qYcnbNe2fW-aJAGu2OePzrF8q', 1614885370, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:16:10.336Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:16:10 GMT+0800 (台北標準時間)\"}'),
('GxId_PqVOKt0ghNmVV93kMTcLuaLlgbc', 1614885367, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:16:07.247Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:16:07 GMT+0800 (台北標準時間)\"}'),
('H0Gft7urt4sARwkpfy_8B7RpWAq3bhdU', 1615160526, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:05.725Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:25 GMT+0800 (台北標準時間)\"}'),
('HQYKTrl1eXUm_T1D4AlNSclaOtWkiolK', 1614881308, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:08:27.821Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:08:27 GMT+0800 (台北標準時間)\"}'),
('IPMmwVPzn9bHKg2DztEerMvM1M_fjMv_', 1614880644, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:57:24.393Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:57:24 GMT+0800 (台北標準時間)\"}'),
('ItuiF7yCnGQQHluscrtEZEbBmKVoj8xW', 1614884500, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-03-04T19:01:40.292Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:01:40 GMT+0800 (台北標準時間)\"}'),
('JD1a7l9gsWTYowFWT_BBtxdWRfhjldN5', 1614880695, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:58:15.149Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:58:15 GMT+0800 (台北標準時間)\"}'),
('JHwNbL4OEy035USB2OJFsWQYchLhlOib', 1615160519, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:59.010Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:19 GMT+0800 (台北標準時間)\"}'),
('K6Jwz2AUrkqr1h8Bz4MVu_DONrYnj9gJ', 1614885347, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:15:46.569Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:15:46 GMT+0800 (台北標準時間)\"}'),
('L9RoYshSrjIpQEfVWo9gp2pTC_x0Nred', 1614880820, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:00:20.395Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:00:20 GMT+0800 (台北標準時間)\"}'),
('Lch3XWVzAWIE3vaIAqlpEcL7USA_Dt89', 1614879497, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:17.492Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:17 GMT+0800 (台北標準時間)\"}'),
('LmUGFDz-P-Or19jhPjY-_bvG0LiPNsti', 1614879516, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:35.500Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:35 GMT+0800 (台北標準時間)\"}'),
('LrGspxXjshe-rDrodXu-D_0B-j5VtXJx', 1615160523, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:02.754Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:22 GMT+0800 (台北標準時間)\"}'),
('Ls5lK8v7LpiDUzzeMQrrJKMJfvvTKHEg', 1614880657, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:57:37.180Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:57:37 GMT+0800 (台北標準時間)\"}'),
('Lw00AMfyYXK10Y4GAzKR5w2H2_W1MOpN', 1615107548, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T08:59:07.698Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:52:27 GMT+0800 (台北標準時間)\"}'),
('M8PEo-qdjiqrUcm6M3qh5ctGTDIIUdAs', 1614885380, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-03-04T19:16:20.024Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:16:20 GMT+0800 (台北標準時間)\"}'),
('M9qEhOdJW8n8Ocjw_ZWgQbHtYG-SiFjU', 1615160507, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:47.144Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:07 GMT+0800 (台北標準時間)\"}'),
('MR3JR8wt5jLDjGIxhiobOmjbm8mKhvmL', 1615160548, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:28.292Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:48 GMT+0800 (台北標準時間)\"}'),
('NNfK7lOUj8yq8MSxJ6GLes-NtAxpQrEP', 1614883961, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:52:41.424Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:52:41 GMT+0800 (台北標準時間)\"}'),
('NtmjFuxP978jCtRvjGnFsKQefr0-6E6p', 1614881316, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:08:36.097Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:08:36 GMT+0800 (台北標準時間)\"}'),
('OABHFTv68pBmj3I_KBiDu7qEIN9Wtt1g', 1614880541, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:55:41.037Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:55:41 GMT+0800 (台北標準時間)\"}'),
('OmAO6D1Mn0o_poPs_X-4lGhY47KpJgFm', 1615160529, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:09.136Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:29 GMT+0800 (台北標準時間)\"}'),
('Ouv3H87HgcZ9SxE4Z4asLU2RP2FFIWnT', 1614880416, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:36.395Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:36 GMT+0800 (台北標準時間)\"}'),
('RiPlOqcUou2ulcvW2rSvWq41LoBaXy0f', 1614880829, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:00:28.780Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:00:28 GMT+0800 (台北標準時間)\"}'),
('SNCEz8CnmmSId2WI1kbBxsAOSping7N2', 1615141516, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T18:25:16.403Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 11:18:36 GMT+0800 (台北標準時間)\"}'),
('Ssgcan83s0nLEn77Fm5ieuRjWCgvwq9u', 1615106806, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T08:46:46.369Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:40:06 GMT+0800 (台北標準時間)\"}'),
('TZHG1obYDGi_JEpVgthHDAwoCao_5t6H', 1615107539, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T08:58:58.655Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:52:18 GMT+0800 (台北標準時間)\"}'),
('UXFUGSnhou6ZA5Zoec0t59OV_1TzmELF', 1615160541, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:20.821Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:40 GMT+0800 (台北標準時間)\"}'),
('UmjtQ2FWQhOVyJZU5_a32k-iK2xqpZ01', 1615142242, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T18:37:21.712Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 11:30:41 GMT+0800 (台北標準時間)\"}'),
('X11aQA24JCiMhh7XVKsvVhtMtW8hmIEi', 1614879238, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:33:58.415Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:33:58 GMT+0800 (台北標準時間)\"}'),
('Y1THsoOcgCbQDxMnxfJmg6Gw5D0mrJEr', 1615141595, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T18:26:34.513Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 11:19:54 GMT+0800 (台北標準時間)\",\"user\":{\"mid\":84,\"username\":\"fish\",\"account\":\"fish\",\"password\":\"123456\",\"email\":\"spe9g0908@gmail.com\",\"address\":\"台北市\",\"birthday\":\"1987-01-21T16:00:00.000Z\",\"tel\":\"0915115144\",\"pic\":\"5fe549d52e3df.jpg\",\"created_at\":\"2020-12-18T01:51:06.000Z\"}}'),
('Z2lOTpMRNNtTu4UEzFjQyR5RlhvwBoX1', 1614879503, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:23.398Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:23 GMT+0800 (台北標準時間)\"}'),
('_LW0DD6rJIOo1Y5VoVzq4CeVcKt5hbvz', 1614880812, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:00:11.965Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:00:11 GMT+0800 (台北標準時間)\"}'),
('_aG6on1EwLFSaqz1BdT5o2FOAEW2Ua6K', 1615160515, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:54.827Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:14 GMT+0800 (台北標準時間)\"}'),
('_iXKvIJochuuTCi8evTg5UwlpxfKSpcX', 1614881097, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:04:57.463Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:04:57 GMT+0800 (台北標準時間)\"}'),
('_iv-JkQFMu5HpfFPYA-tvjLe1a5eEWTW', 1615106810, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T08:46:49.601Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:40:09 GMT+0800 (台北標準時間)\"}'),
('am8I-ihEPnUnEr8QgFjN3QEoxX6UjXdP', 1614885359, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-03-04T19:15:58.737Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:15:58 GMT+0800 (台北標準時間)\"}'),
('aoCFqCIXN9ZOyYmwhV42Oxh0Yv48-P20', 1614879957, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:56.633Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:56 GMT+0800 (台北標準時間)\"}'),
('bGfUtxai0KH4YQd3s8PoMw5lZDNeypAN', 1614880418, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:37.831Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:37 GMT+0800 (台北標準時間)\"}'),
('c3Ku2jRdhwQRH8edbyz980JOMAvPeiGt', 1614885435, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:17:15.095Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:17:15 GMT+0800 (台北標準時間)\"}'),
('d213KQ4ec55D04Ns2_IMks2Jn3jDuDMu', 1614880420, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:39.668Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:39 GMT+0800 (台北標準時間)\"}'),
('dSOnI7ozJCodF7AurifhPT_fQ1hRonPw', 1614880964, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:02:43.846Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:02:43 GMT+0800 (台北標準時間)\"}'),
('f2N637KMGDuDemAi8TAo6f_CFBjFQcQY', 1614880439, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:59.090Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:59 GMT+0800 (台北標準時間)\"}'),
('fJ1frF5qCe_KXZXUI7IMnl5O_ntp13cO', 1614881782, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:16:22.181Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:16:22 GMT+0800 (台北標準時間)\"}'),
('fNN3xdbwHwE_vENml09fch2WwuM5zp9-', 1614879319, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:35:18.632Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:35:18 GMT+0800 (台北標準時間)\"}'),
('fyKpl131hLPrejKEpJjQ_xYmtg8aiAp_', 1615160521, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:01.478Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:21 GMT+0800 (台北標準時間)\"}'),
('h7T345ksew-Fiso4X7GHZforQEiYR5jd', 1614880835, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:00:34.913Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:00:34 GMT+0800 (台北標準時間)\"}'),
('hCnGgjYtfGNfOvEv4Ch8IB5OHtbyXwxt', 1614879936, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:36.318Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:36 GMT+0800 (台北標準時間)\"}'),
('hffR6mqzLnAIBwTkRGFcmedXsMFRyW5T', 1615160501, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:40.768Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:00 GMT+0800 (台北標準時間)\"}'),
('i7NtV3HoKKiiRvdFmVrPkzXg0XTHMgKi', 1614879994, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:46:33.910Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:46:33 GMT+0800 (台北標準時間)\"}'),
('iIGk2OhLdy46LVBcIN5MZMtI8EdwLV8Z', 1614883460, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:44:20.497Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:44:20 GMT+0800 (台北標準時間)\"}'),
('kViu-5Q1_7OIfwQ_3FRHfS3VS0om4rNe', 1615141519, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T18:25:18.530Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 11:18:38 GMT+0800 (台北標準時間)\"}'),
('kq8r7gzVbEgEzPfqkyQ0D_K1nRH7Xpjq', 1615107543, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T08:59:02.853Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:52:22 GMT+0800 (台北標準時間)\"}'),
('l7uucmabR60Egh3JSdKTwhXewZf0zvFq', 1614879939, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:38.539Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:38 GMT+0800 (台北標準時間)\"}'),
('n4MIT_Cok5SLGMrFEgtlua2Ms-G_fAhn', 1615142246, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T18:37:25.842Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 11:30:45 GMT+0800 (台北標準時間)\"}'),
('nMYOENz8zYQ_JCGxJbEKZ85X0tJ7_Pt1', 1614880679, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:57:59.023Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:57:59 GMT+0800 (台北標準時間)\"}'),
('nWGjv3r2OAmXi2sN0KuIqK_1YvAGI_Em', 1614885447, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:17:27.139Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:17:27 GMT+0800 (台北標準時間)\"}'),
('nl6VHbUcaV65xNt03aXAQaXaMFzl_qyp', 1614879489, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:09.323Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:09 GMT+0800 (台北標準時間)\"}'),
('orpkpyrru71OLfoE7L1iQV61SLKW749T', 1614879500, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:20.486Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:20 GMT+0800 (台北標準時間)\"}'),
('p5u8Sqrd7aj9bkTBatURb28uoPrRi_Gk', 1615160513, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:53.482Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:13 GMT+0800 (台北標準時間)\"}'),
('pO5AZ4T7ojjP8HjximGQIsAYzQG4keCR', 1614879956, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:45:56.342Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:45:56 GMT+0800 (台北標準時間)\"}'),
('pasxxjpDaJ_ZwHwoWJ2EE6eC_mPPKzZI', 1614885355, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:15:55.084Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:15:55 GMT+0800 (台北標準時間)\"}'),
('qS6OwJjHAwqUUKbPZ-7VksUzcMsqpGR4', 1615160518, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:41:57.985Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:17 GMT+0800 (台北標準時間)\"}'),
('r2aXN0mo5-HuFvJmqcos9lldk-4zM8j7', 1615160520, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T23:42:00.416Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 16:35:20 GMT+0800 (台北標準時間)\"}'),
('rB_lUFCHye6TxBre7o1zj4ZpyrId8F9W', 1615107541, '{\"cookie\":{\"originalMaxAge\":400000000,\"expires\":\"2021-03-07T08:59:00.684Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:52:20 GMT+0800 (台北標準時間)\"}'),
('rDm_ol8OQsPP9LYiEr-m_HxMeh_Dcw4P', 1614885387, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:16:26.582Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:16:26 GMT+0800 (台北標準時間)\"}'),
('sjqeUReCNl0vSZGEWOsJrZ2qp5SXRJ57', 1614881783, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:16:22.892Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:16:22 GMT+0800 (台北標準時間)\"}'),
('vsrWtaXdl_SZPHpdUZhSWPz7xkQrGpmm', 1614881314, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:08:33.958Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:08:33 GMT+0800 (台北標準時間)\"}'),
('wN-UiqcLpiY6_-qUxo6HW9gfsKNQjav2', 1614879526, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:46.162Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:46 GMT+0800 (台北標準時間)\"}'),
('xddcVx4jPLk8BwDxORt9jKXu7wToz28i', 1614881106, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T18:05:05.614Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 00:05:05 GMT+0800 (台北標準時間)\"}'),
('xxIS_YQx_IPzEFe7OpRseIMtTSgICSGB', 1614879241, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:34:01.340Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:34:01 GMT+0800 (台北標準時間)\"}'),
('zHGuG3MUNDhw80zOGFDCCTTxUQnDb3hZ', 1614885368, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T19:16:07.506Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Mar 03 2021 01:16:07 GMT+0800 (台北標準時間)\"}'),
('zHuadatueuLL3c0Hz7TDzc4PRZFSVbFc', 1614880401, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:53:21.189Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:53:21 GMT+0800 (台北標準時間)\"}'),
('zvWBq9Ut9IeIfwEBtapzDLMs24n6WbFl', 1614879495, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-03-04T17:38:14.577Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Mar 02 2021 23:38:14 GMT+0800 (台北標準時間)\"}');

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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart1_items`
--
ALTER TABLE `cart1_items`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_activity`
--
ALTER TABLE `cart_activity`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_studio`
--
ALTER TABLE `cart_studio`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
