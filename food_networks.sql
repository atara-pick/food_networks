-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: דצמבר 03, 2020 בזמן 10:07 PM
-- גרסת שרת: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_networks`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `network_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double(8,2) NOT NULL,
  `lng` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- הוצאת מידע עבור טבלה `branches`
--

INSERT INTO `branches` (`id`, `network_id`, `name`, `city`, `street_address`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(1, 3, 'Petah-Tikva', 'Petah-Tikva', 'Bem Tsyon Galis 30', 0.00, 0.00, NULL, NULL),
(2, 3, 'Hadera', 'Hadera', 'פינת, האומן פינת המסגר, Hadera', 0.00, 0.00, NULL, NULL),
(3, 3, 'Shamgar', 'Jerusalem', 'Shamgar', 0.00, 0.00, NULL, NULL),
(4, 3, 'Tel Aviv-Yafo', 'Tel Aviv-Yafo', 'Walter Moses', 0.00, 0.00, NULL, NULL),
(5, 3, 'Benei Braq, HaKishon', 'Benei Braq', 'HaKishon', 0.00, 0.00, NULL, NULL),
(6, 3, 'HaGalil Street, Bet Shemesh', 'Bet Shemesh', 'HaGalil', 0.00, 0.00, NULL, NULL),
(7, 3, 'Givat Shaul Jerusalem', 'Jerusalem', 'Beit Ha-Defus', 0.00, 0.00, NULL, NULL),
(8, 3, 'Haifa', 'Haifa', '752', 0.00, 0.00, NULL, NULL),
(9, 3, 'Ha-Rekhavim Street, Jerusalem', 'Jerusalem', 'Ha-Rekhavim', 0.00, 0.00, NULL, NULL);

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- הוצאת מידע עבור טבלה `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_03_094949_create_branches_table', 2);

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `networks`
--

CREATE TABLE `networks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- הוצאת מידע עבור טבלה `networks`
--

INSERT INTO `networks` (`id`, `name`) VALUES
(1, 'super-sal'),
(2, 'yesh'),
(3, 'osher-ad'),
(4, 'victory');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `users`
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
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- אינדקסים לטבלה `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
