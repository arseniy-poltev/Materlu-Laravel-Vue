-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： localhost:3306
-- 生成日期： 2019-07-16 19:01:40
-- 服务器版本： 10.2.25-MariaDB
-- PHP 版本： 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `materlu`
--

-- --------------------------------------------------------

--
-- 表的结构 `birthdays`
--

CREATE TABLE `birthdays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `birthdays`
--

INSERT INTO `birthdays` (`id`, `name`, `date`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Joly', '2007-06-22', 'rfrgrg333@gmail.com', '2018-10-13 10:53:03', '2018-10-13 10:53:03'),
(2, 'Nikole', '2012-07-18', 'coikr8@gmail.com', '2018-10-13 10:53:36', '2018-10-13 10:53:36'),
(3, 'Wdwefrg', '2007-06-22', 'mihailyukov.vlad@gmail.com', '2018-10-28 16:23:33', '2018-10-28 16:23:33'),
(4, 'Steve', '1996-02-23', 'leesteve464@gmail.com', '2019-07-08 14:57:36', '2019-07-08 14:57:36');

-- --------------------------------------------------------

--
-- 表的结构 `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Name Nujnrg', 'regergerg@gmail.com', '5656454576', 'wfgregergggreg', '2018-10-25 09:37:56', '2018-10-25 09:37:56'),
(2, 'EFwrgerg', 'wefhbhjb@rewjkgnerg.com', '234234', 'rgerg', '2018-11-21 11:25:21', '2018-11-21 11:25:21'),
(3, 'EFwrgerg', 'wefhbhjb@rewjkgnerg.com', '234234', 'rgerg', '2018-11-21 11:25:54', '2018-11-21 11:25:54'),
(4, 'regerg', 'ijuif@wrg.com', '324353', 'wefwef', '2018-11-21 11:29:01', '2018-11-21 11:29:01'),
(5, 'ergeg', 'wefijhi@wef.com', '234345', 'rgergeg', '2018-11-21 11:29:59', '2018-11-21 11:29:59'),
(6, 'wfrg', 'wrgfjn@ergerg.com', '435345', 'wefwef', '2018-11-21 11:32:03', '2018-11-21 11:32:03'),
(7, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:39:36', '2018-11-21 11:39:36'),
(8, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:40:05', '2018-11-21 11:40:05'),
(9, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:40:29', '2018-11-21 11:40:29'),
(10, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:47:39', '2018-11-21 11:47:39'),
(11, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:04', '2018-11-21 11:52:04'),
(12, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:07', '2018-11-21 11:52:07'),
(13, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:13', '2018-11-21 11:52:13'),
(14, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:19', '2018-11-21 11:52:19'),
(15, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:32', '2018-11-21 11:52:32'),
(16, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:45', '2018-11-21 11:52:45'),
(17, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:52:58', '2018-11-21 11:52:58'),
(18, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:54:38', '2018-11-21 11:54:38'),
(19, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:55:09', '2018-11-21 11:55:09'),
(20, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:56:14', '2018-11-21 11:56:14'),
(21, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:57:15', '2018-11-21 11:57:15'),
(22, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:58:04', '2018-11-21 11:58:04'),
(23, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:58:21', '2018-11-21 11:58:21'),
(24, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:58:27', '2018-11-21 11:58:27'),
(25, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 11:59:09', '2018-11-21 11:59:09'),
(26, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:00:58', '2018-11-21 12:00:58'),
(27, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:01:04', '2018-11-21 12:01:04'),
(28, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:01:18', '2018-11-21 12:01:18'),
(29, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:01:54', '2018-11-21 12:01:54'),
(30, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:02:12', '2018-11-21 12:02:12'),
(31, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:02:46', '2018-11-21 12:02:46'),
(32, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:02:51', '2018-11-21 12:02:51'),
(33, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:03:51', '2018-11-21 12:03:51'),
(34, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:04:14', '2018-11-21 12:04:14'),
(35, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:06:24', '2018-11-21 12:06:24'),
(36, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:06:41', '2018-11-21 12:06:41'),
(37, 'EFwrgerg', 'wefwgk@wrgerg.com', '345345', 'wefgr', '2018-11-21 12:07:55', '2018-11-21 12:07:55'),
(38, 'Wfeergth', 'oikojioj@erh.com', '3555666', 'fefggggggg', '2018-11-21 12:09:49', '2018-11-21 12:09:49'),
(39, 'Ergthrth', 'wefwrg@gregerg.com', '678678789', 'uioioio', '2018-11-21 12:11:06', '2018-11-21 12:11:06'),
(40, 'Wewfergerg', 'oirjgoiiuj@rewgerg.com', '344564567', 'ergegh', '2018-11-21 12:14:33', '2018-11-21 12:14:33'),
(41, 'Maria', 'test@test.com', 'sjhbsjhbjshb', NULL, '2019-07-15 15:59:43', '2019-07-15 15:59:43'),
(42, 'Test', 'test@test.com', 'abc', NULL, '2019-07-15 16:00:14', '2019-07-15 16:00:14');

-- --------------------------------------------------------

--
-- 表的结构 `countries_delivery`
--

CREATE TABLE `countries_delivery` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_days` int(10) UNSIGNED NOT NULL,
  `max_days` int(10) UNSIGNED NOT NULL,
  `price_usd` double(8,2) UNSIGNED NOT NULL,
  `price_eur` double(8,2) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `countries_delivery`
--

INSERT INTO `countries_delivery` (`id`, `name`, `iso_code`, `min_days`, `max_days`, `price_usd`, `price_eur`, `parent_id`, `lft`, `rgt`, `depth`) VALUES
(1, 'España', 'ES', 3, 5, 7.00, 5.00, NULL, 2, 3, 1),
(2, 'United Kingdom', 'GB', 6, 9, 12.00, 10.00, NULL, 6, 7, 1),
(3, 'Singapore', 'SG', 14, 21, 18.00, 15.00, NULL, 4, 5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `discount` int(11) NOT NULL,
  `type` enum('amount','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `start_date`, `finish_date`, `discount`, `type`, `created_at`, `updated_at`) VALUES
(2, 'oct30', '2018-10-01', '2018-11-15', 25, 'percent', '2018-10-13 10:43:55', '2018-11-01 09:03:04');

-- --------------------------------------------------------

--
-- 表的结构 `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'US Dollars', 'USD', '$', '2018-10-15 08:42:16', '2018-10-23 06:27:00'),
(2, 'EU Euro', 'EUR', '€', '2018-10-15 08:42:42', '2018-10-23 06:27:18');

-- --------------------------------------------------------

--
-- 表的结构 `delivery`
--

CREATE TABLE `delivery` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` float(8,2) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apt_suite_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `delivery`
--

INSERT INTO `delivery` (`id`, `price`, `first_name`, `last_name`, `street_address`, `apt_suite_number`, `company_name`, `zip_code`, `city`, `country_id`, `state`, `phone`, `instructions`) VALUES
(81, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(82, 5.00, 'Name', 'Nujnrg', 'rthrtjj, rthrthrth, rthrthrth, rthrthrth', 'rthrthrth', '1922', '43555', 'ytjtyjtyj', 1, 'wefefweg', '84356345345', NULL),
(83, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(84, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(85, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(86, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(87, 12.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 2, 'Харьковская', '0994443091', NULL),
(88, 7.00, 'Name', 'Nujnrg', 'Staotass, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345, 234345', '234345', 'GlobalData', '2345345', '443345', 1, 'wefefweg', '5656454576', NULL),
(89, 10.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 2, 'Харьковская', '0994443091', NULL),
(90, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(91, 15.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 3, 'Харьковская', '0994443091', NULL),
(92, 7.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '0994443091', NULL),
(93, 7.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '994443091', NULL),
(94, 7.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '994443091', NULL),
(95, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 2, 'Харьковская', '994443091', NULL),
(96, 15.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 3, 'Харьковская', '994443091', NULL),
(97, 5.00, 'a', 'a', 'a', NULL, NULL, 'a', 'aa', 1, 'a', 'a', NULL),
(98, 5.00, 'a', 'a', 'a', NULL, NULL, 'a', 'a', 1, 'a', 'aa', NULL),
(99, 5.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '994443091', NULL),
(100, 7.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '994443091', NULL),
(101, 7.00, 'Владислав', 'Михайлюков', 'пр. Науки', '234345', 'GlobalData', '61146', 'Харьков', 1, 'Харьковская', '994443091', NULL),
(102, 5.00, 'Victor', 'Sanchez', 'Calle Castillo de Antequera, 72', NULL, NULL, '28692', 'Villafranca del Castillo', 1, 'Madrid', '34619771052', NULL),
(103, 5.00, 'Victor', 'Lamas', 'Ronda de las Sirenas', '5', NULL, '28231', 'MAdrid', 1, 'MAdrid', '34619771052', NULL),
(104, 5.00, 'adfasdf', 'asdfasdf', 'asdfasd', 'asdf', 'sadfasdasdf', '28001', 'asdfasdf', 1, 'Madrid', '666123123', NULL),
(105, 7.00, 'Fbntn', 'Rewfwe', 'пр. Науки', '3214234234', 'Cbnbngrgrg', '61146', 'Харьков', 1, 'Харківська', '23423235423', NULL),
(106, 5.00, 'Fbntn', 'Rewfwe', 'пр. Науки', '324324', 'Cbnbngrgrg', '61146', 'Харьков', 1, 'Харківська', '23423235423', NULL),
(107, 5.00, 'Fbntn', 'Rewfwe', 'weewfwf', '234234', 'Fewfwef', '312234', 'Fewfwef', 1, 'wefwef', '1213324', NULL),
(108, 5.00, '[Aramex]', 'name', '28292 Daugherty Orchard, 23232, 23232', '23232', '[Aramex] Testing Company', '400064', 'Mumbai', 1, 'MH', '89428293450', NULL),
(109, 5.00, '[Aramex]', 'name', '28292 Daugherty Orchard, 23232, 23232, 23232', '23232', '[Aramex] Testing Company', '400064', 'Mumbai', 1, 'MH', '89428293450', NULL),
(110, 12.00, 'Steve', 'Lee', 'Shenyang, Fapingqiu', 'Fapingqiu', 'Aojie', '110000', 'Shenyang', 2, 'Lioning', '8540154509', NULL),
(111, 5.00, 'Perez', 'Garcia', 'Calle espronceda, 11', '2º', NULL, '28047', 'Madrid', 1, 'Madrid', '+34656321432', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `emails`
--

CREATE TABLE `emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `emails`
--

INSERT INTO `emails` (`id`, `key`, `subject`, `content`, `created_at`, `updated_at`) VALUES
(1, 'contact_us', '{\"en\":\"Contact Us Form\",\"es\":\"Contact Us Form\"}', '{\"en\":\"Name: %name%\\r\\nEmail: %email%\\r\\nPhone: %phone%\\r\\nMessage: %text%\\r\\nEN\",\"es\":\"Name: %name%\\r\\nEmail: %email%\\r\\nPhone: %phone%\\r\\nMessage: %text%\\r\\nES\"}', '2018-11-21 11:12:46', '2018-11-21 12:14:09'),
(2, 'user_fail_order', '{\"en\":\"Your order is failed\"}', '{\"en\":\"#Your order hasn\'t been created :(\"}', '2018-11-21 12:16:21', '2018-11-21 12:16:21'),
(3, 'user_success_order', '{\"en\":\"Your order is successful\",\"es\":\"Your order is successful\"}', '{\"en\":\"#Your order has been successfully created! EN\",\"es\":\"#Your order has been successfully created! ES\"}', '2018-11-21 12:18:39', '2018-11-21 12:19:40');

-- --------------------------------------------------------

--
-- 表的结构 `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbr` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `languages`
--

INSERT INTO `languages` (`id`, `name`, `flag`, `abbr`, `script`, `native`, `active`, `default`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `lft`, `rgt`, `depth`) VALUES
(1, 'English', 'uploads/united-states.svg', 'en', 'Latn', 'English', 1, 0, NULL, NULL, NULL, NULL, 4, 5, 1),
(3, 'French', 'uploads/france.svg', 'fr', 'Latn', 'français', 1, 0, NULL, NULL, NULL, NULL, 6, 7, 1),
(4, 'Italian', 'uploads/italy.svg', 'it', 'Latn', 'italiano', 1, 0, NULL, NULL, NULL, NULL, 8, 9, 1),
(5, 'Español', 'uploads/spain.svg', 'es', 'Latn', 'Español', 1, 1, NULL, NULL, NULL, NULL, 2, 3, 1),
(6, 'German', 'uploads/germany.svg', 'de', 'Latn', 'Deutsch', 1, 0, NULL, NULL, NULL, NULL, 10, 11, 1),
(7, 'Portuguese', 'uploads/portugal.svg', 'po', NULL, 'Portuguese', 1, 0, NULL, NULL, NULL, NULL, 12, 13, 1);

-- --------------------------------------------------------

--
-- 表的结构 `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Menu 1', '2018-10-26 06:28:10', '2018-10-26 06:44:28', NULL),
(6, 'Menu 2', '2018-10-26 06:44:20', '2018-10-26 06:44:20', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `type`, `link`, `page_id`, `menu_id`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '{\"de\":\"Wie es funktioniert\",\"en\":\"How it works\",\"es\":\"\\u00bfComo funciona?\"}', 'internal_link', '#manual', 2, 1, NULL, NULL, NULL, NULL, '2018-10-15 12:15:46', '2018-12-22 19:26:24', NULL),
(7, '{\"de\":\"Wie ist es\",\"en\":\"What it\'s like\",\"es\":\"\\u00bfC\\u00f3mo es?\"}', 'internal_link', '#similarity', 2, 1, NULL, NULL, NULL, NULL, '2018-10-15 12:16:07', '2018-12-22 19:26:47', NULL),
(8, '{\"de\":\"Bewertungen\",\"en\":\"Reviews\",\"es\":\"Opiniones\"}', 'internal_link', '#about', 2, 1, NULL, NULL, NULL, NULL, '2018-10-15 12:16:15', '2018-12-22 19:27:06', NULL),
(9, '{\"de\":\"Kontakte\",\"en\":\"Contacts\",\"es\":\"Contactos\"}', 'internal_link', '#contact', 2, 1, NULL, NULL, NULL, NULL, '2018-10-15 12:16:21', '2018-12-22 19:27:31', NULL),
(10, '{\"en\":\"Stories\",\"es\":\"Cuentos\"}', 'page_link', NULL, 4, 6, NULL, NULL, NULL, NULL, '2018-10-26 06:50:20', '2018-12-22 19:27:19', NULL),
(11, '{\"en\":\"Contact\",\"es\":\"Contacto\"}', 'page_link', NULL, 2, 6, NULL, NULL, NULL, NULL, '2018-10-26 06:50:48', '2018-12-22 19:27:37', NULL),
(12, '{\"en\":\"Terms and conditions\",\"es\":\"T\\u00e9rminos y condiciones\"}', 'page_link', NULL, 5, 6, NULL, NULL, NULL, NULL, '2018-10-26 06:50:57', '2018-12-22 19:27:54', NULL),
(13, '{\"en\":\"Privacy\",\"es\":\"Privacidad\"}', 'page_link', NULL, 6, 6, NULL, NULL, NULL, NULL, '2018-10-26 06:51:04', '2018-12-22 19:28:01', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_08_04_131614_create_settings_table', 1),
(4, '2015_09_07_190535_create_languages_table', 1),
(5, '2015_09_10_124414_alter_languages_table', 1),
(6, '2016_05_05_115641_create_menu_items_table', 1),
(7, '2016_05_10_130540_create_permission_tables', 1),
(8, '2016_05_25_121918_create_pages_table', 1),
(9, '2017_04_10_195926_change_extras_to_longtext', 1),
(10, '2018_10_13_113041_create_birthdays_table', 2),
(11, '2018_10_13_113749_create_coupons_table', 3),
(13, '2018_10_15_113230_create_currencies_table', 4),
(14, '2018_10_22_090451_create_stories_table', 5),
(15, '2018_10_22_091147_create_values_table', 5),
(16, '2018_10_22_091522_create_story_values_table', 6),
(17, '2018_10_22_133854_create_countries_delivery_table', 7),
(18, '2018_10_22_134059_create_delivery_table', 7),
(19, '2018_10_22_134808_create_orders_table', 7),
(20, '2018_10_22_135933_create_orders_stories_table', 7),
(21, '2018_10_25_122706_create_contact_us_table', 8),
(22, '2018_10_25_124818_create_subscriptions_table', 9),
(23, '2018_10_26_092318_create_menus_table', 10),
(24, '2018_10_26_092320_add_menu_id_to_menu_items_table', 10),
(25, '2018_10_28_151423_add_reorder_to_languages', 11),
(27, '2018_11_01_192741_alter_countries_delivery_table', 12),
(29, '2018_11_06_163134_create_order_statuses_table', 13),
(31, '2018_11_21_125217_create_emails_table', 14);

-- --------------------------------------------------------

--
-- 表的结构 `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` enum('ordered','paid','printing','sending','delivering','delivered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `delivery_id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `status`, `code`, `total_price`, `delivery_id`, `coupon_id`, `currency_id`, `email`, `first_name`, `last_name`, `payment_method`, `created_at`, `updated_at`) VALUES
(45, 'sending', '5be1ad3582888', 43.00, 81, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-06 13:03:17', '2018-11-06 14:44:37'),
(46, 'delivered', '5be1ae291fcbc', 37.00, 82, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-06 13:07:21', '2018-11-06 14:49:33'),
(47, 'ordered', '5bf16ad7f15ad', 113.00, 83, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-18 11:36:23', '2018-11-18 11:36:23'),
(48, 'ordered', '5bf16b58ca451', 113.00, 84, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-18 11:38:32', '2018-11-18 11:38:32'),
(49, 'paid', '5bf16b7b32a49', 113.00, 85, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-18 11:39:07', '2018-11-18 11:39:37'),
(50, 'paid', '5bf16bfde885b', 37.00, 86, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-18 11:41:17', '2018-11-18 11:45:51'),
(51, 'delivering', '5bf18206e3e45', 57.00, 87, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-18 13:15:18', '2018-11-18 17:09:36'),
(52, 'paid', '5bf1c104be201', 47.00, 88, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-18 17:44:04', '2018-11-18 17:44:18'),
(53, 'paid', '5bf2e83c78fb5', 42.00, 89, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-19 14:43:40', '2018-11-19 14:45:14'),
(54, 'paid', '5bf2e92a145bd', 37.00, 90, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-19 14:47:38', '2018-11-19 14:47:42'),
(55, 'paid', '5bf2e9786b31f', 53.00, 91, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-19 14:48:56', '2018-11-19 14:48:59'),
(56, 'paid', '5bf56a2d3d8f5', 47.00, 92, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-21 12:22:37', '2018-11-21 12:22:42'),
(57, 'paid', '5bf57f75b53c1', 47.00, 93, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-21 13:53:25', '2018-11-21 13:55:49'),
(58, 'paid', '5bf589a4b45d4', 47.00, 94, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-21 14:36:52', '2018-11-21 14:37:06'),
(59, 'paid', '5bf591fd5aba3', 37.00, 95, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-11-21 15:12:29', '2018-11-21 15:12:45'),
(60, 'paid', '5bf5940d8d3df', 47.00, 96, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-21 16:21:17', '2018-11-21 16:21:20'),
(61, 'paid', '5bf5f03d7aa3a', 37.00, 97, NULL, 2, 'a@gmail.com', 'a', 'a', 'paypal', '2018-11-21 22:54:37', '2018-11-21 22:54:40'),
(62, 'ordered', '5bf76c1cde53c', 75.00, 98, NULL, 2, 'aaaa@gmail.com', 'a', 'a', 'card', '2018-11-23 01:55:24', '2018-11-23 01:55:24'),
(63, 'paid', '5bfbd1ec49752', 37.00, 99, NULL, 2, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-11-26 09:58:52', '2018-11-26 09:58:54'),
(64, 'paid', '5c0f77467cf47', 87.00, 100, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'card', '2018-12-11 07:37:26', '2018-12-11 07:37:45'),
(65, 'paid', '5c0f77794e53f', 47.00, 101, NULL, 1, 'mihailyukov.vlad@gmail.com', 'Владислав', 'Михайлюков', 'paypal', '2018-12-11 07:38:17', '2018-12-11 07:38:20'),
(66, 'ordered', '5c14d96344b4a', 37.00, 102, NULL, 2, 'vlamassamx@gmail.com', 'Victor', 'Sanchez', 'card', '2018-12-15 09:37:23', '2018-12-15 09:37:23'),
(67, 'ordered', '5c162bb46b2fc', 37.00, 103, NULL, 2, 'vlamas@nvia.com', 'Victor', 'Lamas', 'card', '2018-12-16 09:40:52', '2018-12-16 09:40:52'),
(68, 'ordered', '5c6eb6d4a7cda', 37.00, 104, NULL, 2, 'asdfasdf@gmail.com', 'fasdf', 'adfasdf', 'card', '2019-02-21 13:33:56', '2019-02-21 13:33:56'),
(69, 'paid', '5ce9680da71ab', 47.00, 105, NULL, 1, 'g4r32e23@g44.com', 'Gteghet', 'Hefeh', 'paypal', '2019-05-25 14:06:37', '2019-05-25 14:06:40'),
(70, 'paid', '5cea78c3d8f37', 37.00, 106, NULL, 2, 'g4r23r23@books.loc', 'Gteghet', 'Hefeh', 'paypal', '2019-05-26 09:30:11', '2019-05-26 09:30:14'),
(71, 'paid', '5ceaad1f23c88', 37.00, 107, NULL, 2, 'gre43g34g@ergerg34g.com', 'Gteghet', 'Hefeh', 'paypal', '2019-05-26 13:13:35', '2019-05-26 13:13:37'),
(72, 'paid', '5cf6534135f65', 37.00, 108, NULL, 2, 'nuhuihwgf@ewrgferg.com', 'Gewfwef', 'Frwgerg', 'paypal', '2019-06-04 09:17:21', '2019-06-04 09:17:24'),
(73, 'paid', '5cf6c10c66442', 37.00, 109, NULL, 2, 'nuhuihwgf@ewrgferg.com', '[Aramex]', 'name', 'paypal', '2019-06-04 17:05:48', '2019-06-04 17:05:51'),
(74, 'paid', '5d2377219eec7', 42.00, 110, NULL, 1, 'leesteve464@gmail.com', 'Steve', 'Lee', 'card', '2019-07-08 15:02:25', '2019-07-08 15:02:37'),
(75, 'ordered', '5d2cb91d9ef8c', 37.00, 111, NULL, 2, 'pepeperezg85@hotmail.com', 'Perez', 'Garcia', 'card', '2019-07-15 15:34:21', '2019-07-15 15:34:21');

-- --------------------------------------------------------

--
-- 表的结构 `orders_statuses`
--

CREATE TABLE `orders_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `orders_statuses`
--

INSERT INTO `orders_statuses` (`id`, `order_id`, `status`, `date`) VALUES
(1, 51, 'paid', '2018-11-02 19:06:27'),
(2, 51, 'printing', '2018-11-03 19:07:27'),
(3, 51, 'delivering', '2018-11-05 19:08:15'),
(4, 51, 'ordered', '2018-11-01 19:06:17'),
(5, 51, 'sending', '2018-11-04 19:07:43'),
(6, 51, 'delivered', '2018-11-06 19:08:04'),
(7, 52, 'ordered', '2018-11-18 19:44:04'),
(8, 52, 'paid', '2018-11-18 19:44:18'),
(9, 53, 'ordered', '2018-11-19 16:43:40'),
(10, 53, 'paid', '2018-11-19 16:45:14'),
(11, 54, 'ordered', '2018-11-19 16:47:38'),
(12, 54, 'paid', '2018-11-19 16:47:42'),
(13, 55, 'ordered', '2018-11-19 16:48:56'),
(14, 55, 'paid', '2018-11-19 16:48:59'),
(15, 56, 'ordered', '2018-11-21 14:22:37'),
(16, 56, 'paid', '2018-11-21 14:29:14'),
(17, 57, 'ordered', '2018-11-21 15:53:25'),
(18, 57, 'paid', '2018-11-21 15:55:49'),
(19, 58, 'ordered', '2018-11-21 16:36:52'),
(20, 58, 'paid', '2018-11-21 16:37:06'),
(21, 59, 'ordered', '2018-11-21 17:12:29'),
(22, 59, 'paid', '2018-11-21 17:12:45'),
(23, 60, 'ordered', '2018-11-21 17:21:17'),
(24, 60, 'paid', '2018-11-21 17:21:20'),
(25, 61, 'ordered', '2018-11-21 23:54:37'),
(26, 61, 'paid', '2018-11-21 23:54:40'),
(27, 62, 'ordered', '2018-11-23 02:55:24'),
(28, 63, 'ordered', '2018-11-26 10:58:52'),
(29, 63, 'paid', '2018-11-26 10:58:54'),
(30, 64, 'ordered', '2018-12-11 08:37:26'),
(31, 64, 'paid', '2018-12-11 08:37:45'),
(32, 65, 'ordered', '2018-12-11 08:38:17'),
(33, 65, 'paid', '2018-12-11 08:38:20'),
(34, 66, 'ordered', '2018-12-15 10:37:23'),
(35, 67, 'ordered', '2018-12-16 10:40:52'),
(36, 68, 'ordered', '2019-02-21 14:33:56'),
(37, 69, 'ordered', '2019-05-25 16:06:37'),
(38, 69, 'paid', '2019-05-25 16:59:25'),
(39, 70, 'ordered', '2019-05-26 11:30:11'),
(40, 70, 'paid', '2019-05-26 15:12:03'),
(41, 71, 'ordered', '2019-05-26 15:13:35'),
(42, 71, 'paid', '2019-05-26 15:13:37'),
(43, 72, 'ordered', '2019-06-04 11:17:21'),
(44, 72, 'paid', '2019-06-04 11:17:24'),
(45, 73, 'ordered', '2019-06-04 19:05:48'),
(46, 73, 'paid', '2019-06-04 19:05:51'),
(47, 74, 'ordered', '2019-07-08 17:02:25'),
(48, 74, 'paid', '2019-07-08 17:02:38'),
(49, 75, 'ordered', '2019-07-15 17:34:21');

-- --------------------------------------------------------

--
-- 表的结构 `orders_stories`
--

CREATE TABLE `orders_stories` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `story_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('boy','girl') COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `font_style` enum('standard','uppercase') COLLATE utf8mb4_unicode_ci NOT NULL,
  `character_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dedication` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dedication_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `orders_stories`
--

INSERT INTO `orders_stories` (`order_id`, `story_id`, `name`, `gender`, `language_id`, `font_style`, `character_info`, `dedication`, `dedication_picture`) VALUES
(46, 4, 'Wwfwe', 'girl', 5, 'standard', 'null', 'Dear Anna, This is a fairy tale for a special girl like you. We hope you have fantastic adventures surrounded by those who love you most.', 'uploads/firstStory.png'),
(49, 4, 'Peter', 'boy', 6, 'uppercase', 'null', 'Peter dedication', 'storage/dedications/sNBcCbUjJgw8sb5JIVhglcjk2NAP1CF7kSMomQoy.png'),
(50, 4, 'Wewfw', 'girl', 5, 'standard', 'null', 'ewfwef', NULL),
(52, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(53, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"A27159\",\"\"]},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(54, 4, 'Niki', 'boy', 5, 'uppercase', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"boy\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(56, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(57, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"it\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(58, 4, 'EFwefwf', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(59, 4, 'Wwdwd', 'girl', 3, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{\"colorojos\":[\"815B42\",\"\"]},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(60, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(61, 4, 'ed', 'boy', 5, 'uppercase', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"boy\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(62, 4, 'r', 'boy', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"boy\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(63, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(64, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL),
(64, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL),
(65, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL),
(66, 4, 'Carlota', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"E3B491\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL),
(67, 4, 'Carlota', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"1\",\"gender\":\"girl\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(68, 4, 'asdfasd', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"ojos\":[\"ojo_x5f_1\"],\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', 'fasdf', NULL),
(69, 4, 'Niki', 'boy', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"boy\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"ojos\":[\"ojo_x5f_1\"],\"pelos\":[\"pelo_x5f_1\"]},\"dedication\":\"\"}', NULL, NULL),
(70, 4, 'Niki', 'boy', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"boy\",\"color\":{},\"show\":{},\"dedication\":\"\"}', NULL, NULL),
(71, 4, 'Niki', 'boy', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"boy\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"ojos\":[\"ojo_x5f_1\"],\"pelos\":[\"pelo_x5f_1\"]},\"dedication\":\"\"}', NULL, NULL),
(72, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"ojos\":[\"ojo_x5f_1\"],\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL),
(73, 4, 'Niki', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"ojos\":[\"ojo_x5f_1\"],\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL),
(74, 6, 'Steve', 'boy', 1, 'standard', '{\"lang\":\"en\",\"story\":\"6\",\"gender\":\"boy\",\"color\":{\"colorpiel\":[\"F8DCBD\",\"\"],\"colorojo\":[\"594E49\",\"39322E\"],\"colorpelo\":[\"3B3B3B\",\"\"],\"colorgafas\":[\"547bbb\",\"\"]},\"show\":{\"ojos\":[\"ojos1\"],\"pelos\":[\"pelo1\"],\"complementos\":[\"gafas0\"]},\"dedication\":\"\"}', NULL, NULL),
(75, 4, 'Pepe', 'girl', 5, 'standard', '{\"lang\":\"es\",\"story\":\"4\",\"gender\":\"girl\",\"color\":{\"colorpiel\":[\"E3B491\",\"\"],\"colorojo\":[\"9DB177\",\"\"],\"colorpelo\":[\"3B3B3B\",\"\"]},\"show\":{\"ojos\":[\"ojo_x5f_1\"],\"pelos\":[\"pelo_x5f_1\"],\"accesorios\":[\"accesorio3\"]},\"dedication\":\"\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `pages`
--

INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'home', 'Home', '{\"de\":\"Home DE\",\"en\":\"Home EN\",\"es\":\"Cuentos personalizados para ni\\u00f1os\",\"it\":\"Home EN\",\"fr\":\"Home EN\"}', '/', NULL, '{\"de\":{\"h1\":\"Erstellen\\r\\nPersonalisierte Geschichten\\r\\nf\\u00fcr Kinder\",\"h3\":\"Wie ist es?\",\"h4\":\"Wie funktioniert es ?\",\"list1\":\"[{\\\"img\\\":\\\"images\\/indexPage\\/crown.svg\\\",\\\"text\\\":\\\"Benenne das Zeichen.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/palette.svg\\\",\\\"text\\\":\\\"Personalisieren Sie ihr Aussehen.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/pencil.svg\\\",\\\"text\\\":\\\"F\\u00fcgen Sie ein Bild und eine Widmung hinzu.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/rocket.svg\\\",\\\"text\\\":\\\"Bequem erhalten Sie es bei Ihnen zu Hause.\\\"}]\",\"list2\":\"[{\\\"text\\\":\\\"Gebundene Ausgabe\\\"},{\\\"text\\\":\\\"Gestanzte Buchumschlag\\\"},{\\\"text\\\":\\\"44 vollfarbige Seiten\\\"},{\\\"text\\\":\\\"Laminierter Glanz fleckenabweisend\\\"},{\\\"text\\\":\\\"Extra starke Bindungen\\\"},{\\\"text\\\":\\\"Mit Bild und Hingabe\\\"}]\",\"h2_3rd\":null,\"text_1\":null,\"slider1\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"}]\",\"slider2\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/similarity-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/similarity-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/similarity-slide1.png\\\"}]\",\"features\":null,\"subtitle\":\"Hol dir ein buntes Buch, wo dein Kid der Hauptheld ist!\",\"image_2nd\":null,\"meta_title\":null,\"description\":null,\"birthday_text\":\"Bitte geben Sie den Namen, das Geburtsdatum und Ihre E-Mail-Adresse an. Wir senden Ihnen einige Tage im Voraus eine E-Mail, damit Sie das aufregendste, erzieherischste und lustigste Geschenk kaufen k\\u00f6nnen.\",\"meta_keywords\":null,\"birthday_title\":\"Mach ein Geburtstagsgeschenk!\",\"meta_description\":null},\"en\":{\"meta_title\":\"Homepage\",\"meta_description\":\"desc\",\"meta_keywords\":\"keywords\",\"h1\":\"Create Personalised Stories for Children\",\"subtitle\":\"Get colorful book where\\u2019s your Kid is the main Hero!\",\"h4\":\"How does it work ?\",\"list1\":\"[{\\\"img\\\":\\\"images\\/indexPage\\/crown.svg\\\",\\\"text\\\":\\\"Name the character.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/palette.svg\\\",\\\"text\\\":\\\"Personalise their appearance.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/pencil.svg\\\",\\\"text\\\":\\\"Add a picture and a dedication.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/rocket.svg\\\",\\\"text\\\":\\\"Conveniently receive it at your home.\\\"}]\",\"h3\":\"What\'s it like ?\",\"list2\":\"[{\\\"text\\\":\\\"Hardback\\\"},{\\\"text\\\":\\\"Die-cut book cover\\\"},{\\\"text\\\":\\\"44 full-colour pages\\\"},{\\\"text\\\":\\\"Laminated gloss stain-repellent\\\"},{\\\"text\\\":\\\"Extra strong bindings\\\"},{\\\"text\\\":\\\"With picture and dedication\\\"}]\",\"birthday_title\":\"Make a Birthday Gift !\",\"birthday_text\":\"Please give us the child\'s name, date of birth, and your e-mail address. We\\u2019ll send you an e-mail a few days in advance, giving you the opportunity to buy the most exciting, educational and fun gift you could get.\",\"slider1\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide3.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide2.png\\\"}]\",\"slider2\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-3.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-2.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-1.png\\\"}]\",\"faqs\":\"[{\\\"title\\\":\\\"Who\'s it for?\\\",\\\"url\\\":\\\"images\\/indexPage\\/faq-kids.png\\\",\\\"text\\\":\\\"We have books for kids at every reading level, from beginners to advanced readers.\\\",\\\"class\\\":\\\"consumers\\\"},{\\\"title\\\":\\\"What\'s it like?\\\",\\\"url\\\":\\\"images\\/indexPage\\/book.svg\\\",\\\"text\\\":\\\"The book measures 22x22 cms, an appropiate and comfortable size for the little ones. There are 40 pages with double page illustrations in full colour with bright cuch\\u00e9 paper of 250 grams and covered in long-lasting hardback.\\\",\\\"class\\\":\\\"product_desc\\\"},{\\\"title\\\":\\\"How long does it take?\\\",\\\"url\\\":\\\"images\\/indexPage\\/delivery-truck.svg\\\",\\\"text\\\":\\\"Click select the country from the dropdown to check estimated delivery time.\\\",\\\"is_delivery\\\":\\\"1\\\",\\\"class\\\":\\\"delivery\\\"}]\",\"h3_2\":\"Enjoy your personalised story\",\"h3_3\":\"Opinions about us\",\"reviews\":\"[{\\\"title\\\":\\\"Maria fron London\\\",\\\"url\\\":\\\"images\\/indexPage\\/maria.svg\\\",\\\"text\\\":\\\"Beautiful book!\\\"},{\\\"title\\\":\\\"Leo fron Paris\\\",\\\"text\\\":\\\"I ordered two books and they were delivered promptly and in perfect condition. The books are beautiful quality, much better than I could have hoped for . Would highly recommend.\\\",\\\"url\\\":\\\"images\\/indexPage\\/leo.svg\\\"},{\\\"title\\\":\\\"Martin fron Berlin\\\",\\\"text\\\":\\\"The stories are all very cute, delivery fast and I was plesantly surprised by the quality of the papaer, prinding and binding. I bought one book for our son and two for our nieces and they all loved them, especially when they recognised themsleves in the story! Hope you can add a few more stories in the future because I would definitely like to buy more. Keep up the great work!\\\",\\\"url\\\":\\\"images\\/indexPage\\/martin.svg\\\"}]\",\"contact_us_questions\":\"[{\\\"text\\\":\\\"Do you want to suggest something?\\\"},{\\\"text\\\":\\\"Do you have any questions?\\\"},{\\\"text\\\":\\\"Would you like to work with us?\\\"}]\"},\"es\":{\"meta_title\":\"Cuentos personalizados para ni\\u00f1os\",\"meta_description\":\"Cuentos y libros personalizados para ni\\u00f1os. Un regalo original\",\"meta_keywords\":\"cuentos personalizados, regalo libro, libros, cuentos\",\"h1\":\"Crea tu cuento personalizado para ni\\u00f1os\",\"subtitle\":\"\\u00a1Consigue tu libro a todo color donde tu hijo es el protagonista!\",\"h4\":\"\\u00bfC\\u00f3mo funciona?\",\"list1\":\"[{\\\"img\\\":\\\"images\\/indexPage\\/crown.svg\\\",\\\"text\\\":\\\"Escribe el nombre del \\\\\\\"prota\\\\\\\"\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/palette.svg\\\",\\\"text\\\":\\\"Personaliza su apariencia\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/pencil.svg\\\",\\\"text\\\":\\\"A\\u00f1ade una foto y una dedicatoria\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/rocket.svg\\\",\\\"text\\\":\\\"Rec\\u00edbelo en casa c\\u00f3modamente\\\"}]\",\"h3\":\"\\u00bfQu\\u00e9 aspecto tiene?\",\"list2\":\"[{\\\"text\\\":\\\"Tapa dura\\\"},{\\\"text\\\":\\\"Cubierta troquelada\\\"},{\\\"text\\\":\\\"44 p\\u00e1ginas a todo color\\\"},{\\\"text\\\":\\\"Laminated gloss stain-repellent\\\"},{\\\"text\\\":\\\"Extra strong bindings\\\"},{\\\"text\\\":\\\"Con foto y dedicatoria\\\"}]\",\"birthday_title\":\"\\u00a1Haz un regalo de cumple!\",\"birthday_text\":\"Por favor ind\\u00edcanos el nombre de tu hijo o hija, fecha de nacimiento y tu e-email.\\r\\nTe enviaremos un e-mail unos d\\u00edas antes d\\u00e1ndote la oportunidad de tener tu libro\\r\\npersonalizado y una sorpresa para tu peque.\",\"slider1\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide3.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide2.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"}]\",\"slider2\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-2.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-3.png\\\"}]\",\"faqs\":\"[{\\\"title\\\":\\\"\\u00bfA qui\\u00e9n va dirigido ?\\\",\\\"url\\\":\\\"images\\/indexPage\\/faq-kids.png\\\",\\\"text\\\":\\\"We have books for kids at every reading level, from beginners to advanced readers.\\\",\\\"class\\\":\\\"consumers\\\"},{\\\"title\\\":\\\"\\u00bfC\\u00f3mo es el cuento?\\\",\\\"url\\\":\\\"images\\/indexPage\\/book.svg\\\",\\\"text\\\":\\\"The book measures 22x22 cms, an appropiate and comfortable size for the little ones. There are 40 pages with double page illustrations in full colour with bright cuch\\u00e9 paper of 250 grams and covered in long-lasting hardback.\\\",\\\"class\\\":\\\"product_desc\\\"},{\\\"title\\\":\\\"\\u00bfCu\\u00e1nto tarda en llegarme?\\\",\\\"url\\\":\\\"images\\/indexPage\\/delivery-truck.svg\\\",\\\"text\\\":\\\"Click select the country from the dropdown to check estimated delivery time.\\\",\\\"is_delivery\\\":\\\"1\\\",\\\"class\\\":\\\"delivery\\\"}]\",\"h3_2\":\"Disfruta de tu cuento personalizado\",\"h3_3\":\"Opiniones sobre nosotros\",\"reviews\":\"[{\\\"title\\\":\\\"Maria fron London\\\",\\\"url\\\":\\\"images\\/indexPage\\/maria.svg\\\",\\\"text\\\":\\\"Beautiful book!\\\"},{\\\"title\\\":\\\"Leo fron Paris\\\",\\\"text\\\":\\\"I ordered two books and they were delivered promptly and in perfect condition. The books are beautiful quality, much better than I could have hoped for . Would highly recommend.\\\",\\\"url\\\":\\\"images\\/indexPage\\/leo.svg\\\"},{\\\"title\\\":\\\"Martin fron Berlin\\\",\\\"text\\\":\\\"The stories are all very cute, delivery fast and I was plesantly surprised by the quality of the papaer, prinding and binding. I bought one book for our son and two for our nieces and they all loved them, especially when they recognised themsleves in the story! Hope you can add a few more stories in the future because I would definitely like to buy more. Keep up the great work!\\\",\\\"url\\\":\\\"images\\/indexPage\\/martin.svg\\\"}]\",\"contact_us_questions\":\"[{\\\"text\\\":\\\"\\u00bfQuieres comentarnos algo?\\\"},{\\\"text\\\":\\\"\\u00bfTienes alguna pregunta?\\\"},{\\\"text\\\":\\\"\\u00bfQuieres trabajar con nosotros?\\\"}]\"},\"it\":{\"meta_title\":\"Homepage\",\"meta_description\":\"desc\",\"meta_keywords\":\"keywords\",\"h1\":\"Create Personalised Stories for Children\",\"subtitle\":\"Get colorful book where\\u2019s your Kid is the main Hero!\",\"h4\":\"How does it work ?\",\"list1\":\"[{\\\"img\\\":\\\"images\\/indexPage\\/crown.svg\\\",\\\"text\\\":\\\"Name the character.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/palette.svg\\\",\\\"text\\\":\\\"Personalise their appearance.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/rocket.svg\\\",\\\"text\\\":\\\"Conveniently receive it at your home.\\\"}]\",\"h3\":\"What\'s it like ?\",\"list2\":\"[{\\\"text\\\":\\\"Hardback\\\"},{\\\"text\\\":\\\"Die-cut book cover\\\"},{\\\"text\\\":\\\"44 full-colour pages\\\"},{\\\"text\\\":\\\"Laminated gloss stain-repellent\\\"},{\\\"text\\\":\\\"Extra strong bindings\\\"},{\\\"text\\\":\\\"With picture and dedication\\\"}]\",\"birthday_title\":\"Make a Birthday Gift !\",\"birthday_text\":\"Please give us the child\'s name, date of birth, and your e-mail address. We\\u2019ll send you an e-mail a few days in advance, giving you the opportunity to buy the most exciting, educational and fun gift you could get.\",\"slider1\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"}]\",\"slider2\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/similarity-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/similarity-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/similarity-slide1.png\\\"}]\",\"faqs\":\"[{\\\"title\\\":\\\"Who\'s it for?\\\",\\\"url\\\":\\\"images\\/indexPage\\/faq-kids.png\\\",\\\"text\\\":\\\"We have books for kids at every reading level, from beginners to advanced readers.\\\",\\\"class\\\":\\\"consumers\\\"},{\\\"title\\\":\\\"What\'s it like?\\\",\\\"url\\\":\\\"images\\/indexPage\\/book.svg\\\",\\\"text\\\":\\\"The book measures 22x22 cms, an appropiate and comfortable size for the little ones. There are 40 pages with double page illustrations in full colour with bright cuch\\u00e9 paper of 250 grams and covered in long-lasting hardback.\\\",\\\"class\\\":\\\"product_desc\\\"},{\\\"title\\\":\\\"How long does it take?\\\",\\\"url\\\":\\\"images\\/indexPage\\/delivery-truck.svg\\\",\\\"text\\\":\\\"Click select the country from the dropdown to check estimated delivery time.\\\",\\\"is_delivery\\\":\\\"1\\\",\\\"class\\\":\\\"delivery\\\"}]\",\"h3_2\":\"Enjoy your personalised story\",\"h3_3\":\"Opinions about us\",\"reviews\":\"[{\\\"title\\\":\\\"Maria fron London\\\",\\\"url\\\":\\\"images\\/indexPage\\/maria.svg\\\",\\\"text\\\":\\\"Beautiful book!\\\"},{\\\"title\\\":\\\"Leo fron Paris\\\",\\\"text\\\":\\\"I ordered two books and they were delivered promptly and in perfect condition. The books are beautiful quality, much better than I could have hoped for . Would highly recommend.\\\",\\\"url\\\":\\\"images\\/indexPage\\/leo.svg\\\"},{\\\"title\\\":\\\"Martin fron Berlin\\\",\\\"text\\\":\\\"The stories are all very cute, delivery fast and I was plesantly surprised by the quality of the papaer, prinding and binding. I bought one book for our son and two for our nieces and they all loved them, especially when they recognised themsleves in the story! Hope you can add a few more stories in the future because I would definitely like to buy more. Keep up the great work!\\\",\\\"url\\\":\\\"images\\/indexPage\\/martin.svg\\\"}]\",\"contact_us_questions\":\"[{\\\"text\\\":\\\"Do you want to suggest something?\\\"},{\\\"text\\\":\\\"Do you have any questions?\\\"},{\\\"text\\\":\\\"Would you like to work with us?\\\"}]\"},\"fr\":{\"meta_title\":\"Homepage\",\"meta_description\":\"desc\",\"meta_keywords\":\"keywords\",\"h1\":\"Create Personalised Stories for Children\",\"subtitle\":\"Get colorful book where\\u2019s your Kid is the main Hero!\",\"h4\":\"How does it work ?\",\"list1\":\"[{\\\"img\\\":\\\"images\\/indexPage\\/crown.svg\\\",\\\"text\\\":\\\"Name the character.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/palette.svg\\\",\\\"text\\\":\\\"Personalise their appearance.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/pencil.svg\\\",\\\"text\\\":\\\"Add a picture and a dedication.\\\"},{\\\"img\\\":\\\"images\\/indexPage\\/rocket.svg\\\",\\\"text\\\":\\\"Conveniently receive it at your home.\\\"}]\",\"h3\":\"What\'s it like ?\",\"list2\":\"[{\\\"text\\\":\\\"Hardback\\\"},{\\\"text\\\":\\\"Die-cut book cover\\\"},{\\\"text\\\":\\\"44 full-colour pages\\\"},{\\\"text\\\":\\\"Laminated gloss stain-repellent\\\"},{\\\"text\\\":\\\"Extra strong bindings\\\"},{\\\"text\\\":\\\"With picture and dedication\\\"}]\",\"birthday_title\":\"Make a Birthday Gift !\",\"birthday_text\":\"Please give us the child\'s name, date of birth, and your e-mail address. We\\u2019ll send you an e-mail a few days in advance, giving you the opportunity to buy the most exciting, educational and fun gift you could get.\",\"slider1\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/manual-slide1.png\\\"}]\",\"slider2\":\"[{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-1.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-2.png\\\"},{\\\"url\\\":\\\"images\\/indexPage\\/materlu-book-3.png\\\"}]\",\"faqs\":\"[{\\\"title\\\":\\\"Who\'s it for?\\\",\\\"url\\\":\\\"images\\/indexPage\\/faq-kids.png\\\",\\\"text\\\":\\\"We have books for kids at every reading level, from beginners to advanced readers.\\\",\\\"class\\\":\\\"consumers\\\"},{\\\"title\\\":\\\"What\'s it like?\\\",\\\"url\\\":\\\"images\\/indexPage\\/book.svg\\\",\\\"text\\\":\\\"The book measures 22x22 cms, an appropiate and comfortable size for the little ones. There are 40 pages with double page illustrations in full colour with bright cuch\\u00e9 paper of 250 grams and covered in long-lasting hardback.\\\",\\\"class\\\":\\\"product_desc\\\"},{\\\"title\\\":\\\"How long does it take?\\\",\\\"url\\\":\\\"images\\/indexPage\\/delivery-truck.svg\\\",\\\"text\\\":\\\"Click select the country from the dropdown to check estimated delivery time.\\\",\\\"is_delivery\\\":\\\"1\\\",\\\"class\\\":\\\"delivery\\\"}]\",\"h3_2\":\"Enjoy your personalised story\",\"h3_3\":\"Opinions about us\",\"reviews\":\"[{\\\"title\\\":\\\"Maria fron London\\\",\\\"url\\\":\\\"images\\/indexPage\\/maria.svg\\\",\\\"text\\\":\\\"Beautiful book!\\\"},{\\\"title\\\":\\\"Leo fron Paris\\\",\\\"text\\\":\\\"I ordered two books and they were delivered promptly and in perfect condition. The books are beautiful quality, much better than I could have hoped for . Would highly recommend.\\\",\\\"url\\\":\\\"images\\/indexPage\\/leo.svg\\\"},{\\\"title\\\":\\\"Martin fron Berlin\\\",\\\"text\\\":\\\"The stories are all very cute, delivery fast and I was plesantly surprised by the quality of the papaer, prinding and binding. I bought one book for our son and two for our nieces and they all loved them, especially when they recognised themsleves in the story! Hope you can add a few more stories in the future because I would definitely like to buy more. Keep up the great work!\\\",\\\"url\\\":\\\"images\\/indexPage\\/martin.svg\\\"}]\",\"contact_us_questions\":\"[{\\\"text\\\":\\\"Do you want to suggest something?\\\"},{\\\"text\\\":\\\"Do you have any questions?\\\"},{\\\"text\\\":\\\"Would you like to work with us?\\\"}]\"}}', '2018-10-12 09:59:50', '2019-07-08 08:29:23', NULL),
(3, 'faq', 'FAQ', '{\"en\": \"FAQ\"}', 'faq', NULL, '{\"en\": {\"questions\": \"[{\\\"title\\\":\\\"How much does it cost?\\\",\\\"desc\\\":\\\"The cost is 27£/$40 USD/ 50 CAD. Taxes and delivery not included.\\\"},{\\\"title\\\":\\\"Who\'s it for?\\\",\\\"desc\\\":\\\"The stories are for children between 2 and 9 years old, although a lot of                          parents start to read stories to their babies when they\'re still in the tummy.\\\"},{\\\"title\\\":\\\"What\'s it like?\\\",\\\"desc\\\":\\\"The book measures 22x22 cms, an appropriate and comfortable size for the little ones.                          There are 40 pages with double page illustrations in full colour with bright cuché paper of 300 grams and covered in long-lasting hardback.\\\"},{\\\"title\\\":\\\"How long does it take?\\\",\\\"desc\\\":\\\"All the books are personalized and printed exclusively for you.                          You\'ll be given an approximate delivery date when you order the book.\\\"},{\\\"title\\\":\\\"How can I pay?\\\",\\\"desc\\\":\\\"We accept payment by debit or credit cards and Paypal but                          if you have problems with these payments methods, we can also accept bank transfers.\\\"},{\\\"title\\\":\\\"Do you accept cash on delivery?\\\",\\\"desc\\\":\\\"Our stories are personalized and are printed exclusively                          for you so we can\'t make the book without a payment in advance.\\\"},{\\\"title\\\":\\\"Can you make a story with various characters?\\\",\\\"desc\\\":\\\"In all of our stories, there is only one character. Introducing more characters would entail redesigning                          all the scenes and texts. It could also end up undermining the importance of the main character.\\\"},{\\\"title\\\":\\\"How much does the delivery cost?\\\",\\\"desc\\\":\\\"The delivery cost and taxes are not included in the price of the book.                          Select a country to see the cost.\\\"},{\\\"title\\\":\\\"How can I apply a discount voucher?\\\",\\\"desc\\\":\\\"When you\'ve added your story to the cart, you\'ll see a text box where you can                          introduce your code. You’ll see that your discount has been applied to the final price.\\\"},{\\\"title\\\":\\\"I\'ve just received the book and it\'s got a defect, what should I do?\\\",\\\"desc\\\":\\\"When you made your order, you received an email with a link to your order page. Please use that link to contact                          us and we\'ll be in touch as soon as possible.\\\"},{\\\"title\\\":\\\"Where are you shipping to?\\\",\\\"desc\\\":\\\"We send our books to the United States, Canada, England, Spain, Portugal, France,                          Germany, Italy, Denmark, Ireland, Netherland, Austria, Belgium and Luxembourg. We\'re constantly adding more countries, so we suggest you subscribe to our newsletter to find out when we start sending to your country.\\\"},{\\\"title\\\":\\\"Do you include the invoice in the parcel?\\\",\\\"desc\\\":\\\"No, we don\'t include any invoice in the parcel since most of our clients buy our books for gifts.                          You can request and download your invoice through your order page.\\\"},{\\\"title\\\":\\\"Is it possible to personalise the story?\\\",\\\"desc\\\":\\\"No, it is not possible to personalise the story. You can choose from the stories we have available. Currently, there are: Bubbles, Adventures in Alaska, The Kingdom                          of Mirinian and Jelly Planet. Here you find a synopsis of the stories and the values they convey.\\\"},{\\\"title\\\":\\\"In what languages are the books available?\\\",\\\"desc\\\":\\\"Our books are available in the following languages: English (USA), English (UK),                          French, German, Spanish, Catalan, Galician and Basque.\\\"}]\", \"meta_title\": null, \"meta_keywords\": null, \"meta_description\": null}}', '2018-10-19 09:43:34', '2018-10-22 07:39:09', NULL),
(4, 'story', 'Stories', '{\"en\":\"Stories\",\"es\":\"Cuentos\"}', 'cuentos', NULL, '{\"en\":{\"meta_title\":null,\"meta_description\":null,\"meta_keywords\":null,\"h3\":\"Choose your story\"},\"es\":{\"meta_title\":\"Cuentos personalizados\",\"meta_description\":\"Cuentos y libros personalizados para ni\\u00f1os\",\"meta_keywords\":\"cuentos, personalizados\",\"h3\":\"Elige tu cuento\"}}', '2018-10-23 06:15:40', '2018-12-28 17:23:41', NULL);
INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'content_page', 'Terms & Conditions', '{\"en\":\"Terms & Conditions\",\"es\":\"Terms & Conditions\"}', 'termsconditions', NULL, '{\"en\":{\"content\":\"<p>Bienvenido\\/a a Mumablue.com, esperamos que todos nuestros productos sean de su agrado.<\\/p>\\r\\n\\r\\n<p>Mumablue crea cuentos para ni&ntilde;os a trav&eacute;s de un avatar configurable por usted mismo para que se parezca lo m&aacute;ximo posible al protagonista de cada historia acompa&ntilde;ado de su nombre, tambi&eacute;n personalizable. Cada libro se realiza bajo pedido, para adaptarse al personaje con infinita combinatoria y el nombre &uacute;nico de cada ni&ntilde;o. Esta p&aacute;gina est&aacute; operada por, y es propiedad de Mumablue, una sociedad limitada. Si desea contactarnos en relaci&oacute;n a cualquier contenido de la p&aacute;gina, no dude en contactar con nosotros a trav&eacute;s de este&nbsp;<a href=\\\"https:\\/\\/www.mumablue.com\\/#contact\\\">formulario<\\/a><\\/p>\\r\\n\\r\\n<p>Estos t&eacute;rminos y condiciones regulan los contenidos y el uso de la p&aacute;gina www.mumablue.com (la &ldquo;p&aacute;gina&rdquo;) y establecen los t&eacute;rminos y condiciones bajo los que suministramos los productos disponibles en la p&aacute;gina (los &ldquo;productos&rdquo;). Por favor, lea cuidadosamente estos t&eacute;rminos y condiciones de venta antes de utilizar la p&aacute;gina y antes de realizar el pedido de productos a trav&eacute;s de ella. Al usar esta p&aacute;gina y\\/o realizar un pedido de productos, usted debe indicar que ha le&iacute;do y entendido los t&eacute;rminos y condiciones generales, y que est&aacute; de acuerdo con ellos. Puede imprimir una copia de estos t&eacute;rminos y condiciones haciendo click en el icono de imprimir de su explorador.<\\/p>\\r\\n\\r\\n<p>Estos t&eacute;rminos y condiciones se aplicar&aacute;n a todas las ventas que realicemos a trav&eacute;s de la p&aacute;gina y sustituir&aacute;n a otros t&eacute;rminos o condiciones con referencia a otro lugar, mencionado o impl&iacute;cito por o en el comercio, costumbre, pr&aacute;ctica o curso de las negociaciones a menos que se ponga por escrito en contacto con nosotros. Si no est&aacute; de acuerdo con estos t&eacute;rminos y condiciones, no deber&iacute;a usar la p&aacute;gina. Por favor, tenga en cuenta que podemos modificar estos t&eacute;rminos y condiciones, por lo que deber&aacute; revisarlos peri&oacute;dicamente. Si usted contin&uacute;a usando la p&aacute;gina se estimar&aacute; que acepta dichos cambios.<\\/p>\\r\\n\\r\\n<h2>Definiciones<\\/h2>\\r\\n\\r\\n<p>&quot;Comprador&quot; hace referencia a la persona mencionada en el pedido;<\\/p>\\r\\n\\r\\n<p>&quot;Contrato&quot; hace referencia al pedido y a la confirmaci&oacute;n del pedido;<\\/p>\\r\\n\\r\\n<p>&quot;Da&ntilde;os&quot; hace referencia a da&ntilde;o o desperfectos;<\\/p>\\r\\n\\r\\n<p>&quot;Pedido&quot; hace referencia a su pedido de un producto de la p&aacute;gina;<\\/p>\\r\\n\\r\\n<p>&quot;Precio&quot; hace referencia al importe total en el momento del pedido, incluyendo los gastos de env&iacute;o y empaquetado, y otras tasas aplicables, sujeto a cualquier oferta promocional o descuento aplicable;<\\/p>\\r\\n\\r\\n<p>&quot;T&eacute;rminos y condiciones&quot; hace referencia a las condiciones en este documento.<\\/p>\\r\\n\\r\\n<h2>Acceso a la P&aacute;gina y su uso<\\/h2>\\r\\n\\r\\n<p>Usted no puede hacer uso de la p&aacute;gina de ninguna forma ilegal o inapropiada, quebrantando ninguna legislaci&oacute;n o permiso aplicable a usted. Usted acepta seguir todas las instrucciones que ofrezcamos en relaci&oacute;n al uso de la p&aacute;gina.<\\/p>\\r\\n\\r\\n<p>Tras realizar su pedido, usted acepta que revisemos su pedido y el contenido de &eacute;ste conforme a nuestras directrices y en cumplimiento de nuestros t&eacute;rminos y condiciones, y que tenemos la potestad de rechazar el procesamiento de cualquier pedido que consideremos que incurre en una violaci&oacute;n de nuestras directrices y dichos t&eacute;rminos y condiciones.<\\/p>\\r\\n\\r\\n<h2>Derechos de Propiedad y Uso<\\/h2>\\r\\n\\r\\n<p>Todos los derechos de propiedad (incluyendo patentes, marcas registradas y no registradas y marcas de servicio, nombres de dominio, dise&ntilde;os registrados y derechos de dise&ntilde;o, derechos de autor, derechos de bases de datos, derechos morales y derechos de programas inform&aacute;ticos) incluidos en la p&aacute;gina, y todo el contenido y materiales de la p&aacute;gina (&ldquo;contenido de la p&aacute;gina&rdquo;) son propiedad nuestra, y deben seguir siendo propiedad nuestra o de nuestros licenciatarios. El contenido del sitio solo puede usarse para fines personales no comerciales, y no puede ser reproducido, modificado, copiado, alterado, distribuido, republicado, mostrado, transmitido o vendido de ninguna forma, por ning&uacute;n medio, total o parcialmente. Usted no puede retirar ninguna advertencia de propiedad o derechos de autor de ning&uacute;n contenido de la p&aacute;gina.<\\/p>\\r\\n\\r\\n<h2>Pedidos y Especificaciones<\\/h2>\\r\\n\\r\\n<p>Todos los productos en venta est&aacute;n sujetos a disponibilidad y a nuestra aceptaci&oacute;n de su pedido.<\\/p>\\r\\n\\r\\n<p>Nos reservamos el derecho a rechazar cualquier pedido sin la obligaci&oacute;n de aportar ning&uacute;n motivo para dicho rechazo. Ning&uacute;n pedido deber&aacute; considerarse aceptado por nosotros hasta que lo hayamos confirmado a trav&eacute;s de la confirmaci&oacute;n de pedido.<\\/p>\\r\\n\\r\\n<p>La confirmaci&oacute;n de pedido contendr&aacute; los detalles de su pedido, el precio y una estimaci&oacute;n de la fecha de entrega del pedido. Es su responsabilidad contactar con nosotros y notificarnos de cualquier error con el pedido lo antes posible. El no hacerlo puede conllevar un procesamiento err&oacute;neo del pedido.<\\/p>\\r\\n\\r\\n<p>Nos esforzamos por mostrar y describir de la forma m&aacute;s precisa los colores impresos del producto que mostramos en nuestra p&aacute;gina, pero no podemos asegurar que los colores del producto entregado coincidan con aquellos mostrados en su monitor o en la pantalla de su tel&eacute;fono m&oacute;vil.<\\/p>\\r\\n\\r\\n<h2>Precio, pago y Moneda<\\/h2>\\r\\n\\r\\n<p>Todos los precios incluyen IVA. El IVA se calcula en base al valor final de su pedido, en &euro; y en el porcentaje en vigor a la hora del pedido (actualmente del 4%).<\\/p>\\r\\n\\r\\n<p>El pago se efect&uacute;a a trav&eacute;s de la plataforma de pago de Paypal, TPV de ING y\\/o transferencia bancaria al momento de realizar su pedido y que &eacute;ste sea aprobado por nosotros. En ese momento, se realizar&aacute; un cobro &iacute;ntegro y el contrato entrar&aacute; en vigor.<\\/p>\\r\\n\\r\\n<p>Usted se compromete a que todos los detalles que nos proporcione con el fin de llevar a cabo la entrega de su pedido sean correctos, y que el m&eacute;todo de pago escogido sea de su propiedad y en &eacute;ste existan fondos suficientes o posibilidades crediticias para cubrir el coste total del pedido.<\\/p>\\r\\n\\r\\n<h2>Entrega<\\/h2>\\r\\n\\r\\n<p>El lugar de entrega de nuestros productos se mostrar&aacute; en el pedido, y el m&eacute;todo normal de entrega (salvo que se especifique y acuerde un m&eacute;todo distinto) ser&aacute; correo gratuito ordinario.<\\/p>\\r\\n\\r\\n<p>Nos esforzaremos para procesar y gestionar su pedido en el tiempo establecido para cada art&iacute;culo. Sin embargo, los tiempos de fabricaci&oacute;n pueden variar en ocasiones, por lo que los plazos de entrega de los productos son indicativos. El tiempo de entrega no debe constituir la esencia de estos t&eacute;rminos y condiciones y no nos haremos responsables de p&eacute;rdidas o gastos que pueda sufrir como resultado de un retraso en la entrega de su pedido.<\\/p>\\r\\n\\r\\n<p>Usted deber&aacute; revisar su producto tras su entrega y, en caso de que el producto haya sido entregado por un transportista, firmar el documento de aceptaci&oacute;n del paquete. Una firma en el documento de entrega constituir&aacute; evidencia de que usted ha recibido el pedido sin da&ntilde;os ni defectos aparentes. Usted no podr&aacute; rechazar el pedido o parte de &eacute;ste &uacute;nicamente a base a una entrega realizada con retraso en un pedido que consiste en varias entregas. Si en el momento de la entrega los productos se muestran defectuosos o da&ntilde;ados, usted deber&aacute; proporcionar una descripci&oacute;n por escrito de los da&ntilde;os o defectos, firmado por usted.<\\/p>\\r\\n\\r\\n<p>Nos reservamos el derecho a hacerle llegar su pedido en distintas entregas. En caso de que su pedido est&eacute; programado para realizarse en distintas entregas, cada entrega constituir&aacute; un contrato independiente.<\\/p>\\r\\n\\r\\n<p>Si por error no recoge el pedido, entonces bajo ninguna obligaci&oacute;n le reembolsaremos el precio.<\\/p>\\r\\n\\r\\n<h2>Riesgo y propiedad<\\/h2>\\r\\n\\r\\n<p>Una vez entregada el pedido a la direcci&oacute;n acordada, el riesgo de da&ntilde;os o p&eacute;rdida pasar&aacute; a Usted. La propiedad pasa a Usted solo en el momento en que nosotros recibamos el importe total del precio acordado.<\\/p>\\r\\n\\r\\n<h2>Devoluciones, reembolsos y derechos de cancelaci&oacute;n<\\/h2>\\r\\n\\r\\n<p>Usted tiene derecho a cancelar un pedido s&oacute;lo en las siguientes circunstancias:<\\/p>\\r\\n\\r\\n<p>Si no hemos podido entregar el pedido en un periodo de 40 d&iacute;as tras la fecha del pedido.<\\/p>\\r\\n\\r\\n<p>En el caso de productos defectuosos, tan pronto como haya descubierto el defecto (teniendo en cuenta que haya inspeccionado el producto tan pronto como haya sido posible tras la entrega y, en ning&uacute;n caso, m&aacute;s all&aacute; de 14 d&iacute;as tras la recepci&oacute;n del producto).<\\/p>\\r\\n\\r\\n<p>Si se cancela un pedido bajo las condiciones a o b, nosotros nos haremos responsables de todos los costes (incluyendo cargos iniciales de entrega y re-entrega (en caso de haberlos) del pedido en cuesti&oacute;n.<\\/p>\\r\\n\\r\\n<p>Las notificaciones que impliquen un deseo de cancelaci&oacute;n deben enviarse usando este&nbsp;<a href=\\\"https:\\/\\/www.mumablue.com\\/en\\/%7B%7B%20path(\'frontend_homepage\')%20%7D%7D#contact\\\">formulario<\\/a><\\/p>\\r\\n\\r\\n<p>Salvo productos da&ntilde;ados, nada en estos t&eacute;rminos y condiciones debe darle derechos de cancelaci&oacute;n en relaci&oacute;n a dichos productos que, por su naturaleza, han sido hechos a su medida y son claramente personalizados.<\\/p>\\r\\n\\r\\n<p>Usted deber&aacute; devolvernos cualquier producto en su embalaje original (que deber&aacute; conservar para dicho prop&oacute;sito).<\\/p>\\r\\n\\r\\n<p>Nada de lo incluido en esta cl&aacute;usula afecta a sus derechos estatutarios.<\\/p>\\r\\n\\r\\n<h2>Aviso de responsabilidad<\\/h2>\\r\\n\\r\\n<p>A pesar de que nos esforzamos para asegurar que la informaci&oacute;n contenida en la p&aacute;gina (contenido de la p&aacute;gina), es correcta y est&aacute; libre de errores, no podemos garantizar la exactitud del contenido de la p&aacute;gina. Es posible que realicemos cambios en el contenido de la p&aacute;gina o en algunos productos, precios o tarifas descritas en ellos, en cualquier momento y sin previo aviso. El contenido de la p&aacute;gina puede estar obsoleto, y no nos comprometemos a actualizar dicho material.<\\/p>\\r\\n\\r\\n<p>Parte del contenido de la p&aacute;gina puede ser ofrecido por terceros, y no garantizamos ni aceptamos ning&uacute;n tipo de responsabilidad por su exactitud, actualidad o fiabilidad.<\\/p>\\r\\n\\r\\n<p>Salvo puesto expl&iacute;citamente en estos t&eacute;rminos y condiciones, el sitio y todo el contenido del sitio proporcionada a trav&eacute;s de &eacute;l se proporcionan &quot;tal cual&quot; y sin representaci&oacute;n o garant&iacute;a de ning&uacute;n tipo, ya sea expresa o impl&iacute;cita (ya sea por el derecho com&uacute;n, de encargo, ley o de otro modo). En la m&aacute;xima medida permitida por la ley aplicable, negamos todas las condiciones de otros, representaciones, declaraciones y garant&iacute;as (incluyendo, pero no limitado a, cualquier garant&iacute;a impl&iacute;cita de la aptitud para un prop&oacute;sito particular del sitio o el contenido del sitio o que su uso de el sitio o el contenido del sitio no infringir&aacute; los derechos de terceros).<\\/p>\\r\\n\\r\\n<p>No garantizamos que la p&aacute;gina, cualquier contenido de la p&aacute;gina y cualquier funci&oacute;n de la p&aacute;gina est&eacute;n libres de errores, que dichos errores ser&aacute;n corregidos o que la p&aacute;gina o el servidor que la sostiene est&eacute; libre de virus u otros componentes da&ntilde;inos. No garantizamos que la p&aacute;gina y sus contenidos cumplan con sus requisitos ni garantizamos los resultados del uso de cualquier contenido de la p&aacute;gina en t&eacute;rminos de exactitud, actualidad, fiabilidad u otros. No nos hacemos responsables de la seguridad de la p&aacute;gina o de cualquier alteraci&oacute;n o p&eacute;rdida que la p&aacute;gina pueda causar. Del mismo modo, no nos hacemos responsables de la p&eacute;rdida o da&ntilde;o de cualquier material en tr&aacute;nsito, o de la p&eacute;rdida o da&ntilde;o de materiales o datos al descargar en cualquier equipo inform&aacute;tico.<\\/p>\\r\\n\\r\\n<h2>Responsabilidad<\\/h2>\\r\\n\\r\\n<p>Le garantizamos que cualquier producto comprado a trav&eacute;s de nuestra p&aacute;gina goza de una calidad satisfactoria y est&aacute; orientado a los fines que se le atribuyen. En la m&aacute;xima medida permitida por la ley aplicable, negamos todas las condiciones de otros, representaciones, declaraciones y garant&iacute;as, ya sean expresas o impl&iacute;citas (ya sea por la ley com&uacute;n, la costumbre, la ley o de otro modo).<\\/p>\\r\\n\\r\\n<p>Nuestra responsabilidad por las p&eacute;rdidas que usted pueda sufrir como consecuencia de la violaci&oacute;n de este contrato, est&aacute; estrictamente limitada al precio neto de compra del producto (excluyendo tasas y gastos de env&iacute;o).<\\/p>\\r\\n\\r\\n<p>Nada de los incluido en estos t&eacute;rminos y condiciones excluye o limita nuestra responsabilidad en: muertes o da&ntilde;os personales causados por nuestra negligencia u otras p&eacute;rdidas resultado de su confianza en cualquier tergiversaci&oacute;n hecha por nosotros; o cualquier responsabilidad que no pueda ser excluida o limitada bajo la ley aplicable.<\\/p>\\r\\n\\r\\n<p>Usted acepta que su navegaci&oacute;n por la p&aacute;gina, y su uso de esta, as&iacute; como el uso del contenido del sitio, se efect&uacute;an bajo su propia responsabilidad y riesgo.<\\/p>\\r\\n\\r\\n<p>En relaci&oacute;n a lo anterior, usted accede a que no nos hagamos responsables de: (a) ninguna p&eacute;rdida o da&ntilde;o directo; (b) ninguna p&eacute;rdida o da&ntilde;o indirecto o ning&uacute;n da&ntilde;o punitivo, incidental o consecuencial de ning&uacute;n tipo que no est&eacute; asociado con el incidente que causa su reclamaci&oacute;n; o (c) ninguna p&eacute;rdida de beneficios o ahorros o p&eacute;rdida o corrupci&oacute;n de datos (en cada caso, sean directos o indirectos) , y esto en cada caso, ya sea basado en contrato, agravio (incluyendo negligencia), responsabilidad estricta o de otro modo, que surja de o est&eacute; relacionado de cualquier manera con (i) el uso de este Sitio o el Contenido del Sitio; (ii) estos T&eacute;rminos y Condiciones (iii) los productos (iv) cualquier fallo o retraso en el uso de cualquier componente del Sitio, el Contenido del Sitio o cualquier servicio, incluyendo, sin limitaci&oacute;n, la no disponibilidad del Sitio, el Contenido del Sitio o de los servicios, independientemente de la duraci&oacute;n de cualquier per&iacute;odo de no disponibilidad; (v) cualquier uso o dependencia de cualquier contenido del sitio o de cualquier otra informaci&oacute;n, material, software, productos, servicios y gr&aacute;ficos relacionados obtenidos a trav&eacute;s del Sitio, en todos los casos, incluso si hemos sido advertidos de la posibilidad de tal p&eacute;rdida o da&ntilde;o.<\\/p>\\r\\n\\r\\n<p>No nos hacemos responsables de cualquier p&eacute;rdida, da&ntilde;o, o gastos (incluyendo p&eacute;rdida de ganancias) que surjan directa o indirectamente de cualquier fallo o retraso en la ejecuci&oacute;n de cualquier obligaci&oacute;n en virtud de estos T&eacute;rminos y Condiciones, por causa de alg&uacute;n evento o circunstancia fuera de nuestro control razonable, incluyendo, pero no limitado a, huelgas, acciones industriales, fallo de fuentes de alimentaci&oacute;n o equipos, acciones del gobierno o fen&oacute;menos naturales.<\\/p>\\r\\n\\r\\n<p>Las leyes aplicables en su pa&iacute;s de residencia pueden no permitir la limitaci&oacute;n o exclusi&oacute;n de responsabilidad por da&ntilde;os incidentales o consecuenciales, por lo que la limitaci&oacute;n o exclusi&oacute;n anterior puede no aplicarse en su caso.<\\/p>\\r\\n\\r\\n<p>Debido a los riesgos inherentes de la utilizaci&oacute;n de Internet, no podemos hacernos responsables de cualquier da&ntilde;o o virus que pueda infectar su equipo inform&aacute;tico o cualquier otro bien cuando utilice o navegue por la p&aacute;gina. La descarga u otra adquisici&oacute;n de cualquier contenido de la p&aacute;gina a trav&eacute;s de la p&aacute;gina se realiza bajo su propio criterio y riesgo y con la aceptaci&oacute;n de que usted ser&aacute; el &uacute;nico responsable de cualquier da&ntilde;o a su sistema inform&aacute;tico o p&eacute;rdida de datos que resulte de la descarga o adquisici&oacute;n de cualquier contenido del sitio.<\\/p>\\r\\n\\r\\n<h2>Indemnidad<\\/h2>\\r\\n\\r\\n<p>Usted se compromete a indemnizar, mantener indemne, defender y mantener a nosotros y nuestras compa&ntilde;&iacute;as matrices, subsidiarias, afiliadas y cada uno de nuestros respectivos funcionarios, directores, empleados, propietarios, agentes, contratistas, socios, proveedores de informaci&oacute;n y licenciatarios de y contra cualquier tipo de reclamos, da&ntilde;os, responsabilidad, demandas, p&eacute;rdidas, costos y gastos (incluyendo honorarios legales) (sea o no previsible o evitable) incurridos o sufridos por cualquiera de esas partes y cualquier reclamaci&oacute;n o procedimiento judicial que se llevaron o amenazadas que surja de o en conexi&oacute;n con su uso del sitio, el contenido del sitio o los servicios prestados a trav&eacute;s del sitio, su conducta en relaci&oacute;n con el sitio o los servicios prestados o con otros usuarios del sitio, cualquier compra, transacciones, acuerdos o arreglos con terceros a trav&eacute;s de el Sitio o en un sitio de terceros, o cualquier violaci&oacute;n de estas Condiciones generales de Uso o de cualquier ley o los derechos de terceros.<\\/p>\\r\\n\\r\\n<h2>Terminaci&oacute;n<\\/h2>\\r\\n\\r\\n<p>Podemos eliminar la p&aacute;gina o cesar la prestaci&oacute;n de cualquiera de los servicios disponibles a trav&eacute;s de la p&aacute;gina en cualquier momento a nuestro &uacute;nico criterio, por cualquier raz&oacute;n que sea.<\\/p>\\r\\n\\r\\n<p>Podemos interrumpir el acceso a la p&aacute;gina por cualquier motivo bajo nuestro &uacute;nico criterio, en cualquier momento con o sin previo aviso.<\\/p>\\r\\n\\r\\n<h2>Protecci&oacute;n de Datos y Privacidad<\\/h2>\\r\\n\\r\\n<p>S&oacute;lo utilizaremos la informaci&oacute;n personal que podemos recopilar sobre usted de acuerdo con nuestra pol&iacute;tica de privacidad. Esta pol&iacute;tica forma parte esencial de estos t&eacute;rminos y condiciones, por lo que es importante que la lea. Al aceptar estos t&eacute;rminos y condiciones usted tambi&eacute;n acepta y da su consentimiento a nuestra pol&iacute;tica de privacidad.<\\/p>\\r\\n\\r\\n<h2>Ley aplicable<\\/h2>\\r\\n\\r\\n<p>Este acuerdo se efectuar&aacute; con arreglo a las leyes de Espa&ntilde;a y sujeto a la jurisdicci&oacute;n de los tribunales espa&ntilde;oles.<\\/p>\\r\\n\\r\\n<h2>Realizaci&oacute;n de un pedido<\\/h2>\\r\\n\\r\\n<p>Para realizar un pedido usted deber&aacute; seguir el procedimiento de pedido que figura en la p&aacute;gina. Los detalles del precio a pagar para cualquier producto, as&iacute; como el procedimiento de pago se muestran en la p&aacute;gina.<\\/p>\\r\\n\\r\\n<p>Cualquier plazo de tiempo o fecha establecida para la entrega es solo una estimaci&oacute;n. Nos esforzaremos para entregar su pedido dentro del tiempo especificado, pero no aceptaremos responsabilidad por cualquier fallo en la entrega dentro del periodo especificado.<\\/p>\\r\\n\\r\\n<p>Al realizar un pedido a trav&eacute;s de la p&aacute;gina, usted realiza una oferta para comprar el producto y acepta las condiciones de venta y nuestros t&eacute;rminos y condiciones. Todos los pedidos est&aacute;n sujetos a la aceptaci&oacute;n por nuestra parte y nos reservamos el derecho a rechazar cualquier pedido realizado por usted. Le proporcionaremos una confirmaci&oacute;n escrita de su pedido a la direcci&oacute;n de correo electr&oacute;nico que usted indique al realizar el pedido, pero dicha confirmaci&oacute;n no constituir&aacute; nuestra aceptaci&oacute;n de ese pedido. Indicaremos nuestra aceptaci&oacute;n de su oferta cuando hayamos recibido el pago completo por su parte y le enviemos un correo electr&oacute;nico de confirmaci&oacute;n, momento en el cual se establecer&aacute; un contrato. Una vez que el pago total se haya recibido, empezaremos a procesar su pedido y crear su cuento Mumablue personalizado. Una vez que hayamos empezado a hacer su libro Mumablue, su pedido no podr&aacute; ser cancelado. Se requiere el pago total del libro Mumablue antes de su fabricaci&oacute;n y env&iacute;o. En caso de que no podamos cumplir con un pedido tras aceptar el pago, podemos devolverle su dinero y cancelar el contrato.<\\/p>\\r\\n\\r\\n<p>Podemos revisar, suspender o modificar los productos o servicios en cualquier momento sin previo aviso, del mismo modo que los productos pueden no estar disponibles sin previo aviso. No nos hacemos responsables si cualquier producto o servicio no est&aacute; disponible.<\\/p>\\r\\n\\r\\n<p>Usted se compromete a que todos los datos que usted nos proporciona a trav&eacute;s de la p&aacute;gina con el prop&oacute;sito de la compra de productos son correctos, que su tarjeta de cr&eacute;dito o d&eacute;bito, o cualquier forma dinero electr&oacute;nico que se utiliza es de su propiedad y que hay suficientes fondos o facilidades de cr&eacute;dito para cubrir el coste de los productos. Si el pago no se recibe en su totalidad, no tendremos obligaci&oacute;n de ning&uacute;n tipo de entregar los productos.<\\/p>\\r\\n\\r\\n<h2>Precios y pagos<\\/h2>\\r\\n\\r\\n<p>El pago de todos los productos se realiza a trav&eacute;s de un proveedor externo de servicios de pago. Usted deber&aacute; indicar sus datos de pago a dicho proveedor y es posible que tambi&eacute;n deba aceptar los t&eacute;rminos y condiciones adicionales en relaci&oacute;n con el uso de ese servicio. No podemos aceptar, y por la presente excluye a la mayor medida permitida por la ley aplicable, cualquier responsabilidad que surja de o en conexi&oacute;n con su uso de dicho &ndash; externo - proveedor de pago.<\\/p>\\r\\n\\r\\n<p>Se puede cambiar el precio de cualquier producto antes de que Usted realice el pedido.<\\/p>\\r\\n\\r\\n<p>A pesar de nuestros esfuerzos, algunos de los productos que figuran en la p&aacute;gina pueden mostrar un precio incorrecto, o dicho precio puede incrementarse entre el pedido y nuestra aceptaci&oacute;n de su pedido. Habitualmente verificamos los precios como parte de nuestros procesos, de modo que, cuando el precio correcto de un producto sea menor que el precio establecido, realizaremos el cargo por el importe m&aacute;s bajo. En caso de que el precio correcto de un producto sea mayor que el precio que aparece en la p&aacute;gina, contactaremos con usted para obtener instrucciones o rechazaremos su pedido y le notificaremos de tal rechazo, para que a continuaci&oacute;n, pueda volver a pedir al precio correcto si lo desea.<\\/p>\\r\\n\\r\\n<p>Si un error en el precio es obvio e inequ&iacute;voco y podr&iacute;a haber sido reconocido por usted como tal, no tendremos ninguna obligaci&oacute;n de proporcionarle el producto al precio incorrecto (precio m&aacute;s bajo).<\\/p>\\r\\n\\r\\n<p>Los precios incluyen el IVA y dem&aacute;s impuestos aplicables y\\/o impuestos de importaci&oacute;n. Los precios tambi&eacute;n incluyen los gastos de env&iacute;o a todo el mundo, por correo a&eacute;reo, excepto en circunstancias limitadas por las que nos pondremos en contacto con usted para comunicarle el cargo.<\\/p>\\r\\n\\r\\n<h2>Aceptaci&oacute;n de Entrega<\\/h2>\\r\\n\\r\\n<p>Cuando reciba el producto\\/s deber&aacute; inspeccionarlo(s) para detectar cualquier defecto o falta de conformidad antes de firmar y aceptar su buen estado. Si usted firma la aceptaci&oacute;n del producto, estar&aacute; aceptando que &eacute;ste est&aacute; en condiciones aceptables. Cualquier paquete no firmado pero aceptado se considerar&aacute; en buenas condiciones.<\\/p>\\r\\n\\r\\n<p>Si usted observa cualquier da&ntilde;o en el paquete, por favor, indique que est&aacute; da&ntilde;ado, ya que de otro modo no podremos realizar un reembolso o reemplazar el art&iacute;culo da&ntilde;ado, m&aacute;s all&aacute; de sus derechos legales.<\\/p>\\r\\n\\r\\n<p>Usted debe estar disponible para aceptar la entrega en la fecha establecida, ya que el servicio de mensajer&iacute;a tan solo intentar&aacute; la entrega 2 veces m&aacute;s, tras la cual, el paquete nos ser&aacute; devuelto, haci&eacute;ndose cargo usted del coste. Si la entrega es rechazada o devuelta debido a una direcci&oacute;n incorrecta, usted deber&aacute; pagar una tarifa de devoluci&oacute;n.<\\/p>\",\"meta_title\":null,\"meta_keywords\":null,\"meta_description\":null},\"es\":{\"meta_title\":\"Materlu termino y condiciones\",\"meta_description\":null,\"meta_keywords\":null,\"content\":\"<p>Bienvenido\\/a a materlu.com, esperamos que todos nuestros productos sean de su agrado.<\\/p>\\r\\n\\r\\n<p>Mumablue crea cuentos para ni&ntilde;os a trav&eacute;s de un avatar configurable por usted mismo para que se parezca lo m&aacute;ximo posible al protagonista de cada historia acompa&ntilde;ado de su nombre, tambi&eacute;n personalizable. Cada libro se realiza bajo pedido, para adaptarse al personaje con infinita combinatoria y el nombre &uacute;nico de cada ni&ntilde;o. Esta p&aacute;gina est&aacute; operada por, y es propiedad de Mumablue, una sociedad limitada. Si desea contactarnos en relaci&oacute;n a cualquier contenido de la p&aacute;gina, no dude en contactar con nosotros a trav&eacute;s de este&nbsp;<a href=\\\"https:\\/\\/www.mumablue.com\\/#contact\\\">formulario<\\/a><\\/p>\\r\\n\\r\\n<p>Estos t&eacute;rminos y condiciones regulan los contenidos y el uso de la p&aacute;gina www.mumablue.com (la &ldquo;p&aacute;gina&rdquo;) y establecen los t&eacute;rminos y condiciones bajo los que suministramos los productos disponibles en la p&aacute;gina (los &ldquo;productos&rdquo;). Por favor, lea cuidadosamente estos t&eacute;rminos y condiciones de venta antes de utilizar la p&aacute;gina y antes de realizar el pedido de productos a trav&eacute;s de ella. Al usar esta p&aacute;gina y\\/o realizar un pedido de productos, usted debe indicar que ha le&iacute;do y entendido los t&eacute;rminos y condiciones generales, y que est&aacute; de acuerdo con ellos. Puede imprimir una copia de estos t&eacute;rminos y condiciones haciendo click en el icono de imprimir de su explorador.<\\/p>\\r\\n\\r\\n<p>Estos t&eacute;rminos y condiciones se aplicar&aacute;n a todas las ventas que realicemos a trav&eacute;s de la p&aacute;gina y sustituir&aacute;n a otros t&eacute;rminos o condiciones con referencia a otro lugar, mencionado o impl&iacute;cito por o en el comercio, costumbre, pr&aacute;ctica o curso de las negociaciones a menos que se ponga por escrito en contacto con nosotros. Si no est&aacute; de acuerdo con estos t&eacute;rminos y condiciones, no deber&iacute;a usar la p&aacute;gina. Por favor, tenga en cuenta que podemos modificar estos t&eacute;rminos y condiciones, por lo que deber&aacute; revisarlos peri&oacute;dicamente. Si usted contin&uacute;a usando la p&aacute;gina se estimar&aacute; que acepta dichos cambios.<\\/p>\\r\\n\\r\\n<h2>Definiciones<\\/h2>\\r\\n\\r\\n<p>&quot;Comprador&quot; hace referencia a la persona mencionada en el pedido;<\\/p>\\r\\n\\r\\n<p>&quot;Contrato&quot; hace referencia al pedido y a la confirmaci&oacute;n del pedido;<\\/p>\\r\\n\\r\\n<p>&quot;Da&ntilde;os&quot; hace referencia a da&ntilde;o o desperfectos;<\\/p>\\r\\n\\r\\n<p>&quot;Pedido&quot; hace referencia a su pedido de un producto de la p&aacute;gina;<\\/p>\\r\\n\\r\\n<p>&quot;Precio&quot; hace referencia al importe total en el momento del pedido, incluyendo los gastos de env&iacute;o y empaquetado, y otras tasas aplicables, sujeto a cualquier oferta promocional o descuento aplicable;<\\/p>\\r\\n\\r\\n<p>&quot;T&eacute;rminos y condiciones&quot; hace referencia a las condiciones en este documento.<\\/p>\\r\\n\\r\\n<h2>Acceso a la P&aacute;gina y su uso<\\/h2>\\r\\n\\r\\n<p>Usted no puede hacer uso de la p&aacute;gina de ninguna forma ilegal o inapropiada, quebrantando ninguna legislaci&oacute;n o permiso aplicable a usted. Usted acepta seguir todas las instrucciones que ofrezcamos en relaci&oacute;n al uso de la p&aacute;gina.<\\/p>\\r\\n\\r\\n<p>Tras realizar su pedido, usted acepta que revisemos su pedido y el contenido de &eacute;ste conforme a nuestras directrices y en cumplimiento de nuestros t&eacute;rminos y condiciones, y que tenemos la potestad de rechazar el procesamiento de cualquier pedido que consideremos que incurre en una violaci&oacute;n de nuestras directrices y dichos t&eacute;rminos y condiciones.<\\/p>\\r\\n\\r\\n<h2>Derechos de Propiedad y Uso<\\/h2>\\r\\n\\r\\n<p>Todos los derechos de propiedad (incluyendo patentes, marcas registradas y no registradas y marcas de servicio, nombres de dominio, dise&ntilde;os registrados y derechos de dise&ntilde;o, derechos de autor, derechos de bases de datos, derechos morales y derechos de programas inform&aacute;ticos) incluidos en la p&aacute;gina, y todo el contenido y materiales de la p&aacute;gina (&ldquo;contenido de la p&aacute;gina&rdquo;) son propiedad nuestra, y deben seguir siendo propiedad nuestra o de nuestros licenciatarios. El contenido del sitio solo puede usarse para fines personales no comerciales, y no puede ser reproducido, modificado, copiado, alterado, distribuido, republicado, mostrado, transmitido o vendido de ninguna forma, por ning&uacute;n medio, total o parcialmente. Usted no puede retirar ninguna advertencia de propiedad o derechos de autor de ning&uacute;n contenido de la p&aacute;gina.<\\/p>\\r\\n\\r\\n<h2>Pedidos y Especificaciones<\\/h2>\\r\\n\\r\\n<p>Todos los productos en venta est&aacute;n sujetos a disponibilidad y a nuestra aceptaci&oacute;n de su pedido.<\\/p>\\r\\n\\r\\n<p>Nos reservamos el derecho a rechazar cualquier pedido sin la obligaci&oacute;n de aportar ning&uacute;n motivo para dicho rechazo. Ning&uacute;n pedido deber&aacute; considerarse aceptado por nosotros hasta que lo hayamos confirmado a trav&eacute;s de la confirmaci&oacute;n de pedido.<\\/p>\\r\\n\\r\\n<p>La confirmaci&oacute;n de pedido contendr&aacute; los detalles de su pedido, el precio y una estimaci&oacute;n de la fecha de entrega del pedido. Es su responsabilidad contactar con nosotros y notificarnos de cualquier error con el pedido lo antes posible. El no hacerlo puede conllevar un procesamiento err&oacute;neo del pedido.<\\/p>\\r\\n\\r\\n<p>Nos esforzamos por mostrar y describir de la forma m&aacute;s precisa los colores impresos del producto que mostramos en nuestra p&aacute;gina, pero no podemos asegurar que los colores del producto entregado coincidan con aquellos mostrados en su monitor o en la pantalla de su tel&eacute;fono m&oacute;vil.<\\/p>\\r\\n\\r\\n<h2>Precio, pago y Moneda<\\/h2>\\r\\n\\r\\n<p>Todos los precios incluyen IVA. El IVA se calcula en base al valor final de su pedido, en &euro; y en el porcentaje en vigor a la hora del pedido (actualmente del 4%).<\\/p>\\r\\n\\r\\n<p>El pago se efect&uacute;a a trav&eacute;s de la plataforma de pago de Paypal, TPV de ING y\\/o transferencia bancaria al momento de realizar su pedido y que &eacute;ste sea aprobado por nosotros. En ese momento, se realizar&aacute; un cobro &iacute;ntegro y el contrato entrar&aacute; en vigor.<\\/p>\\r\\n\\r\\n<p>Usted se compromete a que todos los detalles que nos proporcione con el fin de llevar a cabo la entrega de su pedido sean correctos, y que el m&eacute;todo de pago escogido sea de su propiedad y en &eacute;ste existan fondos suficientes o posibilidades crediticias para cubrir el coste total del pedido.<\\/p>\\r\\n\\r\\n<h2>Entrega<\\/h2>\\r\\n\\r\\n<p>El lugar de entrega de nuestros productos se mostrar&aacute; en el pedido, y el m&eacute;todo normal de entrega (salvo que se especifique y acuerde un m&eacute;todo distinto) ser&aacute; correo gratuito ordinario.<\\/p>\\r\\n\\r\\n<p>Nos esforzaremos para procesar y gestionar su pedido en el tiempo establecido para cada art&iacute;culo. Sin embargo, los tiempos de fabricaci&oacute;n pueden variar en ocasiones, por lo que los plazos de entrega de los productos son indicativos. El tiempo de entrega no debe constituir la esencia de estos t&eacute;rminos y condiciones y no nos haremos responsables de p&eacute;rdidas o gastos que pueda sufrir como resultado de un retraso en la entrega de su pedido.<\\/p>\\r\\n\\r\\n<p>Usted deber&aacute; revisar su producto tras su entrega y, en caso de que el producto haya sido entregado por un transportista, firmar el documento de aceptaci&oacute;n del paquete. Una firma en el documento de entrega constituir&aacute; evidencia de que usted ha recibido el pedido sin da&ntilde;os ni defectos aparentes. Usted no podr&aacute; rechazar el pedido o parte de &eacute;ste &uacute;nicamente a base a una entrega realizada con retraso en un pedido que consiste en varias entregas. Si en el momento de la entrega los productos se muestran defectuosos o da&ntilde;ados, usted deber&aacute; proporcionar una descripci&oacute;n por escrito de los da&ntilde;os o defectos, firmado por usted.<\\/p>\\r\\n\\r\\n<p>Nos reservamos el derecho a hacerle llegar su pedido en distintas entregas. En caso de que su pedido est&eacute; programado para realizarse en distintas entregas, cada entrega constituir&aacute; un contrato independiente.<\\/p>\\r\\n\\r\\n<p>Si por error no recoge el pedido, entonces bajo ninguna obligaci&oacute;n le reembolsaremos el precio.<\\/p>\\r\\n\\r\\n<h2>Riesgo y propiedad<\\/h2>\\r\\n\\r\\n<p>Una vez entregada el pedido a la direcci&oacute;n acordada, el riesgo de da&ntilde;os o p&eacute;rdida pasar&aacute; a Usted. La propiedad pasa a Usted solo en el momento en que nosotros recibamos el importe total del precio acordado.<\\/p>\\r\\n\\r\\n<h2>Devoluciones, reembolsos y derechos de cancelaci&oacute;n<\\/h2>\\r\\n\\r\\n<p>Usted tiene derecho a cancelar un pedido s&oacute;lo en las siguientes circunstancias:<\\/p>\\r\\n\\r\\n<p>Si no hemos podido entregar el pedido en un periodo de 40 d&iacute;as tras la fecha del pedido.<\\/p>\\r\\n\\r\\n<p>En el caso de productos defectuosos, tan pronto como haya descubierto el defecto (teniendo en cuenta que haya inspeccionado el producto tan pronto como haya sido posible tras la entrega y, en ning&uacute;n caso, m&aacute;s all&aacute; de 14 d&iacute;as tras la recepci&oacute;n del producto).<\\/p>\\r\\n\\r\\n<p>Si se cancela un pedido bajo las condiciones a o b, nosotros nos haremos responsables de todos los costes (incluyendo cargos iniciales de entrega y re-entrega (en caso de haberlos) del pedido en cuesti&oacute;n.<\\/p>\\r\\n\\r\\n<p>Las notificaciones que impliquen un deseo de cancelaci&oacute;n deben enviarse usando este&nbsp;<a href=\\\"https:\\/\\/www.mumablue.com\\/en\\/%7B%7B%20path(\'frontend_homepage\')%20%7D%7D#contact\\\">formulario<\\/a><\\/p>\\r\\n\\r\\n<p>Salvo productos da&ntilde;ados, nada en estos t&eacute;rminos y condiciones debe darle derechos de cancelaci&oacute;n en relaci&oacute;n a dichos productos que, por su naturaleza, han sido hechos a su medida y son claramente personalizados.<\\/p>\\r\\n\\r\\n<p>Usted deber&aacute; devolvernos cualquier producto en su embalaje original (que deber&aacute; conservar para dicho prop&oacute;sito).<\\/p>\\r\\n\\r\\n<p>Nada de lo incluido en esta cl&aacute;usula afecta a sus derechos estatutarios.<\\/p>\\r\\n\\r\\n<h2>Aviso de responsabilidad<\\/h2>\\r\\n\\r\\n<p>A pesar de que nos esforzamos para asegurar que la informaci&oacute;n contenida en la p&aacute;gina (contenido de la p&aacute;gina), es correcta y est&aacute; libre de errores, no podemos garantizar la exactitud del contenido de la p&aacute;gina. Es posible que realicemos cambios en el contenido de la p&aacute;gina o en algunos productos, precios o tarifas descritas en ellos, en cualquier momento y sin previo aviso. El contenido de la p&aacute;gina puede estar obsoleto, y no nos comprometemos a actualizar dicho material.<\\/p>\\r\\n\\r\\n<p>Parte del contenido de la p&aacute;gina puede ser ofrecido por terceros, y no garantizamos ni aceptamos ning&uacute;n tipo de responsabilidad por su exactitud, actualidad o fiabilidad.<\\/p>\\r\\n\\r\\n<p>Salvo puesto expl&iacute;citamente en estos t&eacute;rminos y condiciones, el sitio y todo el contenido del sitio proporcionada a trav&eacute;s de &eacute;l se proporcionan &quot;tal cual&quot; y sin representaci&oacute;n o garant&iacute;a de ning&uacute;n tipo, ya sea expresa o impl&iacute;cita (ya sea por el derecho com&uacute;n, de encargo, ley o de otro modo). En la m&aacute;xima medida permitida por la ley aplicable, negamos todas las condiciones de otros, representaciones, declaraciones y garant&iacute;as (incluyendo, pero no limitado a, cualquier garant&iacute;a impl&iacute;cita de la aptitud para un prop&oacute;sito particular del sitio o el contenido del sitio o que su uso de el sitio o el contenido del sitio no infringir&aacute; los derechos de terceros).<\\/p>\\r\\n\\r\\n<p>No garantizamos que la p&aacute;gina, cualquier contenido de la p&aacute;gina y cualquier funci&oacute;n de la p&aacute;gina est&eacute;n libres de errores, que dichos errores ser&aacute;n corregidos o que la p&aacute;gina o el servidor que la sostiene est&eacute; libre de virus u otros componentes da&ntilde;inos. No garantizamos que la p&aacute;gina y sus contenidos cumplan con sus requisitos ni garantizamos los resultados del uso de cualquier contenido de la p&aacute;gina en t&eacute;rminos de exactitud, actualidad, fiabilidad u otros. No nos hacemos responsables de la seguridad de la p&aacute;gina o de cualquier alteraci&oacute;n o p&eacute;rdida que la p&aacute;gina pueda causar. Del mismo modo, no nos hacemos responsables de la p&eacute;rdida o da&ntilde;o de cualquier material en tr&aacute;nsito, o de la p&eacute;rdida o da&ntilde;o de materiales o datos al descargar en cualquier equipo inform&aacute;tico.<\\/p>\\r\\n\\r\\n<h2>Responsabilidad<\\/h2>\\r\\n\\r\\n<p>Le garantizamos que cualquier producto comprado a trav&eacute;s de nuestra p&aacute;gina goza de una calidad satisfactoria y est&aacute; orientado a los fines que se le atribuyen. En la m&aacute;xima medida permitida por la ley aplicable, negamos todas las condiciones de otros, representaciones, declaraciones y garant&iacute;as, ya sean expresas o impl&iacute;citas (ya sea por la ley com&uacute;n, la costumbre, la ley o de otro modo).<\\/p>\\r\\n\\r\\n<p>Nuestra responsabilidad por las p&eacute;rdidas que usted pueda sufrir como consecuencia de la violaci&oacute;n de este contrato, est&aacute; estrictamente limitada al precio neto de compra del producto (excluyendo tasas y gastos de env&iacute;o).<\\/p>\\r\\n\\r\\n<p>Nada de los incluido en estos t&eacute;rminos y condiciones excluye o limita nuestra responsabilidad en: muertes o da&ntilde;os personales causados por nuestra negligencia u otras p&eacute;rdidas resultado de su confianza en cualquier tergiversaci&oacute;n hecha por nosotros; o cualquier responsabilidad que no pueda ser excluida o limitada bajo la ley aplicable.<\\/p>\\r\\n\\r\\n<p>Usted acepta que su navegaci&oacute;n por la p&aacute;gina, y su uso de esta, as&iacute; como el uso del contenido del sitio, se efect&uacute;an bajo su propia responsabilidad y riesgo.<\\/p>\\r\\n\\r\\n<p>En relaci&oacute;n a lo anterior, usted accede a que no nos hagamos responsables de: (a) ninguna p&eacute;rdida o da&ntilde;o directo; (b) ninguna p&eacute;rdida o da&ntilde;o indirecto o ning&uacute;n da&ntilde;o punitivo, incidental o consecuencial de ning&uacute;n tipo que no est&eacute; asociado con el incidente que causa su reclamaci&oacute;n; o (c) ninguna p&eacute;rdida de beneficios o ahorros o p&eacute;rdida o corrupci&oacute;n de datos (en cada caso, sean directos o indirectos) , y esto en cada caso, ya sea basado en contrato, agravio (incluyendo negligencia), responsabilidad estricta o de otro modo, que surja de o est&eacute; relacionado de cualquier manera con (i) el uso de este Sitio o el Contenido del Sitio; (ii) estos T&eacute;rminos y Condiciones (iii) los productos (iv) cualquier fallo o retraso en el uso de cualquier componente del Sitio, el Contenido del Sitio o cualquier servicio, incluyendo, sin limitaci&oacute;n, la no disponibilidad del Sitio, el Contenido del Sitio o de los servicios, independientemente de la duraci&oacute;n de cualquier per&iacute;odo de no disponibilidad; (v) cualquier uso o dependencia de cualquier contenido del sitio o de cualquier otra informaci&oacute;n, material, software, productos, servicios y gr&aacute;ficos relacionados obtenidos a trav&eacute;s del Sitio, en todos los casos, incluso si hemos sido advertidos de la posibilidad de tal p&eacute;rdida o da&ntilde;o.<\\/p>\\r\\n\\r\\n<p>No nos hacemos responsables de cualquier p&eacute;rdida, da&ntilde;o, o gastos (incluyendo p&eacute;rdida de ganancias) que surjan directa o indirectamente de cualquier fallo o retraso en la ejecuci&oacute;n de cualquier obligaci&oacute;n en virtud de estos T&eacute;rminos y Condiciones, por causa de alg&uacute;n evento o circunstancia fuera de nuestro control razonable, incluyendo, pero no limitado a, huelgas, acciones industriales, fallo de fuentes de alimentaci&oacute;n o equipos, acciones del gobierno o fen&oacute;menos naturales.<\\/p>\\r\\n\\r\\n<p>Las leyes aplicables en su pa&iacute;s de residencia pueden no permitir la limitaci&oacute;n o exclusi&oacute;n de responsabilidad por da&ntilde;os incidentales o consecuenciales, por lo que la limitaci&oacute;n o exclusi&oacute;n anterior puede no aplicarse en su caso.<\\/p>\\r\\n\\r\\n<p>Debido a los riesgos inherentes de la utilizaci&oacute;n de Internet, no podemos hacernos responsables de cualquier da&ntilde;o o virus que pueda infectar su equipo inform&aacute;tico o cualquier otro bien cuando utilice o navegue por la p&aacute;gina. La descarga u otra adquisici&oacute;n de cualquier contenido de la p&aacute;gina a trav&eacute;s de la p&aacute;gina se realiza bajo su propio criterio y riesgo y con la aceptaci&oacute;n de que usted ser&aacute; el &uacute;nico responsable de cualquier da&ntilde;o a su sistema inform&aacute;tico o p&eacute;rdida de datos que resulte de la descarga o adquisici&oacute;n de cualquier contenido del sitio.<\\/p>\\r\\n\\r\\n<h2>Indemnidad<\\/h2>\\r\\n\\r\\n<p>Usted se compromete a indemnizar, mantener indemne, defender y mantener a nosotros y nuestras compa&ntilde;&iacute;as matrices, subsidiarias, afiliadas y cada uno de nuestros respectivos funcionarios, directores, empleados, propietarios, agentes, contratistas, socios, proveedores de informaci&oacute;n y licenciatarios de y contra cualquier tipo de reclamos, da&ntilde;os, responsabilidad, demandas, p&eacute;rdidas, costos y gastos (incluyendo honorarios legales) (sea o no previsible o evitable) incurridos o sufridos por cualquiera de esas partes y cualquier reclamaci&oacute;n o procedimiento judicial que se llevaron o amenazadas que surja de o en conexi&oacute;n con su uso del sitio, el contenido del sitio o los servicios prestados a trav&eacute;s del sitio, su conducta en relaci&oacute;n con el sitio o los servicios prestados o con otros usuarios del sitio, cualquier compra, transacciones, acuerdos o arreglos con terceros a trav&eacute;s de el Sitio o en un sitio de terceros, o cualquier violaci&oacute;n de estas Condiciones generales de Uso o de cualquier ley o los derechos de terceros.<\\/p>\\r\\n\\r\\n<h2>Terminaci&oacute;n<\\/h2>\\r\\n\\r\\n<p>Podemos eliminar la p&aacute;gina o cesar la prestaci&oacute;n de cualquiera de los servicios disponibles a trav&eacute;s de la p&aacute;gina en cualquier momento a nuestro &uacute;nico criterio, por cualquier raz&oacute;n que sea.<\\/p>\\r\\n\\r\\n<p>Podemos interrumpir el acceso a la p&aacute;gina por cualquier motivo bajo nuestro &uacute;nico criterio, en cualquier momento con o sin previo aviso.<\\/p>\\r\\n\\r\\n<h2>Protecci&oacute;n de Datos y Privacidad<\\/h2>\\r\\n\\r\\n<p>S&oacute;lo utilizaremos la informaci&oacute;n personal que podemos recopilar sobre usted de acuerdo con nuestra pol&iacute;tica de privacidad. Esta pol&iacute;tica forma parte esencial de estos t&eacute;rminos y condiciones, por lo que es importante que la lea. Al aceptar estos t&eacute;rminos y condiciones usted tambi&eacute;n acepta y da su consentimiento a nuestra pol&iacute;tica de privacidad.<\\/p>\\r\\n\\r\\n<h2>Ley aplicable<\\/h2>\\r\\n\\r\\n<p>Este acuerdo se efectuar&aacute; con arreglo a las leyes de Espa&ntilde;a y sujeto a la jurisdicci&oacute;n de los tribunales espa&ntilde;oles.<\\/p>\\r\\n\\r\\n<h2>Realizaci&oacute;n de un pedido<\\/h2>\\r\\n\\r\\n<p>Para realizar un pedido usted deber&aacute; seguir el procedimiento de pedido que figura en la p&aacute;gina. Los detalles del precio a pagar para cualquier producto, as&iacute; como el procedimiento de pago se muestran en la p&aacute;gina.<\\/p>\\r\\n\\r\\n<p>Cualquier plazo de tiempo o fecha establecida para la entrega es solo una estimaci&oacute;n. Nos esforzaremos para entregar su pedido dentro del tiempo especificado, pero no aceptaremos responsabilidad por cualquier fallo en la entrega dentro del periodo especificado.<\\/p>\\r\\n\\r\\n<p>Al realizar un pedido a trav&eacute;s de la p&aacute;gina, usted realiza una oferta para comprar el producto y acepta las condiciones de venta y nuestros t&eacute;rminos y condiciones. Todos los pedidos est&aacute;n sujetos a la aceptaci&oacute;n por nuestra parte y nos reservamos el derecho a rechazar cualquier pedido realizado por usted. Le proporcionaremos una confirmaci&oacute;n escrita de su pedido a la direcci&oacute;n de correo electr&oacute;nico que usted indique al realizar el pedido, pero dicha confirmaci&oacute;n no constituir&aacute; nuestra aceptaci&oacute;n de ese pedido. Indicaremos nuestra aceptaci&oacute;n de su oferta cuando hayamos recibido el pago completo por su parte y le enviemos un correo electr&oacute;nico de confirmaci&oacute;n, momento en el cual se establecer&aacute; un contrato. Una vez que el pago total se haya recibido, empezaremos a procesar su pedido y crear su cuento Mumablue personalizado. Una vez que hayamos empezado a hacer su libro Mumablue, su pedido no podr&aacute; ser cancelado. Se requiere el pago total del libro Mumablue antes de su fabricaci&oacute;n y env&iacute;o. En caso de que no podamos cumplir con un pedido tras aceptar el pago, podemos devolverle su dinero y cancelar el contrato.<\\/p>\\r\\n\\r\\n<p>Podemos revisar, suspender o modificar los productos o servicios en cualquier momento sin previo aviso, del mismo modo que los productos pueden no estar disponibles sin previo aviso. No nos hacemos responsables si cualquier producto o servicio no est&aacute; disponible.<\\/p>\\r\\n\\r\\n<p>Usted se compromete a que todos los datos que usted nos proporciona a trav&eacute;s de la p&aacute;gina con el prop&oacute;sito de la compra de productos son correctos, que su tarjeta de cr&eacute;dito o d&eacute;bito, o cualquier forma dinero electr&oacute;nico que se utiliza es de su propiedad y que hay suficientes fondos o facilidades de cr&eacute;dito para cubrir el coste de los productos. Si el pago no se recibe en su totalidad, no tendremos obligaci&oacute;n de ning&uacute;n tipo de entregar los productos.<\\/p>\\r\\n\\r\\n<h2>Precios y pagos<\\/h2>\\r\\n\\r\\n<p>El pago de todos los productos se realiza a trav&eacute;s de un proveedor externo de servicios de pago. Usted deber&aacute; indicar sus datos de pago a dicho proveedor y es posible que tambi&eacute;n deba aceptar los t&eacute;rminos y condiciones adicionales en relaci&oacute;n con el uso de ese servicio. No podemos aceptar, y por la presente excluye a la mayor medida permitida por la ley aplicable, cualquier responsabilidad que surja de o en conexi&oacute;n con su uso de dicho &ndash; externo - proveedor de pago.<\\/p>\\r\\n\\r\\n<p>Se puede cambiar el precio de cualquier producto antes de que Usted realice el pedido.<\\/p>\\r\\n\\r\\n<p>A pesar de nuestros esfuerzos, algunos de los productos que figuran en la p&aacute;gina pueden mostrar un precio incorrecto, o dicho precio puede incrementarse entre el pedido y nuestra aceptaci&oacute;n de su pedido. Habitualmente verificamos los precios como parte de nuestros procesos, de modo que, cuando el precio correcto de un producto sea menor que el precio establecido, realizaremos el cargo por el importe m&aacute;s bajo. En caso de que el precio correcto de un producto sea mayor que el precio que aparece en la p&aacute;gina, contactaremos con usted para obtener instrucciones o rechazaremos su pedido y le notificaremos de tal rechazo, para que a continuaci&oacute;n, pueda volver a pedir al precio correcto si lo desea.<\\/p>\\r\\n\\r\\n<p>Si un error en el precio es obvio e inequ&iacute;voco y podr&iacute;a haber sido reconocido por usted como tal, no tendremos ninguna obligaci&oacute;n de proporcionarle el producto al precio incorrecto (precio m&aacute;s bajo).<\\/p>\\r\\n\\r\\n<p>Los precios incluyen el IVA y dem&aacute;s impuestos aplicables y\\/o impuestos de importaci&oacute;n. Los precios tambi&eacute;n incluyen los gastos de env&iacute;o a todo el mundo, por correo a&eacute;reo, excepto en circunstancias limitadas por las que nos pondremos en contacto con usted para comunicarle el cargo.<\\/p>\\r\\n\\r\\n<h2>Aceptaci&oacute;n de Entrega<\\/h2>\\r\\n\\r\\n<p>Cuando reciba el producto\\/s deber&aacute; inspeccionarlo(s) para detectar cualquier defecto o falta de conformidad antes de firmar y aceptar su buen estado. Si usted firma la aceptaci&oacute;n del producto, estar&aacute; aceptando que &eacute;ste est&aacute; en condiciones aceptables. Cualquier paquete no firmado pero aceptado se considerar&aacute; en buenas condiciones.<\\/p>\\r\\n\\r\\n<p>Si usted observa cualquier da&ntilde;o en el paquete, por favor, indique que est&aacute; da&ntilde;ado, ya que de otro modo no podremos realizar un reembolso o reemplazar el art&iacute;culo da&ntilde;ado, m&aacute;s all&aacute; de sus derechos legales.<\\/p>\\r\\n\\r\\n<p>Usted debe estar disponible para aceptar la entrega en la fecha establecida, ya que el servicio de mensajer&iacute;a tan solo intentar&aacute; la entrega 2 veces m&aacute;s, tras la cual, el paquete nos ser&aacute; devuelto, haci&eacute;ndose cargo usted del coste. Si la entrega es rechazada o devuelta debido a una direcci&oacute;n incorrecta, usted deber&aacute; pagar una tarifa de devoluci&oacute;n.<\\/p>\"}}', '2018-11-01 09:08:41', '2018-12-22 21:04:43', NULL);
INSERT INTO `pages` (`id`, `template`, `name`, `title`, `slug`, `content`, `extras`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'content_page', 'Privacy', '{\"en\":\"Privacy\",\"es\":\"Pagina de privacidad\"}', 'privacy', NULL, '{\"en\":{\"content\":\"<p>It is hereby certified that these conditions have been laid down by Cuentos Color&iacute;n S.L., C\\/ R&iacute;os Rosas, 36 - 1&ordm; Izquierda, 28003 Madrid Espa&ntilde;a, +1-541-640-5453, and holder of C.I.F. (Company Tax Code): B87210621, hereinafter referred to as Mumablue for its website www.mumablue.com<\\/p>\\r\\n\\r\\n<p>Visiting this website does not oblige the user to provide any personal information. If the user provides any personal information, the data collected shall be used for the purpose, in the manner, and with the restrictions and rights set forth in Organic Law 15\\/1999, on Personal Data Protection. The purposes for which the data shall be collected will be detailed in the data form itself, including user registration management, the sending of commercial information for future campaigns, products and\\/or services by regular mail or electronic means, including SMS, and conducting surveys. Users that provide personal data unequivocally consent to the inclusion of their data in a file under the ownership of MUMABLUE, and the automated processing or not of said data. \\u2028\\u2028<\\/p>\\r\\n\\r\\n<p>MUMABLUE has adopted the technical and organisational measures necessary to guarantee the safety and integrity of the data, and to prevent their alteration, loss, processing or unauthorised access. Users whose data are handled may exercise, free of charge, their rights of opposition, access and information, rectification, removal of their data and cancelling of their authorisation without retroactive effect pursuant to the terms set forth in Organic Law 15\\/1999 on Personal Data Protection, in accordance with the legally established procedure. These rights may be exercised by writing to us at the email address info@mumablue.com. When collecting data, the voluntary or mandatory nature of the data being collected shall be indicated. Access to this website may involve the use of cookies. Cookies are small amounts of information stored in the browser used by each user so that the server remembers certain information that in the future will only be read by the server that implemented it. The cookies generally have limited time duration. No cookie from this website will allow contact to be made to the user&rsquo;s telephone number, email address, or any means of contact. No contact from this website can extract information from the user&rsquo;s hard-drive or steal personal information. The only way, on this website, that the user&rsquo;s private information can become part of the cookie file is when the user personally gives this information to the server. Users that do not wish to receive cookies, or want to be informed of settings, may configure their browser accordingly. MUMABLUE can provide nominative data to its trading partners. This means users can receive commercial offers from third parties. In this regard, it is hereby specified that, unless expressly rejected by the user, MUMABLUE may provide his\\/her data to trading partners. However, with regard to customer email addresses, MUMABLUE may only use or provide this email to its partners with the express consent of the user. Of course, the user can, at any time, cancel said authorisation by notifying this cancellation via an email sent to the following address: info@mumablue.com<\\/p>\\r\\n\\r\\n<p>For placing and tracking orders or other customer services that may be implemented in the future, personal data must be registered and a password chosen in order to sign in to restricted zones requiring prior identification. This prevents repeating the registration during future visits to the store. When you register with our server or place an order, your personal and address details, and the transactions made and being processed, are entered in our database, and shall solely be used for processing the order and its subsequent tracking. If you have given your express consent, and unless this has been revoked, your data shall also be used to send information about offers and services you may be interested in. You may change your customer registration details at any time (change of domicile, telephone, etc.) or request a password reminder if you have forgotten it. We also hereby inform you, pursuant to Organic Law 15\\/1999, of December 13, on Personal Data Protection, and other existing data protection legislation, that the personal data contained in this form shall be entered into a file owned by CUENTOS COLORIN SL for the purpose of channelling requests for information, suggestions, and customer complaints for the handling and resolution of these. The customer may exercise the rights of access, rectification, opposition and removal by writing to Cuentos Color&iacute;n S.L. Ref.: LOPD (Personal Data Protection), C\\/ R&iacute;os Rosas, 36 - 1&ordm; Izquierda, 28003 Madrid Espa&ntilde;a, USA, or to our email address: info@mumablue.com, in compliance with the terms laid down by law, and information may be requested. Our website uses cookies. A &ldquo;Cookie&rdquo; is a small file stored in the user&rsquo;s computer that allows us to recognise the user. The set of &ldquo;Cookies&rdquo; helps us to improve the quality of our website, allowing us to control which pages our customers find useful or not. The cookies are essential for Internet operation, and bring numerous advantages for the presentation of interactive services, facilitating browsing and usability for our website. Consider that the cookies cannot damage your computer and on the contrary, activated cookies help us to identify and solve problems. However, you may deactivate the use of cookies via your Internet browser settings, or may establish certain policies that allow a private mode to be activated through the cookies that are always deleted after your visit.<\\/p>\",\"meta_title\":null,\"meta_keywords\":null,\"meta_description\":null},\"es\":{\"meta_title\":null,\"meta_description\":null,\"meta_keywords\":null,\"content\":\"<p>Spanish<\\/p>\\r\\n\\r\\n<p>It is hereby certified that these conditions have been laid down by Cuentos Color&iacute;n S.L., C\\/ R&iacute;os Rosas, 36 - 1&ordm; Izquierda, 28003 Madrid Espa&ntilde;a, +1-541-640-5453, and holder of C.I.F. (Company Tax Code): B87210621, hereinafter referred to as Mumablue for its website www.mumablue.com<\\/p>\\r\\n\\r\\n<p>Visiting this website does not oblige the user to provide any personal information. If the user provides any personal information, the data collected shall be used for the purpose, in the manner, and with the restrictions and rights set forth in Organic Law 15\\/1999, on Personal Data Protection. The purposes for which the data shall be collected will be detailed in the data form itself, including user registration management, the sending of commercial information for future campaigns, products and\\/or services by regular mail or electronic means, including SMS, and conducting surveys. Users that provide personal data unequivocally consent to the inclusion of their data in a file under the ownership of MUMABLUE, and the automated processing or not of said data. \\u2028\\u2028<\\/p>\\r\\n\\r\\n<p>MUMABLUE has adopted the technical and organisational measures necessary to guarantee the safety and integrity of the data, and to prevent their alteration, loss, processing or unauthorised access. Users whose data are handled may exercise, free of charge, their rights of opposition, access and information, rectification, removal of their data and cancelling of their authorisation without retroactive effect pursuant to the terms set forth in Organic Law 15\\/1999 on Personal Data Protection, in accordance with the legally established procedure. These rights may be exercised by writing to us at the email address info@mumablue.com. When collecting data, the voluntary or mandatory nature of the data being collected shall be indicated. Access to this website may involve the use of cookies. Cookies are small amounts of information stored in the browser used by each user so that the server remembers certain information that in the future will only be read by the server that implemented it. The cookies generally have limited time duration. No cookie from this website will allow contact to be made to the user&rsquo;s telephone number, email address, or any means of contact. No contact from this website can extract information from the user&rsquo;s hard-drive or steal personal information. The only way, on this website, that the user&rsquo;s private information can become part of the cookie file is when the user personally gives this information to the server. Users that do not wish to receive cookies, or want to be informed of settings, may configure their browser accordingly. MUMABLUE can provide nominative data to its trading partners. This means users can receive commercial offers from third parties. In this regard, it is hereby specified that, unless expressly rejected by the user, MUMABLUE may provide his\\/her data to trading partners. However, with regard to customer email addresses, MUMABLUE may only use or provide this email to its partners with the express consent of the user. Of course, the user can, at any time, cancel said authorisation by notifying this cancellation via an email sent to the following address: info@mumablue.com<\\/p>\\r\\n\\r\\n<p>For placing and tracking orders or other customer services that may be implemented in the future, personal data must be registered and a password chosen in order to sign in to restricted zones requiring prior identification. This prevents repeating the registration during future visits to the store. When you register with our server or place an order, your personal and address details, and the transactions made and being processed, are entered in our database, and shall solely be used for processing the order and its subsequent tracking. If you have given your express consent, and unless this has been revoked, your data shall also be used to send information about offers and services you may be interested in. You may change your customer registration details at any time (change of domicile, telephone, etc.) or request a password reminder if you have forgotten it. We also hereby inform you, pursuant to Organic Law 15\\/1999, of December 13, on Personal Data Protection, and other existing data protection legislation, that the personal data contained in this form shall be entered into a file owned by CUENTOS COLORIN SL for the purpose of channelling requests for information, suggestions, and customer complaints for the handling and resolution of these. The customer may exercise the rights of access, rectification, opposition and removal by writing to Cuentos Color&iacute;n S.L. Ref.: LOPD (Personal Data Protection), C\\/ R&iacute;os Rosas, 36 - 1&ordm; Izquierda, 28003 Madrid Espa&ntilde;a, USA, or to our email address: info@mumablue.com, in compliance with the terms laid down by law, and information may be requested. Our website uses cookies. A &ldquo;Cookie&rdquo; is a small file stored in the user&rsquo;s computer that allows us to recognise the user. The set of &ldquo;Cookies&rdquo; helps us to improve the quality of our website, allowing us to control which pages our customers find useful or not. The cookies are essential for Internet operation, and bring numerous advantages for the presentation of interactive services, facilitating browsing and usability for our website. Consider that the cookies cannot damage your computer and on the contrary, activated cookies help us to identify and solve problems. However, you may deactivate the use of cookies via your Internet browser settings, or may establish certain policies that allow a private mode to be activated through the cookies that are always deleted after your visit.<\\/p>\"}}', '2018-11-01 09:23:55', '2018-12-22 21:04:14', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `description`, `value`, `field`, `active`, `created_at`, `updated_at`) VALUES
(1, 'contact_us_email', 'Contact Us Email', NULL, 'crodriguez@materlu.com', NULL, NULL, NULL, NULL),
(2, 'footer_copyright', 'Footer Copyright', NULL, '&copy; 2018 MaterLu', NULL, NULL, NULL, NULL),
(3, 'google_play', 'GooglePlay', NULL, 'http://kidmons.loc', NULL, NULL, NULL, NULL),
(4, 'apple_store', 'AppleStore', NULL, 'http://kidmons.loc', NULL, NULL, NULL, NULL),
(5, 'facebook', 'Facebook', NULL, 'http://kidmons.loc', NULL, NULL, NULL, NULL),
(6, 'google_plus', 'GooglePlus', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'instagram', 'Instagram', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'twitter', 'Twitter', NULL, 'http://twitter.com', NULL, NULL, NULL, NULL),
(9, 'pinterest', 'Pinterest', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price_usd` float(8,2) NOT NULL,
  `price_eur` float(8,2) NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `stories`
--

INSERT INTO `stories` (`id`, `name`, `description`, `price_usd`, `price_eur`, `thumbnail`, `created_at`, `updated_at`) VALUES
(4, '{\"en\":\"La moto de Sapin\"}', '{\"en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}', 40.00, 32.00, 'uploads/la-moto-de-sapin.png', '2018-10-22 07:10:33', '2019-07-08 13:05:10'),
(6, '{\"en\":\"La nave del tiempo\"}', '{\"en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}', 30.00, 30.00, 'uploads/la-nave-del-tiempo-materlu.png', '2018-12-03 09:21:52', '2019-07-08 11:32:44'),
(8, '{\"en\":\"El Zampasue\\u00f1os\",\"es\":\"El Zampasue\\u00f1os\",\"fr\":\"El Zampasue\\u00f1os\"}', '{\"en\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\",\"es\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\",\"fr\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\"}', 35.00, 30.00, 'uploads/el-zampasueños-materlu.png', '2019-01-21 13:29:29', '2019-07-08 10:03:53');

-- --------------------------------------------------------

--
-- 表的结构 `story_values`
--

CREATE TABLE `story_values` (
  `story_id` int(10) UNSIGNED NOT NULL,
  `value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `story_values`
--

INSERT INTO `story_values` (`story_id`, `value_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(8, 1),
(6, 3),
(6, 5),
(6, 6),
(8, 4),
(8, 6);

-- --------------------------------------------------------

--
-- 表的结构 `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mihailyukov.vlad@gmail.com', '2018-10-25 10:02:35', '2018-10-25 10:02:35'),
(2, 'bellagioelena80@gmail.com', '2018-11-28 13:34:58', '2018-11-28 13:34:58');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@materlu.com', '$2y$10$jAYC9lsutJ4pyuBlzkapMOafCIzFWtByQdxQ3geGhnOW3wBBTc9hK', '3caOcFKGA9gxii0NsUvW2WRCpiZ9NosRbRVWpqL8HdTq4HzHGsznsg8cOfqt', '2018-09-26 08:27:32', '2018-11-01 14:48:57');

-- --------------------------------------------------------

--
-- 表的结构 `values`
--

CREATE TABLE `values` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `values`
--

INSERT INTO `values` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Generocity\",\"es\":\"Generosidad\"}', 'uploads/firstItem-icon1.png', '2018-10-22 06:43:39', '2018-12-22 19:23:57'),
(2, '{\"en\":\"Tolerancy\",\"es\":\"Tolerancia\"}', 'uploads/firstItem-icon2.png', '2018-10-22 06:45:50', '2018-12-22 19:24:07'),
(3, '{\"en\":\"Creativity\",\"es\":\"Creatividad\"}', 'uploads/firstItem-icon3.png', '2018-10-22 06:46:01', '2018-12-22 19:24:14'),
(4, '{\"en\":\"Fears\",\"es\":\"Miedos\"}', 'uploads/secondItem-icon1.png', '2018-10-22 06:46:12', '2018-12-22 19:24:24'),
(5, '{\"en\":\"Confidence\",\"es\":\"Confianza\"}', 'uploads/secondItem-icon2.png', '2018-10-22 06:46:25', '2018-12-22 19:24:35'),
(6, '{\"en\":\"Friendship\",\"es\":\"Amistad\"}', 'uploads/secondItem-icon3.png', '2018-10-22 06:46:35', '2018-12-22 19:24:55');

--
-- 转储表的索引
--

--
-- 表的索引 `birthdays`
--
ALTER TABLE `birthdays`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `countries_delivery`
--
ALTER TABLE `countries_delivery`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- 表的索引 `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_country_id_foreign` (`country_id`);

--
-- 表的索引 `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- 表的索引 `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_delivery_id_foreign` (`delivery_id`),
  ADD KEY `orders_coupon_id_foreign` (`coupon_id`),
  ADD KEY `orders_currency_id_foreign` (`currency_id`);

--
-- 表的索引 `orders_statuses`
--
ALTER TABLE `orders_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_statuses_order_id_foreign` (`order_id`);

--
-- 表的索引 `orders_stories`
--
ALTER TABLE `orders_stories`
  ADD KEY `orders_stories_order_id_foreign` (`order_id`),
  ADD KEY `orders_stories_story_id_foreign` (`story_id`),
  ADD KEY `orders_stories_language_id_foreign` (`language_id`);

--
-- 表的索引 `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 表的索引 `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- 表的索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- 表的索引 `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `story_values`
--
ALTER TABLE `story_values`
  ADD KEY `story_values_story_id_foreign` (`story_id`),
  ADD KEY `story_values_value_id_foreign` (`value_id`);

--
-- 表的索引 `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_email_unique` (`email`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 表的索引 `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `birthdays`
--
ALTER TABLE `birthdays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- 使用表AUTO_INCREMENT `countries_delivery`
--
ALTER TABLE `countries_delivery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- 使用表AUTO_INCREMENT `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- 使用表AUTO_INCREMENT `orders_statuses`
--
ALTER TABLE `orders_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 使用表AUTO_INCREMENT `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `values`
--
ALTER TABLE `values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 限制导出的表
--

--
-- 限制表 `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries_delivery` (`id`) ON DELETE CASCADE;

--
-- 限制表 `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- 限制表 `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`) ON DELETE CASCADE;

--
-- 限制表 `orders_statuses`
--
ALTER TABLE `orders_statuses`
  ADD CONSTRAINT `orders_statuses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- 限制表 `orders_stories`
--
ALTER TABLE `orders_stories`
  ADD CONSTRAINT `orders_stories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_stories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_stories_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE;

--
-- 限制表 `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 限制表 `story_values`
--
ALTER TABLE `story_values`
  ADD CONSTRAINT `story_values_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `story_values_value_id_foreign` FOREIGN KEY (`value_id`) REFERENCES `values` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
