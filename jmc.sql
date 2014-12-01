-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2014 at 04:43 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jmc`
--

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
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` bigint(20) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=167 ;

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
(164, '_uploads/jaguar_winning.jpg', 944126, ''),
(165, '_uploads/900x542_4346_How_Nostalgic_2d_fantasy_totoro_anime_astroboy_rain_mystery_little_boy_picture_image_digital_art.jpg', 148207, ''),
(166, '_uploads/benefits_pix.jpg', 13880, '');

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
(2, 'codekidie', '$2y$10$M1Obs/lpoTWUoUdAuOUhve.V/vuFddWBw9mL59ZGvPwS4wDV97tyC', 'codekidie@gmail.com', 'Edyl Jay', 'Templado', 1, 'admin', 'JPc6IuU7bNwcKl5hFvvlZkED2haohuzIl0iGBcTXt9VOH4E4YubvUahAXc57', 0, '', '', '', '', '', 'Shrine Hills Matina Davao City'),
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
