-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2014 at 06:06 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bloodhuntphil`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE IF NOT EXISTS `badges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `establishment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `title`, `logo`, `details`, `created_at`, `updated_at`, `establishment_id`) VALUES
(3, 'Mighty Donator', 'dvwMXO_Chrysanthemum.jpg', '<p>this badge is awarded for the person who donated 50% of his blood.</p>', '2014-09-22 13:18:39', '2014-09-22 13:18:39', '54150856e4e6f'),
(4, 'Super Hero Blood', 'j4PVUV_Penguins.jpg', '<p>this badge is awarded for sipping blood&nbsp;</p>', '2014-09-22 13:21:53', '2014-09-22 13:21:53', '54150856e4e6f'),
(5, 'super human', 'wzMSpM_Jellyfish.jpg', '<p>this badge is for super humans</p>', '2014-09-22 13:40:27', '2014-09-22 13:40:27', '54150856e4e6f'),
(6, 'Red Blood', 'xGU2aS_Koala.jpg', '<p>Ultimate Blood Donator</p>', '2014-09-22 16:37:47', '2014-09-22 16:37:47', '54150856e4e6f'),
(8, 'Life Saver', 'sxzIe8_Chrysanthemum.jpg', '<p>This badge is awarded for person with bla bla who save ......</p>', '2014-09-22 16:41:43', '2014-09-22 16:41:43', '54150856e4e6f'),
(9, 'Elite Donator', 'XcM4Y5_logo.jpg', '<p>this is a badge rewarded for 3 times blood donator</p>', '2014-09-28 05:09:51', '2014-09-28 05:09:51', '54150856e4e6f'),
(10, 'Red Cross Bravery', 'J1ACFS_63922_bloodbag.jpg', '<p>Badge for brave blood donators in redcross Davao</p>', '2014-11-05 08:20:31', '2014-11-05 08:20:31', '5447ac7bc0091');

-- --------------------------------------------------------

--
-- Table structure for table `badge_users`
--

CREATE TABLE IF NOT EXISTS `badge_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `badge_id` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `badge_users`
--

INSERT INTO `badge_users` (`id`, `badge_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, '3', 'kevin@gmail.com', '2014-10-22 08:04:46', '2014-10-22 08:04:46'),
(5, '8', 'code@gmail.com', '2014-10-22 08:07:42', '2014-10-22 08:07:42'),
(6, '10', 'kevin@gmail.com', '2014-11-05 08:20:59', '2014-11-05 08:20:59'),
(7, '10', 'dfadf', '2014-11-05 08:22:44', '2014-11-05 08:22:44'),
(8, '10', 'merasolcastro@yahoo.com', '2014-11-12 01:32:31', '2014-11-12 01:32:31'),
(9, '10', 'claire@gmail.com', '2014-11-13 00:05:59', '2014-11-13 00:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `bloodstack`
--

CREATE TABLE IF NOT EXISTS `bloodstack` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `o` int(11) DEFAULT '0',
  `ab` int(11) DEFAULT '0',
  `a` int(11) DEFAULT '0',
  `b` int(11) DEFAULT '0',
  `establishment_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bloodstack`
--

INSERT INTO `bloodstack` (`id`, `o`, `ab`, `a`, `b`, `establishment_id`, `created_at`, `updated_at`) VALUES
(1, 51, 45, 50, 22, '54150856e4e6f', '0000-00-00 00:00:00', '2014-10-01 21:43:53'),
(2, 78, 35, 29, 19, '5415096d3da55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 60, 0, 0, 0, '5447ac7bc0091', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `slug`) VALUES
(4, 'offers', 'hotel, travel, guide offers', 'offers'),
(5, 'Blood Donation Process', 'this is for blood donation process', 'blood_donation'),
(6, 'guyg', 'hjhkjh', 'jhkjh');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE IF NOT EXISTS `category_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category_post_category_id_index` (`category_id`),
  KEY `category_post_post_id_index` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, 5, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `establishments`
--

CREATE TABLE IF NOT EXISTS `establishments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tw_username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `identifier` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `establishments`
--

INSERT INTO `establishments` (`id`, `name`, `tw_username`, `tagline`, `license_number`, `email`, `location`, `contact_number`, `website`, `logo`, `date_start`, `date_end`, `created_at`, `updated_at`, `identifier`) VALUES
(6, 'San Pedro Hospital', 'codekidie', 'We Serve Awesomeness', '234u2o3j4jbn', 'sanpedro@gmail.com', '<p><iframe style="border: 0;" src="https://www.google.com/maps/embed/v1/search?key=AIzaSyCCL1DXNCkB8AtrfPWWEtRe5IGnQCOgRGQ&amp;q=blood+bank+in+Davao" width="100%" height="350" frameborder="0"></iframe></p>', '09206567002', 'spc.com', '', '0000-00-00', '0000-00-00', '2014-09-14 10:15:34', '2014-09-17 17:26:52', '54150856e4e6f'),
(7, 'Red Cross', 'redcross', 'Blood is awesome', '1092khjhlkh', 'redcross@gmail.com', 'Davao Area', '09206567002', 'redcross.com', '', '0000-00-00', '0000-00-00', '2014-09-14 10:20:13', '2014-09-14 10:20:13', '5415096d3da55'),
(8, 'Davao Doctors Hospital', 'redcross', 'We Serve Awesomeness', 'asdfsdasfdasdf46545fa', 'davaodoc@gmail.com', 'san pedro street matina davao city', '09206567002', 'davaodoc.com', 'Zpoazc_63922_bloodbag.jpg', '0000-00-00', '0000-00-00', '2014-09-27 08:51:54', '2014-09-27 08:51:54', '5426183a79c7d'),
(9, 'John Paul Hospital', 'redcross', 'Save More Lives', '15a3sd4f53a', 'jph@gmail.com', 'ecoland davao', '09206567002', 'johnpaul.com', 'drvBkc_logo.jpg', '0000-00-00', '0000-00-00', '2014-09-27 08:55:32', '2014-09-27 08:55:32', '54261914cedc6'),
(10, 'Test Establishment', 'redcross', 'We Code For Food Not For Fame', 'afapasifo3i22p352d', 'establishmen@gmail.com', 'Davao Area', '09206567002', 'test.com', 'ADm7nD_63922_bloodbag.jpg', '0000-00-00', '0000-00-00', '2014-10-15 20:19:34', '2014-10-15 20:19:34', '543f4756af2df'),
(11, 'Philippine Red Cross Davao', 'philbloodhunt', '1 blood can save people', '54654adsfadsfEc', 'redcross@gmail.com', 'Roxas Street Davao City', '096236a1313', 'redcross.com', 'nLKmJI_PRC.jpg', '0000-00-00', '0000-00-00', '2014-10-22 05:09:15', '2014-10-22 05:09:15', '5447ac7bc0091');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `start` text COLLATE utf8_unicode_ci NOT NULL,
  `end` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `organizer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organizerDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `establishment_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `location`, `start`, `end`, `logo`, `description`, `organizer`, `organizerDescription`, `status`, `created_at`, `updated_at`, `establishment_id`) VALUES
(9, 'Catitipan Blood  Drive Test', 'Davao City', '2014-09-10T12:59', '2014-09-10T06:02', '', '<p>this is the descriptions</p>', 'Red Cross Davao', '<p>this is the organizer details</p>', 0, '2014-09-11 12:20:38', '2014-10-22 05:05:12', '54150856e4e6f'),
(12, 'Blood Drive', 'Philippine Japan Friendship Highway Catitipan Davao City', '2014-09-11T12:59', '2014-12-31T12:59', '', '<p>this is the description</p>', 'San Pedro Hospital', '<p>this is the description</p>', 0, '2014-09-11 19:44:34', '2014-09-11 19:44:34', '54150856e4e6f'),
(13, 'Buhangin Blood  Drive', 'test', '2014-12-31T12:59', '2014-12-31T12:59', '', '<p>test</p>', 'Red Cross Davao', '<p>teet</p>', 0, '2014-09-28 01:30:12', '2014-09-28 01:30:12', '54150856e4e6f'),
(14, 'Daily Health Check Up', 'adsfadsf', '2014-12-31T12:59', '2014-12-31T12:59', '', '<p>dsfasd</p>', 'Red Cross Davao', '<p>adsfdsfadf</p>', 0, '2014-09-28 01:31:38', '2014-09-28 01:31:38', '54150856e4e6f'),
(15, 'Red Cross Free Blood Check Up', 'fdsfasd', '2014-12-31T12:59', '2014-12-31T12:59', 'sFFTQ2_facts-about-blood1456514966-jul-11-2012-600x400.jpg', '<p>dsfasdf</p>', 'Davao Doctors Hospital', '<p>dfadsf</p>', 0, '2014-09-28 01:36:41', '2014-09-28 01:36:41', '54150856e4e6f'),
(16, 'Knowledge Seminar Regarding Blood', 'adsfadsf', '2014-12-31T12:59', '2014-12-31T12:59', 'hi2YmC_facts-about-blood1456514966-jul-11-2012-600x400.jpg', '<p>dsfadsfdsfa</p>', 'Red Cross Davao', '<p>dasfdsfadsf</p>', 0, '2014-09-28 11:17:31', '2014-09-28 11:17:31', '54150856e4e6f'),
(17, 'Mapping of Blood Source Location', 'Dasfadsf', '2014-12-31T12:59', '2014-12-31T12:59', 'Olyuib_images (1).jpg', '<p>dasfdsf</p>', 'San Pedro Hospital', '<p>adfadf</p>', 0, '2014-09-28 11:19:25', '2014-09-28 11:19:25', '54150856e4e6f'),
(18, 'Blood Knowledge Enhancement', 'Davao City', '2014-12-31T12:59', '2015-01-01T12:59', 'GHE5MH_images (1).jpg', '<p>Event &nbsp;Detail Here</p>', 'Red Cross Davao', '<p>Organizer Description Here</p>', 0, '2014-11-16 14:05:09', '2014-11-16 14:05:09', '5447ac7bc0091');

-- --------------------------------------------------------

--
-- Table structure for table `events_users`
--

