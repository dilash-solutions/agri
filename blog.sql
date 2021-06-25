-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 03:46 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendance` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `emp_id`, `emp_name`, `date`, `attendance`, `created_at`, `updated_at`) VALUES
(5, 2, 'Ayesha', '2021-05-13', 1, '2021-05-13 11:32:45', '2021-05-13 11:32:45'),
(7, 40, 'Denis', '2021-05-13', 1, '2021-05-13 11:36:55', '2021-05-13 11:36:55'),
(8, 21, 'mavis', '2021-05-16', 1, '2021-05-16 12:48:55', '2021-05-16 12:48:55'),
(10, 40, 'Denis', '2021-05-16', 1, '2021-05-16 16:49:45', '2021-05-16 16:49:45'),
(11, 2, 'Ayesha', '2021-06-16', 1, '2021-06-16 14:29:38', '2021-06-16 14:29:38'),
(13, 21, 'mavis', '2021-06-16', 1, '2021-06-16 14:59:07', '2021-06-16 14:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tea', '2021-02-03 07:51:24', '2021-02-03 07:51:24'),
(3, 'coconut', '2021-02-03 07:55:55', '2021-02-03 07:55:55'),
(4, 'rubber', '2021-02-03 07:56:04', '2021-02-03 07:56:04'),
(5, 'barley', '2021-02-03 07:56:20', '2021-02-03 07:56:20'),
(6, 'sweet corn', '2021-02-03 07:57:54', '2021-02-03 07:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `nic` varchar(10) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `gender`, `address`, `number`, `nic`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'Ayesha', 'Female', NULL, 776567876, '888767659V', NULL, '2021-01-14 05:22:28', '2021-02-02 12:40:30'),
(21, 'mavis', 'Female', NULL, NULL, NULL, NULL, '2021-01-14 06:34:39', '2021-01-14 06:34:39'),
(40, 'Denis', 'Male', NULL, 775465633, NULL, NULL, '2021-01-29 16:35:03', '2021-02-02 14:00:30'),
(41, 'lashi', 'Female', NULL, NULL, NULL, NULL, '2021-01-30 14:17:44', '2021-01-30 14:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `expences`
--

CREATE TABLE `expences` (
  `id` int(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `amount` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expences`
--

INSERT INTO `expences` (`id`, `description`, `amount`, `created_at`, `updated_at`, `category`) VALUES
(1, 'fertilizers', 5000, '2021-02-04', '2021-02-04 00:00:00', 'coconut'),
(2, 'sold', 5050, '2021-02-05', '2021-02-05 05:47:34', 'coconut'),
(3, 'fertilizers', 1000, '2021-02-05', '2021-02-05 00:00:00', 'other');

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
-- Table structure for table `harvest_inflows`
--

CREATE TABLE `harvest_inflows` (
  `id` int(100) NOT NULL,
  `amount` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `crop_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harvest_inflows`
--

INSERT INTO `harvest_inflows` (`id`, `amount`, `created_at`, `updated_at`, `crop_name`) VALUES
(5, 100, '2021-02-03', '2021-02-03', 'tea'),
(7, 100, '2021-02-03', '2021-02-03', 'barley'),
(8, 300, '2021-02-03', '2021-02-03', 'sweet corn'),
(10, 100, '2021-02-04', '2021-02-04', 'tea'),
(12, 200, '2021-02-05', '2021-02-05', 'tea'),
(14, 110, '2021-02-05', '2021-02-05', 'coconut'),
(15, 220, '2021-02-07', '2021-02-07', 'tea'),
(16, 12, '2021-03-13', '2021-03-13', 'tea'),
(17, 400, '2021-03-16', '2021-03-16', 'tea'),
(18, 300, '2021-03-16', '2021-03-16', 'tea'),
(20, 200, '2021-03-17', '2021-03-17', 'coconut'),
(21, 52, '2021-06-16', '2021-06-16', 'tea'),
(22, 12, '2021-06-16', '2021-06-16', 'coconut');

-- --------------------------------------------------------

--
-- Table structure for table `harvest_outflows`
--

CREATE TABLE `harvest_outflows` (
  `id` int(100) NOT NULL,
  `amount` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `crop_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harvest_outflows`
--

INSERT INTO `harvest_outflows` (`id`, `amount`, `created_at`, `updated_at`, `crop_name`) VALUES
(1, 0, '2021-02-03', '2021-02-03', 'coconut'),
(2, 120, '2021-02-05', '2021-02-05', 'tea'),
(3, 100, '2021-02-07', '2021-02-07', 'tea');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `amount` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` datetime NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `description`, `amount`, `created_at`, `updated_at`, `category`) VALUES
(1, 'sold', 10000, '2021-02-04', '2021-02-04 00:00:00', 'tea'),
(3, 'fertilizers', 5000, '2021-02-04', '2021-02-04 00:00:00', 'rubber'),
(4, 'sold', 10000, '2021-02-04', '2021-02-04 00:00:00', 'rubber'),
(5, 'fertilizers', 10020, '2021-02-05', '2021-02-05 05:33:21', 'coconut'),
(6, 'zxcfgvzsd', 10000, '2021-02-20', '2021-02-20 00:00:00', 'other'),
(7, 'zxcfgvzsd', 15, '2021-03-13', '2021-03-13 00:00:00', 'tea'),
(8, 'zxcfgvzsd', 15, '2021-03-13', '2021-03-13 00:00:00', 'tea');

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
(4, '2021_02_06_120932_laratrust_setup_tables', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(2, 'users-read', 'Read Users', 'Read Users', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(3, 'users-update', 'Update Users', 'Update Users', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2021-06-16 08:57:02', '2021-06-16 08:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2021-06-16 08:57:02', '2021-06-16 08:57:02'),
(2, 'user', 'User', 'User', '2021-06-16 08:57:03', '2021-06-16 08:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$iRab0Xn487DoudHdf6sns.vByr32zjWsogWSXIvv9ax/dgv06MESK', NULL, '2021-06-16 08:58:21', '2021-06-16 08:58:21'),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$YSGqAQh1ZOB92j3y9pbMeeZis84XlLqtSi6ogCHyJacsdZWmi2kdS', NULL, '2021-06-16 08:58:44', '2021-06-16 08:58:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `expences`
--
ALTER TABLE `expences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `harvest_inflows`
--
ALTER TABLE `harvest_inflows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harvest_inflows`
--
ALTER TABLE `harvest_inflows`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
