-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- 호스트: localhost
-- 처리한 시간: 17-05-26 21:59 
-- 서버 버전: 5.1.41
-- PHP 버전: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `zzzpanda`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board_file`
--

CREATE TABLE IF NOT EXISTS `board_file` (
  `BO_TABLE` varchar(100) DEFAULT NULL,
  `BO_IDX` int(10) NOT NULL DEFAULT '0',
  `BF_NO` int(10) DEFAULT NULL,
  `BF_FILE` varchar(500) DEFAULT NULL,
  `BF_SOURCE` varchar(500) DEFAULT NULL,
  `BF_DOWNLOAD` int(5) DEFAULT NULL,
  `BF_CONTENT` varchar(500) DEFAULT NULL,
  `BF_FILESIZE` int(10) DEFAULT NULL,
  `BF_DATETIME` date DEFAULT NULL,
  PRIMARY KEY (`BO_IDX`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board_file`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `board_notice`
--

CREATE TABLE IF NOT EXISTS `board_notice` (
  `bo_idx` int(10) NOT NULL AUTO_INCREMENT,
  `bo_writer` varchar(20) DEFAULT NULL,
  `bo_member` varchar(10) DEFAULT NULL,
  `bo_subject` varchar(1000) DEFAULT NULL,
  `bo_content` varchar(4000) DEFAULT NULL,
  `bo_is_secret` int(1) DEFAULT NULL,
  `bo_is_notice` int(1) DEFAULT NULL,
  `bo_file` varchar(20) DEFAULT NULL,
  `bo_pass` varchar(300) DEFAULT NULL,
  `bo_ref` int(10) DEFAULT NULL,
  `bo_level` int(10) DEFAULT NULL,
  `bo_step` int(5) DEFAULT NULL,
  `bo_hit` int(10) DEFAULT NULL,
  `bo_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bo_is_view` int(1) DEFAULT NULL,
  `bo_ip` varchar(20) DEFAULT NULL,
  `bo_1` varchar(200) DEFAULT NULL,
  `bo_2` varchar(200) DEFAULT NULL,
  `bo_3` varchar(200) DEFAULT NULL,
  `bo_4` varchar(200) DEFAULT NULL,
  `bo_5` varchar(200) DEFAULT NULL,
  `bo_tag` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`bo_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `board_notice`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `board_option`
--

CREATE TABLE IF NOT EXISTS `board_option` (
  `OP_IDX` int(10) NOT NULL,
  `OP_NAME` varchar(20) NOT NULL,
  `OP_TABLE` varchar(10) NOT NULL,
  `OP_SKIN` varchar(20) DEFAULT NULL,
  `OP_ADM_SKIN` varchar(20) DEFAULT NULL,
  `OP_IS_SECRET` int(1) DEFAULT '0',
  `OP_IS_IP` int(1) DEFAULT '0',
  `OP_IS_SIGN` int(1) DEFAULT '0',
  `OP_NEW_DATE` int(5) DEFAULT '24',
  `OP_REGDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OP_VIEW_LEVEL` int(2) DEFAULT '0',
  `OP_LIST_LEVEL` int(2) DEFAULT '0',
  `OP_WRITE_LEVEL` int(2) DEFAULT '0',
  `OP_COMMENT_LEVEL` int(2) DEFAULT '0',
  `OP_REPLY_LEVEL` int(2) DEFAULT '0',
  `OP_PAGE_LENGTH` int(2) DEFAULT '10',
  `OP_IS_PREVIEW` int(1) DEFAULT '0',
  `OP_IS_NOTICE` int(1) DEFAULT '0',
  `OP_CATE` varchar(1000) DEFAULT NULL,
  `OP_IMG_WIDTH` int(5) DEFAULT NULL,
  `OP_THUMB` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OP_IDX`,`OP_TABLE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board_option`
--

INSERT INTO `board_option` (`OP_IDX`, `OP_NAME`, `OP_TABLE`, `OP_SKIN`, `OP_ADM_SKIN`, `OP_IS_SECRET`, `OP_IS_IP`, `OP_IS_SIGN`, `OP_NEW_DATE`, `OP_REGDATE`, `OP_VIEW_LEVEL`, `OP_LIST_LEVEL`, `OP_WRITE_LEVEL`, `OP_COMMENT_LEVEL`, `OP_REPLY_LEVEL`, `OP_PAGE_LENGTH`, `OP_IS_PREVIEW`, `OP_IS_NOTICE`, `OP_CATE`, `OP_IMG_WIDTH`, `OP_THUMB`) VALUES
(0, '????', 'notice', 'basic', 'basic', 1, 1, 1, 24, '2017-05-26 10:33:08', 1, 1, 1, 1, 1, 10, 1, 0, '', 100, '100;100');

-- --------------------------------------------------------

--
-- 테이블 구조 `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `CF_TITLE` varchar(30) DEFAULT NULL,
  `CF_ADMIN` varchar(20) DEFAULT NULL,
  `CF_ADMIN_EMAIL` varchar(50) DEFAULT NULL,
  `CF_ADMIN_NAME` varchar(20) DEFAULT NULL,
  `CF_ADDR` varchar(50) DEFAULT NULL,
  `CF_TEL` varchar(20) DEFAULT NULL,
  `CF_INFO1` varchar(100) DEFAULT NULL,
  `CF_INFO2` varchar(100) DEFAULT NULL,
  `CF_INFO3` varchar(100) DEFAULT NULL,
  `CF_USE_ADDR` int(1) DEFAULT '0',
  `CF_USE_TEL` int(1) DEFAULT '0',
  `CF_USE_HP` int(1) DEFAULT '0',
  `CF_PRIVACY` varchar(4000) DEFAULT NULL,
  `CF_SERVICE` varchar(4000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `config`
--

INSERT INTO `config` (`CF_TITLE`, `CF_ADMIN`, `CF_ADMIN_EMAIL`, `CF_ADMIN_NAME`, `CF_ADDR`, `CF_TEL`, `CF_INFO1`, `CF_INFO2`, `CF_INFO3`, `CF_USE_ADDR`, `CF_USE_TEL`, `CF_USE_HP`, `CF_PRIVACY`, `CF_SERVICE`) VALUES
('?????', 'admin', 'leeminji25@naver.com', '???', '???', '010-2323-1211', '010.3050.1240', 'leeminji25@naver.com', 'web publisher & front-end developer', 1, 0, 1, '???(?) (?? ''???'' ?? ''??'')? ????? ???? ? ???? ?? ?? ??(??, ??????), ???????, ???????, ??????? ? ??? ???? ? ???? ?????? ??? ??? ???? ????. ?? OECD? ???? ?? ????? ? ?? ??? ???? ???? ?????.\r\n\r\n???? ????? ??? ???? ?? ??? ?? ?? ??? ? ??? ??????? ?? “????????(??)”?? ??? ? “???????? ????”? ???? ???, ?? ??? ?? ?? ??? (??, ??? ???)? ?????., cf_service=? 1 ? (??)\r\n\r\n? ??? ??? ???? ("??" ?? "???")? ???? ??? ? ??? ?? ?? ???? ??? ???? ??? ???? ??, ?? ? ????, ?? ??? ??? ???? ???? ???.\r\n? 2 ? (??)', '? ???? ???? ??? ??? ??? ????.\r\n?"???"? ?? ???? ???(PC, TV, ?????? ?? ?? ??? ??? ??)? ???? "??"? ??? ? ?? ??? ? ??? ?? ?? ???? ?????.\r\n?"??"?? ?? ??? "???"? ???? ? ??? ?? "??"? ????? ???? "??"? ???? "???"? ???? ??? ????.\r\n?"???(ID)"? ?? "??"? ??? "???" ??? ??? "??"? ??? "??"? ???? ??? ??? ??? ?????.\r\n?"????"? ?? "??"? ?? ?? "???? ???? "??"?? ???? ????? ?? "??" ??? ?? ?? ?? ??? ??? ?????.\r\n?"?????"? ?? "??"? ??? ???? ?? ?????????(?? ?????, VOD, ??? ?? ?????? ??) ? ?? ???? ?????.\r\n?"???"? ?? ???? ??? ??? ?? ??? ??? ?? ?? ??, ??? ? ?? ??? ??? ?? "???" ?? ?? ???? ?????.\r\n?"???"?? ?? "??"? "???"? ???? ?? "????"? ??? ?????????????????? ?? ?? ??? ?, ??, ??? ? ?? ??? ?? ?? ?????');

-- --------------------------------------------------------

--
-- 테이블 구조 `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `LO_IP` varchar(20) DEFAULT NULL,
  `MB_ID` varchar(20) DEFAULT NULL,
  `LO_REGDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LO_LOCATION` varchar(500) DEFAULT NULL,
  `LO_URL` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `login`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `MB_IDX` int(6) NOT NULL AUTO_INCREMENT,
  `MB_ID` varchar(20) NOT NULL,
  `MB_PASS` varchar(300) NOT NULL,
  `MB_NAME` varchar(20) NOT NULL,
  `MB_EMAIL` varchar(30) NOT NULL,
  `MB_REGDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MB_LASTEST` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `MB_BIRTH` varchar(10) DEFAULT NULL,
  `MB_ZIP` varchar(10) DEFAULT NULL,
  `MB_ADDR1` varchar(100) DEFAULT NULL,
  `MB_ADDR2` varchar(100) DEFAULT NULL,
  `MB_MAILING` int(1) DEFAULT '0',
  `MB_LEVEL` int(2) DEFAULT '1',
  `MB_TEL` varchar(20) DEFAULT NULL,
  `MB_HP` varchar(20) DEFAULT NULL,
  `MB_SALT` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`MB_IDX`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`MB_IDX`, `MB_ID`, `MB_PASS`, `MB_NAME`, `MB_EMAIL`, `MB_REGDATE`, `MB_LASTEST`, `MB_BIRTH`, `MB_ZIP`, `MB_ADDR1`, `MB_ADDR2`, `MB_MAILING`, `MB_LEVEL`, `MB_TEL`, `MB_HP`, `MB_SALT`) VALUES
