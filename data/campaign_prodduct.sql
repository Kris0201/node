-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 02 月 24 日 09:49
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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
