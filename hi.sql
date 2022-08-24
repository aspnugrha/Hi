-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2022 pada 17.45
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `aktif` enum('y','t') NOT NULL,
  `role` enum('superadmin','admin','user') NOT NULL,
  `level` int(2) NOT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `bio` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `user`, `pass`, `email`, `hp`, `aktif`, `role`, `level`, `foto`, `bio`, `created_at`, `updated_at`) VALUES
(4, 'user1', '$2y$10$o6Lis62WpAO56eBnXkpaT.DWyw33pXGzb/r8rfGX.04fsDxGa3UrO', 'user1@gmail.com', NULL, 'y', 'user', 3, NULL, NULL, '2022-08-12 08:37:25', '2022-08-12 08:37:25'),
(6, 'user3', '$2y$10$DcbdM77j.tO0go5zSA32BO5q43AE5Yo7Ny9olNfRqpDRsEjYrb3z2', 'user3@gmail.com', NULL, 'y', 'user', 3, NULL, NULL, '2022-08-12 08:40:39', '2022-08-12 08:40:39'),
(7, 'user2', '$2y$10$8l2TxinkaenYVyvUMn9Th.gUQjTWgFdFRNnA23r0wT.Tny2/yEanu', 'user2@gmail.com', NULL, 'y', 'user', 3, NULL, NULL, '2022-08-14 22:38:46', '2022-08-14 22:38:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pesan`
--

CREATE TABLE `data_pesan` (
  `id` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `dari` int(11) NOT NULL,
  `pesan` text,
  `file` varchar(30) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `status` enum('terkirim','dibaca','dihapus') NOT NULL COMMENT 'terkirim, dibaca, dihapus',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pesan`
--

INSERT INTO `data_pesan` (`id`, `id_pesan`, `dari`, `pesan`, `file`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'hallo', NULL, NULL, 'dibaca', '2022-08-14 14:46:45', '2022-08-14 20:24:44'),
(2, 3, 6, 'hallo juga mas', NULL, NULL, 'dibaca', '2022-08-14 20:27:58', '2022-08-14 20:33:46'),
(3, 3, 6, 'lagi ngapain?', NULL, NULL, 'dibaca', '2022-08-14 20:43:17', '2022-08-14 20:45:56'),
(4, 3, 4, 'lagi diem aja,', NULL, NULL, 'dibaca', '2022-08-14 20:43:33', '2022-08-14 20:49:49'),
(5, 3, 4, 'kalo kamu?', NULL, NULL, 'dibaca', '2022-08-14 20:43:49', '2022-08-14 20:49:49'),
(6, 3, 4, 'sama, lagi diem', NULL, NULL, 'dibaca', '2022-08-14 20:44:08', '2022-08-14 20:49:49'),
(7, 3, 4, 'yah malah offline', NULL, NULL, 'dibaca', '2022-08-14 20:46:36', '2022-08-14 20:49:49'),
(8, 3, 6, 'ini aktif', NULL, NULL, 'dibaca', '2022-08-14 20:50:08', '2022-08-14 20:50:11'),
(9, 3, 6, 'lagi ngageroh dulu bentar barusan', NULL, NULL, 'dibaca', '2022-08-14 20:50:35', '2022-08-14 20:50:40'),
(10, 3, 4, 'ish anak baikkk', NULL, NULL, 'dibaca', '2022-08-14 20:51:08', '2022-08-14 20:51:09'),
(11, 3, 6, 'engga ah biasa aja', NULL, NULL, 'dibaca', '2022-08-14 20:58:50', '2022-08-14 20:58:51'),
(12, 3, 4, 'baik cok wkwk', NULL, NULL, 'dibaca', '2022-08-14 20:59:06', '2022-08-14 20:59:07'),
(13, 3, 6, 'biasa aja anjirr wkwkwk', NULL, NULL, 'dibaca', '2022-08-14 20:59:21', '2022-08-14 20:59:26'),
(14, 3, 4, 'helogess', NULL, NULL, 'dibaca', '2022-08-14 21:08:35', '2022-08-14 21:08:37'),
(15, 3, 6, 'anjayyyyy', NULL, NULL, 'dibaca', '2022-08-14 21:08:45', '2022-08-14 21:08:45'),
(18, 3, 6, 'haiii', NULL, NULL, 'dibaca', '2022-08-14 22:04:03', '2022-08-14 22:05:08'),
(19, 3, 4, 'halo', NULL, NULL, 'dibaca', '2022-08-14 22:05:20', '2022-08-14 22:07:33'),
(20, 3, 6, 'lagi apa', NULL, NULL, 'dibaca', '2022-08-14 22:06:15', '2022-08-14 22:07:32'),
(21, 3, 6, 'askdnkajsnkdj', NULL, NULL, 'dibaca', '2022-08-14 22:07:40', '2022-08-14 22:13:19'),
(22, 3, 6, 'dasdasd', NULL, NULL, 'dibaca', '2022-08-14 22:13:31', '2022-08-14 22:14:32'),
(23, 3, 6, 'asdasd', NULL, NULL, 'dibaca', '2022-08-14 22:14:56', '2022-08-14 22:21:29'),
(24, 3, 6, 'kamu kenapa?', NULL, NULL, 'dibaca', '2022-08-14 22:21:51', '2022-08-14 22:22:08'),
(25, 3, 6, 'halo', NULL, NULL, 'dibaca', '2022-08-14 22:23:13', '2022-08-14 22:23:18'),
(26, 3, 4, 'ga kenapa2, keyboard aku error wkwk', NULL, NULL, 'dibaca', '2022-08-14 22:24:15', '2022-08-14 22:24:49'),
(27, 3, 6, 'oh iya', NULL, NULL, 'dibaca', '2022-08-14 22:25:02', '2022-08-14 22:25:06'),
(28, 3, 4, 'kamu lagi apa?', NULL, NULL, 'dibaca', '2022-08-14 22:25:13', '2022-08-14 22:25:50'),
(29, 3, 4, 'masih diem?', NULL, NULL, 'dibaca', '2022-08-14 22:25:42', '2022-08-14 22:25:50'),
(30, 3, 6, 'asdasd', NULL, NULL, 'dibaca', '2022-08-14 22:26:30', '2022-08-14 22:26:46'),
(31, 3, 6, 'asdasd', NULL, NULL, 'dibaca', '2022-08-14 22:26:57', '2022-08-14 22:27:07'),
(32, 3, 4, 'sekarang kamu yang error wkwkwk', NULL, NULL, 'dibaca', '2022-08-14 22:27:22', '2022-08-14 22:27:31'),
(33, 4, 7, 'hallo', NULL, NULL, 'terkirim', '2022-08-14 22:39:21', '2022-08-14 22:39:21'),
(34, 5, 7, 'haii', NULL, NULL, 'terkirim', '2022-08-14 22:39:40', '2022-08-14 22:39:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `id_akun2` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `id_akun`, `id_akun2`, `tgl`, `created_at`, `updated_at`) VALUES
(9, 4, 6, '0000-00-00 00:00:00', '2022-08-13 04:51:27', '2022-08-13 04:51:27'),
(10, 7, 6, '0000-00-00 00:00:00', '2022-08-14 10:39:06', '2022-08-14 10:39:06'),
(11, 7, 4, '0000-00-00 00:00:00', '2022-08-14 10:39:07', '2022-08-14 10:39:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktif_akun`
--

CREATE TABLE `log_aktif_akun` (
  `id` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL,
  `ip` varchar(25) DEFAULT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_aktif_akun`
--

INSERT INTO `log_aktif_akun` (`id`, `id_akun`, `status`, `ip`, `browser`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-12 09:12:53', '2022-08-12 09:12:53'),
(2, 4, 'aktif', NULL, NULL, NULL, '2022-08-12 09:23:42', '2022-08-12 09:23:42'),
(3, 4, 'aktif', NULL, NULL, NULL, '2022-08-12 19:03:07', '2022-08-12 19:03:07'),
(4, 4, 'nonaktif', NULL, NULL, NULL, '2022-08-13 00:21:32', '2022-08-13 00:21:32'),
(5, 4, 'aktif', NULL, NULL, NULL, '2022-08-13 00:21:40', '2022-08-13 00:21:40'),
(6, 4, 'aktif', NULL, NULL, NULL, '2022-08-13 04:30:42', '2022-08-13 04:30:42'),
(7, 6, 'aktif', NULL, NULL, NULL, '2022-08-13 04:52:46', '2022-08-13 04:52:46'),
(8, 4, 'aktif', NULL, NULL, NULL, '2022-08-14 02:04:18', '2022-08-14 02:04:18'),
(9, 4, 'nonaktif', NULL, NULL, NULL, '2022-08-14 04:50:20', '2022-08-14 04:50:20'),
(10, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 04:50:28', '2022-08-14 04:50:28'),
(11, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-14 18:50:58', '2022-08-14 18:50:58'),
(12, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 18:51:16', '2022-08-14 18:51:16'),
(13, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-14 18:51:28', '2022-08-14 18:51:28'),
(14, 4, 'aktif', NULL, NULL, NULL, '2022-08-14 18:51:36', '2022-08-14 18:51:36'),
(15, 4, 'nonaktif', NULL, NULL, NULL, '2022-08-14 20:04:23', '2022-08-14 20:04:23'),
(16, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 20:04:33', '2022-08-14 20:04:33'),
(17, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-14 20:28:50', '2022-08-14 20:28:50'),
(18, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 20:28:58', '2022-08-14 20:28:58'),
(19, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-14 20:32:26', '2022-08-14 20:32:26'),
(20, 4, 'aktif', NULL, NULL, NULL, '2022-08-14 20:32:40', '2022-08-14 20:32:40'),
(21, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 20:42:52', '2022-08-14 20:42:52'),
(22, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-14 20:44:38', '2022-08-14 20:44:38'),
(23, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 20:46:59', '2022-08-14 20:46:59'),
(24, 6, 'nonaktif', NULL, NULL, NULL, '2022-08-14 21:29:12', '2022-08-14 21:29:12'),
(25, 4, 'aktif', NULL, NULL, NULL, '2022-08-14 21:34:25', '2022-08-14 21:34:25'),
(26, 4, 'nonaktif', NULL, NULL, NULL, '2022-08-14 22:02:47', '2022-08-14 22:02:47'),
(27, 6, 'aktif', NULL, NULL, NULL, '2022-08-14 22:02:59', '2022-08-14 22:02:59'),
(28, 4, 'nonaktif', NULL, NULL, NULL, '2022-08-14 22:03:29', '2022-08-14 22:03:29'),
(29, 4, 'aktif', NULL, NULL, NULL, '2022-08-14 22:03:37', '2022-08-14 22:03:37'),
(30, 4, 'nonaktif', NULL, NULL, NULL, '2022-08-14 22:34:00', '2022-08-14 22:34:00'),
(31, 7, 'aktif', NULL, NULL, NULL, '2022-08-14 22:38:46', '2022-08-14 22:38:46'),
(32, 7, 'nonaktif', NULL, NULL, NULL, '2022-08-14 22:39:45', '2022-08-14 22:39:45'),
(33, 4, 'aktif', NULL, NULL, NULL, '2022-08-14 22:39:52', '2022-08-14 22:39:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_akun`
--

CREATE TABLE `log_akun` (
  `id` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `log` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_akun`
--

INSERT INTO `log_akun` (`id`, `id_akun`, `log`, `created_at`, `updated_at`) VALUES
(1, 4, 'baru saja mendaftar', '2022-08-12 08:37:25', '2022-08-12 08:37:25'),
(2, 5, 'baru saja mendaftar', '2022-08-12 08:39:58', '2022-08-12 08:39:58'),
(3, 6, 'baru saja mendaftar', '2022-08-12 08:40:39', '2022-08-12 08:40:39'),
(4, 4, 'menambahkan 4 ke kontak', '2022-08-12 20:58:11', '2022-08-12 20:58:11'),
(5, 4, 'menambahkan id_akun = 5 ke kontak', '2022-08-12 21:01:46', '2022-08-12 21:01:46'),
(6, 4, 'menghapus id_akun = 4 dari kontak', '2022-08-12 21:03:08', '2022-08-12 21:03:08'),
(7, 4, 'menghapus id_akun = 5 dari kontak', '2022-08-12 21:03:29', '2022-08-12 21:03:29'),
(8, 4, 'menambahkan id_akun = 4 ke kontak', '2022-08-12 21:03:35', '2022-08-12 21:03:35'),
(9, 4, 'menambahkan id_akun = 5 ke kontak', '2022-08-12 21:03:39', '2022-08-12 21:03:39'),
(10, 4, 'menambahkan id_akun = 6 ke kontak', '2022-08-12 21:03:42', '2022-08-12 21:03:42'),
(11, 4, 'menghapus id_akun = 4 dari kontak', '2022-08-12 21:04:48', '2022-08-12 21:04:48'),
(12, 4, 'menghapus id_akun = 5 dari kontak', '2022-08-12 21:04:50', '2022-08-12 21:04:50'),
(13, 4, 'menghapus id_akun = 6 dari kontak', '2022-08-12 21:04:51', '2022-08-12 21:04:51'),
(14, 4, 'menambahkan id_akun = 4 ke kontak', '2022-08-12 21:14:31', '2022-08-12 21:14:31'),
(15, 4, 'menambahkan id_akun = 5 ke kontak', '2022-08-12 23:53:38', '2022-08-12 23:53:38'),
(16, 4, 'menghapus id_akun = 5 dari kontak', '2022-08-12 23:53:50', '2022-08-12 23:53:50'),
(17, 4, 'menghapus id_akun = 4 dari kontak', '2022-08-13 00:24:33', '2022-08-13 00:24:33'),
(18, 4, 'menambahkan id_akun = 5 ke kontak', '2022-08-13 00:26:03', '2022-08-13 00:26:03'),
(19, 4, 'menambahkan id_akun = 6 ke kontak', '2022-08-13 04:51:27', '2022-08-13 04:51:27'),
(20, 4, 'mengirim pesan ke akun = 6', '2022-08-14 14:44:51', '2022-08-14 14:44:51'),
(21, 4, 'mengirim pesan ke akun = 6', '2022-08-14 14:46:45', '2022-08-14 14:46:45'),
(22, 6, 'mengirim pesan ke akun = 4', '2022-08-14 20:27:58', '2022-08-14 20:27:58'),
(23, 6, 'mengirim pesan ke akun = 4', '2022-08-14 20:43:17', '2022-08-14 20:43:17'),
(24, 4, 'mengirim pesan ke akun = 6', '2022-08-14 20:43:33', '2022-08-14 20:43:33'),
(25, 4, 'mengirim pesan ke akun = 6', '2022-08-14 20:43:49', '2022-08-14 20:43:49'),
(26, 4, 'mengirim pesan ke akun = 6', '2022-08-14 20:44:08', '2022-08-14 20:44:08'),
(27, 4, 'mengirim pesan ke akun = 6', '2022-08-14 20:46:36', '2022-08-14 20:46:36'),
(28, 6, 'mengirim pesan ke akun = 4', '2022-08-14 20:50:08', '2022-08-14 20:50:08'),
(29, 6, 'mengirim pesan ke akun = 4', '2022-08-14 20:50:35', '2022-08-14 20:50:35'),
(30, 4, 'mengirim pesan ke akun = 6', '2022-08-14 20:51:08', '2022-08-14 20:51:08'),
(31, 6, 'mengirim pesan ke akun = 4', '2022-08-14 20:58:50', '2022-08-14 20:58:50'),
(32, 4, 'mengirim pesan ke akun = 6', '2022-08-14 20:59:06', '2022-08-14 20:59:06'),
(33, 6, 'mengirim pesan ke akun = 4', '2022-08-14 20:59:21', '2022-08-14 20:59:21'),
(34, 4, 'mengirim pesan ke akun = 6', '2022-08-14 21:08:35', '2022-08-14 21:08:35'),
(35, 6, 'mengirim pesan ke akun = 4', '2022-08-14 21:08:45', '2022-08-14 21:08:45'),
(36, 4, 'mengirim pesan ke akun = 6', '2022-08-14 21:09:01', '2022-08-14 21:09:01'),
(37, 6, 'mengirim pesan ke akun = 4', '2022-08-14 21:09:22', '2022-08-14 21:09:22'),
(38, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:04:03', '2022-08-14 22:04:03'),
(39, 4, 'mengirim pesan ke akun = 6', '2022-08-14 22:05:20', '2022-08-14 22:05:20'),
(40, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:06:15', '2022-08-14 22:06:15'),
(41, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:07:40', '2022-08-14 22:07:40'),
(42, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:13:31', '2022-08-14 22:13:31'),
(43, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:14:56', '2022-08-14 22:14:56'),
(44, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:21:51', '2022-08-14 22:21:51'),
(45, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:23:13', '2022-08-14 22:23:13'),
(46, 4, 'mengirim pesan ke akun = 6', '2022-08-14 22:24:15', '2022-08-14 22:24:15'),
(47, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:25:02', '2022-08-14 22:25:02'),
(48, 4, 'mengirim pesan ke akun = 6', '2022-08-14 22:25:13', '2022-08-14 22:25:13'),
(49, 4, 'mengirim pesan ke akun = 6', '2022-08-14 22:25:42', '2022-08-14 22:25:42'),
(50, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:26:30', '2022-08-14 22:26:30'),
(51, 6, 'mengirim pesan ke akun = 4', '2022-08-14 22:26:57', '2022-08-14 22:26:57'),
(52, 4, 'mengirim pesan ke akun = 6', '2022-08-14 22:27:22', '2022-08-14 22:27:22'),
(53, 7, 'baru saja mendaftar', '2022-08-14 22:38:46', '2022-08-14 22:38:46'),
(54, 7, 'menambahkan id_akun = 6 ke kontak', '2022-08-14 10:39:06', '2022-08-14 10:39:06'),
(55, 7, 'menambahkan id_akun = 4 ke kontak', '2022-08-14 10:39:07', '2022-08-14 10:39:07'),
(56, 7, 'mengirim pesan ke akun = 4', '2022-08-14 22:39:21', '2022-08-14 22:39:21'),
(57, 7, 'mengirim pesan ke akun = 6', '2022-08-14 22:39:40', '2022-08-14 22:39:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `id_akun1` int(11) NOT NULL,
  `id_akun2` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `id_akun1`, `id_akun2`, `tgl`, `created_at`, `updated_at`) VALUES
(3, 4, 6, '2022-08-13 16:51:32', '2022-08-13 16:51:32', '2022-08-13 16:51:32'),
(4, 7, 4, '2022-08-14 22:39:14', '2022-08-14 22:39:14', '2022-08-14 22:39:14'),
(5, 7, 6, '2022-08-14 22:39:35', '2022-08-14 22:39:35', '2022-08-14 22:39:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pesan`
--
ALTER TABLE `data_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_aktif_akun`
--
ALTER TABLE `log_aktif_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_akun`
--
ALTER TABLE `log_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `data_pesan`
--
ALTER TABLE `data_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `log_aktif_akun`
--
ALTER TABLE `log_aktif_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `log_akun`
--
ALTER TABLE `log_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
