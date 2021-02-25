-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-02-25 13:17:09
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
(1, '手作體驗・親子 DIY 幸福甜點', 180, 1450, '2021-03-20', 4.5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '取消訂單，將收取所有實際產生費用', 'handmade', '－行程介紹－  享受自己做甜點的幸福時光，超過 80 種以上不同的甜點，除了享受美味、也享受幸福溫馨的 2 小時左右旅程～結束時除了將新鮮現作的甜點立刻帶走之外, 還可以跟家人、朋友分享並傳打卡增加自己的粉絲與成就！   －體驗內容－   OREO墳墓布甸布丁 - 難度：1顆星 ( 5顆星滿分 ) - 蛋糕體：可可 - 內餡夾層：OREO餅乾+慕斯 - 外觀：OERO餅乾碎片與可可慕斯雙層交疊 - 尺寸：直徑 6CM 高約 7CM 慕斯杯 總計 5~6 杯  美式酥皮派 - 難度：2顆星 ( 5顆星滿分 ) - 蛋糕體：酥皮 - 內餡夾層：蘋果肉桂餡 - 外觀：酥皮編織 - 尺寸：直徑約 5CM 總計數量6個  雪球餅乾 - 難度：3顆星 ( 5顆星滿分 ) - 蛋糕體：原味/可可/抹茶 - 外觀：不同口味的圓形雪球餅乾 20~35顆(依據揉捏大小決定顆數)  經典戚風蛋糕 - 難度：3顆星 ( 5顆星滿分 ) - 蛋糕體：原味 - 尺寸：4吋蛋糕體 兩顆  檸檬樂園塔 - 難度：3顆星 ( 5顆星滿分 ) - 蛋糕體：塔皮+內餡 - 內餡夾層：檸檬內餡 - 外觀：花邊塔皮+檸檬內餡+檸檬皮裝飾 - 尺寸：6吋  台北DIY手做甜點 抓鬼一族杯子蛋糕 - 難度：3顆星 ( 5顆星滿分 ) - 蛋糕體：原味/可可 - 上層裝飾：新鮮奶油擠花 - 外觀：杯子蛋糕 新鮮奶油裝飾 巧克力畫圖裝飾 - 尺寸：直經約4CM 高約5CM 總計6顆  DIY手做甜點-灰塵精靈生巧克力塔 - 難度：3顆星 ( 5顆星滿分 ) - 塔皮： 自行桿捏塔皮 - 內餡夾層：進口70%德國巧克力甘納許 - 外觀：圓形巧克力塔 6顆 - 尺寸：直徑約7CM  神之鳳梨酥 - 難度：3顆星 ( 5顆星滿分 ) - 蛋糕體：原味 - 內餡夾層：鳳梨餡 - 外觀：長方形或愛心型 - 尺寸：約4.5CM*4.5CM 10顆  紫叢花戀 - 難度：3顆星 ( 5顆星滿分 ) - 蛋糕體：原味 - 內餡夾層：莓果果醬 - 外觀：不同顏色的奶油旋花造型 - 尺寸：6\'\'蛋糕體  Oreo濃情巧克力 - 難度：5顆星 ( 5顆星滿分 ) - 蛋糕體：可可蛋糕體 - 內餡夾層：70% 德國可可甘納許夾餡 - 外觀：切面夾層+巧克力淋面 - 尺寸：6\'\'蛋糕體', 'campaignImg1.png,campaignImg2.png,campaignImg3.png', 'campaignImg1.png'),
(2, '手作體驗・情人節蛋糕DIY', 180, 1000, '2021-03-01', 4.6, 1, 1, '未滿 12 歲之兒童需由一名成年大人陪同製作 ，2 歲以下幼兒不計入人頭。', '台北市，板橋區', '台北市大安區大安路一段84巷4號', '所選日期 4 天（含）之前取消，收取手續費 0%', 'handmade', '提供您與三五好友，享受輕鬆寫意的交流場域，發掘生活的無限美好，共創甜蜜故事。全方位的科技服務品牌，顛覆傳統作法，以「客自化」全新思維出發，採全自助烘焙，即便烘焙新手都能親手完成甜點。\r\n\r\nStay with you\r\n此為升級版提拉米蘇，將基底改為餅乾塔增添口感層次，內餡為沾有濃縮咖啡的手指餅乾，並添加少許蘭姆酒提升風味，另外有別於傳統的樸實外型，外觀改以可愛的水滴狀馬斯卡彭起士呈現，最後撒上以黃金比例調和而成的法芙娜可可粉，一顆顆圓滾滾的外型，如同人與人之間長時間相處，所層層堆疊的親密關係，風味樸實卻令人回味。\r\n永恆 Violet\r\n傳說，畢生追求美麗與愛情的女神維納斯，在奧林帕斯山上，送別前往戰場的愛人—戰神瑪爾斯，離別時的不捨，讓她潸然淚下，翌年春天，女神留下的一滴滴眼淚，竟綻放出漫山遍野的紫羅蘭，自此，紫羅蘭也就作為「永恆愛情」的代名詞。\r\n愛情靈藥\r\n用一顆馬卡龍，為我們的愛情寫上祝福。以愛心外觀馬卡龍，不管是送情人或是婚禮小物都是一個最棒的禮物，用甜點傳遞愛語，讓愛成真的一款夢幻靈藥\r\nDécadance chocolat 1922 眷戀\r\n1922是經典法芙娜巧克力誕生日，1922是美國帶點頹廢浮華的時代，想像紙醉金迷，眷戀結合兩個地區極致奢貴，濃郁的巧克力甜味，激烈且強勢，透過柳橙片與柚子的酸甜找到一個平衡，讓人意猶未盡，愛就像杏仁餅巧克力片，融化在您手您口，只有你懂。達克瓦茲的酥脆口感，讓味蕾更增添了一份層次\r\n彩虹朵朵\r\n『Daddy！Mommy！I am a princess』 不用上課的日子，女兒一定要穿上粉色系的衣服及裙子，童言童語哼唱著公主動畫主題曲，下週她的生日即將到來，每年都是到百貨公司買蛋糕，今年她已經升上大班，是個大孩子了，那麼就嘗試點不一樣的體驗，帶著她親手製作自己的生日蛋糕吧！ 彩虹朵朵以五彩的柔軟戚風蛋糕為主體，外觀抹上漸層的粉紅、粉藍鮮奶油，上頭以彩色糖珠、馬林糖，以及翻糖製作的雲朵及彩虹，切開蛋糕還可以看到五種顏色的斷面，深受小朋友喜愛。\r\n奇幻萌獸馬卡龍\r\n法式馬卡龍幻化為純潔高雅的獨角獸，純白造型與萌萌的金角，搭配專屬的趣味彩妝盒恣意妝點出獨一無二的奇幻萌獸，微酸的奶油檸檬夾餡，中和馬卡龍的甜膩視覺與味覺的雙重享受，成功擄獲孩子的心\r\nOreo生乳酪慕斯\r\n\"轉一轉。捏一捏。碎一碎 OREO將快樂放大，讓想像力無限 跟著生乳酪一起High翻天 每一口發現生活中的無限驚奇。“\r\n草莓雪藏生乳酪\r\n頂級義大利馬斯卡彭生乳酪，濃郁帶點清爽，順滑不膩口。夾層裏吃得到滿滿草莓果粒，水果甜味襯托生乳酪淡雅風味加上酥脆餅乾基底，讓口感更具多種層次。 \r\n莓你不行草莓塔\r\n一顆接一顆的草莓疊進法式布丁餡裡，莓果特有清新香氣隱隱帶著酸甜 \r\n洛可可幻想曲\r\nFunsiamo與植物學家共同研發，將來自艾雷島以22種植物蒸餾而成的琴酒，融入柔軟的可可戚風蛋糕與草莓風味鮮奶油當中，香醇可可佐以微酸果韻，搭配琴酒獨特的清新薄荷及柑橘香氣。 \r\n法芙娜奶酒慕斯\r\n以柔軟的巧克力布朗尼為基底，內層以高品質鮮奶油、混合威士忌打造的貝禮詩奶酒，製作口感滑順濃郁的慕斯，外觀以58%巧克力營造鏡面效果，最後以金箔、紅醋栗及苦甜巧克力碎豆點綴。\r\n 威士忌三重奏\r\n一款屬於大人的微醺系甜點，將剛出爐的古典巧克力蛋糕，淋上些許格蘭利威單一麥芽12年威士忌，保持蛋糕濕潤度，經過揮發後，還能感受到威士忌特有的細緻香草及花果香，搭配口感滑順綿密的58%苦甜巧克力鮮奶油\r\n玩美UNICORN彩虹蛋糕\r\n以繽紛的五彩海綿蛋糕為主體，層層堆疊出綿密蓬鬆口感，外觀抹上甜而不膩的香緹鮮奶油，擠上粉色系瑞士奶油糖霜作為獨角獸的裝飾。\r\n迪蜜特之森\r\n以口感扎實的美式黃蛋糕為基底，並刷上檸檬汁增加濕潤口感與風味，夾層抹上藍莓果餡，蛋糕側邊貼上不規則苦甜巧克力片裝飾，頂端放上一顆顆酒漬櫻桃，最後以金黃巧克力屑點綴，是款甜而不膩、外型高貴優雅的大人系黑森林蛋糕。', 'campaignImg4.png,campaignImg5.png,campaignImg6.png,campaignImg7.png,campaignImg8.png', 'campaignImg4.png'),
(3, '甜點品嚐・手沖咖啡＋甜點下午茶', 180, 1000, '2021-07-05', 5, 0, 0, NULL, '台北市，中正區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '手沖咖啡體驗教學為您提供手沖咖啡所需要的器具以及咖啡豆，初步簡單地為您介紹器具及咖啡豆特性，並且讓你迅速掌握手沖要領，接著體驗手沖咖啡的樂趣。現在又多了新選擇，板橋門市，歡迎大家一起來體驗！', 'campaignImg9.png,campaignImg10.png,campaignImg11.png,campaignImg12.png', 'campaignImg10.png'),
(4, '手作體驗・六大基酒調酒課程', 180, 1300, '2021-03-20', 4.9, 1, 0, NULL, '台北市，大安區', NULL, NULL, 'taste', '基酒，顧名思義指的是調酒時候作為基底的酒，也是一杯雞尾酒當中最主要的材料，一般被普遍使用的基酒總共有六種，分別是：伏特加（Vodka）、琴酒（Gin）、蘭姆酒（Rum）、龍舌蘭（Tequila）、威士忌（Whiskey）、白蘭地（Brandy）；六大基酒調酒體驗，每一堂課將選用一種基酒進行三杯雞尾酒的調製，全課程總共分為 6 堂課，課程中由專業調酒講師進行調酒以及基酒的知識傳授，並教導調酒技巧，帶領學員們親手調製出不亞於專業的雞尾酒。', 'campaignImg13.png,campaignImg14.png,campaignImg15.png', 'campaignImg13.png'),
(5, '手作體驗・製作專屬紀念烈酒', 180, 1400, '2021-04-29', 4.2, 1, 0, NULL, '台北市，中正區', NULL, NULL, 'taste', '\"您將在這品嚐多種不同特色的酒 (包括無酒精的甜酒)，感受酒的多樣性。\r\n此行程您可以挑戰小遊戲，試著分辨出不同的烈酒，挑戰成功還可以拿到小禮物。最後將會製作貼有您的照片的紀念品 (內容為300毫烈酒 )，來這裡創造出獨一無二，只屬於你的紀念品吧。\"', 'campaignImg16.png,campaignImg17.png,campaignImg18.png', 'campaignImg16.png'),
(6, '職人講座・永續經營的創新力', 180, 2500, '2021-03-29', 4.6, 0, 0, NULL, '台北市，板橋區', NULL, NULL, 'workshop', '如何為品牌/產品找到新的市場機會？以產品建立口碑的經典老牌，如何建立品牌思維與新一代消費市場溝通？', 'campaignImg19.png,campaignImg20.png,campaignImg21.png,campaignImg22.png', 'campaignImg19.png'),
(7, '職人講座・甜點私廚的餐桌', 180, 1000, '2021-03-18', 5, 1, 1, NULL, '台北市，大安區', NULL, NULL, 'workshop', '現在甜點當道，擔任甜點私廚需要滿足挑嘴的人同時還要實現對料理的理想，將分享在講究美學的現代社會中，如何滿足消費者口腹並介紹台灣的甜點文化。', 'campaignImg23.png,campaignImg24.png,campaignImg25.png', 'campaignImg24.png'),
(8, '烈酒鑑賞・格蘭花格品酩會', 180, 800, '2021-04-20', 4.7, 0, 0, NULL, '台北市，中正區', NULL, NULL, 'taste', '創立自1836年的蘇格蘭單一麥芽威士忌品牌、兩次榮獲【威士忌雜誌Whisky Magazine】票選為「年度最佳威士忌酒廠」的Glenfarclas格蘭花格，於2021年再度展開【雪莉工藝 六代祖傳】品酩會。由格蘭花格品牌大使帶領您重回格蘭花格獨立經營的家族歷史故事，探索堅持六個世代的極致製酒工藝，品飲傳承180年的酒藏佳釀，從17年、21年到25年，感受不同層次風味的品飲體驗。', 'campaignImg26.png,campaignImg27.png,campaignImg28.png', 'campaignImg28.png'),
(9, '手作體驗・經典法式甜點DIY教學', 180, 1200, '2021-06-05', 4.9, 1, 0, NULL, '台北市，板橋區', NULL, NULL, 'handmade', '醉糕品味的主廚會親自教你如何烘焙出最道地經典的法國甜點，他還會偷偷告訴你這些傳統或創意甜點的美味秘方喔！', 'campaignImg29.png,campaignImg30.png,campaignImg31.png', 'campaignImg30.png'),
(10, '甜點鑑賞・Salon de Sweet甜點沙龍', 180, 2000, '2021-05-20', 4, 0, 1, NULL, '台北市，大安區', NULL, NULL, 'taste', '超過30種正宗的手工甜品以及30多種以上的料理可以在90分鐘內無限享用，甜品的種類繁多，有草莓奶油蛋糕、南瓜布丁、黑森林蛋糕、重磅蛋糕、石榴果凍、香蕉芝士蛋糕，蘋果派、水果卷、奶油泡芙、橘子果晶，酸奶慕斯等等。', 'campaignImg32.png,campaignImg33.png,campaignImg34.png', 'campaignImg12.png');

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

--
-- 傾印資料表的資料 `cart_activity`
--

INSERT INTO `cart_activity` (`sid`, `mid`, `p_sid`, `quantity`) VALUES
(5, 144, 2, 3);

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

--
-- 傾印資料表的資料 `cart_studio`
--

INSERT INTO `cart_studio` (`sid`, `mid`, `studio_id`, `date`, `time_period`, `price`) VALUES
(16, 144, 'A01', '2021-03-01', '全天', 10000);

-- --------------------------------------------------------

--
-- 資料表結構 `fav-product`
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
(367, 84, 0, 3000, '', '', '', '2021-02-24 17:28:23', '訂單成立', '0000-00-00', '不指定', '快遞宅配', '備貨中', '信用卡一次付清', '111', '', '', '', '', '', '1', '2021', '');

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
(3, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(4, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(5, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(6, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(7, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(8, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(9, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(10, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(24, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(25, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(26, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(27, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(28, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(29, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(30, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(31, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(32, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(33, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(34, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(35, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(36, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(37, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(38, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(39, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(40, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(41, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(42, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(43, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(44, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(45, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(46, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(47, '酒神', 2, '6吋', 450, '紅酒西洋梨威士忌風味千層蛋糕', '4.jpeg', '4.jpeg,4-1.jpeg,4-2.jpeg', '紅酒淺漬的西洋梨片埋藏在千層蛋糕中，與威士忌風味的奶油讓你每一口都充滿味覺和嗅覺的享受', 12, '紅葡萄酒/酒漬西洋梨片', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(48, '橙', 4, '6吋', 650, '檸檬風味鮮奶油蛋糕', '5.jpeg', '5.jpeg,5-1.jpeg,5-2.jpeg', '口味單純的千層蛋糕加入了君度橙酒後就搖身一變成為大人專屬的點心。酒香中藏有溫潤的蜂蜜甜味，鮮奶油內混入的檸檬皮讓甜點吃起來毫無膩口感，小孩才做選擇，大人就多買一個吧！', 40, '君度橙酒/龍眼蜜/檸檬皮/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(49, '踏雪', 4, '6吋', 650, '威士忌風味蛋糕', '6.jpeg', '6.jpeg,6-1.jpeg,6-2.jpeg', '沒有什麼比鮮奶油、焦糖和巧克力威士忌更適合點綴冬天了，在輕盈如雪花般的鮮奶油混入焦糖糖漿，與加了烈酒的巧克力蛋糕一口咬下，馬上就能感受到溫暖幸福的滋味！\r\n', 40, '威士忌/鮮奶油/焦糖糖漿/巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(50, '巧克力重擊', 5, '6吋', 650, '巧克力卡魯哇咖啡酒蛋糕', '7.jpeg', '7.jpeg,7-1.jpeg,7-2.jpeg', '法國莊園等級巧克力加上卡魯哇咖啡酒蛋糕，是本店廣受好評的特殊風味產品之一', 20, '卡魯哇咖啡酒/法國莊園級巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(51, '森聲', 5, '6吋', 650, '小山園抹茶特製蛋糕', '8.jpeg', '8.jpeg,8-1.jpeg,8-2.jpeg', '採用小山園抹茶、鮮奶油、與抹茶利口酒的特製蛋糕，是本店大受歡迎的人氣商品', 25, '抹茶利口酒/小山園抹茶粉/北海道鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(52, '夜之花', 2, '6吋', 650, '苦甜巧克力與紅酒蛋糕', '9.jpeg', '9.jpeg,9-1.jpeg,9-2.jpeg', '季節限定！苦甜巧克力與紅酒擦出火花，飽含紅酒香的蛋糕體與香濃巧克力是冬天的最佳選擇', 12, '紅葡萄酒/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(53, '小春日和', 3, '8吋', 950, '地瓜結合芋頭創意酒味蛋糕', '13.jpeg', '13.jpeg,13-1.jpeg,13-2.jpeg', '採用新鮮地瓜與特選大甲芋頭製作的健康風蛋糕！只在奶油中混入少量白酒增香，是適合初春時刻的輕量級蛋糕！', 10, '白葡萄酒/地瓜泥/大甲芋泥/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(54, '微醺森林', 4, '6吋', 650, '德式櫻桃黑森林蛋糕', '1.jpeg', '1.jpeg,1-1.jpeg,1-2.jpeg', '以德式黑森林蛋糕為基礎，加入蘭姆酒烘托出成熟的味道，搭配濕潤的蛋糕體有如親臨森林中富帶水氣的土壤，你的嗅覺會否和小白兔一起迷失在黑櫻桃的酒香中呢？', 40, '蘭姆酒/酒漬黑櫻桃/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', '001'),
(55, '祕果', 3, '6吋', 450, '酒漬無花果巧克力蛋糕', '2.jpeg', '2.jpeg,2-1.jpeg,2-2.jpeg', '一夜酒漬浸潤的無花果乾，果肉吸飽酒香，搭配70%微苦帶甜的巧克力蛋糕，散發出奢華醉人風味，以輕盈香草慕斯作為故事尾聲，今晚祝你有個好夢。', 10, '白葡萄酒/酒漬無花果乾/70%巧克力', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
(56, '可拉斯可', 4, '6吋', 150, '經典威士忌巧克力蛋糕', '3.jpeg', '3.jpeg,3-1.jpeg,3-2.jpeg', '經典不敗，愈是單純的東西愈能展現出價值，威士忌與70%苦甜巧克力交織共舞，不管人生是不是苦甜參半，都要帶點微醺和微笑。', 40, '威士忌/70%巧克力/鮮奶油', '千層蛋糕體', '奶蛋素', '冷藏', '冷藏1~2天內食用完畢，實際保存期限請見包裝標示', ''),
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
('-2JxmQGv_wG6wPhUJ0dbZuKQnB1uhfeG', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.714Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('-2KOjhnKgtubuwUiJ5WUtXS1eoZglCC6', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.425Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('-jYEy1690TU3uFpY60LqRUbIWOOzrpTX', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.538Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('-l8iXkGlsCbCXU6CGozUK7pLAr2hQotL', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.664Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('-tM3pV5vKCmWjA91lss1TX0zZzX0dw-w', 1614410212, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:52.343Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:52 GMT+0800 (台北標準時間)\"}'),
('0LQ3JkjfVYi6RwVqK4dQ0rPZsRsGbR5h', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.544Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('0cEN3TpmSRbuqmHyEZ9gdLBPC54JuAWm', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.885Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('0nUD55T31av_2QxVEmBQ2kkzbdeVMhHr', 1614410199, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.179Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('0vttSvGZESRHnjDKJkBz6hPTn9n3vRJZ', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.633Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('14cUa7I8wSxyB_3Wu0KtAhhMB--kYG9c', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.187Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('19zy3f8WlrXepCWgV67s_4c344aZeBwf', 1614410214, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.709Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('1eXpADM94s9OqWWVE9d4VpnZZSFgWSgL', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.293Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('1qPU-WwokIBpWo_oEFLI0dZzdJCe-Iv-', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.691Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('22TGQbAL5mtlZJIQ7gYM0sZ0xtWW7fS0', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.115Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('23gb046hTC9VhUOaEnwOMAr1lrgFLUnj', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.870Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('2KWO4NYp7QNewvcsk4OA5pMzSGj6eR-F', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.854Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('2PU34R32Zts9MjiBej-ozeLYAceYDom6', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.507Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('2Q2s5PJ0X2vqVgkK58vbA0rW6xDnaUWr', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.588Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('2XhrdJ8nZJPIszhL28CG_qYRQBFVHhUI', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.822Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('2l2wXUY8sFYPaCX8v8mskEb715KgEnKx', 1614410195, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:34.615Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('2pQekc-XzAUC2dPyZWyweS8aeT-xuPJ8', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.189Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('2vgsPgVCyZYSsP_qNmp0a0C3-B9G7o-r', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.257Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('33UYe98WnTM6i-SIouDd0IUNdCv2WMnu', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.642Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('3AGZkZjv5FdlNBt1za4iVO39V7FPjJ0j', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.151Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('3KALh_xrkh2nh8GOeWWdwfQhF40DQ6Ep', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.215Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('3QbNSrql0jl-JCiG_HCdxxH5ZoPHQQ9P', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.407Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('3YhM-cEoeJfC1DvWpP-aUy77KoZLleeC', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.638Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('3bL_vgsJOzqR5sVhKHrF3vv8LOweq50C', 1614410214, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:54.186Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:54 GMT+0800 (台北標準時間)\"}'),
('3lMhiUjosLMJ5SxrA9MII5XCLZeA_4XB', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.865Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('3ma2WMiKBH3P0hUHp__7KMJmVB4hdjFD', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.459Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('49fEgWLnrvdYgEnwBE4sfpkV5jPftTnC', 1614410232, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.554Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('4GoPAY8F4ertsPUVELf80qop9TCbanfW', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.238Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('4JX6SA--a3zl18YANxTCQI1CCowZruQq', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.075Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('4ToabpZsVN3-U3LBII7kt1w3g-nRJCdl', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.176Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('4iUvo37INXLcPiMvt1VPAfq6YicYhqjA', 1614410224, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:04.097Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:04 GMT+0800 (台北標準時間)\"}'),
('4vgyhavH3yDnWV7e5pSNvQI4BkQ0hYc7', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:27.590Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:27 GMT+0800 (台北標準時間)\"}'),
('55prBODXVoxgbjDmxyJeY_EhCDkPizQy', 1614410232, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.623Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('5KAkfGsxm-VrH-aj2QvFXKTZtUHYvxgo', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:01.180Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:01 GMT+0800 (台北標準時間)\"}'),
('5TVnrPTg-HvOx_XD6GMdXYtUeAR4gkDN', 1614410206, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:46.195Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('5eweBealEOfU-9lTT7xwEs5zE3JMjJGq', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.903Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('5njGBkWNi-MjaxUIuU_D6FAetylN4Me9', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.419Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('67boxMpNdVJJvNkOzX7-wU1ly3P73Ngv', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.274Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('6EXA1HCc3HiL0OC9_hWFDqNgtd4tRBVV', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.552Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('6MO-dvxhQtgebNv5BH0bgNaBtggf4O7l', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.833Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('6QHYrE-AF63HyspETsg_q8pzvkmYKw74', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.109Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('6a_JLSnE-HMLO1XykHIAIZ3W1E9YAidT', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.927Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('6kVm69lLBmzFbj1RY8RxiPUQhfY2h8Cw', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.588Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('6rI7xbLiUmtQmOipzhb6r3tRqJJ9u4gA', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:38.244Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:38 GMT+0800 (台北標準時間)\"}'),
('6tNcb8e-kHy3pZ_k30I-kSm0N5djtONd', 1614410212, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.811Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('70F6WKBRH0qNa8A5IhuYmgAfQU5g3BPQ', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.419Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('78AyEn7OsbSyj07YZtqn9hhVGbzF9ENW', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.323Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('7E9Duyj5qlX9i0mOfoBzmNDLnWqSIl67', 1614410217, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.965Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('7LSrzHNUz5aSTq4HuQ7DHC5UORdf8iqk', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.585Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('7onwBVKQEy0PypOUTkv0Xz8l62szeXAS', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.429Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('7ttu0uiRkM2K7zYad3agJqn338GCJGML', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.582Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('84Mj4dxvaWIejlNkdDjl6dPlqnURUN1S', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.043Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('85tAitI-XxK3OjK7HNNfKZBJyQqyftG2', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.570Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('8CwzyPAeQ67t9cTFBAX5cmGJI0d_Xkgx', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.599Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('8OGKhUA9EvE7J4qd7j4aoCPGM38KiXjc', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.108Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('8lCeAEodAtnz9X1mfEUmuusV7Ufls8L_', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.603Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('8uPt5rahv6H4jv0F0R2iykHv6T64k83q', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.844Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('8xn7JRm7eC1DGMqgf-QylHLVs5VNB0Dc', 1614410217, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.298Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('9BDOPD-M86WvyRixo4CYZqUTtvM8ul7W', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.498Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('9Nn3j_LT929Tcu14xJ8lWAGqmF4oK5Dk', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.522Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('9q4f0uRcR26ZmUl_y_N60OzqKnIP1dgC', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.481Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('9t2jqCpJgSCR7GfZVwLQJQv6SXB6rKn4', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.468Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('ABxjYtDb70WbPIFe5A9twu0Z9mUH8dYE', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.682Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}'),
('ACVsv4LuF3eJczL-OL28A5yT4XA8eLGF', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.075Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('AFbXyeXRUMDBmxoYpDphoDe87tthY_SI', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.263Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('AIXayC0WnoL-YF0tNeGYJEBxmJM6Dye_', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:46.037Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('AN3wmpKwzaeDQWzMuvhIc7yFwNHSzIKF', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.870Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('AN6HRZXUVqsJki4RrjO7yUJJfadP8QmO', 1614410222, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:01.508Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:01 GMT+0800 (台北標準時間)\"}'),
('ARuo39IHz3X3oST3i-72pj_QAfPtjsOg', 1614410194, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:34.287Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('AT4yIDB7-CAPRgr3dWK9yUdENJfVyL77', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.909Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('AT9yaEBkspp2y6BOsjhY4HePWWx7Odb4', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.667Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('AWPze0TjDgdyW5rIa4WsLwGFFMbLbjys', 1614410199, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.440Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('A_nFZTT4eYvA7vS0cH7JBrk0ktVgv0PQ', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.057Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('Af2MpFcG_A125EDe2oBFRko4ihRKx2eX', 1614410208, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:48.464Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:48 GMT+0800 (台北標準時間)\"}'),
('AqBQoyi5W2kUebf4wH7Ima_lDordEo7x', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.228Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('BT4e3jU-9Q9Xtb4MIXcjsrRV_lBsu2ZT', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.637Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('BYiYbJLHGeCMuJqyJfnFk8Z5NbeL_Tqo', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.445Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('BcvfMKA2v2JMmT4NkVFeJpPomKt7G1-z', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.722Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('C0wGPj5PEJe4b1hdHEAkxvaL-LtgiVWw', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.052Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('CCbigbOXdyPdfbklJSf8-2es00K8XhDS', 1614410225, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:04.580Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:04 GMT+0800 (台北標準時間)\"}'),
('CJjUlX_FpnVoeKwoSCU9jRHJ1F1v7buL', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.596Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('CPO57k5_JmI7gtStJJOyBkBFlQscp3On', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.029Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}'),
('CUqoXUMS0vKNrY10Ib1DO6etTuQSLQmZ', 1614410225, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.300Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('CZP7PUNPliP3medJJ8tXI2pHHnl0hVMv', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.815Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('C_04joJfnSJmNEcAENa3yZgTLAPa9cw0', 1614410191, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:30.715Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('CiqYri1jRvFCBkS-V1nPnwLyy1ZmYx6l', 1614410208, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:48.398Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:48 GMT+0800 (台北標準時間)\"}'),
('Cx5GKZo7w5GqLnxUiC384d0nQufmL1MD', 1614410223, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:03.468Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}'),
('DCHR_qqN1ZVJoG-OifzeYpZ60UP6v_es', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.855Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('DGdnEPepimh5hVgZVX1O7FR0a8IbJtxF', 1614410230, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:09.516Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:09 GMT+0800 (台北標準時間)\"}'),
('DGtLJjBQdTYL6x8Z-djm9Eowb6hLcrqk', 1614410224, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:04.487Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:04 GMT+0800 (台北標準時間)\"}'),
('DHfdkuQTKae3_ls9_TrXLI2jlQCeEWjt', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.881Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('DU3vfSlbVZP7yKCYTckBhGBGTERFJMUX', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.813Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('D_ev9qUcbm117pOrWYWRhyGtsAXN8NXr', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.540Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('EMphajeO7LAMrEMRD-0_aFMcavwHKZWp', 1614410199, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.297Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('EXyf11iWwdQ4c3DfRW--G8l-wSKnzkrL', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:54.729Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:54 GMT+0800 (台北標準時間)\"}'),
('EaUxLu9ix0ZlqXufraeP8s3u5RXDWSmj', 1614410232, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.696Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('Eid3W28iiNH1cVlWnyxdASi-O74okEG8', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:46.285Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('EwwouafPAXhZzjjECGFIFNhRF34U9BuQ', 1614410210, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:50.221Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:50 GMT+0800 (台北標準時間)\"}'),
('F5T4ojulIB8k19zlDhTEg4kr2nIrwdqQ', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.401Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('Fj8FQB6-CoTk3OnVHGunj1VwlCaJwwqV', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.501Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('Fz2tU6EUXvI6tb7gAgo43k9qGsAAg7Nb', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.155Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('GC5dpelTlzvAz3hEJ_Ya7CupUHeHBR_2', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.767Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('Grm3uwc4V-Kv-jDvNHFbXeFZFiTndd6i', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.780Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('Gvg_CwNQ0n_xDyD8EOaw0YhlynID41WY', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.289Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('H3mCkaE2KO8w4dvTx1jZUwgn5DfR1cBD', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.997Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('HO14Bx_YSW-CtniwVL-mDn-89JVPC2qQ', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.910Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('HOmqPARH0zbPnq7DFbPOwI1Ny-kg4Can', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.604Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('HS4zPLRBT5enQh142daWd4rb7TK_RHbk', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.990Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('Hnaia9mM8nV2jXz3CZqQUjzveBaebpdC', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.137Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('HpBJKwhViI790FgTIS72mEFCgdbU-e9h', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.551Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('HuDNpCZdoKe2cLo7hoRC4UjW9difH1Kv', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:27.860Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:27 GMT+0800 (台北標準時間)\"}'),
('HzoBjXyTweR3XLdK66yLd5gUNYBbDOv1', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.416Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('I4lTWyzWvhGhXakQKYi-jyv8u3JfA6TF', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.413Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('IYhyf9tiFvjLW0UGDiD7GWwGifveth7R', 1614410217, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:57.197Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('Ig-PXxZ3LtSDt1lYbxY8Qb_jUnbeeAGf', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.711Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('Imaqja7ulT_IfqQycwIO4h3EQMD0ccY0', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.939Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('J-ryY0ebbuItBWw9vcy-BFfDOamMSvaZ', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:46.497Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('J2RWmot4T85Ls3OSpr7g8h8PcVb5FJHC', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.954Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('J7QvfV6W6lOeLoEQQekFGohlZjzVkfoO', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.651Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('J87GuH9gYMArF95ECmG3J42_LBCG2oTP', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.217Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('JAvcCN8xEoQ1jGyJagt03CuJg9b8jzLR', 1614410213, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:52.783Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:52 GMT+0800 (台北標準時間)\"}'),
('JO07Idj26QJrkEr7bWd5tcf9fhIP1ujO', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.350Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('JXCilgtNaF_-hTmLXwWuNkuQL03zoAoS', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.739Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('J_S8h5wsnNlPXsbxK_sxfbH0xnPCCmrM', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.620Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('J_jrr3xwh9uzcbzFB0_cfJy2Aa9uMp-1', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.296Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('Jc3R7mokIjuxYtJEA1Uaex9qoyxN9Sqn', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.042Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('JoVXPoQeQF6k5mIQPXw_9ZCeEzKTZL4j', 1614410231, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:10.969Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:10 GMT+0800 (台北標準時間)\"}'),
('JtJ0HQVKYelHyN2EPvV43xPjrAvnkF6w', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.326Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('JxUpsQ4-vX6Gj_rQsmtE1Eut6NaDPwfH', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:50.620Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:50 GMT+0800 (台北標準時間)\"}'),
('JzQywJVG0vDNGzRJaMWK0u6P2g9qfjJz', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.942Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('K8jgw3dKoIQtwW8pOvcqrkEe013vXqR4', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.429Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('KOgz65TlAVde3U4aBSo9ebKuMU8JQw5E', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:38.386Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:38 GMT+0800 (台北標準時間)\"}'),
('KcfPOtfEQN8LIMLCg2Kmx3uFObEmOerE', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.663Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('KdPO7PqDZmuJuIA3K4oGnj38vYwk4IDZ', 1614410222, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:17:01.709Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:01 GMT+0800 (台北標準時間)\"}'),
('Kfkc4JuEB7oJxEcoq2d1jPAEsxgUKCeq', 1614410214, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.545Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('KprT0Nhl1LUAGvp7CKYkQvn7ghiuRkMF', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.923Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('LCingu-RbiaZRMb-64Y-S0IgFhXcEw5Z', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.711Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('LQUpHxcivhBhcRgWeqCu_fWRumAxfjt5', 1614410209, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:48.958Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:48 GMT+0800 (台北標準時間)\"}'),
('LRy3PKWZLwMWp0_t04IiAIaN0Iwadw7S', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.062Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('LTLNsdkLpviv2UWIfSsMYtB7vDcs_N40', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.209Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('LhkkVSoLfit-ap6fFbfSSEwEyvK03jYD', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.382Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('LiFfnu_852KHCRTQ-RXZFFV1k82FdKYE', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.780Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('M2XNSD6ToIbynoR1kV-fkErIhJEyKWCi', 1614410231, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.303Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('M52Ib7Bssuhfr533MDCwxbmp1m9ZE_dG', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.182Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('MJJvi3axVDzpG54BkdhoEXkj31V-Urxw', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.144Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('MQObLIMkgJTVHIvBujEhc6gUgUnsuLUn', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.293Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('MdjwsoNa2GSYIAnjgINqBf-jjo6kCAw-', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.100Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('MjJcIf_vIJ1O_efI2y6yVUvZX-HCSexq', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:46.351Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('NPJWYQmruBjlDwyt72PQaSeC0H4jNM0o', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.972Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('Ns0aeOnk8pFJoq6zjbn_JPyFar1_oBFH', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.682Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('OgjJR0XgsB8mlFukOHOM4YiJsawgf1yH', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.330Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('PQD7ukBa5lUyXfiOZu7-jBWBMIVQHRgT', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.439Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('PegDafbw0wkH1WmL4Cp3yDzEvTA-6pZM', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:09.136Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:09 GMT+0800 (台北標準時間)\"}'),
('Pk50W5Nvyyh3mLQ4n3GocRZ2XpHcVGvC', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.064Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('PpVGOf1VQxdwfyLWVaqB05uGF-mXjqR9', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.037Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('QA1OkU-XeStMi6Wa0VdMNXhBXd1TP--c', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:46.082Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('QDP-i8lA5o5I3g5czrr2a0ILbsMsTvQ9', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:50.998Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:50 GMT+0800 (台北標準時間)\"}'),
('QKzIWJeklMNnnBm-I3O9UFBL7xNavPHo', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.813Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('QfAqsVXujXJ1j2aGq5K89ass34ZLjOho', 1614410207, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:47.110Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:47 GMT+0800 (台北標準時間)\"}'),
('QfF6RPrUjYu6oE1NvbRp4FhtEiLb_MmO', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.553Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('QhhRlSFOydrye3w0DqYx8YFiT7jhCCMN', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.173Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('QpVoXWbaSO8w0M6xa83iIQwCvBkrAFo_', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.708Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('QsMDUTiK4qVYHU4Uif_HJ-ozpNjEjd1z', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.848Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('QxzjdlYes8j2mHYgV-I3_rNuVhsd-zf-', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.004Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('R6_CgkjNcoI52ycu0ayezd5jWspAO6zF', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.643Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('RIc5DW0ViQSIj4CcdNb2WpMPGkROZH4F', 1614410213, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.279Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('RXQJgGnc6-k86g_4y5yreNvjK3K0myll', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.380Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('RYgSePDEyMtNBBIHwFeb7tvBZflc8lhz', 1614410210, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:49.550Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:49 GMT+0800 (台北標準時間)\"}'),
('R__3udcVkHUdYydqoUR3pwzvlZdLxwvy', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.030Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('RrElPYWM5793PFxg2mNqXaB2O9NlzJOY', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:09.366Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:09 GMT+0800 (台北標準時間)\"}'),
('SHtJRAfshfnAJyHWaw7DDf5kNFjDVxWL', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.219Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('SQB6m3NrfXCl6Z4TMIrWXznLHrv59uj5', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.899Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('SYdXqO4-cW2mhH1ytk-6wG8yl0mpY52T', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.814Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}'),
('ScerxgrIT_Gwm7jWDyuvMZHAFLgMfeuE', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.798Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('SrwA79AJ_V490_KLkyvvz3fL8Gz5GMAR', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.371Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('SsoUzTW5QYu7Pc8gsVmnc1oCShDm7lMA', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.825Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('T6T4zalxqnFy51tFoqto03Vx_NNHh5D6', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.755Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('TLJIipE83-xdzpH69Xu2k0wS9UX6s2TV', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.466Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('TaCl9DmRjeI47V_ltIPUd5QnHvHa9CDz', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.706Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('TfGox7zJ5Zb2z4T-1PvMaGpX6K2UaEfP', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.225Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('Tgr8XrS-gIYwloOn6A-nm2GcSgbcbbeH', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.539Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('UE3mftkC0Q8pnUpc_VMm119a9q5siT8b', 1614410217, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.068Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('UMwiikNKMPD8rGafluZbaIXgaYa5FbqN', 1614410225, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.001Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:04 GMT+0800 (台北標準時間)\"}'),
('Ug2j7K7mmj_7aAdeYXNmPWc0jdSqOxzO', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.513Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('Uh8h6SqVoEk3KqVtiEsdZcJc4tQxvdYx', 1614410209, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:48.577Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:48 GMT+0800 (台北標準時間)\"}'),
('UktvoYI2CfvdvNPp1h6kUtojQnTXManP', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.616Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('V-nJhfbwXNBwX6vyl5xrYDrIYCDr2tOQ', 1614410226, '{\"cookie\":{\"originalMaxAge\":179999998,\"expires\":\"2021-02-27T07:17:05.749Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('VHiT43i7DluueT1EHzERJWsgi3fiX1rU', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.310Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('VMuxMR-yJUKs1zEaSfj2muEbSsm6uJ6k', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.002Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('VTXNheFMP8iDRBcnjFjdxY17niFPLlCk', 1614410212, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:52.491Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:52 GMT+0800 (台北標準時間)\"}'),
('VUk4okXdIpc4MqT3G7QQ_dAbi_g3bydc', 1614410222, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:02.049Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:02 GMT+0800 (台北標準時間)\"}'),
('VVUFEu5dhW16VMw5iYVjp0yqb0n1FgFz', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.056Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('VcFGKPKsgpSnChZqwCmcQtx8zD9buL2g', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.440Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('VnItmmzM-mXl3TyqpYMUNY4Nzqco4kNC', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.980Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('Vv9gExxz6O-7tOKQxn6YCrZkbWYOOJKR', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.360Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('Vvjv4iZHo7j4xk5GhCXJoUslJIxVNC6p', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.231Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('W6SGZx0O9WWWato21vjSQRzSsfU-bX7X', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.592Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('WPzpKSWTSRp2H1NCtiLfk7GH54FA4f8F', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.752Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('WXaRqyGfBriZCQWjJotn81Ipad-XeoRg', 1614410228, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:17:08.202Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('WrD4BqGs76dkxvGyowmr_25tgw2qQh-o', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.064Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('X7ZMDTUDj5HcixdEl-13zBW2Vs_U0cZo', 1614410209, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:49.281Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:49 GMT+0800 (台北標準時間)\"}'),
('XangWQlWKzEzymiX_AhZRGRQUsZVPkNR', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.748Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('Xc_yYVn00b3YmKPCfsrqINoVC24yiac5', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.929Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('XqkszQsMel5_-1qhVrOGh98C5apotiGQ', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.583Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('XvRt4H7a8H9ZtpFhxmA_NXFYD6C5bq09', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.453Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('Y3vU8gVxckepJqGdjnUP7lZ561237RoF', 1614410207, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:47.336Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:47 GMT+0800 (台北標準時間)\"}'),
('YCmjXb309jn2nfISDcJIo3aZHW3xb7Ln', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.014Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('YGwhpaacTzWf1in6BdCloBPcqa9HV_XR', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.544Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('YJnSO-qf35yM9n8vPoqoqJrLl6A5kCQ_', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.307Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('YOkzjSj4_rPsd2zlYjXHSV1mMr-uZNTZ', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:27.790Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:27 GMT+0800 (台北標準時間)\"}'),
('YUYyAqjI5HQusAaJp5WROvr1DIzNffK7', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.142Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('Ya3oQ7sXf9-cRH0kbyUL4hp0blCeEPBS', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.965Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('YjcDZnnr8UK7nX4DDmMK0jn7xg95XPYQ', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.226Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('YmmFSIIf9C69MKhk10VQRNn0TxpQtrMW', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.615Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}');
INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('Yo7Gbz4H9y1JQt8s7pIVe0SAkd2ZUsWZ', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.483Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('ZOxQ7mUKWgMFCiX5WGE0UbgWHgFkXeot', 1614410213, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.071Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('ZSv5FXOvVVTgutsuZlqHd3m4D1vPOOVF', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.936Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('ZUeTF2S6IEI5YPIoqNxlSo4ztPMTRioZ', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.138Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('ZiZK7EX7LDuD_JSN1TreW_UGGwVKDtcq', 1614410229, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.691Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('_13BnImkN2-JmMkxOcTAl77sDHuGbmOj', 1614410225, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.379Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('_2VshfZI0hMp8G113Yuo4xP1fmajSo-F', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.780Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('_9zcimuTs5tglzbqkpTW0Oq4G23Gnh8y', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.172Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('_QZ1fsiPrrlo_YKVzjuYRIpDL56Icmg1', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.888Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('_ZqSHz307GT_UPTvfJUX1Qki8GisY3q-', 1614410212, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:52.106Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:52 GMT+0800 (台北標準時間)\"}'),
('_e4rYE29ij2DK3hOaZQWCYMAEkNCKNHp', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.664Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('_fPAlV0PAdoQ-bsm9f6Whea2VG9yRutx', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.124Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('_g2V3riu8uys3iFo48C25t11eQWD2ayu', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.352Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('_krAuM83YN1GxoVRgdSvLR9x_4TiNUKo', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.332Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}'),
('_lm1xCjcwLm4CZFHKjkFI2CEqI5cCJoi', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.377Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('_sAS3n2QrKmNPj8iw8S7fm9MF7v4oNda', 1614410225, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:17:05.200Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('a5PSwWlsV2HhyV6gbkO_z-WkZr5dOCIL', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.672Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('a60Yhl7hQ0_9k7NS7Iy4tV6twG4N_vT9', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.963Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('aEn9rCNchjL5TmWVDnVUaTcEPDswr2Ij', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:27.940Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:27 GMT+0800 (台北標準時間)\"}'),
('aFpD7tSGB8RkqrcJWAfC3LZN-ySSJwpE', 1614410199, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:38.504Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:38 GMT+0800 (台北標準時間)\"}'),
('aGvypNGux4lF-UTqcE-GHDQReKKJ_e2j', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.026Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('aKB3A543m-AxJSaEzxiDFwjUoDB5pFNV', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.816Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('aQx_81pO_aVZ3ZjevMDyYwTQVfh09KNt', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.032Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('aYQcwU1kcwRT5Cxh4XFKPI3AWI4m2zbE', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.130Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('abiQrBQhj5gEYK756D14wiKs4H-jCP3q', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.772Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('agEU9BT752ea8dPCh_Xeimc_W_a1NgvM', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.436Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('akWnLWEmDopBCW_dgW5rTcXqLqUw8XyJ', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.731Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('annIw1XpftksCUKj4B0SqdhZ4SJ2V_Io', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:38.344Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:38 GMT+0800 (台北標準時間)\"}'),
('as46yMX4Ag-9d-G4OUFIr86li852w4Yq', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.008Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('ax2d3U_SPoCset8m3B21qBIHWTeaWXL3', 1614410214, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.856Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('b-coGCoZ_SBAR9RCO3jPxQVP2pprd5JK', 1614410207, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:46.953Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:46 GMT+0800 (台北標準時間)\"}'),
('bJOpLEC7TRy6kkQUVcdJ-L_thIlJyLPr', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.223Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('biJ-s81DKtgMWUX_wGcGuaVFAmopW3VN', 1614410226, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.004Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('brtxCfOUPxTctN595g6tS8tt_lpgLmbC', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.263Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('bzN5f0HS0yD_QPNHSgQLe-GtXEKiYn8X', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.885Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('ccJPWRQX8i2hTnzR_o9NZYcdFrRfpHr9', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.978Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('cfdfyVEluElJCTP1ooBnX3b9z4kUSru1', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.454Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('czfgau8C_OlMS2IEx5FyJXVkp0d9lLHs', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:54.857Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:54 GMT+0800 (台北標準時間)\"}'),
('dRkJQLjgHxM0Le1xxi9O9vXkuphrrLIw', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:44.376Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:44 GMT+0800 (台北標準時間)\"}'),
('dXhrqcXjMLLwzn992ltJKRJFUtr3mSia', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.842Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('drVSsfZjCh5UNMlsMITg6pe7x2JKALP8', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.319Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('e2kzf1HUFg0Fzv490XnO_WFc5rbgHK7_', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.277Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('e8gYJoaMJ0bBs0CahfIrjOpjewTCIr2L', 1614410206, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.911Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('eRM_Y4hZ33_OCOLo_a-70zc-fQ2T8Rr4', 1614410222, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:02.215Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:02 GMT+0800 (台北標準時間)\"}'),
('eWO5c4ZwCW6F-4EmbRmyxYF_D8zpaO4q', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.834Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('f9MGGSTolvnhsa7RDCl3r4j4ESTIFz16', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.477Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('fNripQqr7PqvPazW4uPcOjKpLdRL5p18', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.922Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('fauXwlhYB_5S2Hr6NTzvpoWxUjcPT2HP', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.400Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('gK2OwdxWGMm2ZYuERd5cCIB_i1LBSR_q', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:06.752Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:06 GMT+0800 (台北標準時間)\"}'),
('gKemkeD5jtwbQivjHJI2ZyhDQwWBGeZs', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.250Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('gMKtK6iPoR3XQxDD18NHa623HiWLxG5p', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.057Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('gSXGGs-9s9yuVtczF0yENl_qYW4JAUnf', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.370Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('gUAlaJqnhbya04OqcU_XFj6sY4Q3ZJFh', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.868Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('gV2s7yG4aFiowk22tayCQoeqPo4JiuFK', 1614410223, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:03.232Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}'),
('ggqia_Ryud2vvO4Nvjrxt4y1RydGa12Q', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.617Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('gmbA073Ot-h31Giu5Cd7a3ggTmJQOaM5', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.487Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('h8coQ7Vk9Yb_7dwYsRLMBl1XwTHaxKhv', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.347Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('hArU6XdGvi8KN09JNRMzCR0z2Gjq20BW', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:01.359Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:01 GMT+0800 (台北標準時間)\"}'),
('hZi8BbDf_o6tJjy2FZrjRpYOwBaearYN', 1614410212, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.618Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('hd_Xc2IdwWkiNXS0Wd95f8wjTU5VDqzX', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.160Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('hrqHb1ZTNqFP4y6wa5w8xHIkj5XPBpu6', 1614410230, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:09.764Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:09 GMT+0800 (台北標準時間)\"}'),
('i1pdPoRA36IgJzTdZCz8QzfiHDEP_IxY', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.318Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('i1q622HgH9RHTe7ZefN9yqc4j5TStvvZ', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:54.562Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:54 GMT+0800 (台北標準時間)\"}'),
('iQU9zKzxC6UDCCMNJ6UYGMEry8QTneSO', 1614410217, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:56.886Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('ieqf7p7_8Z6LuD3OC_Z325wLMDIfyKRU', 1614410214, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:54.364Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:54 GMT+0800 (台北標準時間)\"}'),
('ilp5bHmFThYAdy0XJC8sgW1sxKCjsoWh', 1614410230, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:10.033Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:10 GMT+0800 (台北標準時間)\"}'),
('j-ZIt4QPWxRacCrXz7Du0cSSPoEei-VE', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.279Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('j3_EJZQBIGSyIUqwVd5yO_yl15vypI7s', 1614410217, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.753Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('jMMPZmF3vRXRrcwpKYu3wX6aab2NqrNh', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.501Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('jQ3yZUcI4EOdYnyHSl1NlFgCI4mNbGHH', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:50.833Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:50 GMT+0800 (台北標準時間)\"}'),
('j_9XpXBB0Scp7VkPvvAkRjdh6TJpgpqN', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.472Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('jd8Zc-xh6lDwtmvnB6_SOax7Ntsrtesw', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.391Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('jgRgFnP_qTpcpFnW-e8MlvyQnnbRzEie', 1614410225, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:04.804Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:04 GMT+0800 (台北標準時間)\"}'),
('jhNQXgzJtIyWIhkGxxeGnqY95NX7S5tR', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.556Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('jiZ9bTYsDsK3oCNxI_eVPIh37GdUtnj6', 1614410217, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.398Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('jnooaZoYg94AImfsFyUAWJAGedngG2Wa', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.998Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('k0iCd4JB7grcNlMNh6WKCyzjk0SukcHF', 1614410232, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.831Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('kQsw5tzxxpCJpzuviZy4G8GVjY1SPwiV', 1614410213, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:52.656Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:52 GMT+0800 (台北標準時間)\"}'),
('k_M6awzgEIr4bVyCNxy81lsokjzgwNPL', 1614410200, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.901Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('lVvpyRchXXFJhwbuIYIyUQvFmmHNLMba', 1614410213, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.125Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('lflgEI6gvhOdaple_9U4pA0h4n9axmWy', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.876Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('lwjxABL4Bv2o21DPQRZqRjdB6RxhXpGF', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.844Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('mNeZEZzqrlq8zZyIcA5rh59qGocb6Lp0', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.384Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('mTIz3u9FUVVjCsxZizpezlS-T8lTh9gk', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.468Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('mVW-PyfgCacgpSjmmdDUrgtZ_L6lCaNp', 1614410220, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.998Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('mekyRmf5-DkZ0lwalXJPGM9T9Jtv6I0b', 1614410227, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:07.017Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:07 GMT+0800 (台北標準時間)\"}'),
('mlAiPoS3kO1RdfP8-bD4JUQvK-CjPAh9', 1614410214, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:53.973Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:53 GMT+0800 (台北標準時間)\"}'),
('muBnkJkahy6jIslTqqefZBKYKkuV-afP', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.683Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('nAY2e1fnegCkbuKGQUc5Qvyj4d5J0Iyi', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.444Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('nCLcm8M_xJnktcEnoUKXHFbI1-aDD9x6', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.944Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('nCNhCkVBxp6DSlwN8Fw3vL1slcoEPK-h', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.149Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('nYMenyCXzDRVnPwkRoRK1szm8v9njHsU', 1614410230, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:10.276Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:10 GMT+0800 (台北標準時間)\"}'),
('nfM8OIZtuZxVUuPzUfWnIwqSWEV_W3Eu', 1614410211, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:51.293Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:51 GMT+0800 (台北標準時間)\"}'),
('nw6L0lBx7Lg2bb0afrUqttrfR2XWLkP8', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.253Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('oDNGIH500UUy3G_BZhCCdLLlSoDXUbbR', 1614410225, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:05.487Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:05 GMT+0800 (台北標準時間)\"}'),
('oTncl_0tbuWvv_JrnEt9y-Ek-t-PPwCk', 1614410210, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:49.689Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:49 GMT+0800 (台北標準時間)\"}'),
('oXTy3Jnxhd9EccuDcZn2ALQ1CUZJXmz8', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.490Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}'),
('olUzwK-PYAnlG7l2b8lRpjTbsMhnjLJ3', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:59.191Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:59 GMT+0800 (台北標準時間)\"}'),
('orH3g3DB6PN_55vhdP9MstekU3ZMdBNs', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.696Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('p50ALiYQOEZrRf0lKIzzNgkilsOUhB5M', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.065Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('p7pUmBmWPb-KFfL3jcZ-I03DunxHMs4M', 1614410213, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:52.935Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:52 GMT+0800 (台北標準時間)\"}'),
('pm1l30_YkECkS1vpupgVyPqD-wLFnB26', 1614410216, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.018Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('q6kqKBJoQmjLDI_O-CeP6eGezrJRTNNF', 1614410223, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:03.035Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}'),
('qDfFJh-pSwyqh93LTqJpojsGDp6G0T2a', 1614410208, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:47.967Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:47 GMT+0800 (台北標準時間)\"}'),
('qEyz-nvlY4NfJ7cXS31ursieuc36bK4h', 1614410210, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:50.363Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:50 GMT+0800 (台北標準時間)\"}'),
('qMZNGGQvuVOcBblWBzbAoT6BvNMChJMz', 1614410219, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:58.751Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:58 GMT+0800 (台北標準時間)\"}'),
('qWSiNNvZcSL2jP8SmIIz5_jtSIQAsjQc', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.285Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('qX5L0MlK0bv3A3kDQvVnqxtfnUcRKpCh', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.989Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('qqcqt2jettut1qmMuoDKqplFA5Sptg-i', 1614410231, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.159Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('r0OXNoXvRVUaEqxRvUNkbCnm3JsWunzl', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:37.161Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:37 GMT+0800 (台北標準時間)\"}'),
('r17n5_FXONVK7KQiIE3gTOxGenad1-Am', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.102Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('r3dJpQQm_U5EyYE7hiKd1xYBXwaGJa76', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.276Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('r4ppizpHNbRh-kmC0PlJ-SpAF42X5xZT', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.487Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('r7TaWU9ubIOM0xJnjx_EHxn-E5T7ZSK6', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.955Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('rEzZ0-Oe4vGZRk17J1etPobMDGg02j1a', 1614410208, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:48.107Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:48 GMT+0800 (台北標準時間)\"}'),
('rl-HS7393QbfaYtKdthQAm9Q7rnmB32-', 1614410217, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:56.593Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:56 GMT+0800 (台北標準時間)\"}'),
('rtUyvuZREJ715RDOVOSd34AzD_Ceo9uT', 1614410193, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.055Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('sGobWwEHjt_81c7SZwkFzwAng36B3dAD', 1614410210, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:50.496Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:50 GMT+0800 (台北標準時間)\"}'),
('sU06JqyW7c_3zpF5feQeVFIHqxIsH7Gd', 1614410224, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:03.989Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}'),
('sWLaS_e5O4mEQ0zSUthx8EqwMkP077GK', 1614410189, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.772Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('shBc2CO54M0Ziq0vsoLDi8kOetoeVJou', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:40.944Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:40 GMT+0800 (台北標準時間)\"}'),
('t1dFLrS7pDUo9P81iAD2wUYdCWfZtMTo', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.119Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('tGIS5GExUDlZr9wQ2ikJQReVElRVxewm', 1614410209, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:49.375Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:49 GMT+0800 (台北標準時間)\"}'),
('tHL8LVt8Did1Pzz29ZawMY4xajY_Xhi4', 1614410188, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:28.099Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:28 GMT+0800 (台北標準時間)\"}'),
('tJ6zlhmdFjKnfJKggmTXF4Vcm4ezY62o', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.330Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('tbEgGcs_TAP-RGH_WAxBQhp-6Wgr7B2f', 1614410224, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:03.821Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}'),
('tn8xeOGYZ8L-OPBudNSIGHnvs-xiiSl0', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.507Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('tnXZjMEJ1xYH-NmdSiMhFl4kdE4GQEH3', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:00.842Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:00 GMT+0800 (台北標準時間)\"}'),
('uELHBP1Vf7rnDaFKoTJqOADX1wtSwym6', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.123Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('uFj0Fxau_wPQWXte1zEE8Ybw1ShS9qER', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:34.346Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:34 GMT+0800 (台北標準時間)\"}'),
('uJqlcnyslyW4DbJZvUwx67T-4dJYPHUb', 1614410192, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:32.018Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:32 GMT+0800 (台北標準時間)\"}'),
('uu-2SI-9VnQ5KVKeSzHNsVEkwGusGTKA', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.400Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('vAWt8HrPAssImjwt_JXxAGo3yxzF_5aH', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.244Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('vH1Mj-7GkGgLoy8eowOmQcMCK-YtzVSh', 1614410218, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:57.506Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:57 GMT+0800 (台北標準時間)\"}'),
('vUltjWlFy8i17FayWzqP0Ab24JbyqPxk', 1614410196, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.138Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('vaP1uPHqDzKzovEZrApM1Ig0ugzd7AAR', 1614410191, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:31.345Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:31 GMT+0800 (台北標準時間)\"}'),
('vhODJ8NAzL-ba9O-bstwC6sXZV7GV7SI', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.169Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('voebg9xEZnS0I1iNKX8_9hAh9ud-rwML', 1614410224, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:17:03.599Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}'),
('vsRe9YvdaiJSYJz7SHmB3CVC7NODyaxz', 1614410197, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:36.685Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:36 GMT+0800 (台北標準時間)\"}'),
('w12DS2EULVw76CS5ATEqLu-gh3yj8MRj', 1614410221, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:01.043Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:01 GMT+0800 (台北標準時間)\"}'),
('w720NHGYZvJME2ewhPee7BOduXNbpAEN', 1614410222, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:01.895Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:01 GMT+0800 (台北標準時間)\"}'),
('wFod8dfbDtcDDx-uR097PbiwrnHJ4r_e', 1614410194, '{\"cookie\":{\"originalMaxAge\":179999999,\"expires\":\"2021-02-27T07:16:33.578Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('wh_wI1e7dnnQZsXjIy1zMX2ZilHbuFJe', 1614410195, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:35.002Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:35 GMT+0800 (台北標準時間)\"}'),
('x6-4_c-9gFB7lKk7McVmei5mrVrnuiQn', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.969Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('xW8BBwQfJBTVe-YGAfqsvjB6ybd6pCk9', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.943Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('xeIXtxx5uKnWRx92Z37-Uq6KFYegxOQw', 1614410204, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:43.909Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:43 GMT+0800 (台北標準時間)\"}'),
('xgvew_yM3rlsaKM13rGYka___YoDiGdQ', 1614410232, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.950Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('xhA1HWmE1kk4B42Vt-ht7ZIqCU0QUdFQ', 1614410199, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:39.041Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:39 GMT+0800 (台北標準時間)\"}'),
('xi7RMUrRSgS0Wi6c8SKyhOs15Waz2_J8', 1614410228, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:08.478Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:08 GMT+0800 (台北標準時間)\"}'),
('xolHwv2qbdDLa-Xgl-remA5PYEUT9weB', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:30.096Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:30 GMT+0800 (台北標準時間)\"}'),
('xyqek1L1TIu7XqmAt532zWtR6o6DlEck', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.696Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('xzblD-uEbmmrS6MUCtCwuZDdXkqT2U4T', 1614410223, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:02.818Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:02 GMT+0800 (台北標準時間)\"}'),
('yBg9wWcddaVQTFnUPOS9mls_hzpIg059', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.981Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('ykE36PJA1aUCQ1QKOswNOJjjvQ7KbScs', 1614410203, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:42.547Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:42 GMT+0800 (台北標準時間)\"}'),
('yrViMEShap0rswMxnsUucna7nl-In0Mx', 1614410194, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:33.868Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:33 GMT+0800 (台北標準時間)\"}'),
('ytc-Pk9J7BtOP8Z0KLLPTnsDSeeUaWz9', 1614410202, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.554Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('yyMYGldQ04LiQM9p3h2i6KZ7F2xEDclc', 1614410198, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:38.111Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:38 GMT+0800 (台北標準時間)\"}'),
('yzfTtv4IcpW16a9PyirW-KloT2wZy46e', 1614410231, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:11.471Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:11 GMT+0800 (台北標準時間)\"}'),
('z0BVyh_BgqZmpzS0kWoZReWKN0ugzZXZ', 1614410201, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:41.315Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:41 GMT+0800 (台北標準時間)\"}'),
('z99CriPZEqHtdHpJFFRHY7c_r3ZepH-F', 1614410190, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:29.819Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:29 GMT+0800 (台北標準時間)\"}'),
('zQV_Bh-iKllFl5HnzY-swErlLMepye_O', 1614410215, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:55.155Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:55 GMT+0800 (台北標準時間)\"}'),
('zUW0ymkE1Rk7LbUnxrMDNnykpDMmvr0C', 1614410205, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:16:45.294Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:16:45 GMT+0800 (台北標準時間)\"}'),
('zyycii_oiLPZ-twOJ63W8cCwi3C5Mxny', 1614410224, '{\"cookie\":{\"originalMaxAge\":180000000,\"expires\":\"2021-02-27T07:17:03.691Z\",\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Thu Feb 25 2021 13:17:03 GMT+0800 (台北標準時間)\"}');

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
  `studio_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `studio_product`
--

INSERT INTO `studio_product` (`sid`, `studio_id`, `studio_name`) VALUES
(1, 'A01', '大安館教室'),
(2, 'A02', '東門管教室'),
(4, 'A03', '西門館教室');

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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_activity`
--
ALTER TABLE `cart_activity`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_studio`
--
ALTER TABLE `cart_studio`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders1`
--
ALTER TABLE `orders1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_items1`
--
ALTER TABLE `order_items1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

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
