-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 16, 2021 lúc 08:11 AM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `base_ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `qa_code` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 Nháp 1 chưa thanh toán 2 đã thanh toán',
  `state` int(11) DEFAULT '1' COMMENT '1: Đơn hàng đang xử lý 2: đơn hàng đã huỷ',
  `address` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa chỉ giao hàng',
  `delivery_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `code`, `qa_code`, `user_id`, `amount`, `status`, `state`, `address`, `delivery_date`, `created_at`, `updated_at`) VALUES
(1, 'AAAABBBBSDJWDBUIASHDLBSB2132432', 'qrcode.png', 2, 56000, 1, 1, 'Ha Noi sad', NULL, '2021-04-14 02:44:54', '2021-04-13 21:33:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
CREATE TABLE IF NOT EXISTS `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `product_id`, `cart_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 12, 1000, '2021-04-14 06:56:28', NULL),
(3, 1, 1, 12, 1200, '2021-04-14 06:56:33', NULL),
(4, 2, 1, 12, 1000, '2021-04-14 06:56:33', NULL),
(5, 1, 1, 11, 1200, '2021-04-14 06:56:44', NULL),
(6, 2, 1, 11, 1000, '2021-04-14 06:56:44', NULL),
(7, 1, 1, 11, 1200, '2021-04-14 06:56:54', NULL),
(8, 1, 1, 11, 1000, '2021-04-14 06:56:54', NULL),
(9, 1, 1, 1, 150, '2021-04-14 06:57:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `sort`, `created_at`, `updated_at`, `slug`) VALUES
(2, 'PC', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus semper, neque at tincidunt auctor, ex tortor ultricies sapien, eu ultricies elit ante sit amet sapien. Ut maximus volutpat leo non eleifend. Nulla facilisi. Duis ac porta lacus, volutpat posuere nulla. Vivamus ac blandit erat. Cras quis neque nisl. Fusce accumsan convallis ligula, et finibus ipsum aliquet sed. Mauris eget ante turpis. Donec vel lectus vulputate leo feugiat faucibus. Nunc ultricies turpis id ipsum maximus mattis. Donec suscipit aliquet interdum. Integer ullamcorper, ex sed sodales consequat, arcu leo dapibus sem, sit amet accumsan tellus odio ac nisi. Praesent ut malesuada sapien, quis egestas magna. Integer laoreet consequat mauris in condimentum.</p>', 1, '2021-04-04 21:11:11', '2021-04-04 21:16:11', 'pc'),
(3, 'Mobile', '<p>Nullam ac volutpat nisl. Nunc id scelerisque risus. Nullam pellentesque mattis erat, sit amet vestibulum ipsum facilisis quis. Praesent lacinia sollicitudin leo. Nullam lectus enim, suscipit vitae laoreet vel, accumsan in enim. Curabitur ullamcorper elit leo, in luctus felis congue vitae. Etiam tincidunt risus vel diam euismod, ac interdum diam mattis.</p>', 2, '2021-04-04 21:15:11', '2021-04-04 21:18:17', 'mobile'),
(4, 'Electric', '<p>Proin vitae mi tempus, consectetur ligula id, eleifend diam. Praesent tellus est, pulvinar eget posuere nec, porttitor venenatis lectus. Cras sed felis id sem elementum ornare sit amet in mauris. Mauris congue dolor nisl, vitae pellentesque libero viverra ut. In hac habitasse platea dictumst. Nulla scelerisque magna turpis, sit amet tincidunt libero&nbsp;</p>', 3, '2021-04-04 21:15:35', '2021-04-04 21:18:22', 'electric');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paygates`
--

DROP TABLE IF EXISTS `paygates`;
CREATE TABLE IF NOT EXISTS `paygates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `configs` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `paygates`
--

INSERT INTO `paygates` (`id`, `name`, `code`, `url`, `configs`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Ngân Lượng', 'nganluong', 'https://www.nganluong.vn/checkout.php', '{\"RECEIVER\":\"demo@nganluong.vn\",\"MERCHANT_ID\":\"36680\",\"MERCHANT_PASS\":\"matkhauketnoi\",\"currency\":\"vnd\"}', '', '2020-11-27 02:58:17', '2021-03-31 20:36:28', NULL),
(3, 'VNPAY', 'vnpay', 'http://sandbox.vnpayment.vn/paymentv2/vpcpay.html', '{\"vnp_HashSecret\":\"BYOLXENKWJJQXKVVLRBKJHYMXEASMRCH\",\"vnp_TmnCode\":\"DULCJHZU\",\"currency\":\"vnd\",\"url\":\"http:\\/\\/sandbox.vnpayment.vn\\/paymentv2\\/vpcpay.html\"}', '', '2020-12-02 02:49:33', '2021-04-01 00:07:26', NULL),
(4, 'PayPal', 'paypal', 'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=', '{\"SECRET_ID\":\"ED4XVsfGNc-px4RXweWGcE_IJ7GcR6gSMtf5dr6PGlJPndsRPOXtRe8c6f_eSywYLPBc7HczK6qFlcdM\",\"CLIENT_ID\":\"AeYbemRrJQ94AKpZKo_sHSQJsdk8sH25QrfeDwiPhL8kEXxb962Xjs875juuJGsrPGCP5o2mb35jpqSq\",\"SANBOX_ACCOUNT\":\"sb-nlqij3868487@business.example.com\",\"VERSION\":\"53.0\", \"API_USERNAME\" : \"sb-nlqij3868487@business.example.com\", \"API_PASSWORD\":\"thanhnhan030796\", \"API_SIGNATURE\":\"A3CZZ6twi-WT-7ZwGQua95N4-iDJAoXTkTDd9WQ7kUjYBGT3y8pqxT4D\", \"VERSION\" : \"55.0\"}', '', '2020-12-07 09:22:36', '2021-03-31 01:51:33', NULL),
(5, 'MoMo', 'momo', 'https://test-payment.momo.vn', '{\"partnerCode\":\"MOMO2RUK20210401\",\"accessKey\":\"MarXljRRVSODYYom\",\"secretKey\":\"hNKD0ueMaF4kDVR2MV92LEahFNRTOo2Z\",\"currency\":\"vnd\"}', 'momo.png', '2021-04-01 08:15:35', '2021-04-01 08:15:35', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `info` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'xuât sứ',
  `code` text COLLATE utf8_unicode_ci,
  `qa_code` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL COMMENT '0: chưa có hàng 1: có hàng',
  `qty` int(11) NOT NULL COMMENT 'số lượng trong kho',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `info`, `description`, `price`, `origin`, `code`, `qa_code`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Vsmart live 4', 'vsmart-live-4', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus semper, neque at tincidunt auctor, ex tortor ultricies sapien, eu ultricies elit ante sit amet sapien. Ut maximus volutpat leo non eleifend. Nulla facilisi. Duis ac porta lacus, volutpat posuere nulla. Vivamus ac blandit erat. Cras quis neque nisl.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus semper, neque at tincidunt auctor, ex tortor ultricies sapien, eu ultricies elit ante sit amet sapien. Ut maximus volutpat leo non eleifend. Nulla facilisi. Duis ac porta lacus, volutpat posuere nulla. Vivamus ac blandit erat. Cras quis neque nisl. Fusce accumsan convallis ligula, et finibus ipsum aliquet sed. Mauris eget ante turpis. Donec vel lectus vulputate leo feugiat faucibus. Nunc ultricies turpis id ipsum maximus mattis. Donec suscipit aliquet interdum. Integer ullamcorper, ex sed sodales consequat, arcu leo dapibus sem, sit amet accumsan tellus odio ac nisi. Praesent ut malesuada sapien, quis egestas magna. Integer laoreet consequat mauris in condimentum.</p>\r\n\r\n<p>Nullam ac volutpat nisl. Nunc id scelerisque risus. Nullam pellentesque mattis erat, sit amet vestibulum ipsum facilisis quis. Praesent lacinia sollicitudin leo. Nullam lectus enim, suscipit vitae laoreet vel, accumsan in enim. Curabitur ullamcorper elit leo, in luctus felis congue vitae. Etiam tincidunt risus vel diam euismod, ac interdum diam mattis.</p>\r\n\r\n<p>Proin vitae mi tempus, consectetur ligula id, eleifend diam. Praesent tellus est, pulvinar eget posuere nec, porttitor venenatis lectus. Cras sed felis id sem elementum ornare sit amet in mauris. Mauris congue dolor nisl, vitae pellentesque libero viverra ut. In hac habitasse platea dictumst. Nulla scelerisque magna turpis, sit amet tincidunt libero malesuada sit amet. Nam vitae sem eros. Praesent at consectetur diam, id porta erat. Donec erat metus, laoreet sed dignissim a, vehicula id velit.</p>', 4500000, 'VietNam', '3c07af49174f9420a6393b35a66b7bfa', NULL, 1, 1500, '2021-04-05 01:37:58', '2021-04-05 01:37:58'),
(3, 'Vsmart live Be', 'vsmart-live-be', 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus semper, neque at tincidunt auctor, ex tortor ultricies sapien, eu ultricies elit ante sit amet sapien. Ut maximus volutpat leo non eleifend. Nulla facilisi. Duis ac porta lacus, volutpat posuere nulla. Vivamus ac blandit erat. Cras quis neque nisl.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus semper, neque at tincidunt auctor, ex tortor ultricies sapien, eu ultricies elit ante sit amet sapien. Ut maximus volutpat leo non eleifend. Nulla facilisi. Duis ac porta lacus, volutpat posuere nulla. Vivamus ac blandit erat. Cras quis neque nisl. Fusce accumsan convallis ligula, et finibus ipsum aliquet sed. Mauris eget ante turpis. Donec vel lectus vulputate leo feugiat faucibus. Nunc ultricies turpis id ipsum maximus mattis. Donec suscipit aliquet interdum. Integer ullamcorper, ex sed sodales consequat, arcu leo dapibus sem, sit amet accumsan tellus odio ac nisi. Praesent ut malesuada sapien, quis egestas magna. Integer laoreet consequat mauris in condimentum.</p>\r\n\r\n<p>Nullam ac volutpat nisl. Nunc id scelerisque risus. Nullam pellentesque mattis erat, sit amet vestibulum ipsum facilisis quis. Praesent lacinia sollicitudin leo. Nullam lectus enim, suscipit vitae laoreet vel, accumsan in enim. Curabitur ullamcorper elit leo, in luctus felis congue vitae. Etiam tincidunt risus vel diam euismod, ac interdum diam mattis.</p>\r\n\r\n<p>Proin vitae mi tempus, consectetur ligula id, eleifend diam. Praesent tellus est, pulvinar eget posuere nec, porttitor venenatis lectus. Cras sed felis id sem elementum ornare sit amet in mauris. Mauris congue dolor nisl, vitae pellentesque libero viverra ut. In hac habitasse platea dictumst. Nulla scelerisque magna turpis, sit amet tincidunt libero malesuada sit amet. Nam vitae sem eros. Praesent at consectetur diam, id porta erat. Donec erat metus, laoreet sed dignissim a, vehicula id velit.</p>', 4500000, 'VietNam', '3c07af49174f9420a6393b35a66b7bfa', NULL, 1, 1500, '2021-04-05 01:37:58', '2021-04-05 01:37:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attitude`
--

DROP TABLE IF EXISTS `product_attitude`;
CREATE TABLE IF NOT EXISTS `product_attitude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_attitude`
--

INSERT INTO `product_attitude` (`id`, `product_id`, `attribute`, `value`, `sort`, `created_at`, `updated_at`) VALUES
(3, 1, 'Pin', '5000mAh', 1, '2021-04-06 00:33:52', '2021-04-06 00:33:52'),
(4, 1, 'Screen', '6.5inch', 2, '2021-04-06 00:34:04', '2021-04-06 00:34:04'),
(5, 1, 'IOS', 'Android 10', 3, '2021-04-06 00:34:16', '2021-04-06 00:34:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

DROP TABLE IF EXISTS `product_color`;
CREATE TABLE IF NOT EXISTS `product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, '#000000', NULL, NULL),
(2, 1, '#d03711', NULL, NULL),
(5, 1, '#4c55cd', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_img`
--

DROP TABLE IF EXISTS `product_img`;
CREATE TABLE IF NOT EXISTS `product_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `image`, `sort`, `created_at`, `updated_at`) VALUES
(3, 2, '/image/products/image_2_105990876_594213958163917_1201112106328640992_n.jpg', 0, '2021-04-05 03:52:26', '2021-04-05 03:52:26'),
(4, 1, '/image/products/image_1_105990876_594213958163917_1201112106328640992_n.jpg', 0, '2021-04-06 00:29:50', '2021-04-06 00:29:50'),
(5, 1, '/image/products/image_1_ava.jpg', 0, '2021-04-06 00:29:55', '2021-04-06 00:29:55'),
(6, 1, '/image/products/image_1_avaHostingerAndMail.jpg', 0, '2021-04-06 00:30:00', '2021-04-06 00:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

DROP TABLE IF EXISTS `product_size`;
CREATE TABLE IF NOT EXISTS `product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', NULL, NULL),
(2, 1, 'X', NULL, NULL),
(4, 1, 'XL', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE IF NOT EXISTS `product_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(12, 1, 3, '2021-04-06 07:33:40', NULL),
(11, 1, 1, '2021-04-06 07:33:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rattings`
--

DROP TABLE IF EXISTS `rattings`;
CREATE TABLE IF NOT EXISTS `rattings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rattings` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rattings`
--

INSERT INTO `rattings` (`id`, `user_id`, `product_id`, `rattings`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4, '2021-04-06 09:30:11', NULL),
(2, 2, 3, 5, '2021-04-06 09:30:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(250) DEFAULT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'favicon', '/storage/userfiles/images/nencer-fav.png', NULL, '2019-01-25 09:56:44'),
(2, 'backendlogo', '/storage/userfiles/images/nencer-logo.png', NULL, '2019-01-25 09:56:44'),
(3, 'name', 'Long Nguyen', NULL, '2019-01-25 09:56:44'),
(4, 'title', 'Upload lưu trữ file không giới hạn, miễn phí và an toàn', NULL, '2019-01-25 09:56:44'),
(5, 'description', 'Ứng dụng lõi của mọi phần mềm và hệ thống', NULL, '2019-01-25 09:56:44'),
(6, 'language', 'N/A', NULL, '2019-01-25 09:56:44'),
(7, 'phone', '943793984', NULL, '2019-01-25 09:56:44'),
(8, 'twitter', 'fb.com/admin', NULL, '2019-01-25 09:56:44'),
(9, 'email', 'nguyenlongit95@gmail.com', NULL, '2019-01-25 09:56:44'),
(10, 'facebook', '35/45 Tran Thai Tong, Cau Giay, Ha Noi', NULL, '2019-01-25 09:56:44'),
(11, 'logo', '/storage/userfiles/images/nencer.png', NULL, '2019-01-25 09:56:44'),
(12, 'hotline', '0123456789', NULL, '2019-01-25 09:56:44'),
(13, 'backendname', 'AdminLTE', NULL, '2019-01-25 09:56:44'),
(14, 'backendlang', 'N/A', NULL, '2019-01-25 09:56:44'),
(15, 'copyright', 'Website đang chờ xin giấy phép của bộ TTTT.', NULL, '2019-01-25 09:56:44'),
(16, 'timezone', 'Asia/Ho_Chi_Minh', NULL, '2019-01-25 09:56:44'),
(17, 'googleplus', 'fb.com/admin', NULL, '2019-01-25 09:56:44'),
(18, 'websitestatus', 'ONLINE', NULL, '2019-01-25 09:56:44'),
(19, 'address', '35/45 Tran Thai Tong, Cau Giay, Ha Noi', '2018-08-21 03:53:44', '2019-01-25 09:56:44'),
(21, 'default_user_group', '2', '2018-08-21 04:06:25', '2019-01-25 09:56:44'),
(22, 'twofactor', 'none', '2018-09-05 14:17:56', '2019-01-25 09:56:44'),
(23, 'fronttemplate', 'default', '2018-09-25 06:29:14', '2019-01-25 09:56:44'),
(24, 'offline_mes', 'Website đang bảo trì!', NULL, '2019-01-25 09:56:44'),
(25, 'smsprovider', 'none', '2018-10-09 10:17:08', '2019-01-25 09:56:44'),
(26, 'youtube', 'https://www.youtube.com/watch?v=neCmEbI2VWg', NULL, '2019-01-25 09:56:44'),
(27, 'globalpopup', '0', NULL, '2019-01-25 09:56:44'),
(28, 'globalpopup_mes', '<p>Chưa c&oacute; nội dung g&igrave;</p>', NULL, '2019-01-25 09:56:44'),
(29, 'social_login', '0', NULL, '2019-01-25 09:56:44'),
(30, 'google_analytic_id', '30', NULL, '2019-01-25 09:56:44'),
(31, 'header_js', 'N/A', NULL, '2019-01-25 09:56:44'),
(32, 'footer_js', 'N/A', NULL, '2019-01-25 09:56:44'),
(33, 'home_tab_active', 'Softcard', NULL, '2019-01-25 09:56:44'),
(34, 'fileSecretkey', '12345678', NULL, NULL),
(35, 'affiliate', 'http://localhost/core/public/user/register/', NULL, '2019-01-14 08:33:48'),
(36, 'top_bg', 'N/A', '2019-01-23 06:42:05', '2019-01-25 09:56:44'),
(37, 'slide_bg', 'N/A', '2019-01-23 06:42:05', '2019-01-25 09:56:44'),
(38, 'footer_bg', 'N/A', '2019-01-23 06:42:05', '2019-01-25 09:56:44'),
(39, 'top_color', 'N/A', '2019-01-23 06:42:05', '2019-01-25 09:56:44'),
(40, 'allow_transfer', '0', '2019-01-23 06:42:05', '2019-01-25 09:56:44'),
(41, 'type_slider', 'slider', '2019-01-23 06:42:05', '2019-01-25 09:56:44'),
(42, 'countdown', '30', NULL, '2019-01-25 09:56:44'),
(43, 'footerlogo', '/storage/userfiles/images/nencer-logo-gray.png', NULL, NULL),
(44, 'logo', '/storage/userfiles/images/nencer-logo.png', NULL, '2020-12-01 23:37:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `tags`, `slug`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Hot phone 2019', 'hot-phone-2019', 1, '2021-04-04 23:42:16', '2021-04-04 23:42:16'),
(3, 'PC gaming 2021', 'pc-gaming-2021', 2, '2021-04-04 23:56:03', '2021-04-04 23:56:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'NguyenLong', 'nguyenlongit95@gmail.com', '2020-12-01 17:00:00', '$2y$10$/XiVXPWQ5Ol2RmUitWDmKebYsyMJfoS/ohx8Z5NTLbDd6zoot53fe', NULL, 0, NULL, '2020-12-02 00:50:30'),
(2, 'LongNguyen', 'testAccount@gmail.com', NULL, '$2y$10$r3QBckUKEBrK/Y08Q4lAbe/SzrWr.qbrbjz.r6YFqjnMI6uEQGu8K', NULL, 2, '2020-12-07 01:08:58', '2020-12-07 01:08:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 3, 2, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
