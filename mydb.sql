-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-20 08:47:26
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- 資料表結構 `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE `bulletin` (
  `bid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `bulletin`
--

INSERT INTO `bulletin` (`bid`, `type`, `title`, `content`, `time`) VALUES
(1, 1, '【公告】109學年度資訊管理系【甄選入學】第二階段指定項目甄試(面試/術科)名單-資電類&商管群', '一、本校訂於109年6月13日（星期六）辦理甄選入學第二階段指定項目甄試作業，詳細時間及地點等相關事宜請詳閱下表甄試時間及地點通知。參加甄試之考生請攜帶「身份證正本」及「面試通知單」，於規定時間至指定地點辦理報到。\r\n\r\n二、若考生報考本校1系以上，且面試時間與他系重疊時，請填寫「甄試時間重疊申請表」(請點選連結)，於6/11(四)中午12:00前將申請表E-mail至ruby@must.edu.tw或直接電話聯繫資管系辦，以利安排。', '2020-06-13'),
(2, 2, '【公告】大二生專題指導同意書繳交事宜(截至6/5下午五點)', '請大二生於6/5(五)17:00前將專題指導同意書交到賴彥如老師(管215)或放到管211賴老師信箱\r\n\r\n各組人數以4-6人為原則', '2020-04-20'),
(5, 3, '109-1 TOEIC校園考試通知', '109-1 明新科大 TOEIC校園考試 考試資訊\r\n\r\n報名時間：109/11/11~109/11/20\r\n\r\n考試日期：109/12/16 13:30\r\n\r\n成績查詢：2021/01/06\r\n\r\n考試費用：1200\r\n\r\n報名網址：\r\n\r\nhttps://www.examservice.com.tw/Home/preindex?setStoreID=B6102C', '2020-10-23'),
(6, 4, '【公告】2020第2梯次的iPAS證照考試報名至10/19截止', '資安證照的考試科目與時間如下：\r\n\r\n資訊安全管理概論：11/28(六) 下午13:30~14:45\r\n\r\n資訊安全技術概論：11/28(六) 下午15:15~16:30\r\n\r\n每科報名費：600元 (大會考推廣期原價800元)\r\n\r\n報名網址：https://reurl.cc/N6b7Zx\r\n\r\n報名時間：至10/19截止 (繳費截止日期亦同)\r\n\r\n考試地點：明新科大鴻超樓2樓多遊系217多媒體教室\r\n\r\n ', '2020-10-12'),
(9, 5, '【公告】TQC 2016大會考(一)開放報名中！', '不限系、級，現正報名中，敬請把握機會！\r\n\r\n \r\n\r\n測驗日期\r\n\r\n測驗時間\r\n\r\n測驗項目\r\n\r\n報名網址\r\n\r\n測驗地點\r\n\r\n10/28(三)\r\n\r\n13:30-14:10\r\n\r\nTQC大會考_PPT2016實用級(一)\r\n\r\nhttps://eec.must.edu.tw/cosinfo/cosinfo.aspx?cid=6732\r\n\r\n資訊處/電子計算機中心2樓F教室\r\n\r\n14:20-15:00\r\n\r\nTQC大會考_WORD2016實用級(一)\r\n\r\nhttps://eec.must.edu.tw/cosinfo/cosinfo.aspx?cid=6733\r\n\r\n15:10-15:50\r\n\r\nTQC大會考_EXCEL2016實用級(一)\r\n\r\nhttps://eec.must.edu.tw/cosinfo/cosinfo.aspx?cid=6734\r\n\r\n \r\n\r\n詳細報名資訊，請參閱附件\r\n\r\n \r\n\r\n如有問題，請洽管理學院大樓1樓推廣教育中心 (109辦公室)', '2020-09-25');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(40) NOT NULL,
  `pwd` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `pwd`) VALUES
('john', 'john1234'),
('mary', 'mary1234');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bulletin`
--
ALTER TABLE `bulletin`
  ADD PRIMARY KEY (`bid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bulletin`
--
ALTER TABLE `bulletin`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
