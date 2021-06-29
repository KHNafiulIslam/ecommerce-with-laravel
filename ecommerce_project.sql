-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 11:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories_name`, `created_at`, `updated_at`) VALUES
(0, 'Lifestyle', NULL, NULL),
(1, 'Animal', '2021-06-27 07:57:34', '2021-06-27 07:57:34'),
(2, 'Food', '2021-06-28 15:07:37', '2021-06-28 15:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_26_142219_create_products_table', 1),
(5, '2021_06_27_070441_add_columns_to_products_table', 2),
(6, '2021_06_27_070638_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '60dade7a69473', 'BDT'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '60dadeca79cd5', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) DEFAULT 0,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `amount`, `price`, `is_active`, `created_at`, `updated_at`, `details`, `categories_id`, `size`) VALUES
(5, 'Tennis Ball', '/images/uploads/product_16247699091.jpg|/images/uploads/product_16247699092.jfif', 200, 40, 1, '2021-06-26 22:58:29', '2021-06-26 22:58:29', '', 0, ''),
(6, 'Football', '/images/uploads/product_16247713261.jfif', 20, 500, 1, '2021-06-26 23:22:06', '2021-06-26 23:22:06', '', 0, ''),
(7, 'Pen', '/images/uploads/product_16247714431.jfif', 200, 5, 1, '2021-06-26 23:24:03', '2021-06-26 23:24:03', '', 0, ''),
(8, 'Cow for Kurbani', '/images/uploads/product_16247725131.jfif', 20, 50000, 1, '2021-06-26 23:41:53', '2021-06-26 23:41:53', '', 1, ''),
(9, 'Cycle', '/images/uploads/product_16247748521.jfif', 10, 10000, 1, '2021-06-27 00:20:52', '2021-06-27 00:20:52', '', 0, ''),
(10, 'Cap', '/images/uploads/product_16247748931.jfif', 20, 100, 1, '2021-06-27 00:21:34', '2021-06-27 00:21:34', '', 0, ''),
(11, 'T-shirt', '/images/uploads/product_16247752121.jpg', 200, 250, 1, '2021-06-27 00:26:52', '2021-06-27 00:26:52', '', 0, ''),
(12, 'iPhone 12', '/images/uploads/product_16247805031.jfif', 10, 88000, 1, '2021-06-27 01:55:03', '2021-06-27 01:55:03', 'This is iPhone11, with 128GB memory and 8Gb Ram.', 0, NULL),
(13, 'Spectacle', '/images/uploads/product_16247901661.jfif', 200, 250, 1, '2021-06-27 04:36:06', '2021-06-27 04:36:06', 'This is imported from Thailand. You will get 2years of warranty with this.', 0, NULL),
(14, 'Goat for Kurbani', '/images/uploads/product_16247906491.jfif', 10, 5000, 1, '2021-06-27 04:44:09', '2021-06-27 04:44:09', 'Local breed collected from villages.', 1, NULL),
(15, 'Ice cream', '/images/uploads/product_16248094311.jfif', 20, 100, 1, '2021-06-27 09:57:11', '2021-06-27 09:57:11', 'This is custom ice cream, you can order any type of ice cream from us.', 2, NULL),
(16, 'Snickers Shoes', '/images/uploads/product_16248095431.jfif', 20, 500, 1, '2021-06-27 09:59:03', '2021-06-27 09:59:03', 'Imported shoes from Vietnam.', 0, NULL),
(17, 'Brazil jersey', '/images/uploads/product_16248628931.jfif|/images/uploads/product_16248628932.jfif', 200, 500, 1, '2021-06-28 00:48:13', '2021-06-28 00:48:13', 'Brazil football team jersey, fresh and good quality.', 0, NULL),
(18, 'Chicken', '/images/uploads/product_16248927861.jfif', 200, 150, 1, '2021-06-28 09:06:26', '2021-06-28 09:06:26', 'Deshi murgi per KG150 tk.', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_admint` tinyint(1) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_number`, `email_verified_at`, `password`, `is_active`, `is_admint`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nafiul Islam', 'nafiulovi63@gmail.com', '', NULL, '12345', 1, 0, NULL, '2021-06-26 15:40:35', '2021-06-26 15:40:35'),
(2, 'Saiful Islam', 'Saiful@gmail.com', '', NULL, '123123', 1, 0, NULL, '2021-06-26 15:42:51', '2021-06-26 15:42:51'),
(4, 'Saiful Islam', 'Saifulnew@gmail.com', '', NULL, '123123', 1, 0, NULL, '2021-06-26 15:44:18', '2021-06-26 15:44:18'),
(6, 'Saiful Islam', 'Saifulnew111@gmail.com', '', NULL, '123123', 1, 0, NULL, '2021-06-26 15:46:26', '2021-06-26 15:46:26'),
(7, 'Saiful Islam', 'Saifulislam@gmail.com', '', NULL, '123123', 1, 0, NULL, '2021-06-26 15:52:54', '2021-06-26 15:52:54'),
(8, 'Nafiul Islam', 'kislam173008@bscse.uiu.ac.bd', '', NULL, '123123', 1, 0, NULL, '2021-06-26 17:58:20', '2021-06-26 17:58:20'),
(9, 'Prantik', 'prantik@gmail.com', '', NULL, '123123', 1, 0, NULL, '2021-06-28 17:42:53', '2021-06-28 17:42:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