(19, 'admin', '3fbbb66bdbfef670ab96d46cef31e49fa9298894629b9e99b65a070b8b83f169', '관리자', 'leeminji25@naver.com11', '2017-05-26 02:41:49', '2017-05-26 02:41:49', NULL, '135-200', '서울 강남구 밤고개로 120', '12121', 0, 10, '023341240', '01030501240', 'a22a31480122be36');

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `ME_IDX` int(10) NOT NULL AUTO_INCREMENT,
  `ME_NUM` int(5) DEFAULT '0',
  `ME_CODE` varchar(20) NOT NULL,
  `ME_NAME` varchar(30) NOT NULL,
  `ME_LINK` varchar(100) DEFAULT NULL,
  `ME_IS_VIEW` int(1) DEFAULT '0',
  `ME_IS_TARGET` int(1) DEFAULT '0',
  `ME_CONTENT` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ME_IDX`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `menu`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `popup`
--

CREATE TABLE IF NOT EXISTS `popup` (
  `PO_IDX` int(10) NOT NULL AUTO_INCREMENT,
  `PO_DEVICE` varchar(10) DEFAULT NULL,
  `PO_BEGIN_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PO_END_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PO_DISABLE_HOURS` int(10) DEFAULT NULL,
  `PO_LEFT` int(10) DEFAULT NULL,
  `PO_TOP` int(10) DEFAULT NULL,
  `PO_HEIGHT` int(10) DEFAULT NULL,
  `PO_WIDTH` int(10) DEFAULT NULL,
  `PO_SUBJECT` varchar(1000) DEFAULT NULL,
  `PO_CONTENT` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`PO_IDX`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `popup`
--


-- --------------------------------------------------------

--
-- 테이블 구조 `visit`
--

CREATE TABLE IF NOT EXISTS `visit` (
  `VI_IDX` int(10) NOT NULL AUTO_INCREMENT,
  `VI_IP` varchar(20) DEFAULT NULL,
  `VI_REGDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `VI_REFERER` varchar(200) DEFAULT NULL,
  `VI_AGENT` varchar(100) DEFAULT NULL,
  `VI_BROWER` varchar(100) DEFAULT NULL,
  `VI_OS` varchar(100) DEFAULT NULL,
  `VI_DEVICE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`VI_IDX`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 테이블의 덤프 데이터 `visit`
--

