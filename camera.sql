-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2022 lúc 07:57 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `camera`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_10_07_194134_create_tbl_category_product_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(5, '2022_10_08_091153_create_tbl_product_table', 2),
(7, '2022_10_08_091413_create_tbl_customer_table', 2),
(8, '2022_10_08_091428_create_tbl_order_table', 2),
(9, '2022_10_08_091444_create_tbl_order_details_table', 2),
(10, '2022_10_17_152050_create_tbl_shipping', 9),
(22, '2022_10_08_091258_create_tbl_admin_table', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 12, 'MyApp', 'f9cc7d3bcbb8c85cc636cab97d532154320ffaf5db99811dbdb7e3cf8b124312', '[\"*\"]', NULL, '2022-11-20 23:18:43', '2022-11-20 23:18:43'),
(2, 'App\\Models\\User', 13, 'MyApp', '503843cd4d15ecb390052983e4a5f6f830289fe170b4c563695eb3279e0bb8bb', '[\"*\"]', NULL, '2022-11-20 23:25:11', '2022-11-20 23:25:11'),
(3, 'App\\Models\\User', 14, 'MyApp', '95bb7833e7fb902db14d16c0471e09d62cd8d678fcf2b5d7eb0d8d254caa8531', '[\"*\"]', NULL, '2022-11-21 11:38:34', '2022-11-21 11:38:34'),
(4, 'App\\Models\\User', 15, 'MyApp', '1242d589505a693193453e172756d477217c060466a2790876a6a41da8ad9fc8', '[\"*\"]', NULL, '2022-11-21 11:55:00', '2022-11-21 11:55:00'),
(5, 'App\\Models\\User', 16, 'MyApp', '545909e4c09648601f57b4ee7b682b89356f6f97d171b55fa87503afc6070e76', '[\"*\"]', NULL, '2022-11-22 02:30:06', '2022-11-22 02:30:06'),
(7, 'App\\Models\\User', 18, 'MyApp', '743f2eeb824d9d9c06c10b1ef7c44b3193354e6ff3cf1103f640c3035a5e0e4e', '[\"*\"]', NULL, '2022-11-22 02:34:17', '2022-11-22 02:34:17'),
(40, 'App\\Models\\User', 20, 'MyApp', 'fedd4b1b33ba0630d6fdc3eff30df30c93827f4a87fd343f62b6e68e0b8bbb7e', '[\"*\"]', NULL, '2022-11-22 08:40:12', '2022-11-22 08:40:12'),
(41, 'App\\Models\\User', 21, 'MyApp', 'b4fa048ce2a10a33baac79a3a1d7743129b79616c646174ac38f6d49dfe33592', '[\"*\"]', NULL, '2022-11-22 08:43:28', '2022-11-22 08:43:28'),
(42, 'App\\Models\\User', 22, 'MyApp', '502d67c3839afe908731f87fabf760f0b484d6b0c9d3433fae24ee03b528540a', '[\"*\"]', NULL, '2022-11-22 08:46:44', '2022-11-22 08:46:44'),
(45, 'App\\Models\\User', 23, 'MyApp', '1b1cd5ef78e3452704248bda92791ef6cf74b84c9087503b44da6b73648e9de8', '[\"*\"]', NULL, '2022-11-22 08:51:24', '2022-11-22 08:51:24'),
(46, 'App\\Models\\User', 24, 'MyApp', '9a4e9a7a9b625e12baa56adafd4ef71899d2b4ff0636c61555fd5c3e80b265b6', '[\"*\"]', NULL, '2022-11-22 08:55:35', '2022-11-22 08:55:35'),
(48, 'App\\Models\\User', 25, 'MyApp', 'c7c8a35c0cf6944194f11d36b761030d1c3798001a35c75b04952ea0d558b469', '[\"*\"]', NULL, '2022-11-22 09:02:49', '2022-11-22 09:02:49'),
(49, 'App\\Models\\User', 26, 'MyApp', 'aaec75a7bdbc62d3f396d6d36015df05b482c9a5757bba443223fd0343414ff2', '[\"*\"]', NULL, '2022-11-22 09:07:56', '2022-11-22 09:07:56'),
(50, 'App\\Models\\User', 27, 'MyApp', 'eb87f93582c611aef49c12c8bc907a43105d193984aee14a00dbb29d9cfcbde1', '[\"*\"]', NULL, '2022-11-22 09:08:39', '2022-11-22 09:08:39'),
(51, 'App\\Models\\User', 28, 'MyApp', '504df999da1565936556fba62d210c459664b0c1da22bbe6b81ef444c7022faf', '[\"*\"]', NULL, '2022-11-22 09:11:04', '2022-11-22 09:11:04'),
(52, 'App\\Models\\User', 29, 'MyApp', 'c9944ecaca0a008c32e7aae3ac60fc9ea63c6f32a51f8c0d97065cb1cb3362a1', '[\"*\"]', NULL, '2022-11-22 09:14:28', '2022-11-22 09:14:28'),
(62, 'App\\Models\\User', 30, 'MyApp', '0e2d0ea4c62a24c3d04c28f745a789e7ef7020f98407bc4bc878c0d78835e6c8', '[\"*\"]', NULL, '2022-11-22 09:59:36', '2022-11-22 09:59:36'),
(63, 'App\\Models\\User', 30, 'MyApp', '5306481e1a08eb3e314568bea6ee7150bd07b74b0e01c0dd4dfb14dc86801b38', '[\"*\"]', NULL, '2022-11-22 09:59:41', '2022-11-22 09:59:41'),
(66, 'App\\Models\\User', 31, 'MyApp', '9d4e8feec1af387fc5c11aeff0b3b091605500a446e9497e01c93cb35e112a66', '[\"*\"]', NULL, '2022-11-22 10:21:42', '2022-11-22 10:21:42'),
(67, 'App\\Models\\User', 32, 'MyApp', '375de1d452a58089dbcccbc35cb6d2ede14a196985442643addefb9b66834225', '[\"*\"]', NULL, '2022-11-22 10:27:02', '2022-11-22 10:27:02'),
(68, 'App\\Models\\User', 33, 'MyApp', '071c6ad4f8ec67b8e8c63ba1369de3c063b16d17555a7e101db7e2615de5ab31', '[\"*\"]', NULL, '2022-11-22 10:27:41', '2022-11-22 10:27:41'),
(69, 'App\\Models\\User', 34, 'MyApp', 'd78f125c908860b7fda7864a94d0ed9cdf47466017f4b2b893c39a534102199d', '[\"*\"]', NULL, '2022-11-22 10:33:34', '2022-11-22 10:33:34'),
(70, 'App\\Models\\User', 35, 'MyApp', '8490044a7be573896b39876dcd761cd20ff6daa3d400e14317d1bbffa7579a1b', '[\"*\"]', NULL, '2022-11-22 10:37:59', '2022-11-22 10:37:59'),
(73, 'App\\Models\\User', 37, 'MyApp', '6582d55f4cca62cd63ab1a50f3db53d15f1a721eeb57888ecc5a9c904068c21b', '[\"*\"]', NULL, '2022-11-22 10:49:34', '2022-11-22 10:49:34'),
(74, 'App\\Models\\User', 38, 'MyApp', '1edebc359eac935b7665f1bdf4939ab797e4cbb5da839d8fc8d5c7fb71350fa4', '[\"*\"]', NULL, '2022-11-22 10:50:17', '2022-11-22 10:50:17'),
(75, 'App\\Models\\User', 39, 'MyApp', '598029453cabb27771ae34cf03173201b8c5ea4ceb9dc8bf251d9837e1082ff9', '[\"*\"]', NULL, '2022-11-22 10:50:31', '2022-11-22 10:50:31'),
(76, 'App\\Models\\User', 40, 'MyApp', '6eb3b2b19aa7dc2e8dac16b99dbcb9f9bda7c2e54adaa0fb22c94ec9916997b4', '[\"*\"]', NULL, '2022-11-22 10:50:53', '2022-11-22 10:50:53'),
(77, 'App\\Models\\User', 41, 'MyApp', 'b3a866b51f23db119c8a7a053b40cb4851847ca02c072b5de9564f50e68dd167', '[\"*\"]', NULL, '2022-11-22 10:52:48', '2022-11-22 10:52:48'),
(78, 'App\\Models\\User', 42, 'MyApp', 'eec739203f4dc751b29849c11147a4bff79d2359da58f26fe187d33d1711c4fc', '[\"*\"]', NULL, '2022-11-22 10:56:19', '2022-11-22 10:56:19'),
(86, 'App\\Models\\User', 46, 'MyApp', 'f155acd80da6fe3b5275620bcc1ccd4a4f2eff6fa63ef809bc6c5f99276d7457', '[\"*\"]', NULL, '2022-11-22 10:59:36', '2022-11-22 10:59:36'),
(87, 'App\\Models\\User', 47, 'MyApp', '986b4e32fa8bd7f9f286b19aac9df4f2e4552c5bd5be841aaea9f6aec57c6872', '[\"*\"]', NULL, '2022-11-22 10:59:49', '2022-11-22 10:59:49'),
(88, 'App\\Models\\User', 48, 'MyApp', '3dc63600cdbd9edbc8c6948f4d8547974f757330f75c1587f1622ef13268c81d', '[\"*\"]', NULL, '2022-11-22 11:00:02', '2022-11-22 11:00:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_address`, `created_at`, `updated_at`) VALUES
(46, 'Phạm Anh Tuân', 'patuan0810@gmail.com', '0914046999', 'Đại học sài gòn', '2022-11-22 10:59:36', '2022-11-22 10:59:36'),
(47, 'Lê Duy Khanh', 'duykhanh@gmail.com', '0914046996', 'Đại học sài gòn', '2022-11-22 10:59:49', '2022-11-22 10:59:49'),
(48, 'Hồ Văn Diện', 'hodien@gmail.com', '0914046995', 'Đại học sài gòn', '2022-11-22 11:00:02', '2022-11-22 11:00:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_status`, `updated_at`, `created_at`) VALUES
(1, 'Canon', '0', NULL, NULL),
(2, 'Sony', '0', NULL, NULL),
(3, 'Nikon', '0', NULL, NULL),
(4, 'Fujifilm', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, NULL, '2022-11-21 07:31:39', '2022-11-21 07:31:39'),
(43, 'Phạm Anh Tuân', 'patuan0810@gmail.com', '0914046999', 'Đại học sài gòn', '2022-11-22 10:57:03', '2022-11-22 10:57:15'),
(44, 'Lê Duy Khanh', 'duykhanh@gmail.com', '0914044996', 'Đại học sài gòn', '2022-11-22 10:57:45', '2022-11-22 10:58:05'),
(45, 'Hồ Văn Diện', 'hodien@gmail.com', '0914046995', 'Đại học sài gòn', '2022-11-22 10:58:28', '2022-11-22 10:58:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(26, '43', 27, '223777400', 'Đã xử lý', '2022-07-21 10:44:54', NULL),
(27, '44', 16, '160409700', 'Đã xử lý', '2022-08-21 10:44:54', NULL),
(29, '45', 17, '124496900', 'Đã xử lý', '2022-10-21 10:44:54', '2022-11-21 10:44:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(28, '26', '1', 'Canon EOS R10 Body', '34490000', '2', NULL, NULL),
(29, '26', '4', 'Sony Alpha ILCE-6400M', '28990000', '4', NULL, NULL),
(30, '27', '2', 'Canon EOS RP Body', '22800000', '2', NULL, NULL),
(31, '27', '4', 'Sony Alpha ILCE-6400M', '28990000', '3', NULL, NULL),
(32, '29', '1', 'Canon EOS R10 Body', '34490000', '1', NULL, NULL),
(33, '29', '2', 'Canon EOS RP Body', '22800000', '3', NULL, NULL),
(47, '43', '1', 'Canon EOS R10 Body', '34490000', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_origin` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_guarantee` int(50) NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_details`, `product_origin`, `product_guarantee`, `category_id`, `product_quantity`, `product_price`, `product_image`, `product_image_1`, `product_image_2`, `product_image_3`, `created_at`, `updated_at`) VALUES
(1, 'Canon EOS R10 Body', 'Máy ảnh Canon EOS R10 kit RF-S18-150mm F3.5-6.3 IS STM (nhập khẩu) cung cấp chất lượng hình ảnh ấn tượng ở cả ứng dụng chụp ảnh tĩnh và quay video. Nó cũng ghi lại những khoảnh khắc thoáng qua một cách đáng tin cậy với khả năng chụp liên tục đến 15 khung hình/giây. Hệ thống lấy nét Dual Pixel CMOS AF II với công nghệ AI để phát hiện chủ thể nâng cao, cung cấp hiệu suất lấy nét nhanh, chính xác và cực kỳ nhạy kể cả trong điều kiện ánh sáng yếu. ', 'Nhật bản', 24, '1', '10', 34490000, 'canon1.png', 'canon1-1.png', 'canon1-2.png', 'canon1-3.png', '2022-10-13 10:19:59', '2022-10-13 10:20:20'),
(2, 'Canon EOS RP Body', 'Với cảm biến CMOS full-frame 26.2MP, hệ thống lấy nét Dual Pixel CMOS AF, quay video 4K và thiết kế nhỏ gọn, Máy ảnh Canon EOS RP Body (nhập khẩu) là một chiếc máy ảnh tuyệt vời dành cho bạn. Đây cũng là máy ảnh mirrorless full-frame thứ hai của Canon được nhiều người săn đón.\n\nMáy ảnh Canon RP có kích thước nhỏ gọn và trọng lượng nhẹ, lý tưởng để mang theo và sử dụng mọi lúc mọi nơi. Báng tay cầm được thiết kế chắc chắn, cho khả năng cầm nắm tốt và cảm giác thoải mái khi sử dụng.', 'Trung Quốc', 12, '1', '3', 22800000, 'canon2.png', 'canon2-1.png', 'canon2-2.png', 'canon2-3.png', '2022-10-13 10:20:30', '2022-10-13 10:20:30'),
(3, 'Canon EOS M50 Mark II Body', 'Máy ảnh Canon M50 Mark II Body/ Trắng là phiên bản nâng cấp của Canon EOS M50 đã rất thành công trước đó. Với nhiều cải tiến đáng kể, Canon M50 II Body/ Trắng hứa hẹn sẽ mang đến cho bạn những trải nghiệm hay ho hơn bao giờ hết.', 'Italy', 12, '1', '6', 14990000, 'canon3.png', 'canon3-1.png', 'canon3-2.png', 'canon3-3.png', '2022-10-13 10:20:30', '2022-10-13 10:20:30'),
(4, 'Sony Alpha ILCE-6400M', 'Máy ảnh Sony Alpha A6400 Kit 18-135mm F3.5-5.6 OSS/ Đen được trang bị cảm biến hình ảnh APS-C Exmor CMOS 24.2MP kết hợp cùng bộ xử lý hình ảnh BIONZ X thế hệ mới giúp cải thiện toàn diện cả về chất lượng lẫn màu sắc hình ảnh trong mọi điều kiện chụp.\n\nKhả năng khử nhiễu cũng đã được cải thiện mang lại chất lượng hình ảnh rõ ràng hơn, ngay cả trong những cảnh tối cần chụp với độ nhạy cao. Độ nhạy ISO nguyên bản đã tăng lên ISO tối đa 32000 (với độ nhạy ISO được mở rộng ở ISO tối đa 102400 cho ảnh tĩnh). Giảm nhiễu đặc biệt hiệu quả trong phạm vi độ nhạy từ trung bình đến cao được sử dụng thường xuyên.\n\nVề mặt tốc độ chụp tổng thể, máy ảnh mirrorless Sony này có thể chụp liên tục 11 khung hình/giây bằng màn trập cơ học với khả năng tự động lấy nét liên tục và tự động phơi sáng. Độ sâu bộ đệm của nó đã tăng gấp đôi so với người tiền nhiệm. Nó hiện cung cấp 116 khung hình ở định dạng JPEG hoặc 46 ở định dạng RAW nén.', 'Trung Quốc', 12, '2', '9', 28990000, 'sony1.png', 'sony1-1.png', 'sony1-2.png', 'sony1-3.png', '2022-10-13 10:20:30', '2022-10-13 10:20:30'),
(5, 'Sony Cybershot DSC-ZV-1', 'Máy ảnh Sony ZV-1 là chiếc máy ảnh lý tưởng cho các vlogger, như chính Sony đã tuyên bố. Nó đẹp và dễ vận hành, tự động lấy nét nhanh, chính xác, chất lượng video và hình ảnh tĩnh tuyệt vời. ', 'Trung Quốc', 12, '2', '9', 16490000, 'sony2.png', 'sony2-1.png', 'sony2-2.png', 'sony2-3.png', '2022-10-13 10:20:30', '2022-10-13 10:20:30'),
(6, 'Sony ZV-E10 Kit 16-50mm F3.5-5.6 OSS', 'Đôi giày adidas NMD_V3 này đáp ứng mọi tiêu chí. Thông thoáng. Thoải mái. Làm từ chất liệu tái chế. Đảm bảo cả ba. Thêm vào đó là phong cách, chẳng hạn như các chi tiết đục lỗ vừa thời trang lại vừa thông thoáng. Chơi đùa với hiệu ứng xuyên thấu, 3 Sọc đơ', 'Trung Quốc', 12, '2', '9', 18490000, 'sony3.png', 'sony3-1.png', 'sony3-2.png', 'sony3-3.png', '2022-10-13 10:20:30', '2022-10-13 10:20:30'),
(7, 'Nikon Coolpix P950', 'Máy ảnh Nikon Coolpix P950 (nhập khẩu) tự hào có phạm vi zoom quang học 83x, bao phủ dải tiêu cự tương đương 24-2000mm. Coolpix P950 đưa sức mạnh đáng kinh ngạc của ống kính zoom 2.000mm vào một thân máy nhỏ gọn chỉ nặng 1005g. Sự kết hợp này cho phép bạn tự do nâng tầm sáng tạo của mình lên một tầm cao mới.', 'Nhật bản', 24, '3', '3', 18800000, 'nikon1.png', 'nikon1-1.png', 'nikon1-2.png', 'nikon1-3.png', NULL, NULL),
(8, 'Nikon Z6 II kit Z 24-70mm F4 S', 'Máy ảnh Nikon Z6 II kit Z 24-70mm F4 S (Nhập Khẩu) được thiết kế hoàn thiện để mang đến trải nghiệm tốt nhất cho các nhiếp ảnh gia và nhà quay phim chuyên nghiệp. Chụp ảnh độ phân giải cao 25MP, quay phim 4K 30fps, chụp liên tục 12fps, lấy nét tự động AF 273 điểm, ổn định hình ảnh 5 trục, Wi-Fi, Bluetooth tích hợp... Cùng nhiều tính năng khác mà bạn có thể tìm thấy trên chiếc máy ảnh này.', 'Nhật bản', 12, '3', '2', 55600000, 'nikon2.png', 'nikon2-1.png', 'nikon2-2.png', 'nikon2-3.png', NULL, NULL),
(9, 'Nikon Coolpix B500', 'Máy ảnh Nikon Coolpix B500 có trọng lượng 542g vừa vặn thoải mái trong tầm tay. Nó không quá lớn như máy ảnh DSLR hoặc một số mẫu siêu zoom lớn hơn, cũng không quá nhỏ để khiến việc truy cập các điều khiển trở nên khó khăn - nó vừa phải.\n\nMáy ảnh Nikon này có các nút thao tác đơn giản. Chế độ chụp có thể được chuyển đổi bằng nút xoay ở trên cùng. Một nút chỉnh zoom thay đổi góc qua lại giữa góc rộng hoặc tele. Thu phóng có thể được thay đổi bằng cách trượt một công tắc gần ống kính. Dường như, tất cả các nút cần thiết đều được đặt ở những vị trí thông minh.', 'Nhật bản', 24, '3', '19', 7800000, 'nikon3.png', 'nikon3-1.png', 'nikon3-2.png', 'nikon3-3.png', NULL, NULL),
(10, 'Fujifilm X-T5 Body', 'Máy ảnh Fujifilm X-T5 là chiếc máy ảnh mới nhất trong dòng sản phẩm XT rất phổ biến của hãng. Máy ảnh có cùng cảm biến X-Trans CMOS 5 HR BSI 40,2MP như X-H2 nhưng trong thân máy nhỏ gọn hơn. Có ổn định hình ảnh trong thân máy lên đến 7-stops, sử dụng công nghệ deep learning để nhận dạng động vật, chim, người….và có thể quay video 6.2K/30P 10-bit 4:2:2.', 'Nhật bản', 12, '4', '13', 43490000, 'fujifilm1.png', 'fujifilm1-1.png', 'fujifilm1-2.png', 'fujifilm1-3.png', NULL, NULL),
(11, 'Fujifilm X-T4 Body', 'Máy ảnh Fujifilm X-T4 Body/ Bạc là người kế nhiệm của Fujifilm X-T3 đã rất thành công trước đó. Mặc dù có cùng cảm biến và chất lượng như X-T3, song Fujifilm X-T4 có chế độ chụp liên tục nhanh hơn, pin mới và ổn định hình ảnh cũng như khả năng quay phim tốt hơn nhiều.\n\nMáy ảnh Fujifilm X-T4 cung cấp khả năng ghi hình độ phân giải 4K ở 60p/50p. Chức năng ổn định hình ảnh điện tử (DIS) được tích hợp mang đến cho bạn những thước phim mượt mà và sắc nét, vô cùng hiệu dụng khi dùng máy ở chế độ cầm tay.', 'Nhật bản', 24, '4', '15', 38990000, 'fujifilm2.png', 'fujifilm2-1.png', 'fujifilm2-2.png', 'fujifilm2-3.png', NULL, NULL),
(12, 'Fujifilm X-T30 Mark II', 'Máy ảnh Fujifilm X-T30 Mark II được trang bị bộ cảm biến APS-C X-Trans BSI CMOS 4 26.1MP và bộ xử lý hình ảnh X-Processor 4 mang lại chất lượng hình ảnh vượt trội. Bạn có thể chụp ở độ phân giải tối đa 6240 x 4160 pixel với tỷ lệ khung hình 1: 1, 3: 2 và 16: 9. Máy ảnh có dải ISO gốc từ 160 - 12800, có thể tăng lên 80 - 51200 và nó có thể lưu tệp ở định dạng RAW, mang đến cho bạn không gian rộng hơn để xử lý hậu kỳ.\n\nMột tính năng quan trọng khác về cảm biến của Fujifilm X-T30 II Kit XF18-55mm F2.8-4 R LM OIS/ Đen là không sử dụng bộ lọc thông thấp quang học. Loại bỏ bộ lọc thông thấp quang học giúp loại bỏ hiệu quả các tình trạng mờ nhoè lẫn sai màu, đồng thời tăng độ sắc nét và mức độ chi tiết cho hình ảnh.', 'Nhật bản', 12, '4', '5', 31000000, 'fujifilm3.png', 'fujifilm3-1.png', 'fujifilm3-2.png', 'fujifilm3-3.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_features`
--

CREATE TABLE `tbl_product_features` (
  `product_id` int(11) NOT NULL,
  `product_feature_1` varchar(500) DEFAULT NULL,
  `product_feature_2` varchar(500) DEFAULT NULL,
  `product_feature_3` varchar(500) DEFAULT NULL,
  `product_feature_4` varchar(500) DEFAULT NULL,
  `product_feature_5` varchar(500) DEFAULT NULL,
  `product_feature_6` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_features`
--

INSERT INTO `tbl_product_features` (`product_id`, `product_feature_1`, `product_feature_2`, `product_feature_3`, `product_feature_4`, `product_feature_5`, `product_feature_6`, `created_at`, `updated_at`) VALUES
(1, 'Cảm biến APS-C CMOS 32.5MP', 'Bộ xử lý hình ảnh DIGIC 8', 'Quay phim UHD 4K30p & Full HD 120p', 'Màn hình LCD 3.0\" cảm ứng, lật 180°', 'Ống kính Canon EF-M 15-45mm f/3.5-6.3 IS STM', 'Dual Pixel CMOS AF với 5481 điểm AF', NULL, NULL),
(2, 'Cảm biến CMOS Full-Frame 26.2MP', 'Bộ xử lý hình ảnh DIGIC 8', 'Quay phim 4K', 'Màn hình cảm ứng, xoay lật LCD 3.0\'\'', 'ISO 100 - 40000 (mở rộng đến 50, 51200, 102400)', 'Hệ thống lấy nét tự động Dual Pixel CMOS AF', NULL, '2022-11-22 07:44:25'),
(3, 'Cảm biến CMOS 20.3 megapixel ', 'Bộ xử lý hình ảnh Digic 6', 'Màn hình 3.0 inch ', 'Quay phim Full HD 1920 x 1080', 'Zoom Quang học 50x (24mm – 1200mm) ', 'Tốc độ màn chập 15 – 1/2000 giây', NULL, NULL),
(4, 'Cảm biến BSI-CMOS Exmor R 24.2 MP', 'Bộ xử lý BIONZ X, chip ngoại vi front-end LSI, bộ chuyển A/D: 14-bit', 'Chống rung 5 trục trên hệ thống cảm biến', 'Tốc độ màn trập 1/8.000 giây, chụp liên tiếp 10 fps', 'Chế độ chụp im lặng silent mode, màn trập điện tử', 'Pin NP-FZ100 7.2 V/16.4 Wh (2,280 mAh)', NULL, NULL),
(5, 'Cảm biến CMOS BSI Exmor RS 1\" 20.1MP', 'Chip xử lý hình ảnh BIONZ X kết hợp chip LSI ngoại vi', 'Ống kính ZEISS 24-70mm f/1.8-2.8', 'Màn hình cảm ứng LCD 3.0\" lật sang bên', 'Quay video 4K30p UHD với gamma HLG & S-Log3', 'Microphone 3 capsule định hướng, đèn tally, nút REC lớn', NULL, NULL),
(6, 'Cảm biến CMOS Exmor RS Full-Frame 24.2MP', 'Bộ xử lý hình ảnh BIONZ X & LSI Front-End', 'Màn hình LCD cảm ứng', 'Độ phân giải màn hình: 1.440.000 Dot', 'Chế độ chống rung 5 trục', 'Hệ thống lấy nét theo pha 693 điểm', NULL, NULL),
(7, 'Cảm biến BSI CMOS FX 24.5MP', 'Bộ xử lý hình ảnh EXPEED 6', 'ISO: 100 – 51200 (50 – 204800)', 'Độ phân giải video: 4K30p, Full HD 120p; MP4, H.264', 'Tốc độ màn trập: 1/8000s – 900s', 'Kích cỡ: 143.5 x 115.5 x 76 mm', NULL, NULL),
(8, 'Cảm biến hình ảnh mới EXPEED 5 với độ phân giải 20.9MP ', 'Màn hình cảm ứng LCD 3.2 \"2,539k-Dot Nghiêng ', 'Quay Video4K UHD ở 30 fps', 'Multi-CAM 20K 153-Point Hệ thống AF', 'ISO 51200, ISO mở rộng tới 1.640.000', '10 fps chụp cho đến 200 Frames\r\n', NULL, NULL),
(9, 'Cảm biến ảnh CMOS 20.9 MP APS-C', 'Bộ xử lý hình ảnh EXPEED 5', ' Màn hình LCD 3,2” cảm ứng, xoay lật góc 170 độ', 'Kính ngắm quang học, độ phủ 100% 0.94x', 'Quay phim 4K UHD (30/25/24p) ở chế độ crop 1.5x', 'Hệ thống lấy nét 51 điểm, 15 điểm cross-type', NULL, NULL),
(10, 'Cảm biến APS-C BSI X-Trans CMOS 4 26.1MP', 'Bộ xử lý hình ảnh X-Processor 4', 'Ổn định hình ảnh trong thân máy 5 trục, 6.5 bước', 'Màn hình cảm ứng LCD 3.0\" 1.62 triệu điểm', 'Quay phim DCI/UHD 4K60, Full HD 240 fps', 'ISO160-12800 (mở rộng 80-51200)', NULL, NULL),
(11, 'Cảm biến 26.1MP APS-C X-Trans BSI CMOS 4', 'Bộ xử lý X-Processor 4 với CPU Quad', 'Chụp liên tiếp tốc độ cao blackout-free 30 fps với 16.6MP', 'Quay Video UHD 4K 30fps, F-log Gamma DCI 4K 10bit', 'Màn hình cảm ứng tinh thể lỏng 3.0\" 1.04M điểm ảnh', '18 loại hiệu ứng giả lập phim', NULL, NULL),
(12, 'Cảm biến ảnh CMOS 20.9 MP APS-C', 'Bộ xử lý hình ảnh EXPEED 5', ' Màn hình LCD 3,2” cảm ứng, xoay lật góc 170 độ', 'Kính ngắm quang học, độ phủ 100% 0.94x', 'Quay phim 4K UHD (30/25/24p) ở chế độ crop 1.5x', 'Hệ thống lấy nét 51 điểm, 15 điểm cross-type', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(15, 'Le Duy Khanh', '170/5 hoa hung', '0868730424', 'leduykhanhqn123@gmail.com', 'nhanh nha shop oi', NULL, NULL),
(16, 'Le Duy Khanh', '170/5 hoa hung', '0868730424', 'leduykhanhqn123@gmail.com', '11111111111111', NULL, NULL),
(17, 'Le Duy Khanh', '170/5 hoa hung', '0868730424', 'leduykhanhqn123@gmail.com', 'sadfasdfasdf', NULL, NULL),
(23, 'dien', 'Đại học sài gòn', '0914046998', 'duykhanh@gmail.com', 'aaa', NULL, NULL),
(25, 'Phạm Tuân', 'TP.HCM', '0368999999', 'patuan0810@gmail.com', '1', NULL, NULL),
(26, 'Phạm Tuân', 'DHSG', '0368999999', 'patuan0810@gmail.com', '3', NULL, NULL),
(27, 'Phạm Tuân', 'TP.HCM', '0368999999', 'patuan0810@gmail.com', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', 0, '$2y$10$9sGxZzv5KREpiERKXAqsE.1ErGKmauoO74OyJPqYeP6kTWfCCXinu', NULL, '2022-11-02 07:51:26', '2022-11-02 07:51:26'),
(2, 'admin', 'admin@gmail.com', 1, '$2y$10$BshDMne69v/T6yawzQTuiejr8XpntF3V88dABzta4ESHeY0V0qUQ2', NULL, '2022-11-02 07:52:38', '2022-11-02 07:52:38'),
(43, 'Phạm Anh Tuân', 'patuan0810@gmail.com', 0, '$2y$10$l/3GGA.Rf7xh4bAmCbDXYOqOuDEk1rUYf3rBCDa00sSZ5K7rA58fu', NULL, '2022-11-22 10:57:03', '2022-11-22 10:57:15'),
(44, 'Lê Duy Khanh', 'duykhanh@gmail.com', 0, '$2y$10$6lLd4LQGSQXeIp2Svd.dDOTFGZ2woUI1pqMz.eH8ZEePiY4s46UhO', NULL, '2022-11-22 10:57:44', '2022-11-22 10:58:04'),
(45, 'Hồ Văn Diện', 'hodien@gmail.com', 0, '$2y$10$426LOoGJJWYodBYd4yV2F.snh.XM0sjN13/NuAK8XL.vo3kS0mco6', NULL, '2022-11-22 10:58:27', '2022-11-22 10:58:56'),
(46, 'tuan', 'patuan0810@gmail.com', 1, '$2y$10$3vABKhvWJCIhdna/oEF34OdGS4uy0d3HjobJcMYGkZS9tf2kMn.Ey', NULL, '2022-11-22 10:59:35', '2022-11-22 10:59:35'),
(47, 'khanh', 'duykhanh@gmail.com', 1, '$2y$10$ke9JzR9GAcjg8EBE/ja4e.Elaie2Zcad3GlALC6esP0MgUTdKSHFy', NULL, '2022-11-22 10:59:49', '2022-11-22 10:59:49'),
(48, 'dien', 'hodien@gmail.com', 1, '$2y$10$XNwSeCCuMPbZFn25bz0YMe3F4vu46Qb34EFPCJqS2nBw2bY0rBwEu', NULL, '2022-11-22 11:00:02', '2022-11-22 11:00:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product_features`
--
ALTER TABLE `tbl_product_features`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
