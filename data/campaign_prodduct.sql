-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 03 月 03 日 07:42
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
(1, '手作體驗・親子 DIY 幸福甜點', 180, 1450, '2021-03-20', 4.5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '取消訂單，將收取所有實際產生費用', 'handmade', '享受自己做甜點的幸福時光，超過 80 種以上不同的甜點，除了享受美味、也享受幸福溫馨的 2 小時左右旅程～結束時除了將新鮮現作的甜點立刻帶走之外, 還可以跟家人、朋友分享並傳打卡增加自己的粉絲與成就！', 'campaignImg1.png,campaignImg2.png,campaignImg3.png', 'campaignImg1.png'),
(2, '手作體驗・DIY情人節裝飾蛋糕', 180, 1000, '2021-03-01', 4.6, 1, 1, '未滿 12 歲之兒童需由一名成年大人陪同製作 ，2 歲以下幼兒不計入人頭。', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '所選日期 4 天（含）之前取消，收取手續費 0%', 'handmade', '提供您與三五好友，享受輕鬆寫意的交流場域，發掘生活的無限美好，共創甜蜜故事。全方位的科技服務品牌，顛覆傳統作法，以「客自化」全新思維出發，採全自助烘焙，即便烘焙新手都能親手完成甜點。', 'campaignImg4.png,campaignImg5.png,campaignImg6.png,campaignImg7.png,campaignImg8.png', 'campaignImg4.png'),
(3, '甜點品嚐・手沖咖啡＋甜點下午茶', 180, 1000, '2021-07-05', 5, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '手沖咖啡體驗教學為您提供手沖咖啡所需要的器具以及咖啡豆，初步簡單地為您介紹器具及咖啡豆特性，並且讓你迅速掌握手沖要領，接著體驗手沖咖啡的樂趣。現在又多了新選擇，板橋門市，歡迎大家一起來體驗！', 'campaignImg9.png,campaignImg10.png,campaignImg11.png,campaignImg12.png', 'campaignImg10.png'),
(4, '手作體驗・六大基酒調酒課程', 180, 1300, '2021-03-20', 4.9, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '基酒，顧名思義指的是調酒時候作為基底的酒，也是一杯雞尾酒當中最主要的材料，一般被普遍使用的基酒總共有六種，分別是：伏特加（Vodka）、琴酒（Gin）、蘭姆酒（Rum）、龍舌蘭（Tequila）、威士忌（Whiskey）、白蘭地（Brandy）；六大基酒調酒體驗，每一堂課將選用一種基酒進行三杯雞尾酒的調製，全課程總共分為 6 堂課，課程中由專業調酒講師進行調酒以及基酒的知識傳授，並教導調酒技巧，帶領學員們親手調製出不亞於專業的雞尾酒。', 'campaignImg13.png,campaignImg14.png,campaignImg15.png', 'campaignImg13.png'),
(5, '手作體驗・製作專屬紀念烈酒', 180, 1400, '2021-04-29', 4.2, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '\"您將在這品嚐多種不同特色的酒 (包括無酒精的甜酒)，感受酒的多樣性。\r\n此行程您可以挑戰小遊戲，試著分辨出不同的烈酒，挑戰成功還可以拿到小禮物。最後將會製作貼有您的照片的紀念品 (內容為300毫烈酒 )，來這裡創造出獨一無二，只屬於你的紀念品吧。\"', 'campaignImg16.png,campaignImg17.png,campaignImg18.png', 'campaignImg16.png'),
(6, '職人講座・永續經營的創新力', 180, 2500, '2021-03-29', 4.6, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '如何為品牌/產品找到新的市場機會？以產品建立口碑的經典老牌，如何建立品牌思維與新一代消費市場溝通？', 'campaignImg19.png,campaignImg20.png,campaignImg21.png,campaignImg22.png', 'campaignImg19.png'),
(7, '職人講座・甜點私廚的餐桌', 180, 1000, '2021-03-18', 5, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '現在甜點當道，擔任甜點私廚需要滿足挑嘴的人同時還要實現對料理的理想，將分享在講究美學的現代社會中，如何滿足消費者口腹並介紹台灣的甜點文化。', 'campaignImg23.png,campaignImg24.png,campaignImg25.png', 'campaignImg24.png'),
(8, '烈酒鑑賞・格蘭花格品酩會', 180, 800, '2021-04-20', 4.7, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '創立自1836年的蘇格蘭單一麥芽威士忌品牌、兩次榮獲【威士忌雜誌Whisky Magazine】票選為「年度最佳威士忌酒廠」的Glenfarclas格蘭花格，於2021年再度展開【雪莉工藝 六代祖傳】品酩會。由格蘭花格品牌大使帶領您重回格蘭花格獨立經營的家族歷史故事，探索堅持六個世代的極致製酒工藝，品飲傳承180年的酒藏佳釀，從17年、21年到25年，感受不同層次風味的品飲體驗。', 'campaignImg26.png,campaignImg27.png,campaignImg28.png', 'campaignImg28.png'),
(9, '手作體驗・經典法式甜點DIY教學', 180, 1200, '2021-06-05', 4.9, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '醉糕品味的主廚會親自教你如何烘焙出最道地經典的法國甜點，他還會偷偷告訴你這些傳統或創意甜點的美味秘方喔！', 'campaignImg29.png,campaignImg30.png,campaignImg31.png', 'campaignImg30.png'),
(10, '甜點鑑賞・Salon de Sweet甜點沙龍', 180, 2000, '2021-05-20', 4, 0, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，大安區', '台北市大安區大安路一段84巷4號', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '超過30種正宗的手工甜品以及30多種以上的料理可以在90分鐘內無限享用，甜品的種類繁多，有草莓奶油蛋糕、南瓜布丁、黑森林蛋糕、重磅蛋糕、石榴果凍、香蕉芝士蛋糕，蘋果派、水果卷、奶油泡芙、橘子果晶，酸奶慕斯等等。', 'campaignImg32.png,campaignImg33.png,campaignImg34.png', 'campaignImg12.png'),
(11, '品嚐鑑賞・香薰主題健康下午茶', 180, 1400, '2021-06-28', 4.1, 1, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '一個寧靜的地方，讓你逃離煩囂的下午茶，隨心抽出專屬於你的「魔法咭」, 由你挑選喜愛的精油滴入香薰機，咬一口精緻甜點，聞一點香薰，保證令你身心靈同時放鬆。 ', 'campaignImg35.png,campaignImg36.png,campaignImg37.png,campaignImg38.png,campaignImg39.png', 'campaignImg35.png'),
(12, '品嚐鑑賞・粉紅夢幻甜點午茶', 200, 1000, '2021-04-10', 4.3, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'taste', '期間限定粉紅泡泡下午茶，以粉紅色作主打，可兩人享用多達十款鹹甜點，快相約你的閨蜜好友來一場甜蜜約會啦！我們提供無可抗拒的緻美食佳餚及精心調製的特式雞尾酒，並設有露天平台，提供特色文青戶外帳篷、網紅直播器材及打卡拍攝道具等。\r\n', 'campaignImg40.png,campaignImg41.png,campaignImg42.png,campaignImg43.png,campaignImg44.png,campaignImg45.png,campaignImg46.png', 'campaignImg40.png'),
(13, '職人講座・專家帶你葡萄酒入門', 210, 3000, '2021-07-04', 4.6, 1, 1, '報名者需年滿18歲', '台北市，大安區', '台北市，中正區', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'workshop', '講者經營代理法國布根地和香檳區的精品葡萄酒，秉持著對葡萄酒的熱忱，提供消費者最高的服務品質與合理的價格，未來我們將不定期舉辦具有主題的稀世珍釀品酒會，推廣葡萄酒生活美學，和提供最專業的葡萄酒訊息，努力維持高度的顧客滿意度。', 'campaignImg47.png,campaignImg48.png,campaignImg49.png,campaignImg50.png,campaignImg51.png,campaignImg52.png', 'campaignImg47.png'),
(14, '手作體驗・無麩質法式甜點 DIY 教學', 150, 1600, '2021-03-29', 4.7, 0, 0, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，板橋區', '新北市板橋區文化路一段45巷2-4', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '對麩質過敏不代表你要一輩子成為甜點絕緣體！現在你可以自己在家做美味的法式有機無麩質甜點，享受當個法國甜心，我們的法國廚師 Dominique 會教你如何使用 100％ 有機而且不含膚質的食材，去烘焙出經典的法式甜點；如果你有額外的食材需求，例如不含乳製品或豆類製品，我們也能為你客製化專屬食譜！', 'campaignImg53.png,campaignImg54.png,campaignImg55.png,campaignImg56.png,campaignImg57.png,campaignImg58.png', 'campaignImg54.png'),
(15, '手作體驗・法國主廚教學馬卡龍', 180, 1000, '2021-04-02', 4.9, 1, 1, '產品可能含奶製品、麩質穀類、花生類及其製品，不適合對其過敏體質者、乳糖不耐症者、素食者食用，欲了解詳細成分可致電洽詢門市', '台北市，中正區', '台北市中正區仁愛路二段42巷', '\r\n所選日期 0 ~ 3 天之間取消，收取手續費 100%', 'handmade', '讓你的巴黎之旅留下一道美麗的色彩吧！你將在巴黎市中心向法國甜點大廚一同學習製作馬卡龍，探索這小小甜餅及其奶油內餡中的層層美學，小班制的甜點課程最多只接受 8 位參加者，確保法國主廚能好好教導每一位參與者，你也能夠輕鬆成為馬卡龍大師！', 'campaignImg59.png,campaignImg60.png,campaignImg61.png', 'campaignImg61.png');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `campaign_prodduct`
--
ALTER TABLE `campaign_prodduct`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `campaign_prodduct`
--
ALTER TABLE `campaign_prodduct`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
