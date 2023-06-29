-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 29, 2023 lúc 11:52 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `unimart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_thumb1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_thumb2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `abouts`
--

INSERT INTO `abouts` (`id`, `page_title`, `page_content`, `page_thumb1`, `page_thumb2`) VALUES
(2, 'Thế Giới Di Động mở mô hình kinh doanh mới, tạo điều kiện cho 30.000 cửa hàng nhỏ lẻ tại VN thành cộng tác viên bán hàng', 'Thế Giới Di Động (TGDĐ) vừa lên kế hoạch cho một mô hình kinh doanh mới có tên \"Mô hình Cộng tác viên\". Theo đó các cửa hàng nhỏ lẻ trên khắp cả nước đang kinh doanh thiết bị điện tử sẽ có cơ hội hợp tác cùng TGDĐ và Điện máy XANH với vai trò \"tư vấn viên\" và nhận mức chiết khấu phù hợp.\r\nViệt Nam hiện có khoảng 20.000 - 30.000 cửa hàng nhỏ lẻ đang kinh doanh các mặt hàng điện thoại, điện máy. Các cửa hàng nếu có mặt bằng và bảng hiệu, có thể đăng ký thành cộng tác viên để kinh doanh cùng TGDĐ.\r\nPhía TGDĐ sẽ thẩm định thông tin đại lý, cùng với đó mức chiết khấu dành cho các đại lý nhỏ lẻ này là từ 5 - 20%. Ví dụ, mức chiết khấu cho một chiếc điện thoại đang có giá 8.69 triệu đồng có thể là 869.000 đồng, tương đương 10%.\r\n\r\nNói một cách dễ hiểu, các cộng tác viên này đóng vai trò tư vấn cho sản phẩm của TGDĐ. Khi khách hàng đồng ý mua, mọi thao tác còn lại sẽ do phía công ty thực hiện.\r\nMô hình này mang đến một số lợi ích cho các cửa hàng nhỏ lẻ như: Không cần vốn, không cần phải chứa ', 'thegioididong/thumb1.jpg\r\n', 'thegioididong/thumb2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat_titles`
--

CREATE TABLE `cat_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cat_titles`
--