CREATE TABLE IF NOT EXISTS `events_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `events_users`
--

INSERT INTO `events_users` (`id`, `user_id`, `created_at`, `updated_at`, `status`, `event_id`) VALUES
(1, '12', '2014-09-28 12:55:08', '2014-09-28 12:55:08', 'joined', '7'),
(2, '12', '2014-09-28 12:59:59', '2014-09-28 12:59:59', 'joined', '8'),
(23, '12', '2014-09-28 13:57:31', '2014-09-28 13:57:31', 'joined', '14'),
(24, '12', '2014-09-28 13:59:42', '2014-09-28 13:59:42', 'joined', '10'),
(25, '12', '2014-09-28 14:07:09', '2014-09-28 14:07:09', 'not now', '17'),
(26, '12', '2014-09-28 15:17:52', '2014-09-28 15:17:52', 'maybe', '16'),
(27, '14', '2014-10-01 09:29:05', '2014-10-01 09:29:05', 'not now', '12'),
(28, '14', '2014-10-01 15:19:52', '2014-10-01 15:19:52', 'joined', '17'),
(29, '14', '2014-10-01 15:20:12', '2014-10-01 15:20:12', 'not now', '7'),
(30, '19', '2014-10-02 05:13:43', '2014-10-02 05:13:43', 'joined', '17'),
(31, '19', '2014-10-02 05:14:44', '2014-10-02 05:14:44', 'joined', '7'),
(32, '12', '2014-10-13 19:38:11', '2014-10-13 19:38:11', 'joined', '18'),
(33, '12', '2014-10-15 22:36:04', '2014-10-15 22:36:04', 'not now', '12'),
(34, '22', '2014-11-12 01:35:45', '2014-11-12 01:35:45', 'not now', '17'),
(35, '23', '2014-11-12 23:56:02', '2014-11-12 23:56:02', 'not now', '17');

-- --------------------------------------------------------

--
-- Table structure for table `guidelines`
--

CREATE TABLE IF NOT EXISTS `guidelines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `establishment_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `guidelines`
--

INSERT INTO `guidelines` (`id`, `title`, `content`, `establishment_id`, `created_at`, `updated_at`) VALUES
(1, 'Blood Donation', '<p>Lorem Ipsum Dolor Set Amit</p>', '54150856e4e6f', '2014-09-14 10:49:23', '2014-09-14 10:49:23'),
(2, 'Age Required', '<p>Required Age For Blood Donators is 18.</p>', '54150856e4e6f', '2014-09-14 10:54:15', '2014-09-14 10:54:15'),
(3, 'Test', '<p><strong>This is the Content</strong></p>\r\n<hr />\r\n<p>Another Content Movings</p>', '54150856e4e6f', '2014-09-14 11:06:42', '2014-11-21 12:01:00'),
(4, 'Another Test', '<p>This is the Another Test</p>', '54150856e4e6f', '2014-09-14 11:29:03', '2014-09-14 11:29:03'),
(5, 'Another Test 1', '<p>Another Test 1</p>', '54150856e4e6f', '2014-09-14 11:29:16', '2014-09-14 11:29:16'),
(6, 'Another Test  2', '<p>Another Test 2</p>', '54150856e4e6f', '2014-09-14 11:29:26', '2014-09-14 11:29:26'),
(7, 'This is a test Video', '<p><iframe src="//www.youtube.com/embed/fLe_qO4AE-M" style="width:100%;" frameborder="0" allowfullscreen=""></iframe></p>', '54150856e4e6f', '2014-09-14 12:45:03', '2014-09-14 12:45:03'),
(8, 'Another Guideline Video Test', '<p><iframe src="//www.youtube.com/embed/fLe_qO4AE-M" style="width:100%;" frameborder="0" allowfullscreen=""></iframe></p>', '54150856e4e6f', '2014-09-14 12:49:56', '2014-09-14 12:49:56'),
(9, 'Blood Drive', '<h1>This is Guideline</h1>\r\n<p><strong>This is strong type</strong></p>\r\n<ul>\r\n<li><span style="font-size: 11px;">zdcvzxcvzxcv</span></li>\r\n</ul>', '54150856e4e6f', '2014-09-17 16:09:46', '2014-09-17 16:09:46'),
(10, 'asdfasdf', '<p>adsfasdfads</p>', '54150856e4e6f', '2014-11-15 21:39:23', '2014-11-15 21:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE IF NOT EXISTS `hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `the_id` int(11) DEFAULT NULL,
  `hotel_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addressline1` text COLLATE utf8_unicode_ci,
  `addressline2` text COLLATE utf8_unicode_ci,
  `zipcode` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryisocode` int(11) DEFAULT NULL,
  `star_rating` float(8,2) DEFAULT NULL,
  `longitude` text COLLATE utf8_unicode_ci,
  `latitude` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `checkin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numberrooms` int(11) DEFAULT NULL,
  `numberfloors` int(11) DEFAULT NULL,
  `yearopened` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yearrenovated` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo1` text COLLATE utf8_unicode_ci,
  `photo2` text COLLATE utf8_unicode_ci,
  `photo3` text COLLATE utf8_unicode_ci,
  `photo4` text COLLATE utf8_unicode_ci,
  `photo5` text COLLATE utf8_unicode_ci,
  `overview` text COLLATE utf8_unicode_ci,
  `rates_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `continent_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_reviews` int(11) DEFAULT NULL,
  `rating_average` float(8,2) DEFAULT NULL,
  `rates_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=90 ;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `the_id`, `hotel_name`, `slug`, `addressline1`, `addressline2`, `zipcode`, `city`, `state`, `country`, `countryisocode`, `star_rating`, `longitude`, `latitude`, `url`, `checkin`, `checkout`, `numberrooms`, `numberfloors`, `yearopened`, `yearrenovated`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `overview`, `rates_from`, `continent_name`, `number_of_reviews`, `rating_average`, `rates_currency`) VALUES
(1, 1, 'Sai Kaew Beach Resort', 'sai_kaew_beach_resort', '8/1 Moo 4 Tumbon Phe Muang', NULL, NULL, 'Koh Samet', NULL, 'Thailand', 0, 4.00, '101.467152', '12.56824', '/asia/thailand/koh_samet/sai_kaew_beach_resort.html', '2014-05-16', '2014-05-16', 155, NULL, '2000', '2010', 'http://img.agoda.net/hotelimages/1/1/1_13121118050017880879_std.jpg', 'http://img.agoda.net/hotelimages/1/1/1_1006231125003146861_std.jpg', 'http://img.agoda.net/hotelimages/1/1/1_110711115122673_std.jpg', 'http://img.agoda.net/hotelimages/1/1/1_110717001007893_std.jpg', 'http://img.agoda.net/hotelimages/1/1/1_110717001009753_std.jpg', 'The 4-star Sai Kaew Beach Resort offers comfort and convenience whether you''re on business or holiday in Koh Samet. The property features a wide range of facilities to make your stay a pleasant experience. Safety deposit boxes, coffee shop, Wi-Fi in public areas, poolside bar, room service are on the list of things guests can enjoy. Each guestroom is elegantly furnished and equipped with handy amenities. Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel''s recreational facilities, including sauna, spa, fitness center, water sports (motorized), massage. Sai Kaew Beach Resort combines warm hospitality with a lovely ambiance to make your stay in Koh Samet unforgettable.', '134', 'Asia', 1559, 7.90, 'USD'),
(2, 10, 'TRYP Málaga Alameda Hotel', 'tryp_málaga_alameda_hotel', 'Centro Comercial Larios. Avda. de la Aurora, s/n', NULL, 29002, 'Malaga', NULL, 'Spain', 0, 4.00, '-4.432881', '36.715943', '/europe/spain/malaga/tryp_malaga_alameda_hotel.html', '2014-05-16', '2014-05-16', 132, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/10/10/10_1001121618002391467_std.jpg', 'http://img.agoda.net/hotelimages/10/10/10_1001121621002391493_std.jpg', 'http://img.agoda.net/hotelimages/10/10/10_1001121618002391469_std.jpg', 'http://img.agoda.net/hotelimages/10/10/10_1001121619002391477_std.jpg', 'http://img.agoda.net/hotelimages/10/10/10_1001121619002391483_std.jpg', 'Located in Malaga City Center, TRYP Málaga Alameda Hotel is a perfect starting point from which to explore Malaga. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. All the necessary facilities, including facilities for disabled guests, shops, laundry service, tours, bar, are at hand. Each guestroom is elegantly furnished and equipped with handy amenities. To enhance guests'' stay, the hotel offers recreational facilities such as sauna, fitness center. A welcoming atmosphere and excellent service are what you can expect during your stay at TRYP Málaga Alameda Hotel.', '96', 'Europe', 10, 7.40, 'USD'),
(3, 16, 'Metropark Hotel Wanchai Hong Kong', 'metropark_hotel_wanchai_hong_kong', '41-49 Hennessy Road ', NULL, NULL, 'Hong Kong', NULL, 'Hong Kong', 0, 4.00, '114.170576', '22.277779', '/asia/hong_kong/hong_kong/metropark_hotel_wanchai_hong_kong.html', '2014-05-16', '2014-05-16', 173, 18, NULL, '2007', 'http://img.agoda.net/hotelimages/16/16/16_13092715170016627763_std.jpg', 'http://img.agoda.net/hotelimages/16/16/16_13090305000014772842_std.jpg', 'http://img.agoda.net/hotelimages/16/16/16_1003111123002947277_std.jpg', 'http://img.agoda.net/hotelimages/16/16/16_1102071706003558978_std.jpg', 'http://img.agoda.net/hotelimages/16/16/16_110420182407793_std.jpg', 'Set in a prime location of Hong Kong, Metropark Hotel Wanchai Hong Kong puts everything the city has to offer just outside your doorstep. The hotel has everything you need for a comfortable stay. To be found at the hotel are Wi-Fi in public areas, valet parking, airport transfer, babysitting, elevator. Each guestroom is elegantly furnished and equipped with handy amenities. Access to the hotel''s fitness center will further enhance your satisfying stay. For reliable service and professional staff, Metropark Hotel Wanchai Hong Kong caters to your needs.', '128', 'Asia', 2402, 8.00, 'USD'),
(4, 18, 'The Westin Resort', 'the_westin_resort', '1918 Estrada de Hac Sa', NULL, NULL, 'Macau', NULL, 'Macau', 0, 5.00, '113.576574', '22.125391', '/asia/macau/macau/the_westin_resort.html', '2014-05-16', '2014-05-16', 208, 8, '1993', '2013', 'http://img.agoda.net/hotelimages/18/18/18_14032114330018805967_std.jpg', 'http://img.agoda.net/hotelimages/18/18/18_120927095126865_std.jpg', 'http://img.agoda.net/hotelimages/18/18/18_120927095125365_std.jpg', 'http://img.agoda.net/hotelimages/18/18/18_120927095129287_std.jpg', 'http://img.agoda.net/hotelimages/18/18/18_13052716350012544916_std.jpg', 'The Westin Resort is a popular choice amongst travelers in Macau, whether exploring or just passing through. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Coffee shop, elevator, currency exchange, room service, tours are on the list of things guests can enjoy. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like internet access – LAN (charges apply), refrigerator, blackout curtains, bathtub, television LCD/plasma screen. Entertain the hotel''s recreational facilities, including massage, outdoor pool, solarium, steamroom, children''s playground. A welcoming atmosphere and excellent service are what you can expect during your stay at The Westin Resort.', '200', 'Asia', 496, 7.60, 'USD'),
(5, 25, 'Skycity Hotel', 'skycity_hotel', 'Corner Victoria & Federal Streets', NULL, NULL, 'Auckland', NULL, 'New Zealand', 0, 4.50, '174.76274', '-36.848925', '/pacific_ocean_and_australia/new_zealand/auckland/skycity_hotel.html', '2014-05-16', '2014-05-16', 323, 8, '1996', NULL, 'http://img.agoda.net/hotelimages/25/25/25_14032605030018855154_std.jpg', 'http://img.agoda.net/hotelimages/25/25/25_120725110504407_std.jpg', 'http://img.agoda.net/hotelimages/25/25/25_120725083750222_std.jpg', 'http://img.agoda.net/hotelimages/25/25/25_120725083752738_std.jpg', 'http://img.agoda.net/hotelimages/25/25/25_120725083755425_std.jpg', 'Stop at Skycity Hotel to discover the wonders of Auckland. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Room service, safety deposit boxes, bar, casino, valet parking are there for guest''s enjoyment. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like non smoking rooms, daily newspaper, in room safe, bathtub, mini bar. Entertain the hotel''s recreational facilities, including fitness center. Discover all Auckland has to offer by making Skycity Hotel your base.', '108', 'Pacific Ocean and Australia', 776, 8.60, 'USD'),
(6, 31, 'Best Western Premier Harmonie Vienna', 'best_western_premier_harmonie_vienna', 'Harmoniegasse 5-7', NULL, 1090, 'Vienna', 'Vienna', 'Austria', 0, 4.50, '16.359816', '48.219821', '/europe/austria/vienna/best_western_premier_harmonie_vienna.html', '2014-05-16', '2014-05-16', 66, 5, '1863', '2013', 'http://img.agoda.net/hotelimages/31/31/31_14020720100018280985_std.jpg', 'http://img.agoda.net/hotelimages/31/31/31_14012416490018148199_std.jpg', 'http://img.agoda.net/hotelimages/31/31/31_14012417060018148475_std.jpg', 'http://img.agoda.net/hotelimages/31/31/31_14012417060018148476_std.jpg', 'http://img.agoda.net/hotelimages/31/31/31_14012417060018148477_std.jpg', 'Stop at Best Western Premier Harmonie Vienna to discover the wonders of Vienna. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. 24-hour front desk, Wi-Fi in public areas, business center, library, pets allowed are just some of the facilities on offer. Non smoking rooms, daily newspaper can be found in each guestroom. Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel''s recreational facilities, including fitness center. Best Western Premier Harmonie Vienna combines warm hospitality with a lovely ambiance to make your stay in Vienna unforgettable.', '159', 'Europe', 2, 9.00, 'USD'),
(7, 36, 'Park Suisse Hotel', 'park_suisse_hotel', 'Via Favale 31', NULL, 16038, 'Santa Margherita Ligure', NULL, 'Italy', 0, 4.00, '9.211559', '44.330683', '/europe/italy/santa_margherita_ligure/park_suisse_hotel.html', '2014-05-16', '2014-05-16', 80, 6, '1956', NULL, 'http://img.agoda.net/hotelimages/36/36/36_13121613040017908692_std.jpg', 'http://img.agoda.net/hotelimages/36/36/36_110622005432285_std.jpg', 'http://img.agoda.net/hotelimages/36/36/36_13121613040017908685_std.jpg', 'http://img.agoda.net/hotelimages/36/36/36_13121613040017908686_std.jpg', 'http://img.agoda.net/hotelimages/36/36/36_13121613040017908687_std.jpg', 'Ideally located in the prime touristic area of Santa Margherita Ligure, Park Suisse Hotel promises a relaxing and wonderful visit. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. All the necessary facilities, including concierge, Wi-Fi in public areas, room service, bar, car park, are at hand. Designed and decorated to make guests feel right at home, each room comes with shower, internet access – LAN, mini bar, desk, television LCD/plasma screen. The hotel''s peaceful atmosphere extends to its recreational facilities which include outdoor pool, fitness center, water sports (non-motorized), garden. Discover all Santa Margherita Ligure has to offer by making Park Suisse Hotel your base.', '92', 'Europe', 16, 6.80, 'USD'),
(8, 38, 'Hotel Caribe Cartagena', 'hotel_caribe_cartagena', 'Carrera 1, 2-87, Bocagrande', NULL, NULL, 'Cartagena', NULL, 'Colombia', 0, 5.00, '-75.560768', '10.397937', '/south_america/colombia/cartagena/hotel_caribe_cartagena.html', '15:00PM', '1:00PM', 363, 7, '1941', '2010', 'http://img.agoda.net/hotelimages/38/38/38_120516001857736_std.jpg', 'http://img.agoda.net/hotelimages/38/38/38_1012011120003325269_std.jpg', 'http://img.agoda.net/hotelimages/38/38/38_0912190005001879680_std.jpg', 'http://img.agoda.net/hotelimages/38/38/38_0912190005001879681_std.jpg', 'http://img.agoda.net/hotelimages/38/38/38_0912190005001879683_std.jpg', 'The 5-star Hotel Caribe Cartagena offers comfort and convenience whether you''re on business or holiday in Cartagena. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Service-minded staff will welcome and guide you at the Hotel Caribe Cartagena. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like internet access – LAN, television, in room safe, daily newspaper, internet access – wireless (complimentary). Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel''s recreational facilities, including hot tub, outdoor pool, sauna, garden, massage. Convenience and comfort makes Hotel Caribe Cartagena the perfect choice for your stay in Cartagena.', '139', 'South America', 22, 8.50, 'USD'),
(9, 54, 'Ramada Plaza Hai Hua Hotel', 'ramada_plaza_hai_hua_hotel', '298 Qing Chun Road', NULL, 310006, 'Hangzhou', NULL, 'China', 0, 4.00, '120.1606', '30.25844', '/asia/china/hangzhou/ramada_plaza_hai_hua_hotel.html', '2014-05-16', '12:00AM', 241, 8, '1997', '2010', 'http://img.agoda.net/hotelimages/54/54/54_13102108130017062545_std.jpg', 'http://img.agoda.net/hotelimages/54/54/54_0912161556001822302_std.jpg', 'http://img.agoda.net/hotelimages/54/54/54_0912151029001821508_std.jpg', 'http://img.agoda.net/hotelimages/54/54/54_13102107560017062482_std.jpg', 'http://img.agoda.net/hotelimages/54/54/54_13102108130017062544_std.jpg', 'Located in West Lake District – Hubin Area, Ramada Plaza Hai Hua Hotel is a perfect starting point from which to explore Hangzhou. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Facilities like currency exchange, shops, luggage storage, coffee shop, meeting facilities are readily available for you to enjoy. The well-appointed guestrooms feature hair dryer, complimentary bottled water, interconnecting room(s) available, non smoking rooms, coffee/tea maker. The hotel''s peaceful atmosphere extends to its recreational facilities which include fitness center, massage, indoor pool, sauna. Discover all Hangzhou has to offer by making Ramada Plaza Hai Hua Hotel your base.', '59', 'Asia', 707, 7.60, 'USD'),
(10, 56, 'Hotel Denisa', 'hotel_denisa', 'Narodni obrany 33', NULL, 16000, 'Prague', NULL, 'Czech Republic', 0, 4.00, '14.39775', '50.101017', '/europe/czech_republic/prague/hotel_denisa.html', '2014-05-16', '2014-05-16', 47, NULL, '1920', '2011', 'http://img.agoda.net/hotelimages/56/56/56_120124155731_std.jpg', 'http://img.agoda.net/hotelimages/56/56/56_1001231634002559769_std.jpg', 'http://img.agoda.net/hotelimages/56/56/56_1112210747005270312_std.jpg', 'http://img.agoda.net/hotelimages/56/56/56_120124155728_std.jpg', 'http://img.agoda.net/hotelimages/56/56/56_120124155730_std.jpg', 'Stop at Hotel Denisa to discover the wonders of Prague. Both business travelers and tourists can enjoy the hotel''s facilities and services. Pets allowed, concierge, bicycle rental, airport transfer, car park are just some of the facilities on offer. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like mini bar, television LCD/plasma screen, shower, desk, internet access – wireless. The hotel offers various recreational opportunities. Discover all Prague has to offer by making Hotel Denisa your base.', '34', 'Europe', 37, 7.70, 'USD'),
(11, 59, 'Kobe Tokyu Inn', 'kobe_tokyu_inn', '6-1-5 Kumoidori, Chuo-ku', NULL, 651, 'Kobe', 'Hyogo', 'Japan', 0, 3.00, '135.196655', '34.694649', '/asia/japan/kobe/kobe_tokyu_inn.html', '2014-05-16', '2014-05-16', 235, 12, '1986', '2007', 'http://img.agoda.net/hotelimages/59/59/59_120213091220487_std.jpg', 'http://img.agoda.net/hotelimages/59/59/59_110701145927228_std.jpg', 'http://img.agoda.net/hotelimages/59/59/59_110701145852181_std.jpg', 'http://img.agoda.net/hotelimages/59/59/59_110701145852650_std.jpg', 'http://img.agoda.net/hotelimages/59/59/59_110701145853166_std.jpg', 'The 3-star Kobe Tokyu Inn offers comfort and convenience whether you''re on business or holiday in Kobe. The hotel offers a wide range of amenities and perks to ensure you have a great time. To be found at the hotel are coffee shop, car park, elevator, smoking area, restaurant. The well-appointed guestrooms feature shower, hair dryer, desk, bathtub, television. The hotel offers various recreational opportunities. Kobe Tokyu Inn is an excellent choice from which to explore Kobe or to simply relax and rejuvenate.', '110', 'Asia', 4, 9.00, 'USD'),
(12, 65, 'King David Jerusalem Hotel', 'king_david_jerusalem_hotel', '23 King David St. ', NULL, 9410147, 'Jerusalem', NULL, 'Israel', 0, 5.00, '35.22263', '31.774372', '/middle_east/israel/jerusalem/king_david_jerusalem_hotel.html', '2014-05-16', '2014-05-16', 233, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/65/65/65_1112200704005248809_std.jpg', 'http://img.agoda.net/hotelimages/65/65/65_13062521180013511467_std.jpg', 'http://img.agoda.net/hotelimages/65/65/65_130502181732_std.jpg', 'http://img.agoda.net/hotelimages/65/65/65_130502181733_std.jpg', 'http://img.agoda.net/hotelimages/65/65/65_130502181737_std.jpg', 'Set in a prime location of Jerusalem, King David Jerusalem Hotel puts everything the city has to offer just outside your doorstep. Both business travelers and tourists can enjoy the hotel''s facilities and services. Take advantage of the hotel''s 24-hour room service, shops, bar, laundry service, meeting facilities. The well-appointed guestrooms feature television LCD/plasma screen, telephone, DVD/CD player, coffee/tea maker, in room safe. Enjoy the hotel''s recreational facilities, including outdoor pool, tennis courts, spa, fitness center, pool (kids), before retiring to your room for a well-deserved rest. King David Jerusalem Hotel combines warm hospitality with a lovely ambiance to make your stay in Jerusalem unforgettable.', '500', 'Middle East', 11, 8.90, 'USD'),
(13, 66, 'Everbright Convention & Exhibition Centre International Hotel', 'everbright_convention_&_exhibition_centre_international_hotel', '66 Caobao Road, Xuhui district', NULL, NULL, 'Shanghai', NULL, 'China', 0, 4.00, '121.429149', '31.167866', '/asia/china/shanghai/everbright_convention_exhibition_centre_international_hotel.html', '2014-05-16', '2014-05-16', 701, 30, '1999', NULL, 'http://img.agoda.net/hotelimages/66/66/66_0911030825001715000_std.jpg', 'http://img.agoda.net/hotelimages/66/66/66_1008161238003224376_std.jpg', 'http://img.agoda.net/hotelimages/66/66/66_0911030825001715006_std.jpg', 'http://img.agoda.net/hotelimages/66/66/66_0911030825001715007_std.jpg', 'http://img.agoda.net/hotelimages/66/66/66_1001221436002458983_std.jpg', 'Everbright Convention & Exhibition Centre Internat is perfectly located for both business and leisure guests in Shanghai. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Facilities like bar/pub, room service, concierge, 24hr room service, restaurant are readily available for you to enjoy. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like in room video games, internet access – LAN (complimentary), bathrobes, air conditioning, internet access – wireless. Enjoy the hotel''s recreational facilities, including fitness center, garden, sauna, indoor pool, steamroom, before retiring to your room for a well-deserved rest. No matter what your reasons are for visiting Shanghai, Everbright Convention & Exhibition Centre Internat will make you feel instantly at home.', '56', 'Asia', 108, 6.20, 'USD'),
(14, 71, 'Apogia Hotel', 'apogia_hotel', '26, Rue Smolett', NULL, 6300, 'Nice', NULL, 'France', 0, 3.00, '7.284279', '43.703529', '/europe/france/nice/apogia_hotel.html', NULL, '2014-05-16', 101, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/71/71/71_120426191500346_std.jpg', 'http://img.agoda.net/hotelimages/71/71/71_13090510330014830802_std.jpg', 'http://img.agoda.net/hotelimages/71/71/71_120426191445401_std.jpg', 'http://img.agoda.net/hotelimages/71/71/71_120426191604541_std.jpg', 'http://img.agoda.net/hotelimages/71/71/71_120426191612996_std.jpg', 'The 3-star Apogia Hotel offers comfort and convenience whether you''re on business or holiday in Nice. The hotel has everything you need for a comfortable stay. Elevator, room service, laundry service, business center, pets allowed are just some of the facilities on offer. Designed for comfort, guestrooms offer bathtub, shower, desk, satellite/cable TV, television to ensure a restful night. The hotel offers various recreational opportunities. A welcoming atmosphere and excellent service are what you can expect during your stay at Apogia Hotel.', '80', 'Europe', 5, 6.20, 'USD'),
(15, 75, 'Paris Las Vegas Hotel', 'paris_las_vegas_hotel', '3655 Las Vegas Boulevard South', NULL, 89109, 'Las Vegas (NV)', NULL, 'United States', 0, 4.00, '-115.170858', '36.112018', '/north_america/united_states/las_vegas_nv/paris_las_vegas_hotel.html', '2014-05-16', NULL, 2916, 34, '1999', NULL, 'http://img.agoda.net/hotelimages/75/75/75_120711043117613_std.jpg', 'http://img.agoda.net/hotelimages/75/75/75_080913000100191517_std.jpg', 'http://img.agoda.net/hotelimages/75/75/75_0907090940001637606_std.jpg', 'http://img.agoda.net/hotelimages/75/75/75_0907090942001637616_std.jpg', 'http://img.agoda.net/hotelimages/75/75/75_110617041847672_std.png', 'Paris Las Vegas Hotel is conveniently located in the popular The Strip area. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. To be found at the hotel are nightclub, concierge, casino, car park, laundry service. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like bathtub, in room safe, television, fan, inhouse movies. The hotel''s peaceful atmosphere extends to its recreational facilities which include outdoor pool, sauna, steamroom, fitness center, spa. No matter what your reasons are for visiting Las Vegas (NV), Paris Las Vegas Hotel will make you feel instantly at home.', '78', 'North America', 248, 8.10, 'USD'),
(16, 78, 'Hotel HC Brussels', 'hotel_hc_brussels', 'Avenue du Haut-Pont, 2 Hoge Bruglaan', NULL, 0, 'Brussels', NULL, 'Belgium', 0, 3.00, '4.35322', '50.820938', '/europe/belgium/brussels/hotel_hc_brussels.html', NULL, NULL, 80, NULL, '1978', '2004', 'http://img.agoda.net/hotelimages/78/78/78_111012172102_std.jpg', 'http://img.agoda.net/hotelimages/78/78/78_111012172103_std.jpg', 'http://img.agoda.net/hotelimages/78/78/78_080913000100100088_std.jpg', 'http://img.agoda.net/hotelimages/78/78/78_0912031643001783419_std.jpg', 'http://img.agoda.net/hotelimages/78/78/78_0912182004001842723_std.jpg', 'Set in a prime location of Brussels, Hotel HC Brussels puts everything the city has to offer just outside your doorstep. The property features a wide range of facilities to make your stay a pleasant experience. To be found at the hotel are elevator, room service, tours, Wi-Fi in public areas, facilities for disabled guests. Hair dryer, mini bar, air conditioning, in room safe, internet access – wireless (complimentary) can be found in each guestroom. The hotel offers various recreational opportunities. No matter what your reasons are for visiting Brussels, Hotel HC Brussels will make you feel instantly at home.', '96', 'Europe', 13, 7.80, 'USD'),
(17, 85, 'Grand Prince Hotel New Takanawa', 'grand_prince_hotel_new_takanawa', '3-13-1 Takanawa, Minato-ku', NULL, 108, 'Tokyo', NULL, 'Japan', 0, 4.00, '139.733517', '35.629819', '/asia/japan/tokyo/grand_prince_hotel_new_takanawa.html', '2014-05-16', '2014-05-16', 938, 15, '1982', NULL, 'http://img.agoda.net/hotelimages/85/85/85_13031517420010843976_std.jpg', 'http://img.agoda.net/hotelimages/85/85/85_110630084149278_std.jpg', 'http://img.agoda.net/hotelimages/85/85/85_110502194043248_std.jpg', 'http://img.agoda.net/hotelimages/85/85/85_110503195126619_std.jpg', 'http://img.agoda.net/hotelimages/85/85/85_120105091926363_std.jpg', 'Stop at Grand Prince Hotel New Takanawa to discover the wonders of Tokyo. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Room service, car park, shops, bar, laundry service are just some of the facilities on offer. Designed and decorated to make guests feel right at home, each room comes with executive lounge access, balcony/terrace, internet access – LAN, desk, bathrobes. The hotel''s peaceful atmosphere extends to its recreational facilities which include outdoor pool, sauna, massage, spa, garden. For reliable service and professional staff, Grand Prince Hotel New Takanawa caters to your needs.', '142', 'Asia', 360, 8.00, 'USD'),
(18, 94, 'Watazen Ryokan Hotel', 'watazen_ryokan_hotel', 'Rokkakku - Sagaru, Yanaginobaba, Nakagyo - Ku', NULL, 604, 'Kyoto', NULL, 'Japan', 0, 3.00, '135.763931', '35.006754', '/asia/japan/kyoto/watazen_ryokan_hotel.html', NULL, NULL, NULL, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/94/94/94_0910161506001711058_std.jpg', 'http://img.agoda.net/hotelimages/94/94/94_120619184146730_std.jpg', 'http://img.agoda.net/hotelimages/94/94/94_0907300957001650033_std.jpg', 'http://img.agoda.net/hotelimages/94/94/94_120619184206448_std.jpg', 'http://img.agoda.net/hotelimages/94/94/94_120619184231221_std.jpg', 'Watazen Ryokan Hotel is perfectly located for both business and leisure guests in Kyoto. The hotel offers a wide range of amenities and perks to ensure you have a great time. Service-minded staff will welcome and guide you at the Watazen Ryokan Hotel. Designed and decorated to make guests feel right at home, each room comes with television LCD/plasma screen, internet access – wireless, bathtub, in room safe, shower. The hotel offers various recreational opportunities. Watazen Ryokan Hotel is an excellent choice from which to explore Kyoto or to simply relax and rejuvenate.', '166', 'Asia', 36, 8.30, 'USD'),
(19, 97, 'Charing Cross - A Guoman Hotel', 'charing_cross_-_a_guoman_hotel', 'The Strand', NULL, 0, 'London', NULL, 'United Kingdom', 0, 4.00, '-0.124777', '51.508358', '/europe/united_kingdom/london/charing_cross_a_guoman_hotel.html', '2014-05-16', '2014-05-16', 239, 6, '1864', '2012', 'http://img.agoda.net/hotelimages/97/97/97_13072615160014036881_std.jpg', 'http://img.agoda.net/hotelimages/97/97/97_120508150122236_std.jpg', 'http://img.agoda.net/hotelimages/97/97/97_1007301723003214496_std.jpg', 'http://img.agoda.net/hotelimages/97/97/97_1101311133003550259_std.jpg', 'http://img.agoda.net/hotelimages/97/97/97_14013019260018220442_std.jpg', 'Stop at Charing Cross - A Guoman Hotel to discover the wonders of London. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Safety deposit boxes, elevator, business center, executive floor, facilities for disabled guests are there for guest''s enjoyment. Relax in your comfortable guestroom, featuring toiletries, satellite/cable TV, bathtub, heating, hair dryer. The hotel''s peaceful atmosphere extends to its recreational facilities which include fitness center. No matter what your reasons are for visiting London, Charing Cross - A Guoman Hotel will make you feel instantly at home.', '185', 'Europe', 84, 8.20, 'USD'),
(20, 99, 'Imperial Hotel', 'imperial_hotel', '32-34 Nathan Road', NULL, 0, 'Hong Kong', NULL, 'Hong Kong', 0, 3.00, '114.172505', '22.296135', '/asia/hong_kong/hong_kong/imperial_hotel.html', '2014-05-16', '2014-05-16', 225, 18, '1971', '2009', 'http://img.agoda.net/hotelimages/99/99/99_13102811280017170702_std.jpg', 'http://img.agoda.net/hotelimages/99/99/99_0907310937001650777_std.jpg', 'http://img.agoda.net/hotelimages/99/99/99_080913000100141958_std.jpg', 'http://img.agoda.net/hotelimages/99/99/99_0907310940001650780_std.jpg', 'http://img.agoda.net/hotelimages/99/99/99_0907310940001650781_std.jpg', 'Set in a prime location of Hong Kong, Imperial Hotel puts everything the city has to offer just outside your doorstep. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Facilities like vending machine, laundry service, currency exchange, shops, Wi-Fi in public areas are readily available for you to enjoy. The well-appointed guestrooms feature ironing facilities, internet access – wireless (complimentary), fan, non smoking rooms, television. The hotel offers various recreational opportunities. Imperial Hotel is an excellent choice from which to explore Hong Kong or to simply relax and rejuvenate.', '79', 'Asia', 5805, 7.00, 'USD'),
(21, 102, 'Royal Hotel Sanremo', 'royal_hotel_sanremo', '80 Corso Imperatrice', NULL, 18038, 'Sanremo', NULL, 'Italy', 0, 5.00, '7.768031', '43.813789', '/europe/italy/sanremo/royal_hotel_sanremo.html', '2014-05-16', '2014-05-16', 126, 5, '1872', '2012', 'http://img.agoda.net/hotelimages/102/102/102_130516141710_std.jpg', 'http://img.agoda.net/hotelimages/102/102/102_130516141720_std.jpg', 'http://img.agoda.net/hotelimages/102/102/102_1111181107004524797_std.jpg', 'http://img.agoda.net/hotelimages/102/102/102_130516141731_std.jpg', 'http://img.agoda.net/hotelimages/102/102/102_130516141711_std.jpg', 'Royal Hotel Sanremo is conveniently located in the popular Sanremo area. Both business travelers and tourists can enjoy the hotel''s facilities and services. Elevator, poolside bar, meeting facilities, safety deposit boxes, bar are there for guest''s enjoyment. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like mini bar, internet access – wireless (complimentary), hair dryer, balcony/terrace, non smoking rooms. The hotel''s peaceful atmosphere extends to its recreational facilities which include tennis courts, spa, hot tub, pool (kids), garden. Royal Hotel Sanremo is an excellent choice from which to explore Sanremo or to simply relax and rejuvenate.', '297', 'Europe', 5, 9.20, 'USD'),
(22, 103, 'The Park Hotel Visakhapatnam', 'the_park_hotel_visakhapatnam', 'Beach Road ', NULL, 530, 'Visakhapatnam', NULL, 'India', 0, 5.00, '83.339882', '17.722853', '/asia/india/visakhapatnam/the_park_hotel_visakhapatnam.html', '10:00AM', '12:00PM', 61, 3, NULL, NULL, 'http://img.agoda.net/hotelimages/103/103/103_14030711540018593857_std.jpg', 'http://img.agoda.net/hotelimages/103/103/103_0905291128001108428_std.jpg', 'http://img.agoda.net/hotelimages/103/103/103_080913000100175615_std.jpg', 'http://img.agoda.net/hotelimages/103/103/103_080913000100175616_std.jpg', 'http://img.agoda.net/hotelimages/103/103/103_080913000100175617_std.jpg', 'The Park Hotel Visakhapatnam is perfectly located for both business and leisure guests in Visakhapatnam. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. Concierge, restaurant, Wi-Fi in public areas, salon, meeting facilities are on the list of things guests can enjoy. Designed and decorated to make guests feel right at home, each room comes with desk, internet access – LAN (charges apply), television, in room safe, coffee/tea maker. The hotel''s peaceful atmosphere extends to its recreational facilities which include spa, garden, jacuzzi, massage, fitness center. Convenience and comfort makes The Park Hotel Visakhapatnam the perfect choice for your stay in Visakhapatnam.', '107', 'Asia', 17, 7.90, 'USD'),
(23, 109, 'Hotel Sunroute Nara', 'hotel_sunroute_nara', '1110 Takabatake-cho', NULL, 630, 'Nara', 'Nara', 'Japan', 0, 3.00, '135.83226', '34.679607', '/asia/japan/nara/hotel_sunroute_nara.html', '2014-05-16', '2014-05-16', 95, 5, '1981', '2005', 'http://img.agoda.net/hotelimages/109/109/109_13041810220011932043_std.jpg', 'http://img.agoda.net/hotelimages/109/109/109_110928140756349_std.jpg', 'http://img.agoda.net/hotelimages/109/109/109_110928140739973_std.jpg', 'http://img.agoda.net/hotelimages/109/109/109_110928140743333_std.jpg', 'http://img.agoda.net/hotelimages/109/109/109_110928140746380_std.jpg', 'Hotel Sunroute Nara is perfectly located for both business and leisure guests in Nara. Both business travelers and tourists can enjoy the hotel''s facilities and services. To be found at the hotel are laundry service/dry cleaning, elevator, Wi-Fi in public areas, restaurant, shops. Each guestroom is elegantly furnished and equipped with handy amenities. The hotel offers various recreational opportunities. Hotel Sunroute Nara is an excellent choice from which to explore Nara or to simply relax and rejuvenate.', '108', 'Asia', 18, 8.00, 'USD'),
(24, 122, 'The Tower Hotel', 'the_tower_hotel', 'St Katharine''s Way', NULL, 0, 'London', NULL, 'United Kingdom', 0, 4.00, '-0.07107', '51.506119', '/europe/united_kingdom/london/the_tower_hotel.html', '02:00PM', '12:00AM', 801, 12, '1973', NULL, 'http://img.agoda.net/hotelimages/122/122/122_13120917310017856739_std.jpg', 'http://img.agoda.net/hotelimages/122/122/122_120324181434424_std.jpg', 'http://img.agoda.net/hotelimages/122/122/122_110419231127222_std.jpg', 'http://img.agoda.net/hotelimages/122/122/122_110419231129347_std.jpg', 'http://img.agoda.net/hotelimages/122/122/122_14021023260018299807_std.jpg', 'Located in Tower Hamlets, The Tower Hotel is a perfect starting point from which to explore London. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Bar, Wi-Fi in public areas, 24-hour room service, shops, laundry service are on the list of things guests can enjoy. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like satellite/cable TV, alarm clock, telephone, daily newspaper, bathrobes. Access to the hotel''s garden, fitness center will further enhance your satisfying stay. For reliable service and professional staff, The Tower Hotel caters to your needs.', '136', 'Europe', 157, 8.10, 'USD'),
(25, 123, 'The Grand New Delhi Hotel', 'the_grand_new_delhi_hotel', 'Vasant Kunj, Phase-ii Nelson Mandela Rd', NULL, 110070, 'New Delhi and NCR', NULL, 'India', 0, 5.00, '77.151979', '28.538967', '/asia/india/new_delhi_and_ncr/the_grand_new_delhi_hotel.html', '2014-05-16', '2014-05-16', 390, 6, '1987', '2008', 'http://img.agoda.net/hotelimages/123/123/123_14021717520018363902_std.jpg', 'http://img.agoda.net/hotelimages/123/123/123_110608113122058_std.jpg', 'http://img.agoda.net/hotelimages/123/123/123_0912100100001808246_std.jpg', 'http://img.agoda.net/hotelimages/123/123/123_0912100100001808247_std.jpg', 'http://img.agoda.net/hotelimages/123/123/123_120607135512122_std.jpg', 'Stop at The Grand New Delhi Hotel to discover the wonders of New Delhi and NCR. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. All the necessary facilities, including meeting facilities, business center, salon, executive floor, valet parking, are at hand. Relax in your comfortable guestroom, featuring hair dryer, whirlpool bathtub, daily newspaper, bathtub, satellite/cable TV. Access to the hotel''s sauna, fitness center, hot tub, pool (kids), tennis courts will further enhance your satisfying stay. Friendly staff, great facilities and close proximity to all that New Delhi and NCR has to offer are three great reasons you should stay at The Grand New Delhi Hotel.', '166', 'Asia', 111, 7.90, 'USD'),
(26, 124, 'Corinthia Hotel St. George''s Bay', 'corinthia_hotel_st._george''s_bay', 'St. George''s Bay', NULL, 0, 'St. Julian''s', NULL, 'Malta', 0, 5.00, '14.490731', '35.928511', '/europe/malta/st_julian_s/corinthia_hotel_st_george_s_bay.html', '2014-05-16', '2014-05-16', 250, 5, NULL, '2009', 'http://img.agoda.net/hotelimages/124/124/124_1009221615003253916_std.jpg', 'http://img.agoda.net/hotelimages/124/124/124_120508142929532_std.jpg', 'http://img.agoda.net/hotelimages/124/124/124_120508142931872_std.jpg', 'http://img.agoda.net/hotelimages/124/124/124_120508142933994_std.jpg', 'http://img.agoda.net/hotelimages/124/124/124_120508142936287_std.jpg', 'Corinthia Hotel St. George''s Bay is a popular choice amongst travelers in St. Julian''s, whether exploring or just passing through. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. To be found at the hotel are salon, bar, elevator, room service, poolside bar. Hair dryer, coffee/tea maker, bathrobes, satellite/cable TV, non smoking rooms can be found in each guestroom. Enjoy the hotel''s recreational facilities, including indoor pool, water sports (motorized), massage, spa, fitness center, before retiring to your room for a well-deserved rest. Corinthia Hotel St. George''s Bay combines warm hospitality with a lovely ambiance to make your stay in St. Julian''s unforgettable.', '378', 'Europe', 26, 8.20, 'USD'),
(27, 126, 'Hotel Stanley', 'hotel_stanley', '1 Odysseos', NULL, 10437, 'Athens', NULL, 'Greece', 0, 4.00, '23.720829', '37.985958', '/europe/greece/athens/hotel_stanley.html', '2014-05-16', NULL, 389, 9, NULL, '2004', 'http://img.agoda.net/hotelimages/126/126/126_130211164130_std.jpg', 'http://img.agoda.net/hotelimages/126/126/126_13032600030011048719_std.jpg', 'http://img.agoda.net/hotelimages/126/126/126_130211164114_std.jpg', 'http://img.agoda.net/hotelimages/126/126/126_130211164115_std.jpg', 'http://img.agoda.net/hotelimages/126/126/126_130211164116_std.jpg', 'Hotel Stanley is perfectly located for both business and leisure guests in Athens. The hotel has everything you need for a comfortable stay. Meeting facilities, safety deposit boxes, poolside bar, facilities for disabled guests, restaurant are there for guest''s enjoyment. Designed and decorated to make guests feel right at home, each room comes with satellite/cable TV, desk, air conditioning, seating area, ironing facilities. Take a break from a long day and make use of outdoor pool. Convenience and comfort makes Hotel Stanley the perfect choice for your stay in Athens.', '74', 'Europe', 6, 6.90, 'USD'),
(28, 131, 'The Oberoi Rajvilas Jaipur Hotel', 'the_oberoi_rajvilas_jaipur_hotel', 'Gona Road', NULL, 303012, 'Jaipur', NULL, 'India', 0, 5.00, '75.883931', '26.875761', '/asia/india/jaipur/the_oberoi_rajvilas_jaipur_hotel.html', '2014-05-16', '2014-05-16', 71, NULL, '1997', '2007', 'http://img.agoda.net/hotelimages/131/131/131_14022812250018505545_std.jpg', 'http://img.agoda.net/hotelimages/131/131/131_110616124711039_std.jpg', 'http://img.agoda.net/hotelimages/131/131/131_110425141626023_std.jpg', 'http://img.agoda.net/hotelimages/131/131/131_110426130809798_std.jpg', 'http://img.agoda.net/hotelimages/131/131/131_110616130326365_std.jpg', 'The 5-star The Oberoi Rajvilas Jaipur Hotel offers comfort and convenience whether you''re on business or holiday in Jaipur. The hotel has everything you need for a comfortable stay. Disabled facilities, car park, tours, bar/pub, business center are there for guest''s enjoyment. Designed and decorated to make guests feel right at home, each room comes with air conditioning, bathtub, hair dryer, bathrobes, refrigerator. To enhance guests'' stay, the hotel offers recreational facilities such as jacuzzi, indoor pool, fitness center, garden, massage. Discover all Jaipur has to offer by making The Oberoi Rajvilas Jaipur Hotel your base.', '361', 'Asia', 12, 9.10, 'USD'),
(29, 135, 'Hilton Hurghada Long Beach Resort', 'hilton_hurghada_long_beach_resort', 'Sahl Hashish Red Sea', NULL, 0, 'Hurghada', NULL, 'Egypt', 0, 4.00, '33.859668', '27.081101', '/africa/egypt/hurghada/hilton_hurghada_long_beach_resort.html', '2014-05-16', NULL, 912, 3, '2001', '2007', 'http://img.agoda.net/hotelimages/135/135/135_0912182009001843527_std.jpg', 'http://img.agoda.net/hotelimages/135/135/135_1012151211003349624_std.jpg', 'http://img.agoda.net/hotelimages/135/135/135_1012151211003349626_std.jpg', 'http://img.agoda.net/hotelimages/135/135/135_120719183216938_std.jpg', 'http://img.agoda.net/hotelimages/135/135/135_120719183555806_std.jpg', 'Hilton Hurghada Long Beach Resort is a popular choice amongst travelers in Hurghada, whether exploring or just passing through. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. Restaurant, concierge, family room, safety deposit boxes, bar/pub are just some of the facilities on offer. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including television, separate shower and tub, ironing facilities, hair dryer, internet access – LAN. To enhance guests'' stay, the hotel offers recreational facilities such as tennis courts, sauna, pool (kids), fitness center, kids club. Hilton Hurghada Long Beach Resort is an excellent choice from which to explore Hurghada or to simply relax and rejuvenate.', '63', 'Africa', 2, 8.70, 'USD'),
(30, 136, 'Genkai Royal Hotel', 'genkai_royal_hotel', '1303 Tano, Munakata-shi', NULL, 811, 'Fukuoka', 'Fukuoka', 'Japan', 0, 4.00, '130.525024', '33.86124', '/asia/japan/fukuoka/genkai_royal_hotel.html', '2014-05-16', '2014-05-16', 291, 13, NULL, NULL, 'http://img.agoda.net/hotelimages/136/136/136_120320095336_std.jpg', 'http://img.agoda.net/hotelimages/136/136/136_13041709520011914316_std.jpg', 'http://img.agoda.net/hotelimages/136/136/136_1210241918007928015_std.jpg', 'http://img.agoda.net/hotelimages/136/136/136_13041710060011914432_std.jpg', 'http://img.agoda.net/hotelimages/136/136/136_13041710060011914433_std.jpg', 'Genkai Royal Hotel is a popular choice amongst travelers in Fukuoka, whether exploring or just passing through. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. Elevator, restaurant, car park, meeting facilities, bicycle rental are just some of the facilities on offer. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like television, hair dryer, air conditioning, refrigerator. Enjoy the hotel''s recreational facilities, including outdoor pool, spa, sauna, massage, before retiring to your room for a well-deserved rest. No matter what your reasons are for visiting Fukuoka, Genkai Royal Hotel will make you feel instantly at home.', '123', 'Asia', 0, 0.00, 'USD'),
(31, 138, 'Gioberti Hotel', 'gioberti_hotel', '20 Gioberti Street', NULL, 185, 'Rome', NULL, 'Italy', 0, 4.00, '12.501347', '41.899482', '/europe/italy/rome/gioberti_hotel.html', NULL, '2014-05-16', 80, 5, NULL, NULL, 'http://img.agoda.net/hotelimages/138/138/138_13010722120010092409_std.jpg', 'http://img.agoda.net/hotelimages/138/138/138_1001231607002553212_std.jpg', 'http://img.agoda.net/hotelimages/138/138/138_0912182009001843539_std.jpg', 'http://img.agoda.net/hotelimages/138/138/138_0912182009001843540_std.jpg', 'http://img.agoda.net/hotelimages/138/138/138_1210172233007753358_std.jpg', 'Gioberti Hotel is a popular choice amongst travelers in Rome, whether exploring or just passing through. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. To be found at the hotel are business center, laundry service, airport transfer, elevator, Wi-Fi in public areas. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like desk, television LCD/plasma screen, satellite/cable TV, inhouse movies, daily newspaper. The hotel offers various recreational opportunities. Discover all Rome has to offer by making Gioberti Hotel your base.', '115', 'Europe', 121, 7.50, 'USD'),
(32, 140, 'Hotel Serrano', 'hotel_serrano', 'Marques de Villamejor, 8', NULL, 28006, 'Madrid', NULL, 'Spain', 0, 4.00, '-3.687281', '40.431208', '/europe/spain/madrid/hotel_serrano.html', '12:00PM', '12:00PM', 34, 5, '1969', '2010', 'http://img.agoda.net/hotelimages/140/140/140_14012723250018171157_std.jpg', 'http://img.agoda.net/hotelimages/140/140/140_1012131156003344070_std.jpg', 'http://img.agoda.net/hotelimages/140/140/140_1012131156003344079_std.jpg', 'http://img.agoda.net/hotelimages/140/140/140_1012131156003344080_std.jpg', 'http://img.agoda.net/hotelimages/140/140/140_1102161152003571656_std.jpg', 'Ideally located in the prime touristic area of Salamanca, Hotel Serrano promises a relaxing and wonderful visit. The hotel has everything you need for a comfortable stay. Salon, coffee shop, room service, shared lounge/TV area, concierge are just some of the facilities on offer. Each guestroom is elegantly furnished and equipped with handy amenities. The hotel offers various recreational opportunities. Friendly staff, great facilities and close proximity to all that Madrid has to offer are three great reasons you should stay at Hotel Serrano.', '80', 'Europe', 26, 8.10, 'USD'),
(33, 141, 'Sarova Whitesands Beach Resort & Spa', 'sarova_whitesands_beach_resort_&_spa', 'Nyali/Malindi Highway', NULL, 801, 'Mombasa', 'Kenya', 'Kenya', 0, 5.00, '39.732356', '-3.995454', '/africa/kenya/mombasa/sarova_whitesands_beach_resort_spa.html', '2014-05-16', '2014-05-16', 338, 3, '1984', '2012', 'http://img.agoda.net/hotelimages/141/141/141_130424160754_std.jpg', 'http://img.agoda.net/hotelimages/141/141/141_13050618460012085630_std.jpg', 'http://img.agoda.net/hotelimages/141/141/141_130424160755_std.jpg', 'http://img.agoda.net/hotelimages/141/141/141_130424160757_std.jpg', 'http://img.agoda.net/hotelimages/141/141/141_130424160758_std.jpg', 'Set in a prime location of Mombasa, Sarova Whitesands Beach Resort & Spa puts everything the city has to offer just outside your doorstep. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. To be found at the hotel are car park, laundry service, salon, meeting facilities, smoking area. Designed and decorated to make guests feel right at home, each room comes with mini bar, seating area, bathrobes, non smoking rooms, television. Take a break from a long day and make use of spa, pool (kids), water sports (non-motorized), outdoor pool, kids club. Friendly staff, great facilities and close proximity to all that Mombasa has to offer are three great reasons you should stay at Sarova Whitesands Beach Resort & Spa.', '205', 'Africa', 9, 7.70, 'USD'),
(34, 143, 'Lasseters Casino Hotel', 'lasseters_casino_hotel', '93 Barrett Drive', NULL, 870, 'Alice Springs', NULL, 'Australia', 0, 4.00, '133.876905', '-23.720651', '/pacific_ocean_and_australia/australia/alice_springs/lasseters_casino_hotel.html', '2014-05-16', '2014-05-16', 205, 2, '1981', '2008', 'http://img.agoda.net/hotelimages/143/143/143_120809130645617_std.jpg', 'http://img.agoda.net/hotelimages/143/143/143_1001061046002313663_std.jpg', 'http://img.agoda.net/hotelimages/143/143/143_1001061040002312997_std.jpg', 'http://img.agoda.net/hotelimages/143/143/143_1001061044002313511_std.jpg', 'http://img.agoda.net/hotelimages/143/143/143_120704095150204_std.jpg', 'Ideally located in the prime touristic area of Desert Springs / Mt Johns, Lasseters Casino Hotel promises a relaxing and wonderful visit. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. All the necessary facilities, including 24-hour front desk, tours, Wi-Fi in public areas, shuttle service, room service, are at hand. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like in room safe, DVD/CD player, television, internet access – wireless (charges apply), internet access – wireless (complimentary). Entertain the hotel''s recreational facilities, including golf course (within 3 km), garden, outdoor pool, fitness center, pool (kids). No matter what your reasons are for visiting Alice Springs, Lasseters Casino Hotel will make you feel instantly at home.', '130', 'Pacific Ocean and Australia', 59, 7.70, 'USD'),
(35, 149, 'Sheraton Grande Taipei Hotel', 'sheraton_grande_taipei_hotel', '12 Zhongxiao Chung Hsiao) East Rd. Section 1 ', NULL, 0, 'Taipei', NULL, 'Taiwan', 0, 5.00, '121.522189', '25.045054', '/asia/taiwan/taipei/sheraton_grande_taipei_hotel.html', '2014-05-16', NULL, 688, 17, '1981', NULL, 'http://img.agoda.net/hotelimages/149/149/149_13090509130014821690_std.jpg', 'http://img.agoda.net/hotelimages/149/149/149_080913000100192300_std.jpg', 'http://img.agoda.net/hotelimages/149/149/149_080913000100115993_std.jpg', 'http://img.agoda.net/hotelimages/149/149/149_080913000100115994_std.jpg', 'http://img.agoda.net/hotelimages/149/149/149_080913000100115996_std.jpg', 'Sheraton Grande Taipei Hotel is conveniently located in the popular Zhongzheng District area. The hotel has everything you need for a comfortable stay. To be found at the hotel are babysitting, bar, tours, 24-hour room service, meeting facilities. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including internet access – wireless, mini bar, satellite/cable TV, coffee/tea maker, inhouse movies. The hotel''s peaceful atmosphere extends to its recreational facilities which include steamroom, fitness center, sauna, squash courts, massage. Sheraton Grande Taipei Hotel is an excellent choice from which to explore Taipei or to simply relax and rejuvenate.', '261', 'Asia', 132, 8.30, 'USD'),
(36, 151, 'Bulgaria Hotel', 'bulgaria_hotel', '21 Alexandrovska Street', NULL, 8000, 'Burgas', NULL, 'Bulgaria', 0, 4.00, '27.473143', '42.492821', '/europe/bulgaria/burgas/bulgaria_hotel.html', NULL, '2014-05-16', 120, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/151/151/151_130703201220_std.jpg', 'http://img.agoda.net/hotelimages/151/151/151_13072516010014008936_std.jpg', 'http://img.agoda.net/hotelimages/151/151/151_1112061542004801385_std.jpg', 'http://img.agoda.net/hotelimages/151/151/151_1112061542004801386_std.jpg', 'http://img.agoda.net/hotelimages/151/151/151_1112061542004801387_std.jpg', 'Set in a prime location of Burgas, Bulgaria Hotel puts everything the city has to offer just outside your doorstep. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Babysitting, business center, Wi-Fi in public areas, bar/pub, restaurant are on the list of things guests can enjoy. Each guestroom is elegantly furnished and equipped with handy amenities. The hotel''s peaceful atmosphere extends to its recreational facilities which include massage, steamroom, jacuzzi, fitness center, spa. A welcoming atmosphere and excellent service are what you can expect during your stay at Bulgaria Hotel.', '91', 'Europe', 2, 7.50, 'USD');
INSERT INTO `hotels` (`id`, `the_id`, `hotel_name`, `slug`, `addressline1`, `addressline2`, `zipcode`, `city`, `state`, `country`, `countryisocode`, `star_rating`, `longitude`, `latitude`, `url`, `checkin`, `checkout`, `numberrooms`, `numberfloors`, `yearopened`, `yearrenovated`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `overview`, `rates_from`, `continent_name`, `number_of_reviews`, `rating_average`, `rates_currency`) VALUES
(37, 153, 'The Langham Auckland Hotel', 'the_langham_auckland_hotel', '83 Symonds Street', NULL, NULL, 'Auckland', NULL, 'New Zealand', 0, 5.00, '174.763706', '-36.857836', '/pacific_ocean_and_australia/new_zealand/auckland/the_langham_auckland_hotel.html', ':00 PM', '2014-05-16', 409, 10, NULL, NULL, 'http://img.agoda.net/hotelimages/153/153/153_1210241027007912751_std.jpg', 'http://img.agoda.net/hotelimages/153/153/153_130131055831566_std.jpg', 'http://img.agoda.net/hotelimages/153/153/153_1006181713003144772_std.jpg', 'http://img.agoda.net/hotelimages/153/153/153_1008031553003216175_std.jpg', 'http://img.agoda.net/hotelimages/153/153/153_1008031554003216177_std.jpg', 'The Langham Auckland Hotel is perfectly located for both business and leisure guests in Auckland. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Meeting facilities, Wi-Fi in public areas, coffee shop, restaurant, room service are on the list of things guests can enjoy. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including complimentary bottled water, in room safe, daily newspaper, ironing facilities, shower. Take a break from a long day and make use of steamroom, spa, indoor pool, outdoor pool, massage. Friendly staff, great facilities and close proximity to all that Auckland has to offer are three great reasons you should stay at The Langham Auckland Hotel.', '165', 'Pacific Ocean and Australia', 117, 8.30, 'USD'),
(38, 156, 'Hotel Cornavin', 'hotel_cornavin', '23 Blvd James-Fazy', NULL, 1201, 'Geneva', NULL, 'Switzerland', 0, 4.00, '6.143422', '46.209663', '/europe/switzerland/geneva/hotel_cornavin.html', '2014-05-16', '2014-05-16', 164, 8, NULL, NULL, 'http://img.agoda.net/hotelimages/156/156/156_120730202447_std.jpg', 'http://img.agoda.net/hotelimages/156/156/156_1201090609005663903_std.jpg', 'http://img.agoda.net/hotelimages/156/156/156_1112071804004843774_std.jpg', 'http://img.agoda.net/hotelimages/156/156/156_1112071804004843775_std.jpg', 'http://img.agoda.net/hotelimages/156/156/156_1112071804004843776_std.jpg', 'Ideally located in the prime touristic area of Geneva City Center, Hotel Cornavin promises a relaxing and wonderful visit. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Wi-Fi in public areas, room service, 24-hour front desk, business center, facilities for disabled guests are just some of the facilities on offer. Designed and decorated to make guests feel right at home, each room comes with satellite/cable TV, non smoking rooms, hair dryer, coffee/tea maker, internet access – wireless. The hotel offers various recreational opportunities. Convenience and comfort makes Hotel Cornavin the perfect choice for your stay in Geneva.', '161', 'Europe', 202, 7.90, 'USD'),
(39, 160, 'Mercure Burton Upon Trent Newton Park', 'mercure_burton_upon_trent_newton_park', 'Newton Solney', NULL, 0, 'Stratford', NULL, 'United Kingdom', 0, 3.00, '-1.58673', '52.823804', '/europe/united_kingdom/stratford/mercure_burton_upon_trent_newton_park.html', '2014-05-16', '12:00PM', 50, NULL, '1797', NULL, 'http://img.agoda.net/hotelimages/160/160/160_080913000100154_std.jpg', 'http://img.agoda.net/hotelimages/160/160/160_1001231648002562972_std.jpg', 'http://img.agoda.net/hotelimages/160/160/160_0912031358001749993_std.jpg', 'http://img.agoda.net/hotelimages/160/160/160_0912031358001749995_std.jpg', 'http://img.agoda.net/hotelimages/160/160/160_0912031358001749996_std.jpg', 'Mercure Burton Upon Trent Newton Park is conveniently located in the popular Stratford area. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. All the necessary facilities, including 24-hour room service, pets allowed, Wi-Fi in public areas, restaurant, family room, are at hand. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like separate shower and tub, in room video games, television, shower, complimentary bottled water. Access to the hotel''s fitness center, garden will further enhance your satisfying stay. Mercure Burton Upon Trent Newton Park is an excellent choice from which to explore Stratford or to simply relax and rejuvenate.', '83', 'Europe', 1, 8.70, 'USD'),
(40, 162, 'Manin Hotel', 'manin_hotel', '7 Manin Street', NULL, 20121, 'Milan', NULL, 'Italy', 0, 4.00, '9.19619', '45.474261', '/europe/italy/milan/manin_hotel.html', '2014-05-16', '2014-05-16', 118, 7, '1948', '2011', 'http://img.agoda.net/hotelimages/162/162/162_14031220130018672312_std.jpg', 'http://img.agoda.net/hotelimages/162/162/162_110321145317140_std.jpg', 'http://img.agoda.net/hotelimages/162/162/162_110321123934335_std.jpg', 'http://img.agoda.net/hotelimages/162/162/162_110321123935945_std.jpg', 'http://img.agoda.net/hotelimages/162/162/162_110321123937898_std.jpg', 'Ideally located in the prime touristic area of Palestro, Manin Hotel promises a relaxing and wonderful visit. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Service-minded staff will welcome and guide you at the Manin Hotel. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like toiletries, mini bar, internet access – wireless (complimentary), television LCD/plasma screen, internet access – LAN (charges apply). To enhance guests'' stay, the hotel offers recreational facilities such as garden, fitness center. For reliable service and professional staff, Manin Hotel caters to your needs.', '162', 'Europe', 46, 7.70, 'USD'),
(41, 163, 'Ramana Saigon Hotel', 'ramana_saigon_hotel', '323 Le Van Sy Street, District 3  ', NULL, 0, 'Ho Chi Minh City', NULL, 'Vietnam', 0, 4.00, '106.67753', '10.787961', '/asia/vietnam/ho_chi_minh_city/ramana_saigon_hotel.html', '2014-05-16', '2014-05-16', 290, 9, '1996', '2011', 'http://img.agoda.net/hotelimages/163/163/163_14021414550018344353_std.jpg', 'http://img.agoda.net/hotelimages/163/163/163_080913000100190819_std.jpg', 'http://img.agoda.net/hotelimages/163/163/163_08091300010097323_std.jpg', 'http://img.agoda.net/hotelimages/163/163/163_08091300010097325_std.jpg', 'http://img.agoda.net/hotelimages/163/163/163_121008170541670_std.jpg', 'The 4-star Ramana Saigon Hotel offers comfort and convenience whether you''re on business or holiday in Ho Chi Minh City. The hotel has everything you need for a comfortable stay. Concierge, safety deposit boxes, babysitting, smoking area, elevator are just some of the facilities on offer. Bathtub, inhouse movies, complimentary bottled water, internet access – wireless (complimentary), hair dryer can be found in each guestroom. Enjoy the hotel''s recreational facilities, including hot tub, outdoor pool, steamroom, spa, sauna, before retiring to your room for a well-deserved rest. Convenience and comfort makes Ramana Saigon Hotel the perfect choice for your stay in Ho Chi Minh City.', '50', 'Asia', 227, 7.40, 'USD'),
(42, 168, 'Melia Purosani Hotel Yogyakarta', 'melia_purosani_hotel_yogyakarta', 'Jl. Suryotomo No. 31', NULL, 55122, 'Yogyakarta', NULL, 'Indonesia', 0, 5.00, '110.368868', '-7.796571', '/asia/indonesia/yogyakarta/melia_purosani_hotel_yogyakarta.html', '2:0PM', '12:00AM', 280, 6, '1995', '2010', 'http://img.agoda.net/hotelimages/168/168/168_13072211210013960787_std.jpg', 'http://img.agoda.net/hotelimages/168/168/168_110317104444974_std.jpg', 'http://img.agoda.net/hotelimages/168/168/168_13053011280012573019_std.jpg', 'http://img.agoda.net/hotelimages/168/168/168_13053011280012573067_std.jpg', 'http://img.agoda.net/hotelimages/168/168/168_13053011280012573069_std.jpg', 'Set in a prime location of Yogyakarta, Melia Purosani Hotel Yogyakarta puts everything the city has to offer just outside your doorstep. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. To be found at the hotel are elevator, facilities for disabled guests, babysitting, meeting facilities, concierge. Internet access – wireless (complimentary), internet access – wireless, in room safe, hair dryer, daily newspaper can be found in each guestroom. Entertain the hotel''s recreational facilities, including kids club, garden, outdoor pool, massage, pool (kids). A welcoming atmosphere and excellent service are what you can expect during your stay at Melia Purosani Hotel Yogyakarta.', '84', 'Asia', 1132, 8.20, 'USD'),
(43, 172, 'Beyond Resort Karon', 'beyond_resort_karon', '51 Karon Road, Tambon Karon Muang District', NULL, 83100, 'Phuket', NULL, 'Thailand', 0, 4.00, '98.294675', '7.829639', '/asia/thailand/phuket/beyond_resort_karon.html', NULL, '2014-05-16', 80, 3, '1989', NULL, 'http://img.agoda.net/hotelimages/172/172/172_14011412550018066522_std.jpg', 'http://img.agoda.net/hotelimages/172/172/172_14030510160018553615_std.jpg', 'http://img.agoda.net/hotelimages/172/172/172_110628175708567_std.jpg', 'http://img.agoda.net/hotelimages/172/172/172_110628175713177_std.jpg', 'http://img.agoda.net/hotelimages/172/172/172_111005171425852_std.jpg', 'Stop at Beyond Resort Karon to discover the wonders of Phuket. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Facilities like bar, laundry service, shops, room service, babysitting are readily available for you to enjoy. Relax in your comfortable guestroom, featuring bathtub, desk, bathrobes, television, in room safe. Enjoy the hotel''s recreational facilities, including pool (kids), spa, massage, outdoor pool, before retiring to your room for a well-deserved rest. No matter what your reasons are for visiting Phuket, Beyond Resort Karon will make you feel instantly at home.', '191', 'Asia', 260, 8.20, 'USD'),
(44, 182, 'Hotel Ramanashree Bangalore', 'hotel_ramanashree_bangalore', 'No. 16 Raja Ram Mohan Roy Road', NULL, 0, 'Bengaluru', NULL, 'India', 0, 3.00, '77.594374', '12.966948', '/asia/india/bengaluru_bangalore/hotel_ramanashree_bangalore.html', '2014-05-16', '12:00PM', 68, 5, '1994', '2011', 'http://img.agoda.net/hotelimages/182/182/182_080913000100167_std.jpg', 'http://img.agoda.net/hotelimages/182/182/182_1012031715003333225_std.jpg', 'http://img.agoda.net/hotelimages/182/182/182_080913000100153351_std.jpg', 'http://img.agoda.net/hotelimages/182/182/182_080913000100153353_std.jpg', 'http://img.agoda.net/hotelimages/182/182/182_090123164200343461_std.jpg', 'Hotel Ramanashree Bangalore is perfectly located for both business and leisure guests in Bengaluru / Bangalore. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. Facilities like shared lounge/TV area, express check-in/check-out, smoking area, bar, 24-hour room service are readily available for you to enjoy. Designed for comfort, guestrooms offer bathtub, balcony/terrace, shower, air conditioning, internet access – LAN to ensure a restful night. The hotel offers various recreational opportunities. A welcoming atmosphere and excellent service are what you can expect during your stay at Hotel Ramanashree Bangalore.', '45', 'Asia', 17, 7.20, 'USD'),
(45, 184, 'Hotel Silken Alfonso X', 'hotel_silken_alfonso_x', 'Carlos Vazquez Street 8', NULL, 13001, 'Ciudad Real', NULL, 'Spain', 0, 4.00, '-3.927567', '38.985039', '/europe/spain/ciudad_real/hotel_silken_alfonso_x.html', ':00 AM', '2014-05-16', 66, 7, '2000', NULL, 'http://img.agoda.net/hotelimages/184/184/184_1208020611007027850_std.jpg', 'http://img.agoda.net/hotelimages/184/184/184_110829174153_std.jpg', 'http://img.agoda.net/hotelimages/184/184/184_110829174200_std.jpg', 'http://img.agoda.net/hotelimages/184/184/184_110829174207_std.jpg', 'http://img.agoda.net/hotelimages/184/184/184_110829174209_std.jpg', 'The 4-star Hotel Silken Alfonso X offers comfort and convenience whether you''re on business or holiday in Ciudad Real. Both business travelers and tourists can enjoy the hotel''s facilities and services. Safety deposit boxes, elevator, salon, room service, facilities for disabled guests are on the list of things guests can enjoy. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including shower, internet access – wireless (complimentary), mini bar, satellite/cable TV, television. The hotel offers various recreational opportunities. Discover all Ciudad Real has to offer by making Hotel Silken Alfonso X your base.', '67', 'Europe', 8, 8.00, 'USD'),
(46, 186, 'Imperial Phukaew Hill Resort', 'imperial_phukaew_hill_resort', '99 Moo 14, Phitsanulok-Lomsak Rd.Campson, Khao Kho', NULL, NULL, 'Khao Kho', NULL, 'Thailand', 0, 4.00, '100.995941', '16.771672', '/asia/thailand/khao_kho/imperial_phukaew_hill_resort.html', '2014-05-16', '2014-05-16', 140, 3, '1994', NULL, 'http://img.agoda.net/hotelimages/186/186/186_110927164542773_std.jpg', 'http://img.agoda.net/hotelimages/186/186/186_080913000100169_std.jpg', 'http://img.agoda.net/hotelimages/186/186/186_08091300010047220_std.jpg', 'http://img.agoda.net/hotelimages/186/186/186_1001221441002459022_std.jpg', 'http://img.agoda.net/hotelimages/186/186/186_1001221441002459025_std.jpg', 'Imperial Phukaew Hill Resort is a popular choice amongst travelers in Khao Kho, whether exploring or just passing through. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Facilities like car park, meeting facilities, laundry service, restaurant, Wi-Fi in public areas are readily available for you to enjoy. Designed for comfort, guestrooms offer separate shower and tub, satellite/cable TV, television, internet access – wireless (complimentary), mini bar to ensure a restful night. The hotel offers various recreational opportunities. A welcoming atmosphere and excellent service are what you can expect during your stay at Imperial Phukaew Hill Resort.', '31', 'Asia', 973, 7.60, 'USD'),
(47, 190, 'Cape Town Ritz Hotel', 'cape_town_ritz_hotel', 'Corner of Main and Camberwell Road', NULL, NULL, 'Cape Town', 'Western Cape', 'South Africa', 0, 3.00, '18.397191', '-33.909164', '/africa/south_africa/cape_town/cape_town_ritz_hotel.html', '2014-05-16', '2014-05-16', 222, 21, '1970', '2009', 'http://img.agoda.net/hotelimages/190/190/190_120109201227403_std.jpg', 'http://img.agoda.net/hotelimages/190/190/190_120109201107713_std.jpg', 'http://img.agoda.net/hotelimages/190/190/190_120109200949805_std.jpg', 'http://img.agoda.net/hotelimages/190/190/190_120109201012571_std.jpg', 'http://img.agoda.net/hotelimages/190/190/190_13082016480014450577_std.jpg', 'Cape Town Ritz Hotel is a popular choice amongst travelers in Cape Town, whether exploring or just passing through. The hotel has everything you need for a comfortable stay. Bar, valet parking, elevator, facilities for disabled guests, 24-hour room service are on the list of things guests can enjoy. Designed for comfort, guestrooms offer bathtub, shower, air conditioning, coffee/tea maker, in room safe to ensure a restful night. Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel''s recreational facilities, including outdoor pool. Friendly staff, great facilities and close proximity to all that Cape Town has to offer are three great reasons you should stay at Cape Town Ritz Hotel.', '89', 'Africa', 199, 7.30, 'USD'),
(48, 191, 'Wyndham Garden Hotel Kassel', 'wyndham_garden_hotel_kassel', 'Heiligenroeder Street 61', NULL, 34123, 'Kassel', 'Hessen', 'Germany', 0, 4.00, '9.54861', '51.307626', '/europe/germany/kassel/wyndham_garden_hotel_kassel.html', '2014-05-16', '2014-05-16', 142, 7, '1972', '2012', 'http://img.agoda.net/hotelimages/191/191/191_1208020259007027239_std.jpg', 'http://img.agoda.net/hotelimages/191/191/191_14012217270018127510_std.jpg', 'http://img.agoda.net/hotelimages/191/191/191_0906011646001112903_std.jpg', 'http://img.agoda.net/hotelimages/191/191/191_0906011646001112905_std.jpg', 'http://img.agoda.net/hotelimages/191/191/191_1201042330005537939_std.jpg', 'Ideally located in the prime touristic area of Kassel, Wyndham Garden Hotel Kassel promises a relaxing and wonderful visit. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Take advantage of the hotel''s restaurant, laundry service, bar, shops, elevator. Each guestroom is elegantly furnished and equipped with handy amenities. The hotel offers various recreational opportunities. For reliable service and professional staff, Wyndham Garden Hotel Kassel caters to your needs.', '77', 'Europe', 5, 7.90, 'USD'),
(49, 197, 'Temptation Resort & Spa', 'temptation_resort_&_spa', 'Km 3.5 Blvd Kukulcan Zona Hotelera', NULL, 77500, 'Cancun', NULL, 'Mexico', 0, 3.00, '-86.792207', '21.148404', '/north_america/mexico/cancun/temptation_resort_spa.html', NULL, '2014-05-16', 384, 4, '1985', '2007', 'http://img.agoda.net/hotelimages/197/197/197_121207161832547_std.jpg', 'http://img.agoda.net/hotelimages/197/197/197_111013105902093_std.jpg', 'http://img.agoda.net/hotelimages/197/197/197_120914235928342_std.png', 'http://img.agoda.net/hotelimages/197/197/197_120914235959085_std.png', 'http://img.agoda.net/hotelimages/197/197/197_120915001239521_std.png', 'Temptation Resort & Spa is conveniently located in the popular Hotel Zone area. The hotel has everything you need for a comfortable stay. Facilities like Wi-Fi in public areas, room service, restaurant, salon, tours are readily available for you to enjoy. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including ironing facilities, non smoking rooms, in room safe, satellite/cable TV, television LCD/plasma screen. Take a break from a long day and make use of massage, water sports (non-motorized), hot tub, fitness center, outdoor pool. A welcoming atmosphere and excellent service are what you can expect during your stay at Temptation Resort & Spa.', '221', 'North America', 26, 8.10, 'USD'),
(50, 197, 'Temptation Resort & Spa', 'temptation_resort_&_spa', 'Km 3.5 Blvd Kukulcan Zona Hotelera', NULL, 77500, 'Cancun', NULL, 'Mexico', 0, 3.00, '-86.792207', '21.148404', '/north_america/mexico/cancun/temptation_resort_spa.html', NULL, '2014-05-16', 384, 4, '1985', '2007', 'http://img.agoda.net/hotelimages/197/197/197_121207161832547_std.jpg', 'http://img.agoda.net/hotelimages/197/197/197_111013105902093_std.jpg', 'http://img.agoda.net/hotelimages/197/197/197_120914235928342_std.png', 'http://img.agoda.net/hotelimages/197/197/197_120914235959085_std.png', 'http://img.agoda.net/hotelimages/197/197/197_120915001239521_std.png', 'Temptation Resort & Spa is conveniently located in the popular Hotel Zone area. The hotel has everything you need for a comfortable stay. Facilities like Wi-Fi in public areas, room service, restaurant, salon, tours are readily available for you to enjoy. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including ironing facilities, non smoking rooms, in room safe, satellite/cable TV, television LCD/plasma screen. Take a break from a long day and make use of massage, water sports (non-motorized), hot tub, fitness center, outdoor pool. A welcoming atmosphere and excellent service are what you can expect during your stay at Temptation Resort & Spa.', '221', 'North America', 26, 8.10, 'USD'),
(51, 199, 'Royal Plaza Hotel', 'royal_plaza_hotel', '193 Prince Edward Road West, Kowloon', NULL, NULL, 'Hong Kong', NULL, 'Hong Kong', 0, 5.00, '114.171761', '22.323877', '/asia/hong_kong/hong_kong/royal_plaza_hotel.html', '2014-05-16', '2014-05-16', 699, 19, '1997', '2013', 'http://img.agoda.net/hotelimages/199/199/199_13112914270017787890_std.jpg', 'http://img.agoda.net/hotelimages/199/199/199_121121084201700_std.jpg', 'http://img.agoda.net/hotelimages/199/199/199_1210180742007757701_std.jpg', 'http://img.agoda.net/hotelimages/199/199/199_121116153013254_std.jpg', 'http://img.agoda.net/hotelimages/199/199/199_14021109480018302028_std.jpg', 'Located in Mongkok, Royal Plaza Hotel is a perfect starting point from which to explore Hong Kong. The hotel offers a wide range of amenities and perks to ensure you have a great time. Service-minded staff will welcome and guide you at the Royal Plaza Hotel. Satellite/cable TV, mini bar, internet access – wireless (complimentary), bathtub, bathrobes can be found in each guestroom. The hotel''s peaceful atmosphere extends to its recreational facilities which include fitness center, sauna, outdoor pool, pool (kids), hot tub. Royal Plaza Hotel is an excellent choice from which to explore Hong Kong or to simply relax and rejuvenate.', '160', 'Asia', 6978, 8.30, 'USD'),
(52, 201, 'Lu Song Yuan Hotel', 'lu_song_yuan_hotel', '22, Banchang Lane, Kuanjie, Dongcheng District', NULL, NULL, 'Beijing', NULL, 'China', 0, 3.00, '116.406775', '39.93475', '/asia/china/beijing/lu_song_yuan_hotel.html', '2014-05-16', '2014-05-16', 58, 2, '1980', '2007', 'http://img.agoda.net/hotelimages/201/201/201_1210181045007764807_std.jpg', 'http://img.agoda.net/hotelimages/201/201/201_080913000100187331_std.jpg', 'http://img.agoda.net/hotelimages/201/201/201_08091300010075640_std.jpg', 'http://img.agoda.net/hotelimages/201/201/201_080913000100108723_std.jpg', 'http://img.agoda.net/hotelimages/201/201/201_080913000100108726_std.jpg', 'Lu Song Yuan Hotel is conveniently located in the popular Back Lakes (Hou Hai) area. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Service-minded staff will welcome and guide you at the Lu Song Yuan Hotel. Designed for comfort, guestrooms offer internet access – wireless, satellite/cable TV, shower, television, mini bar to ensure a restful night. The hotel offers various recreational opportunities. Discover all Beijing has to offer by making Lu Song Yuan Hotel your base.', '56', 'Asia', 179, 7.50, 'USD'),
(53, 204, 'NH Ciudad de Santiago Hotel', 'nh_ciudad_de_santiago_hotel', 'Avenida Condell 40, Providencia', NULL, 11100, 'Santiago', NULL, 'Chile', 0, 5.00, '-70.628335', '-33.435685', '/south_america/chile/santiago/nh_ciudad_de_santiago_hotel.html', NULL, NULL, 122, NULL, '1997', NULL, 'http://img.agoda.net/hotelimages/204/204/204_111215164309511_std.jpg', 'http://img.agoda.net/hotelimages/204/204/204_120111172019279_std.jpg', 'http://img.agoda.net/hotelimages/204/204/204_111215164220150_std.jpg', 'http://img.agoda.net/hotelimages/204/204/204_111215164227775_std.jpg', 'http://img.agoda.net/hotelimages/204/204/204_111215164234479_std.jpg', 'NH Ciudad de Santiago Hotel is a popular choice amongst travelers in Santiago, whether exploring or just passing through. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. To be found at the hotel are 24-hour room service, meeting facilities, babysitting, Wi-Fi in public areas, room service. Each guestroom is elegantly furnished and equipped with handy amenities. Entertain the hotel''s recreational facilities, including hot tub, sauna, indoor pool, fitness center, massage. NH Ciudad de Santiago Hotel combines warm hospitality with a lovely ambiance to make your stay in Santiago unforgettable.', '163', 'South America', 12, 7.60, 'USD'),
(54, 205, 'Sercotel Gran Hotel Luna de Granada', 'sercotel_gran_hotel_luna_de_granada', '2, Manuel Cano square (Arabial corner)', NULL, 18004, 'Granada', NULL, 'Spain', 0, 4.00, '-3.61231', '37.176289', '/europe/spain/granada/sercotel_gran_hotel_luna_de_granada.html', NULL, '2014-05-16', 367, NULL, '1995', '2013', 'http://img.agoda.net/hotelimages/205/205/205_13062715450013547025_std.jpg', 'http://img.agoda.net/hotelimages/205/205/205_1201181826005919766_std.jpg', 'http://img.agoda.net/hotelimages/205/205/205_130311161514_std.jpg', 'http://img.agoda.net/hotelimages/205/205/205_130312115522080_std.jpg', 'http://img.agoda.net/hotelimages/205/205/205_13031915420010897193_std.jpg', 'Sercotel Gran Hotel Luna de Granada is perfectly located for both business and leisure guests in Granada. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Room service, bar, poolside bar, pets allowed, coffee shop are just some of the facilities on offer. Designed and decorated to make guests feel right at home, each room comes with mini bar, seating area, hair dryer, television, internet access – wireless (complimentary). The hotel offers various recreational opportunities. For reliable service and professional staff, Sercotel Gran Hotel Luna de Granada caters to your needs.', '96', 'Europe', 5, 7.80, 'USD'),
(55, 215, 'Sheraton Miyako Hotel Tokyo', 'sheraton_miyako_hotel_tokyo', '1-1-50 Shirokanedai, Minato-ku,', NULL, 108, 'Tokyo', NULL, 'Japan', 0, 4.50, '139.730663', '35.639354', '/asia/japan/tokyo/sheraton_miyako_hotel_tokyo.html', '2014-05-16', '2014-05-16', 495, 12, '1979', '2002', 'http://img.agoda.net/hotelimages/215/215/215_14032812030018891944_std.jpg', 'http://img.agoda.net/hotelimages/215/215/215_121001133600158_std.jpg', 'http://img.agoda.net/hotelimages/215/215/215_111226103341940_std.jpg', 'http://img.agoda.net/hotelimages/215/215/215_111226121106543_std.jpg', 'http://img.agoda.net/hotelimages/215/215/215_121022134143554_std.jpg', 'Sheraton Miyako Hotel Tokyo is a popular choice amongst travelers in Tokyo, whether exploring or just passing through. The property features a wide range of facilities to make your stay a pleasant experience. Facilities like salon, laundry service, airport transfer, concierge, meeting facilities are readily available for you to enjoy. Designed and decorated to make guests feel right at home, each room comes with television LCD/plasma screen, inhouse movies, daily newspaper, bathrobes, in room safe. Enjoy the hotel''s recreational facilities, including massage, sauna, indoor pool, fitness center, garden, before retiring to your room for a well-deserved rest. Convenience and comfort makes Sheraton Miyako Hotel Tokyo the perfect choice for your stay in Tokyo.', '177', 'Asia', 124, 8.10, 'USD'),
(56, 217, 'Hotel East 21 Tokyo (Okura Hotels & Resorts)', 'hotel_east_21_tokyo_(okura_hotels_&_resorts)', '6-3-3 Toyo, Koto-Ku', NULL, 135, 'Tokyo', NULL, 'Japan', 0, 4.00, '139.814587', '35.674747', '/asia/japan/tokyo/hotel_east_21_tokyo_okura_hotels_resorts.html', '2014-05-16', '2014-05-16', 396, 21, '1992', '2012', 'http://img.agoda.net/hotelimages/217/217/217_1210200656007812543_std.jpg', 'http://img.agoda.net/hotelimages/217/217/217_120403164955830_std.png', 'http://img.agoda.net/hotelimages/217/217/217_1210200656007812534_std.jpg', 'http://img.agoda.net/hotelimages/217/217/217_1210200656007812537_std.jpg', 'http://img.agoda.net/hotelimages/217/217/217_1210200656007812538_std.jpg', 'The 4-star Hotel East 21 Tokyo (Okura Hotels & Resorts) offers comfort and convenience whether you''re on business or holiday in Tokyo. The hotel offers a wide range of amenities and perks to ensure you have a great time. To be found at the hotel are laundry service, bar, concierge, coffee shop, meeting facilities. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like interconnecting room(s) available, in room safe, daily newspaper, television LCD/plasma screen, satellite/cable TV. Take a break from a long day and make use of fitness center, indoor pool, sauna, hot tub, outdoor pool. Friendly staff, great facilities and close proximity to all that Tokyo has to offer are three great reasons you should stay at Hotel East 21 Tokyo (Okura Hotels & Resorts).', '98', 'Asia', 66, 7.80, 'USD'),
(57, 219, 'Hilton Waterfalls Hotel', 'hilton_waterfalls_hotel', 'Ras Um El Sied Cliff Anea', NULL, 0, 'Sharm El Sheikh', NULL, 'Egypt', 0, 5.00, '34.315281', '27.856098', '/africa/egypt/sharm_el_sheikh/hilton_waterfalls_hotel.html', NULL, '12:00PM', 401, 2, '2000', '2003', 'http://img.agoda.net/hotelimages/219/219/219_120702163245777_std.jpg', 'http://img.agoda.net/hotelimages/219/219/219_120701200637788_std.jpg', 'http://img.agoda.net/hotelimages/219/219/219_0912182303001870738_std.jpg', 'http://img.agoda.net/hotelimages/219/219/219_0912182303001870741_std.jpg', 'http://img.agoda.net/hotelimages/219/219/219_0912182303001870742_std.jpg', 'Stop at Hilton Waterfalls Hotel to discover the wonders of Sharm El Sheikh. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Shops, laundry service/dry cleaning, 24hr room service, concierge, car park are on the list of things guests can enjoy. Relax in your comfortable guestroom, featuring balcony/terrace, desk, inhouse movies, in room safe, air conditioning. The hotel''s peaceful atmosphere extends to its recreational facilities which include spa, sauna, outdoor pool, pool (kids), steamroom. Hilton Waterfalls Hotel is an excellent choice from which to explore Sharm El Sheikh or to simply relax and rejuvenate.', '67', 'Africa', 28, 8.80, 'USD'),
(58, 223, 'Novotel Peace Beijing Hotel', 'novotel_peace_beijing_hotel', '3 Jin Yu Hu Tong Wang Fu Jing Street ', NULL, 0, 'Beijing', NULL, 'China', 0, 4.00, '116.415569', '39.915995', '/asia/china/beijing/novotel_peace_beijing_hotel.html', '2014-05-16', '2014-05-16', 401, 19, '1988', '2010', 'http://img.agoda.net/hotelimages/223/223/223_14032614540018862265_std.jpg', 'http://img.agoda.net/hotelimages/223/223/223_1001211111002458624_std.jpg', 'http://img.agoda.net/hotelimages/223/223/223_1001211110002458616_std.jpg', 'http://img.agoda.net/hotelimages/223/223/223_1001211110002458618_std.jpg', 'http://img.agoda.net/hotelimages/223/223/223_1001211110002458620_std.jpg', 'Novotel Peace Beijing Hotel is conveniently located in the popular Wangfujing Street & Forbidden City area. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Service-minded staff will welcome and guide you at the Novotel Peace Beijing Hotel. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including non smoking rooms, in room safe, bathrobes, television LCD/plasma screen, mini bar. To enhance guests'' stay, the hotel offers recreational facilities such as massage, indoor pool, steamroom, sauna, fitness center. Novotel Peace Beijing Hotel combines warm hospitality with a lovely ambiance to make your stay in Beijing unforgettable.', '95', 'Asia', 631, 7.90, 'USD'),
(59, 225, 'The Felbridge and Spa Hotel', 'the_felbridge_and_spa_hotel', 'London Road', NULL, 0, 'East Grinstead', NULL, 'United Kingdom', 0, 4.00, '-0.036379', '51.138469', '/europe/united_kingdom/east_grinstead/the_felbridge_and_spa_hotel.html', '2014-05-16', NULL, 90, 2, '1900', NULL, 'http://img.agoda.net/hotelimages/225/225/225_13081812140014390436_std.jpg', 'http://img.agoda.net/hotelimages/225/225/225_1201181639005912512_std.jpg', 'http://img.agoda.net/hotelimages/225/225/225_080913000100191_std.jpg', 'http://img.agoda.net/hotelimages/225/225/225_0912031403001751152_std.jpg', 'http://img.agoda.net/hotelimages/225/225/225_1003101816002917541_std.jpg', 'Ideally located in the prime touristic area of East Grinstead, The Felbridge and Spa Hotel promises a relaxing and wonderful visit. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Service-minded staff will welcome and guide you at the The Felbridge and Spa Hotel. Relax in your comfortable guestroom, featuring air conditioning, bathtub, non smoking rooms, separate shower and tub, mini bar. To enhance guests'' stay, the hotel offers recreational facilities such as sauna, steamroom, jacuzzi, garden, outdoor pool. A welcoming atmosphere and excellent service are what you can expect during your stay at The Felbridge and Spa Hotel.', '118', 'Europe', 4, 7.00, 'USD'),
(60, 240, 'Hotel Eiffel Seine', 'hotel_eiffel_seine', '3 bd Grenelle', NULL, 75015, 'Paris', NULL, 'France', 0, 3.00, '2.28925', '48.85437', '/europe/france/paris/hotel_eiffel_seine.html', '2014-05-16', '2014-05-16', 45, 6, NULL, '2006', 'http://img.agoda.net/hotelimages/240/240/240_111207210830_std.jpg', 'http://img.agoda.net/hotelimages/240/240/240_0912031405001751521_std.jpg', 'http://img.agoda.net/hotelimages/240/240/240_111207210820_std.jpg', 'http://img.agoda.net/hotelimages/240/240/240_111207210821_std.jpg', 'http://img.agoda.net/hotelimages/240/240/240_111207210822_std.jpg', 'Stop at Hotel Eiffel Seine to discover the wonders of Paris. The hotel has everything you need for a comfortable stay. 24-hour front desk, Wi-Fi in public areas, newspapers, concierge, family room are there for guest''s enjoyment. Designed and decorated to make guests feel right at home, each room comes with shower, internet access – LAN (complimentary), mini bar, bathtub, internet access – wireless (complimentary). The hotel offers various recreational opportunities. Convenience and comfort makes Hotel Eiffel Seine the perfect choice for your stay in Paris.', '175', 'Europe', 33, 7.60, 'USD'),
(61, 241, 'Shima Spain Mura Hotel', 'shima_spain_mura_hotel', 'Sakazaki Isobe-cho, Shima', NULL, 517, 'Mie', NULL, 'Japan', 0, 4.00, '136.844759', '34.358104', '/asia/japan/mie/shima_spain_mura_hotel.html', '2014-05-16', '2014-05-16', 249, 4, '1994', NULL, 'http://img.agoda.net/hotelimages/241/241/241_1001271749002799083_std.jpg', 'http://img.agoda.net/hotelimages/241/241/241_1001271750002799087_std.jpg', 'http://img.agoda.net/hotelimages/241/241/241_1001271750002799088_std.jpg', 'http://img.agoda.net/hotelimages/241/241/241_1001271750002799089_std.jpg', 'http://img.agoda.net/hotelimages/241/241/241_1001271750002799090_std.jpg', 'Shima Spain Mura Hotel is perfectly located for both business and leisure guests in Mie. The hotel has everything you need for a comfortable stay. To be found at the hotel are car park, shops, restaurant, elevator, meeting facilities. Television, non smoking rooms, bathtub, hair dryer, air conditioning can be found in each guestroom. The hotel''s peaceful atmosphere extends to its recreational facilities which include outdoor pool, indoor pool, garden, tennis courts. For reliable service and professional staff, Shima Spain Mura Hotel caters to your needs.', '0', 'Asia', 3, 7.70, 'USD'),
(62, 244, 'Mercure Melbourne Treasury Gardens Hotel', 'mercure_melbourne_treasury_gardens_hotel', '13 Spring Street', NULL, 3000, 'Melbourne', NULL, 'Australia', 0, 4.00, '144.974317', '-37.814745', '/pacific_ocean_and_australia/australia/melbourne/mercure_melbourne_treasury_gardens_hotel.html', '2014-05-16', '2014-05-16', 164, 11, '1966', NULL, 'http://img.agoda.net/hotelimages/244/244/244_110930115214092_std.jpg', 'http://img.agoda.net/hotelimages/244/244/244_110930115128670_std.jpg', 'http://img.agoda.net/hotelimages/244/244/244_0906051600001324334_std.jpg', 'http://img.agoda.net/hotelimages/244/244/244_0906250853001632053_std.jpg', 'http://img.agoda.net/hotelimages/244/244/244_0907141027001639351_std.jpg', 'Set in a prime location of Melbourne, Mercure Melbourne Treasury Gardens Hotel puts everything the city has to offer just outside your doorstep. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. To be found at the hotel are 24-hour room service, laundry service, safety deposit boxes, business center, meeting facilities. The well-appointed guestrooms feature air conditioning, coffee/tea maker, complimentary bottled water, ironing facilities, television LCD/plasma screen. Take a break from a long day and make use of garden. Discover all Melbourne has to offer by making Mercure Melbourne Treasury Gardens Hotel your base.', '117', 'Pacific Ocean and Australia', 98, 7.80, 'USD'),
(63, 253, 'Rey Arturo Hotel', 'rey_arturo_hotel', 'Ctra. A62, Km 6,600', NULL, 9195, 'Burgos', NULL, 'Spain', 0, 3.00, '-3.731039', '42.306477', '/europe/spain/burgos/rey_arturo_hotel.html', '2014-05-16', '2014-05-16', 52, NULL, '1996', '2004', 'http://img.agoda.net/hotelimages/253/253/253_120416201318_std.jpg', 'http://img.agoda.net/hotelimages/253/253/253_120416201323_std.jpg', 'http://img.agoda.net/hotelimages/253/253/253_120416201319_std.jpg', 'http://img.agoda.net/hotelimages/253/253/253_120416201320_std.jpg', 'http://img.agoda.net/hotelimages/253/253/253_120416201324_std.jpg', 'Rey Arturo Hotel is a popular choice amongst travelers in Burgos, whether exploring or just passing through. The hotel has everything you need for a comfortable stay. Pets allowed, coffee shop, laundry service, room service, concierge are there for guest''s enjoyment. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including hair dryer, shower, internet access – wireless (complimentary), television, non smoking rooms. Access to the hotel''s garden will further enhance your satisfying stay. A welcoming atmosphere and excellent service are what you can expect during your stay at Rey Arturo Hotel.', '59', 'Europe', 1, 7.70, 'USD'),
(64, 254, 'Victoires Opera Hotel', 'victoires_opera_hotel', '56 rue de Montorgueil', NULL, 75002, 'Paris', NULL, 'France', 0, 4.00, '2.346911', '48.864948', '/europe/france/paris/victoires_opera_hotel.html', NULL, NULL, 24, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/254/254/254_080913000100210_std.jpg', 'http://img.agoda.net/hotelimages/254/254/254_1001231719002570326_std.jpg', 'http://img.agoda.net/hotelimages/254/254/254_080913000100106251_std.jpg', 'http://img.agoda.net/hotelimages/254/254/254_080913000100106252_std.jpg', 'http://img.agoda.net/hotelimages/254/254/254_080913000100106343_std.jpg', 'Victoires Opera Hotel is conveniently located in the popular 02. Louvre - Bourse area. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. Tours, elevator, shops, meeting facilities, laundry service are there for guest''s enjoyment. The well-appointed guestrooms feature hair dryer, mini bar, air conditioning, non smoking rooms, internet access – wireless (complimentary). The hotel offers various recreational opportunities. No matter what your reasons are for visiting Paris, Victoires Opera Hotel will make you feel instantly at home.', '206', 'Europe', 6, 7.60, 'USD'),
(65, 257, 'Dan Panorama Tel Aviv Hotel', 'dan_panorama_tel_aviv_hotel', 'Charles Clore Park, ', NULL, 6800003, 'Tel Aviv', NULL, 'Israel', 0, 5.00, '34.762756', '32.064938', '/middle_east/israel/tel_aviv/dan_panorama_tel_aviv_hotel.html', '2014-05-16', '2014-05-16', 476, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/257/257/257_14012621170018157505_std.jpg', 'http://img.agoda.net/hotelimages/257/257/257_1201202249006055877_std.jpg', 'http://img.agoda.net/hotelimages/257/257/257_120525154044701_std.jpg', 'http://img.agoda.net/hotelimages/257/257/257_120525154048029_std.jpg', 'http://img.agoda.net/hotelimages/257/257/257_130502180800_std.jpg', 'Stop at Dan Panorama Tel Aviv Hotel to discover the wonders of Tel Aviv. The hotel offers a wide range of amenities and perks to ensure you have a great time. Concierge, laundry service, meeting facilities, bar, tours are just some of the facilities on offer. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like in room safe, shower, executive lounge access, desk, DVD/CD player. Enjoy the hotel''s recreational facilities, including kids club, fitness center, hot spring bath, hot tub, outdoor pool, before retiring to your room for a well-deserved rest. For reliable service and professional staff, Dan Panorama Tel Aviv Hotel caters to your needs.', '226', 'Middle East', 30, 8.40, 'USD'),
(66, 262, 'Mercure Hotel Harbourside', 'mercure_hotel_harbourside', '209-217 The Esplanade', NULL, NULL, 'Cairns', NULL, 'Australia', 0, 4.00, '145.765529', '-16.909725', '/pacific_ocean_and_australia/australia/cairns/mercure_hotel_harbourside.html', '2014-05-16', '2014-05-16', 173, 9, '1983', NULL, 'http://img.agoda.net/hotelimages/262/262/262_14032510300018841855_std.jpg', 'http://img.agoda.net/hotelimages/262/262/262_120628102851621_std.jpg', 'http://img.agoda.net/hotelimages/262/262/262_080913000100148339_std.jpg', 'http://img.agoda.net/hotelimages/262/262/262_080913000100153618_std.jpg', 'http://img.agoda.net/hotelimages/262/262/262_090126155600343854_std.jpg', 'Mercure Hotel Harbourside is conveniently located in the popular Cairns City Center area. The property features a wide range of facilities to make your stay a pleasant experience. To be found at the hotel are safety deposit boxes, room service, concierge, shops, restaurant. Designed and decorated to make guests feel right at home, each room comes with shared bathroom, balcony/terrace, shower, non smoking rooms, microwave. Entertain the hotel''s recreational facilities, including outdoor pool, massage, spa, garden, hot tub. Mercure Hotel Harbourside is an excellent choice from which to explore Cairns or to simply relax and rejuvenate.', '94', 'Pacific Ocean and Australia', 89, 8.10, 'USD'),
(67, 265, 'NH Belvedere', 'nh_belvedere', 'Rennweg 12a', NULL, NULL, 'Vienna', NULL, 'Austria', 0, 4.00, '16.3833', '48.19554', '/europe/austria/vienna/nh_belvedere.html', '2014-05-16', '2014-05-16', 125, 5, '1992', '2000', 'http://img.agoda.net/hotelimages/265/265/265_13100315460016849960_std.jpg', 'http://img.agoda.net/hotelimages/265/265/265_121113210813121_std.jpg', 'http://img.agoda.net/hotelimages/265/265/265_111219152154366_std.jpg', 'http://img.agoda.net/hotelimages/265/265/265_111219152158632_std.jpg', 'http://img.agoda.net/hotelimages/265/265/265_111219152200632_std.jpg', 'Ideally located in the prime touristic area of 03. Landstraße, NH Belvedere promises a relaxing and wonderful visit. The property features a wide range of facilities to make your stay a pleasant experience. Car park, business center, meeting facilities, shops, room service are there for guest''s enjoyment. Relax in your comfortable guestroom, featuring hair dryer, daily newspaper, internet access – LAN (complimentary), mini bar, non smoking rooms. Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel''s recreational facilities, including sauna, massage, fitness center, spa. Convenience and comfort makes NH Belvedere the perfect choice for your stay in Vienna.', '87', 'Europe', 46, 8.20, 'USD'),
(68, 266, 'Hotel City Garden', 'hotel_city_garden', 'P.C. Hooftstraat 162', NULL, 1071, 'Amsterdam', 'Noord-Holland', 'Netherlands', 0, 3.00, '4.876471', '52.358776', '/europe/netherlands/amsterdam/hotel_city_garden.html', NULL, NULL, NULL, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/266/266/266_080913000100217_std.jpg', 'http://img.agoda.net/hotelimages/266/266/266_13092621350016450954_std.jpg', 'http://img.agoda.net/hotelimages/266/266/266_1112162340005197953_std.jpg', 'http://img.agoda.net/hotelimages/266/266/266_1112162340005197954_std.jpg', 'http://img.agoda.net/hotelimages/266/266/266_1112162340005197955_std.jpg', 'Ideally located in the prime touristic area of Oud Zuid, Hotel City Garden promises a relaxing and wonderful visit. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Take advantage of the hotel''s restaurant, business center, shuttle service, ATM/cash machine on site, 24-hour front desk. Designed and decorated to make guests feel right at home, each room comes with internet access – wireless, ironing facilities, non smoking rooms, coffee/tea maker. The hotel offers various recreational opportunities. No matter what your reasons are for visiting Amsterdam, Hotel City Garden will make you feel instantly at home.', '124', 'Europe', 13, 7.10, 'USD'),
(69, 268, 'The Oberoi Hotel', 'the_oberoi_hotel', 'Jl. Kayu Aya, Seminyak Beach, Denpasar', NULL, 80361, 'Bali', NULL, 'Indonesia', 0, 5.00, '115.156599', '-8.688971', '/asia/indonesia/bali/the_oberoi_hotel.html', '2014-05-16', '2014-05-16', 74, 1, '1978', NULL, 'http://img.agoda.net/hotelimages/268/268/268_14030516280018564783_std.jpg', 'http://img.agoda.net/hotelimages/268/268/268_1007280845003212227_std.jpg', 'http://img.agoda.net/hotelimages/268/268/268_120627093546920_std.jpg', 'http://img.agoda.net/hotelimages/268/268/268_14021813550018374014_std.jpg', 'http://img.agoda.net/hotelimages/268/268/268_120627093225803_std.jpg', 'Ideally located in the prime touristic area of Seminyak, The Oberoi Hotel promises a relaxing and wonderful visit. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. To be found at the hotel are poolside bar, coffee shop, salon, Wi-Fi in public areas, concierge. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including in room safe, ironing facilities, separate shower and tub, non smoking rooms, bathtub. Enjoy the hotel''s recreational facilities, including spa, massage, garden, outdoor pool, tennis courts, before retiring to your room for a well-deserved rest. A welcoming atmosphere and excellent service are what you can expect during your stay at The Oberoi Hotel.', '343', 'Asia', 215, 9.00, 'USD'),
(70, 279, 'The Victoria Hotel Ibis Styles Melbourne', 'the_victoria_hotel_ibis_styles_melbourne', '215 Little Collins Street', NULL, NULL, 'Melbourne', NULL, 'Australia', 0, 3.00, '144.967', '-37.8143', '/pacific_ocean_and_australia/australia/melbourne/the_victoria_hotel_ibis_styles_melbourne.html', '2014-05-16', '2014-05-16', 374, 8, '1880', NULL, 'http://img.agoda.net/hotelimages/279/279/279_14032115100018806997_std.jpg', 'http://img.agoda.net/hotelimages/279/279/279_1209290910007647767_std.jpg', 'http://img.agoda.net/hotelimages/279/279/279_110331122216461_std.jpg', 'http://img.agoda.net/hotelimages/279/279/279_120424132331830_std.jpg', 'http://img.agoda.net/hotelimages/279/279/279_120424132333096_std.jpg', 'The 3-star The Victoria Hotel Ibis Styles Melbourne offers comfort and convenience whether you''re on business or holiday in Melbourne. Both business travelers and tourists can enjoy the hotel''s facilities and services. Shops, family room, bar, restaurant, tours are there for guest''s enjoyment. Air conditioning, inhouse movies, separate shower and tub, internet access – wireless, internet access – LAN (charges apply) can be found in each guestroom. The hotel offers various recreational opportunities. Friendly staff, great facilities and close proximity to all that Melbourne has to offer are three great reasons you should stay at The Victoria Hotel Ibis Styles Melbourne.', '100', 'Pacific Ocean and Australia', 492, 7.90, 'USD'),
(71, 284, 'Hilton Vienna Plaza Hotel', 'hilton_vienna_plaza_hotel', 'Schottenring 11', NULL, 0, 'Vienna', NULL, 'Austria', 0, 5.00, '16.36469', '48.21504', '/europe/austria/vienna/hilton_vienna_plaza_hotel.html', '2014-05-16', NULL, 222, 10, '1988', '2005', 'http://img.agoda.net/hotelimages/284/284/284_080913000100229_std.jpg', 'http://img.agoda.net/hotelimages/284/284/284_13090504550014805271_std.jpg', 'http://img.agoda.net/hotelimages/284/284/284_08091300010043255_std.jpg', 'http://img.agoda.net/hotelimages/284/284/284_08091300010043256_std.jpg', 'http://img.agoda.net/hotelimages/284/284/284_0907301704001650503_std.jpg', 'Hilton Vienna Plaza Hotel is perfectly located for both business and leisure guests in Vienna. The property features a wide range of facilities to make your stay a pleasant experience. All the necessary facilities, including business center, car park, meeting facilities, 24hr room service, executive floor, are at hand. The well-appointed guestrooms feature desk, refrigerator, non smoking rooms, hair dryer, mini bar. Take a break from a long day and make use of massage, fitness center, jacuzzi. For reliable service and professional staff, Hilton Vienna Plaza Hotel caters to your needs.', '236', 'Europe', 61, 8.20, 'USD'),
(72, 286, 'Imperial Hotel Tokyo', 'imperial_hotel_tokyo', '1-1, Uchisaiwai-Cho 1-Chome Chiyoda-Ku', NULL, 100, 'Tokyo', NULL, 'Japan', 0, 5.00, '139.758325', '35.67228', '/asia/japan/tokyo/imperial_hotel_tokyo.html', '2014-05-16', '2014-05-16', 931, 31, '1890', '2009', 'http://img.agoda.net/hotelimages/286/286/286_110505015309639_std.jpg', 'http://img.agoda.net/hotelimages/286/286/286_110505014617124_std.jpg', 'http://img.agoda.net/hotelimages/286/286/286_0907030954001634575_std.jpg', 'http://img.agoda.net/hotelimages/286/286/286_0907030954001634580_std.jpg', 'http://img.agoda.net/hotelimages/286/286/286_110505010947980_std.jpg', 'Imperial Hotel Tokyo is perfectly located for both business and leisure guests in Tokyo. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Coffee shop, tours, room service, safety deposit boxes, meeting facilities are there for guest''s enjoyment. Each guestroom is elegantly furnished and equipped with handy amenities. Enjoy the hotel''s recreational facilities, including massage, pool (kids), fitness center, indoor pool, sauna, before retiring to your room for a well-deserved rest. Convenience and comfort makes Imperial Hotel Tokyo the perfect choice for your stay in Tokyo.', '419', 'Asia', 137, 9.00, 'USD');
INSERT INTO `hotels` (`id`, `the_id`, `hotel_name`, `slug`, `addressline1`, `addressline2`, `zipcode`, `city`, `state`, `country`, `countryisocode`, `star_rating`, `longitude`, `latitude`, `url`, `checkin`, `checkout`, `numberrooms`, `numberfloors`, `yearopened`, `yearrenovated`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `overview`, `rates_from`, `continent_name`, `number_of_reviews`, `rating_average`, `rates_currency`) VALUES
(73, 293, 'Hotel Don Paco', 'hotel_don_paco', 'Plaza Jerónimo de Córdoba 4-5', NULL, 41003, 'Seville', NULL, 'Spain', 0, 3.00, '-5.986755', '37.392749', '/europe/spain/seville/hotel_don_paco.html', '13:00 PM', NULL, 220, 5, '1972', '2009', 'http://img.agoda.net/hotelimages/293/293/293_120605155622301_std.jpg', 'http://img.agoda.net/hotelimages/293/293/293_13111123500017375321_std.jpg', 'http://img.agoda.net/hotelimages/293/293/293_080913000100235_std.jpg', 'http://img.agoda.net/hotelimages/293/293/293_0912031409001752361_std.jpg', 'http://img.agoda.net/hotelimages/293/293/293_0912031409001752366_std.jpg', 'Hotel Don Paco is perfectly located for both business and leisure guests in Seville. The hotel has everything you need for a comfortable stay. Business center, coffee shop, bar, laundry service, bicycle rental are there for guest''s enjoyment. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including shower, separate shower and tub, in room safe, television LCD/plasma screen, bathtub. Entertain the hotel''s recreational facilities, including outdoor pool. Friendly staff, great facilities and close proximity to all that Seville has to offer are three great reasons you should stay at Hotel Don Paco.', '69', 'Europe', 30, 7.60, 'USD'),
(74, 294, 'Bangkok Centre Hotel', 'bangkok_centre_hotel', '328, Rama IV Road', NULL, 10500, 'Bangkok', NULL, 'Thailand', 0, 4.00, '100.517451', '13.73715', '/asia/thailand/bangkok/bangkok_centre_hotel.html', '2014-05-16', '2014-05-16', 250, 12, '1981', '2012', 'http://img.agoda.net/hotelimages/294/294/294_14022018040018408944_std.jpg', 'http://img.agoda.net/hotelimages/294/294/294_080913000100110132_std.jpg', 'http://img.agoda.net/hotelimages/294/294/294_080913000100110137_std.jpg', 'http://img.agoda.net/hotelimages/294/294/294_080913000100110140_std.jpg', 'http://img.agoda.net/hotelimages/294/294/294_080913000100174972_std.jpg', 'Bangkok Centre Hotel is perfectly located for both business and leisure guests in Bangkok. Both business travelers and tourists can enjoy the hotel''s facilities and services. All the necessary facilities, including bar/pub, concierge, 24hr room service, elevator, disabled facilities, are at hand. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including air conditioning, coffee/tea maker, television, refrigerator, non smoking rooms. The hotel offers various recreational opportunities. Discover all Bangkok has to offer by making Bangkok Centre Hotel your base.', '65', 'Asia', 720, 7.10, 'USD'),
(75, 296, 'Novotel Brisbane Hotel', 'novotel_brisbane_hotel', '200 Creek Street', NULL, 4000, 'Brisbane', NULL, 'Australia', 0, 4.50, '153.028173', '-27.466594', '/pacific_ocean_and_australia/australia/brisbane/novotel_brisbane_hotel.html', '2014-05-16', '2014-05-16', 296, 14, '1995', NULL, 'http://img.agoda.net/hotelimages/296/296/296_14032510580018842472_std.jpg', 'http://img.agoda.net/hotelimages/296/296/296_13052214220012513641_std.jpg', 'http://img.agoda.net/hotelimages/296/296/296_080913000100147302_std.jpg', 'http://img.agoda.net/hotelimages/296/296/296_080913000100153709_std.jpg', 'http://img.agoda.net/hotelimages/296/296/296_111031101212758_std.jpg', 'Novotel Brisbane Hotel is a popular choice amongst travelers in Brisbane, whether exploring or just passing through. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. Take advantage of the hotel''s bar, car park, facilities for disabled guests, valet parking, luggage storage. Designed and decorated to make guests feel right at home, each room comes with in room safe, bathtub, air conditioning, internet access – wireless, inhouse movies. Take a break from a long day and make use of sauna, fitness center, outdoor pool, massage. A welcoming atmosphere and excellent service are what you can expect during your stay at Novotel Brisbane Hotel.', '157', 'Pacific Ocean and Australia', 162, 8.30, 'USD'),
(76, 298, 'The Iroquois New York Hotel', 'the_iroquois_new_york_hotel', '49 West 44th Street', NULL, 10036, 'New York (NY)', 'New York', 'United States', 0, 4.00, '-73.982259', '40.756262', '/north_america/united_states/new_york_ny/the_iroquois_new_york_hotel.html', '2014-05-16', '2014-05-16', 114, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/298/298/298_121213153904183_std.jpg', 'http://img.agoda.net/hotelimages/298/298/298_110719220903_std.png', 'http://img.agoda.net/hotelimages/298/298/298_110719220900_std.png', 'http://img.agoda.net/hotelimages/298/298/298_110719220902_std.png', 'http://img.agoda.net/hotelimages/298/298/298_110719220856_std.png', 'Set in a prime location of New York (NY), The Iroquois New York Hotel puts everything the city has to offer just outside your doorstep. Both business travelers and tourists can enjoy the hotel''s facilities and services. Facilities like room service, shuttle service, business center, safety deposit boxes, Wi-Fi in public areas are readily available for you to enjoy. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including whirlpool bathtub, mini bar, inhouse movies, internet access – wireless (complimentary), bathtub. Enjoy the hotel''s recreational facilities, including sauna, fitness center, before retiring to your room for a well-deserved rest. For reliable service and professional staff, The Iroquois New York Hotel caters to your needs.', '236', 'North America', 50, 8.50, 'USD'),
(77, 303, 'Bayview On The Park Hotel', 'bayview_on_the_park_hotel', '52 Queens Road', NULL, NULL, 'Melbourne', NULL, 'Australia', 0, 4.00, '144.977517', '-37.847178', '/pacific_ocean_and_australia/australia/melbourne/bayview_on_the_park_hotel.html', '2014-05-16', '2014-05-16', 203, 5, '1960', NULL, 'http://img.agoda.net/hotelimages/303/303/303_13051509380012432477_std.jpg', 'http://img.agoda.net/hotelimages/303/303/303_0905221622001105814_std.jpg', 'http://img.agoda.net/hotelimages/303/303/303_110725110258225_std.jpg', 'http://img.agoda.net/hotelimages/303/303/303_110725110438362_std.jpg', 'http://img.agoda.net/hotelimages/303/303/303_110725110916637_std.jpg', 'Ideally located in the prime touristic area of Albert Park, Bayview On The Park Hotel promises a relaxing and wonderful visit. The property features a wide range of facilities to make your stay a pleasant experience. Facilities for disabled guests, concierge, restaurant, tours, meeting facilities are just some of the facilities on offer. Relax in your comfortable guestroom, featuring mini bar, refrigerator, bathrobes, internet access – wireless (charges apply), kitchenette. Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel''s recreational facilities, including fitness center, outdoor pool. No matter what your reasons are for visiting Melbourne, Bayview On The Park Hotel will make you feel instantly at home.', '92', 'Pacific Ocean and Australia', 643, 7.30, 'USD'),
(78, 308, 'Best Western Apollo Museumhotel Amsterdam City Centre', 'best_western_apollo_museumhotel_amsterdam_city_centre', 'Pieter Cornelisz Hooftstraat 2', NULL, 1071, 'Amsterdam', NULL, 'Netherlands', 0, 3.00, '4.884132', '52.361225', '/europe/netherlands/amsterdam/best_western_apollo_museumhotel_amsterdam_city_centre.html', '2014-05-16', '2014-05-16', 182, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/308/308/308_1112181042005213230_std.jpg', 'http://img.agoda.net/hotelimages/308/308/308_1001232150002634343_std.jpg', 'http://img.agoda.net/hotelimages/308/308/308_1112181042005213226_std.jpg', 'http://img.agoda.net/hotelimages/308/308/308_1112181042005213227_std.jpg', 'http://img.agoda.net/hotelimages/308/308/308_1112181042005213228_std.jpg', 'Best Western Apollo Museumhotel Amsterdam City Cen is a popular choice amongst travelers in Amsterdam, whether exploring or just passing through. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Take advantage of the hotel''s 24-hour room service, room service, elevator, bar, airport transfer. Each guestroom is elegantly furnished and equipped with handy amenities. The hotel offers various recreational opportunities. Best Western Apollo Museumhotel Amsterdam City Cen combines warm hospitality with a lovely ambiance to make your stay in Amsterdam unforgettable.', '82', 'Europe', 21, 7.40, 'USD'),
(79, 313, 'The Hans Hotel', 'the_hans_hotel', '15 Barakhamba Road', NULL, NULL, 'New Delhi and NCR', NULL, 'India', 0, 4.00, '77.223203', '28.630108', '/asia/india/new_delhi_and_ncr/the_hans_hotel.html', '2014-05-16', '2014-05-16', 77, 6, '1979', '2010', 'http://img.agoda.net/hotelimages/313/313/313_14021216310018319612_std.jpg', 'http://img.agoda.net/hotelimages/313/313/313_080913000100189121_std.jpg', 'http://img.agoda.net/hotelimages/313/313/313_110404134015616_std.jpg', 'http://img.agoda.net/hotelimages/313/313/313_110404134016054_std.jpg', 'http://img.agoda.net/hotelimages/313/313/313_110603194334652_std.jpg', 'Stop at The Hans Hotel to discover the wonders of New Delhi and NCR. The hotel offers guests a range of services and amenities designed to provide comfort and convenience. Service-minded staff will welcome and guide you at the The Hans Hotel. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like bathtub, air conditioning, internet access – wireless (complimentary), non smoking rooms, coffee/tea maker. The hotel offers various recreational opportunities. Discover all New Delhi and NCR has to offer by making The Hans Hotel your base.', '84', 'Asia', 258, 7.50, 'USD'),
(80, 320, 'InterCityHotel Hamburg Altona', 'intercityhotel_hamburg_altona', 'Paul-Nevermann-Platz 17', NULL, 22765, 'Hamburg', NULL, 'Germany', 0, 3.00, '9.935905', '53.552483', '/europe/germany/hamburg/intercityhotel_hamburg_altona.html', ':00 AM', '2014-05-16', 133, 5, '1995', '2009', 'http://img.agoda.net/hotelimages/320/320/320_120809172250_std.jpg', 'http://img.agoda.net/hotelimages/320/320/320_120809172255_std.jpg', 'http://img.agoda.net/hotelimages/320/320/320_120809172253_std.jpg', 'http://img.agoda.net/hotelimages/320/320/320_120809172254_std.jpg', 'http://img.agoda.net/hotelimages/320/320/320_120815185847316_std.jpg', 'Set in a prime location of Hamburg, InterCityHotel Hamburg Altona puts everything the city has to offer just outside your doorstep. The hotel offers a wide range of amenities and perks to ensure you have a great time. Service-minded staff will welcome and guide you at the InterCityHotel Hamburg Altona. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including air conditioning, hair dryer, television LCD/plasma screen, desk, coffee/tea maker. The hotel offers various recreational opportunities. No matter what your reasons are for visiting Hamburg, InterCityHotel Hamburg Altona will make you feel instantly at home.', '120', 'Europe', 6, 7.40, 'USD'),
(81, 323, 'Hard Rock Hotel', 'hard_rock_hotel', '429 Moo.9, Nongprue, Banglamung, Chonburi', NULL, 0, 'Pattaya', NULL, 'Thailand', 0, 4.00, '100.885439', '12.939283', '/asia/thailand/pattaya/hard_rock_hotel.html', '2014-05-16', '2014-05-16', 323, 10, '1976', NULL, 'http://img.agoda.net/hotelimages/323/323/323_14013010270018214594_std.jpg', 'http://img.agoda.net/hotelimages/323/323/323_110328145428907_std.jpg', 'http://img.agoda.net/hotelimages/323/323/323_110328140208331_std.jpg', 'http://img.agoda.net/hotelimages/323/323/323_110328145419798_std.jpg', 'http://img.agoda.net/hotelimages/323/323/323_111227085434445_std.jpg', 'Hard Rock Hotel is conveniently located in the popular Pattaya Beach Road area. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. All the necessary facilities, including concierge, business center, coffee shop, shops, facilities for disabled guests, are at hand. Relax in your comfortable guestroom, featuring complimentary bottled water, shower, television LCD/plasma screen, internet access – wireless, refrigerator. Take a break from a long day and make use of sauna, steamroom, tennis courts, fitness center, kids club. No matter what your reasons are for visiting Pattaya, Hard Rock Hotel will make you feel instantly at home.', '99', 'Asia', 2740, 8.10, 'USD'),
(82, 324, 'Silks Place Taroko Hotel', 'silks_place_taroko_hotel', '18 Tian Hsyang Road, Shiou Lin Village', NULL, 0, 'Hualien', NULL, 'Taiwan', 0, 5.00, '121.494884', '24.182384', '/asia/taiwan/hualien/silks_place_taroko_hotel.html', '2014-05-16', '11:00AM', 160, 5, '1994', '2009', 'http://img.agoda.net/hotelimages/324/324/324_13062114370013445294_std.jpg', 'http://img.agoda.net/hotelimages/324/324/324_120322153533893_std.jpg', 'http://img.agoda.net/hotelimages/324/324/324_1011091124003293379_std.jpg', 'http://img.agoda.net/hotelimages/324/324/324_1011091125003293381_std.jpg', 'http://img.agoda.net/hotelimages/324/324/324_1011091125003293382_std.jpg', 'Silks Place Taroko Hotel is a popular choice amongst travelers in Hualien, whether exploring or just passing through. The hotel offers a wide range of amenities and perks to ensure you have a great time. Take advantage of the hotel''s shops, concierge, laundry service, meeting facilities, tours. Guestrooms are designed to provide an optimal level of comfort with welcoming decor and convenient amenities like internet access – wireless (complimentary), desk, hair dryer, air conditioning, internet access – wireless. The hotel''s peaceful atmosphere extends to its recreational facilities which include sauna, hot tub, outdoor pool, tennis courts, games room. For reliable service and professional staff, Silks Place Taroko Hotel caters to your needs.', '238', 'Asia', 560, 8.90, 'USD'),
(83, 328, 'Desert Gardens Hotel', 'desert_gardens_hotel', 'Yulara Drive, Yulara ', NULL, 872, 'Ayers Rock (Uluru)', NULL, 'Australia', 0, 4.50, '130.984431', '-25.243697', '/pacific_ocean_and_australia/australia/ayers_rock_uluru/desert_gardens_hotel.html', '03:00PM', '10:00AM', 218, 2, NULL, NULL, 'http://img.agoda.net/hotelimages/328/328/328_1212050723008971784_std.jpg', 'http://img.agoda.net/hotelimages/328/328/328_110602072726464_std.jpg', 'http://img.agoda.net/hotelimages/328/328/328_1212050723008971776_std.jpg', 'http://img.agoda.net/hotelimages/328/328/328_1212050723008971777_std.jpg', 'http://img.agoda.net/hotelimages/328/328/328_1212050723008971778_std.jpg', 'Desert Gardens Hotel is a popular choice amongst travelers in Ayers Rock (Uluru), whether exploring or just passing through. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Wi-Fi in public areas, concierge, tours, laundry service, facilities for disabled guests are there for guest''s enjoyment. Non smoking rooms, internet access – LAN (charges apply), internet access – wireless (charges apply), hair dryer, balcony/terrace can be found in each guestroom. Enjoy the hotel''s recreational facilities, including massage, spa, outdoor pool, tennis courts, garden, before retiring to your room for a well-deserved rest. Convenience and comfort makes Desert Gardens Hotel the perfect choice for your stay in Ayers Rock (Uluru).', '315', 'Pacific Ocean and Australia', 147, 7.40, 'USD'),
(84, 332, 'Watermark Hotel and Spa', 'watermark_hotel_and_spa', '3032 Gold Coast Highway', NULL, NULL, 'Gold Coast', NULL, 'Australia', 0, 4.50, '153.427441', '-28.003704', '/pacific_ocean_and_australia/australia/gold_coast/watermark_hotel_and_spa.html', '2014-05-16', '2014-05-16', 388, 20, '1996', '2009', 'http://img.agoda.net/hotelimages/332/332/332_14030506190018549311_std.jpg', 'http://img.agoda.net/hotelimages/332/332/332_090331114100396474_std.jpg', 'http://img.agoda.net/hotelimages/332/332/332_110408084304245_std.jpg', 'http://img.agoda.net/hotelimages/332/332/332_110408084305308_std.jpg', 'http://img.agoda.net/hotelimages/332/332/332_110408084306167_std.jpg', 'Ideally located in the prime touristic area of Surfers Paradise, Watermark Hotel and Spa promises a relaxing and wonderful visit. Offering a variety of facilities and services, the hotel provides all you need for a good night''s sleep. To be found at the hotel are safety deposit boxes, valet parking, smoking area, salon, restaurant. Each guestroom is elegantly furnished and equipped with handy amenities. Access to the hotel''s massage, games room, spa, outdoor pool, hot tub will further enhance your satisfying stay. Watermark Hotel and Spa is an excellent choice from which to explore Gold Coast or to simply relax and rejuvenate.', '92', 'Pacific Ocean and Australia', 780, 8.20, 'USD'),
(85, 347, 'Conti Hotel', 'conti_hotel', 'Brusseler Street 40-42', NULL, 50674, 'Cologne', 'North Rhine-Westphalia', 'Germany', 0, 3.00, '6.934433', '50.936039', '/europe/germany/cologne/conti_hotel.html', NULL, NULL, NULL, NULL, NULL, NULL, 'http://img.agoda.net/hotelimages/347/347/347_1112181051005213367_std.jpg', 'http://img.agoda.net/hotelimages/347/347/347_1201211628006087094_std.jpg', 'http://img.agoda.net/hotelimages/347/347/347_0912031414001753392_std.jpg', 'http://img.agoda.net/hotelimages/347/347/347_1112181051005213366_std.jpg', 'http://img.agoda.net/hotelimages/347/347/347_1112181051005213368_std.jpg', 'Conti Hotel is a popular choice amongst travelers in Cologne, whether exploring or just passing through. The hotel offers a high standard of service and amenities to suit the individual needs of all travelers. Facilities like 24-hour front desk, newspapers, vending machine, luggage storage, car park are readily available for you to enjoy. Television, seating area, internet access – wireless (complimentary), daily newspaper, non smoking rooms can be found in each guestroom. The hotel offers various recreational opportunities. Friendly staff, great facilities and close proximity to all that Cologne has to offer are three great reasons you should stay at Conti Hotel.', '129', 'Europe', 5, 8.20, 'USD'),
(86, 350, 'The Marmara Pera Hotel', 'the_marmara_pera_hotel', 'Mesrutiyet Avenue, Tepebasi', NULL, 34430, 'Istanbul', NULL, 'Turkey', 0, 4.00, '28.974176', '41.031101', '/europe/turkey/istanbul/the_marmara_pera_hotel.html', '2014-05-16', '2014-05-16', 205, 17, NULL, '2010', 'http://img.agoda.net/hotelimages/350/350/350_120713173018594_std.jpg', 'http://img.agoda.net/hotelimages/350/350/350_120808134112372_std.jpg', 'http://img.agoda.net/hotelimages/350/350/350_120621212729_std.jpg', 'http://img.agoda.net/hotelimages/350/350/350_120623162037214_std.jpg', 'http://img.agoda.net/hotelimages/350/350/350_120623162038556_std.jpg', 'Ideally located in the prime touristic area of Beyoglu, The Marmara Pera Hotel promises a relaxing and wonderful visit. The hotel offers a wide range of amenities and perks to ensure you have a great time. Airport transfer, tours, bar, restaurant, room service are just some of the facilities on offer. Designed for comfort, guestrooms offer interconnecting room(s) available, television LCD/plasma screen, internet access – wireless (complimentary), coffee/tea maker, ironing facilities to ensure a restful night. The hotel''s peaceful atmosphere extends to its recreational facilities which include outdoor pool, fitness center. A welcoming atmosphere and excellent service are what you can expect during your stay at The Marmara Pera Hotel.', '146', 'Europe', 15, 8.30, 'USD'),
(87, 355, 'Novotel Century Hotel Hong Kong', 'novotel_century_hotel_hong_kong', 'No. 238 Jaffe Road', NULL, 0, 'Hong Kong', NULL, 'Hong Kong', 0, 4.00, '114.176424', '22.278677', '/asia/hong_kong/hong_kong/novotel_century_hotel_hong_kong.html', '2014-05-16', '2014-05-16', 511, 23, '1991', '2009', 'http://img.agoda.net/hotelimages/355/355/355_14031810060018739405_std.jpg', 'http://img.agoda.net/hotelimages/355/355/355_120627120535992_std.jpg', 'http://img.agoda.net/hotelimages/355/355/355_120214105852377_std.jpg', 'http://img.agoda.net/hotelimages/355/355/355_120214105859252_std.jpg', 'http://img.agoda.net/hotelimages/355/355/355_130807095820706_std.jpg', 'Novotel Century Hotel Hong Kong is a popular choice amongst travelers in Hong Kong, whether exploring or just passing through. Featuring a complete list of amenities, guests will find their stay at the property a comfortable one. Dry cleaning, valet parking, concierge, luggage storage, tours are there for guest''s enjoyment. The well-appointed guestrooms feature kitchenette, television LCD/plasma screen, coffee/tea maker, interconnecting room(s) available, daily newspaper. Access to the hotel''s pool (kids), fitness center, outdoor pool, steamroom, sauna will further enhance your satisfying stay. Novotel Century Hotel Hong Kong is an excellent choice from which to explore Hong Kong or to simply relax and rejuvenate.', '119', 'Asia', 615, 7.70, 'USD'),
(88, 359, 'Indigo Pearl Hotel', 'indigo_pearl_hotel', 'Nai Yang Beach & National Park, Amphur Thalang', NULL, NULL, 'Phuket', NULL, 'Thailand', 0, 5.00, '98.296899', '8.087231', '/asia/thailand/phuket/indigo_pearl_hotel.html', '2014-05-16', '12:00PM', 177, 3, '2007', '2011', 'http://img.agoda.net/hotelimages/359/359/359_13120609270017833228_std.jpg', 'http://img.agoda.net/hotelimages/359/359/359_080913000100193700_std.jpg', 'http://img.agoda.net/hotelimages/359/359/359_08091300010098605_std.jpg', 'http://img.agoda.net/hotelimages/359/359/359_080913000100126781_std.jpg', 'http://img.agoda.net/hotelimages/359/359/359_110429182332785_std.jpg', 'Stop at Indigo Pearl Hotel to discover the wonders of Phuket. The hotel has everything you need for a comfortable stay. Take advantage of the hotel''s valet parking, babysitting, meeting facilities, facilities for disabled guests, salon. Relax in your comfortable guestroom, featuring seating area, satellite/cable TV, refrigerator, ironing facilities, hair dryer. Take a break from a long day and make use of fitness center, games room, water sports (non-motorized), sauna, hot tub. No matter what your reasons are for visiting Phuket, Indigo Pearl Hotel will make you feel instantly at home.', '174', 'Asia', 960, 8.70, 'USD'),
(89, 360, 'Cape Town Lodge Hotel', 'cape_town_lodge_hotel', '101 Buitengracht Street', NULL, 8001, 'Cape Town', NULL, 'South Africa', 0, 4.00, '18.415951', '-33.922176', '/africa/south_africa/cape_town/cape_town_lodge_hotel.html', '2014-05-16', '2014-05-16', 123, 9, '1997', '2012', 'http://img.agoda.net/hotelimages/360/360/360_1212121007009373229_std.jpg', 'http://img.agoda.net/hotelimages/360/360/360_1011081750003292892_std.jpg', 'http://img.agoda.net/hotelimages/360/360/360_0912031415001753612_std.jpg', 'http://img.agoda.net/hotelimages/360/360/360_1012131431003344608_std.jpg', 'http://img.agoda.net/hotelimages/360/360/360_120120125826429_std.jpg', 'Cape Town Lodge Hotel is conveniently located in the popular City Bowl area. The hotel has everything you need for a comfortable stay. Shuttle service, car park, airport transfer, smoking area, bar are just some of the facilities on offer. Guestrooms are fitted with all the amenities you need for a good night''s sleep, including non smoking rooms, desk, bathrobes, bathtub, satellite/cable TV. The hotel offers various recreational opportunities. Cape Town Lodge Hotel combines warm hospitality with a lovely ambiance to make your stay in Cape Town unforgettable.', '61', 'Africa', 93, 8.10, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` bigint(20) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=165 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `filesize`, `url`) VALUES
(122, '_mediafiles/tiny-house.jpg', 33538, ''),
(123, '_mediafiles/tiny-house2 (1).jpg', 48255, ''),
(124, '_mediafiles/tiny-house2.jpg', 26333, ''),
(125, '_mediafiles/tiny-house18.jpg', 23445, ''),
(126, '_mediafiles/tiny-house2 (1).jpg', 48255, ''),
(127, '_mediafiles/tiny-house3.jpg', 50306, ''),
(128, '_mediafiles/tiny-house6.jpg', 35407, ''),
(129, '_mediafiles/tiny-house7.jpg', 53129, ''),
(134, '_uploads/right_footprint.png', 5826, ''),
(135, '_uploads/icon1.png', 1574, ''),
(136, '_uploads/icon2.png', 2416, ''),
(137, '_uploads/icon3.png', 1170, ''),
(138, '_uploads/icon4.png', 865, ''),
(140, '_uploads/63922_bloodbag.jpg', 55441, ''),
(141, '_uploads/Chrysanthemum.jpg', 879394, ''),
(142, '_uploads/Desert.jpg', 845941, ''),
(143, '_uploads/Hydrangeas.jpg', 595284, ''),
(144, '_uploads/Jellyfish.jpg', 775702, ''),
(145, '_uploads/Koala.jpg', 780831, ''),
(146, '_uploads/Lighthouse.jpg', 561276, ''),
(147, '_uploads/Penguins.jpg', 777835, ''),
(148, '_uploads/Tulips.jpg', 620888, ''),
(149, '_uploads/anniversary.jpg', 671707, ''),
(150, '_uploads/awards.jpg', 769047, ''),
(151, '_uploads/buwan_1.jpg', 807290, ''),
(152, '_uploads/buwan_ng_wika_1.jpg', 756839, ''),
(153, '_uploads/buwan_ng_wika_2.jpg', 892710, ''),
(154, '_uploads/buwan_ng_wika_3.jpg', 905048, ''),
(155, '_uploads/buwan_ng_wika_4.jpg', 811174, ''),
(156, '_uploads/buwan_ng_wika_5.jpg', 653886, ''),
(157, '_uploads/buwan_ng_wika_6.jpg', 846298, ''),
(158, '_uploads/cheer.jpg', 795725, ''),
(159, '_uploads/cheer2.jpg', 699684, ''),
(160, '_uploads/cheer3.jpg', 675210, ''),
(161, '_uploads/cheer4.jpg', 688988, ''),
(162, '_uploads/dancing.jpg', 806775, ''),
(163, '_uploads/jaguar.jpg', 765288, ''),
(164, '_uploads/jaguar_winning.jpg', 944126, '');

