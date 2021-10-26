-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table base_ecommerce.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qa_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.cart: ~0 rows (approximately)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.cart_detail
CREATE TABLE IF NOT EXISTS `cart_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.cart_detail: ~0 rows (approximately)
DELETE FROM `cart_detail`;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.category: ~2 rows (approximately)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `description`, `sort`, `created_at`, `updated_at`, `slug`) VALUES
	(1, 'Category Demo 1', '<p>- The sort item will be the display order of this category on the displayed page.</p>\r\n\r\n<p>- The name field will automatically be translated into the slug field after you finish typing 1 character.</p>', 1, '2021-10-25 10:25:10', '2021-10-25 10:25:10', 'category-demo-1'),
	(2, 'Category demo 2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo. Sed pellentesque quam in purus ultricies, vitae dignissim arcu varius. In massa nisl, feugiat pretium diam a, tincidunt sollicitudin augue. Praesent ornare sem interdum ligula placerat varius. Donec semper feugiat sapien vel pellentesque. Nulla porttitor ante sit amet felis facilisis, in rhoncus eros tempor. Sed hendrerit dictum arcu sed imperdiet. Vivamus dignissim nibh vel molestie venenatis.</p>', 1, '2021-10-25 10:25:37', '2021-10-25 10:25:37', 'category-demo-2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.migrations: 17 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 2),
	(3, '2019_08_19_000000_create_failed_jobs_table', 2),
	(4, '2014_10_12_000000_create_paygates_table', 1),
	(5, '2014_10_12_000000_create_settings_table', 1),
	(6, '2020_11_25_042002_create_paygates_table', 3),
	(7, '2021_03_30_075237_category', 3),
	(8, '2021_03_30_075253_product', 3),
	(9, '2021_03_30_075313_product_img', 3),
	(10, '2021_03_30_075333_product_attitude', 3),
	(11, '2021_03_30_075356_tags', 3),
	(12, '2021_03_30_075425_product_tags', 3),
	(13, '2021_03_30_075443_wishlist', 3),
	(14, '2021_03_30_075458_ratting', 3),
	(15, '2021_03_30_075515_cart', 3),
	(16, '2021_03_30_075529_cart_detail', 3),
	(17, '2021_05_12_084546_table_sliders', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.paygates
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table base_ecommerce.paygates: 3 rows
DELETE FROM `paygates`;
/*!40000 ALTER TABLE `paygates` DISABLE KEYS */;
INSERT INTO `paygates` (`id`, `name`, `code`, `url`, `configs`, `icon`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(2, 'Ngân Lượng', 'nganluong', 'https://www.nganluong.vn/checkout.php', '{"currency":"USD","MERCHANT_PASS":"Ax1L0GR3sB3f4kHQAj1JtIAWcuvgArQlNyrqcGCbdvLzGJ6nSHm8l2kF","MERCHANT_ID":"Q3FZWYGFYLG8WDGW","RECEIVER":"sb-3rtbb3863326_api1.business.example.com"}', '', '2020-11-27 09:58:17', '2020-12-01 10:44:21', NULL),
	(3, 'VNPAY', 'vnpay', 'http://sandbox.vnpayment.vn/paymentv2/vpcpay.html', '{"currency":"VND","vnp_TmnCode":"Ax1L0GR3sB3f4kHQAj1JtIAWcuvgArQlNyrqcGCbdvLzGJ6nSHm8l2kF","vnp_HashSecret":"Q3FZWYGFYLG8WDGW"}', '', '2020-12-02 09:49:33', '2020-12-02 09:49:33', NULL),
	(4, 'PayPal', 'paypal', 'https://www.sandbox.paypal.com/webscr&cmd=_express-checkout&token=', '{"API_USERNAME":"sb-nlqij3868487_api1.business.example.com","API_PASSWORD":"R9SRY8RF3CCSNE3P","API_SIGNATURE":"A3CZZ6twi-WT-7ZwGQua95N4-iDJAoXTkTDd9WQ7kUjYBGT3y8pqxT4D", "VERSION" : "53.0"}', '', '2020-12-07 16:22:36', '2020-12-07 16:22:36', NULL);
/*!40000 ALTER TABLE `paygates` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qa_code` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.products: ~2 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `slug`, `info`, `description`, `price`, `origin`, `code`, `qa_code`, `status`, `qty`, `created_at`, `updated_at`, `category_id`) VALUES
	(1, 'Product demo 1', 'product-demo-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo. Sed pellentesque quam in purus ultricies, vitae dignissim arcu varius. In massa nisl, feugiat pretium diam a, tincidunt sollicitudin augue. Praesent ornare sem interdum ligula placerat varius. Donec semper feugiat sapien vel pellentesque. Nulla porttitor ante sit amet felis facilisis, in rhoncus eros tempor. Sed hendrerit dictum arcu sed imperdiet. Vivamus dignissim nibh vel molestie venenatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo. Sed pellentesque quam in purus ultricies, vitae dignissim arcu varius. In massa nisl, feugiat pretium diam a, tincidunt sollicitudin augue. Praesent ornare sem interdum ligula placerat varius. Donec semper feugiat sapien vel pellentesque. Nulla porttitor ante sit amet felis facilisis, in rhoncus eros tempor. Sed hendrerit dictum arcu sed imperdiet. Vivamus dignissim nibh vel molestie venenatis.</p>', 4500000, 'Viet Nam', '3843bf342d07cf68be9587a8698fc795', NULL, 1, 1000, '2021-10-25 10:28:23', '2021-10-25 10:28:23', 1),
	(2, 'Product demo 1', 'product-demo-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo. Sed pellentesque quam in purus ultricies, vitae dignissim arcu varius. In massa nisl, feugiat pretium diam a, tincidunt sollicitudin augue. Praesent ornare sem interdum ligula placerat varius. Donec semper feugiat sapien vel pellentesque. Nulla porttitor ante sit amet felis facilisis, in rhoncus eros tempor. Sed hendrerit dictum arcu sed imperdiet. Vivamus dignissim nibh vel molestie venenatis.</p>\r\n\r\n<p><img alt="" src="http://base_ecommerce.test/plugins/ckfinder/userfiles/images/ava.jpg" style="height:130px; width:130px" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget facilisis est. Morbi vestibulum tellus justo, ac egestas tortor malesuada quis. In vitae turpis porta, volutpat nisi at, convallis diam. Nam imperdiet dui ut tortor lacinia dictum. Mauris iaculis accumsan tincidunt. Aliquam erat volutpat. Maecenas feugiat pulvinar massa, sed ullamcorper odio consectetur non. Suspendisse magna arcu, rhoncus sed velit sed, tempor rhoncus justo. Sed pellentesque quam in purus ultricies, vitae dignissim arcu varius. In massa nisl, feugiat pretium diam a, tincidunt sollicitudin augue. Praesent ornare sem interdum ligula placerat varius. Donec semper feugiat sapien vel pellentesque. Nulla porttitor ante sit amet felis facilisis, in rhoncus eros tempor. Sed hendrerit dictum arcu sed imperdiet. Vivamus dignissim nibh vel molestie venenatis.</p>', 4500000, 'Viet Nam', '3843bf342d07cf68be9587a8698fc795', NULL, 1, 1000, '2021-10-25 10:29:32', '2021-10-26 02:44:30', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.product_attitude
CREATE TABLE IF NOT EXISTS `product_attitude` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.product_attitude: ~0 rows (approximately)
DELETE FROM `product_attitude`;
/*!40000 ALTER TABLE `product_attitude` DISABLE KEYS */;
INSERT INTO `product_attitude` (`id`, `product_id`, `attribute`, `value`, `sort`, `created_at`, `updated_at`) VALUES
	(1, 2, 'Demo', 'Cotton', 1, '2021-10-26 02:10:42', '2021-10-26 02:10:42');
/*!40000 ALTER TABLE `product_attitude` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.product_color
CREATE TABLE IF NOT EXISTS `product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table base_ecommerce.product_color: ~1 rows (approximately)
DELETE FROM `product_color`;
/*!40000 ALTER TABLE `product_color` DISABLE KEYS */;
INSERT INTO `product_color` (`id`, `product_id`, `color`, `created_at`, `updated_at`) VALUES
	(1, 2, '#000000', NULL, NULL);
/*!40000 ALTER TABLE `product_color` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.product_img
CREATE TABLE IF NOT EXISTS `product_img` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.product_img: ~0 rows (approximately)
DELETE FROM `product_img`;
/*!40000 ALTER TABLE `product_img` DISABLE KEYS */;
INSERT INTO `product_img` (`id`, `product_id`, `image`, `sort`, `created_at`, `updated_at`) VALUES
	(2, 2, '/image/products/image_2__DSC4823.png', 0, '2021-10-26 02:45:25', '2021-10-26 02:45:25');
/*!40000 ALTER TABLE `product_img` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.product_size
CREATE TABLE IF NOT EXISTS `product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table base_ecommerce.product_size: ~1 rows (approximately)
DELETE FROM `product_size`;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` (`id`, `product_id`, `size`, `created_at`, `updated_at`) VALUES
	(1, 2, 'XL', NULL, NULL);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.product_tags
CREATE TABLE IF NOT EXISTS `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.product_tags: ~0 rows (approximately)
DELETE FROM `product_tags`;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` (`id`, `product_id`, `tags_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, NULL, NULL);
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.rattings
CREATE TABLE IF NOT EXISTS `rattings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rattings` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.rattings: ~0 rows (approximately)
DELETE FROM `rattings`;
/*!40000 ALTER TABLE `rattings` DISABLE KEYS */;
/*!40000 ALTER TABLE `rattings` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(250) DEFAULT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Dumping data for table base_ecommerce.settings: ~43 rows (approximately)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'favicon', '/storage/userfiles/images/nencer-fav.png', NULL, '2019-01-25 16:56:44'),
	(2, 'backendlogo', '/storage/userfiles/images/nencer-logo.png', NULL, '2019-01-25 16:56:44'),
	(3, 'name', 'Long Nguyen', NULL, '2019-01-25 16:56:44'),
	(4, 'title', 'Upload lưu trữ file không giới hạn, miễn phí và an toàn', NULL, '2019-01-25 16:56:44'),
	(5, 'description', 'Ứng dụng lõi của mọi phần mềm và hệ thống', NULL, '2019-01-25 16:56:44'),
	(6, 'language', 'N/A', NULL, '2019-01-25 16:56:44'),
	(7, 'phone', '943793984', NULL, '2019-01-25 16:56:44'),
	(8, 'twitter', 'fb.com/admin', NULL, '2019-01-25 16:56:44'),
	(9, 'email', 'nguyenlongit95@gmail.com', NULL, '2019-01-25 16:56:44'),
	(10, 'facebook', '35/45 Tran Thai Tong, Cau Giay, Ha Noi', NULL, '2019-01-25 16:56:44'),
	(11, 'logo', '/storage/userfiles/images/nencer.png', NULL, '2019-01-25 16:56:44'),
	(12, 'hotline', '0123456789', NULL, '2019-01-25 16:56:44'),
	(13, 'backendname', 'AdminLTE', NULL, '2019-01-25 16:56:44'),
	(14, 'backendlang', 'N/A', NULL, '2019-01-25 16:56:44'),
	(15, 'copyright', 'Website đang chờ xin giấy phép của bộ TTTT.', NULL, '2019-01-25 16:56:44'),
	(16, 'timezone', 'Asia/Ho_Chi_Minh', NULL, '2019-01-25 16:56:44'),
	(17, 'googleplus', 'fb.com/admin', NULL, '2019-01-25 16:56:44'),
	(18, 'websitestatus', 'ONLINE', NULL, '2019-01-25 16:56:44'),
	(19, 'address', '35/45 Tran Thai Tong, Cau Giay, Ha Noi', '2018-08-21 10:53:44', '2019-01-25 16:56:44'),
	(21, 'default_user_group', '2', '2018-08-21 11:06:25', '2019-01-25 16:56:44'),
	(22, 'twofactor', 'none', '2018-09-05 21:17:56', '2019-01-25 16:56:44'),
	(23, 'fronttemplate', 'default', '2018-09-25 13:29:14', '2019-01-25 16:56:44'),
	(24, 'offline_mes', 'Website đang bảo trì!', NULL, '2019-01-25 16:56:44'),
	(25, 'smsprovider', 'none', '2018-10-09 17:17:08', '2019-01-25 16:56:44'),
	(26, 'youtube', 'https://www.youtube.com/watch?v=neCmEbI2VWg', NULL, '2019-01-25 16:56:44'),
	(27, 'globalpopup', '0', NULL, '2019-01-25 16:56:44'),
	(28, 'globalpopup_mes', '<p>Chưa c&oacute; nội dung g&igrave;</p>', NULL, '2019-01-25 16:56:44'),
	(29, 'social_login', '0', NULL, '2019-01-25 16:56:44'),
	(30, 'google_analytic_id', '30', NULL, '2019-01-25 16:56:44'),
	(31, 'header_js', 'N/A', NULL, '2019-01-25 16:56:44'),
	(32, 'footer_js', 'N/A', NULL, '2019-01-25 16:56:44'),
	(33, 'home_tab_active', 'Softcard', NULL, '2019-01-25 16:56:44'),
	(34, 'fileSecretkey', '12345678', NULL, NULL),
	(35, 'affiliate', 'http://localhost/core/public/user/register/', NULL, '2019-01-14 15:33:48'),
	(36, 'top_bg', 'N/A', '2019-01-23 13:42:05', '2019-01-25 16:56:44'),
	(37, 'slide_bg', 'N/A', '2019-01-23 13:42:05', '2019-01-25 16:56:44'),
	(38, 'footer_bg', 'N/A', '2019-01-23 13:42:05', '2019-01-25 16:56:44'),
	(39, 'top_color', 'N/A', '2019-01-23 13:42:05', '2019-01-25 16:56:44'),
	(40, 'allow_transfer', '0', '2019-01-23 13:42:05', '2019-01-25 16:56:44'),
	(41, 'type_slider', 'slider', '2019-01-23 13:42:05', '2019-01-25 16:56:44'),
	(42, 'countdown', '30', NULL, '2019-01-25 16:56:44'),
	(43, 'footerlogo', '/storage/userfiles/images/nencer-logo-gray.png', NULL, NULL),
	(44, 'logo', '/storage/userfiles/images/nencer-logo.png', NULL, '2020-12-02 06:37:56');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.sliders: ~0 rows (approximately)
DELETE FROM `sliders`;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.tags: ~0 rows (approximately)
DELETE FROM `tags`;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`, `tags`, `slug`, `sort`, `created_at`, `updated_at`) VALUES
	(1, 'Demo tags 1', 'demo-tags-1', 1, '2021-10-26 03:07:22', '2021-10-26 03:07:22');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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

-- Dumping data for table base_ecommerce.users: 2 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
	(1, 'NguyenLong', 'nguyenlongit95@gmail.com', '2020-12-02 00:00:00', '$2y$10$/XiVXPWQ5Ol2RmUitWDmKebYsyMJfoS/ohx8Z5NTLbDd6zoot53fe', NULL, 0, NULL, '2020-12-02 07:50:30'),
	(2, 'LongNguyen', 'testAccount@gmail.com', NULL, '$2y$10$r3QBckUKEBrK/Y08Q4lAbe/SzrWr.qbrbjz.r6YFqjnMI6uEQGu8K', NULL, 2, '2020-12-07 08:08:58', '2020-12-07 08:08:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table base_ecommerce.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table base_ecommerce.wishlist: ~0 rows (approximately)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
