-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 04:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineering', '2024-11-07 06:37:45', '2024-11-07 06:37:45'),
(2, 'Interactive Multimedia', '2024-11-07 06:37:45', '2024-11-07 06:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `description`, `image_link`, `category_id`, `writer_id`, `created_at`, `updated_at`) VALUES
(1, 'Pattern Software Design', 'Similique laudantium eos enim blanditiis aut cumque qui. Earum porro ut rerum cumque reprehenderit iure id. Aut saepe sed ut vel sint ipsa. Corporis quisquam quo magnam voluptatibus qui. Consequatur laborum odit saepe recusandae dolorum necessitatibus. Consequuntur hic et repellat eos dolorem.\n\nEsse porro sint et molestiae corrupti consectetur. Autem iure deleniti ea fugiat sed voluptatem temporibus quisquam. Et necessitatibus et ea et. Veniam molestias praesentium maiores ut earum fugit. Aut ut ex sit omnis quasi.', '1', 1, 2, '2024-11-07 06:37:46', '2024-11-07 06:37:46'),
(2, 'Agile Software Development', 'Enim in neque mollitia officia cum. Eius est dolorum quo est qui et. Omnis qui ipsam culpa rerum possimus. Libero voluptate est aut aut.\n\nNisi ratione nesciunt inventore error dolorum qui laboriosam. Quam facilis voluptatem nihil et velit. Magnam sunt et labore atque. Facilis velit alias vitae dolor earum libero dolore. Velit voluptatem sapiente vel sapiente dolor. Consequuntur cupiditate laboriosam minus fugiat assumenda et.', '2', 1, 2, '2024-11-07 06:37:46', '2024-11-07 06:37:46'),
(3, 'Code Reengineering', 'Sit possimus suscipit provident doloremque ex aut. Aut repellendus quis deserunt reprehenderit. Perferendis beatae quibusdam numquam omnis sit. Et similique voluptatem nam consequatur id nihil.\n\nModi consectetur in aut exercitationem sint eos sint. Dignissimos ipsa sed vitae quaerat. Inventore id deleniti qui labore. Veniam quia sint ullam. Tempore dolorum est dignissimos dignissimos est placeat. Deleniti et veritatis quibusdam. Blanditiis adipisci nisi deleniti. Nihil provident reprehenderit pariatur. Sed nemo sit dolorum ut.', '3', 1, 2, '2024-11-07 06:37:46', '2024-11-07 06:37:46'),
(4, 'Human and Computer Interaction', 'Repellat quas numquam qui aperiam quibusdam. Alias et fugiat expedita quae itaque. Consectetur modi doloribus est voluptates. Consectetur aut cum illum quis eum eius est. Quam ipsa natus dicta sunt rerum. Iure asperiores et dolor laboriosam ut voluptas. Alias et voluptas nostrum dolores praesentium nostrum provident. Error temporibus voluptas est ut laborum porro.\n\nNisi dolores ut similique sunt est modi. Vel quia nostrum quia nam perferendis doloribus. Fuga exercitationem et repudiandae culpa illo nihil. Aut qui et qui. Dolores aliquam quae consequatur sequi. Aut sint cupiditate maxime quisquam dolorum eum. Accusamus quasi id nulla aut. Alias omnis quia voluptas molestias magnam enim. Nemo quis iste enim possimus commodi illum nam. Dolorem modi tempore delectus ipsum dolores amet molestiae molestias.', '4', 2, 1, '2024-11-07 06:37:46', '2024-11-07 06:37:46'),
(5, 'User Experience', 'Sed a eos eum sed dolore qui. Ipsum fugiat similique voluptatem et voluptatum nisi. Ut id magnam est aperiam quod aliquam dolorum. Dolorem rerum est aut. Ad dicta unde sint atque libero sunt dolores. Et non qui beatae necessitatibus ex omnis aut eveniet. Itaque quisquam architecto mollitia repellat tempore tempore. Explicabo placeat tempore eum officia nihil.\n\nCorrupti voluptates fugit similique necessitatibus. Laudantium culpa modi est aut. Eveniet et distinctio nemo beatae nisi. Eum in ex voluptas. Commodi placeat aut nisi quisquam. Repudiandae est sed qui et quo. Quia quae distinctio voluptates voluptatem adipisci qui similique. Id blanditiis doloribus dolorum eum rem sunt aut. Pariatur temporibus vel omnis excepturi qui. Voluptas pariatur sit aut facilis earum vel numquam. Assumenda pariatur iure est eaque.', '5', 2, 1, '2024-11-07 06:37:46', '2024-11-07 06:37:46'),
(6, 'User Experience for Digital Immersive Technology', 'Omnis est laboriosam non omnis temporibus sit fugiat. Non qui veritatis consequatur corporis in. Aut facilis quis libero fugit totam in omnis. Voluptate dolor magnam cumque minima. Voluptatum sed sint ullam architecto laborum excepturi voluptate. Placeat qui dicta sint veniam beatae reprehenderit. Quam dolorem rerum officia id magni.\n\nDucimus accusamus porro incidunt officiis. Laborum non est ut reiciendis consectetur distinctio. Voluptatem dolor vitae autem et. Hic qui aspernatur possimus earum quibusdam quia ea. Excepturi ut voluptas maxime accusamus suscipit aspernatur. Doloribus soluta laborum eaque aut minus doloremque aut.', '6', 2, 1, '2024-11-07 06:37:46', '2024-11-07 06:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_02_00_095302_create_writers_table', 1),
(5, '2024_03_00_095058_create_categories_table', 1),
(6, '2024_04_00_095218_create_courses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('61XudDxJKlNUGTh4AcUhCfKfOiZzFe2IHEucbIdG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzVrZml1RG9BcmprektKd3BvMEV3cngwM0pMb3NPVm1iTkhyMlpVbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3B1bGFyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730991504);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `image_link`, `specialist`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', '1', 'Spesialis Interactive Multimedia', '2024-11-07 06:37:45', '2024-11-07 06:37:45'),
(2, 'Abi Firmansyah', '2', 'Spesialis Software Engineering', '2024-11-07 06:37:45', '2024-11-07 06:37:45'),
(3, 'Bia Mecca Annisa', '3', 'Spesialis Data Science Specialist', '2024-11-07 06:37:45', '2024-11-07 06:37:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
