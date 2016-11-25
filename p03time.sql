-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- ホスト: 127.0.0.1
-- 生成日時: 2016 年 6 月 01 日 11:58
-- サーバのバージョン: 5.5.27
-- PHP のバージョン: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `p03time`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `tb_calendar`
--

CREATE TABLE IF NOT EXISTS `tb_calendar` (
  `cid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(250) NOT NULL,
  `cdetail` text NOT NULL,
  `scope` int(11) NOT NULL,
  `owner` varchar(32) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- テーブルのデータのダンプ `tb_calendar`
--

INSERT INTO `tb_calendar` (`cid`, `cname`, `cdetail`, `scope`, `owner`) VALUES
(1, '仕事', '仕事関連の予定', 2, 'tanaka'),
(2, 'プライベート', '個人的、プライベートな予定', 1, 'tanaka'),
(3, '旅行・レジャー', '個人の旅行、レジャーに関する予定', 1, 'watanabe'),
(4, 'プライベート', '秘密な予定', 1, 'watanabe'),
(5, '仕事', '仕事関連の予定', 2, 'sato'),
(6, '観光', '観光に関する予定', 1, 'goto'),
(7, '仕事', '仕事関連の予定', 2, 'mutuka'),
(8, 'プライベート', 'プライベートな予定', 1, 'ito'),
(9, '役職', '役職関連の予定', 1, 'hyoka');

-- --------------------------------------------------------

--
-- テーブルの構造 `tb_calendar_share`
--

CREATE TABLE IF NOT EXISTS `tb_calendar_share` (
  `sid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `share` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- テーブルのデータのダンプ `tb_calendar_share`
--

INSERT INTO `tb_calendar_share` (`sid`, `cid`, `share`, `userid`) VALUES
(1, 0, 'da', 'tanaka'),
(14, 0, 'tanaka', 'itou'),
(20, 0, 'tanaka', 'gotou'),
(28, 0, 'itou', 'gotou'),
(29, 0, 'itou', 'sato'),
(30, 0, 'itou', 'satota'),
(31, 0, 'itou', 'takahashi'),
(33, 0, 'tanaka', 'sato'),
(36, 0, 'tanaka', 'test'),
(37, 0, 'tanaka', 'tanaka'),
(38, 0, 'tanaka', 'hyouka'),
(39, 0, 'tanaka', 'matuka'),
(40, 0, 'tanaka', 'satota'),
(41, 0, 'tanaka', 'takahashi'),
(42, 0, 'tanaka', 'watanabe');

-- --------------------------------------------------------

--
-- テーブルの構造 `tb_equate`
--

CREATE TABLE IF NOT EXISTS `tb_equate` (
  `eid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text,
  `memo` text,
  `edate` datetime DEFAULT NULL,
  `content` text,
  `equateuser` text,
  `equatedetail` text,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `eid` (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- テーブルのデータのダンプ `tb_equate`
--

INSERT INTO `tb_equate` (`eid`, `title`, `memo`, `edate`, `content`, `equateuser`, `equatedetail`) VALUES
(1, '奨学金返済書類', '奨学金返済についてのお知らせ', '2015-11-10 13:00:00', NULL, NULL, NULL),
(2, '打ち合わせ', 'α開発についての打ち合わせ', '2015-11-16 18:00:00', NULL, NULL, NULL),
(10, '飲み会', '9時から2時間ほど飲み会を行いたいと思います', '2015-12-01 12:00:00', '参加できるか回答してください。\r\n予算3千円', '後藤太郎評価一郎伊藤四郎松香太郎佐藤健一佐藤太郎高橋花子田中涼幸テスト太郎渡辺太郎', '2015-12-06 09:00:00～2015-12-06 18:00:00,2015-12-09 09:00:00～2015-12-09 18:00:00,2015-12-03 09:00:00～2015-12-03 12:00:00,2015-12-08 09:00:00～2015-12-08 11:45:00'),
(12, '打ち合わせ', '打ち合わせを行いたいと考えています。', '2015-12-02 18:00:00', '15時から約2時間を予定しています。\r\n場合によっては3時間近くなる場合があります。\r\n出欠アンケートを取りますので、回答期限までに回答してください。', '後藤太郎評価一郎伊藤四郎松香太郎佐藤健一佐藤太郎高橋花子田中涼幸テスト太郎渡辺太郎', '2015-12-12 15:00:00～2015-12-12 18:00:00,2015-12-14 15:00:00～2015-12-14 18:00:00,2015-12-13 15:00:00～2015-12-13 18:00:00'),
(13, '飲み会', '4年最後の終わりの飲み会', '2016-01-27 17:00:00', '予算3千円。\r\n場所：香椎', '後藤太郎評価一郎伊藤四郎松香太郎佐藤健一佐藤太郎高橋花子田中涼幸渡辺太郎', '2016-01-29 18:00:00～2016-01-29 21:00:00,2016-01-31 18:00:00～2016-01-31 20:30:00,2016-01-28 19:00:00～2016-01-28 21:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `tb_equate_choice`
--

CREATE TABLE IF NOT EXISTS `tb_equate_choice` (
  `cid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `eid` int(11) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- テーブルのデータのダンプ `tb_equate_choice`
--

INSERT INTO `tb_equate_choice` (`cid`, `eid`, `userid`, `result`) VALUES
(2, 10, 'tanaka', '1,3,2,1'),
(3, 10, 'hyouka', '3,3,1,2'),
(4, 11, 'tanaka', '1,1,3'),
(5, 10, 'watanabe', '1,2,3,1'),
(6, 12, 'tanaka', '1,3,2'),
(7, 13, 'tanaka', '1,1,1'),
(8, 13, 'gotou', '1,3,1'),
(9, 13, 'sato', '1,2,2');

-- --------------------------------------------------------

--
-- テーブルの構造 `tb_schedule`
--

CREATE TABLE IF NOT EXISTS `tb_schedule` (
  `kid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) DEFAULT NULL,
  `kstime` timestamp NULL DEFAULT NULL,
  `ksweek` int(11) NOT NULL,
  `ketime` timestamp NULL DEFAULT NULL,
  `title` text,
  `place` text,
  `kmemo` text,
  `cid` bigint(20) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`kid`),
  UNIQUE KEY `kid` (`kid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- テーブルのデータのダンプ `tb_schedule`
--

INSERT INTO `tb_schedule` (`kid`, `userid`, `kstime`, `ksweek`, `ketime`, `title`, `place`, `kmemo`, `cid`, `weight`) VALUES
(1, 'tanaka', '2017-01-09 15:00:00', 0, '2017-01-10 14:59:00', '誕生日', '自宅', '２２歳になる誕生日		', 1, 0),
(2, 'sato', '2016-12-08 03:00:00', 3, '2016-12-07 18:10:00', 'ゼミ', '研究室', '第27回研究会', 6, 0),
(3, 'takahashi', '2016-12-15 04:00:00', 2, '2016-12-15 07:30:00', '会社説明会', '福岡県福岡市', '会社説明会、SPIあり', 1, 0),
(4, 'ito', '2016-12-02 02:20:00', 2, '2016-12-02 04:40:00', 'ランチ', '福岡県香椎 駅前', 'イタリアレストラン', 8, 0),
(5, 'watanabe', '2016-12-03 03:00:00', 1, '2016-12-03 09:30:00', '懇親会', '東京都', '会社で懇親会 持ち物：証明書', 3, 0),
(7, 'matuka', '2016-12-15 18:00:00', 1, '2016-12-15 21:00:00', '流星群', '高遠山', '１０年に一度の流星群が近くで見れるらしい', 7, 0),
(8, 'watanabe', '2016-12-07 18:00:00', 4, '2016-12-07 22:00:00', '映画鑑賞', '自宅のｔｖ', 'ホラー映画を見る', 3, 0),
(9, 'tanaka', '2016-12-27 06:00:00', 3, '2016-12-27 01:00:00', 'キャンプ', '富士山', '富士山に登る。持ち物：リュック、飲み物、防寒用具、お金', 2, 0),
(10, 'tanaka', '2017-01-08 02:45:00', 5, '2017-01-08 06:00:00', 'ホテルでランチ', '帝国ホテル', '奮発してランチを食べに行く。				', 2, 0),
(13, 'tanaka', '2017-01-11 06:00:00', 1, '2017-01-11 08:00:00', '研究室', '12524', '研究室で話し合い				', 1, 3),
(15, 'tanaka', '2017-01-11 10:30:00', 1, '2017-01-11 13:00:00', 'バイト', '会社', 'バイト		', 2, 0),
(22, 'tanaka', '2016-12-17 02:00:00', 4, '2016-12-17 13:00:00', 'テスト', '東京', '数学と英語のテスト		', 1, 3),
(24, 'tanaka', '2016-12-15 10:00:00', 2, '2016-12-15 12:00:00', '飲み会', '香椎駅前', '研究室忘年会', 1, 3),
(27, 'hyoka', '2016-12-17 00:00:00', 4, '2016-12-17 03:10:00', 'アンケート調査', '研究室12524', 'アンケート調査の協力にご協力ください！', 9, 0),
(30, 'tanaka', '2017-01-28 08:00:00', 4, '2017-01-28 09:30:00', '勉強会', '教室', '資格の勉強		', 1, 3),
(31, 'tanaka', '2017-01-30 07:00:00', 6, '2017-01-30 10:30:00', '買い物', '福津', '買い物', 2, 0),
(32, 'tanaka', '2017-01-31 11:30:00', 0, '2017-01-31 13:00:00', '博多', '博多駅', '集合', 1, 0),
(33, 'goto', '2017-01-28 06:00:00', 4, '2017-01-28 10:00:00', '買い物', '博多', '買い物', 6, 0),
(34, 'tanaka', '2017-01-30 04:00:00', 6, '2017-01-30 05:30:00', '回線工事', '家', '家の光回線工事', 2, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `userid` varchar(32) NOT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `job` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `tb_user`
--

INSERT INTO `tb_user` (`userid`, `passwd`, `username`, `sex`, `birthday`, `email`, `job`) VALUES
('admin', 'admin', '管理者', 0, '0000-00-00', '', 0),
('gotou', 'gotou', '後藤太郎', 1, '1984-04-17', 'gotou@yah.gmail.co.jp', 3),
('hyouka', 'hyouka', '評価一郎', 1, '1994-12-17', 'hyouka@test.mail', 7),
('itou', 'itou', '伊藤四郎', 2, '1995-12-01', 'itou@yhoo.co.jp', 1),
('matuka', 'matuka', '松香太郎', 2, '1990-04-15', 'matuka@yhoo.co.jp', 7),
('sato', 'sato', '佐藤健一', 1, '1993-04-26', 'sato@gmai.co.jp', 1),
('satota', 'sato', '佐藤太郎', 1, '1993-08-14', 'sato@yhoo.co.jp', 6),
('takahashi', 'takahashi', '高橋花子', 1, '1987-09-03', 'takahashi@yhoo.co.jp', 2),
('tanaka', 'tanaka', '田中涼幸', 1, '1993-07-15', 'ysyk715@yahoo.co.jp', 1),
('watanabe', 'watanabe', '渡辺太郎', 1, '1978-06-19', 'watanabe@gmai.co.jp', 3);

-- --------------------------------------------------------

--
-- ビュー用の代替構造 `vw_yotei`
--
CREATE TABLE IF NOT EXISTS `vw_yotei` (
`kid` bigint(20) unsigned
,`userid` varchar(20)
,`kstime` timestamp
,`ksweek` int(11)
,`ketime` timestamp
,`title` text
,`place` text
,`kmemo` text
,`cid` bigint(20)
,`weight` int(11)
,`cname` varchar(250)
,`cdetail` text
,`scope` int(11)
,`owner` varchar(32)
);
-- --------------------------------------------------------

--
-- ビュー用の構造 `vw_yotei`
--
DROP TABLE IF EXISTS `vw_yotei`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_yotei` AS select `tb_schedule`.`kid` AS `kid`,`tb_schedule`.`userid` AS `userid`,`tb_schedule`.`kstime` AS `kstime`,`tb_schedule`.`ksweek` AS `ksweek`,`tb_schedule`.`ketime` AS `ketime`,`tb_schedule`.`title` AS `title`,`tb_schedule`.`place` AS `place`,`tb_schedule`.`kmemo` AS `kmemo`,`tb_schedule`.`cid` AS `cid`,`tb_schedule`.`weight` AS `weight`,`tb_calendar`.`cname` AS `cname`,`tb_calendar`.`cdetail` AS `cdetail`,`tb_calendar`.`scope` AS `scope`,`tb_calendar`.`owner` AS `owner` from (`tb_schedule` join `tb_calendar` on((`tb_schedule`.`cid` = `tb_calendar`.`cid`)));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