-- --------------------------------------------------------

--
-- Table structure for table `image_slider`
--

CREATE TABLE IF NOT EXISTS `image_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(10) unsigned NOT NULL,
  `slider_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `image_slider_image_id_index` (`image_id`),
  KEY `image_slider_slider_id_index` (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `image_slider`
--

INSERT INTO `image_slider` (`id`, `image_id`, `slider_id`, `created_at`, `updated_at`) VALUES
(84, 125, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 126, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 127, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 128, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 129, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 140, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 141, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 142, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 143, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 144, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 145, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 146, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 147, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 148, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inqueries`
--

CREATE TABLE IF NOT EXISTS `inqueries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `establishment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `massmessages`
--

CREATE TABLE IF NOT EXISTS `massmessages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `establishment_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`) VALUES
(15, 'top menu', 'top_menu'),
(17, 'sidebar menu', 'sidebar_menu');

-- --------------------------------------------------------

--
-- Table structure for table `menu_page`
--

CREATE TABLE IF NOT EXISTS `menu_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `menu_order` int(11) NOT NULL,
  `slug_keyword` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_page_menu_id_index` (`menu_id`),
  KEY `menu_page_page_id_index` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=166 ;

--
-- Dumping data for table `menu_page`
--

INSERT INTO `menu_page` (`id`, `menu_id`, `page_id`, `menu_order`, `slug_keyword`) VALUES
(154, 17, 1, 4, 'sidebar_menu'),
(156, 15, 1, 1, 'top_menu'),
(157, 15, 4, 4, 'top_menu'),
(159, 15, 3, 3, 'top_menu'),
(160, 17, 2, 1, 'sidebar_menu'),
(161, 17, 3, 2, 'sidebar_menu'),
(162, 15, 2, 2, 'top_menu'),
(165, 17, 4, 3, 'sidebar_menu');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `email`, `message`, `firstname`, `lastname`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Simple Shoe', 'kevindonald@fries.com', 'can you create another subtle pattern?', 'kevin', 'mcdonalds', 0, '2014-04-29 07:57:47', '2014-11-16 03:35:30'),
(5, 'Seo consultant', 'joshuadoughart@gmail.com', 'if you want to create a more stunning page rank just give me a call. Ok?', 'Joshua', 'Doughart', 0, '2014-05-15 00:43:37', '2014-11-16 13:42:10'),
(7, 'hello', 'barriosjerson@gmail.com', 'just a test', 'Dan', 'Marshall', 0, '2014-07-31 14:20:06', '2014-11-16 13:42:22'),
(10, 'Blood Testing', 'codekidie@gmail.com', 'This is a test message', 'Kevin', 'Skoglund', 0, '2014-11-16 12:38:10', '2014-11-16 04:43:37'),
(12, 'Pig', 'codekidie@gmail.com', 'Sharks With Freaken Lazers', 'Kevin', 'Skoglund', 1, '2014-11-16 13:22:37', '2014-11-16 13:22:37'),
(13, 'Test', 'codekidie@gmail.com', 'Another  Test', 'Kevin', 'Skoglund', 1, '2014-11-16 13:23:01', '2014-11-16 13:23:01'),
(14, 'Developement Style', 'codekidie@gmail.com', 'This is a test message', 'Kevin', 'Skoglund', 1, '2014-11-16 13:33:15', '2014-11-16 13:33:15'),
(15, 'Blood Donation', 'codekidie@gmail.com', 'This is a test message', 'Kevin', 'Skoglund', 1, '2014-11-18 03:09:48', '2014-11-18 03:09:48'),
(16, 'Hello World', 'codekidie@gmail.com', 'This is a test message', 'Kevin', 'Skoglund', 1, '2014-11-21 03:56:05', '2014-11-21 03:56:05'),
(17, 'Hello World', 'codekidie@gmail.com', 'This is a test message', 'Kevin', 'Skoglund', 1, '2014-11-21 03:57:05', '2014-11-21 03:57:05'),
(18, 'test', 'codekidie@gmail.com', 'test', 'Kevin', 'Skoglund', 1, '2014-11-21 05:48:18', '2014-11-21 05:48:18'),
(19, 'test', 'codekidie@gmail.com', 'test', 'Kevin', 'Skoglund', 1, '2014-11-21 05:53:13', '2014-11-21 05:53:13'),
(20, 'Test', 'codekidie@gmail.com', 'This is a test message', 'Kevin', 'Skoglund', 1, '2014-11-22 03:09:22', '2014-11-22 03:09:22'),
(21, 'code', 'codekidie@gmail.com', 'dafadsf', 'Kevin', 'Skoglund', 1, '2014-11-22 03:10:26', '2014-11-22 03:10:26'),
(22, 'ewan', 'destinyjanebraos@gmail.com', 'helo', 'Kevin', 'Skoglund', 1, '2014-11-22 04:50:19', '2014-11-22 04:50:19');

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
('app', 'default', '001_create_users');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_04_23_071856_create_hotels_table', 1),
('2014_04_23_071934_create_messages_table', 2),
('2014_04_23_072007_create_pages_table', 2),
('2014_04_23_072030_create_posts_table', 2),
('2014_04_23_072057_create_users_table', 3),
('2014_04_23_072228_create_categories_table', 4),
('2014_04_23_072258_create_category_post_table', 5),
('2014_04_23_082512_create_menus_table', 6),
('2014_04_23_083043_create_menus_table', 7),
('2014_04_23_083115_create_menus_page_table', 8),
('2014_04_23_083435_create_menus_page_table', 9),
('2014_04_30_104539_create_slider_table', 10),
('2014_04_30_105129_create_images_table', 11),
('2014_04_30_105244_create_image_slider_table', 12),
('2014_05_11_230415_create_traffic_table', 13),
('2014_05_24_133351_create_password_reminders_table', 14),
('2014_08_18_051638_add_subscribetext_to_settings_table', 15),
('2014_08_18_064800_add_facebook_to_settings_table', 16),
('2014_08_20_015121_add_upload_directory_to_settings_table', 17),
('2014_08_20_034729_create_widgets_table', 18),
('2014_08_20_042159_add_title_to_widgets_table', 19),
('2014_08_20_042718_add_slug_to_widgets_table', 20),
('2014_08_28_153605_add_age_to_user_table', 21),
('2014_08_28_154800_add_age_to_users_table', 22),
('2014_08_28_173047_add_age_to_users_table', 23),
('2014_09_01_040212_create_establishments_table', 24),
('2014_09_05_060955_create_bloodstack_table', 25),
('2014_09_05_061954_create_badges_table', 26),
('2014_09_05_062927_create_news_table', 27),
('2014_09_05_133521_create_syncedClient_table', 28),
('2014_09_05_134504_create_events_table', 29),
('2014_09_05_230821_create_inqueries_table', 30),
('2014_09_09_020118_add_gender_to_users', 31),
('2014_09_09_020219_add_bloodtype_to_users', 31),
('2014_09_09_020322_add_contactnumber_to_users', 31),
('2014_09_09_020423_add_profilepic_to_users', 32),
('2014_09_11_005803_create_guidelines', 33),
('2014_09_11_124853_add_establishment_id_to_events', 34),
('2014_09_14_031243_add_identifier_to_establishments', 35),
('2014_09_15_040248_add_establishment_id_to_news', 36),
('2014_09_15_082724_create_massmessages', 37),
('2014_09_15_085738_add_media_type_to_news', 38),
('2014_09_22_060043_add_establishment_id_to_badges', 39),
('2014_09_24_181621_add_establishment_id_to_users', 40),
('2014_09_27_171110_add_location_to_users', 41),
('2014_09_28_045153_create_events_users', 42),
('2014_09_28_045544_add_status_to_events_users', 43),
('2014_09_28_045647_add_event_id_to_events_users', 43),
('2014_09_28_060724_remove_establishment_id_from_events_users', 44),
('2014_09_28_061043_remove_establishment_id_from_events_users', 45),
('2014_10_22_154638_create_badge_users', 46);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `establishment_id` text COLLATE utf8_unicode_ci NOT NULL,
  `media_type` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created_at`, `updated_at`, `establishment_id`, `media_type`) VALUES
(5, 'blood pictures', '<p>lorem ipsum dolor sit &nbsp;amit</p>\n<p><img alt="" /></p>', '2014-09-18 20:06:28', '2014-09-18 20:06:28', '54150856e4e6f', 'picture'),
(6, 'Blood Lecture ', '<p><iframe src="//www.youtube.com/embed/HLFzP1D7PKk" width="100%" height="250" frameborder="0" allowfullscreen=""></iframe></p>', '2014-10-22 22:11:27', '2014-11-20 21:46:07', '54150856e4e6f', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `widget_text` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `details`, `slug`, `title_tag`, `meta_description`, `meta_keywords`, `template`, `widget_text`, `status`, `created_at`, `updated_at`, `form_active`) VALUES
(1, 'Blood Donation Proccess', '<p style="text-align: left;"><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 'blood_donation', 'Hotel Offers', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable', 'hotel offers,hotel,hotel craze offer', 'default', '<h4>Widget Title will be here</h4>', 1, '2014-08-28 15:09:19', '0000-00-00 00:00:00', 0),
(2, 'About Us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut adipiscing urna. Donec iaculis nunc eget enim varius volutpat. Donec laoreet, est quis aliquam dictum, nisi libero ultrices metus, ac commodo diam nibh ac nibh. Vivamus a molestie eros, viverra fringilla turpis. Integer sed tincidunt enim. Nullam sodales vestibulum ante, ut feugiat leo tempus vitae. Proin sed blandit turpis. Suspendisse eu placerat urna. Suspendisse potenti. Aliquam erat volutpat. Sed non risus massa. Cras at augue quis odio dapibus tempor. Vestibulum tempus cursus diam eget aliquet.</p>\r\n<p>Integer molestie aliquam urna sit amet rhoncus. Pellentesque ultrices, tellus semper gravida vulputate, ante quam dignissim urna, vel pretium risus nunc sed leo. In dictum leo ac lorem sodales mattis. Duis vel rhoncus elit. Aliquam eu pulvinar mi. Integer arcu sapien, tristique eget massa in, varius sollicitudin lacus. Morbi commodo feugiat magna, quis convallis mi iaculis sit amet. Donec pharetra urna venenatis sapien laoreet, non sagittis augue condimentum. Aenean dignissim dignissim elit, sit amet pharetra tellus luctus eget. Mauris posuere risus non mi feugiat, quis porta quam auctor. Maecenas venenatis at enim vitae tincidunt. Nunc eu nisi velit. Suspendisse in tempus tellus. Donec molestie enim id accumsan bibendum. Pellentesque tempus dolor in justo pharetra faucibus. Integer sed libero tincidunt, aliquam orci sit amet, feugiat quam.</p>', 'about_us', 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut adipiscing urna. Donec iaculis nunc eget enim varius volutpat. Donec laoreet, est quis aliquam dictum, nisi libero ultrices metus, ac commodo diam nibh ac nibh. Vivamus a molestie eros, viverra fringilla turpis. Integer sed tincidunt enim. Nullam sodales vestibulum ante, ut feugiat leo tempus vitae. Proin sed blandit turpis. Suspendisse eu placerat urna. Suspendisse potenti. Aliquam erat volutpat. Sed non risus massa. Cras at augue quis odio dapibus tempor. Vestibulum tempus cursus diam eget aliquet.', 'about us,about,company,profile', 'default', '', 1, '2014-04-29 02:36:58', '0000-00-00 00:00:00', 1),
(3, 'Contact Us', '<p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut adipiscing urna. Donec iaculis nunc eget enim varius volutpat. Donec laoreet, est quis aliquam dictum, nisi libero ultrices metus, ac commodo diam nibh ac nibh. Vivamus a molestie eros, viverra fringilla turpis. Integer sed tincidunt enim. Nullam sodales vestibulum ante, ut feugiat leo tempus vitae. Proin sed blandit turpis. Suspendisse eu placerat urna. Suspendisse potenti. Aliquam erat volutpat. Sed non risus massa. Cras at augue quis odio dapibus tempor. Vestibulum tempus cursus diam eget aliquet.</span></p>', 'contact_us', 'Contact Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ut adipiscing urna. Donec iaculis nunc eget enim varius volutpat. Donec laoreet, est quis aliquam dictum, nisi libero ultrices metus, ac commodo diam nibh ac nibh. Vivamus a molestie eros, viverra fringilla turpis. Integer sed tincidunt enim. Nullam sodales vestibulum ante, ut feugiat leo tempus vitae. Proin sed blandit turpis. Suspendisse eu placerat urna. Suspendisse potenti. Aliquam erat volutpat. Sed non risus massa. Cras at augue quis odio dapibus tempor. Vestibulum tempus cursus diam eget aliquet.', 'contact us,contact hotelcraze', 'default', '', 1, '2014-09-09 18:49:46', '0000-00-00 00:00:00', 1),
(4, 'Benefits On Donating Blood', '<p><span style="font-family: Arial, Helvetica, sans; line-height: 14px; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra quis leo in ultricies. Nam lobortis adipiscing dolor vitae vulputate. Sed tristique ligula id libero fermentum ullamcorper. Curabitur malesuada dolor eu mollis vehicula. Donec convallis libero ut imperdiet venenatis. Cras sollicitudin interdum dignissim.</span></p>', 'benefits_on_donating_blood', 'Benefits On Donating Blood', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra quis leo in ultricies. Nam lobortis adipiscing dolor vitae vulputate. Sed tristique ligula id libero fermentum ullamcorper. Curabitur malesuada dolor eu mollis vehicula. Donec convallis libero ut imperdiet venenatis. Cras sollicitudin interdum dignissim.', 'blood benefits', 'default', '<h4>Widget Title Here</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra quis leo in ultricies. Nam lobortis adipiscing dolor vitae vulputate. Sed tristique ligula id libero </p>', 1, '2014-09-09 18:48:52', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('barriosjerson@gmail.com', 'b03cc1aaa241f56bc4848a0b07102f5b9fb479aa', '2014-05-24 05:58:00'),
('barriosjerson@gmail.com', 'e177cf992a5602ec98fa7ee29cd683211d623051', '2014-05-24 06:02:28'),
('barriosjerson@gmail.com', '315a2777c734239c1899a9b67d8a532a9dd65057', '2014-05-24 06:06:00'),
('barriosjerson@gmail.com', '618b329f661af6bcd68364df67b7df603fb105f3', '2014-05-24 06:06:12'),
('barriosjerson@gmail.com', 'a635f9c78083555e58549116b6886b41f6b71d35', '2014-05-24 06:13:45'),
('barriosjerson@gmail.com', 'af7a41d786f0188c99df317b7a03074013b36ab7', '2014-05-24 06:14:23'),
('barriosjerson@gmail.com', '936174eb2c9eb54b1914ad223c058d0de82a6f50', '2014-05-24 06:18:09'),
('barriosjerson@gmail.com', '5fb9a549df8ab76162d77ba4673296836ecee69a', '2014-05-24 06:18:14'),
('barriosjerson@gmail.com', '9009d6a51b2ccb61f71ef16c3ab88ee62d37367f', '2014-05-24 06:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` text COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `featured_image`, `template`, `status`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `image_id`) VALUES
(4, 'How To Donate Blood ', '<p>the quick brown fox jumps over the red cockroach</p>', 'How To Donate Blood ', '', 'default', 0, 'How To Donate Blood ', 'How To Donate Blood ', 'How To Donate Blood ', '2014-11-16 04:30:24', '2014-11-16 04:30:24', 122);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `subscribe_text` text COLLATE utf8_unicode_ci NOT NULL,
  `facebook_url` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter_url` text COLLATE utf8_unicode_ci NOT NULL,
  `linkedin_url` text COLLATE utf8_unicode_ci NOT NULL,
  `gplus_url` text COLLATE utf8_unicode_ci NOT NULL,
  `pinterest_url` text COLLATE utf8_unicode_ci NOT NULL,
  `upload_directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `url`, `subscribe_text`, `facebook_url`, `twitter_url`, `linkedin_url`, `gplus_url`, `pinterest_url`, `upload_directory`) VALUES
