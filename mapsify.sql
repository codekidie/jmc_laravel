-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2014 at 05:11 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mapsify`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE IF NOT EXISTS `apps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `apiname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `apiname`, `description`, `apikey`, `created_at`, `updated_at`) VALUES
(1, 'asdfasdfasdfsd ', 'An api id for google', 'wrawoifuba9sfa09', 1416281289, 1416281289);

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latlongval` varchar(255) NOT NULL,
  `mapname` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `latlongval`, `mapname`, `created_at`, `updated_at`) VALUES
(4, '7.06,125.47', 'Alambre Davao City', 1416186518, 1416186518),
(5, '7.42,125.46', 'Angsikan Davao City', 1416186650, 1416186650),
(6, '7.04,125.47', 'Bago Davao City', 1416186708, 1416186708),
(7, '7.04,125.53', 'Bago-Aplaya Davao City', 1416186761, 1416186761),
(8, '7.05,125.52', 'Bago-Inigo Davao City', 1416186805, 1416186805),
(9, '7.17,125.40', 'Baguio Davao City', 1416186832, 1416186832),
(10, '7.13,125.45', 'Balingaeng Davao City', 1416186865, 1416191278),
(11, '7.04,125.50', 'Baliok Davao City', 1416186895, 1416191286),
(12, '7.05,125.55', 'Bangkal Davao City', 1416186945, 1416186945),
(13, '7.09,125.44', 'Bankas Davao City', 1416186983, 1416186983),
(14, '7.08,125.39', 'Baracayo Davao City', 1416187020, 1416187020),
(15, '7.04,125.47', 'Bato Davao City', 1416187049, 1416187049),
(16, '7.03,125.44', 'Bayabas Davao City', 1416187107, 1416187107),
(17, '7.03,125.44', 'Bayabas Crossing Davao City', 1416187149, 1416187149),
(18, '7.16,125.52', 'Biao Davao City', 1416187189, 1416187189),
(19, '7.17,125.52', 'Biao Joaquin Davao City', 1416187233, 1416187233),
(20, '7.13,125.51', 'Biao Tenda Davao City', 1416187289, 1416187289),
(21, '6.98,125.48', 'Binagao Davao City', 1416187405, 1416187405),
(22, '6.98,125.48', 'Binugao Davao City', 1416187430, 1416187430),
(23, '7.21,125.64', 'Bodbod Davao City', 1416187479, 1416187479),
(24, '7.11,125.61', 'Buhangin Davao City', 1416187514, 1416187514),
(25, '7.24,125.64', 'Bunawan Davao City', 1416187551, 1416187551),
(26, '7.21,125.49', 'Bungalum Davao City', 1416187593, 1416187593),
(27, '7.10,125.53', 'Bunguyon Davao City', 1416187621, 1416187621),
(28, '7.04,125.58', 'Cabacan Davao City', 1416187656, 1416187656),
(29, '7.10,125.62', 'Cabaguio Davao City', 1416187690, 1416187690),
(30, '7.14,125.61', 'Cabantian Davao Citya', 1416187733, 1416187733),
(31, '7.19,125.45', 'Calinan Davao City', 1416187757, 1416187757),
(32, '7.08,125.54', 'Catalunan Davao City', 1416187788, 1416187788),
(33, '7.07,125.52', 'Catalunan Pequeno Davao City', 1416187864, 1416187864),
(34, '7.12,125.66', 'Catitipan Davao City', 1416187889, 1416187889),
(35, '7.07,125.61', 'Central Davao City', 1416187934, 1416187934),
(36, '7.14,125.42', 'Cogon Davao City', 1416187960, 1416187960),
(37, '7.14,125.63', 'Commonal Davao City', 1416187981, 1416187981),
(38, '7.16,125.50', 'Cutson Davao City', 1416188006, 1416188006),
(39, '7.01,125.50', 'Dalioa Davao City', 1416188037, 1416188037),
(40, '7.01,125.50', 'Dalio Davao City', 1416188065, 1416188065),
(41, '7.07,125.61', 'Davao City', 1416188103, 1416188103),
(42, '7.03,125.52', 'Dumuy Davao City', 1416188135, 1416188135),
(43, '7.22,125.60', 'Gatungan Davao City', 1416188176, 1416188176),
(44, '7.15,125.53', 'Guianga Davao City', 1416188218, 1416188235),
(45, '7.21,125.40', 'Gumalang Davao City', 1416188260, 1416188260),
(46, '7.00,125.49', 'Iambadan Davao City', 1416188300, 1416188300),
(47, '7.19,125.65', 'Ilang Davao City', 1416188328, 1416188328),
(48, '7.16,125.60', 'Indangan Davao City', 1416188349, 1416188349),
(49, '7.069,125.64', 'Ipil Davao City ', 1416188368, 1416188368),
(50, '7.38,125.41', 'Kabatokan Davao City', 1416188404, 1416188404),
(51, '7.12,125.42', 'Kabayama Davao City', 1416188430, 1416188430),
(52, '7.19,125.53', 'Kallawa Davao City', 1416188460, 1416188460),
(53, '7.26,125.35', 'Kibangay Davao City', 1416188494, 1416188494),
(54, '7.19,125.63', 'Kumonal Davao City', 1416188521, 1416188521),
(55, '7.21,125.44', 'Lacson Davao City', 1416188547, 1416188547),
(56, '7.12,125.60', 'Languan Davao City', 1416188571, 1416188571),
(57, '7.14,125.59', 'Lapanday Davao City', 1416189232, 1416189232),
(58, '7.17,125.53', 'Lasang Davao City', 1416189257, 1416189257),
(59, '7.18,125.65', 'Liang Davao City', 1416189286, 1416189286),
(60, '7.06,125.52', 'Libby Airstrip Davao City', 1416189332, 1416189332),
(61, '7.02,25.51', 'Lipadas Davao City', 1416189355, 1416189355),
(62, '7.02,25.51', 'Lipadas Davao City', 1416189355, 1416189355),
(63, '7.04,125.449', 'Lobogon  Davao City', 1416189377, 1416189377),
(64, '7.45,125.45', 'Lumiag Davao City', 1416189396, 1416189396),
(65, '7.06,125.36', 'Lumot Davao City', 1416189415, 1416189415),
(66, '7.09,125.58', 'Maa Davao City', 1416189438, 1416189438),
(67, '7.9,125.56', 'Mag Davao City', 1416189458, 1416189458),
(68, '7.12,125.57', 'Magtood Davao City', 1416189480, 1416189480),
(69, '7.22,.125.62', 'Mahayag Davao City', 1416189506, 1416189506),
(70, '7.18,125.42', 'Malagos Davao City', 1416189536, 1416189536),
(71, '7.09,125.46', 'Manambulan Davao City', 1416189554, 1416189554),
(72, '7.17,125.58', 'Mandog Davao City', 1416189577, 1416189577),
(73, '7.17,125.58', 'Mandug Davao City', 1416189661, 1416189661),
(74, '7.15,125.50', 'Manuel Guianga Davao City', 1416189746, 1416189746),
(75, '7.04,125.57', 'Matina Davao City', 1416189773, 1416189773),
(76, '7.04,125.57', 'Matina-Biao Davao City', 1416189813, 1416189813),
(77, '7.09,125.50', 'Mintal Davao City', 1416189835, 1416189835),
(78, '7.07,125.47', 'Mulig Davao City', 1416189862, 1416189862),
(79, '7.11,125.45', 'Naming Davao City', 1416189880, 1416189880),
(80, '7.02,125.50', 'New Dalioa Davao City', 1416189917, 1416189917),
(81, '7.05,125.50', 'Nolum Davao City', 1416189944, 1416189944),
(82, '7.08,125.61', 'Obrero Davao City', 1416189967, 1416189967),
(83, '7.05,125.55', 'Ulas Davao City', 1416189992, 1416189992),
(84, '7.14,125.65', 'Pagamikan Davao City', 1416190032, 1416190032),
(85, '7.11,125.41', 'Pagsiban Davao City', 1416190059, 1416190059),
(86, '7.11,125.65', 'Pampanga Davao City', 1416190084, 1416190084),
(87, '7.16,125.66', 'Panacan Davao City', 1416190103, 1416190103),
(88, '7.09,125.56', 'Pangi Davao City', 1416190187, 1416190187),
(89, '7.20,125.67', 'Panuntungan Davao City', 1416190214, 1416190214),
(90, '7.50,125.53', 'Peagkalanan  Davao City', 1416190250, 1416190299),
(91, '7.07,125.58', 'Pequeno Davao City', 1416190290, 1416190290),
(92, '7.04,12549', 'Piedra Davao City', 1416190320, 1416190320),
(93, '7.11,125.49', 'Poblacion Davao City', 1416190347, 1416190347),
(94, '7.05,125.54', 'Puan Davao City', 1416190367, 1416190367),
(95, '7.16,125.54', 'Pungot Davao City', 1416190410, 1416190410),
(96, '7.05,125.58', 'Sanghay Davao City', 1416190505, 1416190505),
(97, '7.08,125.62', 'Santa Ana Davao City', 1416190538, 1416190538),
(98, '7.21,125.62', 'Santa Cruz Davao City', 1416190571, 1416190571),
(99, '7.12,125.66', 'Sasa Davao City', 1416190684, 1416190684),
(100, '7.12,125.66', 'Sasabayou Davao City', 1416190703, 1416190703),
(101, '7.48,125.34', 'Simod Davao City', 1416190744, 1416190744),
(102, '7.11,125.50', 'Tacunan Davao City', 1416190791, 1416190791),
(103, '7.11,125.43', 'Tagakpad Davao City', 1416190811, 1416190811),
(104, '7.07,125.44', 'Tagluno Davao City', 1416190830, 1416190830),
(105, '7.35,125.33', 'Takaipo Davao City', 1416190850, 1416190850),
(106, '7.05,125.55', 'Talo Davao City', 1416190869, 1416190869),
(107, '7.05.125.55', 'Talomo Davao City', 1416190894, 1416190894),
(108, '7.26,125.66', 'Tambongon Davao City', 1416190919, 1416190919),
(109, '7.07,125.43', 'Tankelan Davao City', 1416190958, 1416190958),
(110, '6.98,125.44', 'Tibuloy Davao City', 1416191032, 1416191032),
(111, '7.19.125.65', 'Tibungco Davao City', 1416191061, 1416191061),
(112, '7.3,125.59', 'Tiggatto Davao City', 1416191091, 1416191091),
(113, '7.15,125.53', 'Tugbok Davao City', 1416191114, 1416191114),
(114, '7.11,125.59', 'UyangurenDavao City', 1416191144, 1416191144),
(115, '7.21,125.39', 'Ventura Davao City', 1416191164, 1416191164),
(116, '7.16,125.45', 'Wangan Davao City', 1416191179, 1416191179);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `type` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `migration` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`type`, `name`, `migration`) VALUES
('app', 'default', '001_create_users'),
('app', 'default', '002_create_maps'),
('app', 'default', '003_create_apps');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL,
  `login_hash` varchar(255) NOT NULL,
  `profile_fields` text NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group`, `email`, `last_login`, `login_hash`, `profile_fields`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'YWqmPGH+dOEvOh6pf83a62lzJ1QQLHRMPHhNIaohB3s=', 100, 'admin@gmail.com', 1416280480, '0e90bd84d8393bcb8980fc756b63cfaefa15a333', 'a:0:{}', 1414001044, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
