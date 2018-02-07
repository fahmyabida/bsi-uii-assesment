-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2018 at 07:42 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsi-uii-assesment`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2014_10_12_200000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'abida', 'abida@abida.com', '$2y$10$H6UbklWuVEcEuvPaHIQWTuIa3OdfHF7bGpUMIwtOnoHVS32dEfsSy', 'admin', 'cJm0JA5DjpxvnMeKj9YcmThHSSojBwNIjKllCYggVgKUtwrGfEPorY4eYWb2', '2018-02-06 04:35:40', '2018-02-06 09:29:32'),
(3, 'Fahmy Abida', 'fahmy@gmail.com', '$2y$10$Qcc8doQkdW3UP4zjV7Rj3ORJWWH1cZsRIWVE0EJVwLqTmtBUqoPpG', 'admin', '9fQbLZE0LJwz0i6in1pAuH4kgbepcsMSNR1lMbkSJ0f96u1SBAbURmoS3d60', '2018-02-06 04:39:50', '2018-02-06 09:29:42'),
(4, 'as', 'as@gmail.com', '$2y$10$NiFvRfq3frFPMSuYFZ1g7e6aXVSU3zqulsZSE93CavM2X.h/m2kEq', 'member', '1nHN25sbtYtEnZIved3t9JXRYSQ7rotbmGxjrvLnjPfTUWTSNk7xSI8JLejJ', '2018-02-06 04:42:32', '2018-02-06 09:29:51'),
(6, 'asd', 'asd@gmail.com', '$2y$10$wdS7NE1.GM4c.zCO5EuZZemY20k/AJKjJ.e0gsZK8BsIdayYhY6oy', 'member', '38JTay8I0weuUH5NL5dZY31I04irkGSKaptF0Qam9NnwSMg3JJiG9Va1juY3', '2018-02-06 04:55:20', '2018-02-06 09:30:07'),
(9, 'hallo', 'hallo@gmail.com', '$2y$10$EiNYLTj19FC14f4BaGV/KeY3hTjdHwQPvj6tTwI2QcpQLdv7yRkvG', 'member', 'yts2mX6XkmaorCnshbHNv2av5jxYQvbQqHGWnI4z0TpttJHu4IoCiDIx21pS', '2018-02-06 08:19:22', '2018-02-06 09:30:17'),
(10, 'admin', 'admin@gmail.com', '$2y$10$T9RLhSXo9QWtxoqS.XYVM.ug1L4LScDlff5oLcsXXVsrxP6k2VfVW', 'admin', 'siv8DXIeGecLIDyNmHdWzuBHaDQ412Z2m45hILKUARh4B20pBKUcsDtt5K1X', '2018-02-06 08:26:26', '2018-02-06 09:30:26'),
(11, 'maman', 'maman@gmail.com', '$2y$10$LPvNWm6Oge9kmUx.RFjnCeOLaoy9wF.PWe8U531buxFwGxs8EushC', 'member', 'DgfPClorbRTuEYKWu9T6kwjehmFNe0xicCYTCahgdIG347Q9M4zzNIQgpSqo', '2018-02-06 09:29:08', '2018-02-06 09:30:35'),
(12, 'dumy3', 'dumy2@gmail.com', '$2y$10$qJonsrgKyf974C1Iue2b9eZBHfUYvcly5t1H5Yu2I7E9I9RFjRPye', 'member', 'HJbEnmtULnuab7KccNwVxEBZd9C16RRaJZBaao3EZ16Cm7cO6EMhLJWhJYdX', '2018-02-06 21:31:14', '2018-02-06 21:32:43'),
(13, 'bukanadmin', 'bukanadmin@gmail.com', '$2y$10$jwToikXxc.5g6j48SuiCle1AlLmM57z8ZkZMRRkFxYoWH/fSjid4S', 'member', NULL, '2018-02-06 23:20:06', '2018-02-06 23:20:06');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