INSERT INTO `cat_titles` (`id`, `cat_id`, `cat_title`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone', NULL, NULL, NULL),
(2, 2, 'SamSung', NULL, NULL, NULL),
(3, 3, 'Laptop', NULL, NULL, NULL),
(4, 4, 'Đồng Hồ', NULL, NULL, NULL),
(5, 5, 'Tai nghe', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `email`, `facebook`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 97468095, 'hungbg.dev1@gmail.com', '', NULL, '2021-10-30 12:58:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_orders`
--

INSERT INTO `detail_orders` (`id`, `cat_title`, `product_name`, `product_thumb`, `price`, `qty`, `sub_total`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'Iphone 12 promax', 'phone/iphone/ip12-promax.jpg', 30000000, 1, 30000000, 1, '2021-11-10 07:42:46', NULL),
(2, 'SamSung', 'SamSung s20', 'phone/samsung/ss-s21plus.jpg', 13000000, 1, 13000000, 1, '2021-11-10 07:42:46', NULL),
(3, 'Laptop', 'Mabook 2020', 'none', 30000000, 1, 30000000, 2, '2021-11-10 07:42:46', NULL),
(124, 'Iphone', 'iPhone 12 pro', 'phone/iphone/ip12-pro.jpg', 23000000, 1, 23000000, 103, '2021-11-10 07:42:46', NULL),
(125, 'Iphone', 'iPhone 12 mini 64GB ', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 106, NULL, NULL),
(126, 'Iphone', 'iPhone 12 SE XR', 'phone/iphone/ip-xr.jpg', 39999000, 1, 39999000, 106, NULL, NULL),
(127, 'Iphone', 'iPhone 11 RED', 'phone/iphone/ip11-red.jpg', 39999000, 1, 39999000, 107, NULL, NULL),
(128, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 2, 79998000, 107, NULL, NULL),
(129, 'Iphone', 'iPhone 12 promax', 'phone/iphone/ip12-pro.jpg', 39999000, 1, 39999000, 108, NULL, NULL),
(130, 'Laptop', 'Laptop Acer Nitro 5 Gaming ', 'laptop/lap-10.jpg', 15000000, 1, 15000000, 109, NULL, NULL),
(131, 'Iphone', 'iPhone 11  GREEN', 'phone/iphone/ip11-x.jpg', 39999000, 1, 39999000, 110, NULL, NULL),
(132, 'SamSung', 'Samsung Galaxy A52 ', 'phone/samsung/ss-a12n.jpg', 4690000, 1, 4690000, 111, NULL, NULL),
(133, 'Laptop', 'Laptop Pro 2021', 'laptop/lap-12.jpg', 19000000, 1, 19000000, 112, NULL, NULL),
(134, 'Iphone', 'iPhone 12 pro-White', 'phone/iphone/ip12-pro.jpg', 23000000, 1, 23000000, 113, NULL, NULL),
(135, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 114, NULL, NULL),
(136, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 115, NULL, NULL),
(137, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 116, NULL, NULL),
(138, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 117, NULL, NULL),
(139, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 118, NULL, NULL),
(140, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 118, NULL, NULL),
(141, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 119, NULL, NULL),
(142, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 120, NULL, NULL),
(143, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 121, NULL, NULL),
(144, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 122, NULL, NULL),
(145, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 123, NULL, NULL),
(146, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 124, NULL, NULL),
(147, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 125, NULL, NULL),
(148, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 126, NULL, NULL),
(149, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 127, NULL, NULL),
(150, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 128, NULL, NULL),
(151, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 129, NULL, NULL),
(152, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 130, NULL, NULL),
(153, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 131, NULL, NULL),
(154, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 132, NULL, NULL),
(155, 'Iphone', 'iPhone 12 promax', 'phone/iphone/ip12-pro.jpg', 39999000, 1, 39999000, 133, NULL, NULL),
(156, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 134, NULL, NULL),
(157, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 135, NULL, NULL),
(158, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 136, NULL, NULL),
(159, 'Iphone', 'iPhone 12  WHITE', 'phone/iphone/ip-se.jpg', 39999000, 1, 39999000, 137, NULL, NULL),
(160, 'Iphone', 'iPhone 12 pro-White', 'phone/iphone/ip12-pro.jpg', 23000000, 1, 23000000, 138, NULL, NULL),
(161, 'Iphone', 'iPhone 12 pro-White', 'phone/iphone/ip12-pro.jpg', 23000000, 1, 23000000, 139, NULL, NULL),
(162, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 140, NULL, NULL),
(163, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 141, NULL, NULL),
(164, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 142, NULL, NULL),
(165, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 143, NULL, NULL),
(166, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 144, NULL, NULL),
(167, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 145, NULL, NULL),
(168, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 146, NULL, NULL),
(169, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 147, NULL, NULL),
(170, 'Iphone', 'iPhone 12 mini 64GB', 'phone/iphone/ip12-mini.jpg', 16490000, 1, 16490000, 148, NULL, NULL),
(171, 'SamSung', 'Samsung Galaxy A52 ', 'phone/samsung/ss-a12n.jpg', 4690000, 1, 4690000, 150, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_products`
--

CREATE TABLE `info_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(10) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rear_camera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_camera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Chip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RAM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Memory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pin_charger` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CPU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hard_drive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connector` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info_products`
--

INSERT INTO `info_products` (`id`, `cat_id`, `product_name`, `cat_title`, `screen`, `operating_system`, `rear_camera`, `front_camera`, `Chip`, `RAM`, `Memory`, `Sim`, `Pin_charger`, `CPU`, `hard_drive`, `card`, `connector`, `special`, `size_weight`, `release_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone', 'Iphone', 'OLED6.1\"Super Retina XDR', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A14 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '2815 mAh20 W', '', '', '', '', '', '', 0, NULL, NULL),
(2, 2, 'SamSung', 'SamSung', 'Super AMOLED6.5\"Full HD+', 'Android 11', 'Chính 64 MP & Phụ 12', '32 MP', 'Snapdragon 750G 5G', '8 GB', '128 GB', '2 Nano SIM Hỗ trợ 5G', '4500 mAh25 W', '', '', '', '', '', '', 0, NULL, NULL),
(3, 3, 'Laptop', 'Laptop', '15.6\"Full HD (1920 x 1080) 60 Hz', 'Windows 10 Home SL', '', '', 'Snapdragon 750G 5G', '8 GBDDR4 (2 khe)2400', '', '', '', 'AMD Ryzen 73750H2.30 GHz', 'SSD 512 GB NVMe PCIe', 'Card rờiNVIDIA GeForce GTX 165', 'Jack tai nghe 3.5 mm2 x USB 3.', 'Có đèn bàn phím', 'Dài 363.4 mm - Rộng 254.5 mm ', 2020, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_watch`
--

CREATE TABLE `info_watch` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Screen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_charger` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `face` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `health_features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info_watch`
--

INSERT INTO `info_watch` (`id`, `product_name`, `Screen`, `time_charger`, `operating_system`, `face`, `health_features`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Apple Watch', 'OLED1.57 inch', 'Khoảng 1.5 ngày', 'iOS 14 trở lên', 'Ion-X strengthened gIon-X strengthened glass40 mm', 'Chế độ luyện tập, theo dõi giấc ngủ, tính lượng calories tiêu thụ, tính quãng đường chạy.', 'Apple', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_roles`
--

CREATE TABLE `list_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(100) NOT NULL,
  `key_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `list_roles`
--

INSERT INTO `list_roles` (`id`, `name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'Danh mục', NULL, NULL, 0, ''),
(2, 'Danh sách danh mục', NULL, NULL, 1, 'list_folder'),
(3, 'Xóa danh mục', NULL, NULL, 1, 'delete_folder'),
(4, 'Thêm danh mục', NULL, NULL, 1, 'add_folder'),
(5, 'Chỉnh sửa danh mục', NULL, NULL, 1, 'edit_folder'),
(6, 'Trang', NULL, NULL, 0, ''),
(7, 'Danh sách trang', NULL, NULL, 6, 'list_page'),
(8, 'Xóa trang', NULL, NULL, 6, 'delete_page'),
(9, 'Thêm trang', NULL, NULL, 6, 'add_page'),
(10, 'Chỉnh sửa trang', NULL, NULL, 6, 'edit_page'),
(11, 'Bài viết', NULL, NULL, 0, ''),
(12, 'Danh sách bài viết', NULL, NULL, 11, 'list_post'),
(13, 'Xóa bài viết', NULL, NULL, 11, 'delete_post'),
(14, 'Thêm bài viết', NULL, NULL, 11, 'add_post'),
(15, 'Chỉnh sửa bài viết', NULL, NULL, 11, 'edit_post'),
(16, 'Sản phẩm', NULL, NULL, 0, ''),
(17, 'Danh sách sản phẩm', NULL, NULL, 16, 'list_product'),
(18, 'Thêm sản phẩm', NULL, NULL, 16, 'add_product'),
(19, 'Xóa sản phẩm', NULL, NULL, 16, 'delete_product'),
(20, 'Chỉnh sửa sản phẩm', NULL, NULL, 16, 'edit_product'),
(21, 'Member', NULL, NULL, 0, ''),
(22, 'Danh sách thành viên', NULL, NULL, 21, 'list_member'),
(23, 'Xóa thành viên', NULL, NULL, 21, 'delete_member'),
(24, 'Thêm thành viên', NULL, NULL, 21, 'add_member'),
(25, 'Chỉnh sửa thành viên', NULL, NULL, 21, 'edit_member'),
(26, 'Cấp role', NULL, NULL, 0, ''),
(27, 'Quản lý role', NULL, NULL, 26, 'list_role'),
(28, 'Cấp role', NULL, NULL, 26, 'add_role'),
(29, 'Xóa role', NULL, NULL, 26, 'delete_role'),
(30, 'Chỉnh sửa role', NULL, NULL, 26, 'edit_role'),
(31, 'Bán hàng', NULL, NULL, 0, ''),
(32, 'Quản lý danh sách đơn hàng', NULL, NULL, 31, 'list_order'),
(33, 'Cập nhật đơn hàng', NULL, NULL, 31, 'update_order'),
(34, 'Xóa đơn hàng\r\n', NULL, NULL, 31, 'delete_order'),
(35, 'Chỉnh sửa đơn hàng', NULL, NULL, 31, 'edit_order');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_role_role`
--

CREATE TABLE `list_role_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `list_role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `list_role_role`
--

INSERT INTO `list_role_role` (`id`, `role_id`, `list_role_id`, `created_at`, `updated_at`) VALUES
(324, 1, 2, NULL, NULL),
(325, 1, 3, NULL, NULL),
(326, 1, 4, NULL, NULL),
(327, 1, 5, NULL, NULL),
(328, 1, 7, NULL, NULL),
(329, 1, 8, NULL, NULL),
(330, 1, 9, NULL, NULL),
(331, 1, 10, NULL, NULL),
(332, 1, 12, NULL, NULL),
(333, 1, 13, NULL, NULL),
(334, 1, 14, NULL, NULL),
(335, 1, 15, NULL, NULL),
(336, 1, 17, NULL, NULL),
(337, 1, 18, NULL, NULL),
(338, 1, 19, NULL, NULL),
(339, 1, 20, NULL, NULL),
(340, 1, 22, NULL, NULL),
(341, 1, 23, NULL, NULL),
(342, 1, 24, NULL, NULL),
(343, 1, 25, NULL, NULL),
(344, 1, 27, NULL, NULL),
(345, 1, 28, NULL, NULL),
(346, 1, 29, NULL, NULL),
(347, 1, 30, NULL, NULL),
(348, 1, 32, NULL, NULL),
(349, 1, 33, NULL, NULL),
(350, 1, 34, NULL, NULL),
(351, 1, 35, NULL, NULL),
(352, 2, 2, NULL, NULL),
(353, 2, 3, NULL, NULL),
(354, 2, 4, NULL, NULL),
(355, 2, 5, NULL, NULL),
(356, 3, 7, NULL, NULL),
(357, 3, 8, NULL, NULL),
(358, 3, 9, NULL, NULL),
(359, 3, 10, NULL, NULL),
(360, 4, 12, NULL, NULL),
(361, 4, 13, NULL, NULL),
(362, 4, 14, NULL, NULL),
(363, 4, 15, NULL, NULL),
(364, 5, 17, NULL, NULL),
(365, 5, 18, NULL, NULL),
(366, 5, 19, NULL, NULL),
(367, 5, 20, NULL, NULL),
(368, 6, 22, NULL, NULL),
(369, 6, 23, NULL, NULL),
(370, 6, 24, NULL, NULL),
(371, 6, 25, NULL, NULL),
(372, 7, 27, NULL, NULL),
(373, 7, 28, NULL, NULL),
(374, 7, 29, NULL, NULL),
(375, 7, 30, NULL, NULL),
(381, 8, 32, NULL, NULL),
(382, 8, 33, NULL, NULL),
(383, 8, 34, NULL, NULL),
(384, 8, 35, NULL, NULL),
(385, 48, 2, NULL, NULL),
(386, 48, 3, NULL, NULL),
(387, 48, 4, NULL, NULL),
(388, 48, 5, NULL, NULL),
(389, 48, 7, NULL, NULL),
(390, 48, 8, NULL, NULL),
(391, 48, 9, NULL, NULL),
(392, 48, 10, NULL, NULL),
(393, 48, 12, NULL, NULL),
(394, 48, 13, NULL, NULL),
(395, 48, 14, NULL, NULL),
(396, 48, 15, NULL, NULL),
(397, 48, 17, NULL, NULL),
(398, 48, 18, NULL, NULL),
(399, 48, 19, NULL, NULL),
(400, 48, 20, NULL, NULL),
(401, 48, 27, NULL, NULL),
(402, 48, 28, NULL, NULL),
(403, 48, 29, NULL, NULL),
(404, 48, 32, NULL, NULL),
(405, 48, 33, NULL, NULL),
(406, 48, 34, NULL, NULL),
(407, 48, 35, NULL, NULL);

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_10_24_010711_create_products_table', 1),
(4, '2021_10_24_010810_create_posts_table', 1),
(5, '2021_10_24_010927_create_pages_table', 1),
(6, '2021_10_24_020149_create_zoom_products_table', 1),
(7, '2021_10_24_020223_create_mix_products_table', 1),
(8, '2021_10_24_020254_create_info_products_table', 1),
(9, '2021_10_24_020312_create_info_watch_table', 1),
(10, '2021_10_28_030004_create_order_table', 2),
(11, '2021_10_29_015155_create_detail_order_table', 2),
(12, '2021_10_29_105927_create_cat_title_table', 3),
(13, '2021_10_30_102318_create_about_table', 4),
(14, '2021_10_30_104847_create_posts_table', 5),
(15, '2021_10_30_125513_create_contact_table', 6),
(16, '2021_11_01_120719_search', 7),
(17, '2014_10_12_100000_create_password_resets_table', 8),
(18, '2021_10_03_065344_create_posts_table', 9),
(19, '2021_10_10_022502_create_products_table', 9),
(20, '2021_10_11_022812_add_soft_delete_to_posts_table', 10),
(21, '2021_10_14_013039_create_products_folder_table', 10),
(22, '2021_10_14_061907_create_posts_folders_table', 11),
(23, '2021_10_17_093427_create_pages_table', 12),
(24, '2021_11_08_072813_create_order_table', 12),
(25, '2021_11_13_004142_create_role_table', 12),
(26, '2021_11_13_004320_create_list_roles__table', 13),
(27, '2021_11_13_004320_create_list_roles_table', 14),
(28, '2021_11_13_004417_create_role_list_roles_table', 15),
(29, '2021_11_13_004142_create_roles_table', 16),
(30, '2021_11_13_004417_create_role_list_role_table', 16),
(31, '2021_11_13_004417_create_list_role_role_table', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mix_products`
--

CREATE TABLE `mix_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mix_products`
--

INSERT INTO `mix_products` (`id`, `cat_id`, `cat_title`, `title`, `product_name`, `product_title`, `slug`, `price`, `old_price`, `code`, `product_desc`, `product_thumb`, `product_content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone', 'Phone', 'iPhone 12 mini 64GB ', 'Điện thoại iPhone 12 mini 64GB ', 'iPhone-12-mini-64GB', '16490000', '17000000', 'IP12-1', 'iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.', 'phone/iphone/ip12-mini.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính.\r\n\r\nLần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ', NULL, NULL, NULL),
(5, 1, 'Iphone', 'Phone', 'iPhone 12  WHITE', 'Điện thoại iPhone 12 SE WHITE', 'iPhone-12-WHITE', '39999000', '40000000', 'IP12-5', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip-se.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, NULL),
(8, 1, 'Iphone', 'Phone', 'iPhone 12 SE XR', 'Điện thoại iPhone 12 SE XR', 'iPhone-12-SE-XR', '39999000', '40000000', 'IP12-8', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip-xr.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, NULL),
(10, 2, 'Samsung', 'Phone', 'Samsung Galaxy A52 ', 'Điện thoại Samsung Galaxy A52 ', 'Samsung-Galaxy-A52 ', '19999000', '2000000', 'IP12-2', 'Điện thoại iPhone 12 pro tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.IP12-2', 'phone/samsung/ss-a12n.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính.\r\nLần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ t', NULL, NULL, NULL),
(15, 2, 'SamSung', 'Phone', 'Samsung Galaxy S21', 'Điện thoại Samsung Galaxy S21 Plus (6GB/128GB) ', 'Samsung-Galaxy-S21', '4690000', '4700000', 'IP12-5', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/samsung/ss-s21plus.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, NULL),
(27, 1, 'Iphone', 'Phone', 'iPhone 11 RED', 'Điện thoại iPhone 11 RED', 'iPhone-11-RED', '19999000', '20000000', 'IP12-3', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip11-red.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, NULL),
(32, 2, 'Samsung', 'Phone', 'Samsung Galaxy M51', 'Điện thoại Samsung Galaxy M51', 'Samsung-Galaxy-M51', '5600000', '5999000', 'IP12-7', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/samsung/ss-a12wn.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, NULL),
(37, 1, 'Iphone', 'Phone', 'iPhone 11  GREEN', 'Điện thoại iPhone 11 SE GREEN', 'iPhone-11-GREEN', '2300000', '2399000', 'IP12-4', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip11-x.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_order` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `name`, `email`, `phone`, `address`, `num_order`, `total`, `pay`, `format`, `created_at`, `updated_at`) VALUES
(1, 'HB-371343586', 'Hưng Bành', 'hlmthihi@gmail.com', 979468095, 'none', 2, '43,000,000', 'Thanh toán online', 'Đang xử lý', '2021-11-03 20:52:49', '2021-11-24 04:18:59'),
(2, 'HB-371232586', 'Hưng Ga', 'hungba@gmail.com', 979482345, 'none', 1, '30,000,000', 'Thanh toán online', 'Đã giao hàng', '2021-10-29 18:50:43', '2021-11-10 01:23:22'),
(35, 'HB-371822586', 'dbinsert', 'dbinsert@gmail.com', 979468095, 'dbinsert123', 2, '46,490,000', 'Thanh toán online', 'Đang vận chuyển', '2021-10-29 18:50:43', '2021-11-08 18:16:00'),
(37, 'HB-371322586', 'Hưng Bành', 'hlmthihi@gmail.com', 979468095, 'congasda', 1, '39,999,000', 'Thanh toán online', 'Đã giao hàng', '2021-11-03 20:52:49', '2021-11-10 01:23:22'),
(77, 'HB-371922586', 'Hưng Bành', 'hlmthihi@gmail.com', 979468095, 'conga', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2021-11-07 04:44:46', '2021-11-10 01:26:45'),
(103, 'HB-371342586', 'hunftest', 'hlmthihi@gmail.com', 979468095, 'confasda', 1, '23,000,000', 'Thanh toán online', 'Đã giao hàng', '2021-11-08 13:26:11', '2021-11-24 04:18:31'),
(106, 'HB-2008536166', 'Hưng test', 'hlmthihi@gmail.com', 987394721, 'Cù Bị', 2, '56,489,000', 'Thanh toán online', 'Đang vận chuyển', '2021-11-09 12:23:09', '2021-11-10 01:23:29'),
(107, 'HB-1215749833', 'review123', 'hlmthihi@gmail.com', 979468095, 'review123', 3, '119,997,000', 'Thanh toán online', 'Đã giao hàng', '2021-11-18 01:49:02', '2021-11-24 04:18:45'),
(108, 'HB-1236231871', 'hưng test123', 'hlmthihi@gmail.com', 979468052, 'dasdada', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2021-11-23 02:00:14', '2021-11-23 02:00:14'),
(109, 'HB-1931264900', 'hahah123', 'hlmthihi@gmail.com', 979468095, 'csadad', 1, '15,000,000', 'Thanh toán online', 'Hủy đơn hàng', '2021-11-23 02:01:21', '2021-11-24 04:18:40'),
(110, 'HB-1672527379', 'da', 'gung@gmail.com', 979468095, 'das', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-26 03:44:06', '2022-10-26 03:44:06'),
(111, 'HB-1281820252', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'dsada', 1, '4,690,000', 'Thanh toán online', 'Đang xử lý', '2022-10-27 03:54:49', '2022-10-27 03:54:49'),
(112, 'HB-928476103', 'hung nguyen', 'hlmthihi@gmail.com', 979468095, 'dasd', 1, '19,000,000', 'Thanh toán online', 'Đang xử lý', '2022-10-27 04:39:01', '2022-10-27 04:39:01'),
(113, 'HB-2079609473', 'hung nguyen', 'hlmthisshi@gmail.com', 979468095, 'sadas', 1, '23,000,000', 'Thanh toán online', 'Đang xử lý', '2022-10-27 04:40:31', '2022-10-27 04:40:31'),
(114, 'HB-1624715050', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'dsad', 1, '16,490,000', 'Thanh toán trực tiếp', 'Đã giao hàng', '2022-10-29 08:09:01', '2022-10-29 01:42:30'),
(115, 'HB-2054692257', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'adsa', 1, '16,490,000', 'Thanh toán trực tiếp', 'Đang xử lý', '2022-10-29 09:10:12', '2022-10-29 09:10:12'),
(116, 'HB-601807256', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'dadsa', 1, '39,999,000', 'Thanh toán trực tiếp', 'Đang xử lý', '2022-10-29 09:11:01', '2022-10-29 09:11:01'),
(117, 'HB-236230709', 'adadsa', 'hungbg.dev11111@gmail.com', 979468095, 'dada', 1, '39,999,000', 'Thanh toán trực tiếp', 'Đang xử lý', '2022-10-29 09:12:24', '2022-10-29 09:12:24'),
(118, 'HB-2115407166', 'Hung Banh', 'hungbg.dsadadev1@gmail.com', 979468095, 'dadas', 2, '56,489,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 09:24:31', '2022-10-29 09:24:31'),
(119, 'HB-1320939879', 'hung_cus', 'hungbgdsadas.dev1@gmail.com', 979468095, 'asddads', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:07:59', '2022-10-29 10:07:59'),
(120, 'HB-1055110103', 'hung_cus', 'hungbgdsadas.dev1@gmail.com', 979468095, 'asddads', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:08:33', '2022-10-29 10:08:33'),
(121, 'HB-1963942778', 'hung_cus', 'hungbgdsadas.dev1@gmail.com', 979468095, 'asddads', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:08:48', '2022-10-29 10:08:48'),
(122, 'HB-283918651', 'hung_cus', 'hungbgdsadas.dev1@gmail.com', 979468095, 'asddads', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:09:33', '2022-10-29 10:09:33'),
(123, 'HB-1063865759', 'hungcus', 'hungbgdsada.dev1@gmail.com', 979468095, 'dasdas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:13:50', '2022-10-29 10:13:50'),
(124, 'HB-1472114321', 'hungcus', 'hungbgdsada.dev1@gmail.com', 979468095, 'dasdas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:17:21', '2022-10-29 10:17:21'),
(125, 'HB-287137029', 'hungcus', 'hungbgdsada.dev1@gmail.com', 123456789, 'dasdas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:17:35', '2022-10-29 10:17:35'),
(126, 'HB-259451204', 'hungcus', 'hungbgdsada.dev1@gmail.com', 123456788, 'dasdas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:18:01', '2022-10-29 10:18:01'),
(127, 'HB-1893756245', 'hungcus', 'hungbgdsada.dev1@gmail.com', 123456788, 'dasdas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:18:18', '2022-10-29 10:18:18'),
(128, 'HB-696596783', 'hungcus', 'hungbgdsada.dev1@gmail.com', 123456788, 'dasdas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:18:37', '2022-10-29 10:18:37'),
(129, 'HB-1933075278', 'hung_cus2', 'hungbg32131.dev1@gmail.com', 123456778, 'dasda', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:19:04', '2022-10-29 10:19:04'),
(130, 'HB-2122399077', 'hung_cus2', 'hungbg32131.dev1@gmail.com', 123456728, 'dasda', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:19:19', '2022-10-29 10:19:19'),
(131, 'HB-1984336896', 'hungsuccesss', 'hungbgdsadev1@gmail.com', 912345671, 'dsadas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:21:41', '2022-10-29 10:21:41'),
(132, 'HB-1777780908', 'hungsuccess2', 'hungbdsag.dev1@gmail.com', 941345641, 'dsadas', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-10-29 10:22:27', '2022-10-29 10:22:27'),
(133, 'HB-359480832', 'Hung Banh', 'hlmthihi@gmail.com', 979468095, 'dsad', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2022-11-07 09:14:33', '2022-11-07 09:14:33'),
(134, 'HB-283532040', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, '123', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-18 02:36:24', '2023-06-18 02:36:24'),
(135, 'HB-179379845', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'Đường 449, phường Tăng Nhơn Phú A , Q9', 1, '16,490,000', 'Thanh toán online', 'Hủy đơn hàng', '2023-06-18 03:11:22', '2023-06-17 20:17:59'),
(136, 'HB-1969112391', 'hungbanh', 'hungbg.dev1@gmail.com', 979568095, 'SG', 1, '16,490,000', 'Thanh toán online', 'Đã giao hàng', '2023-06-18 03:17:01', '2023-06-17 20:17:47'),
(137, 'HB-1690341538', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, '123', 1, '39,999,000', 'Thanh toán online', 'Đang xử lý', '2023-06-18 03:20:22', '2023-06-18 03:20:22'),
(138, 'HB-2119757460', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'test', 1, '23,000,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:05:11', '2023-06-20 03:05:11'),
(139, 'HB-2099745018', 'Hung Banh', 'gung@gmail.com', 979468095, '123', 1, '23,000,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:19:21', '2023-06-20 03:19:21'),
(140, 'HB-1384510569', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:21:48', '2023-06-20 03:21:48'),
(141, 'HB-835321017', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:27:35', '2023-06-20 03:27:35'),
(142, 'HB-358369249', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:27:54', '2023-06-20 03:27:54'),
(143, 'HB-110241958', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:27:59', '2023-06-20 03:27:59'),
(144, 'HB-721947727', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:28:34', '2023-06-20 03:28:34'),
(145, 'HB-15547337', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:31:12', '2023-06-20 03:31:12'),
(146, 'HB-777567773', 'ad', 'hlmthihi@gmail.com', 1979468095, 'testt', 1, '16,490,000', 'Thanh toán online', 'Đang xử lý', '2023-06-20 03:40:42', '2023-06-20 03:40:42'),
(147, 'HB-1281391585', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'test', 1, '16,490,000', 'Thanh toán trực tiếp', 'Đang xử lý', '2023-06-27 02:46:53', '2023-06-27 02:46:53'),
(148, 'HB-1297557203', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, '12313', 1, '16,490,000', 'Thanh toán trực tiếp', 'Đang xử lý', '2023-06-29 08:35:50', '2023-06-29 08:35:50'),
(149, 'HB-1685563968', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, '12313', 0, '0', 'Thanh toán trực tiếp', 'Đang xử lý', '2023-06-29 08:36:25', '2023-06-29 08:36:25'),
(150, 'HB-426354592', 'Hung Banh', 'hungbg.dev1@gmail.com', 979468095, 'test', 1, '4,690,000', 'Thanh toán online', 'Đang xử lý', '2023-06-29 08:37:04', '2023-06-29 08:37:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_thumb` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `page_thumb`, `page_content`, `cat_title`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://cdn.tuoitre.vn/thumb_w/586/2021/6/20/2021-06-19t161749z770822875up1eh6j199ns9rtrmadp3soccer-euro-por-ger-report-1624123682940146946054.jpeg', '<div id=\"wp-content\">\n                <p class=\"pt-3\">Ngày tạo: 15/09/2021</p>\n<p class=\"pt-3\">&nbsp;</p>\n<h3><strong>Hiệu năng Apple A15 trên iPhone 13 đã hé lộ điểm hiệu năng cực khủng (cập nhật: 07/09)</strong></h3>\n<p>Theo nguồn tin từ trang&nbsp;Appleinsier, điểm chuẩn đồ họa (GPU) của chip Apple Apple A15 (dành cho dòng iPhone 13) sẽ nhanh hơn 13.7% so với thế hệ tiền nhiệm và mình nghĩ khả năng cao con chip này sẽ tiếp tục vị thế đứng đầu giống như những con chip Apple A thế hệ trước.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Hiệu năng chip Apple A15 dành cho iPhone 13 vừa hé lộ: Tiếp tục khiến cho các đối thủ Android ‘hít khói’\" src=\"https://cdn.tgdd.vn/Files/2021/09/07/1380757/thumb_1280x718-800-resize.jpg\" alt=\"Hiệu năng chip Apple A15 dành cho iPhone 13 vừa hé lộ: Tiếp tục khiến cho các đối thủ Android ‘hít khói’\" data-original=\"https://cdn.tgdd.vn/Files/2021/09/07/1380757/thumb_1280x718-800-resize.jpg\"></div>\n<div class=\"captionnews\">Hiệu năng Apple A15 trên iPhone 13 Series có thể sẽ cho các đối thủ Android phải hít khói. Nguồn: NewsBeezer.</div>\n<p>Theo một bài đăng vào hôm 06/09 của leaker @FrontTron trên Twitter, kết quả của một bài kiểm tra hiệu năng GPU Apple A15 trên phần mềm Manhattan 3.1 đã cho thấy con chip này đạt 198 FPS trong vòng thử nghiệm đầu tiên. Tuy nhiên, ở vòng thứ hai thì mức kết quả đã thấp hơn một chút, giảm còn 140 FPS đến 150 FPS. Để cho các bạn dễ hình dung, Apple A14 có điểm hiệu năng GPU cao nhất đạt vào khoảng 170.7 FPS trong bài kiểm tra Manhattan 3.1.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Hiệu năng chip Apple A15 dành cho iPhone 13 vừa hé lộ: Tiếp tục khiến cho các đối thủ Android ‘hít khói’\" src=\"https://cdn.tgdd.vn/Files/2021/09/07/1380757/tron2_600x402.jpg\" alt=\"Hiệu năng chip Apple A15 dành cho iPhone 13 vừa hé lộ: Tiếp tục khiến cho các đối thủ Android ‘hít khói’\" data-original=\"https://cdn.tgdd.vn/Files/2021/09/07/1380757/tron2_600x402.jpg\"></div>\n<div class=\"captionnews\">Chip Apple A15 cho điểm hiệu năng tương đối cao thông qua bài test Manhattan 3.1. Nguồn: @FrontTron.</div>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Hiệu năng chip Apple A15 dành cho iPhone 13 vừa hé lộ: Tiếp tục khiến cho các đối thủ Android ‘hít khói’\" src=\"https://cdn.tgdd.vn/Files/2021/09/07/1380757/hieunang_600x1040.jpg\" alt=\"Hiệu năng chip Apple A15 dành cho iPhone 13 vừa hé lộ: Tiếp tục khiến cho các đối thủ Android ‘hít khói’\" data-original=\"https://cdn.tgdd.vn/Files/2021/09/07/1380757/hieunang_600x1040.jpg\"></div>\n<div class=\"captionnews\">Điểm hiệu năng GPU của Apple A14 cao nhất vào khoảng 170 FPS trong bài kiểm tran Manhattan 3.1. Nguồn: @FrontTron.</div>\n<p>Nhìn chung thì dựa thông tin rò rỉ bên trên, mình có thể khẳng định được hiệu năng của iPhone 13 Series chắc chắn sẽ mạnh hơn so với thế hệ tiền nhiệm. Tuy nhiên, mình nghĩ hiệu suất của iPhone 13 Pro có thể sẽ nhỉnh hơn một chút so với bản tiêu chuẩn và bản Mini do dung lượng RAM trên iPhone 13 Pro lớn hơn.</p>\n<h3><strong>iPhone 13 Pro sẽ không còn bản bộ nhớ 256 GB, bù lại thì có bản 1 TB</strong></h3>\n<p>Mình nghĩ đây có lẽ sẽ là tin không vui với những bạn nào hay dùng iPhone bản 256 GB. Cụ thể, trang&nbsp;Gizmochina&nbsp;cho rằng Apple sẽ loại bỏ bản bộ nhớ trong 256 GB trên mẫu iPhone 13 Pro. Thay vào đó, hãng sẽ bổ sung tùy chọn bộ nhớ trong 1 TB cho người dùng.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Dòng iPhone 13 Pro có thể không có bản 256GB\" src=\"https://cdn.tgdd.vn/Files/2021/09/03/1379924/iphone-13-pro-256gb_1280x720-800-resize.jpg\" alt=\"Dòng iPhone 13 Pro có thể không có bản 256GB\" data-original=\"https://cdn.tgdd.vn/Files/2021/09/03/1379924/iphone-13-pro-256gb_1280x720-800-resize.jpg\"></div>\n<div class=\"captionnews\">iPhone 13 Pro Series sẽ không còn tùy chọn bộ nhớ trong 256 GB nữa.</div>\n<p>Thật ra thì Apple vốn rất nổi tiếng trong việc cắt giảm các phiên bản lưu trữ trung bình, chỉ cho phép người dùng chi thêm tiền để lựa chọn phiên bản cao hơn và đây cũng là cách để hãng kiếm thêm lợi nhuận từ người dùng. Nếu các bạn còn nhớ thì Apple đã từng bán iPhone 6 với dung lượng thấp nhất là 16 GB và lớn hơn 64 GB chứ hãng không hề bán iPhone 6 bản 32 GB.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Dòng iPhone 13 Pro có thể không có bản 256GB\" src=\"https://cdn.tgdd.vn/Files/2021/09/03/1379924/iphone-13_1280x984-800-resize.jpg\" alt=\"Dòng iPhone 13 Pro có thể không có bản 256GB\" data-original=\"https://cdn.tgdd.vn/Files/2021/09/03/1379924/iphone-13_1280x984-800-resize.jpg\"></div>\n<div class=\"captionnews\">Hình ảnh cho thấy cả hai bản iPhone 13 Pro đều không có bản 256 GB. Nguồn: Gizmochina.</div>\n<p>Mình nghĩ đó cũng là một cách hay để Apple có thể tăng doanh thu nhưng với dòng iPhone 13 sắp tới có thể điều đó sẽ không hiệu quả nữa. Đơn giản là bởi vì không phải ai cũng có điều kiện về tài chính để nâng cấp iPhone lên bản dung lượng lớn hơn. Để cho các bạn dễ hình dung thì iPhone 12 Pro bản 128 GB và 512 GB cách nhau 8 triệu đồng (giá tại Thế Giới Di Động). Trong khi đó, để nâng cấp iPhone 12 Pro bản 128 GB lên 256 GB thì người dùng chỉ cần bỏ thêm 1 triệu đồng mà thôi.</p>\n<h3><strong>Cấu hình iPhone 13 Pro có gì mới trước ngày ra mắt?</strong></h3>\n<p>Trong ngày hôm nay (03/09), tài khoản Twitter&nbsp;@theapplehub&nbsp;đã tổng hợp những thông tin chi tiết về mẫu Phone 13 Pro sắp ra mắt vào cuối tháng 9. Nhìn chung, mình thấy phần thông số cấu hình cũng như các tính năng của iPhone 13 Pro được The Apple Hub tổng hợp và kỳ vọng cũng không khác quá nhiều so với các tin đồn trước đó. Chi tiết hơn thì các bạn có thể xem qua hình ảnh bên dưới.</p>\n<div class=\"captionnews\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cấu hình của iPhone 13 Pro được The Apple Hub tổng hợp cũng như kỳ vọng. Nguồn: The Apple Hub.\" src=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/iphone-13-pro-ky-vong-cau-hinh_1242x1242-800-resize.jpg\" alt=\"Cấu hình của iPhone 13 Pro được The Apple Hub tổng hợp cũng như kỳ vọng. Nguồn: The Apple Hub.\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/iphone-13-pro-ky-vong-cau-hinh_1242x1242-800-resize.jpg\"></div>\n<div class=\"captionnews\">Cấu hình của iPhone 13 Pro được The Apple Hub tổng hợp cũng như kỳ vọng. Nguồn: The Apple Hub.</div>\n<h3><strong>Xuất hiện bản Concept iPhone 13 Pro màn hình tràn viền</strong></h3>\n<p>Mới đây, trang tin&nbsp;ixbt.com&nbsp;đã giới thiệu concept iPhone 13 Pro với chiếc màn hình tràn viền không tai thỏ cực kỳ cuốn hút, chiếc iPhone 13 Pro Concept hiện lên trong màu đỏ mạnh mẽ và quyến rũ. Theo tác giả, sở dĩ bản concept này ra đời bởi được lấy cảm hứng từ chính chiếc iPhone không viền màn hình&nbsp;được quan tâm đặc biệt trong bộ phim truyền hình hài hước \'Ted Lasso\' xuất hiện gần đây trên AppleTV.&nbsp;</p>\n<p>&nbsp;</p>\n<p><a rel=\"gallerynews1\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/4.jpg\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/4.jpg\"></a></p>\n<p><a class=\"thumb\" rel=\"gallerynews1\"><img class=\" lazyloaded\" style=\"float: left;\" src=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/3-120x120.jpg\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/3-120x120.jpg\"></a></p>\n<p><a class=\"thumb\" rel=\"gallerynews1\"><img class=\" lazyloaded\" style=\"float: left;\" src=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/2-120x120.jpg\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/2-120x120.jpg\"></a></p>\n<p><a class=\"thumb thumb2\" rel=\"gallerynews1\"><img class=\" lazyloaded\" src=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/1-120x120.jpg\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/08/1366621/Gallery/1-120x120.jpg\"></a></p>\n<p>&nbsp;</p>\n<div class=\"captionnews\">Concept iPhone 13 Pro. Nguồn:&nbsp;ixbt.com.</div>\n<h3><strong>Tính năng Satellites của iPhone 13 Pro có thể giới hạn ở nhiều trường hợp&nbsp;</strong><strong>(cập nhật: 01/09)</strong></h3>\n<p>Không lâu sau tin tức về tính năng gọi điện, nhắn tin mà không cần mạng di động trên iPhone 13 Pro do Ming Chi Kuo cung cấp, mới đây theo Bloomberg, khả năng liên kết vệ tinh của Apple iPhone 13 Pro cũng có thể bị giới hạn trong các trường hợp gửi nhận tin nhắn khẩn cấp.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"iPhone 13 Pro\" src=\"https://cdn.tgdd.vn/Files/2021/07/31/1372034/a8_1280x720-800-resize.jpg\" alt=\"iPhone 13 Pro\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/31/1372034/a8_1280x720-800-resize.jpg\"></div>\n<div class=\"captionnews\">Tính năng Satellites của iPhone 13 Pro có thể giới hạn trong trường hợp tin nhắn khẩn cấp. Nguồn: GSMArena.</div>\n<p>Ban đầu người ta tin rằng kết nối vệ tinh sẽ cho phép các nhà mạng cung cấp dịch vụ internet bên ngoài vùng phủ sóng của nhà mạng, nhưng nguồn tin khẳng định điều này sẽ chỉ dành cho mục đích sử dụng khẩn cấp.&nbsp;Theo báo cáo, ý định của Apple đối với tính năng này sẽ cho phép người dùng có thể gửi tin nhắn khẩn cấp qua vệ tinh trong trường hợp họ không trong vùng phủ sóng di động.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"iPhone 13 Pro\" src=\"https://cdn.tgdd.vn/Files/2021/07/31/1372034/a9-_1920x960-800-resize.jpg\" alt=\"iPhone 13 Pro\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/31/1372034/a9-_1920x960-800-resize.jpg\"></div>\n<div class=\"captionnews\">Apple áp dụng tính năng này cho phép người dùng có thể gửi tin nhắn khẩn cấp qua vệ tinh trong trường hợp họ không trong vùng phủ sóng di động. Nguồn: 95tomac.</div>\n<p>Bloomberg đặt tên một trong những tính năng đó là \"Tin nhắn khẩn cấp qua vệ tinh\" sẽ được tích hợp vào ứng dụng iMessage như một giao thức thứ ba (ngoài SMS và iMessage), hiển thị bong bóng tin nhắn màu xám thay vì màu xanh lá cây hoặc xanh lam. \"Tính năng thứ hai sẽ là một công cụ để báo cáo cho các trường hợp khẩn cấp hơn, chẳng hạn như tai nạn máy bay và chìm tàu, cũng sử dụng mạng vệ tinh.\"&nbsp;</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"iPhone 13 Pro\" src=\"https://cdn.tgdd.vn/Files/2021/07/31/1372034/a10_1280x720-800-resize.jpg\" alt=\"iPhone 13 Pro\" data-original=\"https://cdn.tgdd.vn/Files/2021/07/31/1372034/a10_1280x720-800-resize.jpg\"></div>\n<div class=\"captionnews\">&nbsp;\"Tin nhắn khẩn cấp qua vệ tinh\" sẽ được tích hợp vào ứng dụng iMessage như một giao thức thứ ba (ngoài SMS và iMessage). Nguồn: MacWorld.</div>\n<h3><strong>Ấn tượng iPhone 13 Pro trước ngày ra mắt: Kỳ vọng màn 120 Hz, chip Apple A15</strong></h3>\n<p>Có lẽ đã từ rất lâu rồi, người dùng iPhone nói chung và bản thân mình nói riêng vẫn mong chờ sự đột phá trên màn hình iPhone. Mặc dù, tần số quét trên chiếc iPhone cao cấp nhất tính đến thời điểm hiện tại là iPhone 12 Pro Max chỉ ở mức 60 Hz. Theo một vài báo cáo, đột phá lớn nhất trên iPhone 13 Pro chính là công nghệ màn hình ProMotion hỗ trợ tần số làm tươi lên tới 120 Hz, điều mà chúng ta chưa từng thấy trên bất kỳ sản phẩm iPhone nào trước đây.</p>\n<div class=\"imgwrap\"><img class=\" lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"iPhone 13 Pro\" src=\"https://cdn.tgdd.vn/Files/2021/08/17/1375714/21_1280x720-800-resize.jpg\" alt=\"iPhone 13 Pro\" data-original=\"https://cdn.tgdd.vn/Files/2021/08/17/1375714/21_1280x720-800-resize.jpg\"></div>\n<div class=\"captionnews\">iPhone 13 Pro màn hình ProMotion 120 Hz. Nguồn: MacRumors.</div>\n<p>Kế tiếp không thể bỏ qua phần cấu hình iPhone 13 Pro. Dòng Pro cũng sẽ sử dụng chip tiên tiến nhất là Apple A15 Bionic được sản xuất dựa trên tiến trình 5 nm+ mang đến hiệu suất nhanh nhất, mạnh mẽ nhất trong thế giới điện thoại thông minh và không chịu thua bất kỳ một tựa game nào hiện nay cả.</p>\n            </div>', 'Rolnaldo phản lưới nhà', 'Rolnaldo -phản- lưới- nhà', '2023-06-17 20:18:14', '2021-10-17 19:53:39', '2023-06-17 20:18:14'),
(2, 'https://salt.tikicdn.com/cache/400x400/ts/product/a8/95/83/a51a47cd1b3fe2876daeab7b55da99cf.jpg.webp', '', 'Iphone 13 ra mắt', 'Iphone -13 -ra -mắt', NULL, '2021-10-17 19:55:20', '2021-10-17 19:55:20'),
(9, 'public/uploads/pages\\hhhhhh.PNG', '<p>fsada</p>', 'dsaf', 'sada', '2021-11-24 02:05:36', '2021-11-24 01:10:03', '2021-11-24 02:05:36'),
(10, 'public/uploads/pages\\thumb4.PNG', '<p>fsada</p>', 'dasf', 'fsaf', '2021-11-24 02:05:33', '2021-11-24 01:24:09', '2021-11-24 02:05:33'),
(11, 'public/uploads/pages\\ảnh 1_LI (2).jpg', '<p>fdasfasaf</p>', 'Iphone 12 pro max 1 tuyệt kĩ của thế giới', 'Iphone -12- pro max -1 -tuyệt- kĩ -của- thế -giới', '2023-06-17 20:12:47', '2021-11-24 02:04:49', '2023-06-17 20:12:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hlmthihi@gmail.com', '$2y$10$yl1ssuiFXoDd9dXLrI5SM.GEDevKgf.55p/cmsLXa/OSSTceZTKw2', '2021-11-15 04:38:36'),
('hlmthihi@gmail.com', '$2y$10$yl1ssuiFXoDd9dXLrI5SM.GEDevKgf.55p/cmsLXa/OSSTceZTKw2', '2021-11-15 04:38:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_thumb1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_thumb2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `page_title`, `cat_title`, `slug`, `page_content`, `page_thumb1`, `page_thumb2`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, ' 24h công nghệ có gì HOT 27/8: OPPO sắp ra mắt máy tính bảng đầu tiên, xuất hiện concept iPhone 13 Pro Max màu Sunset Gold', 'Công nghệ', '24h-cong-nghe-oppo', '24h công nghệ có gì HOT 27/8 với những thông tin đáng chú ý như: Không nằm ngoài cuộc chơi, OPPO cũng chuẩn bị tung ra chiếc máy tính bảng đầu tiên, đây là thiết kế của máy. iPhone 13 Pro Max màu Sunset Gold xuất hiện trong concept mới: Sang - xịn - mịn, hứa hẹn vô cùng hút khách khi ra mắt.\niPhone 13 Pro Max là phiên bản cao cấp nhất trong dòng iPhone 13 (iPhone 2021) dự kiến ra mắt vào tháng 9 tới. Apple được cho là sẽ cung cấp 4 màu sắc cho thiết bị, trong đó mẫu iPhone 13 Pro Max màu Sunset Gold có lẽ chiếm được nhiều cảm tình nhất từ người hâm mộ.\n\nXem tiếp: iPhone 13 Pro Max màu Sunset Gold xuất hiện cực sang trong concept mới', 'blog/blog-1.jpg', 'blog/blog-11.jpg', '2021-08-29 10:26:25', NULL, NULL),
(2, 'Deal tốt chờ gì không chốt: Điện thoại Realme sale hấp dẫn khó chê, có mức giá đáng sắm vào cuối tuần này', 'Công nghệ', 'deal-chot-cho-gi-khong-chot', 'Hồi đầu năm, Xiaomi đã ra mắt Mi 11 Ultra - flagship sở hữu cảm biến chính 50 MP và hai cảm biến camera 48 MP hỗ trợ chụp tele và siêu rộng. Tin đồn về dòng Mi 12 đã bắt đầu xuất hiện, mới nhất, một số chi tiết về cấu hình camera của Mi 12 và Mi 12 Ultra đã bị rò rỉ.\nTheo thông tin từ XiaomiUI, dòng Mi 12 sẽ được trang bị camera khủng 200 MP. Trước đó cũng đã có nhiều tin đồn tiết lộ việc Xiaomi trang bị cảm biến camera 200 MP cho các flagship mới trong tương lai.\n\n', 'blog/blog-2.jpg', 'blog/blog-101.jpg', '2021-08-29 10:26:25', NULL, NULL),
(3, 'Xiaomi Mi 12 và Mi 12 Ultra sẽ có camera khủng lên đến 200MP, cùng bộ vi xử lý Snapdragon 898 chưa ra mắt\n', 'Công nghệ', 'xiaomi-12-va-mi-12-camera-khung', 'Chỉ có trong cuối tuần này, smartphone nhà Realme được giảm giá hấp dẫn lên đến 300.000 đồng. Máy xịn, giá lại đang rất hạt dẻ, siêu đáng sắm luôn bạn ơi. Cơ hội chỉ có vài ngày, nhanh tay chốt đơn liền nhé.\r\nThời gian khuyến mãi từ 28/8/2021 - 29/08/2021.\r\n\r\nLưu ý: Khuyến mãi có thể kết thúc sớm nếu hết số lượng sản phẩm hoặc thông tin khuyến mãi có thay đổi.\r\nĐây là chiếc điện thoại có thiết kế đẹp mắt và tinh tế với họa tiết hình học đan chéo được cắt vát một cách tinh xảo cùng hiệu ứng màu sắc bắt mắt. Cùng với đó là màn hình thiết kế \'giọt nước\', kích thước lớn 6.5 inch, độ phân giải HD+ cho chất lượng hiển thị khá tốt, màu sắc tươi tắn và độ sáng cao có thể dùng tốt trong nhiều môi trường.\r\n\r\nChiếc điện thoại Realme này được trang bị bộ vi xử lý Spreadtrum T610 8 nhân cho hiệu năng ổn định, đáp ứng tốt các nhu cầu giải trí hằng ngày và chơi các tựa game nhẹ nhàng. Đi kèm với đó là dung lượng pin lớn 5.000 mAh và tính năng siêu tiết kiệm pin sẽ giúp người dùng thoải mái sử dụng cả', 'blog/blog-3.jpg', 'blog/blog-33.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(4, 'Kỳ vọng iPhone 13 Concept: Thiết kế xuất hiện màn hình phụ phía sau mặt lưng, tai thỏ nhỏ lại, loại bỏ luôn cổng sạc, có màu Sunset Gold bắt mắt!', 'Công nghệ', 'ky-vong-iphone-13-concept', 'Là một iFan thì cứ mỗi năm mình lại đặt kỳ vọng vào thế hệ iPhone mới từ tính năng mới, thiết kế mới, nhưng khi iPhone 12 đã chính thức ra mắt lại không có những điểm mà chúng ta đã mong chờ bấy lâu. Thế nên chúng ta có thể kỳ vọng mẫu điện thoại mới nhất đến từ nhà Apple là iPhone 13. Liệu phụ kiện đi kèm của iPhone 13 có sạc không? iPhone 13 có vân tay không? iPhone 13 màn hình sẽ hỗ trợ tần số quét cao chứ? iPhone 13 thiết kế sẽ như thế nào? Bài viết hôm nay hãy cùng mình điểm qua bản iPhone 13 concept mình yêu thích nhất và những kỳ vọng của mình về smartphone này nhé! ', 'blog/blog-6.jpg', 'blog/blog-66.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(5, 'Redmi 10 Prime sẽ chạy con chip Helio G88, camera 50MP và pin đến 6.000mAh, giá bao nhiêu là hợp lý nhỉ?', 'Công nghệ', 'redimi-10-prime-qua-khung', 'Mới đây, Manu Kumar Jain xác nhận rằng sản phẩm điện thoại Redmi 10 Prime sẽ được trang bị vi xử lý Helio G88 giống như Redmi 10. Ngoài ra, người này cũng cho biết rằng điện thoại mới này sẽ là một bản nâng cấp đáng kể so với Redmi 9 Prime và 9 Power năm ngoái.\nXem thêm: Xiaomi Redmi 10 Prime có gì mới: Chip Helio G88, giá chỉ từ 4.1 triệu\n\nCụ thể, Redmi 9 Prime là một chiếc Redmi 9 nhưng được đổi thương hiệu cho thị trường Ấn Độ, điểm khác biệt duy nhất giữa 2 phiên bản này là việc bỏ qua NFC trên phiên bản Prime. Còn phiên bản Redmi 9 Power thì lại có khác biệt đáng kể khi được trang bị Snapdragon 662 thay vì Helio G80, camera 48 MP và pin tận 6.000 mAh. ', 'blog/blog-2.jpg', 'blog/blog-22.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(6, 'Muốn sắm laptop Gaming nhưng chưa biết mẫu nào thì tốt? Xem liền 5 mẫu laptop MSI Gaming đáng sắm này, giá hời nên chốt ngay', 'Công nghệ', 'laptop-gaming-dang-sell-voi-gia-hoi', 'Nếu bạn đang có ý định sắm sửa một chiếc laptop Gaming với cấu hình mạnh mẽ nhưng chưa biết mẫu nào tốt cùng giá tiền hợp lý, vậy thì hãy cùng mình xem qua ngay bài viết này để được gợi ý 5 mẫu laptop MSI Gaming đi cùng nhiều mức giá khuyến mãi khác nhau cho bạn tha hồ lựa chọn đó. Tranh thủ hốt 1 chiếc liền nè.\nThời gian khuyến mãi diễn ra đến hết 31/08/2021.\n\nLưu ý: Khuyến mãi có thể kết thúc sớm nếu hết số lượng sản phẩm hoặc thông tin khuyến mãi có thay đổi.\n', 'blog/blog-8.jpg', 'blog/blog-88.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(7, 'Trên tay đánh giá nhanh Vivo Y21: Giá từ 4.3 triệu* có chip Helio P35, thiết kế mặt lưng hình vuông độc đáo cùng pin 5.000 mAh', 'Công nghệ', 'vivo-y21-gia-re-bat-ngo', 'Như vậy, Vivo đã ra mắt Vivo Y21 giá từ 4.3 triệu đồng (giá tại thị trường Ấn Độ) với nhiều ưu điểm. Bên cạnh thiết kế cực kì nổi bật với mặt lưng họa tiết vân kim cương bóng bẩy, Vivo Y21 cấu hình đủ dùng với chip Helio P35, RAM là 4 GB cùng viên pin 5.000 mAh. Sau đây, hãy cùng mình trên tay đánh giá Vivo Y21 để xem chiếc điện thoại mới của nhà Vivo còn có những điểm gì đặc biệt hay không nha!\nLưu ý:\n\n(*)Vivo Y21 được bán ra tại thị trường Ấn Độ với mức giá từ 13.990 INR (khoảng 4.3 triệu đồng) cho bản 4 GB + 64 GB.\nBài viết được tham khảo từ kênh YouTube công nghệ Gadgets 4 You.', 'blog/blog-9.jpg', 'blog/blog-99.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(8, 'Hiếu PC cảnh báo người chơi Play Together cẩn trọng với những trang web nạp tiền, có thể bị lừa mất tài khoản và cả tài sản', 'Công nghệ', 'hieu-pc-canh-bao-play-together-an-cap-thong-tin-nguoi-dung', 'Play Together đang là tựa game được khá nhiều người lựa chọn để giải trí trong mùa dịch. Biết được độ hot của game, nhiều thành phần xấu đã tạo ra những trang web giả để lừa đảo lấy tài khoản và tiền của người chơi. Trên Facebook chính thức của mình, Hiếu PC đã có bài viết cảnh báo về vấn đề này.\nNguyên văn bài chia sẻ của Hiếu PC như sau:\n\n\"Play Together hiện đang là tựa game mobile được nhiều người lựa chọn làm công cụ giải trí giữa mùa dịch này. Và cũng chính vì vậy mà kẻ xấu đã bắt đầu tạo ra rất nhiều trang giả để lừa đảo lấy tài khoản và lừa lấy tiền nạn nhân.', 'blog/blog-7.jpg', 'blog/blog-77.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(9, 'Apple Watch đạt 100 triệu người dùng trên toàn cầu, dẫn đầu thị trường smartwatch trong quý 2/2021, sao lại hút khách vậy?\r\nNguyễn Hải Duy 18 giờ trước', 'Công nghệ', 'soc-apple-watch-dat-100-trieu-nguoi-dung-toan-cau', 'Theo một báo cáo của Counterpoint Research cho biết rằng hiện Apple Watch đang đầu về thị trường đồng hồ thông minh ở quý 2/2021. Trong đó những sản phẩm gồm: Apple Watch Series 6, Apple Watch SE và Apple Watch Series 3 nằm trong 5 thiết bị được bán nhiều nhất trong quý, chưa kể hiện có hơn 100 triệu người đang sử dụng Apple Watch.\r\nLý do cho đồng hồ thông minh của Apple lại bán chạy như thế là bởi vì hãng có hệ sinh thái giữa các thiết bị vô cùng tuyệt vời cộng với những tính năng vô cùng hấp dẫn trên Apple Watch. Ngoài ra, Mỹ được biết là thị trường lớn nhất của Apple Watch với hơn 50% người dùng đến từ quốc gia này.\r\n\r\nBên cạnh đó, thị trường đồng hồ thông minh đã tăng 27% trong quý 2/2021 so với năm ngoái. Và khi mọi thứ dần trở lại bình thường khi dịch COVID qua đi doanh số bán của smartwatch chắc chắn sẽ tăng hơn nữa.', 'blog/blog-5.jpg', 'blog/blog-55.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(10, 'Redmi Note 10 5G cũ giá rẻ không tưởng ở Thế Giới Di Động, chỉ từ 3.91 triệu là đã có thể sở hữu, tranh thủ ngay kẻo hết', 'Công nghệ', 'redmi-note-10-5g-cu-gia-re-bat-ngo-o-tgdd', 'Xiaomi Redmi Note 10 5G cũ giá rẻ thế này ở Thế Giới Di Động, không biết các Mi Fans đã biết chưa? Chỉ từ 3.91 triệu đồng, là các bạn đã có thể sắm một chiếc điện thoại cực kì HOT của Xiaomi. Mặc dù rằng là máy cũ nhưng chất lượng không hề thua kém hàng mới, đã thế vẫn còn được bảo hành chính hãng lâu dài.\r\nNếu như bạn vẫn chưa tin, hãy cùng mình tham khảo chi tiết bên dưới.\r\nRedmi Note 10 5G nổi bật thiết kế trẻ trung, năng động cùng màn hình tràn viền có tần số quét 90Hz. Kết hợp với đó là hệ thống 3 camera sau được tích hợp nhiều tính năng nhiếp ảnh, quay phim hiện đại. \r\n\r\nBên cạnh đó, với việc được trang bị vi xử lý MediaTek Dimensity 700 vô cùng tối ưu và công nghệ kết nối mạng 5G, những trải nghiệm giải trí của bạn trên chiếc máy này sẽ vô cùng tuyệt vời. Không những thế, viên pin 5.000 mAh và có hỗ trợ sạc nhanh cũng sẽ giúp mang đến thời gian sử dụng trọn vẹn hơn trong ngày.\r\n\r\nSau khi xem qua, các bạn sẽ không bỏ lỡ chứ?', 'blog/blog-4.jpg', 'blog/blog-44.jpg', '2021-08-29 10:26:25', '2021-08-29 10:26:25', NULL),
(15, 'test123', 'Công nghệ', '', '<p>test123</p>', 'iphone-xr-hopmoi-den-600x600-2-600x600.jpg', 'iphone-xi-do-600x600.jpg', '2021-11-10 03:27:09', '2021-11-18 20:26:12', '2021-11-18 20:26:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts_folders`
--

CREATE TABLE `posts_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts_folders`
--

INSERT INTO `posts_folders` (`id`, `folder_parent`, `folder_name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sport', 'rolanal do', 'roaldasda', '2021-10-13 23:41:49', '2021-10-13 23:36:31', '2021-10-13 23:41:49'),
(2, 'Thể thao', 'Messi giải nghệ', 'messi-giai-nghe', NULL, '2021-10-13 23:42:17', '2021-10-13 23:42:17'),
(3, 'Đời sống', 'Apple cảnh bảo người dùng về lỗ hổng app lậu', 'Apple-cảnh-bảo-người-dùng-về-lỗ-hổng-app-lậu', NULL, '2021-11-10 18:51:32', '2021-11-10 18:51:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cat_id`, `name`, `cat_title`, `product_name`, `product_title`, `slug`, `price`, `old_price`, `code`, `product_desc`, `product_thumb`, `product_content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Điện thoại', 'Iphone', 'iPhone 12 mini 64GB', 'Điện thoại iPhone 12 mini 64GB ', 'iPhone-12-mini-64GB', '16490000', '17000000', 'IP12-1', '<p>iPhone 12 mini 64 GB tuy l&agrave; phi&ecirc;n bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về k&iacute;ch thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, t&iacute;nh năng sạc nhanh c&ugrave;ng bộ camera chất lượng c', 'phone/iphone/ip12-mini.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-24 05:22:20'),
(2, 1, 'Điện thoại', 'Iphone', 'iPhone 12 pro-White', 'Điện thoại iPhone 12 pro 64GB ', 'iPhone-12-pro-white', '23000000', '24999000', 'IP12-2', 'Điện thoại iPhone 12 pro tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao.IP12-2', 'phone/iphone/ip12-pro.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(3, 1, 'Điện thoại', 'Iphone', 'iPhone 12 promax', 'Điện thoại iPhone 12 promax', 'iPhone-12-promax', '39999000', '40000000', 'IP12-3', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip12-pro.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(4, 1, 'Điện thoại', 'Iphone', 'iPhone 12 violet', 'Điện thoại iPhone 12 violet', 'iPhone-12-violet', '39999000', '40000000', 'IP12-4', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip12-vio.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(5, 1, 'Điện thoại', 'Iphone', 'iPhone 12  WHITE', 'Điện thoại iPhone 12 SE WHITE', 'iPhone-12-WHITE', '39999000', '40000000', 'IP12-5', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip-se.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(6, 1, 'Điện thoại', 'Iphone', 'iPhone 11 RED', 'Điện thoại iPhone 11 RED', 'iPhone-11-RED', '39999000', '40000000', 'IP12-6', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip11-red.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(7, 1, 'Điện thoại', 'Iphone', 'iPhone 11  GREEN', 'Điện thoại iPhone 11 SE GREEN', 'iPhone-11-GREEN', '39999000', '40000000', 'IP12-7', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip11-x.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(8, 1, 'Điện thoại', 'Iphone', 'iPhone 12 SE XR', 'Điện thoại iPhone 12 SE XR', 'iPhone-12-SE-XR', '39999000', '40000000', 'IP12-8', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ camera chất lượng cao', 'phone/iphone/ip-xr.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple sử dụng khung nhôm cao cấp trong ngành hàng không vũ tr', NULL, NULL, '2021-11-22 23:53:10'),
(9, 2, 'Điện thoại', 'Samsung', 'Samsung Galaxy A12', 'Điện thoại Samsung Galaxy A12 (6GB/128GB) ', 'Samsung-Galaxy-A12 ', '4690000', '4700000', 'SS-1', '<p>G&acirc;y ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt m&agrave; trong mọi t&aacute;c vụ, c&ugrave;ng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ l&agrave; mẫu smartphone đ&aacute;ng mua nhất trong ph&acirc;n kh&uacu', 'phone/samsung/ss-a12.jpg', '<p>Một biểu tượng thời trang, một kiệt t&aacute;c của thế giới c&ocirc;ng nghệ m&agrave; ai cũng phải kinh ngạc khi nh&igrave;n thấy Samsung Galaxy Z Flip3 5G v&agrave; c&aacute;ch m&agrave; bạn sử dụng si&ecirc;u phẩm smartphone n&agrave;y, nơi c&ocirc;ng nghệ điện thoại m&agrave;n h&igrave;nh gập đ&atilde; mang đến những điều kh&ocirc;ng tưởng.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_1_ss.jpg\" alt=\"\" /></p>\n<h3>Thiết kế kh&aacute;c biệt đầy m&ecirc; hoặc</h3>\n<p>Chắc chắn kh&ocirc;ng ai c&oacute; thể cưỡng lại vẻ đẹp của Samsung Galaxy Z Flip3 5G. Một chiếc điện thoại gập c&oacute; k&iacute;ch thước si&ecirc;u nhỏ gọn v&agrave; đầy đ&aacute;ng y&ecirc;u với dạng h&igrave;nh vu&ocirc;ng, chỉ nhỏ bằng ph&acirc;n nửa điện thoại th&ocirc;ng thường.</p>\n<p>Kiểu d&aacute;ng kh&aacute;c biệt, vật liệu cao cấp v&agrave; c&aacute;ch phối m&agrave;u tinh tế gi&uacute;p Galaxy Z Flip3 5G nh&igrave;n giống một m&oacute;n đồ trang sức hơn l&agrave; một sản phẩm c&ocirc;ng nghệ. Bạn sẽ c&oacute; 4 phi&ecirc;n bản m&agrave;u sắc đầy c&aacute; t&iacute;nh để lựa chọn l&agrave; Kem Ivory, Đen Phantom, Xanh Phantom v&agrave; T&iacute;m Lilac.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_2_ss.jpg\" alt=\"\" /></p>\n<h3>Độ bền th&aacute;ch thức mọi giới hạn</h3>\n<p>D&ugrave; l&agrave; một biểu tượng thời trang nhưng Samsung Galaxy Z Flip3 5G lại v&ocirc; c&ugrave;ng bền vững. Si&ecirc;u phẩm của ch&uacute;ng ta trang bị k&iacute;nh cường lực Gorilla Glass Victus v&agrave; hợp kim nh&ocirc;m Armor Aluminum, những vật liệu bền bỉ nhất trong ng&agrave;nh c&ocirc;ng nghiệp smartphone.</p>\n<p>Bạn c&oacute; thể thoải m&aacute;i gập mở, đồng thời y&ecirc;n t&acirc;m về khả năng chống xước v&agrave; chống va đập. Hơn nữa, m&agrave;n h&igrave;nh gập c&ograve;n được chế t&aacute;c từ k&iacute;nh Ultra Thin Glass, bước tiến lớn nhất trong c&ocirc;ng nghệ m&agrave;n h&igrave;nh gập, tăng cường cả độ mỏng, sự linh hoạt v&agrave; độ bền.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_3_ss.jpg\" alt=\"\" /></p>\n<h3>Trải nghiệm đầy th&uacute; vị với m&agrave;n h&igrave;nh ngo&agrave;i</h3>\n<p>Bạn kh&ocirc;ng nhất thiết phải thường xuy&ecirc;n mở m&agrave;n h&igrave;nh ch&iacute;nh trong l&uacute;c đang tập trung l&agrave;m việc. Một m&agrave;n h&igrave;nh ngo&agrave;i 1,9 inch cung cấp đầy đủ những th&ocirc;ng tin cần thiết d&agrave;nh cho bạn, từ ng&agrave;y, giờ, thời tiết cho đến c&aacute;c th&ocirc;ng b&aacute;o mới.</p>\n<p>M&agrave;n h&igrave;nh n&agrave;y hiển thị tuyệt đẹp v&agrave; c&oacute; rất nhiều t&ugrave;y biến để c&oacute; thể hiển thị một c&aacute;ch vừa trực quan, vừa rất phong c&aacute;ch. C&ograve;n g&igrave; s&agrave;nh điệu hơn khi th&ocirc;ng b&aacute;o đến, bạn chỉ cần cầm chiếc điện thoại gập tuyệt đẹp l&ecirc;n v&agrave; nh&igrave;n qua l&agrave; đ&atilde; nắm đầy đủ nội dung, thay v&igrave; phải mở m&agrave;n<img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_4_ss.jpg\" alt=\"\" /></p>\n<h3>Selfie bằng m&agrave;n h&igrave;nh ngo&agrave;i</h3>\n<p>Samsung Galaxy Z Flip3 5G ch&iacute;nh l&agrave; chiếc điện thoại tốt nhất cho những ai th&iacute;ch selfie. M&agrave;n h&igrave;nh ngo&agrave;i sẽ đ&oacute;ng vai tr&ograve; l&agrave; một m&agrave;n h&igrave;nh xem trước để bạn c&oacute; thể chụp ảnh &ldquo;tự sướng&rdquo; bằng ch&iacute;nh bộ đ&ocirc;i camera sau đẳng cấp.</p>\n<p>H&atilde;y thử tưởng tượng bạn d&ugrave;ng những cảm biến camera sau h&agrave;ng đầu của Samsung để chụp ảnh selfie, những bức ảnh của bạn sẽ c&oacute; chất lượng cao đến mức n&agrave;o. Chọn g&oacute;c chụp, bấm m&aacute;y bằng ph&iacute;m &acirc;m lượng, trải nghiệm selfie của bạn chưa bao giờ th&uacute; vị đến thế.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_5_ss.jpg\" alt=\"\" /></p>\n<h3>Điều kỳ diệu sau mỗi lần gập mở</h3>\n<p>Mở m&agrave;n h&igrave;nh ch&iacute;nh của Samsung Galaxy Z Flip3 5G ra, bạn sẽ cảm nhận được điều kỳ diệu của c&ocirc;ng nghệ. Ngay lập tức trước mắt sẽ l&agrave; những nội dung tuyệt mỹ tr&ecirc;n m&agrave;n h&igrave;nh lớn tới 6,7 inch, tấm nền Dynamic AMOLED 2X h&agrave;ng đầu của Samsung, hỗ trợ HDR 10+ cho h&igrave;nh ảnh sống động v&agrave; ch&acirc;n thực đến kh&oacute; tin.</p>\n<p>Kh&ocirc;ng chỉ đẹp, bạn c&ograve;n cảm nhận được độ mượt m&agrave; trong từng thao t&aacute;c vuốt chạm, từ những hoạt động th&ocirc;ng thường cho đến chơi c&aacute;c tựa game nặng. Tần số qu&eacute;t l&ecirc;n tới 120Hz đ&atilde; mang tới sự kh&aacute;c biệt cho m<img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_6_ss.jpg\" alt=\"\" /></p>\n<h3>Thay đổi phong c&aacute;ch bạn chụp ảnh</h3>\n<p>Samsung Galaxy Z Flip3 5G kh&ocirc;ng chỉ mang tr&ecirc;n m&igrave;nh những cảm biến camera v&agrave; c&aacute;c c&ocirc;ng nghệ chụp ảnh h&agrave;ng đầu của Samsung, m&agrave; lợi thế của khả năng gập mở linh hoạt sẽ cho bạn phong c&aacute;ch chụp ảnh ho&agrave;n to&agrave;n mới.</p>\n<p>Bạn c&oacute; thể chọn c&aacute;c g&oacute;c chụp v&agrave; quay phim kh&aacute;c nhau khi Samsung Galaxy Z Flip3 5G lu&ocirc;n đứng vững tr&ecirc;n mặt phẳng, gi&uacute;p bạn kh&ocirc;ng cần ch&acirc;n m&aacute;y m&agrave; vẫn c&oacute; thể tự chụp, tự quay rất dễ d&agrave;ng.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_7_ss.jpg\" alt=\"\" /></p>\n<h3>Khởi tạo xu hướng</h3>\n<p>Khi gập khoảng 90 độ, Samsung Galaxy Z Flip3 5G c&oacute; thể đứng thẳng tr&ecirc;n mặt phẳng, v&igrave; thế bạn kh&ocirc;ng cần phải giữ m&aacute;y khi xem phim, gọi video với bạn b&egrave;. Khả năng chia đ&ocirc;i m&agrave;n h&igrave;nh cũng gi&uacute;p bạn n&acirc;ng cao hiệu suất khi c&oacute; thể l&agrave;m hai việc c&ugrave;ng l&uacute;c tr&ecirc;n hai phần điện thoại ri&ecirc;ng biệt.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_8_ss.jpg\" alt=\"\" /></p>\n<h3>Chống nước ho&agrave;n hảo</h3>\n<p>Sự nỗ lực tuyệt vời từ Samsung đ&atilde; mang đến cho bạn chiếc điện thoại m&agrave;n h&igrave;nh gập đầu ti&ecirc;n c&oacute; khả năng kh&aacute;ng nước. Galaxy Z Flip3 5G trang bị chuẩn IPX8, cho ph&eacute;p điện thoại chống nước ở độ s&acirc;u 1,5m trong thời gian tối đa l&ecirc;n tới 30 ph&uacute;t.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_9_ss.jpg\" alt=\"\" /></p>\n<p>Camera ch&iacute;nh tr&ecirc;n iPhone 12 Pro Max l&agrave; camera smartphone đầu ti&ecirc;n c&oacute; t&iacute;nh năng chống rung quang học thay đổi cảm biến (sensor-shift OIS). T&iacute;nh năng n&agrave;y mang tới hiệu quả chống rung gấp 5 lần so với OIS th&ocirc;ng thường.</p>\n<p>Kết hợp th&ecirc;m khẩu độ lớn f/1.6 v&agrave; k&iacute;ch thước điểm ảnh l&ecirc;n tới 1,7um, camera iPhone 12 Pro Max đ&iacute;ch thực l&agrave; một ngọn hải đăng trong đ&ecirc;m. C&aacute;c bức ảnh chụp đ&ecirc;m sẽ s&aacute;ng r&otilde;, sắc n&eacute;t v&agrave; m&agrave;u sắc v&ocirc; c&ugrave;ng ch&iacute;nh x&aacute;c. Tha hồ để bạn tự do s&aacute;ng tạo, ghi lại những khoảnh khắc đ&aacute;ng nhớ trong đ&ecirc;m tối.</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_10_ss.jpg\" alt=\"\" /></p>\n<p>Đến với thế giới m&agrave;u sắc bằng những đoạn phim 4K HDR Dolby Vision ch&acirc;n thực một c&aacute;ch đ&aacute;ng kinh ngạc tr&ecirc;n iPhone 12 Pro Max. Những video giờ đ&acirc;y sẽ c&oacute; m&agrave;u sắc sống động chưa từng thấy với 700 triệu m&agrave;u, gấp 60 lần so với video ti&ecirc;u chuẩn.</p>\n<p>Bạn sẽ thấy r&otilde; sự kh&aacute;c biệt khi thưởng thức video Dolby Vision tr&ecirc;n TV 4K HDR. iPhone 12 Pro Max l&agrave; chiếc điện thoại đầu ti&ecirc;n c&oacute; thể quay video Dolby Vision, thậm ch&iacute; bạn c&ograve;n c&oacute; những c&ocirc;ng cụ để chỉnh sửa, bi&ecirc;n tập video trước khi xuất bản. Tất cả c&aacute;c c&ocirc;ng việc của một studio chuy&ecirc;n nghiệp g&oacute;i gọn trong chiếc điện thoại đầy quyền lực tr&ecirc;n tay.</p>\n<p>&nbsp;</p>\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_11_ss.jpg\" alt=\"\" /></p>\n<p>Nếu như ở những chiếc điện thoại kh&aacute;c, thiếu s&aacute;ng lu&ocirc;n l&agrave; một điều kiện kh&oacute; khăn cho camera, th&igrave; với iPhone 12 Pro Max, m&agrave;n đ&ecirc;m chỉ khiến cho những bức ảnh v&agrave; video của bạn lung linh hơn. Bạn c&oacute; thể chụp ảnh r&otilde; n&eacute;t, chụp ch&acirc;n dung đ&ecirc;m v&agrave; quay video với độ s&aacute;ng tốt hơn tới 87%.</p>\n<p>Ngay cả những v&ugrave;ng tối cũng c&oacute; độ chi tiết rất cao tr&ecirc;n iPhone 12 Pro Max. Cảm biến camera h&agrave;ng đầu, chip xử l&yacute; h&igrave;nh ảnh ISP mới tr&ecirc;n Apple A14 Bionic, m&aacute;y qu&eacute;t LiDAR tạo n&ecirc;n sự kết hợp ho&agrave;n hảo khi chụp ảnh, quay video v&agrave;o ban đ&ecirc;m.</p>\n<p>&nbsp;</p>', NULL, NULL, '2023-06-17 20:24:47'),
(10, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy A52 ', 'Điện thoại Samsung Galaxy A52 ', 'Samsung-Galaxy-A52 ', '4690000', '4800000', 'SS-2', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-a12n.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(11, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy M51', 'Điện thoại Samsung Galaxy M51 White', 'Samsung-Galaxy-M51', '4690000', '4700000', 'SS-3', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-a12wn.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(13, 2, 'Điện thoại', 'SamSung', 'Samsung Note 20', 'Điện thoại Samsung Note 20 ', 'Samsung-Note 20', '4690000', '4700000', 'SS-4', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-note20.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(14, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy A12', 'Điện thoại Samsung Galaxy A12 (6GB/128GB) ', 'Samsung-Galaxy-A12', '4690000', '4700000', 'SS-5', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-fold2black.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(15, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy S21', 'Điện thoại Samsung Galaxy S21 Plus (6GB/128GB) ', 'Samsung-Galaxy-S21', '4690000', '4700000', 'SS-6', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-s21plus.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(16, 2, 'Điện thoại', 'SamSung', 'Samsung Z-Fold-2 ', 'Điện thoại Samsung Z-Fold-2 Black (6GB/128GB)  ', 'Samsung-Z-Fold-2 ', '4690000', '4700000', 'SS-7', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-fold2.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(17, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy S21 Ultra ', 'Điện thoại Samsung Galaxy  S21 Ultra Bạc (6GB/128GB) ', 'Samsung-Galaxy-S21-Ultra ', '4690000', '4700000', 'SS-8', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-s21ultra.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10'),
(18, 3, 'Laptop', 'Laptop', 'Laptop Pro 2021', 'Acer Aspire 7 A715 41G', 'Laptop-Pro-2021', '19000000', '30500000', 'LAP-1', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-12.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game. \r\nRA', NULL, NULL, '2021-11-22 23:53:10'),
(19, 3, 'Laptop', 'Laptop', 'Laptop Acer Nitro 5 Gaming ', 'Acer Aspire 7 A715 41G ', 'Laptop-Acer-Nitro-5-Gaming ', '15000000', '30500000', 'LAP-8', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-10.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game.  RAM', NULL, NULL, '2021-11-22 23:53:10'),
(20, 3, 'Laptop', 'Laptop', 'Laptop Asus TUF Gaming', 'Laptop HP 1080', 'Laptop-Asus-TUF-Gaming', '30000000', '30500000', 'LAP-7', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-11.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game.  RAM', NULL, NULL, '2021-11-22 23:53:10'),
(21, 3, 'Laptop', 'Laptop', 'Laptop GIGABYTE Gaming G5 ', 'Laptop DELL Super', 'Laptop-GIGABYTE-Gaming-G5 ', '15000000', '30500000', 'LAP-6', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-12.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game.  RAM', NULL, NULL, '2021-11-22 23:53:10'),
(22, 3, 'Laptop', 'watch', 'Laptop Dell Vostro 3500', 'Laptop HP 150', 'Laptop-Dell-Vostro-3500 ', '21000000', '30500000', 'LAP-5', '<p>Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thi&ecirc;́t k&ecirc;́ gọn gàng với c&acirc;́u hình mạnh mẽ nhờ CPU AMD Ryzen 7 v&agrave; card đồ hoạ NVIDIA GeForce GTX 1650Ti gi&uacute;p t&ocirc;́i ưu trải nghi&ecirc;̣m chơi game, đ&aacute;p ứ', 'laptop/lap-13.jpg', '<p>MacBook Pro 13 2020 mới với bộ vi xử l&yacute; Intel thế hệ thứ 10 mạnh mẽ, b&agrave;n ph&iacute;m Magic Keyboard mới bền vững hơn, sẽ đưa bạn đến trải nghiệm của sự chuy&ecirc;n nghiệp, tốc độ v&agrave; t&iacute;nh tiện lợi trong c&ocirc;ng việc</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_1_mac.jpg\" alt=\"\" /></p>\r\n<h3>Sức mạnh kh&ocirc;ng ngờ của một chiếc laptop di động</h3>\r\n<p>MacBook Pro 13 2020 n&acirc;ng tầm hiệu suất của laptop di động l&ecirc;n một đẳng cấp ho&agrave;n to&agrave;n kh&aacute;c biệt. Bộ vi xử l&yacute; Intel thế hệ thứ 10 mới với 4 nh&acirc;n, tốc độ 2.0GHz Turbo Boost l&ecirc;n tới 3.8GHz, 6MB bộ nhớ đệm L3 cho tốc độ nhanh như &yacute; tưởng của bạn. Chỉ cần &yacute; tưởng vừa hiện ra trong đầu, MacBook Pro sẽ gi&uacute;p bạn thực hiện ngay lập tức. Hơn nữa, 16GB RAM LPDDR4X 3733MHz gi&uacute;p m&aacute;y c&oacute; khả năng đa nhiệm tốt hơn bao giờ hết. L&agrave;m nhiều việc, chạy nhiều chương tr&igrave;nh c&ugrave;ng l&uacute;c, mở những tập tin nặng, tất cả đều kh</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_2_mac.jpg\" alt=\"\" /></p>\r\n<h3>L&agrave;m việc, giải tr&iacute; đẳng cấp Pro</h3>\r\n<p>Những điều bạn c&oacute; thể l&agrave;m được tr&ecirc;n MacBook Pro 13 2020 l&agrave; kh&ocirc;ng giới hạn. Bạn c&oacute; thể chỉnh sửa ảnh độ ph&acirc;n giải cao với tốc độ nhanh ch&oacute;ng; lập tr&igrave;nh, chạy nhiều m&aacute;y ảo một c&aacute;ch mượt m&agrave;; bi&ecirc;n tập, render video v&agrave; mix c&aacute;c bản nhạc chuy&ecirc;n nghiệp hay thậm ch&iacute; l&agrave; chơi những tựa game như Dota 2 với đồ họa tuyệt đẹp. MacBook Pro, chỉ một thiết bị nhỏ gọn cho tất cả nhu cầu học tập, l&agrave;m việc, giải tr&iacute; của bạn.</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_3_mac.jpg\" alt=\"\" /></p>\r\n<h3>N&acirc;ng cao hiệu suất đồ họa</h3>\r\n<p>Việc trang bị bộ vi xử l&yacute; Intel thế hệ thứ 10 cũng đồng nghĩa với việc MacBook Pro 13 2020 sẽ sở hữu GPU đồ họa Iris Plus mới, cho hiệu suất đồ họa tốt hơn tới 80% so với thế hệ trước. Bạn sẽ c&oacute; thể chỉnh sửa video dễ d&agrave;ng, dựng m&ocirc; h&igrave;nh 3D nhanh hơn v&agrave; chơi game mượt m&agrave; hơn.</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_4_mac.jpg\" alt=\"\" /></p>\r\n<h3>Ổ cứng SSD, lưu trữ nhiều hơn, tốc độ nhanh hơn</h3>\r\n<p>Phi&ecirc;n bản MacBook Pro 13 2020 trong b&agrave;i viết c&oacute; ổ cứng SSD dung lượng 512GB, thoải m&aacute;i để bạn c&agrave;i đặt ứng dụng, lưu trữ dữ liệu. Ổ cứng SSD kh&ocirc;ng chỉ si&ecirc;u bền m&agrave; c&ograve;n c&oacute; tốc độ đọc/ghi đ&aacute;ng kinh ngạc, l&ecirc;n tới 3.0GB/s. Tất cả thao t&aacute;c của bạn tr&ecirc;n m&aacute;y t&iacute;nh từ khởi động, mở ứng dụng cho đến c&agrave;i đặt, sao ch&eacute;p dữ liệu đều nhanh hơn với ổ cứng SSD của MacBook Pro. Hơn nữa, với con chip bảo mật Apple T2 Security, to&agrave;n bộ dữ liệu đều được đảm bảo an to&agrave;n tuyệt đối.</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_5_mac.jpg\" alt=\"\" /></p>\r\n<h3>B&agrave;n ph&iacute;m Magic Keyboard mới, cho trải nghiệm đ&aacute;nh m&aacute;y thoải m&aacute;i nhất</h3>\r\n<p>MacBook Pro 13 2020 được chế t&aacute;c để bạn l&agrave;m mọi thứ nhanh ch&oacute;ng v&agrave; hiệu quả hơn. B&agrave;n ph&iacute;m Magic Keyboard mới l&agrave; sự cải tiến vượt bậc với cơ chế cắt k&eacute;o tinh tế v&agrave; h&agrave;nh tr&igrave;nh ph&iacute;m tối ưu 1mm. Bạn sẽ c&oacute; trải nghiệm g&otilde; ph&iacute;m tốt nhất từ trước đến nay. Tốc độ đ&aacute;nh m&aacute;y tăng, g&otilde; &ecirc;m tay v&agrave; mượt m&agrave;, tất cả đều khiến bạn h&agrave;i l&ograve;ng tr&ecirc;n b&agrave;n ph&iacute;m Magic mới.</p>\r\n<p>Ph&iacute;m Escape cũng được bố tr&iacute; ri&ecirc;ng biệt, cho ph&eacute;p bạn chuyển đổi nhanh giữa c&aacute;c chế độ. C&aacute;c ph&iacute;m điều hướng chữ T gi&uacute;p thao t&aacute;c nhanh ch&oacute;ng hơn khi đi</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_6_mac.jpg\" alt=\"\" /></p>\r\n<h3>Y&ecirc;n t&acirc;m về bảo mật</h3>\r\n<p>Tất cả laptop thuộc d&ograve;ng MacBook Pro 13 thế hệ mới đều trang bị chip bảo mật Apple T2 &ndash; con chip bảo mật thế hệ thứ hai mang đến sự an to&agrave;n cho dữ liệu của bạn. Apple T2 bao gồm bộ đồng xử l&yacute; Secure Enclave cung cấp nền tảng lưu trữ m&atilde; h&oacute;a v&agrave; khởi động an to&agrave;n. To&agrave;n bộ tr&igrave;nh quản l&yacute; hệ thống, &acirc;m thanh, ổ cứng SSD của bạn đều được hợp nhất v&agrave; bảo mật, để kh&ocirc;ng bị tin tặc x&acirc;m nhập</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_7_mac.jpg\" alt=\"\" /></p>\r\n<h3>M&agrave;n h&igrave;nh Retina đẹp xuất sắc, &acirc;m thanh đắm ch&igrave;m</h3>\r\n<p>M&agrave;n h&igrave;nh Retina lu&ocirc;n l&agrave; một trong những t&iacute;nh năng m&agrave; người d&ugrave;ng th&iacute;ch nhất tr&ecirc;n MacBook Pro. Mọi thứ đều trở n&ecirc;n tuyệt đẹp với một m&agrave;n h&igrave;nh sắc n&eacute;t, độ ph&acirc;n giải si&ecirc;u cao, đ&egrave;n nền LED s&aacute;ng mang đến m&agrave;u đen s&acirc;u thẳm v&agrave; m&agrave;u trắng s&aacute;ng r&otilde;. M&agrave;n h&igrave;nh hỗ trợ dải m&agrave;u rộng P3 cho m&agrave;u xanh v&agrave; đỏ rực rỡ hơn so với sRGB. T&iacute;nh năng c&acirc;n bằng trắng tự động sẽ điều chỉnh nhiệt độ m&agrave;u dựa theo &aacute;nh s&aacute;ng xung quanh bạn, để độ s&aacute;ng v&agrave; m&agrave;u sắc của m&agrave;n h&igrave;nh lu&ocirc;n tự nhi&ecirc;n, dễ chịu.<br />Kh&ocirc;ng chỉ m&agrave;n h&igrave;nh xuất sắc, MacBook</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_8_mac.jpg\" alt=\"\" /></p>\r\n<h3>Thunderbolt 3, cổng kết nối mạnh mẽ</h3>\r\n<p>Thunderbolt 3 l&agrave; cổng kết nối c&oacute; băng th&ocirc;ng cực cao v&agrave; t&iacute;nh linh hoạt tuyệt vời của chuẩn USB Type-C, gi&uacute;p bạn c&oacute; thể kết nối với mọi thứ ở tốc độ cao nhất. Với Thunderbolt 3, bạn c&oacute; thể chuyển dữ liệu, sạc, đầu ra video trong một cổng kết nối duy nhất, tốc độ băng th&ocirc;ng l&ecirc;n tới 40Gb/s. Hơn nữa, tr&ecirc;n MacBook Pro 13 2020 phi&ecirc;n bản chạy chip Intel thế hệ thứ 10 c&oacute; tới 4 cổng Thunderbolt 3, để bạn sử dụng kết nối linh hoạt hơn nữa. Hỗ trợ kết nối với eGPU v&agrave; xuất h&igrave;nh độ ph&acirc;n giải l&ecirc;n tới 6K, Thund</p>\r\n<p><img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_9_mac.jpg\" alt=\"\" /></p>\r\n<h3>Slidecar, mở rộng kh&ocirc;ng gian với iPad</h3>\r\n<p>Slidecar l&agrave; một giải ph&aacute;p th&ocirc;ng minh trong hệ sinh th&aacute;i của Apple, khi cho ph&eacute;p bạn sử dụng iPad với vai tr&ograve; l&agrave; một m&agrave;n h&igrave;nh thứ hai của MacBook Pro. Bạn vẫn sẽ c&oacute; đầy đủ c&aacute;c chế độ chia m&agrave;n h&igrave;nh khi kết nối với iPad như sử dụng hai m&agrave;n h&igrave;nh cho c&ugrave;ng một ứng dụng hay phản chiếu m&agrave;n h&igrave;nh. T&iacute;nh năng n&agrave;y đưa độ tiện dụng v&agrave; di động l&ecirc;n một tầm cao mới, khi chỉ với 2 thiết bị nằm gọn trong balo, bạn cũng c&oacute; thể l&agrave;m việc v&ocirc; c&ugrave;ng chuy&ecirc;n nghiệp.<img src=\"/laravelpro/unimart/users/admin/public/storage/photos/thumb_10_mac.jpg\" alt=\"\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2023-06-26 20:21:41', NULL, '2023-06-26 20:21:41'),
(23, 3, 'Laptop', 'Laptop', 'Laptop Asus ROG Zephyrus ', 'Laptop Dell r-150', 'Laptop-Asus-ROG-Zephyrus ', '34000000', '30500000', 'LAP-4', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-14.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game.  RAM', NULL, NULL, '2021-11-22 23:53:10'),
(24, 3, 'Laptop', 'Laptop', 'Laptop Asus ROG Zephyrus a', 'Laptop Acer r-150', 'Laptop-Asus-ROG-Zephyrus-a', '17000000', '30500000', 'LAP-3', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-16.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game.  RAM', NULL, NULL, '2021-11-22 23:53:10'),
(25, 3, 'Laptop', 'Laptop', 'Laptop Acer Nitro 5 Gaming', 'Acer Aspire 7 A715 41G ', 'Laptop-Acer- Nitro-5-Gaming', '27000000', '30500000', 'LAP-2', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-15.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game. \nRAM', NULL, NULL, '2021-11-22 23:53:10'),
(42, 3, 'Laptop', 'Laptop', 'Laptop Acer Nitro 5 Gaming', 'Acer Aspire 7 A715 41G ', 'Laptop-Acer- Nitro-5-Gaming', '27000000', '30500000', 'LAP-2', 'Acer Aspire 7 A715 41G R150 R7 (NH.Q8SSV.004) được thiết kế gọn gàng với cấu hình mạnh mẽ nhờ CPU AMD Ryzen 7 và card đồ hoạ NVIDIA GeForce GTX 1650Ti giúp tối ưu trải nghiệm chơi game, đáp ứng đa dạng nhu cầu sử dụng.', 'laptop/lap-12.jpg', 'Acer Aspire sở hữu bộ vi xử lý 3750H từ nhà AMD với tốc độ CPU 2.30 GHz và ép xung nhờ Turbo Boost lên đến 4.0 GHz, được sản xuất trên tiến trình 12 nm cho tốc độ xử lý nhanh chóng ở mọi tác vụ công việc học tập văn phòng cho đến đồ hoạ và chơi game. \r\nRAM', NULL, NULL, '2021-11-22 23:53:10'),
(43, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy A12', 'Điện thoại Samsung Galaxy A12 Ultra Bạc (6GB/128GB) ', 'Samsung Galaxy A12', '4690000', '4700000', 'SS-8', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân khúc tầm trung giá rẻ của Samsung.', 'phone/samsung/ss-a12.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân tay, cùng phần cạnh viền được làm cong vừa phải, Samsun', NULL, NULL, '2021-11-22 23:53:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_folders`
--

CREATE TABLE `products_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folder_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_folders`
--

INSERT INTO `products_folders` (`id`, `folder_parent`, `folder_name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sport', 'Ronal lại ghi bàn', 'ronal-lai-ghi-ban', NULL, '2021-10-13 19:00:07', '2021-10-13 23:40:44'),
(2, 'laptop', 'Laptop intel i5 9100F', 'Laptop-intel-i5-9100F', '2021-10-13 20:02:28', '2021-10-13 19:46:46', '2021-10-13 20:02:28'),
(3, 'Đồng hồ', 'Đồng hồ Rolex 12M', 'dong-ho-rolex-12m', NULL, '2021-10-13 19:52:29', '2021-10-13 19:52:29'),
(4, 'Điện thoại', 'Iphone 14 se ra mắt vào năm 2022', 'Iphone-14se-ra-mắt-vào-năm-2022', NULL, '2021-11-10 19:25:02', '2021-11-10 19:25:02'),
(5, '---Cáp sạc', 'Cáp sạc iphone', 'Cáp-sạc-iphone', NULL, '2021-11-10 19:37:43', '2021-11-10 19:37:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_thumbs`
--

CREATE TABLE `product_thumbs` (
  `id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(15) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_1` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_1` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_2` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_2` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_3` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_3` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_4` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_4` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_5` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_5` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_6` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_6` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_7` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_7` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_8` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_8` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_9` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_9` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_10` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_10` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_11` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_11` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `content_12` varchar(1000) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thumb_12` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h31` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h32` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h33` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h34` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h35` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h36` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h37` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h38` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h39` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h310` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h311` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `h312` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `product_thumbs`
--

INSERT INTO `product_thumbs` (`id`, `cat_id`, `cat_title`, `content_1`, `thumb_1`, `content_2`, `thumb_2`, `content_3`, `thumb_3`, `content_4`, `thumb_4`, `content_5`, `thumb_5`, `content_6`, `thumb_6`, `content_7`, `thumb_7`, `content_8`, `thumb_8`, `content_9`, `thumb_9`, `content_10`, `thumb_10`, `content_11`, `thumb_11`, `content_12`, `thumb_12`, `h31`, `h32`, `h33`, `h34`, `h35`, `h36`, `h37`, `h38`, `h39`, `h310`, `h311`, `h312`) VALUES
(1, 1, 'Iphone', '“Trùm cuối” của dòng iPhone 12 đã xuất hiện. iPhone 12 Pro Max là chiếc iPhone có màn hình lớn nhất từ trước đến nay, mang trên mình bộ vi xử lý mạnh nhất, camera đẳng cấp pro cùng kết nối 5G siêu tốc, cho bạn những trải nghiệm tuyệt vời chưa từng có.', '/thumb_content/thumb_1.jpg', 'iPhone 12 Pro Max sở hữu màn hình kích thước khó tin, lên tới 6,7 inch, cho bạn trải nghiệm hình ảnh cực đã. Chất lượng đến từ một màn hình công nghệ Super Retina XDR, tấm nền OLED cao cấp và độ phân giải siêu cao thực sự quá tuyệt vời.\n\nMọi thứ đều trở nên sống động trên iPhone 12 Pro Max, đặc biệt khi bạn xem ảnh, xem phim hay chơi game. Còn bất ngờ hơn khi dù màn hình lớn hơn, nhưng iPhone 12 Pro Max vẫn gọn gàng như thế hệ trước nhờ viền màn hình được tối ưu siêu mỏng đầy tinh tế.', 'thumb_content/thumb_2.jpg', 'Không chỉ có một màn hình đẹp xuất sắc, màn hình iPhone 12 Pro Max còn được bảo vệ bởi công nghệ phủ gốm Ceramic Shield. Công nghệ này sử dụng các tinh thể gốm nano cứng hơn cả kim loại để tấm kính có khả năng chống xước cao hơn và bền hơn tới 4 lần nếu chẳng may điện thoại bị rơi. Đây cũng là lớp kính màn hình cứng nhất thế giới smartphone hiện nay, cho bạn cảm giác yên tâm khi sử dụng.', 'thumb_content/thumb_3.jpg', 'Được làm từ những vật liệu cao cấp hàng đầu và khả năng hoàn thiện tinh xảo, iPhone 12 Pro Max khiến tất cả đều phải ngước nhìn. Ấn tượng nhất chắc chắn là phần khung viền làm từ thép không gỉ, được làm phẳng hiện đại và các đường cắt kim cương sáng bóng sang trọng.\n\nPhần viền màn hình và thân máy đều được làm siêu mỏng, tạo nên sự thanh lịch. Ngoài ra bạn còn có tới 4 màu sắc để lựa chọn là Bạc, Xám than chì, Vàng và Xanh đại dương, tất cả đều rất đẳng cấp. Bên cạnh đó, iPhone 12 Pro Max sẽ c', 'thumb_content/thumb_4.jpg', 'iPhone 12 Pro Max có thể ngâm nước ở độ sâu tối đa lên tới 6m trong khoảng thời gian 30 phút. Trang bị chuẩn chống nước IP68 tốt nhất thế giới smartphone hiện nay, iPhone 12 Pro Max hoàn toàn không bị nguy hại khi đối mặt với những nguy cơ từ nước trong cuộc sống hàng ngày.', 'thumb_content/thumb_5.jpg', 'iPhone 12 Pro Max trang bị băng tần 5G siêu nhanh, giúp trải nghiệm Internet của bạn lên một tầm cao mới. Bất cứ điều gì bạn làm trên mạng Internet đều diễn ra nhanh chóng. Xem phim trực tuyến chất lượng cao, livestream, chơi game online, tải tài liệu, tất cả đều được xử lý trong chớp mắt với kết nối 5G.', 'thumb_content/thumb_6.jpg', 'Apple A14 Bionic, bộ vi xử lý điện thoại mạnh nhất thế giới đã có mặt trên iPhone 12 Pro Max. Đây là con chip đầu tiên được sản xuất trên tiến trình 5nm, có số lượng bóng bán dẫn nhiều hơn tới 40% so với thế hệ trước, không chỉ mang đến hiệu năng cực đỉnh mà còn có thời lượng pin tuyệt vời.\n\nBên cạnh đó, Apple A14 Bionic còn tích hợp chip xử lý hình ảnh ISP mới, nâng cao khả năng chụp ảnh và quay video. Số nhân Neural Engine cũng được tăng gấp đôi, từ 8 lên 16 để việc vận dụng AI có hiệu suất ', 'thumb_content/thumb_7.jpg', 'NASA đang sử dụng công nghệ LiDAR cho lần tiếp theo đặt chân lên sao Hỏa. Bạn có thể trải nghiệm công nghệ tiên tiến này qua máy quét LiDAR ngay trên chính iPhone 12 Pro Max.\n\nLiDAR có khả năng dựng lại vật thể bằng cách đo thời gian ánh sáng phản xạ đến vật thể, với độ chính xác tới từng nano giây. LiDAR sẽ quét các bề mặt trong không gian để phân tích và tạo cảnh dựa trên ứng dụng AR. Đây là ngành công nghệ có tính ứng dụng rất cao trong tương lai gần.', 'thumb_content/thumb_8.jpg', 'Với ống kính Tele mới tiêu cự 65mm, iPhone 12 Pro Max có khả năng zoom quang học 2,5x, phóng to hình ảnh tới 2,5 lần mà chất lượng không hề thay đổi. Nghĩa là bạn có thể chụp những vật thể ở khoảng cách xa với khả năng thu phóng và độ nét đáng kinh ngạc.', 'thumb_content/thumb_9.jpg', 'Camera chính trên iPhone 12 Pro Max là camera smartphone đầu tiên có tính năng chống rung quang học thay đổi cảm biến (sensor-shift OIS). Tính năng này mang tới hiệu quả chống rung gấp 5 lần so với OIS thông thường.\n\nKết hợp thêm khẩu độ lớn f/1.6 và kích thước điểm ảnh lên tới 1,7um, camera iPhone 12 Pro Max đích thực là một ngọn hải đăng trong đêm. Các bức ảnh chụp đêm sẽ sáng rõ, sắc nét và màu sắc vô cùng chính xác. Tha hồ để bạn tự do sáng tạo, ghi lại những khoảnh khắc đáng nhớ trong đêm tối.\n\n', 'thumb_content/thumb_10.jpg', 'Đến với thế giới màu sắc bằng những đoạn phim 4K HDR Dolby Vision chân thực một cách đáng kinh ngạc trên iPhone 12 Pro Max. Những video giờ đây sẽ có màu sắc sống động chưa từng thấy với 700 triệu màu, gấp 60 lần so với video tiêu chuẩn.\n\nBạn sẽ thấy rõ sự khác biệt khi thưởng thức video Dolby Vision trên TV 4K HDR. iPhone 12 Pro Max là chiếc điện thoại đầu tiên có thể quay video Dolby Vision, thậm chí bạn còn có những công cụ để chỉnh sửa, biên tập video trước khi xuất bản. Tất cả các công việc của một studio chuyên nghiệp gói gọn trong chiếc điện thoại đầy quyền lực trên tay.', 'thumb_content/thumb_11.jpg', 'Nếu như ở những chiếc điện thoại khác, thiếu sáng luôn là một điều kiện khó khăn cho camera, thì với iPhone 12 Pro Max, màn đêm chỉ khiến cho những bức ảnh và video của bạn lung linh hơn. Bạn có thể chụp ảnh rõ nét, chụp chân dung đêm và quay video với độ sáng tốt hơn tới 87%.\n\nNgay cả những vùng tối cũng có độ chi tiết rất cao trên iPhone 12 Pro Max. Cảm biến camera hàng đầu, chip xử lý hình ảnh ISP mới trên Apple A14 Bionic, máy quét LiDAR tạo nên sự kết hợp hoàn hảo khi chụp ảnh, quay video vào ban đêm.', 'thumb_content/thumb_12.jpg', 'Chiếc iPhone màn hình lớn nhất', 'Màn hình siêu bền, giảm nguy cơ trầy xước rơi vỡ', 'Chế tác từ thép không gỉ cao cấp', 'Khả năng chống nước hoàn hảo', 'Tốc độ nhanh không tưởng với mạng 5G', 'Chiếc điện thoại mạnh mẽ nhất thế giới', 'Máy quét LiDAR chuyên nghiệp', 'Zoom quang học 2,5x, chụp sắc nét ở cự ly xa', 'Tính năng chống rung quang học mới', 'Dựng phim chuyên nghiệp, quay video 4K HDR Dolby Vision', 'Chụp ảnh và quay video thiếu sáng hoàn hảo', ''),
(2, 2, 'Samsung', 'Một biểu tượng thời trang, một kiệt tác của thế giới công nghệ mà ai cũng phải kinh ngạc khi nhìn thấy Samsung Galaxy Z Flip3 5G và cách mà bạn sử dụng siêu phẩm smartphone này, nơi công nghệ điện thoại màn hình gập đã mang đến những điều không tưởng.', 'thumb_content/thumb_1_ss.jpg', 'Chắc chắn không ai có thể cưỡng lại vẻ đẹp của Samsung Galaxy Z Flip3 5G. Một chiếc điện thoại gập có kích thước siêu nhỏ gọn và đầy đáng yêu với dạng hình vuông, chỉ nhỏ bằng phân nửa điện thoại thông thường.\n\nKiểu dáng khác biệt, vật liệu cao cấp và cách phối màu tinh tế giúp Galaxy Z Flip3 5G nhìn giống một món đồ trang sức hơn là một sản phẩm công nghệ. Bạn sẽ có 4 phiên bản màu sắc đầy cá tính để lựa chọn là Kem Ivory, Đen Phantom, Xanh Phantom và Tím Lilac.', 'thumb_content/thumb_2_ss.jpg', 'Dù là một biểu tượng thời trang nhưng Samsung Galaxy Z Flip3 5G lại vô cùng bền vững. Siêu phẩm của chúng ta trang bị kính cường lực Gorilla Glass Victus và hợp kim nhôm Armor Aluminum, những vật liệu bền bỉ nhất trong ngành công nghiệp smartphone.\n\nBạn có thể thoải mái gập mở, đồng thời yên tâm về khả năng chống xước và chống va đập. Hơn nữa, màn hình gập còn được chế tác từ kính Ultra Thin Glass, bước tiến lớn nhất trong công nghệ màn hình gập, tăng cường cả độ mỏng, sự linh hoạt và độ bền.', 'thumb_content/thumb_3_ss.jpg', 'Bạn không nhất thiết phải thường xuyên mở màn hình chính trong lúc đang tập trung làm việc. Một màn hình ngoài 1,9 inch cung cấp đầy đủ những thông tin cần thiết dành cho bạn, từ ngày, giờ, thời tiết cho đến các thông báo mới.\n\nMàn hình này hiển thị tuyệt đẹp và có rất nhiều tùy biến để có thể hiển thị một cách vừa trực quan, vừa rất phong cách. Còn gì sành điệu hơn khi thông báo đến, bạn chỉ cần cầm chiếc điện thoại gập tuyệt đẹp lên và nhìn qua là đã nắm đầy đủ nội dung, thay vì phải mở màn ', 'thumb_content/thumb_4_ss.jpg', 'Samsung Galaxy Z Flip3 5G chính là chiếc điện thoại tốt nhất cho những ai thích selfie. Màn hình ngoài sẽ đóng vai trò là một màn hình xem trước để bạn có thể chụp ảnh “tự sướng” bằng chính bộ đôi camera sau đẳng cấp.\n\nHãy thử tưởng tượng bạn dùng những cảm biến camera sau hàng đầu của Samsung để chụp ảnh selfie, những bức ảnh của bạn sẽ có chất lượng cao đến mức nào. Chọn góc chụp, bấm máy bằng phím âm lượng, trải nghiệm selfie của bạn chưa bao giờ thú vị đến thế.', 'thumb_content/thumb_5_ss.jpg', 'Mở màn hình chính của Samsung Galaxy Z Flip3 5G ra, bạn sẽ cảm nhận được điều kỳ diệu của công nghệ. Ngay lập tức trước mắt sẽ là những nội dung tuyệt mỹ trên màn hình lớn tới 6,7 inch, tấm nền Dynamic AMOLED 2X hàng đầu của Samsung, hỗ trợ HDR 10+ cho hình ảnh sống động và chân thực đến khó tin.\n\nKhông chỉ đẹp, bạn còn cảm nhận được độ mượt mà trong từng thao tác vuốt chạm, từ những hoạt động thông thường cho đến chơi các tựa game nặng. Tần số quét lên tới 120Hz đã mang tới sự khác biệt cho m', 'thumb_content/thumb_6_ss.jpg', 'Samsung Galaxy Z Flip3 5G không chỉ mang trên mình những cảm biến camera và các công nghệ chụp ảnh hàng đầu của Samsung, mà lợi thế của khả năng gập mở linh hoạt sẽ cho bạn phong cách chụp ảnh hoàn toàn mới.\n\nBạn có thể chọn các góc chụp và quay phim khác nhau khi Samsung Galaxy Z Flip3 5G luôn đứng vững trên mặt phẳng, giúp bạn không cần chân máy mà vẫn có thể tự chụp, tự quay rất dễ dàng.', 'thumb_content/thumb_7_ss.jpg', 'Khi gập khoảng 90 độ, Samsung Galaxy Z Flip3 5G có thể đứng thẳng trên mặt phẳng, vì thế bạn không cần phải giữ máy khi xem phim, gọi video với bạn bè. Khả năng chia đôi màn hình cũng giúp bạn nâng cao hiệu suất khi có thể làm hai việc cùng lúc trên hai phần điện thoại riêng biệt.', 'thumb_content/thumb_8_ss.jpg', 'Sự nỗ lực tuyệt vời từ Samsung đã mang đến cho bạn chiếc điện thoại màn hình gập đầu tiên có khả năng kháng nước. Galaxy Z Flip3 5G trang bị chuẩn IPX8, cho phép điện thoại chống nước ở độ sâu 1,5m trong thời gian tối đa lên tới 30 phút.', 'thumb_content/thumb_9_ss.jpg', 'Camera chính trên iPhone 12 Pro Max là camera smartphone đầu tiên có tính năng chống rung quang học thay đổi cảm biến (sensor-shift OIS). Tính năng này mang tới hiệu quả chống rung gấp 5 lần so với OIS thông thường.\n\nKết hợp thêm khẩu độ lớn f/1.6 và kích thước điểm ảnh lên tới 1,7um, camera iPhone 12 Pro Max đích thực là một ngọn hải đăng trong đêm. Các bức ảnh chụp đêm sẽ sáng rõ, sắc nét và màu sắc vô cùng chính xác. Tha hồ để bạn tự do sáng tạo, ghi lại những khoảnh khắc đáng nhớ trong đêm tối.\n\n', 'thumb_content/thumb_10_ss.jpg', 'Đến với thế giới màu sắc bằng những đoạn phim 4K HDR Dolby Vision chân thực một cách đáng kinh ngạc trên iPhone 12 Pro Max. Những video giờ đây sẽ có màu sắc sống động chưa từng thấy với 700 triệu màu, gấp 60 lần so với video tiêu chuẩn.\n\nBạn sẽ thấy rõ sự khác biệt khi thưởng thức video Dolby Vision trên TV 4K HDR. iPhone 12 Pro Max là chiếc điện thoại đầu tiên có thể quay video Dolby Vision, thậm chí bạn còn có những công cụ để chỉnh sửa, biên tập video trước khi xuất bản. Tất cả các công việc của một studio chuyên nghiệp gói gọn trong chiếc điện thoại đầy quyền lực trên tay.', 'thumb_content/thumb_11_ss.jpg', 'Nếu như ở những chiếc điện thoại khác, thiếu sáng luôn là một điều kiện khó khăn cho camera, thì với iPhone 12 Pro Max, màn đêm chỉ khiến cho những bức ảnh và video của bạn lung linh hơn. Bạn có thể chụp ảnh rõ nét, chụp chân dung đêm và quay video với độ sáng tốt hơn tới 87%.\n\nNgay cả những vùng tối cũng có độ chi tiết rất cao trên iPhone 12 Pro Max. Cảm biến camera hàng đầu, chip xử lý hình ảnh ISP mới trên Apple A14 Bionic, máy quét LiDAR tạo nên sự kết hợp hoàn hảo khi chụp ảnh, quay video vào ban đêm.', 'thumb_content/thumb_12_ss.jpg', 'Thiết kế khác biệt đầy mê hoặc', 'Độ bền thách thức mọi giới hạn', 'Trải nghiệm đầy thú vị với màn hình ngoài', 'Selfie bằng màn hình ngoài', 'Điều kỳ diệu sau mỗi lần gập mở', 'Thay đổi phong cách bạn chụp ảnh', 'Khởi tạo xu hướng', 'Chống nước hoàn hảo', '', '', '', ''),
(3, 3, 'Laptop', 'MacBook Pro 13 2020 mới với bộ vi xử lý Intel thế hệ thứ 10 mạnh mẽ, bàn phím Magic Keyboard mới bền vững hơn, sẽ đưa bạn đến trải nghiệm của sự chuyên nghiệp, tốc độ và tính tiện lợi trong công việc', 'thumb_content/thumb_1_mac.jpg', 'MacBook Pro 13 2020 nâng tầm hiệu suất của laptop di động lên một đẳng cấp hoàn toàn khác biệt. Bộ vi xử lý Intel thế hệ thứ 10 mới với 4 nhân, tốc độ 2.0GHz Turbo Boost lên tới 3.8GHz, 6MB bộ nhớ đệm L3 cho tốc độ nhanh như ý tưởng của bạn. Chỉ cần ý tưởng vừa hiện ra trong đầu, MacBook Pro sẽ giúp bạn thực hiện ngay lập tức. Hơn nữa, 16GB RAM LPDDR4X 3733MHz giúp máy có khả năng đa nhiệm tốt hơn bao giờ hết. Làm nhiều việc, chạy nhiều chương trình cùng lúc, mở những tập tin nặng, tất cả đều kh', 'thumb_content/thumb_2_mac.jpg', 'Những điều bạn có thể làm được trên MacBook Pro 13 2020 là không giới hạn. Bạn có thể chỉnh sửa ảnh độ phân giải cao với tốc độ nhanh chóng; lập trình, chạy nhiều máy ảo một cách mượt mà; biên tập, render video và mix các bản nhạc chuyên nghiệp hay thậm chí là chơi những tựa game như Dota 2 với đồ họa tuyệt đẹp. MacBook Pro, chỉ một thiết bị nhỏ gọn cho tất cả nhu cầu học tập, làm việc, giải trí của bạn.', 'thumb_content/thumb_3_mac.jpg', 'Việc trang bị bộ vi xử lý Intel thế hệ thứ 10 cũng đồng nghĩa với việc MacBook Pro 13 2020 sẽ sở hữu GPU đồ họa Iris Plus mới, cho hiệu suất đồ họa tốt hơn tới 80% so với thế hệ trước. Bạn sẽ có thể chỉnh sửa video dễ dàng, dựng mô hình 3D nhanh hơn và chơi game mượt mà hơn.\n\n', 'thumb_content/thumb_4_mac.jpg', 'Phiên bản MacBook Pro 13 2020 trong bài viết có ổ cứng SSD dung lượng 512GB, thoải mái để bạn cài đặt ứng dụng, lưu trữ dữ liệu. Ổ cứng SSD không chỉ siêu bền mà còn có tốc độ đọc/ghi đáng kinh ngạc, lên tới 3.0GB/s. Tất cả thao tác của bạn trên máy tính từ khởi động, mở ứng dụng cho đến cài đặt, sao chép dữ liệu đều nhanh hơn với ổ cứng SSD của MacBook Pro. Hơn nữa, với con chip bảo mật Apple T2 Security, toàn bộ dữ liệu đều được đảm bảo an toàn tuyệt đối.', 'thumb_content/thumb_5_mac.jpg', 'MacBook Pro 13 2020 được chế tác để bạn làm mọi thứ nhanh chóng và hiệu quả hơn. Bàn phím Magic Keyboard mới là sự cải tiến vượt bậc với cơ chế cắt kéo tinh tế và hành trình phím tối ưu 1mm. Bạn sẽ có trải nghiệm gõ phím tốt nhất từ trước đến nay. Tốc độ đánh máy tăng, gõ êm tay và mượt mà, tất cả đều khiến bạn hài lòng trên bàn phím Magic mới.\n\nPhím Escape cũng được bố trí riêng biệt, cho phép bạn chuyển đổi nhanh giữa các chế độ. Các phím điều hướng chữ T giúp thao tác nhanh chóng hơn khi đi', 'thumb_content/thumb_6_mac.jpg', 'Tất cả laptop thuộc dòng MacBook Pro 13 thế hệ mới đều trang bị chip bảo mật Apple T2 – con chip bảo mật thế hệ thứ hai mang đến sự an toàn cho dữ liệu của bạn. Apple T2 bao gồm bộ đồng xử lý Secure Enclave cung cấp nền tảng lưu trữ mã hóa và khởi động an toàn. Toàn bộ trình quản lý hệ thống, âm thanh, ổ cứng SSD của bạn đều được hợp nhất và bảo mật, để không bị tin tặc xâm nhập', 'thumb_content/thumb_7_mac.jpg', 'Màn hình Retina luôn là một trong những tính năng mà người dùng thích nhất trên MacBook Pro. Mọi thứ đều trở nên tuyệt đẹp với một màn hình sắc nét, độ phân giải siêu cao, đèn nền LED sáng mang đến màu đen sâu thẳm và màu trắng sáng rõ. Màn hình hỗ trợ dải màu rộng P3 cho màu xanh và đỏ rực rỡ hơn so với sRGB. Tính năng cân bằng trắng tự động sẽ điều chỉnh nhiệt độ màu dựa theo ánh sáng xung quanh bạn, để độ sáng và màu sắc của màn hình luôn tự nhiên, dễ chịu.\nKhông chỉ màn hình xuất sắc, MacBo', 'thumb_content/thumb_8_mac.jpg', 'Thunderbolt 3 là cổng kết nối có băng thông cực cao và tính linh hoạt tuyệt vời của chuẩn USB Type-C, giúp bạn có thể kết nối với mọi thứ ở tốc độ cao nhất. Với Thunderbolt 3, bạn có thể chuyển dữ liệu, sạc, đầu ra video trong một cổng kết nối duy nhất, tốc độ băng thông lên tới 40Gb/s. Hơn nữa, trên MacBook Pro 13 2020 phiên bản chạy chip Intel thế hệ thứ 10 có tới 4 cổng Thunderbolt 3, để bạn sử dụng kết nối linh hoạt hơn nữa. Hỗ trợ kết nối với eGPU và xuất hình độ phân giải lên tới 6K, Thund', 'thumb_content/thumb_9_mac.jpg', 'Slidecar là một giải pháp thông minh trong hệ sinh thái của Apple, khi cho phép bạn sử dụng iPad với vai trò là một màn hình thứ hai của MacBook Pro. Bạn vẫn sẽ có đầy đủ các chế độ chia màn hình khi kết nối với iPad như sử dụng hai màn hình cho cùng một ứng dụng hay phản chiếu màn hình. Tính năng này đưa độ tiện dụng và di động lên một tầm cao mới, khi chỉ với 2 thiết bị nằm gọn trong balo, bạn cũng có thể làm việc vô cùng chuyên nghiệp.', 'thumb_content/thumb_10_mac.jpg', 'Đến với thế giới màu sắc bằng những đoạn phim 4K HDR Dolby Vision chân thực một cách đáng kinh ngạc trên iPhone 12 Pro Max. Những video giờ đây sẽ có màu sắc sống động chưa từng thấy với 700 triệu màu, gấp 60 lần so với video tiêu chuẩn.\n\nBạn sẽ thấy rõ sự khác biệt khi thưởng thức video Dolby Vision trên TV 4K HDR. iPhone 12 Pro Max là chiếc điện thoại đầu tiên có thể quay video Dolby Vision, thậm chí bạn còn có những công cụ để chỉnh sửa, biên tập video trước khi xuất bản. Tất cả các công việc của một studio chuyên nghiệp gói gọn trong chiếc điện thoại đầy quyền lực trên tay.', 'thumb_content/thumb_11_mac.jpg', 'Nếu như ở những chiếc điện thoại khác, thiếu sáng luôn là một điều kiện khó khăn cho camera, thì với iPhone 12 Pro Max, màn đêm chỉ khiến cho những bức ảnh và video của bạn lung linh hơn. Bạn có thể chụp ảnh rõ nét, chụp chân dung đêm và quay video với độ sáng tốt hơn tới 87%.\r\n\r\nNgay cả những vùng tối cũng có độ chi tiết rất cao trên iPhone 12 Pro Max. Cảm biến camera hàng đầu, chip xử lý hình ảnh ISP mới trên Apple A14 Bionic, máy quét LiDAR tạo nên sự kết hợp hoàn hảo khi chụp ảnh, quay video vào ban đêm.', 'thumb_content/thumb_12_mac.jpg', 'Sức mạnh không ngờ của một chiếc laptop di động', 'Làm việc, giải trí đẳng cấp Pro', 'Nâng cao hiệu suất đồ họa', 'Ổ cứng SSD, lưu trữ nhiều hơn, tốc độ nhanh hơn', 'Bàn phím Magic Keyboard mới, cho trải nghiệm đánh máy thoải mái nhất', 'Yên tâm về bảo mật', 'Màn hình Retina đẹp xuất sắc, âm thanh đắm chìm', 'Thunderbolt 3, cổng kết nối mạnh mẽ ', 'Slidecar, mở rộng không gian với iPad', 'Slidecar, mở rộng không gian với iPad', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Quản trị viên', NULL, NULL),
(2, 'Quản Lý Danh Mục', 'Quản Lý Danh Mục', '2021-11-12 19:09:11', '2021-11-12 19:09:11'),
(3, 'Quản Lý Trang', 'Quản Lý Trang', '2021-11-12 19:10:17', '2021-11-12 19:10:17'),
(4, 'Quản Lý Bài Viết', 'Quản Lý Bài Viết', '2021-11-12 19:11:53', '2021-11-12 19:11:53'),
(5, 'Quản Lý Sản Phẩm', 'Quản Lý Sản Phẩm', '2021-11-12 19:12:42', '2021-11-12 19:12:42'),
(6, 'Quản Lý Member', 'Quản Lý Member', '2021-11-12 19:12:50', '2021-11-12 19:12:50'),
(7, 'Quản Trị Role', 'Quản Trị Role', '2021-11-12 19:12:59', '2021-11-12 19:12:59'),
(8, 'Quản Lý Đơn Hàng', 'Quản Lý Đơn Hàng', '2021-11-12 19:13:13', '2021-11-12 19:13:13'),
(48, 'AdminReview', 'AdminReview', '2021-11-18 19:39:01', '2021-11-18 19:39:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(100) UNSIGNED NOT NULL,
  `user_id` bigint(100) UNSIGNED NOT NULL,
  `role_id` bigint(100) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 39, 7),
(8, 40, 48),
(9, 41, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `search`
--

CREATE TABLE `search` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `show_products`
--

CREATE TABLE `show_products` (
  `id` bigint(200) NOT NULL,
  `cat_id` int(200) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cat_title` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_title` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `old_price` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_desc` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_thumb` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_content` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `show_products`
--

INSERT INTO `show_products` (`id`, `cat_id`, `name`, `cat_title`, `product_name`, `product_title`, `slug`, `price`, `old_price`, `code`, `product_desc`, `product_thumb`, `product_content`) VALUES
(1, 1, 'Điện thoại', 'Iphone', 'iPhone 12 mini 64GB ', 'Điện thoại iPhone 12 mini 64GB ', 'iPhone-12-mini-64GB ', '16490000', '17000000', 'IP12-1', 'iPhone 12 mini 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ c', 'phone/iphone/ip12-mini.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính.\n\nLần đầu tiên App'),
(5, 1, 'Điện thoại', 'Iphone', 'iPhone 12  WHITE', 'Điện thoại iPhone 12 SE WHITE', 'iPhone-12-WHITE', '39999000', '40000000', 'IP12-5', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ', 'phone/iphone/ip-se.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/phone/iphone/ip-se.jpg'),
(7, 1, 'Điện thoại', 'Iphone', 'iPhone 11  GREEN', 'Điện thoại iPhone 11 SE GREEN', 'iPhone-11-GREEN', '39999000', '40000000', 'IP12-7', 'iPhone 12 promax 64 GB tuy là phiên bản thấp nhất trong bộ 4 iPhone 12 series, nhưng vẫn sở hữu những ưu điểm vượt trội về kích thước nhỏ gọn, tiện lợi, hiệu năng đỉnh cao, tính năng sạc nhanh cùng bộ', 'phone/iphone/ip11-x.jpg', 'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính. Lần đầu tiên Apple '),
(9, 2, 'Điện thoại', 'SamSung', 'Samsung Galaxy A12 ', 'Điện thoại Samsung Galaxy A12 (6GB/128GB) ', 'Samsung-Galaxy-A12 ', '4690000', '4700000', 'SS-1', 'Gây ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt mà trong mọi tác vụ, cùng thời lượng pin ấn tượng, Galaxy A12 (6GB/128GB) sẽ là mẫu smartphone đáng mua nhất trong phân kh', 'phone/samsung/ss-a12.jpg', 'Samsung Galaxy A12 là mẫu smartphone hướng đến đối tượng giới trẻ với những màu sắc trẻ trung năng động, đại diện cho những cá tính riêng của giới trẻ hiện đạiMặt lưng phẳng, phủ nhám hạn chế bám vân ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name_role` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `desc_role` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `list_role` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_thumb1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tests`
--

INSERT INTO `tests` (`id`, `page_title`, `created_at`, `updated_at`, `page_content`, `page_thumb`, `page_thumb1`, `deleted_at`) VALUES
(1, ' 24h công nghệ có gì HOT 27/8: OPPO sắp ra mắt máy tính bảng đầu tiên, xuất hiện concept iPhone 13 Pro Max màu Sunset Gold', '0000-00-00 00:00:00', NULL, '24h công nghệ có gì HOT 27/8 với những thông tin đáng chú ý như: Không nằm ngoài cuộc chơi, OPPO cũng chuẩn bị tung ra chiếc máy tính bảng đầu tiên, đây là thiết kế của máy. iPhone 13 Pro Max màu Sunset Gold xuất hiện trong concept mới: Sang - xịn - mịn, ', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-1.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-11.jpg', NULL),
(2, 'Redmi 10 Prime sẽ chạy con chip Helio G88, camera 50MP và pin đến 6.000mAh, giá bao nhiêu là hợp lý nhỉ?', '0000-00-00 00:00:00', NULL, 'Mới đây, Manu Kumar Jain xác nhận rằng sản phẩm điện thoại Redmi 10 Prime sẽ được trang bị vi xử lý Helio G88 giống như Redmi 10. Ngoài ra, người này cũng cho biết rằng điện thoại mới này sẽ là một bản nâng cấp đáng kể so với Redmi 9 Prime và 9 Power năm ', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-2.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-22.jpg', NULL),
(3, 'Xiaomi Mi 12 và Mi 12 Ultra sẽ có camera khủng lên đến 200MP, cùng bộ vi xử lý Snapdragon 898 chưa ra mắt\n', '0000-00-00 00:00:00', NULL, 'Hồi đầu năm, Xiaomi đã ra mắt Mi 11 Ultra - flagship sở hữu cảm biến chính 50 MP và hai cảm biến camera 48 MP hỗ trợ chụp tele và siêu rộng. Tin đồn về dòng Mi 12 đã bắt đầu xuất hiện, mới nhất, một số chi tiết về cấu hình camera của Mi 12 và Mi 12 Ultra ', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-3.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-33.jpg', NULL),
(4, 'Redmi Note 10 5G cũ giá rẻ không tưởng ở Thế Giới Di Động, chỉ từ 3.91 triệu là đã có thể sở hữu, tranh thủ ngay kẻo hết', '0000-00-00 00:00:00', NULL, 'Xiaomi Redmi Note 10 5G cũ giá rẻ thế này ở Thế Giới Di Động, không biết các Mi Fans đã biết chưa? Chỉ từ 3.91 triệu đồng, là các bạn đã có thể sắm một chiếc điện thoại cực kì HOT của Xiaomi. Mặc dù rằng là máy cũ nhưng chất lượng không hề thua kém hàng m', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-4.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-44.jpg', NULL),
(5, 'Apple Watch đạt 100 triệu người dùng trên toàn cầu, dẫn đầu thị trường smartwatch trong quý 2/2021, sao lại hút khách vậy?\r\nNguyễn Hải Duy 18 giờ trước', '0000-00-00 00:00:00', NULL, 'Theo một báo cáo của Counterpoint Research cho biết rằng hiện Apple Watch đang đầu về thị trường đồng hồ thông minh ở quý 2/2021. Trong đó những sản phẩm gồm: Apple Watch Series 6, Apple Watch SE và Apple Watch Series 3 nằm trong 5 thiết bị được bán nhiều', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-5.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-55.jpg', NULL),
(6, 'Kỳ vọng iPhone 13 Concept: Thiết kế xuất hiện màn hình phụ phía sau mặt lưng, tai thỏ nhỏ lại, loại bỏ luôn cổng sạc, có màu Sunset Gold bắt mắt!', '0000-00-00 00:00:00', NULL, 'Là một iFan thì cứ mỗi năm mình lại đặt kỳ vọng vào thế hệ iPhone mới từ tính năng mới, thiết kế mới, nhưng khi iPhone 12 đã chính thức ra mắt lại không có những điểm mà chúng ta đã mong chờ bấy lâu. Thế nên chúng ta có thể kỳ vọng mẫu điện thoại mới nhất', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-6.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-66.jpg', NULL),
(7, 'Hiếu PC cảnh báo người chơi Play Together cẩn trọng với những trang web nạp tiền, có thể bị lừa mất tài khoản và cả tài sản', '0000-00-00 00:00:00', NULL, 'Play Together đang là tựa game được khá nhiều người lựa chọn để giải trí trong mùa dịch. Biết được độ hot của game, nhiều thành phần xấu đã tạo ra những trang web giả để lừa đảo lấy tài khoản và tiền của người chơi. Trên Facebook chính thức của mình, Hiếu', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-7.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-77.jpg', NULL),
(8, 'Muốn sắm laptop Gaming nhưng chưa biết mẫu nào thì tốt? Xem liền 5 mẫu laptop MSI Gaming đáng sắm này, giá hời nên chốt ngay', '0000-00-00 00:00:00', NULL, 'Nếu bạn đang có ý định sắm sửa một chiếc laptop Gaming với cấu hình mạnh mẽ nhưng chưa biết mẫu nào tốt cùng giá tiền hợp lý, vậy thì hãy cùng mình xem qua ngay bài viết này để được gợi ý 5 mẫu laptop MSI Gaming đi cùng nhiều mức giá khuyến mãi khác nhau ', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-8.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-88.jpg', NULL),
(9, 'Trên tay đánh giá nhanh Vivo Y21: Giá từ 4.3 triệu* có chip Helio P35, thiết kế mặt lưng hình vuông độc đáo cùng pin 5.000 mAh', '0000-00-00 00:00:00', NULL, 'Như vậy, Vivo đã ra mắt Vivo Y21 giá từ 4.3 triệu đồng (giá tại thị trường Ấn Độ) với nhiều ưu điểm. Bên cạnh thiết kế cực kì nổi bật với mặt lưng họa tiết vân kim cương bóng bẩy, Vivo Y21 cấu hình đủ dùng với chip Helio P35, RAM là 4 GB cùng viên pin 5.0', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-9.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-99.jpg', NULL),
(10, 'Deal tốt chờ gì không chốt: Điện thoại Realme sale hấp dẫn khó chê, có mức giá đáng sắm vào cuối tuần này', '0000-00-00 00:00:00', NULL, 'Chỉ có trong cuối tuần này, smartphone nhà Realme được giảm giá hấp dẫn lên đến 300.000 đồng. Máy xịn, giá lại đang rất hạt dẻ, siêu đáng sắm luôn bạn ơi. Cơ hội chỉ có vài ngày, nhanh tay chốt đơn liền nhé.\r\nThời gian khuyến mãi từ 28/8/2021 - 29/08/2021', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-10.jpg', 'http://localhost/PHP%20Master/project/ismart.com/MVC/public/images/blog/blog-101.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `permission`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hưng Bành', 1, 'hlmthihi@gmail.com', NULL, '$2y$10$tAt6k2h73.ijJNDgK4a57udbQn.gnLxITD6WsctA0v37ZM.6QILOS', NULL, '2021-11-15 04:46:22', '2021-11-22 00:28:49', NULL),
(2, 'Hưng Bành 1', 2, 'hlmthihi2@gmail.com', NULL, '$2y$10$wetp4Ajn9cT2Mov9aUd.O.z.gQc4tvFYiq6Zx3j3bWVPPUp6mgjtm', NULL, '2021-11-15 04:48:10', '2021-11-15 04:49:31', NULL),
(3, 'Hưng Bành Guest', 3, 'hlmthihi3@gmail.com', NULL, '$2y$10$M4TpBQlslQWyGQNOuvBR/e5kaWndNesAweTp/8e8TRzP8NAtdhqsK', NULL, '2021-11-17 20:37:53', '2021-11-17 20:39:02', NULL),
(4, 'Hưng gà', 4, 'hlmthihi4@gmail.com', NULL, '$2y$10$ubUQ5Hl9KE27QC8IJ7a3ROCPfhVJ2UKEwbie.ktqzDrGBLu7Eo56S', NULL, '2021-11-17 23:40:47', '2021-11-17 23:41:40', NULL),
(5, 'Hưng LÀ GÀ', 5, 'hlmthihi5@gmail.com', NULL, '$2y$10$3qyXRckA0tg/1cyYusTahe3NqFT.jpNi3R6LEb2xNxgNxK2aZSIiG', NULL, '2021-11-17 23:44:30', '2021-11-17 23:44:30', NULL),
(6, 'Hưng HA', 6, 'hlmthihi6@gmail.com', NULL, '$2y$10$PcNsRAN6ekNWzj/TlNcLsucoj7f6MmChqrOFRfKbbJ2jS4/pyiJWq', NULL, '2021-11-17 23:49:37', '2021-11-17 23:49:37', NULL),
(39, 'Hưng bành 7', 7, 'hlmthihi7@gmail.com', NULL, '$2y$10$zhj38z4rEUpvPbz.wRBb5ulqsqkCvx/qLqtPD4pnbJsYoW0njPVuO', NULL, '2021-11-18 19:30:31', '2021-11-18 19:30:31', NULL),
(40, 'AdminReview', 48, 'adminreview@gmail.com', NULL, '$2y$10$6vFX1uNG.Jg3yw5I9GLAJeU000DYYM0kiyYXLVI0Vi6X8muKc7p46', NULL, '2021-11-18 19:39:47', '2021-11-18 19:39:47', NULL),
(41, 'Hung', 1, 'admin@gmail.com', NULL, '$2y$10$fPBdtjU/kbt7/VOJI1Jknu5D3JBlr3pTeBdBkAeWfCGpjzDoOHt9K', NULL, '2023-06-29 02:46:37', '2023-06-29 02:46:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `zoom_products`
--

CREATE TABLE `zoom_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t3501` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t501` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t3502` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t502` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t3503` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t503` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t3504` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t504` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t3505` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t505` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `zoom_products`
--

INSERT INTO `zoom_products` (`id`, `cat_id`, `product_name`, `cat_title`, `thumb1`, `thumb2`, `thumb3`, `thumb4`, `thumb5`, `t3501`, `t501`, `t3502`, `t502`, `t3503`, `t503`, `t3504`, `t504`, `t3505`, `t505`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone', 'Iphone', 'zoom/thumb-1-iphone700.png', 'zoom/thumb-2-iphone700.jpg', 'zoom/thumb-3-iphone700.png', 'zoom/thumb-4-iphone700.png', 'zoom/thumb-5-iphone700.png', 'zoom/thumb-1-iphone350.png', 'zoom/thumb-1-iphone50.png', 'zoom/thumb-2-iphone700350.jpg', 'zoom/thumb-2-iphone50.jpg', 'zoom/thumb-3-iphone700350.png', 'zoom/thumb-3-iphone50.png', 'zoom/thumb-4-iphone700350.png', 'zoom/thumb-4-iphone50.png', 'zoom/thumb-5-iphone700350.png', 'zoom/thumb-5-iphone50.png', NULL, NULL),
(2, 2, 'SamSung', 'SamSung', 'zoom/ss-1700.png', 'zoom/ss-2700.jpg', 'zoom/ss-3700.png', 'zoom/ss-4700.jpg', 'zoom/ss-57700.png', 'zoom/ss-1350.png', 'zoom/ss-150.png', 'zoom/ss-2350.jpg', 'zoom/ss-250.jpg', 'zoom/ss-3350.png', 'zoom/ss-350.png', 'zoom/ss-4350.jpg', 'zoom/ss-450.jpg', 'zoom/ss-5350.png', 'zoom/ss-550.png', NULL, NULL),
(3, 4, 'Airpods', 'Airpods', 'zoom/tainghe-1700.png', 'zoom/tainghe-2700.jpg', 'zoom/tainghe-3700.jpg', 'zoom/tainghe-4700.jpg', 'zoom/tainghe-5700.jpg', 'zoom/tainghe-1350.png', 'zoom/tainghe-150.png', 'zoom/tainghe-2350.jpg', 'zoom/tainghe-250.jpg', 'zoom/tainghe-3700350.jpg', 'zoom/tainghe-350.jpg', 'zoom/tainghe-4700350.jpg', 'zoom/tainghe-450.jpg', 'zoom/tainghe-5700350.jpg', 'zoom/tainghe-550.jpg', NULL, NULL),
(4, 3, 'Macbook', 'Laptop', 'zoom/mac-1-700.png', 'zoom/mac-2-700.png', 'zoom/mac-3700.jpg', 'zoom/mac-4700.jpg', 'zoom/mac-5700.jpg', 'zoom/mac-1-350.png', 'zoom/mac-1-50.png', 'zoom/mac-2-350.png', 'zoom/mac-2-50.png', 'zoom/mac-3350.jpg', 'zoom/mac-350.jpg', 'zoom/mac-4350.jpg', 'zoom/mac-450.jpg', 'zoom/mac-5350.jpg', 'zoom/mac-550.jpg', NULL, NULL),
(5, 5, 'AppleWatch\n', 'AppleWatch', 'zoom/watch-1700.png', 'zoom/watch-2700.png', 'zoom/watch-3700.png', 'zoom/watch-4700.png', 'zoom/watch-5700.png', 'zoom/watch-1700350.png', 'zoom/watch-150.png', 'zoom/watch-2700350.png', 'zoom/watch-250.png', 'zoom/watch-3700350.png', 'zoom/watch-350.png', 'zoom/watch-4700350.png', 'zoom/watch-450.png', 'zoom/watch-5700350.png', 'zoom/watch-550.png', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cat_titles`
--
ALTER TABLE `cat_titles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_orders_ibfk_1` (`order_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info_products`
--
ALTER TABLE `info_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info_watch`
--
ALTER TABLE `info_watch`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_roles`
--
ALTER TABLE `list_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_role_role`
--
ALTER TABLE `list_role_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `list_role_id` (`list_role_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mix_products`
--
ALTER TABLE `mix_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts_folders`
--
ALTER TABLE `posts_folders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_folders`
--
ALTER TABLE `products_folders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_thumbs`
--
ALTER TABLE `product_thumbs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `show_products`
--
ALTER TABLE `show_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `permission` (`permission`);

--
-- Chỉ mục cho bảng `zoom_products`
--
ALTER TABLE `zoom_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cat_titles`
--
ALTER TABLE `cat_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `info_products`
--
ALTER TABLE `info_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `info_watch`
--
ALTER TABLE `info_watch`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `list_roles`
--
ALTER TABLE `list_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `list_role_role`
--
ALTER TABLE `list_role_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `mix_products`
--
ALTER TABLE `mix_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `posts_folders`
--
ALTER TABLE `posts_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `products_folders`
--
ALTER TABLE `products_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product_thumbs`
--
ALTER TABLE `product_thumbs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `search`
--
ALTER TABLE `search`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `show_products`
--
ALTER TABLE `show_products`
  MODIFY `id` bigint(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `zoom_products`
--
ALTER TABLE `zoom_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD CONSTRAINT `detail_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `list_role_role`
--
ALTER TABLE `list_role_role`
  ADD CONSTRAINT `list_role_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `list_role_role_ibfk_2` FOREIGN KEY (`list_role_id`) REFERENCES `list_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`permission`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
