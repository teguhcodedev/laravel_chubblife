-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 01:35 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipost`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `kelola_akun` tinyint(1) NOT NULL,
  `kelola_barang` tinyint(1) NOT NULL,
  `transaksi` tinyint(1) NOT NULL,
  `kelola_laporan` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `user`, `kelola_akun`, `kelola_barang`, `transaksi`, `kelola_laporan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2021-05-05 03:50:45', '2021-05-05 03:50:45'),
(2, 2, 0, 0, 0, 0, '2021-05-05 03:51:44', '2021-05-05 03:54:44'),
(3, 3, 1, 1, 1, 1, '2021-05-05 06:54:35', '2021-05-05 06:54:35'),
(4, 4, 0, 1, 0, 1, '2021-05-05 06:55:22', '2021-05-05 06:55:48'),
(5, 5, 0, 1, 1, 1, '2021-05-05 06:59:37', '2021-05-05 07:00:19'),
(6, 6, 0, 1, 1, 1, '2021-05-06 19:57:04', '2021-05-06 19:57:04'),
(7, 7, 0, 1, 1, 1, '2021-05-06 20:09:29', '2021-05-06 20:09:29'),
(8, 8, 0, 1, 1, 1, '2021-05-06 20:13:23', '2021-05-06 20:13:23'),
(9, 9, 0, 1, 1, 1, '2021-05-06 20:30:19', '2021-05-06 20:30:19'),
(10, 10, 0, 1, 1, 1, '2021-05-06 20:31:03', '2021-05-06 20:31:03'),
(11, 11, 0, 1, 1, 1, '2021-05-06 20:32:12', '2021-05-06 20:32:12'),
(12, 12, 0, 1, 1, 1, '2021-05-06 20:33:18', '2021-05-06 20:33:18'),
(13, 13, 0, 1, 1, 1, '2021-05-06 20:34:31', '2021-05-06 20:34:31'),
(14, 14, 0, 1, 1, 1, '2021-05-06 20:35:06', '2021-05-06 20:35:06'),
(15, 15, 0, 1, 1, 1, '2021-05-06 20:36:08', '2021-05-06 20:36:08'),
(16, 16, 0, 1, 1, 1, '2021-05-06 20:55:20', '2021-05-06 20:55:20'),
(17, 17, 0, 1, 1, 1, '2021-05-06 20:56:47', '2021-05-06 20:56:47'),
(18, 18, 0, 1, 1, 1, '2021-05-06 20:57:28', '2021-05-06 20:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `id_user`, `user`, `nama_kegiatan`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 3, 'teguh', 'transaksi', 1, '2021-05-05 06:57:43', '2021-05-05 06:57:43'),
(2, 3, 'teguh', 'transaksi', 1, '2021-05-06 18:14:16', '2021-05-06 18:14:16'),
(3, 3, 'teguh', 'transaksi', 1, '2021-05-06 23:23:10', '2021-05-06 23:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `nama_toko`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Toko Pratama', '087878787878', 'Jl. Mawar no.86, Bogor', NULL, NULL);

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
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2020_05_22_230351_create_product_table', 1),
(27, '2020_05_26_114219_create_supply_table', 1),
(28, '2020_05_26_123200_create_trigger_supply', 1),
(29, '2020_06_03_202123_create_supply_system', 1),
(30, '2020_06_03_202129_create_transaction_table', 1),
(31, '2020_06_10_225325_create_access_table', 1),
(32, '2020_06_12_133440_create_activity_table', 1),
(33, '2020_06_15_205927_create_market_table', 1);

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
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 15,
  `harga` bigint(20) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tersedia',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `kode_barang`, `jenis_barang`, `nama_barang`, `berat_barang`, `merek`, `stok`, `harga`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1232323', 'Produksi', 'Gucci', '1 kg', 'gucci', 48, 10000, 'Tersedia', '2021-05-05 06:57:23', '2021-05-06 18:14:16'),
