-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2022 pada 06.36
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `image`) VALUES
(2, NULL, 3, 'Semak', 'semak', '2022-01-19 07:32:50', '2022-01-19 07:37:59', 'categories\\January2022\\W0d6OOarznCrHu8zFpvf.jpg'),
(3, NULL, 2, 'Rumput', 'rumput', '2022-01-19 07:33:58', '2022-01-19 07:37:53', 'categories\\January2022\\w4IymQLiFDqmTkv1p0L3.jpg'),
(4, NULL, 4, 'Serat', 'serat', '2022-01-19 07:35:18', '2022-01-19 07:38:17', 'categories\\January2022\\833EkO3gy5RlFTc82MUK.jpg'),
(5, NULL, 5, 'Bunga', 'bunga', '2022-01-19 07:39:00', '2022-01-19 07:39:00', 'categories\\January2022\\1PPXhqvquMZOTz67bGGt.jpg'),
(6, NULL, 1, 'Hiasan', 'hiasan', '2022-01-19 07:39:31', '2022-01-19 07:39:31', 'categories\\January2022\\kYWciiabETlooVo0Y2Ge.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rupiah Indonesia', 'idn', 'IDR', 'active', '2022-01-19 08:52:31', '2022-01-19 08:52:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `billing_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zip`, `created_at`, `updated_at`, `billing_country`, `shipping_country`) VALUES
(1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19 09:11:16', '2022-01-19 09:11:16', NULL, NULL),
(2, 7, 'Bing Chilling', 'Sheeeesh', 'Shoooosh', '25121223', NULL, NULL, NULL, NULL, '2022-01-19 09:11:24', '2022-01-20 05:18:01', 'Canada', NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-19 09:11:30', '2022-01-19 09:11:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 7),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 4),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 6),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 7),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"}]}', 8),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:posts,slug\"}}', 9),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 12),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 15),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 16),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 5, 'post_belongsto_category_relationship', 'relationship', 'Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(174, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(175, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(176, 16, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(177, 16, 'rating', 'number', 'Rating', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|numeric|min:0|max:5\"}}', 4),
(178, 16, 'designation', 'text', 'Designation', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(179, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(180, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(181, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(182, 16, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"inactive\":\"inactive\"}}', 7),
(189, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(190, 18, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(191, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(192, 18, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(193, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(194, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(201, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(202, 20, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(203, 20, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:products,slug\"}}', 3),
(204, 20, 'category_id', 'text', 'Category Id', 0, 0, 1, 1, 1, 1, '{}', 4),
(205, 20, 'small_description', 'text_area', 'Small Description', 0, 0, 1, 1, 1, 1, '{}', 6),
(206, 20, 'large_description', 'rich_text_box', 'Large Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(207, 20, 'regular_price', 'number', 'Regular Price', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 8),
(208, 20, 'discounted_price', 'number', 'Discounted Price', 0, 1, 1, 1, 1, 1, '{\"default\":0}', 9),
(209, 20, 'sku', 'text', 'Sku', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:products,sku\"}}', 10),
(210, 20, 'quantity', 'number', 'Quantity', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|integer\"}}', 11),
(211, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 15),
(212, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(213, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(214, 21, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(215, 21, 'description', 'text', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(216, 21, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"fixed\",\"percentage\":\"percentage\"}}', 4),
(217, 21, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:coupons,code\"}}', 5),
(218, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(219, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(220, 21, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"active\",\"options\":{\"active\":\"active\",\"inactive\":\"inactive\"}}', 7),
(221, 21, 'amount', 'number', 'Amount', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(222, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(223, 22, 'user_id', 'text', 'User Id', 0, 0, 1, 1, 1, 1, '{}', 3),
(224, 22, 'invoice_id', 'text', 'Invoice Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:orders,invoice_id\"}}', 4),
(232, 22, 'shipping_address', 'text', 'Shipping Address', 0, 1, 1, 1, 1, 1, '{}', 14),
(233, 22, 'shipping_city', 'text', 'Shipping City', 0, 0, 1, 1, 1, 1, '{}', 15),
(234, 22, 'shipping_state', 'text', 'Shipping State', 0, 0, 1, 1, 1, 1, '{}', 16),
(235, 22, 'shipping_zip', 'text', 'Shipping Zip', 0, 0, 1, 1, 1, 1, '{}', 17),
(236, 22, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"processing\",\"options\":{\"processing\":\"processing\",\"complete\":\"complete\",\"canceled\":\"canceled\",\"refunded\":\"refunded\"}}', 18),
(237, 22, 'ordered_items', 'text', 'Ordered Items', 0, 0, 1, 1, 1, 1, '{}', 19),
(238, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 26),
(239, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 27),
(240, 22, 'billing_name', 'text', 'Billing Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(241, 22, 'billing_email', 'text', 'Billing Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(242, 22, 'billing_phone', 'text', 'Billing Phone', 0, 1, 1, 1, 1, 1, '{}', 7),
(243, 22, 'billing_address', 'text', 'Billing Address', 0, 1, 1, 1, 1, 1, '{}', 9),
(244, 22, 'billing_city', 'text', 'Billing City', 0, 0, 1, 1, 1, 1, '{}', 10),
(245, 22, 'billing_state', 'text', 'Billing State', 0, 0, 1, 1, 1, 1, '{}', 11),
(246, 22, 'billing_zip', 'text', 'Billing Zip', 0, 0, 1, 1, 1, 1, '{}', 12),
(247, 22, 'payment_method', 'select_dropdown', 'Payment Method', 0, 0, 1, 1, 1, 1, '{\"default\":\"cod\",\"options\":{\"cod\":\"cod\",\"stripe\":\"stripe\",\"paypal\":\"paypal\",\"manual\":\"manual\"}}', 24),
(248, 22, 'pp_invoice_id', 'text', 'Payment Processor Id', 0, 0, 1, 1, 1, 1, '{}', 25),
(250, 22, 'total_amount', 'number', 'Total Amount', 0, 0, 1, 1, 1, 1, '{}', 23),
(251, 22, 'conditions', 'text', 'Conditions', 0, 0, 1, 1, 1, 1, '{}', 22),
(252, 22, 'order_belongsto_user_relationship', 'relationship', 'User', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(253, 22, 'discount', 'number', 'Discount', 0, 0, 1, 1, 1, 1, '{}', 20),
(254, 22, 'discounted_subtotal', 'number', 'Discounted Subtotal', 0, 0, 1, 1, 1, 1, '{}', 21),
(255, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(256, 23, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(257, 23, 'billing_address', 'text', 'Billing Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(258, 23, 'billing_city', 'text', 'Billing City', 0, 0, 1, 1, 1, 1, '{}', 6),
(259, 23, 'billing_state', 'text', 'Billing State', 0, 0, 1, 1, 1, 1, '{}', 7),
(260, 23, 'billing_zip', 'text', 'Billing Zip', 0, 0, 1, 1, 1, 1, '{}', 8),
(261, 23, 'shipping_address', 'text', 'Shipping Address', 0, 1, 1, 1, 1, 1, '{}', 10),
(262, 23, 'shipping_city', 'text', 'Shipping City', 0, 0, 1, 1, 1, 1, '{}', 11),
(263, 23, 'shipping_state', 'text', 'Shipping State', 0, 0, 1, 1, 1, 1, '{}', 12),
(264, 23, 'shipping_zip', 'text', 'Shipping Zip', 0, 0, 1, 1, 1, 1, '{}', 13),
(265, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(266, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(267, 23, 'customer_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(268, 20, 'primary_image', 'image', 'Primary Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(269, 20, 'other_image', 'multiple_images', 'Other Image', 0, 0, 1, 1, 1, 1, '{}', 13),
(270, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(271, 24, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(272, 24, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(273, 24, 'rating', 'number', 'Rating', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(274, 24, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 7),
(275, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(276, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(277, 24, 'review_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(278, 24, 'review_belongsto_product_relationship', 'relationship', 'Product', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(279, 20, 'product_belongsto_category_relationship', 'relationship', 'Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(280, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(281, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(282, 25, 'code', 'text', 'Code', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(283, 25, 'symbol', 'text', 'Symbol', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(284, 25, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"none\",\"null\":\"\",\"options\":{\"none\":\"none\",\"active\":\"active\"}}', 5),
(285, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(286, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(287, 23, 'billing_country', 'text', 'Billing Country', 0, 0, 1, 1, 1, 1, '{}', 4),
(288, 23, 'shipping_country', 'text', 'Shipping Country', 0, 0, 1, 1, 1, 1, '{}', 9),
(289, 22, 'billing_country', 'text', 'Billing Country', 0, 0, 1, 1, 1, 1, '{}', 8),
(290, 22, 'shipping_country', 'text', 'Shipping Country', 0, 0, 1, 1, 1, 1, '{}', 13),
(291, 4, 'image', 'image', 'Image', 0, 0, 1, 1, 1, 1, '{}', 6),
(292, 20, 'featured', 'checkbox', 'Featured', 0, 0, 1, 1, 1, 1, '{}', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-04-28 02:48:41', '2020-04-28 02:48:41'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-04-28 02:48:41', '2020-04-28 02:48:41'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-04-28 02:48:41', '2020-04-28 02:48:41'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-04-28 02:48:48', '2020-07-26 00:53:27'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-04-28 02:48:49', '2020-05-03 07:37:43'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(16, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-star', 'App\\Testimonial', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-18 08:28:07', '2020-06-20 22:15:50'),
(18, 'members', 'members', 'Member', 'Members', 'voyager-people', 'App\\Member', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\"}', '2020-06-18 08:40:58', '2020-06-18 08:40:58'),
(20, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-06-24 09:19:26', '2020-07-26 00:54:05'),
(21, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-06-26 01:53:11', '2020-06-26 02:00:11'),
(22, 'orders', 'orders', 'Order', 'Orders', 'voyager-bag', 'App\\Order', NULL, 'App\\Http\\Controllers\\Voyager\\OrdersController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"invoice_id\",\"scope\":null}', '2020-06-27 01:37:04', '2020-07-25 23:57:23'),
(23, 'customers', 'customers', 'Customer', 'Customers', 'voyager-people', 'App\\Customer', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-29 22:29:08', '2020-07-25 23:56:15'),
(24, 'reviews', 'reviews', 'Review', 'Reviews', 'voyager-star', 'App\\Review', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"product_id\",\"scope\":null}', '2020-07-01 03:43:56', '2020-07-01 03:48:21'),
(25, 'currencies', 'currencies', 'Currency', 'Currencies', 'voyager-credit-cards', 'App\\Currency', NULL, 'App\\Http\\Controllers\\Voyager\\CurrencyController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-07-01 08:55:45', '2020-07-02 03:02:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `name`, `image`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Zilong', 'members\\January2022\\TP7DWzsfjM3AHaXBZZod.jpg', 'Heroes never fade', '2022-01-19 09:14:19', '2022-01-19 09:14:19'),
(2, 'Eudora', 'members\\January2022\\6VaAHgemRrxCGPm6AmoL.png', 'Gas mabar', '2022-01-19 09:15:28', '2022-01-19 09:15:28'),
(3, 'Alucard', 'members\\January2022\\354Xzd1wiQQwa0LE0TCC.png', 'Jaga buff mu boss', '2022-01-19 09:16:31', '2022-01-19 09:16:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-28 02:48:42', '2020-04-28 02:48:42'),
(2, 'header_menu', '2020-05-01 04:23:13', '2020-05-01 04:23:13'),
(3, 'footer_menu', '2020-05-01 04:23:26', '2020-05-01 04:23:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2020-04-28 02:48:42', '2020-07-25 05:47:11', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', '#000000', NULL, 4, '2020-04-28 02:48:42', '2020-06-20 08:38:37', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-04-28 02:48:42', '2020-04-28 02:48:42', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-04-28 02:48:42', '2020-04-28 02:48:42', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 18, '2020-04-28 02:48:42', '2020-07-25 08:38:56', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-04-28 02:48:42', '2020-05-03 08:34:55', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-04-28 02:48:42', '2020-05-03 08:34:55', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-04-28 02:48:42', '2020-05-03 08:34:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-04-28 02:48:42', '2020-05-03 08:34:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 17, '2020-04-28 02:48:42', '2020-07-25 08:38:56', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2020-04-28 02:48:48', '2020-07-05 00:03:45', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2020-04-28 02:48:49', '2020-07-05 00:03:44', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2020-04-28 02:48:50', '2020-07-05 00:03:44', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-04-28 02:48:52', '2020-05-03 08:34:55', 'voyager.hooks', NULL),
(18, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2020-05-01 04:27:01', '2020-05-01 04:31:42', NULL, ''),
(19, 2, 'News', '/posts', '_self', NULL, '#000000', NULL, 6, '2020-05-01 04:28:27', '2020-07-05 00:09:21', NULL, ''),
(22, 2, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 7, '2020-05-02 04:26:09', '2020-07-05 00:09:21', NULL, ''),
(23, 3, 'Privacy Policy', '/page/privacy-policy', '_self', NULL, '#000000', NULL, 1, '2020-05-03 03:44:22', '2020-06-20 09:00:25', NULL, ''),
(24, 3, 'Terms & Condition', '/page/terms-condition', '_self', NULL, '#000000', NULL, 2, '2020-05-03 03:45:11', '2020-06-20 09:00:25', NULL, ''),
(25, 3, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 4, '2020-05-03 03:47:16', '2020-06-20 09:00:25', NULL, ''),
(33, 1, 'Testimonials', '', '_self', 'voyager-star', NULL, NULL, 12, '2020-06-18 08:28:07', '2020-07-25 08:39:09', 'voyager.testimonials.index', NULL),
(35, 2, 'About', '/about', '_self', NULL, '#000000', NULL, 5, '2020-06-18 08:32:03', '2020-07-05 00:09:21', NULL, ''),
(37, 1, 'Members', '', '_self', 'voyager-people', NULL, NULL, 13, '2020-06-18 08:40:58', '2020-07-25 08:39:09', 'voyager.members.index', NULL),
(39, 3, 'Terms of Service', '#', '_self', NULL, '#000000', NULL, 3, '2020-06-20 09:00:21', '2020-06-20 09:00:25', NULL, ''),
(40, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 8, '2020-06-24 09:19:27', '2020-07-25 08:38:55', 'voyager.products.index', NULL),
(41, 1, 'Coupons', '', '_self', 'voyager-dollar', NULL, NULL, 11, '2020-06-26 01:53:11', '2020-07-25 08:39:09', 'voyager.coupons.index', NULL),
(42, 1, 'Orders', '', '_self', 'voyager-bag', '#000000', NULL, 9, '2020-06-27 01:37:05', '2020-07-25 08:38:59', 'voyager.orders.index', 'null'),
(43, 1, 'Customers', '', '_self', 'voyager-people', NULL, NULL, 10, '2020-06-29 22:29:08', '2020-07-25 08:39:09', 'voyager.customers.index', NULL),
(44, 1, 'Reviews', '', '_self', 'voyager-star', NULL, NULL, 15, '2020-07-01 03:43:57', '2020-07-25 08:38:56', 'voyager.reviews.index', NULL),
(45, 1, 'Currencies', '', '_self', 'voyager-credit-cards', NULL, NULL, 16, '2020-07-01 08:55:45', '2020-07-25 08:38:56', 'voyager.currencies.index', NULL),
(46, 2, 'Shop', '/shop', '_self', NULL, '#000000', NULL, 4, '2020-07-05 00:09:14', '2020-07-05 00:09:21', NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_05_19_173453_create_menu_table', 1),
(8, '2016_10_21_190000_create_roles_table', 1),
(9, '2016_10_21_190000_create_settings_table', 1),
(10, '2016_11_30_135954_create_permission_table', 1),
(11, '2016_11_30_141208_create_permission_role_table', 1),
(12, '2016_12_26_201236_data_types__add__server_side', 1),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(14, '2017_01_14_005015_create_translations_table', 1),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(17, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(18, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(19, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(20, '2017_08_05_000000_add_group_to_settings_table', 1),
(21, '2017_11_26_013050_add_user_role_relationship', 1),
(22, '2017_11_26_015000_create_user_roles_table', 1),
(23, '2018_03_11_000000_add_user_settings', 1),
(24, '2018_03_14_000000_add_details_to_data_types_table', 1),
(25, '2018_03_16_000000_make_settings_value_nullable', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2020_06_21_043650_create_brands_table', 1),
(28, '2020_06_21_043650_create_members_table', 1),
(29, '2020_06_21_043650_create_testimonials_table', 1),
(30, '2020_07_05_081839_create_coupons_table', 1),
(31, '2020_07_05_081839_create_currencies_table', 1),
(32, '2020_07_05_081839_create_reviews_table', 1),
(33, '2020_07_26_090339_create_categories_table', 1),
(34, '2020_07_26_090339_create_customers_table', 1),
(35, '2020_07_26_090339_create_orders_table', 1),
(36, '2020_07_26_090339_create_products_table', 1),
(37, '2020_07_26_090341_add_foreign_keys_to_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `invoice_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordered_items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pp_invoice_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `conditions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discounted_subtotal` double DEFAULT NULL,
  `billing_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zip`, `status`, `ordered_items`, `created_at`, `updated_at`, `payment_method`, `pp_invoice_id`, `total_amount`, `conditions`, `discount`, `discounted_subtotal`, `billing_country`, `shipping_country`) VALUES
(1, 2, '0001', 'Raafi Asta', 'raafiasta@gmail.com', '0896969696', 'Kaerin\'ah, Teyvat', 'WEAW', 'dsadas', '25173', NULL, NULL, NULL, NULL, 'processing', 'TzozMjoiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7aToxO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjE7czo0OiJuYW1lIjtzOjE4OiJBbmdncmVrIE1lcmFoIE11ZGEiO3M6NToicHJpY2UiO2Q6Njk0MjA7czo4OiJxdWFudGl0eSI7aToyO3M6MTA6ImF0dHJpYnV0ZXMiO086NDE6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1BdHRyaWJ1dGVDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czoxMDoiY29uZGl0aW9ucyI7YTowOnt9czoxNToiYXNzb2NpYXRlZE1vZGVsIjtzOjExOiJBcHBcUHJvZHVjdCI7fX19fQ==', '2022-01-18 05:43:00', '2022-01-18 06:55:11', 'cod', NULL, 159691, 'Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbkNvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozOiJWQVQiO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6NTp7czo0OiJuYW1lIjtzOjM6IlZBVCI7czo0OiJ0eXBlIjtzOjM6InZhdCI7czo2OiJ0YXJnZXQiO3M6NToidG90YWwiO3M6NToidmFsdWUiO3M6NjoiMTUuMDAlIjtzOjU6Im9yZGVyIjtpOjE7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjIwODI2O31zOjg6IlNoaXBwaW5nIjtPOjMxOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uIjoyOntzOjM3OiIARGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbgBhcmdzIjthOjU6e3M6NDoibmFtZSI7czo4OiJTaGlwcGluZyI7czo0OiJ0eXBlIjtzOjg6InNoaXBwaW5nIjtzOjY6InRhcmdldCI7czo1OiJ0b3RhbCI7czo1OiJ2YWx1ZSI7czo1OiIyNS4wMCI7czo1OiJvcmRlciI7aToyO31zOjE0OiJwYXJzZWRSYXdWYWx1ZSI7ZDoyNTt9fX0=', 0, 138840, 'Christmas Island', NULL),
(2, 6, '0002', 'Anesta', 'anesta@gmail.com', '1252155512515', 'Dimana hayo dimana', 'Dawei', 'Dewai', '244242', NULL, NULL, NULL, NULL, 'refunded', 'TzozMjoiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7aToyO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjI7czo0OiJuYW1lIjtzOjE4OiJBbmdncmVrIE1lcmFoIE11ZGEiO3M6NToicHJpY2UiO2Q6Njk0MjA7czo4OiJxdWFudGl0eSI7czoxOiIxIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6MTA6ImNvbmRpdGlvbnMiO2E6MDp7fXM6MTU6ImFzc29jaWF0ZWRNb2RlbCI7czoxMToiQXBwXFByb2R1Y3QiO319fX0=', '2022-01-19 09:02:00', '2022-01-19 09:10:09', 'cod', NULL, 79858, 'Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbkNvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozOiJWQVQiO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6NTp7czo0OiJuYW1lIjtzOjM6IlZBVCI7czo0OiJ0eXBlIjtzOjM6InZhdCI7czo2OiJ0YXJnZXQiO3M6NToidG90YWwiO3M6NToidmFsdWUiO3M6NjoiMTUuMDAlIjtzOjU6Im9yZGVyIjtpOjE7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjEwNDEzO31zOjg6IlNoaXBwaW5nIjtPOjMxOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uIjoyOntzOjM3OiIARGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbgBhcmdzIjthOjU6e3M6NDoibmFtZSI7czo4OiJTaGlwcGluZyI7czo0OiJ0eXBlIjtzOjg6InNoaXBwaW5nIjtzOjY6InRhcmdldCI7czo1OiJ0b3RhbCI7czo1OiJ2YWx1ZSI7czo1OiIyNS4wMCI7czo1OiJvcmRlciI7aToyO31zOjE0OiJwYXJzZWRSYXdWYWx1ZSI7ZDoyNTt9fX0=', 0, 69420, 'Bermuda', NULL),
(3, 7, '0003', 'Mas Okis', 'masokis@gmail.com', '124124142241', 'Dirumah tetangga', 'Polsdca', 'Hah dimana dimana', '3252352', NULL, NULL, NULL, NULL, 'complete', 'TzozMjoiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6NTp7aTo3O086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjc7czo0OiJuYW1lIjtzOjE1OiJTb25nIG9mIEphbWFpY2EiO3M6NToicHJpY2UiO2Q6Njc4MDAwO3M6ODoicXVhbnRpdHkiO3M6MToiMSI7czoxMDoiYXR0cmlidXRlcyI7Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcSXRlbUF0dHJpYnV0ZUNvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjEwOiJjb25kaXRpb25zIjthOjE6e2k6MDtPOjMxOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uIjoyOntzOjM3OiIARGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbgBhcmdzIjthOjM6e3M6NDoibmFtZSI7czoyNDoiU29uZyBvZiBKYW1haWNhIGRpc2NvdW50IjtzOjQ6InR5cGUiO3M6MTY6InByb2R1Y3QgZGlzY291bnQiO3M6NToidmFsdWUiO3M6NzoiLTExMTAwMCI7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjExMTAwMDt9fXM6MTU6ImFzc29jaWF0ZWRNb2RlbCI7czoxMToiQXBwXFByb2R1Y3QiO319aTo2O086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjY7czo0OiJuYW1lIjtzOjE1OiJEcmFjYWVuYSBHb2xkZW4iO3M6NToicHJpY2UiO2Q6ODAwMDA7czo4OiJxdWFudGl0eSI7czoxOiIxIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6MTA6ImNvbmRpdGlvbnMiO2E6MTp7aTowO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6Mzp7czo0OiJuYW1lIjtzOjI0OiJEcmFjYWVuYSBHb2xkZW4gZGlzY291bnQiO3M6NDoidHlwZSI7czoxNjoicHJvZHVjdCBkaXNjb3VudCI7czo1OiJ2YWx1ZSI7czo1OiItMTAwMCI7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjEwMDA7fX1zOjE1OiJhc3NvY2lhdGVkTW9kZWwiO3M6MTE6IkFwcFxQcm9kdWN0Ijt9fWk6NTtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQ29sbGVjdGlvbiI6Mjp7czo5OiIAKgBjb25maWciO2E6Njp7czoxNDoiZm9ybWF0X251bWJlcnMiO2I6MDtzOjg6ImRlY2ltYWxzIjtpOjA7czo5OiJkZWNfcG9pbnQiO3M6MToiLiI7czoxMzoidGhvdXNhbmRzX3NlcCI7czoxOiIsIjtzOjc6InN0b3JhZ2UiO047czo2OiJldmVudHMiO047fXM6ODoiACoAaXRlbXMiO2E6Nzp7czoyOiJpZCI7aTo1O3M6NDoibmFtZSI7czoxMDoiUGFsZW0gUmVndSI7czo1OiJwcmljZSI7ZDo1MzQwMDA7czo4OiJxdWFudGl0eSI7czoxOiI0IjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6MTA6ImNvbmRpdGlvbnMiO2E6MDp7fXM6MTU6ImFzc29jaWF0ZWRNb2RlbCI7czoxMToiQXBwXFByb2R1Y3QiO319aTozO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjM7czo0OiJuYW1lIjtzOjE0OiJBbmdncmVrIEt1bmluZyI7czo1OiJwcmljZSI7ZDo5OTAwMDtzOjg6InF1YW50aXR5IjtzOjE6IjIiO3M6MTA6ImF0dHJpYnV0ZXMiO086NDE6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1BdHRyaWJ1dGVDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czoxMDoiY29uZGl0aW9ucyI7YToxOntpOjA7TzozMToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbiI6Mjp7czozNzoiAERhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24AYXJncyI7YTozOntzOjQ6Im5hbWUiO3M6MjM6IkFuZ2dyZWsgS3VuaW5nIGRpc2NvdW50IjtzOjQ6InR5cGUiO3M6MTY6InByb2R1Y3QgZGlzY291bnQiO3M6NToidmFsdWUiO3M6NjoiLTMyMDAwIjt9czoxNDoicGFyc2VkUmF3VmFsdWUiO2Q6MzIwMDA7fX1zOjE1OiJhc3NvY2lhdGVkTW9kZWwiO3M6MTE6IkFwcFxQcm9kdWN0Ijt9fWk6NDtPOjMyOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQ29sbGVjdGlvbiI6Mjp7czo5OiIAKgBjb25maWciO2E6Njp7czoxNDoiZm9ybWF0X251bWJlcnMiO2I6MDtzOjg6ImRlY2ltYWxzIjtpOjA7czo5OiJkZWNfcG9pbnQiO3M6MToiLiI7czoxMzoidGhvdXNhbmRzX3NlcCI7czoxOiIsIjtzOjc6InN0b3JhZ2UiO047czo2OiJldmVudHMiO047fXM6ODoiACoAaXRlbXMiO2E6Nzp7czoyOiJpZCI7aTo0O3M6NDoibmFtZSI7czoxMzoiQW5nZ3JlayBCdWxhbiI7czo1OiJwcmljZSI7ZDo1MDAwMDA7czo4OiJxdWFudGl0eSI7czoxOiIyIjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6MTA6ImNvbmRpdGlvbnMiO2E6MTp7aTowO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6Mzp7czo0OiJuYW1lIjtzOjIyOiJBbmdncmVrIEJ1bGFuIGRpc2NvdW50IjtzOjQ6InR5cGUiO3M6MTY6InByb2R1Y3QgZGlzY291bnQiO3M6NToidmFsdWUiO3M6NToiLTEwMDAiO31zOjE0OiJwYXJzZWRSYXdWYWx1ZSI7ZDoxMDAwO319czoxNToiYXNzb2NpYXRlZE1vZGVsIjtzOjExOiJBcHBcUHJvZHVjdCI7fX19fQ==', '2022-01-19 09:06:00', '2022-01-19 09:10:33', 'cod', NULL, 4501125, 'Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbkNvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozOiJWQVQiO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6NTp7czo0OiJuYW1lIjtzOjM6IlZBVCI7czo0OiJ0eXBlIjtzOjM6InZhdCI7czo2OiJ0YXJnZXQiO3M6NToidG90YWwiO3M6NToidmFsdWUiO3M6NjoiMTUuMDAlIjtzOjU6Im9yZGVyIjtpOjE7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjU4NzEwMDt9czo4OiJTaGlwcGluZyI7TzozMToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbiI6Mjp7czozNzoiAERhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24AYXJncyI7YTo1OntzOjQ6Im5hbWUiO3M6ODoiU2hpcHBpbmciO3M6NDoidHlwZSI7czo4OiJzaGlwcGluZyI7czo2OiJ0YXJnZXQiO3M6NToidG90YWwiO3M6NToidmFsdWUiO3M6NToiMjUuMDAiO3M6NToib3JkZXIiO2k6Mjt9czoxNDoicGFyc2VkUmF3VmFsdWUiO2Q6MjU7fX19', 0, 3914000, 'Morocco', NULL),
(4, 8, NULL, 'BANG POI', 'bangbil@gmail.com', '086575674574', 'Dimana hayo', 'GG', 'WER', '133141', NULL, NULL, NULL, NULL, 'processing', 'TzozMjoiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7aTozO086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjM7czo0OiJuYW1lIjtzOjE0OiJBbmdncmVrIEt1bmluZyI7czo1OiJwcmljZSI7ZDo5OTAwMDtzOjg6InF1YW50aXR5IjtzOjE6IjEiO3M6MTA6ImF0dHJpYnV0ZXMiO086NDE6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1BdHRyaWJ1dGVDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czoxMDoiY29uZGl0aW9ucyI7YToxOntpOjA7TzozMToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbiI6Mjp7czozNzoiAERhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24AYXJncyI7YTozOntzOjQ6Im5hbWUiO3M6MjM6IkFuZ2dyZWsgS3VuaW5nIGRpc2NvdW50IjtzOjQ6InR5cGUiO3M6MTY6InByb2R1Y3QgZGlzY291bnQiO3M6NToidmFsdWUiO3M6NjoiLTMyMDAwIjt9czoxNDoicGFyc2VkUmF3VmFsdWUiO2Q6MzIwMDA7fX1zOjE1OiJhc3NvY2lhdGVkTW9kZWwiO3M6MTE6IkFwcFxQcm9kdWN0Ijt9fX19', '2022-01-20 05:07:31', '2022-01-20 05:07:31', 'cod', NULL, 77075, 'Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbkNvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozOiJWQVQiO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6NTp7czo0OiJuYW1lIjtzOjM6IlZBVCI7czo0OiJ0eXBlIjtzOjM6InZhdCI7czo2OiJ0YXJnZXQiO3M6NToidG90YWwiO3M6NToidmFsdWUiO3M6NjoiMTUuMDAlIjtzOjU6Im9yZGVyIjtpOjE7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjEwMDUwO31zOjg6IlNoaXBwaW5nIjtPOjMxOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uIjoyOntzOjM3OiIARGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbgBhcmdzIjthOjU6e3M6NDoibmFtZSI7czo4OiJTaGlwcGluZyI7czo0OiJ0eXBlIjtzOjg6InNoaXBwaW5nIjtzOjY6InRhcmdldCI7czo1OiJ0b3RhbCI7czo1OiJ2YWx1ZSI7czo1OiIyNS4wMCI7czo1OiJvcmRlciI7aToyO31zOjE0OiJwYXJzZWRSYXdWYWx1ZSI7ZDoyNTt9fX0=', 0, 67000, 'Laos', NULL),
(5, 7, NULL, 'Mas Okis', 'masokis@gmail.com', '5555555555555555', 'Bing Chilling', 'Sheeeesh', 'Shoooosh', '25121223', NULL, NULL, NULL, NULL, 'processing', 'TzozMjoiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6MTp7aTo2O086MzI6IkRhcnJ5bGRlY29kZVxDYXJ0XEl0ZW1Db2xsZWN0aW9uIjoyOntzOjk6IgAqAGNvbmZpZyI7YTo2OntzOjE0OiJmb3JtYXRfbnVtYmVycyI7YjowO3M6ODoiZGVjaW1hbHMiO2k6MDtzOjk6ImRlY19wb2ludCI7czoxOiIuIjtzOjEzOiJ0aG91c2FuZHNfc2VwIjtzOjE6IiwiO3M6Nzoic3RvcmFnZSI7TjtzOjY6ImV2ZW50cyI7Tjt9czo4OiIAKgBpdGVtcyI7YTo3OntzOjI6ImlkIjtpOjY7czo0OiJuYW1lIjtzOjE1OiJEcmFjYWVuYSBHb2xkZW4iO3M6NToicHJpY2UiO2Q6ODAwMDA7czo4OiJxdWFudGl0eSI7czoxOiI1IjtzOjEwOiJhdHRyaWJ1dGVzIjtPOjQxOiJEYXJyeWxkZWNvZGVcQ2FydFxJdGVtQXR0cmlidXRlQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6MTA6ImNvbmRpdGlvbnMiO2E6MTp7aTowO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6Mzp7czo0OiJuYW1lIjtzOjI0OiJEcmFjYWVuYSBHb2xkZW4gZGlzY291bnQiO3M6NDoidHlwZSI7czoxNjoicHJvZHVjdCBkaXNjb3VudCI7czo1OiJ2YWx1ZSI7czo1OiItMTAwMCI7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjEwMDA7fX1zOjE1OiJhc3NvY2lhdGVkTW9kZWwiO3M6MTE6IkFwcFxQcm9kdWN0Ijt9fX19', '2022-01-20 05:20:18', '2022-01-20 05:20:18', 'cod', NULL, 454275, 'Tzo0MToiRGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbkNvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozOiJWQVQiO086MzE6IkRhcnJ5bGRlY29kZVxDYXJ0XENhcnRDb25kaXRpb24iOjI6e3M6Mzc6IgBEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uAGFyZ3MiO2E6NTp7czo0OiJuYW1lIjtzOjM6IlZBVCI7czo0OiJ0eXBlIjtzOjM6InZhdCI7czo2OiJ0YXJnZXQiO3M6NToidG90YWwiO3M6NToidmFsdWUiO3M6NjoiMTUuMDAlIjtzOjU6Im9yZGVyIjtpOjM7fXM6MTQ6InBhcnNlZFJhd1ZhbHVlIjtkOjU5MjUwO31zOjg6IlNoaXBwaW5nIjtPOjMxOiJEYXJyeWxkZWNvZGVcQ2FydFxDYXJ0Q29uZGl0aW9uIjoyOntzOjM3OiIARGFycnlsZGVjb2RlXENhcnRcQ2FydENvbmRpdGlvbgBhcmdzIjthOjU6e3M6NDoibmFtZSI7czo4OiJTaGlwcGluZyI7czo0OiJ0eXBlIjtzOjg6InNoaXBwaW5nIjtzOjY6InRhcmdldCI7czo1OiJ0b3RhbCI7czo1OiJ2YWx1ZSI7czo1OiIyNS4wMCI7czo1OiJvcmRlciI7aTo0O31zOjE0OiJwYXJzZWRSYXdWYWx1ZSI7ZDoyNTt9fX0=', 0, 395000, 'Canada', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms & Condition', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '<h2>1. Acceptance The Use Of Lorem Ipsum Terms and Conditions</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<h2>2. DETAILS</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<h2>3. LEGAL ADVICE</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<h2>4. CHANGE OF USE</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h2>5. Links to Third Party apps and websites</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 'terms-condition', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but', 'sss,sss,sss', 'ACTIVE', '2020-04-20 00:16:03', '2020-04-20 00:23:03'),
(2, 1, 'Privacy Policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but', '<div>\n<h2>Data we use</h2>\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n</div>\n<div>\n<h2>How we use</h2>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p>&nbsp;</p>\n<div>\n<h2>What we collect</h2>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n</div>', NULL, 'privacy-policy', 'wwww eeee eeee', 'sss,sss,sss', 'ACTIVE', '2020-04-20 00:18:06', '2020-04-20 00:18:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-04-28 02:48:42', '2020-04-28 02:48:42'),
(2, 'browse_bread', NULL, '2020-04-28 02:48:42', '2020-04-28 02:48:42'),
(3, 'browse_database', NULL, '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(4, 'browse_media', NULL, '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(5, 'browse_compass', NULL, '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(6, 'browse_menus', 'menus', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(7, 'read_menus', 'menus', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(8, 'edit_menus', 'menus', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(9, 'add_menus', 'menus', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(10, 'delete_menus', 'menus', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(11, 'browse_roles', 'roles', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(12, 'read_roles', 'roles', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(13, 'edit_roles', 'roles', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(14, 'add_roles', 'roles', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(15, 'delete_roles', 'roles', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(16, 'browse_users', 'users', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(17, 'read_users', 'users', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(18, 'edit_users', 'users', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(19, 'add_users', 'users', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(20, 'delete_users', 'users', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(21, 'browse_settings', 'settings', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(22, 'read_settings', 'settings', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(23, 'edit_settings', 'settings', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(24, 'add_settings', 'settings', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(25, 'delete_settings', 'settings', '2020-04-28 02:48:43', '2020-04-28 02:48:43'),
(26, 'browse_categories', 'categories', '2020-04-28 02:48:48', '2020-04-28 02:48:48'),
(27, 'read_categories', 'categories', '2020-04-28 02:48:48', '2020-04-28 02:48:48'),
(28, 'edit_categories', 'categories', '2020-04-28 02:48:48', '2020-04-28 02:48:48'),
(29, 'add_categories', 'categories', '2020-04-28 02:48:49', '2020-04-28 02:48:49'),
(30, 'delete_categories', 'categories', '2020-04-28 02:48:49', '2020-04-28 02:48:49'),
(31, 'browse_posts', 'posts', '2020-04-28 02:48:49', '2020-04-28 02:48:49'),
(32, 'read_posts', 'posts', '2020-04-28 02:48:49', '2020-04-28 02:48:49'),
(33, 'edit_posts', 'posts', '2020-04-28 02:48:49', '2020-04-28 02:48:49'),
(34, 'add_posts', 'posts', '2020-04-28 02:48:49', '2020-04-28 02:48:49'),
(35, 'delete_posts', 'posts', '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(36, 'browse_pages', 'pages', '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(37, 'read_pages', 'pages', '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(38, 'edit_pages', 'pages', '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(39, 'add_pages', 'pages', '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(40, 'delete_pages', 'pages', '2020-04-28 02:48:50', '2020-04-28 02:48:50'),
(41, 'browse_hooks', NULL, '2020-04-28 02:48:52', '2020-04-28 02:48:52'),
(87, 'browse_testimonials', 'testimonials', '2020-06-18 08:28:07', '2020-06-18 08:28:07'),
(88, 'read_testimonials', 'testimonials', '2020-06-18 08:28:07', '2020-06-18 08:28:07'),
(89, 'edit_testimonials', 'testimonials', '2020-06-18 08:28:07', '2020-06-18 08:28:07'),
(90, 'add_testimonials', 'testimonials', '2020-06-18 08:28:07', '2020-06-18 08:28:07'),
(91, 'delete_testimonials', 'testimonials', '2020-06-18 08:28:07', '2020-06-18 08:28:07'),
(97, 'browse_members', 'members', '2020-06-18 08:40:58', '2020-06-18 08:40:58'),
(98, 'read_members', 'members', '2020-06-18 08:40:58', '2020-06-18 08:40:58'),
(99, 'edit_members', 'members', '2020-06-18 08:40:58', '2020-06-18 08:40:58'),
(100, 'add_members', 'members', '2020-06-18 08:40:58', '2020-06-18 08:40:58'),
(101, 'delete_members', 'members', '2020-06-18 08:40:58', '2020-06-18 08:40:58'),
(107, 'browse_products', 'products', '2020-06-24 09:19:27', '2020-06-24 09:19:27'),
(108, 'read_products', 'products', '2020-06-24 09:19:27', '2020-06-24 09:19:27'),
(109, 'edit_products', 'products', '2020-06-24 09:19:27', '2020-06-24 09:19:27'),
(110, 'add_products', 'products', '2020-06-24 09:19:27', '2020-06-24 09:19:27'),
(111, 'delete_products', 'products', '2020-06-24 09:19:27', '2020-06-24 09:19:27'),
(112, 'browse_coupons', 'coupons', '2020-06-26 01:53:11', '2020-06-26 01:53:11'),
(113, 'read_coupons', 'coupons', '2020-06-26 01:53:11', '2020-06-26 01:53:11'),
(114, 'edit_coupons', 'coupons', '2020-06-26 01:53:11', '2020-06-26 01:53:11'),
(115, 'add_coupons', 'coupons', '2020-06-26 01:53:11', '2020-06-26 01:53:11'),
(116, 'delete_coupons', 'coupons', '2020-06-26 01:53:11', '2020-06-26 01:53:11'),
(117, 'browse_orders', 'orders', '2020-06-27 01:37:05', '2020-06-27 01:37:05'),
(118, 'read_orders', 'orders', '2020-06-27 01:37:05', '2020-06-27 01:37:05'),
(119, 'edit_orders', 'orders', '2020-06-27 01:37:05', '2020-06-27 01:37:05'),
(120, 'add_orders', 'orders', '2020-06-27 01:37:05', '2020-06-27 01:37:05'),
(121, 'delete_orders', 'orders', '2020-06-27 01:37:05', '2020-06-27 01:37:05'),
(122, 'browse_customers', 'customers', '2020-06-29 22:29:08', '2020-06-29 22:29:08'),
(123, 'read_customers', 'customers', '2020-06-29 22:29:08', '2020-06-29 22:29:08'),
(124, 'edit_customers', 'customers', '2020-06-29 22:29:08', '2020-06-29 22:29:08'),
(125, 'add_customers', 'customers', '2020-06-29 22:29:08', '2020-06-29 22:29:08'),
(126, 'delete_customers', 'customers', '2020-06-29 22:29:08', '2020-06-29 22:29:08'),
(127, 'browse_reviews', 'reviews', '2020-07-01 03:43:57', '2020-07-01 03:43:57'),
(128, 'read_reviews', 'reviews', '2020-07-01 03:43:57', '2020-07-01 03:43:57'),
(129, 'edit_reviews', 'reviews', '2020-07-01 03:43:57', '2020-07-01 03:43:57'),
(130, 'add_reviews', 'reviews', '2020-07-01 03:43:57', '2020-07-01 03:43:57'),
(131, 'delete_reviews', 'reviews', '2020-07-01 03:43:57', '2020-07-01 03:43:57'),
(132, 'browse_currencies', 'currencies', '2020-07-01 08:55:45', '2020-07-01 08:55:45'),
(133, 'read_currencies', 'currencies', '2020-07-01 08:55:45', '2020-07-01 08:55:45'),
(134, 'edit_currencies', 'currencies', '2020-07-01 08:55:45', '2020-07-01 08:55:45'),
(135, 'add_currencies', 'currencies', '2020-07-01 08:55:45', '2020-07-01 08:55:45'),
(136, 'delete_currencies', 'currencies', '2020-07-01 08:55:45', '2020-07-01 08:55:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'The top 10 most expensive flowers', NULL, 'From priceless Sri Lankan posies to £3m roses, we\'ve rounded up the most expensive flowers in the world', '<p><img src=\"http://localhost:8000/storage/posts/January2022/kadupul-flower-tatler-21mar18-alamy.jpg\" alt=\"\" width=\"668\" height=\"445\" /></p>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; color: #111111; --color__token-name: colors.consumption.body.standard.subhed; background-color: #f5f5f5;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">The Kadupul flower</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; background-color: #f5f5f5;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">Priceless</em></p>\r\n<p style=\"box-sizing: border-box;\">The Kadupul flower is the most expensive in the world because it has never been bought and is therefore priceless. This elusive little plant is actually a cactus and only grows in Sri Lanka. More commonly known as the &lsquo;ghost flower&rsquo;, it usually blooms only once a year, always at night, and is dead before dawn.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/juliet-rose-tatler-21mar18-alamy.jpg\" alt=\"\" width=\"669\" height=\"446\" /></p>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">David Austin&rsquo;s Juliet rose</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;3m</em></p>\r\n<p style=\"box-sizing: border-box;\">You can buy a Juliet rose for less now, but it&rsquo;s known as the &lsquo;&pound;3m flower&rsquo; because that&rsquo;s the amount it cost rose- breeder David Austin to produce the peach-coloured variety originally. Determined to create a flower in the shape of old garden roses with a beautiful scent, Austin spent 15 years developing the bloom. It debuted at the RHS Chelsea Flower Show in 2006 and was met with worldwide applause.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/rotchschild-orchid-gold-of-kinabalu-tatler-21mar18-rex.jpg\" alt=\"\" width=\"673\" height=\"448\" /></p>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Rothschild&rsquo;s slipper orchid</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;3,500 per plant</em></p>\r\n<p style=\"box-sizing: border-box;\">The Rothschild orchid is more commonly known as the &lsquo;Gold of Kinabalu&rsquo; orchid. Discovered in 1987, it only grows in the Kinabalu National Park in Malaysia and came close to extinction when smugglers ransacked the population. It takes years for one flower to bloom and will set you back a whopping &pound;3,500.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/gardenia-tatler-21mar18-getty.jpg\" alt=\"\" width=\"675\" height=\"450\" /></p>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Gardenia</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;15&ndash;&pound;45, depending on the time of year</em></p>\r\n<p style=\"box-sizing: border-box;\">You can&rsquo;t actually buy gardenias by the stem &ndash; you have to buy the whole plant, which makes it the most expensive flower on the market. A hothouse flower from Italy with a deep and sexy floral scent, it&rsquo;s the perfect perennial to wear in a lapel, and it is Tom Ford&rsquo;s favourite.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/arum-lily-tatler-21mar18-rex.jpg\" alt=\"\" width=\"675\" height=\"1013\" /></p>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Arum lily</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; font-weight: 400;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;10&ndash;&pound;12 per stem</em></p>\r\n<p style=\"box-sizing: border-box;\">The cost of lilies is determined by their strength, height and the number of flowers they produce per stem, and the arum lily comes out on top in all three categories. It was the flower of choice at the Countess of Wessex&rsquo;s wedding, where they had 23ft-tall columns of the beautifully scented creamy-white tubes.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/orchid-tatler-21mar18-rex.jpg\" alt=\"\" width=\"680\" height=\"453\" /></p>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Phalaenopsis orchid</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; font-weight: 400;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;10 per head</em></p>\r\n<p style=\"box-sizing: border-box;\">The phalaenopsis orchid (or \'phal\' to people in the know) became popular among the fashion crowd a few years ago. Notoriously hard to look after and often imported from Thailand or China, it is a statement flower. White is super-chic and hot-pink phals provide a pop of colour.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/stephanotis-tatler-21mar18-alamy.jpg\" alt=\"\" width=\"680\" height=\"453\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Stephanotis</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; font-weight: 400;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;9 per stem</em></p>\r\n<p style=\"box-sizing: border-box;\">Stephanotis is a star-shaped, waxy flower originating from Madagascar and part of the jasmine family. It&rsquo;s expensive because it smells divine and is most keenly desired by brides who want to wear it in their hair.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/english-scented-rose-tatler-21mar18-rex.jpg\" alt=\"\" width=\"682\" height=\"454\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">English scented rose</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; font-weight: 400;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;8 per stem</em></p>\r\n<p style=\"box-sizing: border-box;\">You pay for scent when it comes to flowers and the English scented rose is bursting with fragrance. They&rsquo;re delicate and don&rsquo;t last long out of water, but they&rsquo;ve got flat backs and big, blousy petals that make them perfect for lapels.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/hydrangea-tatler-21mar18-rex.jpg\" alt=\"\" width=\"680\" height=\"1021\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Hydrangea</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; font-weight: 400;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;6 per stem</em></p>\r\n<p style=\"box-sizing: border-box;\">From pale blues to sunset pinks, these colourful pom-poms make any bouquet stand out. They&rsquo;re most impressive when clustered together, but they&rsquo;re also great for bulking when it comes to larger arrangements. Don&rsquo;t throw them away with the rest of the bouquet &ndash; they look fabulous dried out.</p>\r\n<p style=\"box-sizing: border-box;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box;\"><img src=\"http://localhost:8000/storage/posts/January2022/peony-tatler-21mar18-rex.jpg\" alt=\"\" width=\"681\" height=\"681\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<h2 class=\"BaseWrap-sc-TURhJ BaseText-fFzBQt GallerySlideCaptionHed-lgowel eTiIvU ijpkf craemy\" style=\"box-sizing: border-box; margin: 1.5rem 0px 0px; --type-token: consumptionEditorial.subhed-aux-primary; font-family: Montserrat, helvetica, sans-serif; font-feature-settings: normal; line-break: auto; line-height: 1.5em; font-size: 16px; overflow-wrap: normal; --color__token-name: colors.consumption.body.standard.subhed;\"><span class=\"BaseWrap-sc-TURhJ GallerySlideCaptionHedText-cZHlsU eTiIvU\" style=\"box-sizing: border-box; margin: 0px;\">Peony</span></h2>\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-family: EBGaramond, helvetica, sans-serif; font-size: 18px; font-weight: 400;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<div class=\"GallerySlideCaptionDekContainer-fzEJAh hyrBTL\" style=\"box-sizing: border-box; color: #000000; font-size: 18px;\" data-testid=\"GallerySlideCaptionDekContainer\">\r\n<div class=\"GallerySlideCaptionDek-diuFsG gssKsA\" style=\"box-sizing: border-box; --type-token: consumptionEditorial.description-embed; font-feature-settings: normal; line-break: auto; line-height: 1.42857em; font-size: 14px; overflow-wrap: normal; margin-top: 1rem; --color__token-name: colors.consumption.body.standard.body; color: #111111;\">\r\n<div style=\"box-sizing: border-box;\">\r\n<p style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">&pound;5&ndash;&pound;6 per stem</em></p>\r\n<p style=\"box-sizing: border-box;\">Peonies symbolise riches and honour and are expensive because they&rsquo;re only available between April and July, ranging from the darkest tones to the palest neutrals in colour. A high-quality head should be about six inches wide. Eternally glamorous, they&rsquo;re the Princess Grace of the flower world.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'posts\\January2022\\v2T0lB20S79k1MgoHJnV.jpg', 'the-top-10-most-expensive-flowers', NULL, NULL, 'PUBLISHED', 1, '2022-01-19 08:05:47', '2022-01-19 08:05:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` double DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `sku` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `primary_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `category_id`, `small_description`, `large_description`, `regular_price`, `discounted_price`, `sku`, `quantity`, `created_at`, `updated_at`, `primary_image`, `other_image`, `featured`) VALUES
(2, 'Anggrek Merah Muda', 'anggrek-merah-muda', 6, 'Ini Anggrek merah muda bos', '<div class=\"u-mrgn-bottom--6 u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important; margin-bottom: 36px !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Spesifikasi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<table class=\"c-information__table\" style=\"border-collapse: collapse; border-spacing: 0px;\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" /><col style=\"box-sizing: border-box; width: 12px;\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Kategori</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #d71149; text-decoration-line: none; cursor: pointer; line-height: inherit; transition: color 0.3s ease-out 0s;\" href=\"https://www.bukalapak.com/c/rumah-tangga/furniture-interior/dekorasi-rumah\" target=\"_blank\" rel=\"noopener noreferer\">Dekorasi Rumah</a></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Berat</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">250 gram</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Asal Barang</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">Lokal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"c-information__description u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Deskripsi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail -shown\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<div class=\"c-information__description-txt\" style=\"box-sizing: border-box;\">Sumara Artificial Bunga Anggrek Ngegat Merah Muda<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />bunga plastik,hiasan daun plastik,daun merambat,dan daun palsu. tanaman sintetis ini cocok untuk dekorasi hiasan pagar anda.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />SATU SET BUNGA DAN POT<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TINGGI 30CM-+<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />DIAMETER 7CM<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />POT PLASTIK</div>\r\n</div>\r\n</div>\r\n</div>', 69420, 0, 'Tidak ada syarat dan ketentuan. Jangan disiram aja, okeh.', 19, '2022-01-19 07:43:00', '2022-01-19 09:02:38', 'products\\January2022\\lMdR6JAWK3CukcfdsLxe.jpg', '[\"products\\\\January2022\\\\PgQZH3zCP1r4jTYv5OBW.png\"]', '1'),
(3, 'Anggrek Kuning', 'anggrek-kuning', 6, 'Ini Anggrek kuning bos bukan merah atau biru', '<div class=\"u-mrgn-bottom--6 u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important; margin-bottom: 36px !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Spesifikasi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<table class=\"c-information__table\" style=\"border-collapse: collapse; border-spacing: 0px;\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" /><col style=\"box-sizing: border-box; width: 12px;\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Kategori</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #d71149; text-decoration-line: none; cursor: pointer; line-height: inherit; transition: color 0.3s ease-out 0s;\" href=\"https://www.bukalapak.com/c/rumah-tangga/furniture-interior/dekorasi-rumah\" target=\"_blank\" rel=\"noopener noreferer\">Dekorasi Rumah</a></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Berat</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">250 gram</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Asal Barang</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">Lokal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"c-information__description u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Deskripsi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail -shown\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<div class=\"c-information__description-txt\" style=\"box-sizing: border-box;\">Sumara Artificial Bunga Anggrek Ngegat Kuning<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />bunga plastik,hiasan daun plastik,daun merambat,dan daun palsu. tanaman sintetis ini cocok untuk dekorasi hiasan pagar anda.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />SATU SET BUNGA DAN POT<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TINGGI 27CM-+<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />DIAMETER 4CM<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />POT PLASTIK</div>\r\n</div>\r\n</div>\r\n</div>', 99000, 67000, 'Jangan diberi bubuk. okeh', 0, '2022-01-19 07:46:00', '2022-01-20 05:07:31', 'products\\January2022\\ecITGecnnncDScQnBa0l.jpg', '[\"products\\\\January2022\\\\67HRXGfQQXC9OLsFAPwc.png\"]', '1'),
(4, 'Anggrek Bulan', 'anggrek-bulan', 6, 'Anggrek bulan tapi tumbuh dibumi. yahahah', '<div class=\"u-mrgn-bottom--6 u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important; margin-bottom: 36px !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Spesifikasi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<table class=\"c-information__table\" style=\"border-collapse: collapse; border-spacing: 0px;\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" /><col style=\"box-sizing: border-box; width: 12px;\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Kategori</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #d71149; text-decoration-line: none; cursor: pointer; line-height: inherit; transition: color 0.3s ease-out 0s;\" href=\"https://www.bukalapak.com/c/rumah-tangga/furniture-interior/dekorasi-rumah\" target=\"_blank\" rel=\"noopener noreferer\">Dekorasi Rumah</a></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Berat</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">250 gram</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Asal Barang</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">Lokal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"c-information__description u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Deskripsi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail -shown\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<div class=\"c-information__description-txt\" style=\"box-sizing: border-box;\">Sumara Artificial Bunga Anggrek Ngegat Bulan<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />bunga plastik,hiasan daun plastik,daun merambat,dan daun palsu. tanaman sintetis ini cocok untuk dekorasi hiasan pagar anda.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />SATU SET BUNGA DAN POT<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TINGGI 30CM-+<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />DIAMETER 7CM<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />POT PLASTIK</div>\r\n</div>\r\n</div>\r\n</div>', 500000, 499000, 'Awas dimaling sama orang', 0, '2022-01-19 07:48:00', '2022-01-19 09:06:03', 'products\\January2022\\OH8Gp3UraZHf7KN7Y8C5.jpg', '[\"products\\\\January2022\\\\zluolezATwPdc1EvtV9h.png\"]', '1'),
(5, 'Palem Regu', 'palem-regu', 2, 'Ini palem regu bos', '<div class=\"u-mrgn-bottom--6 u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important; margin-bottom: 36px !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Spesifikasi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<table class=\"c-information__table\" style=\"border-collapse: collapse; border-spacing: 0px;\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" /><col style=\"box-sizing: border-box; width: 12px;\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Kategori</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #d71149; text-decoration-line: none; cursor: pointer; line-height: inherit; transition: color 0.3s ease-out 0s;\" href=\"https://www.bukalapak.com/c/rumah-tangga/furniture-interior/dekorasi-rumah\" target=\"_blank\" rel=\"noopener noreferer\">Dekorasi Taman</a></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Berat</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">4000 gram</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Asal Barang</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">Lokal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"c-information__description u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Deskripsi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail -shown\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<div class=\"c-information__description-txt\" style=\"box-sizing: border-box;\">Palem Regu<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TANAMAN<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TINGGI 309CM-+<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />DIAMETER 65CM<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />POT PLASTIK</div>\r\n</div>\r\n</div>\r\n</div>', 534000, 0, 'Awas tidak untuk dimakan', 51, '2022-01-19 08:41:00', '2022-01-19 09:06:03', 'products\\January2022\\SN4odWUxtqo1BvN4a4Dy.jpeg', '[\"products\\\\January2022\\\\wIf4cbJak2hytdOSHZbz.png\"]', '0'),
(6, 'Dracaena Golden', 'dracaena-golden', 3, NULL, '<div class=\"u-mrgn-bottom--6 u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important; margin-bottom: 36px !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Spesifikasi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<table class=\"c-information__table\" style=\"border-collapse: collapse; border-spacing: 0px;\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" /><col style=\"box-sizing: border-box; width: 12px;\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Kategori</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #d71149; text-decoration-line: none; cursor: pointer; line-height: inherit; transition: color 0.3s ease-out 0s;\" href=\"https://www.bukalapak.com/c/rumah-tangga/furniture-interior/dekorasi-rumah\" target=\"_blank\" rel=\"noopener noreferer\">Dekorasi Taman</a></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Berat</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">250 gram</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Asal Barang</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">Lokal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"c-information__description u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Deskripsi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail -shown\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<div class=\"c-information__description-txt\" style=\"box-sizing: border-box;\">Dracaena Golden<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />SATU SET<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TINGGI 30r324CM-+<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />DIAMETER 724141CM<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />POT PLASTIK</div>\r\n</div>\r\n</div>\r\n</div>', 80000, 79000, 'Jangan dimakan :(', 48, '2022-01-19 08:44:36', '2022-01-20 05:20:18', 'products\\January2022\\M5YvLQPFwO6O3tlMT8ab.jpg', '[\"products\\\\January2022\\\\Eq6o9NOd2jPaJuOIHsCU.png\"]', '0'),
(7, 'Song of Jamaica', 'song-of-jamaica', 2, 'Mantap boss yahahaha', '<div class=\"u-mrgn-bottom--6 u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important; margin-bottom: 36px !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Spesifikasi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<table class=\"c-information__table\" style=\"border-collapse: collapse; border-spacing: 0px;\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" /><col style=\"box-sizing: border-box; width: 12px;\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Kategori</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\"><a style=\"box-sizing: border-box; color: #d71149; text-decoration-line: none; cursor: pointer; line-height: inherit; transition: color 0.3s ease-out 0s;\" href=\"https://www.bukalapak.com/c/rumah-tangga/furniture-interior/dekorasi-rumah\" target=\"_blank\" rel=\"noopener noreferer\">Dekorasi Taman</a></td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Berat</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">250 gram</td>\r\n</tr>\r\n<tr style=\"box-sizing: border-box; vertical-align: top;\">\r\n<th class=\"u-align-left u-txt--normal\" style=\"box-sizing: border-box; text-align: left !important; font-weight: 400 !important;\">Asal Barang</th>\r\n<td style=\"box-sizing: border-box;\">:</td>\r\n<td style=\"box-sizing: border-box;\">Lokal</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"c-information__description u-txt--base\" style=\"box-sizing: border-box; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; line-height: 1.4 !important;\">\r\n<h3 class=\"c-information__subtitle\" style=\"box-sizing: border-box; margin: 0px 0px 12px; padding: 0px; font-size: 16px; line-height: 1.2;\">Deskripsi</h3>\r\n<p>&nbsp;</p>\r\n<div class=\"c-collapsible\" style=\"box-sizing: border-box;\">\r\n<div class=\"c-collapsible__detail -shown\" style=\"box-sizing: border-box; margin-bottom: 15px; overflow: hidden; word-break: break-word; max-height: 100%;\">\r\n<div class=\"c-information__description-txt\" style=\"box-sizing: border-box;\">Apa ini kutidak mengerti mengapa ini terjadi<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />SATU SET BUNGA DAN POT<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />TINGGI 30CM-+<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />DIAMETER 7CM<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />POT PLASTIK</div>\r\n</div>\r\n</div>\r\n</div>', 678000, 789000, 'Awas Jangan dimakan ehe', 798, '2022-01-19 08:50:00', '2022-01-19 09:06:03', 'products\\January2022\\eUijYwsv8kHFI62LuPji.jpg', '[\"products\\\\January2022\\\\f9y9XilwNWKtvqPgX1TP.png\",\"products\\\\January2022\\\\6Br61WUskEv5J2vMSOnK.png\"]', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 4.5, 'Mantap kali pak, lain kali aku gak bakalan order lagi', '2022-01-19 08:59:50', '2022-01-19 08:59:50'),
(2, 2, 7, 1, 'Hoax', '2022-01-19 09:06:30', '2022-01-19 09:06:30'),
(3, 4, 7, 3.5, 'Kukira enak >:(', '2022-01-19 09:06:48', '2022-01-19 09:06:48'),
(4, 3, 7, 5, 'Mantap gan sesuai gambar', '2022-01-19 09:07:07', '2022-01-19 09:07:07'),
(5, 6, 7, 2, 'hahahahahah', '2022-01-19 09:07:22', '2022-01-19 09:07:22'),
(6, 7, 7, 2.5, 'EHEHE', '2022-01-19 09:07:36', '2022-01-19 09:07:36'),
(7, 5, 7, 0.5, 'GEGE', '2022-01-19 09:07:53', '2022-01-19 09:07:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-04-28 02:48:42', '2020-04-28 02:48:42'),
(2, 'user', 'Normal User', '2020-04-28 02:48:42', '2020-04-28 02:48:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Abadi Green', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Abadi Green merupakan Usaha Mikro Kecil Menengah (UMKM) yang bergerak di bidang penjualan dan penyewaan tanaman kepada customer, yang beroperasi di kota Bogor Indonesia. Usaha ini didirikan pada akhir 2019. Saat ini usaha memiliki lebih dari 25 jenis tanaman. Usaha ini menyediakan layanan dengan pemasaran melalui media sosial yang dapat diakses oleh customer.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\January2022\\w9KSHA7mwQ0650IyykhL.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\January2022\\UOz7WMVViHevgjxmp0Uz.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Abadi Green', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Come Over', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\January2022\\crIHe2UEu3OeeKTuBt1m.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\January2022\\knhcKev8X7ROWBEQH7qU.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'social.facebook', 'Facebook', 'facebook.com', NULL, 'text', 6, 'Social'),
(13, 'social.youtube', 'Youtube', 'youtube.com', NULL, 'text', 8, 'Social'),
(21, 'home.about', 'about', '<h2>Tentang Kami</h2>\r\n<p>Abadi Green merupakan Usaha Mikro Kecil Menengah (UMKM) yang bergerak dibidang penjualan dan penyewaan tanaman kepada customer, yang beroperasi di kota Bogor Indonesia. Usaha ini didirikan pada akhir 2019. Saat ini usaha memiliki lebih dari 25 jenis tanaman. Usaha ini menyediakan layanan dengan pemasaran melalui media sosial yang dapat diakses oleh customer.</p>\r\n<p>Informasi merupakan hal penting bagi UMKM terutama dibidang pelayanan guna membantu customer. Usaha Abadi Green</p>', NULL, 'rich_text_box', 16, 'Home'),
(28, 'home.hero_title', 'Hero Title', 'Temukan Tanaman Terbaik!', NULL, 'text', 24, 'Home'),
(30, 'home.about_image', 'About Image', 'settings\\January2022\\f1Vvjsv26s4KiIiUbBDJ.jpg', NULL, 'image', 17, 'Home'),
(31, 'contact.email', 'Email', 'raafiasta@gmail.com', NULL, 'text', 26, 'Contact'),
(32, 'contact.phone', 'Phone', '+628956-0263-7690', NULL, 'text', 27, 'Contact'),
(33, 'contact.location', 'Location', 'Bandung, Jawa Barat, Indonesia.', NULL, 'text', 28, 'Contact'),
(34, 'home.banner', 'banner', 'settings\\January2022\\fNaQZ4FzSlkTTdm5VlJb.png', NULL, 'image', 29, 'Home'),
(35, 'social.twitter', 'Twitter', NULL, NULL, 'text', 30, 'Social'),
(36, 'social.linkedin', 'LinkedIn', 'linkedin.com', NULL, 'text', 31, 'Social'),
(37, 'shop.vat', 'VAT (%)', '15.00', NULL, 'text', 32, 'Shop'),
(38, 'shop.shipping', 'Shipping', '25.00', NULL, 'text', 33, 'Shop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `rating`, `designation`, `created_at`, `updated_at`, `image`, `status`) VALUES
(1, 'Alucard', 'Mantap saya sangat senang kamar saya jadinya indah cuy', 5, 'WOW', '2022-01-19 09:13:00', '2022-01-19 09:13:35', 'testimonials\\January2022\\hxRD3cpbMqOrgMDwWybV.jpg', 'active'),
(2, 'Badang', 'APA APA INI AH', 4, 'EHE', '2022-01-19 09:18:20', '2022-01-19 09:18:20', 'testimonials\\January2022\\WQoO4qmfc5O6GJsGzrYR.jpg', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\January2022\\kZdIUyN7qznl03K0QFVF.jpg', NULL, '$2y$10$Na.cNVH0d8ZKc6aIPqI1wej1F6Rk5lAXkCwI3fGQ.Kq0W6lQfPgke', '1WyCB1Md9c8ucRmPA7V1Vadr55JdPooXPVWijSm34lSTq7aC0qb5nLkRwNjn', '{\"locale\":\"en\"}', '2022-01-18 05:36:20', '2022-01-19 07:55:22'),
(3, 2, 'Paijo Ahmad', 'paijo@ganteng.com', 'users\\January2022\\k7TEOynZZCdokqPdHeYF.jpg', NULL, '$2y$10$lSnWuU8gKva8FsFRgAPSaOJdLH/EfnndxFdbwxss5WGlFhcSJrDtC', NULL, '{\"locale\":\"en\"}', '2022-01-18 06:24:26', '2022-01-19 07:54:53'),
(5, 1, 'Raafi Asta', 'raafi@admin.com', 'users\\January2022\\dVv43AqOo4QyY9G6FExg.jpg', NULL, '$2y$10$LKByZxAnmaQdlg6ndsdJJeI9od6aNxxq446mny6dw4tuM4ag/VaFm', '1CkZrvZwhlNmtrHIbAG3bOpj3iOKs3DWT4kqvo5lOs8Yhr1g4HzTyZ2t5Pzf', '{\"locale\":\"en\"}', '2022-01-19 07:53:14', '2022-01-19 08:19:27'),
(6, 2, 'Anesta', 'anesta@gmail.com', 'users/January2022/uLukMwqJyscq4Wh0wSEzaVlJHgK5hi39Isj15vv0.jpg', NULL, '$2y$10$6SrCwsB7xCM4TXDlqfDKgOVK44YgeaJtFzg0oBRfofBQemVvB5zpa', NULL, NULL, '2022-01-19 08:59:18', '2022-01-19 09:00:36'),
(7, 2, 'Mas Okis', 'masokis@gmail.com', 'users/January2022/7fcqweMNfqCMu2cM123p8VNwgdWeAcBhDRZca6gZ.jpg', NULL, '$2y$10$LERSAuKnZCIup6Velt8Ub.Vi.a0Om189MZa1T702DTmgFGfCvj6aG', NULL, NULL, '2022-01-19 09:03:21', '2022-01-19 09:03:44'),
(8, 2, 'BANG POI', 'bangbil@gmail.com', 'users/default.png', NULL, '$2y$10$U3AxMwQUQkHt9sTY27PdfOf2fXWXkQ3zRh6o047mdwISTBYMm81P2', NULL, NULL, '2022-01-20 05:07:20', '2022-01-20 05:07:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
