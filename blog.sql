-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 03:10 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
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
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 13, 'Access Token', '757c54d006d326d03ddd43ed2f0bf5dd1ff5b03a50da0a647573196a018da4d5', '[\"*\"]', NULL, '2021-05-25 15:39:04', '2021-05-25 15:39:04'),
(2, 'App\\Models\\User', 14, 'Access Token', 'bf223fb5cc712e6ea016d746e31d504b980abea1242c8f6494cf97783fab3733', '[\"*\"]', NULL, '2021-05-27 11:05:27', '2021-05-27 11:05:27');

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
(1, 'Mohamed Mai', 'Mohamed@hotmail.com', NULL, '$2y$10$tkAWuLiy90k7D72lDp.Jd.S1EPk6prYqk/5GOeSqbFaVRwpcV2CvG', NULL, NULL, NULL),
(2, 'Mohamed Mai', 'Mohamed@gmail.com', NULL, '$2y$10$zZYXygFsUyqsRPsK68VdnucGnztRvavnOoadcg65uKjTVSqrpFHXy', NULL, NULL, NULL),
(3, 'Mai Joe', 'Mai@outlook.com', NULL, '$2y$10$6bxQVxhxB0/fGFpPndUrvOMbx1oMYVT2ExvLDtK7uTsTQgyagHYvK', NULL, NULL, NULL),
(4, 'Aya Fouad', 'Aya@outlook.com', NULL, '$2y$10$hz0fd4RegLcWXQ4IqpPSOeEpRekazjPG9o6KLUrU37lmq.UKuby46', NULL, NULL, NULL),
(5, 'Mohamed Mai', 'Mohamed@outlook.com', NULL, '$2y$10$PfSMe8zBQpSHWhaKx7ZI3ONjFkkwKZ3uxn4WWnEX3Go1.UazlI7sG', NULL, NULL, NULL),
(6, 'Aya Joe', 'Aya@gmail.com', NULL, '$2y$10$7N81Dhd04ib2XQg/mjMteOiQkZQ9cyjxOLVskMhigUiFjmuShItNK', NULL, NULL, NULL),
(7, 'Rana Mai', 'Rana@hotmail.com', NULL, '$2y$10$GFUtsskKlt1ty7578AHrSuBcsR1hlG3.HmgMrCNu5WL5wl2WRQHNe', NULL, NULL, NULL),
(9, 'Fouad Mohamed', 'Fouad@gmail.com', NULL, '$2y$10$s.4wG4IAnjc.CRtOPfqzte3v7fYSBoyLup4gt19Z2OCKzCmjlDUU.', NULL, NULL, NULL),
(10, 'Joe Mohamed', 'Joe@hotmail.com', NULL, '$2y$10$RAuMnN5ArFEFsJ0fCZ41cO1zryioV2LoqWhG.pwmq5yMZxNnY9hUW', NULL, NULL, NULL),
(12, 'Mai Rana', 'Mai@hotmail.com', NULL, '$2y$10$THYO9Ht.SXdRgTIvZ2DCrOo8KIL1xLPmaAFITndN.hmcu1YJ5Pfa2', NULL, NULL, NULL),
(13, 'Mohamed Ayman', 'mohamedayman@gmail.com', NULL, '$2y$10$8PAAu31ZLCnHb.jBV.PMhO/tOTqEQKffv7i/Vc.asVMkYApyn2V2O', NULL, '2021-05-25 15:39:04', '2021-05-25 15:39:04'),
(14, 'Mohamed Ayman Shawky', 'Mohamed11@hotmail.com', NULL, '$2y$10$UHTTkf0IY.xhIEa6yH4GJeXk1krfITcFmkvezhBuHjX9vJbfdtgda', NULL, '2021-05-27 11:05:27', '2021-05-27 11:05:27');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