(2, '1223434', 'Konsumsi', 'Buku', '300 g', 'sidu', 199, 36000, 'Tersedia', '2021-05-06 23:22:43', '2021-05-06 23:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` bigint(20) NOT NULL,
  `id_pemasok` int(11) NOT NULL,
  `pemasok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `supplies`
--
DELIMITER $$
CREATE TRIGGER `tg_pasok_barang` AFTER INSERT ON `supplies` FOR EACH ROW BEGIN
                UPDATE products SET stok = stok + NEW.jumlah WHERE kode_barang = NEW.kode_barang;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supply_systems`
--

CREATE TABLE `supply_systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supply_systems`
--

INSERT INTO `supply_systems` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2021-05-05 06:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_barang` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembali` bigint(20) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `kasir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `kode_transaksi`, `kode_barang`, `nama_barang`, `harga`, `jumlah`, `total_barang`, `subtotal`, `diskon`, `total`, `bayar`, `kembali`, `id_kasir`, `kasir`, `created_at`, `updated_at`) VALUES
(1, 'T05052021135729', '1232323', 'Gucci', 10000, 1, 10000, 10000, 0, 10000, 20000, 10000, 3, 'teguh', '2021-05-05 06:57:43', '2021-05-05 06:57:43'),
(2, 'T07052021011359', '1232323', 'Gucci', 10000, 1, 10000, 10000, 0, 10000, 20000, 10000, 3, 'teguh', '2021-05-06 18:14:16', '2021-05-06 18:14:16'),
(3, 'T07052021062256', '1223434', 'Buku', 36000, 1, 36000, 36000, 0, 36000, 50000, 14000, 3, 'teguh', '2021-05-06 23:23:10', '2021-05-06 23:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `role`, `is_banned`, `foto`, `email`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'teguh', 'admin', 0, 'default.jpg', 'teguh@gmail.com', NULL, 'teguh', '$2y$10$pKuMnkBK3Szw42RyvN5AfOX.tfIrubwJ0XIB5kFwjJhTEbw4Qe9nS', 'mgzuAdhA8xky8oWapbOAHZYubNlxfUHYzG6ngxj0EfAKY9enLdngPfOhX262', '2021-05-05 06:54:35', '2021-05-05 06:59:01'),
(4, 'Aris', 'manager', 0, 'aries.jpg', 'teguhcodedev@gmail.com', NULL, 'aris', '$2y$10$EEgCuoMQyDHCFObUcpzWUufti7LVBnUtFNNk8LJKgJpOekQhpWFWi', '06GyPSvNV8vFUji9zHa6I7oF7tF3FSnAmSsMbEubl59vkgOGU9Whom4LUfzQ', '2021-05-05 06:55:22', '2021-05-06 23:07:50'),
(5, 'budi', 'TMO', 0, 'download (1).jpg', 'budi@gmail.com', NULL, 'budi', '$2y$10$Bf/rgRSp3LlVSrWDQ/sWqeZsi417iCDdRqjmbGPSKCuRBPH4SOQRu', 'JcvWTs3O1GgxuzsdMkWWxisCKSOEDoUJzkR0xrk4GvIv11xpE53ZolNfacf7', '2021-05-05 06:59:37', '2021-05-06 20:08:12'),
(6, 'Intan', 'QA', 1, 'default.jpg', 'intan@gmail.com', NULL, 'intan', '$2y$10$FvTnaV00CWIhXK0PIalIxOq1YDdGYS.ysH6hzGk8udU3Wut.mzF/m', 'K88AJWCSXoNn8jGzn4rgFyXwzTfUTUeg7lox3AUev3Sxt4EV4NzPTDbLD6Ia', '2021-05-06 19:57:04', '2021-05-06 20:07:41'),
(7, 'Rony setiawan', 'asisten manager', 0, 'default.jpg', 'rony@gmail.com', NULL, 'rony', '$2y$10$RR/jf5904GetR2Q62UjcX.MUJfOeGCCzfIhtjJjQTdIsXG6LTYrFy', 'L55OJqbIVTKtcZfEX8DgtGKhJlntGkn1vKKyIcAuiTpv13APKOiGvNrsxKMQ', '2021-05-06 20:09:29', '2021-05-06 20:13:54'),
(8, 'Berry', 'asisten manager', 0, 'default.jpg', 'berry@gmail.com', NULL, 'beri', '$2y$10$uGU/D1wufWc4PmhfY4kwAecvEdSgUixRLndR.0ULnOTiP1jr9m.FC', 'T36VrHk9z1QAphLyhAsFPbamnoHKQlGZRMWS0ErXv0Uked3ZJIrPDK2PW3AH', '2021-05-06 20:13:23', '2021-05-06 22:41:48'),
(9, 'johny', 'customer', 0, 'default.jpg', 'johny@gmail.com', NULL, 'johny', '$2y$10$pkZ0gvHzQyv67vRZDPr6I.zW4CeRYn3PmjL9tEoQ8OVMtKv2Y9hFi', 'cvDgnc0SgZfGpbhXxwlIZzQgGwE8SXK9fkSKDhOY3bn9wDv3zPuc6RzceZPi', '2021-05-06 20:30:19', '2021-05-06 20:30:19'),
(10, 'gerald', 'manager', 0, 'default.jpg', 'gerald@gmail.com', NULL, 'gerald', '$2y$10$PsmonPkWMG5PvrvzrPvnb.ZEN.KjZp9L0OM7Tq4ISGTDpHYL/WJsG', 'ETR262dM1vtK0sJRsSB71twwF7EaZVP0dBAdRVerLdHpeFY2jEpZXyd7SCl6', '2021-05-06 20:31:03', '2021-05-06 20:31:03'),
(11, 'burhan', 'customer', 0, 'default.jpg', 'burhan@gmail.com', NULL, 'burhan', '$2y$10$fFHhx3kFwgUbaF9zEzFCMuZzJFymDnAHdfUcOrYrEklJGaa2SHZXa', 'zaVvLJoLBXrXPSyu9FcdGE0UmIeug2xWM8z7jvF9365VQvoYwZ1b9IPpJWF8', '2021-05-06 20:32:12', '2021-05-06 20:32:12'),
(12, 'deny', 'customer', 0, 'default.jpg', 'deny@gmail.com', NULL, 'deny', '$2y$10$9Hw7BKncq6sB.Wvizqs8sOiXeMKJzMKEP7lL9SmOUKlTYasuzsE0e', '46Ydh5xErIrD6Y5gFYxDgU4oxZwkEq8oG8jPXb8jFeehPu6CaRA38gFTuHtT', '2021-05-06 20:33:18', '2021-05-06 20:33:18'),
(13, 'choki', 'TMO', 0, 'default.jpg', 'choki@gmail.com', NULL, 'choki', '$2y$10$41RGkTUDNo83Yaub5jiyO.3oIVdsEUYow62e2RDYNfke7zHYBYTFy', 'TmQzW4mmYynk3ZOVskmJj9vmlkzyUwCIirTjYG8JH6TddWc2HhqY7QlSInID', '2021-05-06 20:34:31', '2021-05-06 20:34:31'),
(14, 'lina', 'TMO', 0, 'default.jpg', 'lina@gmail.com', NULL, 'lina', '$2y$10$9Zqu06.V7HqV2ePM7jaQZuFWDGaMweHm9LUpxPh/2i2plpNY.YTxy', '2bTOt3xlf5R2ybnmef3CISgP3sXNB3jLi4mQkf38qPvcJwBxznuso9nMnhmz', '2021-05-06 20:35:06', '2021-05-06 20:35:06'),
(15, 'regina', 'customer', 0, 'default.jpg', 'regina@gmail.com', NULL, 'regina', '$2y$10$vb8D.5NGdkrwcA2pS42izuB6Y0jwJyj0J/pCKfuaJr0MNCMrtYPQ2', 'qbMBmErpua3kZlUhAB8ceAsd9BwrtUhmPdmlyv5hRT0SbpD6rCc9K88TJ8Ot', '2021-05-06 20:36:08', '2021-05-06 20:36:08'),
(16, 'ara', 'customer', 0, 'default.jpg', 'ara@gmail.com', NULL, 'araku', '$2y$10$J65wFkz71g4cSwNdKzyhEeKmCR1eZ4Vvw/kEo4o0iPaqlUEAMz0Gy', 'oUt4VXinbXjsfTw8KVHc0s3ZaH6coz4d9EDVVH1vZz9ZosTEKaeX2CRaOwBL', '2021-05-06 20:55:20', '2021-05-06 20:55:20'),
(17, 'prasetyo', 'asisten manager', 0, 'default.jpg', 'prasetyo@gmail.com', NULL, 'prasetyo', '$2y$10$ubodxIwuA5k5kHruo4OvgeFsgJCfRKxUxBFiyT9oi0KZ7/VbBVjS2', 'XYjenKEHM26zYiJGfmJmBa62jPe57azL2fcotUAFo7rd5GkulF4sqMkmtxQl', '2021-05-06 20:56:47', '2021-05-06 20:56:47'),
(18, 'boris', 'TMO', 1, 'default.jpg', 'boris@gmail.com', NULL, 'boris', '$2y$10$vlvjuc6ueAPfr.R4xzo/Iel9rFpDEpossn0zq0jaTYzWfO9WO2cxO', 'MsunkzodOKUhAr7chOdgjSm4to6u82nxYp935WMwUTnQV1ghsw6qvHU8KAyz', '2021-05-06 20:57:28', '2021-05-06 21:21:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supply_systems`
--
ALTER TABLE `supply_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply_systems`
--
ALTER TABLE `supply_systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