(1, 'Bloodhuntphil', 'http://localhost/bloodhuntphil/_assets/frontend/img/logo.png', 'http://localhost/bloodhuntphil/', 'We Sent You Only Relevant Informations Regarding Blood  Transactions Nothing Less Nothing More.', 'http://facebook.com/bloodhuntphil', 'http://twitter.com/bloodhuntphil', 'http://linkedin.com/bloodhuntphil', 'http://google.com/bloodhuntphil', 'http://pinterest.com/bloodhuntphil', '_uploads');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `slug`, `description`, `status`) VALUES
(20, 'front page slider', 'front_page_slider', '', 0),
(21, 'single post slider', 'single_page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `syncedclient`
--

CREATE TABLE IF NOT EXISTS `syncedclient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `establishment_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE IF NOT EXISTS `traffic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=305 ;

--
-- Dumping data for table `traffic`
--

INSERT INTO `traffic` (`id`, `ip_address`, `user_agent`, `hotel_id`, `date`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, '2014-05-20'),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, '2014-05-20'),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 25, '2014-05-20'),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 60, '2014-05-20'),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 64, '2014-05-20'),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 14, '2014-05-20'),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 60, '2014-05-20'),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 14, '2014-05-20'),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 16, '2014-05-20'),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 72, '2014-05-20'),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 33, '2014-05-20'),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 10, '2014-05-20'),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 27, '2014-05-20'),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 44, '2014-05-20'),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 44, '2014-05-20'),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 9, '2014-05-20'),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 52, '2014-05-20'),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 13, '2014-05-20'),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 86, '2014-05-20'),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 16, '2014-05-20'),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 21, '2014-05-20'),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 53, '2014-05-20'),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 86, '2014-05-20'),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 22, '2014-05-20'),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 45, '2014-05-21'),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 85, '2014-05-21'),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 6, '2014-05-21'),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 76, '2014-05-21'),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 76, '2014-05-21'),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 25, '2014-05-21'),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 70, '2014-05-21'),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 84, '2014-05-21'),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 81, '2014-05-21'),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 88, '2014-05-21'),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 59, '2014-05-21'),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 19, '2014-05-21'),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 24, '2014-05-21'),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 54, '2014-05-21'),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 63, '2014-05-21'),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 6, '2014-05-21'),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 22, '2014-05-21'),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 28, '2014-05-21'),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 86, '2014-05-21'),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 86, '2014-05-21'),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 86, '2014-05-21'),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 26, '2014-05-21'),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 74, '2014-05-21'),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 47, '2014-05-21'),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 55, '2014-05-21'),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 39, '2014-05-21'),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 1, '2014-05-21'),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 46, '2014-05-21'),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 68, '2014-05-21'),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 54, '2014-05-21'),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 52, '2014-05-21'),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 41, '2014-05-21'),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 28, '2014-05-21'),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-21'),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 80, '2014-05-21'),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-21'),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-21'),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-21'),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-21'),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-21'),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 78, '2014-05-21'),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 10, '2014-05-21'),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 10, '2014-05-21'),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 71, '2014-05-21'),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 6, '2014-05-21'),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 6, '2014-05-21'),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 49, '2014-05-21'),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 42, '2014-05-21'),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 4, '2014-05-21'),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 11, '2014-05-22'),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 72, '2014-05-22'),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-23'),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 48, '2014-05-23'),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 54, '2014-05-23'),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', 63, '2014-05-23'),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 85, '2014-05-24'),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-24'),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 33, '2014-05-24'),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 64, '2014-05-24'),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 47, '2014-05-24'),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-26'),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 6, '2014-05-26'),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 71, '2014-05-26'),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 71, '2014-05-26'),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 71, '2014-05-26'),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 71, '2014-05-26'),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 71, '2014-05-26'),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 33, '2014-05-26'),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 33, '2014-05-26'),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-26'),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 51, '2014-05-26'),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 51, '2014-05-26'),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 69, '2014-05-26'),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 13, '2014-05-26'),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-26'),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-26'),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-26'),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-26'),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-26'),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 43, '2014-05-26'),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 43, '2014-05-26'),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 43, '2014-05-26'),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 43, '2014-05-26'),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 43, '2014-05-26'),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 43, '2014-05-26'),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 45, '2014-05-26'),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 63, '2014-05-26'),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 48, '2014-05-27'),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 14, '2014-05-28'),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 89, '2014-05-28'),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 14, '2014-05-28'),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 14, '2014-05-28'),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 14, '2014-05-28'),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 24, '2014-05-29'),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 3, '2014-05-29'),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 76, '2014-05-29'),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 19, '2014-05-30'),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 18, '2014-05-30'),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 23, '2014-05-30'),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-30'),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-30'),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-30'),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 74, '2014-05-30'),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 74, '2014-05-30'),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 74, '2014-05-30'),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 66, '2014-05-30'),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 77, '2014-05-30'),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 75, '2014-05-30'),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 84, '2014-05-30'),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 84, '2014-05-30'),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 84, '2014-05-30'),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 84, '2014-05-30'),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 84, '2014-05-30'),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 84, '2014-05-30'),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 28, '2014-05-30'),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 28, '2014-05-30'),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 44, '2014-05-30'),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 11, '2014-05-31'),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 13, '2014-05-31'),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 9, '2014-05-31'),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-31'),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-31'),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-31'),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-31'),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 4, '2014-05-31'),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 86, '2014-06-11'),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 46, '2014-06-11'),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 46, '2014-06-11'),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 46, '2014-06-11'),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 46, '2014-06-11'),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 46, '2014-06-11'),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 46, '2014-06-11'),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 61, '2014-07-26'),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 61, '2014-07-26'),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 77, '2014-07-31'),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 75, '2014-07-31'),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 48, '2014-07-31'),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 48, '2014-07-31'),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 48, '2014-07-31'),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.36', 48, '2014-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bloodtype` text COLLATE utf8_unicode_ci NOT NULL,
  `contactnumber` text COLLATE utf8_unicode_ci NOT NULL,
  `profilepic` text COLLATE utf8_unicode_ci NOT NULL,
  `establishment_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `status`, `role`, `remember_token`, `age`, `gender`, `bloodtype`, `contactnumber`, `profilepic`, `establishment_id`, `location`) VALUES
(1, 'admin', '$2y$10$4bHqb2j1T8j3KJwJTtzEnuh9TBfBKOW0hhhV61Q2v6rMUFZTsD6AC', 'barriosjerson@gmail.com', 'Andy', 'Barrios', 1, 'admin', 'hcNwCiKVIptNvEXZxcMQQNBtBlwrhNAyJ3LE9sA53ad9riItyCZvFcFaQL2n', 0, '', '', '', '', '', ''),
(2, 'codekidie', '$2y$10$M1Obs/lpoTWUoUdAuOUhve.V/vuFddWBw9mL59ZGvPwS4wDV97tyC', 'codekidie@gmail.com', 'Edyl Jay', 'Templado', 1, 'admin', 'wkKi9s86O4E7wNH00qrudI01vrskEpR3GKyp9SlxUXpMC8hC7gHYSDTgSwXM', 0, '', '', '', '', '', 'Shrine Hills Matina Davao City'),
(3, 'codeblast', '$2y$10$9be0jucYmEQFgVg0dUoNHOKL45qkPqhpYDNFx/B/FXphc7zgIvrma', 'codeblast@gmail.com', 'Code', 'Blast', 1, 'medtech', 'TGkxxqGlmUi376929BlciAY5bdSJUKmXHKuHQ3ctqznmDe7NXjYcHuxQVATb', 0, '', '', '', '', '54150856e4e6f', ''),
(6, 'code', '$2y$10$YCxC23ml0rGqkUlVpJBv5.xqlrgl92XDSEVXAUPB/2K/6/lsKNfQ6', 'codekidie@gmail.com', 'coder', 'coder', 1, 'admin', NULL, 0, '', '', '', '', '', ''),
(8, 'coder', '$2y$10$FG9QrDj3WlF8/FcgQtZj6uo1iAs61.b2Z7uZkDWYENHkwDqN1rw6G', 'code@gmail.com', 'code', 'code', 1, 'client', '74vFEcoMAXR5fHx0UXV9PXXXS9yMi6OwcbG6em7IH0GupTu9KrczWkT3s4lf', 20, 'MALE', 'A', '09206567002', '', '', ''),
(9, 'admin1', '$2y$10$mRcxBar7wEE4AzEE/oKa.ubgk7hr9ySG7vgJLMcALiNAteAcIRzv2', 'admin1@gmail.com', 'admin1', 'admin1', 1, 'client', '91qbBvv0Yn4bLtElEsy3njKR7MMjqTRCI6kle5NPbon2a3e2IiiMUNu3VSLx', 21, 'MALE', 'A', '09206567008', '', '', ''),
(10, 'edyl', '$2y$10$Rc3E3ufOx8gyLLMY9b7dvuRmi2ZqvU8OAieH0SU6RFkBpltCuTa3m', 'edyl@gmail.com', 'Edyl Jay', 'Templado', 1, 'client', 'NNVdbHQLCVJqfLgOTES4IZc5GY7v8s0DFiYbIxUx5TLfml1zBXrMDMsqrRI9', 16, 'MALE', 'A', '09206567002', '', '', ''),
(12, 'kevin', '$2y$10$d2O0DWWJs89lZjlXj5o5B.4u3BS28CeghhxlCWOpjzWP5NnEjio0W', 'kevin@gmail.com', 'Kevin', 'Skoglund', 1, 'client', 'yMnyPnymEBAZAUI1uLBzuG30uyLFlHs3EwsTCCQiwkcPwfvuJ6QSXCBMw09G', 20, 'MALE', 'O', '09206567002', 'L0x1cW_Koala.jpg', '', ''),
(13, 'pengu', '$2y$10$krlwB6gUmesOrY36S4i79ez//pWmzrKnn2TvENBA8smgCS/x2RTAa', 'pengu@gmail.com', 'Pengu', 'Kunami', 1, 'client', NULL, 18, 'MALE', 'O', '09206567008', 'F5OXQn_Penguins.jpg', '', ''),
(14, 'edrian', '$2y$10$.SPMGfHoi9IJa4S5vqUMIO36xalhj/.9WeMAozRUWDDAAJhTpPBy.', 'edrian@gmail.com', 'Edrian', 'Templado', 1, 'client', 'Y5flqsiNtaCkbXRaUMkkVDQuMFaQkhZCqeDqGPq21I6K9pY8Q9TfOBgTmtpE', 18, 'MALE', 'A', '09206567002', 'bR8iCe_63922_bloodbag.jpg', '', ''),
(15, 'marygrace', '$2y$10$MAciVnbapRJ2x4mNoMx/DuhTHY6HiXIkO0Ii4gjGdqmO5uzsaknzW', 'marygrace@gmail.com', 'Mary', 'Grace', 1, 'client', NULL, 24, 'FEMALE', 'O', '09206567003', '', '', ''),
(16, 'steve', '$2y$10$07FFqEFr.RfhhP7OYeeeVO8NaFr8fvUJjjpP16t49uEFxCBY22wcO', 'steve@gmail.com', 'Steve', 'Jobs', 1, 'client', NULL, 24, 'MALE', 'AB', '09206567003', '', '', ''),
(18, 'mario', '$2y$10$jYQ5VLrLSFfksQNacG.5mOpDbFn50i4suy.BNPPCdpMtRVOXw0ENC', 'mario@gmail.com', 'Mario', 'Falcon', 1, 'client', NULL, 18, 'MALE', 'AB', '09206567002', '', '', ''),
(19, 'edmar', '$2y$10$0OiJl/V4m51W83O7iBiT4OUchv14UGo5qVOUcTmf2rCSIGc3zKi3K', 'edmar@gmail.com', 'Edmar', 'Kunami', 1, 'client', 'Ix7iZda0PvpuQtB3BETDBfVqM9A4kkt3GBpzgD5YifaEiWmN6xdZRZgfeJkv', 18, 'MALE', 'AB', '09206534002', '', '', ''),
(20, 'redcross', '$2y$10$G0oAMSdcChecymsYxSwpf.QPie8FAFR3bsNblJc5l/FN8vymxOOyi', 'redcross@gmail.com', 'Kevein', 'Scoglund', 1, 'medtech', '2mIGVwyIVMcFHU5KbYY8zmMWN6f4GXju8WuQPei3tUL5raaBRYKSsVBhuhjm', 21, 'MALE', 'AB', '09206567002', 'Q7XYDH_images (12).jpg', '5447ac7bc0091', ''),
(21, 'jimmy', '$2y$10$XXzU5oT9HtO89/KonEqUlu26nehPziBeX/tmlZFSfg574l1AMGgr6', 'jimmy@gmail.com', 'Jimmy', 'Neutron', 1, 'admin', NULL, 16, 'MALE', 'A', '09206567002', 'JZ7TVf_audi.jpg', '', 'Davao Area'),
(22, 'merasol', '$2y$10$f0Cir3pom7zA4mmQ0PfWKeEHvZb39aQe1bet6MKCoKj5K4eEmAF/S', 'merasolcastro@yahoo.com', 'Merasol', 'Castro', 1, 'client', 'kPgkZ1cdLP05HfvdeP9BClGke5YzYjRTvO0uW8NsatHMIhDF5usyGdvN4PsY', 20, 'FEMALE', 'O', '09308989512', 'adk0KK_merasol.jpg', '', 'Sasa Davao City'),
(23, 'claire', '$2y$10$dz1ZLDYKc3Z/uUrNIe2WwOqtgaY3EkErE0dnUP4GaCBKtcf3uZnuu', 'claire@gmail.com', 'Claire', 'Logan', 1, 'client', 'YOHBGX7db96ppkvDxU6wy1JCVHGGqGcILN2ld7WDsgTqS7Mj1v2d4vpaEcIl', 21, 'FEMALE', 'O', '09206534002', 'hkbVCl_10392593_997802336915986_921599853823046631_n.jpg', '', 'catitipan davao city'),
(24, 'nikki', '$2y$10$jay5rcO3xJJLJSCWzDuJ3u15EvCPyC56j6nlNPhBSllq7oJYCchsS', 'nikki@gmail.com', 'Nikki', 'Mirai', 1, 'medtech', 'VDYYRr16ECwGhv8zypCb8sVOVwxQHU7JrlD4ZVucpGSEcrznK65kbcyyZIwH', 25, 'FEMALE', 'O', '09206567003', 'vpLFlL_images (12).jpg', '54150856e4e6f', 'Davao City'),
(25, 'Aiza', '$2y$10$PO/0hfvRK0xp4IFRT7CYDeZDuvPQeOO5UoNlUm9WYnlLKfGjxEUea', 'aiza@gmail.com', 'Aiza Cagasan', 'Laping', 1, 'client', 'PpWSF8bGwEvCADOf8saRp1ftxM1CTqFDkryafocKiSOtAwmtVvWPJMD1AyDk', 23, 'FEMALE', 'AB', '09206567008', 'ugVs6I_Aiza Cagasan Laping.jpg', '', 'Davao City'),
(26, 'Aldy', '$2y$10$EGGpC10TJXcQ19AKZvnT4eJ3QeQIC.QHp0v.b.uz2Z07lzrwYIb1O', 'Aldy@gmail.com', 'Aldy Girl ', 'Amora', 1, 'client', NULL, 25, 'FEMALE', 'B', '09206567008', 'nMGrmW_Aldy Girl A. Amora.jpg', '', 'Davao City'),
(27, 'diane', '$2y$10$DCMgDaZO6bcC9y/C1WA0ceNMdR.sSXzjIXV2lK37YMUDPIfrcpVDu', 'dj.vallecera@gmail.com', 'Diane', 'Vallecera', 1, 'client', NULL, 20, 'FEMALE', 'B', '09206567008', 'emiRUd_dian.jpg', '', 'Davao City'),
(28, 'Destiny Jane', '$2y$10$eABlrg/F.zmzrSz98skTYOaCs1N4EGy9Jz6B.TSOC42D.lktVh5He', 'desinyjanebraos@gmal.com', 'Destny Jane', 'Braos', 1, 'client', NULL, 21, 'FEMALE', 'O', '09261822046', 'ivb9SV_062520143020.jpg', '', 'Davao City');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `text_html` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `name`, `icon`, `description`, `text_html`, `title`, `slug`) VALUES
(1, 'Donate Blood', 'http://localhost/bloodhuntphil/_uploads/icon1.png', 'By means of donating blood we then can identify the blood type of individuals then  we registered you to our system  with accurate data.', 'By means of donating blood we then can identify the blood type of individuals then  we registered you to our system  with accurate data.', 'Donate Blood', 'donate_blood'),
(2, 'Get Credentials', 'http://localhost/bloodhuntphil/_uploads/icon2.png', 'After we registered you on our system you will be notified with your log in credentials to access our system in your phone as well as email.', 'After we registered you on our system you will be notified with your log in credentials to access our system in your phone as well as email.', 'Get Credentials', 'get_credentials'),
(3, 'Get Notified', 'http://localhost/bloodhuntphil/_uploads/icon4.png', 'You can now access our system and view current updates regarding blood transactions such as blood banks location , join current events and etc. Feel free to navigate.', 'You can now access our system and view current updates regarding blood transactions such as blood banks location , join current events and etc. Feel free to navigate.', 'Get Notified', 'get_notified'),
(6, 'Earn Badges', 'http://localhost/bloodhuntphil/_uploads/icon3.png', 'Every time you joined our events we give you badges which benefits you as well as your loved ones.', 'Every time you joined our events we give you badges which benefits you as well as your loved ones.', 'Earn Badges', 'earn_badges');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image_slider`
--
ALTER TABLE `image_slider`
  ADD CONSTRAINT `image_slider_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `image_slider_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_page`
--
ALTER TABLE `menu_page`
  ADD CONSTRAINT `menu_page_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_page_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
