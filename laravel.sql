-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2023 pada 07.26
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensis`
--

CREATE TABLE `absensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` varchar(255) NOT NULL,
  `jam_selesai` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensis`
--

INSERT INTO `absensis` (`id`, `id_user`, `agenda`, `nama_ruangan`, `tanggal`, `jam_mulai`, `jam_selesai`, `created_at`, `updated_at`) VALUES
(2, 1, 'Rapat Koordinasi', 'Gedung MST', '2023-06-13', '12:00', '14:00', '2023-07-02 07:15:14', '2023-07-02 07:15:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_details`
--

CREATE TABLE `absensi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_absensi` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `ttd` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensi_details`
--

INSERT INTO `absensi_details` (`id`, `id_absensi`, `nip`, `nama`, `jabatan`, `ttd`, `created_at`, `updated_at`) VALUES
(1, 1, '123456789', 'John Doe', 'Manager', 'signature1', '2023-07-04 03:50:40', '2023-07-04 03:50:40'),
(2, 1, '987654321', 'Jane Smith', 'Supervisor', 'signature2', '2023-07-04 03:27:40', '2023-07-04 03:27:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2022_08_16_160210_create_peminjamen_table', 1),
(21, '2022_08_16_160931_create_ruangans_table', 1),
(22, '2022_08_16_161209_create_notulens_table', 1),
(23, '2022_08_16_161523_create_absensis_table', 1),
(24, '2022_08_16_161711_create_absensi_details_table', 1),
(41, '2023_07_04_094241_insert_absensis', 2),
(42, '2023_07_04_094701_insert_users', 2),
(43, '2023_07_04_100714_insert_absensis_details', 2),
(44, '2023_07_04_102314_insert_ruangans', 2),
(45, '2023_07_04_103112_create_peminjamen_table', 2),
(46, '2023_07_04_103112_insert_peminjamen', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notulens`
--

CREATE TABLE `notulens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_notulen` date NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `jam_mulai` varchar(255) NOT NULL,
  `jam_selesai` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `isi_notulen` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamen`
--

CREATE TABLE `peminjamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `tgl_booking` date NOT NULL,
  `jam_mulai` varchar(255) NOT NULL,
  `jam_selesai` varchar(255) NOT NULL,
  `jumlah_peserta` int(11) NOT NULL,
  `agenda` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_approv1` varchar(255) NOT NULL,
  `status_approv2` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjamen`
--

INSERT INTO `peminjamen` (`id`, `id_user`, `id_ruangan`, `tgl_booking`, `jam_mulai`, `jam_selesai`, `jumlah_peserta`, `agenda`, `status`, `status_approv1`, `status_approv2`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-06-13', '12:00', '14:00', 100, 'Rapat Koordinasi', 'Diverifikasi', 'Disetujui', 'Disetujui', NULL, '2023-06-12 13:07:07', '2023-06-12 13:13:35'),
(2, 1, 2, '2023-06-24', '13:00', '22:00', 350, 'Kongres Mahasiswa', 'Diverifikasi', 'Disetujui', 'Disetujui', NULL, '2023-07-03 00:54:23', '2023-07-03 00:56:40'),
(3, 1, 2, '2023-07-13', '12:09', '13:09', 150, 'test1', 'Ditolak', 'Ditolak', 'Ditolak', 'steril untuk uas', '2023-07-04 04:10:01', '2023-07-04 04:15:53'),
(4, 1, 4, '2023-08-12', '10:00', '12:00', 150, 'test 2', 'Ditolak', 'Ditolak', 'Ditolak', 'panas', '2023-07-04 04:19:18', '2023-07-04 04:20:28'),
(5, 1, 2, '2023-07-12', '08:00', '10:00', 60, 'test3', 'Diverifikasi', 'Menunggu', 'Menunggu', NULL, '2023-07-04 04:33:35', '2023-07-04 04:35:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `kapasitas` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangans`
--

INSERT INTO `ruangans` (`id`, `nama_ruangan`, `kapasitas`, `lokasi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gedung MST', '100', 'Teknik, Politeknik Negeri Semarang', NULL, '2023-06-12 12:32:16', '2023-07-02 07:09:03'),
(2, 'Ruang Serba Guna', '500', 'Tata Niaga, Politeknik Negeri Semarang', NULL, '2023-07-02 07:08:12', '2023-07-02 07:08:12'),
(3, 'Gedung Kerja Sama', '100', 'Politeknik Negeri Semarang', NULL, '2023-07-02 07:09:25', '2023-07-02 07:12:03'),
(4, 'Lapangan Hitam', '1000', 'Teknik, Politeknik Negeri Semarang', NULL, '2023-07-02 07:09:44', '2023-07-02 07:09:44'),
(5, 'Lapangan Hijau', '3000', 'Politeknik Negeri Semarang', NULL, '2023-07-02 07:10:03', '2023-07-02 07:10:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `notelp` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nip`, `username`, `email`, `password`, `nama`, `jabatan`, `notelp`, `jenis_kelamin`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '0000000000000000', 'pegawai', 'pegawai@gmail.com', '$2y$10$TOsx67c1qowD0lCRozMkZO4sWxHKmPhy9wtKzlBk35lVEQ47NfsRi', 'pegawai', 'pegawai', '088888', 'perempuan', 'Pegawai', NULL, NULL, NULL),
(2, '0000000000000000', 'admin', 'admin@gmail.com', '$2y$10$JnBTktWryo/98Bn1KGvkAOlu/qR3MUkQKP24njQSxpTYO3mSOJiFe', 'admin', 'admin', '088888', 'perempuan', 'Administrasi Umum', NULL, NULL, NULL),
(3, '0000000000000000', 'kabag', 'kabag@gmail.com', '$2y$10$jXqg8eSKDuwO6HLfZr7EieVJ16T7H0GmoWHwy0a.vBswiBJX.Po9i', 'kabag', 'kabag', '088888', 'perempuan', 'Kabag Umum', NULL, NULL, NULL),
(4, '0000000000000000', 'kasubbag', 'kasubbag@gmail.com', '$2y$10$tOZ6ECKy.t3BHOWKeyImzurtEAyd8ERx/Iby8Gd7V0CZ1FfoIiKTu', 'kasubbag', 'kasubbag', '088888', 'perempuan', 'Kasubbag Kepegawaian', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `absensi_details`
--
ALTER TABLE `absensi_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notulens`
--
ALTER TABLE `notulens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjamen`
--
ALTER TABLE `peminjamen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `absensi_details`
--
ALTER TABLE `absensi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `notulens`
--
ALTER TABLE `notulens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjamen`
--
ALTER TABLE `peminjamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
