-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 29, 2019 at 10:51 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hung`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `email`, `password`, `username`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@gmail.com', '$2y$10$3oT6cfoAExzkk6BOJSZQLueefUphFGk6LLNeVGQBMJX2BbFlzlek.', 'admin', 'kPy0CPl9iuINpVJG4PZUQmUcAAjsPD7llOLykRUN9h7thaVqHBZ3UWBRFKXu', NULL, '2019-03-08 00:24:42', '2019-06-21 15:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `status`, `image_url`, `name`, `comment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'comment/5.png', 'Nguyễn Nam Hùng', 'Đẹp tuyệt vời', '2019-03-11 15:42:56', '2019-03-08 18:16:50', '2019-03-11 15:42:56'),
(2, NULL, NULL, 'Tung', 'Comment', '2019-03-11 15:42:59', '2019-03-08 23:17:20', '2019-03-11 15:42:59'),
(3, NULL, 'comment/anh-dai-dien-facebook-5.jpg', 'Đoàn Tiến H***', 'Bạn ở dâu vậy', NULL, '2019-03-14 14:10:31', '2019-04-03 13:48:23'),
(4, NULL, 'comment/anh-dai-dien-facebook-4.jpg', 'Thoan Nguyễn', 'ship vô Sg bao lâu nhận được vậy', NULL, '2019-03-16 18:08:01', '2019-04-03 13:48:39'),
(5, NULL, 'comment/images (4).jpg', 'Vương Ngọc Liên', 'Bạn ở đâu', NULL, '2019-04-03 13:53:35', '2019-04-03 13:53:35'),
(6, NULL, 'comment/anh-dai-dien-facebook-6.jpg', 'Rose Hồng ', '12 ly nhé Shop', NULL, '2019-04-03 13:54:30', '2019-04-03 13:54:30'),
(7, NULL, 'comment/images.jpg', 'Kitaro Matsuri Nguyen', 'Xem trước khi tra tiền ha ad', NULL, '2019-04-03 13:55:00', '2019-04-03 13:55:00'),
(8, NULL, 'comment/images (1).jpg', 'Tuyen Nguyen', 'E dat vong 10 ly', NULL, '2019-04-03 13:55:46', '2019-04-03 13:55:46'),
(9, NULL, 'comment/images (10).jpg', 'Sống Thiếu T. Hết', 'Thế này có cả tỳ hưu thì ĐẸP ko nhỉ...?', NULL, '2019-04-03 13:56:15', '2019-04-03 13:56:15'),
(10, NULL, 'comment/images (2).jpg', 'Lebinh Doan ', 'mỗi vòng này trọng lượng là bn vàng hả shop', NULL, '2019-04-03 13:56:54', '2019-04-03 13:56:54'),
(11, NULL, 'comment/images (7).jpg', 'Bao Nguyên', 'Đẹp quá!!!!', NULL, '2019-04-03 13:57:33', '2019-04-03 13:57:33'),
(12, NULL, 'comment/images (6).jpg', 'Thuoc Do', 'ok, m ghé cửa hàng mua được không b', NULL, '2019-04-03 13:58:13', '2019-04-03 13:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `comment_orders`
--

CREATE TABLE IF NOT EXISTS `comment_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `comment_orders`
--

INSERT INTO `comment_orders` (`id`, `status`, `time`, `name`, `comment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, '1:24 PM', 'Nguyễn Nam Hùng', 'Đẹp tuyệt vời', '2019-03-11 15:46:01', '2019-03-08 18:16:15', '2019-03-11 15:46:01'),
(2, 6, '30-02-2019', 'Nguyễn Như Anh', 'Rất ưng ý', '2019-03-11 15:46:03', '2019-03-08 18:17:51', '2019-03-11 15:46:03'),
(3, 5, '5phut', 'Tung', 'Comment', '2019-03-11 15:46:05', '2019-03-08 23:16:19', '2019-03-11 15:46:05'),
(4, 1, 'Ueu', 'Bdbdnd', 'Hêhhd', '2019-03-11 15:46:07', '2019-03-09 00:04:48', '2019-03-11 15:46:07'),
(5, 4, 'Hd', 'Hong', 'Good', '2019-03-11 15:46:08', '2019-03-09 00:05:04', '2019-03-11 15:46:08'),
(6, 4, 'Hd', 'Hong', 'Good', '2019-03-11 15:46:10', '2019-03-09 00:05:05', '2019-03-11 15:46:10'),
(7, 1, '1 phút trước', 'H**09*****497', 'IB đặt hàng nè', NULL, '2019-03-11 15:46:39', '2019-03-11 15:46:39'),
(8, 1, '3 phút trước', 'Dương 09*****066', 'Cảm ơn Shop nhé', NULL, '2019-03-11 15:47:36', '2019-03-11 15:47:36'),
(9, 2, '1 phút trước', 'Tien 09*****146', 'Chuyển về HP dùm tôi', NULL, '2019-03-11 15:48:35', '2019-03-11 15:48:35'),
(10, 1, '2 phút trước', 'Qa 0983****94', 'Ibox di Sốp', NULL, '2019-03-11 15:50:03', '2019-03-11 15:50:03'),
(11, 1, '1 phút trước', '03****7655', 'bạn nhận được thông tin mình đặt hàng chua?', NULL, '2019-03-11 15:50:59', '2019-03-11 15:50:59'),
(12, 2, '1 phút trước', '09****20*1', 'Đẹp quá ^^', NULL, '2019-03-11 15:51:43', '2019-03-11 15:51:43'),
(13, 1, '2 phút trước', 'H** 08****1333', 'CHUC Sop luôn đắt hàng nha', NULL, '2019-03-11 15:52:38', '2019-03-11 15:52:38'),
(14, 1, '1 phút trước', '093*****30', 'Toi muon dat hang', NULL, '2019-03-11 15:53:53', '2019-03-11 15:53:53'),
(15, 1, '12:03 PM 11/3/2019', 'b**09*****112', 'Yessssssss', NULL, '2019-03-11 15:54:53', '2019-03-11 15:54:53'),
(16, 3, '8:45AM 10/3/2019', 'TUan to**08*****306', '2 chiecs  về Tien GIANg', NULL, '2019-03-11 15:56:09', '2019-03-11 15:56:09'),
(17, 2, '2 phút trước', 'SAng ÚT 091****001', 'Lien hệ luôn nhé shop!!', NULL, '2019-03-11 15:58:18', '2019-03-11 15:58:18'),
(18, 2, '21 phút trước', 'Giang minh 091*****69', 'Tôi muốn mua hàng', NULL, '2019-03-11 17:04:16', '2019-03-11 17:04:16'),
(19, 1, '15 phút trước ', 'Liên 09*****664', 'Tôi muốn mua hàng', NULL, '2019-03-11 17:05:02', '2019-03-11 17:05:02'),
(20, 1, '10 phút trước', 'Tran the vu 03***6*194', 'Đẹp', NULL, '2019-03-11 17:05:59', '2019-03-11 17:05:59'),
(21, 100, '2 phút trước', 'Y ** 09****568*', 'Xin giá sỉ', NULL, '2019-03-11 17:07:03', '2019-03-11 17:07:03'),
(22, 2, '1 phút trước', 'Kevin Dladex 093****458', 'Lấy thêm chiếc 8ly có được giảm giá không vậy ?', NULL, '2019-03-19 15:51:46', '2019-03-19 15:51:46'),
(23, 1, '2 phút trước', 'Trang trần 07*****111', 'CHiều 4h hơn chị qua, Shop còn mở cửa ko', NULL, '2019-03-19 15:53:22', '2019-03-19 15:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE IF NOT EXISTS `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fb_analytic` text COLLATE utf8_unicode_ci,
  `link_video` text COLLATE utf8_unicode_ci,
  `google_code` text COLLATE utf8_unicode_ci,
  `text_config_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_to` text COLLATE utf8_unicode_ci,
  `share_link` text COLLATE utf8_unicode_ci,
  `like_link` text COLLATE utf8_unicode_ci,
  `text_order_notify` text COLLATE utf8_unicode_ci,
  `text_footer_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_discount_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_number_sale_off` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_footer_right` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_footer_left` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_price_header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `promotion_price_header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_header_common` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_fee_transfer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_promotion_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind_pay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_transfer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_export` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_transfer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quanity` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `fb_analytic`, `link_video`, `google_code`, `text_config_title`, `message_to`, `share_link`, `like_link`, `text_order_notify`, `text_footer_order`, `text_discount_payment`, `text_number_sale_off`, `text_footer_right`, `text_footer_left`, `text_header`, `price_header`, `sale_price_header`, `promotion_price_header`, `text_header_common`, `text_fee_transfer`, `text_promotion_number`, `image_body`, `kind_pay`, `fee_transfer`, `time_export`, `time_transfer`, `quanity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '', 'https://www.youtube.com/embed/zxqfZ2e6BNM', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src="https://www.googletagmanager.com/gtag/js?id=UA-139661349-3"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(''js'', new Date());\r\n\r\n  gtag(''config'', ''UA-139661349-3'');\r\n</script>', 'Vòng tay y học lượng tử Terahertz', 'https://m.me/Vinstores', 'https://www.facebook.com/Vnmini.net', 'https://www.facebook.com/Vinstores/', 'terahertz.vinstoresvn.com', 'terahertz.vinstoresvn.com ', 'Chiết khấu ', 'Số lượng còn lại', 'MUA NGAY TỪ 450.000đ', 'NHẮN TIN', 'VÒNG TAY Y HỌC LƯỢNG TỬ XUẤT XỨ NHẬT BẢN', '560.000đ', '450.000đ', '20%', 'MUA NGAY TỪ 450.000đ', 'FREESHIP - Chiết khấu 10% từ 2 sản phẩm trở lên', '8838', '/config/5THZ info graphic.jpg', 'Giao hàng tới địa điểm khách hàng cung cấp', 'Miễn phí giao hàng toàn quốc ', 'Phát  ngay sau khi chốt đơn hàng ', 'Từ 1-3 ngày vận chuyển ( có thể sai số +1 ngày tùy địa điểm)', 'Sản phẩm được bảo hành trọn đời trừ các trường hợp do lỗi cố ý của người sử dụng như tác động vật lý mạnh, ngâm tẩm hóa chất hoặc đốt với nhiệt độ cao\r\n-Phí vận chuyển: Đối với sản phẩm bảo hành được Ship tới, khách hàng vui lòng thanh toán phí chiều gửi đến, chúng tôi sẽ thanh toán phí Ship chiều đi sau khi đã sửa chữa hoặc đổi trả sản phẩm mới', NULL, '2019-03-08 01:14:15', '2019-10-30 13:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `number`, `percent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2', 10, NULL, '0000-00-00 00:00:00', '2019-03-14 01:36:07');

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
('2018_01_02_135645_create_admin_table', 1),
('2019_03_07_180655_config_table', 1),
('2019_03_07_181250_slide_table', 1),
('2019_03_07_181358_comment_table', 1),
('2019_03_07_181505_comment_order_table', 1),
('2019_03_07_181606_products_table', 1),
('2019_03_07_181722_ordes_table', 1),
('2019_03_07_181920_product_order_table', 1),
('2019_03_07_215654_add_more_config', 2),
('2019_03_07_223945_create_discount_table', 2),
('2019_03_07_225247_add_order_table', 2),
('2019_03_12_180941_add_more_field_config', 3),
('2019_03_12_215900_add_field_config', 4),
('2019_03_13_211429_add_field_discount', 5),
('2019_03_13_212856_add_more_config_field', 5),
('2019_03_13_212856_add_more_config_field_1', 6),
('2019_03_13_212856_add_more_config_field_2', 7),
('2019_08_06_165251_add_config_title_table', 8),
('2019_08_27_090913_add_more_field_in_config', 8),
('2019_09_12_125900_add_link_video_config_table', 9),
('2019_09_20_133853_add_fb_pixel', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money_pay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `receiver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=168 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `money_pay`, `status`, `receiver_name`, `phone_name`, `email`, `city`, `address`, `comment`, `total_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '810000', 1, 'tran tung', '0912957368', 'trantunghn196@gmail.com', 'ha-noi', 'test address ', 'ghi chú', '900000', '2019-04-03 13:42:57', '2019-03-13 03:12:46', '2019-04-03 13:42:57'),
(2, '810000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dasdasdsa', 'ffff', '900000', '2019-04-03 13:42:59', '2019-03-14 00:36:59', '2019-04-03 13:42:59'),
(3, '1215000', 1, 'sadsad', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ffff', 'gggg', '1350000', '2019-04-03 13:43:01', '2019-03-14 00:42:22', '2019-04-03 13:43:01'),
(4, '1215000', 1, 'sadsad', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ffff', 'gggg', '1350000', '2019-04-03 13:43:03', '2019-03-14 00:43:46', '2019-04-03 13:43:03'),
(5, '1215000', 1, 'sadsad', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ffff', 'gggg', '1350000', '2019-04-03 13:43:05', '2019-03-14 00:43:52', '2019-04-03 13:43:05'),
(6, '1215000', 1, 'sadsad', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ffff', 'gggg', '1350000', '2019-04-03 13:43:06', '2019-03-14 00:43:57', '2019-04-03 13:43:06'),
(7, '900000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dasd', 'jjj', '900000', '2019-04-03 13:43:08', '2019-03-14 01:35:59', '2019-04-03 13:43:08'),
(8, '810000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ff', 'gfg', '900000', '2019-04-03 13:43:10', '2019-03-14 01:36:45', '2019-04-03 13:43:10'),
(9, '810000', 1, 'Hung', '0914082013', 'Hungnnkts@gmail.com', 'ha-noi', 'Hdhdh', 'Hdhdhd', '900000', '2019-04-03 13:43:13', '2019-03-14 01:40:39', '2019-04-03 13:43:13'),
(10, '630000', 1, 'H', '8676786', 'Hghh', 'ha-noi', 'Vbb', 'Vfgh', '700000', '2019-04-03 13:43:16', '2019-03-14 03:25:41', '2019-04-03 13:43:16'),
(11, '630000', 1, 'Huong', '0973648245', 'amychan712@gmail.com', 'ha-noi', 'Hannoi', 'VBFBbf', '700000', '2019-04-03 13:43:17', '2019-03-14 14:12:51', '2019-04-03 13:43:17'),
(12, '630000', 1, 'Huong', '0973648245', 'amychan712@gmail.com', 'ha-noi', 'Hannoi', 'VBFBbf', '700000', '2019-04-03 13:43:19', '2019-03-14 14:14:11', '2019-04-03 13:43:19'),
(13, '900000', 1, 'hung', '0949998587', '', 'ha-noi', '283 ngõ QUỳnh', '1', '900000', '2019-04-03 13:43:22', '2019-03-18 17:07:34', '2019-04-03 13:43:22'),
(14, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dads', 'sdads', '350000', '2019-04-03 13:43:24', '2019-03-20 01:19:49', '2019-04-03 13:43:24'),
(15, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'll', 'nhlkh', '350000', '2019-04-03 13:43:25', '2019-03-20 01:37:14', '2019-04-03 13:43:25'),
(16, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ddads', 'dasd', '350000', '2019-04-03 13:43:27', '2019-03-20 01:38:11', '2019-04-03 13:43:27'),
(17, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'das', 'dad', '350000', '2019-04-03 13:43:29', '2019-03-20 01:40:41', '2019-04-03 13:43:29'),
(18, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'das', 'dad', '350000', '2019-04-03 13:43:58', '2019-03-20 01:44:56', '2019-04-03 13:43:58'),
(19, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'das', 'dasd', '350000', '2019-04-03 13:43:30', '2019-03-20 01:45:16', '2019-04-03 13:43:30'),
(20, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ddasd', 'dads', '350000', '2019-04-03 13:43:30', '2019-03-20 02:09:28', '2019-04-03 13:43:30'),
(21, '350000', 1, 'hung', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', 'Thanh nhàn', 'dâd', '350000', '2019-04-03 13:43:32', '2019-03-20 03:26:20', '2019-04-03 13:43:32'),
(22, '350000', 1, 'tung ea', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dd', 'd', '350000', '2019-04-03 13:43:33', '2019-03-20 14:02:12', '2019-04-03 13:43:33'),
(23, '350000', 1, 'dd', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'fff', 'f', '350000', '2019-04-03 13:43:35', '2019-03-20 14:03:18', '2019-04-03 13:43:35'),
(24, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:43:36', '2019-03-20 14:09:53', '2019-04-03 13:43:36'),
(25, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', 'd', '350000', '2019-04-03 13:43:37', '2019-03-20 14:14:20', '2019-04-03 13:43:37'),
(26, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:43:38', '2019-03-20 14:18:37', '2019-04-03 13:43:38'),
(27, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:43:39', '2019-03-20 14:21:21', '2019-04-03 13:43:39'),
(28, '350000', 1, 'uhug', '09667576', 'hungdu', 'ha-noi', 'klgyg', 'kgukg', '350000', '2019-04-03 13:43:39', '2019-03-20 17:44:28', '2019-04-03 13:43:39'),
(29, '350000', 1, 'abc', '099999666', '', 'ha-noi', 'hn', 'âs', '350000', '2019-04-03 13:43:41', '2019-03-22 01:27:50', '2019-04-03 13:43:41'),
(30, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', 'f', '350000', '2019-04-03 13:43:42', '2019-03-23 00:28:22', '2019-04-03 13:43:42'),
(31, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:43:42', '2019-03-23 00:32:10', '2019-04-03 13:43:42'),
(32, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:43:44', '2019-03-23 00:38:01', '2019-04-03 13:43:44'),
(33, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'fff', '', '350000', '2019-04-03 13:43:45', '2019-03-23 00:40:41', '2019-04-03 13:43:45'),
(34, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'fff', '', '350000', '2019-04-03 13:43:46', '2019-03-23 00:43:34', '2019-04-03 13:43:46'),
(35, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'fff', '', '350000', '2019-04-03 13:43:46', '2019-03-23 00:43:44', '2019-04-03 13:43:46'),
(36, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'fdf', '', '350000', '2019-04-03 13:43:47', '2019-03-23 00:44:46', '2019-04-03 13:43:47'),
(37, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'fd', '', '350000', '2019-04-03 13:43:48', '2019-03-23 00:49:09', '2019-04-03 13:43:48'),
(38, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:43:49', '2019-03-23 00:50:04', '2019-04-03 13:43:49'),
(39, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ff', '', '350000', '2019-04-03 13:43:52', '2019-03-23 00:51:46', '2019-04-03 13:43:52'),
(40, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ff', '', '350000', '2019-04-03 13:43:59', '2019-03-23 00:53:45', '2019-04-03 13:43:59'),
(41, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:02', '2019-03-23 00:55:42', '2019-04-03 13:44:02'),
(42, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:44:04', '2019-03-23 00:58:55', '2019-04-03 13:44:04'),
(43, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'DFD', '', '350000', '2019-04-03 13:44:06', '2019-03-23 01:02:13', '2019-04-03 13:44:06'),
(44, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dd', '', '350000', '2019-04-03 13:44:07', '2019-03-23 01:05:05', '2019-04-03 13:44:07'),
(45, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:09', '2019-03-23 01:18:05', '2019-04-03 13:44:09'),
(46, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:10', '2019-03-23 01:18:26', '2019-04-03 13:44:10'),
(47, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dd', '', '350000', '2019-04-03 13:44:12', '2019-03-23 01:19:14', '2019-04-03 13:44:12'),
(48, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dd', '', '350000', '2019-04-03 13:44:13', '2019-03-23 01:20:33', '2019-04-03 13:44:13'),
(49, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:15', '2019-03-23 01:20:46', '2019-04-03 13:44:15'),
(50, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dfd', 'ddd', '350000', '2019-04-03 13:44:16', '2019-03-23 01:47:31', '2019-04-03 13:44:16'),
(51, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'dsada', 'fdf', '350000', '2019-04-03 13:44:18', '2019-03-23 01:48:17', '2019-04-03 13:44:18'),
(52, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', '1911 ha noi', 'fhi chi', '350000', '2019-04-03 13:44:19', '2019-03-23 01:49:13', '2019-04-03 13:44:19'),
(53, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'das', 'g', '350000', '2019-04-03 13:44:21', '2019-03-23 01:51:57', '2019-04-03 13:44:21'),
(54, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'j', '', '350000', '2019-04-03 13:44:22', '2019-03-23 01:53:10', '2019-04-03 13:44:22'),
(55, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'j', '', '350000', '2019-04-03 13:44:26', '2019-03-23 01:54:22', '2019-04-03 13:44:26'),
(56, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:28', '2019-03-23 01:58:29', '2019-04-03 13:44:28'),
(57, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'l', '', '350000', '2019-04-03 13:44:31', '2019-03-23 02:00:00', '2019-04-03 13:44:31'),
(58, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:44:34', '2019-03-23 02:01:35', '2019-04-03 13:44:34'),
(59, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:44:38', '2019-03-23 02:03:36', '2019-04-03 13:44:38'),
(60, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:39', '2019-03-23 02:07:35', '2019-04-03 13:44:39'),
(61, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:41', '2019-03-23 02:08:37', '2019-04-03 13:44:41'),
(62, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'j', '', '350000', '2019-04-03 13:44:42', '2019-03-23 02:10:51', '2019-04-03 13:44:42'),
(63, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:45', '2019-03-23 02:11:38', '2019-04-03 13:44:45'),
(64, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:47', '2019-03-23 02:15:49', '2019-04-03 13:44:47'),
(65, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'sa', '', '350000', '2019-04-03 13:44:48', '2019-03-23 02:17:40', '2019-04-03 13:44:48'),
(66, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'k', '', '350000', '2019-04-03 13:44:50', '2019-03-23 02:20:07', '2019-04-03 13:44:50'),
(67, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:44:51', '2019-03-23 02:25:35', '2019-04-03 13:44:51'),
(68, '350000', 1, 'tran tung', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'das', '', '350000', '2019-04-03 13:44:53', '2019-03-23 02:30:03', '2019-04-03 13:44:53'),
(69, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'd', '', '350000', '2019-04-03 13:44:55', '2019-03-23 02:33:37', '2019-04-03 13:44:55'),
(70, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'k', '', '350000', '2019-04-03 13:44:57', '2019-03-23 02:40:14', '2019-04-03 13:44:57'),
(71, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:44:59', '2019-03-23 02:42:24', '2019-04-03 13:44:59'),
(72, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'l', '', '350000', '2019-04-03 13:45:01', '2019-03-23 02:43:58', '2019-04-03 13:45:01'),
(73, '350000', 1, 'tranf', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:45:02', '2019-03-23 02:46:01', '2019-04-03 13:45:02'),
(74, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:45:05', '2019-03-23 02:46:39', '2019-04-03 13:45:05'),
(75, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'c', '', '350000', '2019-04-03 13:45:06', '2019-03-23 02:50:51', '2019-04-03 13:45:06'),
(76, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'c', '', '350000', '2019-04-03 13:45:08', '2019-03-23 02:53:10', '2019-04-03 13:45:08'),
(77, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'ff', '', '350000', '2019-04-03 13:45:09', '2019-03-23 02:56:58', '2019-04-03 13:45:09'),
(78, '350000', 1, 'tran', '912957368', 'trantunghn196@gmail.com', 'ha-noi', 'f', '', '350000', '2019-04-03 13:45:11', '2019-03-23 03:00:26', '2019-04-03 13:45:11'),
(79, '350000', 1, 'tran thanh tung', '0912957368', 'trantunghn196@gmail.com', 'ha-noi', '295 bui xuong trach', 'test ghi chu', '350000', '2019-04-03 13:45:13', '2019-03-23 03:01:13', '2019-04-03 13:45:13'),
(80, '350000', 1, 'H', '948474', 'Hdhd', 'ha-noi', 'Bdbdbd', 'Bdbdb', '350000', '2019-04-03 13:45:14', '2019-03-23 03:08:26', '2019-04-03 13:45:14'),
(81, '2430000', 1, 'Huong', '097373737', 'Hdhdh', 'ha-noi', 'Thanh nhàn', 'Giao hàng ngay', '2700000', '2019-04-03 13:45:16', '2019-03-23 03:11:11', '2019-04-03 13:45:16'),
(82, '450000', 1, 'Hùng', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', 'Thanh Nhàn Hn', 'Dây dự phòng', '450000', '2019-04-03 13:45:17', '2019-03-23 14:13:12', '2019-04-03 13:45:17'),
(83, '450000', 1, 'Nguyễn Như Anh', '0123485859', '', 'ha-noi', '283 ngo Quynh, thanh nhan', 'sdfdsfsdfsf', '450000', '2019-04-03 13:45:18', '2019-03-25 13:48:28', '2019-04-03 13:45:18'),
(84, '630000', 1, 'Hùng', '0914082013', '', 'ha-noi', 'Hà nội', 'Đep', '700000', '2019-04-03 13:45:20', '2019-04-02 12:38:35', '2019-04-03 13:45:20'),
(85, '350000', 1, 'hung', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', '283 ngõ Quỳnh', 'd', '350000', '2019-04-06 00:52:38', '2019-04-06 00:46:45', '2019-04-06 00:52:38'),
(86, '350000', 1, 'hung', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', '283 ngõ Quỳnh', 'd', '350000', '2019-04-06 00:52:36', '2019-04-06 00:47:03', '2019-04-06 00:52:36'),
(87, '900000', 1, 'Nguyễn Như Anh', '1686198668', 'metalcrisis01k1@gmail.com', 'ha-noi', '283 ngõ quỳnh', '', '900000', '2019-04-18 18:08:56', '2019-04-08 17:05:16', '2019-04-18 18:08:56'),
(88, '350000', 1, 'Hùng', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', '183 ngõ quỳnh hn', '', '350000', '2019-04-18 18:08:59', '2019-04-09 21:30:38', '2019-04-18 18:08:59'),
(89, '750000', 1, 'Hoang hai', '0968017221', '', 'ha-noi', 'Tan tien cong hoa.chi linh hai duong', '', '750000', NULL, '2019-04-11 01:17:30', '2019-04-11 01:17:30'),
(90, '450000', 1, 'Trần Minh Thiện', '0819297968', 'tranminhthienpq@gmail.com', 'binh-duong', '28 Võ Thành Long Phú cường, thủ dầu một', '', '450000', NULL, '2019-04-18 18:01:11', '2019-04-18 18:01:11'),
(91, '350000', 1, 'Hung', '0949998588', '', 'ha-noi', '283 ngoc quynh', '', '350000', '2019-04-18 18:08:51', '2019-04-18 18:04:40', '2019-04-18 18:08:51'),
(92, '600000', 1, 'Tran thanh tuan', '0798606109', '', 'ha-noi', 'Bưu diễn dong xoài binh phuoc', '', '600000', NULL, '2019-04-19 00:00:15', '2019-04-19 00:00:15'),
(93, '600000', 1, 'Hồ Anh Tuấn', '0936251979', 'anngocho79@gmail.com', 'tp-ho-chi-minh', '888c tạ quang bửu,p5.q8', '', '600000', NULL, '2019-04-19 02:13:30', '2019-04-19 02:13:30'),
(94, '900000', 1, 'hung', '0949998587', '', 'ha-noi', '283 ngõ QUỳnh', 'ddd', '900000', '2019-04-19 02:32:38', '2019-04-19 02:28:22', '2019-04-19 02:32:38'),
(95, '900000', 1, '', '0949998587', '', 'ha-noi', '283 ngõ Quỳnh', 'adadad', '900000', '2019-04-19 02:32:46', '2019-04-19 02:30:46', '2019-04-19 02:32:46'),
(96, '450000', 1, 'Nhu Anh', '1686198668', 'metalcrisis01k1@gmail.com', 'ha-noi', 'Ha noi', '', '450000', '2019-04-19 02:41:57', '2019-04-19 02:32:23', '2019-04-19 02:41:57'),
(97, '350000', 1, 'Nguyễn Văn Bình', '0948714036', '', 'kien-giang', 'C8l27đuong lê thị tạo phường Vĩnh lạc thành phố rạch giá tỉnh Kiên Giang', '', '350000', NULL, '2019-04-19 13:51:39', '2019-04-19 13:51:39'),
(98, '600000', 1, 'Le khang', '0917306878', 'Lekhang025@gmail.com', 'tp-ho-chi-minh', '154/4/45 nguyễn phúc chu p 15 quận tân bình hcm', 'Gọi trước khi giao', '600000', NULL, '2019-04-21 23:58:55', '2019-04-21 23:58:55'),
(99, '350000', 1, 'dasdas', '912957368', '', 'ha-noi', 'dsa', 'dd', '350000', '2019-04-26 01:43:11', '2019-04-23 02:30:18', '2019-04-26 01:43:11'),
(100, '450000', 1, 'Lê Văn Thành', '0937840656', '', 'tp-ho-chi-minh', '21/1.Đ7.KP5.P LINH XUÂN.Q THỦ ĐỨC TPHCM', 'Vòng 10Ly', '450000', NULL, '2019-04-24 03:32:44', '2019-04-24 03:32:44'),
(101, '350000', 1, 'Le hong', '0939879221', '', 'tp-ho-chi-minh', 'Binh chanh tphcm', '', '350000', NULL, '2019-05-06 12:44:18', '2019-05-06 12:44:18'),
(102, '600000', 1, 'LÊ ĐÌNH HUY', '0797197236', '', 'ba-ria-vung-tau', '96/5 Nhân Phước, xuyên mộc, xuyên mộc', '', '600000', NULL, '2019-05-09 17:31:02', '2019-05-09 17:31:02'),
(103, '600000', 1, 'Trà văn bột ', '0912191914', '', 'ha-noi', '390D Đường cây trôm mỹ khánh xã tháy mỹ huyện củ chi TPHCM ', '', '600000', NULL, '2019-06-10 00:21:00', '2019-06-10 00:21:00'),
(104, '600000', 1, 'Linh tran', '0942222359', 'Linhtran8876@gmail.com', 'ha-noi', 'Số nhà 105b7 ngõ 8a phố hoàng ngọc phách đống đa hnoi', '', '600000', NULL, '2019-06-13 01:09:09', '2019-06-13 01:09:09'),
(105, '900000', 1, 'NGUYỄN TRIỀU THANH ', '0829139193', 'thanhtrieu201010@gmail.com ', 'tp-ho-chi-minh', 'Số 1 Võ Văn Tần, tòa nhà điện lực Sài Gòn p6 q3 ', 'Giao sớm dùm được k shop', '900000', NULL, '2019-06-29 12:54:06', '2019-06-29 12:54:06'),
(106, '600000', 1, 'Vũ Phong ', '0385402999', '', 'ha-noi', 'Thôn châu phong xã liên hà đông anh hà nội ', '', '600000', NULL, '2019-07-04 01:30:01', '2019-07-04 01:30:01'),
(107, '350000', 1, 'Trần thị hồng thu', '0376747778', '', 'quang-ngai', 'Ubnd p. Trần phú, tp quảng ngãi', '', '350000', NULL, '2019-07-08 04:14:35', '2019-07-08 04:14:35'),
(108, '350000', 1, 'Lê thi Diêu', '0932016356', '', 'ha-noi', '2581/53/1/50 huynh tân phat.huyen nha be .hcm', '', '350000', NULL, '2019-07-22 16:37:09', '2019-07-22 16:37:09'),
(109, '180000', 1, 'Tran thi ngoc an', '0989774854', 'Ngocan1973@gmail.com', 'ha-noi', '214/21 N nguyen van nguyen q1 ', '', '180000', NULL, '2019-08-22 23:45:30', '2019-08-22 23:45:30'),
(110, '600000', 1, 'Nguyễn Thuận ', '0902637655', '', 'tp-ho-chi-minh', '74 Nguyễn Thiện Thuật p2 q 3', '', '600000', NULL, '2019-08-25 16:15:08', '2019-08-25 16:15:08'),
(111, '450000', 1, 'hung', '0949998587', '', 'ha-noi', '663 trương định', 'dgdgdg', '450000', '2019-09-17 22:49:13', '2019-09-17 14:28:55', '2019-09-17 22:49:13'),
(112, '600000', 1, 'Hường', '0946861207', '', 'ha-noi', '663 trương định', 'Test', '600000', '2019-09-17 22:49:18', '2019-09-17 20:18:40', '2019-09-17 22:49:18'),
(113, '450000', 1, 'Vũ Thị Thu Hiền', '0376603338', '', 'ha-noi', 'Nhà A khoa Nông học, Học viện Nông nghiệp Việt Nam, Trâu quỳ, gia Lâm ,Hà nội', '', '450000', NULL, '2019-09-18 11:46:16', '2019-09-18 11:46:16'),
(114, '550000', 1, 'Hung', '09636364', '', 'ha-noi', '663 truong dinh', '', '550000', '2019-09-18 18:39:56', '2019-09-18 15:01:39', '2019-09-18 18:39:56'),
(115, '450000', 1, 'Trần Thái Thuận', '0949008688', '', 'binh-thuan', '347 thủ khoa huân, Phan Thiết, Bình Thuận', '', '450000', NULL, '2019-09-19 18:35:49', '2019-09-19 18:35:49'),
(116, '900000', 1, 'Hoa Phạm ', '0934090018', '', 'tp-ho-chi-minh', '11/3 Ba sa , ap cây trôm xã phước hiệp củ chi', '', '900000', NULL, '2019-09-19 23:06:51', '2019-09-19 23:06:51'),
(117, '1000000', 1, 'hung', '0949998587', '', 'ha-noi', '663 trương định', '', '1000000', '2019-09-20 18:03:09', '2019-09-20 17:58:25', '2019-09-20 18:03:09'),
(118, '550000', 1, 'Hung', '0949998587', '', 'ha-noi', '663 trương định', '', '550000', '2019-09-22 13:28:52', '2019-09-22 01:06:09', '2019-09-22 13:28:52'),
(119, '450000', 1, 'Trinh thanh van', '0905784255', '', 'da-nang', '189đà sơn p hoà khánh nam quận liên chiểu ', '', '450000', NULL, '2019-09-22 01:46:14', '2019-09-22 01:46:14'),
(120, '600000', 1, 'Nguyen Phuoc duy duc', '0989577699', '', 'kien-giang', '196 Nguyen trung trực. Dương đông, phú quốc', '', '600000', NULL, '2019-09-22 21:30:58', '2019-09-22 21:30:58'),
(121, '450000', 1, 'Nam', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', '663 trương định', '', '450000', '2019-09-23 20:21:04', '2019-09-23 19:22:38', '2019-09-23 20:21:04'),
(122, '550000', 1, 'htdfjfg', '0935338533', '', 'ha-noi', 'jhgkjgkghk', '', '550000', '2019-09-24 17:27:00', '2019-09-24 17:08:58', '2019-09-24 17:27:00'),
(123, '1000000', 1, 'Nguyễn thành phát ', '0913745737', '', 'tp-ho-chi-minh', '3/38ấp nam thới xã thới tam thôn huyện hóc ', '', '1000000', NULL, '2019-09-25 15:39:17', '2019-09-25 15:39:17'),
(124, '400000', 1, 'hung', '0949998587', '', 'ha-noi', '663 trương định', 'ok', '400000', '2019-09-25 19:14:26', '2019-09-25 19:14:13', '2019-09-25 19:14:26'),
(125, '450000', 1, 'Toi', '0867431876', '', 'ha-noi', 'Tuliem', '', '450000', NULL, '2019-09-29 16:38:23', '2019-09-29 16:38:23'),
(126, '750000', 1, 'Nguyen duy khanh', '0934182089', '', 'ha-noi', '141 đỗ pháp thuận phường an phú quận 2 thành phố hồ chí minh', 'Cho phép được xem hàng', '750000', NULL, '2019-09-30 03:37:01', '2019-09-30 03:37:01'),
(127, '550000', 1, 'Nguyễn Tuấn', '0916677809', '', 'tp-ho-chi-minh', '51 Nguyễn Thị Minh Khai, phường Bến Nghé, Q.1', '', '550000', NULL, '2019-10-01 00:32:09', '2019-10-01 00:32:09'),
(128, '850000', 1, 'Le thanh dat', '0907852662', '', 'ha-noi', '730/1/2 hung lo2.p-binh tri đong. Q-binh tan . TP-Ho chi minh', '', '850000', NULL, '2019-10-07 22:47:13', '2019-10-07 22:47:13'),
(129, '450000', 1, 'Nam', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', '663 trương định', '', '450000', '2019-10-08 16:20:19', '2019-10-08 01:04:53', '2019-10-08 16:20:19'),
(130, '850000', 1, 'A Viễn', '0386043776', 'Viendoduy@gmail.com', 'ha-noi', '1403.qlô 20 Bảo Lộc Lâm Đồng ', '12mm', '850000', NULL, '2019-10-08 16:26:22', '2019-10-08 16:26:22'),
(131, '550000', 1, 'Nguyễn Tuấn', '0916677809', '', 'tp-ho-chi-minh', '51 Nguyễn Thị Minh Khai, phường Bến Nghé, Quận 1', 'Giao hàng giờ hành chính.', '550000', NULL, '2019-10-09 01:09:31', '2019-10-09 01:09:31'),
(132, '1080000', 1, 'Nguyễn Ngọc Thương', '0911193259', '', 'tp-ho-chi-minh', '25/3a giải phóng phường 4 quận Tân Bình', '', '1200000', NULL, '2019-10-09 14:00:49', '2019-10-09 14:00:49'),
(133, '1620000', 1, 'Trần Nhân', '0908184896', '', 'binh-duong', '633/3, Đường Làng, An Thuận, Phú An, Bến Cát', '', '1800000', NULL, '2019-10-09 14:38:09', '2019-10-09 14:38:09'),
(134, '450000', 1, 'duoc', '0904492298', 'thongphongduoc@gmail.com', 'ha-noi', '283 ngo quynh', '', '450000', '2019-10-09 18:29:18', '2019-10-09 18:07:13', '2019-10-09 18:29:18'),
(135, '850000', 1, 'Trần Xuân Trọng Thủy', '0969243546', '', 'ha-noi', 'M2.0803 chung cư Vinhomes Metropolis, 29 Liễu giai, Ba đình, Hà nồi', '', '850000', NULL, '2019-10-09 18:47:31', '2019-10-09 18:47:31'),
(136, '400000', 1, 'Hung', '0949998587', '', 'ha-noi', '663 trương định', '', '400000', '2019-10-10 00:42:19', '2019-10-09 20:21:21', '2019-10-10 00:42:19'),
(137, '450000', 1, 'hung', '0949998587', '', 'ha-noi', '663 trương dịnh', '', '450000', '2019-10-10 12:36:05', '2019-10-10 12:35:47', '2019-10-10 12:36:05'),
(138, '850000', 1, 'Hiệp Phạm', '0913777479', '', 'tp-ho-chi-minh', '272 Trần Đại Nghĩa P.Tân Tạo A Q. Bình Tân', '', '850000', NULL, '2019-10-10 12:54:04', '2019-10-10 12:54:04'),
(139, '900000', 1, 'Đinh Quốc Tuấn', '0906349799', '', 'vinh-long', 'Số 104A Tổ 7 ,Giồng Thanh Bạch ,Thiện Mỹ ,Trà Ôn ,Vĩnh Long', '', '900000', NULL, '2019-10-10 18:59:57', '2019-10-10 18:59:57'),
(140, '1000000', 1, 'Tiến nguyễn', '0972123417', '', 'long-an', ') ấp 4 ,xã tân bửu ,,huyện bến lức ,tinh Long an', 'Giao hang đầu gio chiều ,dt trước ', '1000000', NULL, '2019-10-10 19:17:03', '2019-10-10 19:17:03'),
(141, '450000', 1, 'huyen kim', '0969229835', '', 'ha-nam', 'xóm 2 ba sao kim bảng ha nam', '', '450000', NULL, '2019-10-11 02:30:44', '2019-10-11 02:30:44'),
(142, '450000', 1, 'Mua hàng', '0987679991', 'hhh@gmail.com', 'ha-noi', 'Mua hơi lăng nhằng đó nhé, làm lại landing đi', '', '450000', NULL, '2019-10-13 08:07:15', '2019-10-13 08:07:15'),
(143, '600000', 1, 'Trần Nam', '0838900099', '', 'soc-trang', '430 Tôn Đức Thắng, phường 5, TP Sóc Trăng ', '', '600000', NULL, '2019-10-13 17:40:45', '2019-10-13 17:40:45'),
(144, '900000', 1, 'Trần vũ Thanh Bình ', '0915227304', '', 'quang-nam', '521 Phạm Văn Đồng .núi thành. Quảng Nam ', '', '900000', NULL, '2019-10-14 20:07:25', '2019-10-14 20:07:25'),
(145, '900000', 1, 'Nguyễn Đức Anh', '0933348800', '', 'tp-ho-chi-minh', '805 phan văn trị, phường 7, quận gò vấp', 'Giao hàng buổi sáng', '900000', NULL, '2019-10-15 01:38:06', '2019-10-15 01:38:06'),
(146, '700000', 1, 'Nam', '0949998587', 'hungnnkts@gmail.com', 'ha-noi', '663 trương định', '', '700000', '2019-10-19 12:05:20', '2019-10-19 02:36:41', '2019-10-19 12:05:20'),
(147, '600000', 1, 'Nguyễn  thi bạch Huệ ', '0764414008', '', 'tp-ho-chi-minh', '356A Lê Đức Thọ f 06 gò vấp', '', '600000', NULL, '2019-10-19 18:59:05', '2019-10-19 18:59:05'),
(148, '450000', 1, 'Damisu', '0909678006', '', 'tp-ho-chi-minh', '31 đường 13 phường Hiệp binh chanh quan thu Đức ', 'Can hát 10 ly', '450000', NULL, '2019-10-20 00:29:09', '2019-10-20 00:29:09'),
(149, '700000', 1, 'Đỗ thị Điển', '0918620889', '', 'dong-nai', 'số 6 đường 3 tháng2 kp4 tt Trảng bom h Trảng bom đồng nai', '', '700000', NULL, '2019-10-20 03:02:23', '2019-10-20 03:02:23'),
(150, '600000', 1, 'Lê Thái', '0905333031', '', 'quang-nam', 'Chợ La Thọ- Điện Hòa -Điện Bàn- Quảng Nam', '', '600000', NULL, '2019-10-20 15:13:25', '2019-10-20 15:13:25'),
(151, '600000', 1, 'Lưu hung sanh', '0968795332', '', 'tp-ho-chi-minh', '457/4/10 lê văn thọ p 9 gò vấp', '', '600000', NULL, '2019-10-20 16:46:22', '2019-10-20 16:46:22'),
(152, '1000000', 1, 'Trần thanh minh ', '0942859995', 'Thanhminh520@gmail.com', 'da-nang', '412núi thành phường hòa cường bắc quận hải châu Đà Nẵng ', '', '1000000', NULL, '2019-10-20 17:28:07', '2019-10-20 17:28:07'),
(153, '450000', 1, 'Duong dong thuong', '0905982973', '41/16. Luong van can. F15. Q8. Tp hcm', 'ha-noi', '41/16. Luong van can. F15. Q8. Tp hcm', '', '450000', NULL, '2019-10-20 17:45:38', '2019-10-20 17:45:38'),
(154, '850000', 1, 'Lam han dan', '0903800651', 'Ming.jadeluck@gmail.com', 'tp-ho-chi-minh', '2977/10/2b kp,5 Ql,1a p,tan thoi nhat q,12', '', '850000', NULL, '2019-10-20 23:46:29', '2019-10-20 23:46:29'),
(155, '450000', 1, 'Đặng thanh mai', '0932269508', '', 'ha-noi', '175 tây sơn, đống đa, hn', '', '450000', NULL, '2019-10-21 12:35:01', '2019-10-21 12:35:01'),
(156, '400000', 1, 'Hung', '0949998587', '', 'ha-noi', '663 trương định', '', '400000', '2019-10-21 19:52:41', '2019-10-21 19:52:13', '2019-10-21 19:52:41'),
(157, '810000', 1, 'Trần thị ngọc Chính', '0963965252', 'Ngocchinh.kt@gmail.vom', 'bac-ninh', 'Nhà máy sản xuất - công ty TNHH vietnam hair, lô D20 Cụm Công Nghiệp Đa Nghề Đông Thọ, Huyện Yên Phong, Tỉnh Bắc Ninh (gần cuối đường đôi số 2)', '', '900000', NULL, '2019-10-22 22:10:18', '2019-10-22 22:10:18'),
(158, '550000', 1, 'Hung', '0949998587', '', 'ha-noi', '663 trương định', 'Test', '550000', '2019-10-22 23:29:57', '2019-10-22 22:30:46', '2019-10-22 23:29:57'),
(159, '600000', 1, 'Nguyễn thị kim phượng ', '0903876022', '', 'tp-ho-chi-minh', '5.6D2 chung cư mỹ đức 220xvnt p21 q bình thạnh ', '', '600000', NULL, '2019-10-23 01:43:56', '2019-10-23 01:43:56'),
(160, '750000', 1, 'Nguyễn huy hoàng', '0868174255', '', 'ha-noi', '66 ngõ núi trúc', '', '750000', NULL, '2019-10-23 03:12:14', '2019-10-23 03:12:14'),
(161, '400000', 1, 'Nguyen hoang nam', '0835858252', '', 'ha-noi', 'Cty bao bi minh quang duong so4va8 kcn song than 3 p phu tan tp thu dau mot tinh binh duong', '', '400000', NULL, '2019-10-23 17:58:42', '2019-10-23 17:58:42'),
(162, '850000', 1, 'Nguyễn Minh Chánh ', '0903728813', '', 'tp-ho-chi-minh', '224 Phan Anh,Tân Thới Hoà,Tân Phú ', 'Cổ tay 18,5cm nha', '850000', NULL, '2019-10-24 17:25:17', '2019-10-24 17:25:17'),
(163, '450000', 1, 'Bui van hoa', '0384112550', '', 'dong-nai', 'Ap 5 xa phu dien huyen tam phu tinh dong nai', 'Goi dung hang mghe sop.', '450000', NULL, '2019-10-24 20:21:56', '2019-10-24 20:21:56'),
(164, '450000', 1, 'hung', '0949998587', '', 'ha-noi', '663 trương định', '', '450000', '2019-10-25 19:04:16', '2019-10-25 19:04:03', '2019-10-25 19:04:16'),
(165, '450000', 1, 'Do binh yen', '0359382589', '', 'ha-noi', 'Cho tinh bien ag', '', '450000', NULL, '2019-10-26 04:22:51', '2019-10-26 04:22:51'),
(166, '450000', 1, 'Nguyễn công Nhật ', '0919822828', '', 'ha-noi', '356 Nguyễn trung trực phường Vĩnh lạc TP rạch giá kiên ', '', '450000', NULL, '2019-10-27 23:00:18', '2019-10-27 23:00:18'),
(167, '3240000', 1, 'Hung', '837734', '', 'ha-noi', 'Yêuur', '', '3600000', NULL, '2019-10-30 00:26:16', '2019-10-30 00:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `status`, `image_url`, `color`, `code`, `text`, `quantity`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '/product/sp-tim.jpg', 'tím', 'WISE50002', 'Wax vuốt đổi màu tóc cao cấp từ Nhật Bản', NULL, '250000', '2019-03-08 18:12:55', '2019-03-08 07:06:01', '2019-03-08 18:12:55'),
(2, NULL, 'product/sp-do.jpg', 'đỏ', 'WISE50002', 'Wax vuốt đổi màu tóc cao cấp từ Nhật Bản', NULL, '250000', '2019-03-08 18:13:01', '2019-03-08 07:13:46', '2019-03-08 18:13:01'),
(3, NULL, 'product/47323887_2102204676563575_2069237706168205312_n.png', 'Tặng kèm mẫu vàng nguyên chất', 'Cỡ 8ly', 'VÒNG TAY VÀNG NGUYÊN CHẤT PHỦ RESIN', NULL, '350000', '2019-03-26 18:50:15', '2019-03-08 18:13:42', '2019-03-26 18:50:15'),
(4, NULL, 'product/47323887_2102204676563575_2069237706168205312_n.png', 'Tặng kèm mẫu vàng nguyên chất', 'Cỡ 10ly', 'Vòng tay vàng nguyên chất ', NULL, '450000', '2019-03-26 18:50:22', '2019-03-08 18:13:59', '2019-03-26 18:50:22'),
(5, NULL, 'product/47323887_2102204676563575_2069237706168205312_n.png', 'Tặng kèm mẫu vàng nguyên chất', 'Cỡ 12ly', 'Vòng tay vàng nguyên chất ', NULL, '600000', '2019-03-26 18:50:24', '2019-03-14 14:02:55', '2019-03-26 18:50:24'),
(6, NULL, 'product/47323887_2102204676563575_2069237706168205312_n.png', 'Tặng kèm mẫu vàng nguyên chất', 'Cỡ 14ly', 'Vòng tay vàng nguyên chất ', NULL, '750000', '2019-03-26 18:50:26', '2019-03-14 14:04:04', '2019-03-26 18:50:26'),
(7, NULL, 'product/47323887_2102204676563575_2069237706168205312_n.png', 'Tặng kèm mẫu vàng nguyên chất', 'Cỡ 16ly', 'Vòng tay vàng nguyên chất ', NULL, '900000', '2019-03-26 18:50:29', '2019-03-14 14:04:22', '2019-03-26 18:50:29'),
(8, NULL, 'product/1.png', 'Hạt mài Facet 128 mặt/1 hạt', 'Cỡ 6ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '450000', NULL, '2019-03-26 18:50:55', '2019-09-13 01:39:43'),
(9, NULL, 'product/F2.png', 'Hạt mài Facet 128 mặt/1 hạt', 'Cỡ 8ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '600000', NULL, '2019-03-26 18:57:58', '2019-09-13 13:13:24'),
(10, NULL, 'product/F3.png', 'Hạt mài Facet 128 mặt/1 hạt', 'Cỡ 10ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '750000', NULL, '2019-03-26 18:58:22', '2019-09-13 13:13:39'),
(11, NULL, 'product/F4.png', 'Hạt mài Facet 128 mặt/1 hạt', 'Cỡ 12ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '900000', NULL, '2019-03-26 18:58:39', '2019-09-13 13:13:58'),
(12, NULL, 'product/T1.png', 'Hạt tròn trơn', 'Cỡ 6ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '400000', NULL, '2019-03-26 18:58:57', '2019-09-13 13:14:12'),
(13, NULL, 'product/T2.png', 'Hạt tròn trơn', 'Cỡ 8ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '550000', NULL, '2019-04-19 19:36:20', '2019-09-13 13:14:24'),
(14, NULL, 'product/T3.png', 'Hạt tròn trơn', 'Cỡ 10ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '700000', NULL, '2019-04-19 19:38:28', '2019-09-13 13:14:37'),
(15, NULL, 'product/T4.png', 'Hạt tròn trơn', 'Cỡ 12ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '850000', NULL, '2019-04-19 19:38:50', '2019-09-13 13:14:50'),
(16, NULL, 'product/T5.png', 'Hạt tròn trơn', 'Cỡ 14ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '1000000', NULL, '2019-09-13 01:43:55', '2019-09-13 13:15:02'),
(17, NULL, 'product/T6.png', 'Hạt tròn trơn', 'Cỡ 16ly', 'VÒNG TAY ĐÁ TERAHERTZ', NULL, '1200000', NULL, '2019-09-13 01:44:18', '2019-09-13 13:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=168 ;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `product_id`, `order_id`, `quantity`, `price`, `total_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2', '450000', '900000', NULL, '2019-03-13 03:12:46', '2019-03-13 03:12:46'),
(2, 4, 2, '2', '450000', '900000', NULL, '2019-03-14 00:36:59', '2019-03-14 00:36:59'),
(3, 4, 3, '3', '450000', '1350000', NULL, '2019-03-14 00:42:22', '2019-03-14 00:42:22'),
(4, 4, 4, '3', '450000', '1350000', NULL, '2019-03-14 00:43:46', '2019-03-14 00:43:46'),
(5, 4, 5, '3', '450000', '1350000', NULL, '2019-03-14 00:43:52', '2019-03-14 00:43:52'),
(6, 4, 6, '3', '450000', '1350000', NULL, '2019-03-14 00:43:57', '2019-03-14 00:43:57'),
(7, 4, 7, '2', '450000', '900000', NULL, '2019-03-14 01:35:59', '2019-03-14 01:35:59'),
(8, 4, 8, '2', '450000', '900000', NULL, '2019-03-14 01:36:45', '2019-03-14 01:36:45'),
(9, 4, 9, '2', '450000', '900000', NULL, '2019-03-14 01:40:39', '2019-03-14 01:40:39'),
(10, 3, 10, '2', '350000', '700000', NULL, '2019-03-14 03:25:41', '2019-03-14 03:25:41'),
(11, 3, 11, '2', '350000', '700000', NULL, '2019-03-14 14:12:51', '2019-03-14 14:12:51'),
(12, 3, 12, '2', '350000', '700000', NULL, '2019-03-14 14:14:11', '2019-03-14 14:14:11'),
(13, 7, 13, '1', '900000', '900000', NULL, '2019-03-18 17:07:34', '2019-03-18 17:07:34'),
(14, 3, 14, '1', '350000', '350000', NULL, '2019-03-20 01:19:49', '2019-03-20 01:19:49'),
(15, 3, 15, '1', '350000', '350000', NULL, '2019-03-20 01:37:14', '2019-03-20 01:37:14'),
(16, 3, 16, '1', '350000', '350000', NULL, '2019-03-20 01:38:11', '2019-03-20 01:38:11'),
(17, 3, 17, '1', '350000', '350000', NULL, '2019-03-20 01:40:41', '2019-03-20 01:40:41'),
(18, 3, 18, '1', '350000', '350000', NULL, '2019-03-20 01:44:56', '2019-03-20 01:44:56'),
(19, 3, 19, '1', '350000', '350000', NULL, '2019-03-20 01:45:16', '2019-03-20 01:45:16'),
(20, 3, 20, '1', '350000', '350000', NULL, '2019-03-20 02:09:28', '2019-03-20 02:09:28'),
(21, 3, 21, '1', '350000', '350000', NULL, '2019-03-20 03:26:20', '2019-03-20 03:26:20'),
(22, 3, 22, '1', '350000', '350000', NULL, '2019-03-20 14:02:12', '2019-03-20 14:02:12'),
(23, 3, 23, '1', '350000', '350000', NULL, '2019-03-20 14:03:18', '2019-03-20 14:03:18'),
(24, 3, 24, '1', '350000', '350000', NULL, '2019-03-20 14:09:53', '2019-03-20 14:09:53'),
(25, 3, 25, '1', '350000', '350000', NULL, '2019-03-20 14:14:20', '2019-03-20 14:14:20'),
(26, 3, 26, '1', '350000', '350000', NULL, '2019-03-20 14:18:37', '2019-03-20 14:18:37'),
(27, 3, 27, '1', '350000', '350000', NULL, '2019-03-20 14:21:21', '2019-03-20 14:21:21'),
(28, 3, 28, '1', '350000', '350000', NULL, '2019-03-20 17:44:28', '2019-03-20 17:44:28'),
(29, 3, 29, '1', '350000', '350000', NULL, '2019-03-22 01:27:50', '2019-03-22 01:27:50'),
(30, 3, 30, '1', '350000', '350000', NULL, '2019-03-23 00:28:22', '2019-03-23 00:28:22'),
(31, 3, 31, '1', '350000', '350000', NULL, '2019-03-23 00:32:10', '2019-03-23 00:32:10'),
(32, 3, 32, '1', '350000', '350000', NULL, '2019-03-23 00:38:01', '2019-03-23 00:38:01'),
(33, 3, 33, '1', '350000', '350000', NULL, '2019-03-23 00:40:41', '2019-03-23 00:40:41'),
(34, 3, 34, '1', '350000', '350000', NULL, '2019-03-23 00:43:34', '2019-03-23 00:43:34'),
(35, 3, 35, '1', '350000', '350000', NULL, '2019-03-23 00:43:44', '2019-03-23 00:43:44'),
(36, 3, 36, '1', '350000', '350000', NULL, '2019-03-23 00:44:46', '2019-03-23 00:44:46'),
(37, 3, 37, '1', '350000', '350000', NULL, '2019-03-23 00:49:09', '2019-03-23 00:49:09'),
(38, 3, 38, '1', '350000', '350000', NULL, '2019-03-23 00:50:04', '2019-03-23 00:50:04'),
(39, 3, 39, '1', '350000', '350000', NULL, '2019-03-23 00:51:46', '2019-03-23 00:51:46'),
(40, 3, 40, '1', '350000', '350000', NULL, '2019-03-23 00:53:45', '2019-03-23 00:53:45'),
(41, 3, 41, '1', '350000', '350000', NULL, '2019-03-23 00:55:42', '2019-03-23 00:55:42'),
(42, 3, 42, '1', '350000', '350000', NULL, '2019-03-23 00:58:55', '2019-03-23 00:58:55'),
(43, 3, 43, '1', '350000', '350000', NULL, '2019-03-23 01:02:13', '2019-03-23 01:02:13'),
(44, 3, 44, '1', '350000', '350000', NULL, '2019-03-23 01:05:05', '2019-03-23 01:05:05'),
(45, 3, 45, '1', '350000', '350000', NULL, '2019-03-23 01:18:05', '2019-03-23 01:18:05'),
(46, 3, 46, '1', '350000', '350000', NULL, '2019-03-23 01:18:26', '2019-03-23 01:18:26'),
(47, 3, 47, '1', '350000', '350000', NULL, '2019-03-23 01:19:14', '2019-03-23 01:19:14'),
(48, 3, 48, '1', '350000', '350000', NULL, '2019-03-23 01:20:33', '2019-03-23 01:20:33'),
(49, 3, 49, '1', '350000', '350000', NULL, '2019-03-23 01:20:46', '2019-03-23 01:20:46'),
(50, 3, 50, '1', '350000', '350000', NULL, '2019-03-23 01:47:31', '2019-03-23 01:47:31'),
(51, 3, 51, '1', '350000', '350000', NULL, '2019-03-23 01:48:17', '2019-03-23 01:48:17'),
(52, 3, 52, '1', '350000', '350000', NULL, '2019-03-23 01:49:13', '2019-03-23 01:49:13'),
(53, 3, 53, '1', '350000', '350000', NULL, '2019-03-23 01:51:57', '2019-03-23 01:51:57'),
(54, 3, 54, '1', '350000', '350000', NULL, '2019-03-23 01:53:10', '2019-03-23 01:53:10'),
(55, 3, 55, '1', '350000', '350000', NULL, '2019-03-23 01:54:22', '2019-03-23 01:54:22'),
(56, 3, 56, '1', '350000', '350000', NULL, '2019-03-23 01:58:29', '2019-03-23 01:58:29'),
(57, 3, 57, '1', '350000', '350000', NULL, '2019-03-23 02:00:00', '2019-03-23 02:00:00'),
(58, 3, 58, '1', '350000', '350000', NULL, '2019-03-23 02:01:35', '2019-03-23 02:01:35'),
(59, 3, 59, '1', '350000', '350000', NULL, '2019-03-23 02:03:36', '2019-03-23 02:03:36'),
(60, 3, 60, '1', '350000', '350000', NULL, '2019-03-23 02:07:35', '2019-03-23 02:07:35'),
(61, 3, 61, '1', '350000', '350000', NULL, '2019-03-23 02:08:37', '2019-03-23 02:08:37'),
(62, 3, 62, '1', '350000', '350000', NULL, '2019-03-23 02:10:51', '2019-03-23 02:10:51'),
(63, 3, 63, '1', '350000', '350000', NULL, '2019-03-23 02:11:38', '2019-03-23 02:11:38'),
(64, 3, 64, '1', '350000', '350000', NULL, '2019-03-23 02:15:49', '2019-03-23 02:15:49'),
(65, 3, 65, '1', '350000', '350000', NULL, '2019-03-23 02:17:40', '2019-03-23 02:17:40'),
(66, 3, 66, '1', '350000', '350000', NULL, '2019-03-23 02:20:07', '2019-03-23 02:20:07'),
(67, 3, 67, '1', '350000', '350000', NULL, '2019-03-23 02:25:35', '2019-03-23 02:25:35'),
(68, 3, 68, '1', '350000', '350000', NULL, '2019-03-23 02:30:03', '2019-03-23 02:30:03'),
(69, 3, 69, '1', '350000', '350000', NULL, '2019-03-23 02:33:37', '2019-03-23 02:33:37'),
(70, 3, 70, '1', '350000', '350000', NULL, '2019-03-23 02:40:14', '2019-03-23 02:40:14'),
(71, 3, 71, '1', '350000', '350000', NULL, '2019-03-23 02:42:24', '2019-03-23 02:42:24'),
(72, 3, 72, '1', '350000', '350000', NULL, '2019-03-23 02:43:58', '2019-03-23 02:43:58'),
(73, 3, 73, '1', '350000', '350000', NULL, '2019-03-23 02:46:01', '2019-03-23 02:46:01'),
(74, 3, 74, '1', '350000', '350000', NULL, '2019-03-23 02:46:39', '2019-03-23 02:46:39'),
(75, 3, 75, '1', '350000', '350000', NULL, '2019-03-23 02:50:51', '2019-03-23 02:50:51'),
(76, 3, 76, '1', '350000', '350000', NULL, '2019-03-23 02:53:10', '2019-03-23 02:53:10'),
(77, 3, 77, '1', '350000', '350000', NULL, '2019-03-23 02:56:58', '2019-03-23 02:56:58'),
(78, 3, 78, '1', '350000', '350000', NULL, '2019-03-23 03:00:26', '2019-03-23 03:00:26'),
(79, 3, 79, '1', '350000', '350000', NULL, '2019-03-23 03:01:13', '2019-03-23 03:01:13'),
(80, 3, 80, '1', '350000', '350000', NULL, '2019-03-23 03:08:26', '2019-03-23 03:08:26'),
(81, 7, 81, '3', '900000', '2700000', NULL, '2019-03-23 03:11:11', '2019-03-23 03:11:11'),
(82, 4, 82, '1', '450000', '450000', NULL, '2019-03-23 14:13:12', '2019-03-23 14:13:12'),
(83, 4, 83, '1', '450000', '450000', NULL, '2019-03-25 13:48:28', '2019-03-25 13:48:28'),
(84, 8, 84, '2', '350000', '700000', NULL, '2019-04-02 12:38:35', '2019-04-02 12:38:35'),
(85, 8, 85, '1', '350000', '350000', NULL, '2019-04-06 00:46:45', '2019-04-06 00:46:45'),
(86, 8, 86, '1', '350000', '350000', NULL, '2019-04-06 00:47:03', '2019-04-06 00:47:03'),
(87, 12, 87, '1', '900000', '900000', NULL, '2019-04-08 17:05:16', '2019-04-08 17:05:16'),
(88, 8, 88, '1', '350000', '350000', NULL, '2019-04-09 21:30:38', '2019-04-09 21:30:38'),
(89, 11, 89, '1', '750000', '750000', NULL, '2019-04-11 01:17:30', '2019-04-11 01:17:30'),
(90, 9, 90, '1', '450000', '450000', NULL, '2019-04-18 18:01:11', '2019-04-18 18:01:11'),
(91, 8, 91, '1', '350000', '350000', NULL, '2019-04-18 18:04:40', '2019-04-18 18:04:40'),
(92, 10, 92, '1', '600000', '600000', NULL, '2019-04-19 00:00:15', '2019-04-19 00:00:15'),
(93, 10, 93, '1', '600000', '600000', NULL, '2019-04-19 02:13:30', '2019-04-19 02:13:30'),
(94, 12, 94, '1', '900000', '900000', NULL, '2019-04-19 02:28:22', '2019-04-19 02:28:22'),
(95, 12, 95, '1', '900000', '900000', NULL, '2019-04-19 02:30:46', '2019-04-19 02:30:46'),
(96, 9, 96, '1', '450000', '450000', NULL, '2019-04-19 02:32:23', '2019-04-19 02:32:23'),
(97, 8, 97, '1', '350000', '350000', NULL, '2019-04-19 13:51:39', '2019-04-19 13:51:39'),
(98, 10, 98, '1', '600000', '600000', NULL, '2019-04-21 23:58:55', '2019-04-21 23:58:55'),
(99, 8, 99, '1', '350000', '350000', NULL, '2019-04-23 02:30:18', '2019-04-23 02:30:18'),
(100, 9, 100, '1', '450000', '450000', NULL, '2019-04-24 03:32:44', '2019-04-24 03:32:44'),
(101, 8, 101, '1', '350000', '350000', NULL, '2019-05-06 12:44:18', '2019-05-06 12:44:18'),
(102, 10, 102, '1', '600000', '600000', NULL, '2019-05-09 17:31:02', '2019-05-09 17:31:02'),
(103, 10, 103, '1', '600000', '600000', NULL, '2019-06-10 00:21:00', '2019-06-10 00:21:00'),
(104, 10, 104, '1', '600000', '600000', NULL, '2019-06-13 01:09:09', '2019-06-13 01:09:09'),
(105, 12, 105, '1', '900000', '900000', NULL, '2019-06-29 12:54:06', '2019-06-29 12:54:06'),
(106, 10, 106, '1', '600000', '600000', NULL, '2019-07-04 01:30:01', '2019-07-04 01:30:01'),
(107, 8, 107, '1', '350000', '350000', NULL, '2019-07-08 04:14:35', '2019-07-08 04:14:35'),
(108, 8, 108, '1', '350000', '350000', NULL, '2019-07-22 16:37:09', '2019-07-22 16:37:09'),
(109, 14, 109, '1', '180000', '180000', NULL, '2019-08-22 23:45:30', '2019-08-22 23:45:30'),
(110, 10, 110, '1', '600000', '600000', NULL, '2019-08-25 16:15:08', '2019-08-25 16:15:08'),
(111, 8, 111, '1', '450000', '450000', NULL, '2019-09-17 14:28:55', '2019-09-17 14:28:55'),
(112, 9, 112, '1', '600000', '600000', NULL, '2019-09-17 20:18:40', '2019-09-17 20:18:40'),
(113, 8, 113, '1', '450000', '450000', NULL, '2019-09-18 11:46:16', '2019-09-18 11:46:16'),
(114, 13, 114, '1', '550000', '550000', NULL, '2019-09-18 15:01:39', '2019-09-18 15:01:39'),
(115, 8, 115, '1', '450000', '450000', NULL, '2019-09-19 18:35:49', '2019-09-19 18:35:49'),
(116, 11, 116, '1', '900000', '900000', NULL, '2019-09-19 23:06:51', '2019-09-19 23:06:51'),
(117, 16, 117, '1', '1000000', '1000000', NULL, '2019-09-20 17:58:25', '2019-09-20 17:58:25'),
(118, 13, 118, '1', '550000', '550000', NULL, '2019-09-22 01:06:09', '2019-09-22 01:06:09'),
(119, 8, 119, '1', '450000', '450000', NULL, '2019-09-22 01:46:14', '2019-09-22 01:46:14'),
(120, 9, 120, '1', '600000', '600000', NULL, '2019-09-22 21:30:58', '2019-09-22 21:30:58'),
(121, 8, 121, '1', '450000', '450000', NULL, '2019-09-23 19:22:38', '2019-09-23 19:22:38'),
(122, 13, 122, '1', '550000', '550000', NULL, '2019-09-24 17:08:58', '2019-09-24 17:08:58'),
(123, 16, 123, '1', '1000000', '1000000', NULL, '2019-09-25 15:39:18', '2019-09-25 15:39:18'),
(124, 12, 124, '1', '400000', '400000', NULL, '2019-09-25 19:14:13', '2019-09-25 19:14:13'),
(125, 8, 125, '1', '450000', '450000', NULL, '2019-09-29 16:38:23', '2019-09-29 16:38:23'),
(126, 10, 126, '1', '750000', '750000', NULL, '2019-09-30 03:37:01', '2019-09-30 03:37:01'),
(127, 13, 127, '1', '550000', '550000', NULL, '2019-10-01 00:32:09', '2019-10-01 00:32:09'),
(128, 15, 128, '1', '850000', '850000', NULL, '2019-10-07 22:47:13', '2019-10-07 22:47:13'),
(129, 8, 129, '1', '450000', '450000', NULL, '2019-10-08 01:04:53', '2019-10-08 01:04:53'),
(130, 15, 130, '1', '850000', '850000', NULL, '2019-10-08 16:26:22', '2019-10-08 16:26:22'),
(131, 13, 131, '1', '550000', '550000', NULL, '2019-10-09 01:09:31', '2019-10-09 01:09:31'),
(132, 9, 132, '2', '600000', '1200000', NULL, '2019-10-09 14:00:49', '2019-10-09 14:00:49'),
(133, 9, 133, '3', '600000', '1800000', NULL, '2019-10-09 14:38:09', '2019-10-09 14:38:09'),
(134, 8, 134, '1', '450000', '450000', NULL, '2019-10-09 18:07:13', '2019-10-09 18:07:13'),
(135, 15, 135, '1', '850000', '850000', NULL, '2019-10-09 18:47:31', '2019-10-09 18:47:31'),
(136, 12, 136, '1', '400000', '400000', NULL, '2019-10-09 20:21:21', '2019-10-09 20:21:21'),
(137, 8, 137, '1', '450000', '450000', NULL, '2019-10-10 12:35:47', '2019-10-10 12:35:47'),
(138, 15, 138, '1', '850000', '850000', NULL, '2019-10-10 12:54:04', '2019-10-10 12:54:04'),
(139, 11, 139, '1', '900000', '900000', NULL, '2019-10-10 18:59:57', '2019-10-10 18:59:57'),
(140, 16, 140, '1', '1000000', '1000000', NULL, '2019-10-10 19:17:03', '2019-10-10 19:17:03'),
(141, 8, 141, '1', '450000', '450000', NULL, '2019-10-11 02:30:44', '2019-10-11 02:30:44'),
(142, 8, 142, '1', '450000', '450000', NULL, '2019-10-13 08:07:15', '2019-10-13 08:07:15'),
(143, 9, 143, '1', '600000', '600000', NULL, '2019-10-13 17:40:45', '2019-10-13 17:40:45'),
(144, 11, 144, '1', '900000', '900000', NULL, '2019-10-14 20:07:25', '2019-10-14 20:07:25'),
(145, 11, 145, '1', '900000', '900000', NULL, '2019-10-15 01:38:06', '2019-10-15 01:38:06'),
(146, 14, 146, '1', '700000', '700000', NULL, '2019-10-19 02:36:41', '2019-10-19 02:36:41'),
(147, 9, 147, '1', '600000', '600000', NULL, '2019-10-19 18:59:05', '2019-10-19 18:59:05'),
(148, 8, 148, '1', '450000', '450000', NULL, '2019-10-20 00:29:09', '2019-10-20 00:29:09'),
(149, 14, 149, '1', '700000', '700000', NULL, '2019-10-20 03:02:23', '2019-10-20 03:02:23'),
(150, 9, 150, '1', '600000', '600000', NULL, '2019-10-20 15:13:25', '2019-10-20 15:13:25'),
(151, 9, 151, '1', '600000', '600000', NULL, '2019-10-20 16:46:22', '2019-10-20 16:46:22'),
(152, 16, 152, '1', '1000000', '1000000', NULL, '2019-10-20 17:28:07', '2019-10-20 17:28:07'),
(153, 8, 153, '1', '450000', '450000', NULL, '2019-10-20 17:45:38', '2019-10-20 17:45:38'),
(154, 15, 154, '1', '850000', '850000', NULL, '2019-10-20 23:46:29', '2019-10-20 23:46:29'),
(155, 8, 155, '1', '450000', '450000', NULL, '2019-10-21 12:35:01', '2019-10-21 12:35:01'),
(156, 12, 156, '1', '400000', '400000', NULL, '2019-10-21 19:52:13', '2019-10-21 19:52:13'),
(157, 8, 157, '2', '450000', '900000', NULL, '2019-10-22 22:10:18', '2019-10-22 22:10:18'),
(158, 13, 158, '1', '550000', '550000', NULL, '2019-10-22 22:30:46', '2019-10-22 22:30:46'),
(159, 9, 159, '1', '600000', '600000', NULL, '2019-10-23 01:43:56', '2019-10-23 01:43:56'),
(160, 10, 160, '1', '750000', '750000', NULL, '2019-10-23 03:12:14', '2019-10-23 03:12:14'),
(161, 12, 161, '1', '400000', '400000', NULL, '2019-10-23 17:58:42', '2019-10-23 17:58:42'),
(162, 15, 162, '1', '850000', '850000', NULL, '2019-10-24 17:25:17', '2019-10-24 17:25:17'),
(163, 8, 163, '1', '450000', '450000', NULL, '2019-10-24 20:21:56', '2019-10-24 20:21:56'),
(164, 8, 164, '1', '450000', '450000', NULL, '2019-10-25 19:04:03', '2019-10-25 19:04:03'),
(165, 8, 165, '1', '450000', '450000', NULL, '2019-10-26 04:22:51', '2019-10-26 04:22:51'),
(166, 8, 166, '1', '450000', '450000', NULL, '2019-10-27 23:00:18', '2019-10-27 23:00:18'),
(167, 17, 167, '3', '1200000', '3600000', NULL, '2019-10-30 00:26:16', '2019-10-30 00:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `status`, `image_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '/slider/header-1.jpg', '2019-03-15 17:26:27', '2019-03-08 07:10:13', '2019-03-15 17:26:27'),
(2, NULL, '/slider/header-2.jpg', '2019-03-15 17:27:00', '2019-03-08 07:10:20', '2019-03-15 17:27:00'),
(3, NULL, 'slider/1.png', '2019-03-15 17:26:25', '2019-03-08 18:18:43', '2019-03-15 17:26:25'),
(4, NULL, 'slider/1.png', '2019-03-15 17:26:43', '2019-03-15 17:26:37', '2019-03-15 17:26:43'),
(5, NULL, 'slider/1.png', '2019-03-15 17:26:58', '2019-03-15 17:26:52', '2019-03-15 17:26:58'),
(6, NULL, 'slider/1.png', '2019-03-15 17:27:15', '2019-03-15 17:27:13', '2019-03-15 17:27:15'),
(7, NULL, NULL, '2019-03-15 17:27:20', '2019-03-15 17:27:17', '2019-03-15 17:27:20'),
(8, NULL, 'slider/header-2.jpg', '2019-03-15 17:27:32', '2019-03-15 17:27:28', '2019-03-15 17:27:32'),
(9, NULL, NULL, '2019-03-15 17:28:03', '2019-03-15 17:28:01', '2019-03-15 17:28:03'),
(10, NULL, 'slider/1.png', '2019-03-15 17:28:13', '2019-03-15 17:28:10', '2019-03-15 17:28:13'),
(11, NULL, 'slider/1.png', '2019-03-15 17:29:10', '2019-03-15 17:29:01', '2019-03-15 17:29:10'),
(12, NULL, 'slider/1.jpg', '2019-03-15 17:32:05', '2019-03-15 17:29:40', '2019-03-15 17:32:05'),
(13, NULL, 'slider/1.jpg', '2019-03-15 17:34:48', '2019-03-15 17:32:12', '2019-03-15 17:34:48'),
(14, NULL, 'slider/1.jpg', '2019-03-19 15:20:26', '2019-03-15 17:34:54', '2019-03-19 15:20:26'),
(15, NULL, 'slider/2.jpg', '2019-03-19 15:20:28', '2019-03-15 17:38:03', '2019-03-19 15:20:28'),
(16, NULL, NULL, '2019-03-19 15:20:33', '2019-03-19 15:20:31', '2019-03-19 15:20:33'),
(17, NULL, 'slider/1.jpg', '2019-03-19 15:21:18', '2019-03-19 15:20:41', '2019-03-19 15:21:18'),
(18, NULL, 'slider/1.jpg', '2019-03-19 15:21:46', '2019-03-19 15:21:25', '2019-03-19 15:21:46'),
(19, NULL, 'slider/1.jpg', '2019-03-19 15:22:18', '2019-03-19 15:21:57', '2019-03-19 15:22:18'),
(20, NULL, 'slider/2.jpg', '2019-03-19 15:23:19', '2019-03-19 15:22:27', '2019-03-19 15:23:19'),
(21, NULL, 'slider/3.jpg', '2019-03-25 19:33:10', '2019-03-19 15:23:26', '2019-03-25 19:33:10'),
(22, NULL, 'slider/123.png', '2019-03-25 19:40:15', '2019-03-25 19:33:25', '2019-03-25 19:40:15'),
(23, NULL, 'slider/1234.png', '2019-03-30 19:14:58', '2019-03-25 19:40:34', '2019-03-30 19:14:58'),
(24, NULL, 'slider/Slide.png', '2019-03-30 19:15:00', '2019-03-30 15:15:20', '2019-03-30 19:15:00'),
(25, NULL, 'slider/Slide1.png', '2019-04-01 20:49:02', '2019-03-30 19:15:18', '2019-04-01 20:49:02'),
(26, NULL, 'slider/1234.png', '2019-04-01 20:49:04', '2019-03-30 19:15:35', '2019-04-01 20:49:04'),
(27, NULL, 'slider/Slide2.png', '2019-10-19 14:07:45', '2019-04-01 20:49:18', '2019-10-19 14:07:45'),
(28, NULL, 'slider/5.png', NULL, '2019-10-19 14:07:41', '2019-10-19 14:07:41');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
