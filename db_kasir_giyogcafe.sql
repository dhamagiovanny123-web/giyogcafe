-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 03 Des 2025 pada 05.42
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir_giyogcafe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin123', 'Administrator'),
(2, 'gio', 'admin123', 'giovanny');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `detail_id` int(11) NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`detail_id`, `penjualan_id`, `produk_id`, `jumlah_produk`, `subtotal`) VALUES
(1, 1, 3, 3, 45000.00),
(2, 1, 1, 3, 51000.00),
(3, 2, 3, 1, 15000.00),
(4, 2, 1, 1, 17000.00),
(5, 3, 3, 5, 75000.00),
(6, 3, 1, 2, 34000.00),
(7, 4, 5, 1, 10000.00),
(8, 4, 4, 1, 5000.00),
(9, 5, 4, 1, 5000.00),
(10, 6, 5, 3, 30000.00),
(11, 6, 1, 3, 51000.00),
(12, 7, 5, 1, 10000.00),
(13, 7, 1, 1, 17000.00),
(14, 8, 5, 1, 10000.00),
(15, 9, 2, 1, 10000.00),
(16, 9, 4, 1, 5000.00),
(17, 9, 5, 1, 10000.00),
(18, 9, 1, 1, 17000.00),
(19, 10, 5, 1, 10000.00),
(20, 10, 4, 1, 5000.00),
(21, 10, 1, 1, 17000.00),
(22, 10, 3, 7, 105000.00),
(23, 11, 1, 2, 34000.00),
(24, 12, 1, 1, 17000.00),
(25, 12, 5, 1, 10000.00),
(26, 12, 4, 1, 5000.00),
(27, 12, 3, 1, 15000.00),
(28, 13, 3, 2, 30000.00),
(29, 13, 1, 1, 17000.00),
(30, 14, 1, 1, 17000.00),
(31, 15, 2, 1, 10000.00),
(32, 15, 4, 1, 5000.00),
(33, 15, 5, 1, 10000.00),
(34, 15, 1, 1, 17000.00),
(35, 15, 7, 1, 12000.00),
(36, 15, 6, 1, 10000.00),
(37, 15, 9, 1, 13000.00),
(38, 15, 3, 1, 15000.00),
(39, 15, 8, 1, 23000.00),
(40, 16, 1, 1, 17000.00),
(41, 16, 5, 1, 10000.00),
(42, 17, 1, 1, 17000.00),
(43, 18, 7, 1, 12000.00),
(44, 18, 5, 2, 20000.00),
(45, 18, 4, 1, 5000.00),
(46, 18, 9, 1, 13000.00),
(47, 18, 3, 2, 30000.00),
(48, 19, 6, 11, 110000.00),
(49, 20, 1, 1, 17000.00),
(50, 20, 7, 1, 12000.00),
(51, 21, 4, 1, 5000.00),
(52, 22, 4, 2, 10000.00),
(53, 22, 5, 1, 10000.00),
(54, 23, 5, 1, 10000.00),
(55, 23, 1, 1, 17000.00),
(56, 24, 1, 1, 17000.00),
(57, 24, 5, 1, 10000.00),
(58, 25, 7, 1, 12000.00),
(59, 25, 5, 1, 10000.00),
(60, 25, 1, 1, 17000.00),
(61, 25, 3, 1, 15000.00),
(62, 25, 8, 1, 23000.00),
(63, 26, 7, 1, 12000.00),
(64, 26, 1, 1, 17000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hold_transaction`
--

CREATE TABLE `hold_transaction` (
  `hold_id` int(11) NOT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `cart_data` text NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `icon` varchar(10) DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama_kategori`, `icon`) VALUES
(1, 'Makanan', '🍚'),
(2, 'Minuman', '☕'),
(3, 'Snack', '🍟'),
(4, 'Lainnya', '📦');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `nomor_telepon` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `nama_pelanggan`, `nomor_telepon`, `alamat`) VALUES
(1, 'dhama giovanny', '081232891871', 'paringan'),
(2, 'david', '081232891865', 'kk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `tanggal_penjualan` datetime NOT NULL DEFAULT current_timestamp(),
  `total_harga` decimal(10,2) NOT NULL,
  `diskon` decimal(10,2) DEFAULT 0.00,
  `ppn` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL,
  `metode_pembayaran` enum('cash','qris') NOT NULL DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`penjualan_id`, `pelanggan_id`, `tanggal_penjualan`, `total_harga`, `diskon`, `ppn`, `grand_total`, `metode_pembayaran`) VALUES
(1, NULL, '2025-12-01 11:40:47', 96000.00, 0.00, 0.00, 96000.00, 'cash'),
(2, NULL, '2025-12-01 11:42:15', 32000.00, 0.00, 0.00, 32000.00, 'cash'),
(3, NULL, '2025-12-01 11:49:29', 109000.00, 0.00, 0.00, 109000.00, 'cash'),
(4, NULL, '2025-12-01 12:24:36', 15000.00, 0.00, 0.00, 15000.00, 'cash'),
(5, NULL, '2025-12-01 12:49:10', 5000.00, 0.00, 0.00, 5000.00, 'cash'),
(6, NULL, '2025-12-01 12:49:31', 81000.00, 0.00, 0.00, 81000.00, 'cash'),
(7, NULL, '2025-12-01 12:54:52', 27000.00, 0.00, 0.00, 27000.00, 'cash'),
(8, NULL, '2025-12-01 12:58:51', 10000.00, 0.00, 0.00, 10000.00, 'cash'),
(9, NULL, '2025-12-01 12:59:12', 42000.00, 0.00, 0.00, 42000.00, 'qris'),
(10, NULL, '2025-12-01 13:01:51', 137000.00, 0.00, 0.00, 137000.00, 'cash'),
(11, NULL, '2025-12-01 13:02:10', 34000.00, 0.00, 0.00, 34000.00, 'qris'),
(12, NULL, '2025-12-01 13:18:30', 47000.00, 0.00, 0.00, 47000.00, 'cash'),
(13, NULL, '2025-12-01 13:18:46', 47000.00, 0.00, 0.00, 47000.00, 'qris'),
(14, NULL, '2025-12-01 13:27:48', 17000.00, 0.00, 0.00, 17000.00, 'cash'),
(15, NULL, '2025-12-01 13:29:54', 115000.00, 0.00, 0.00, 115000.00, 'cash'),
(16, NULL, '2025-12-01 13:38:23', 27000.00, 0.00, 0.00, 27000.00, 'cash'),
(17, NULL, '2025-12-01 13:42:05', 17000.00, 0.00, 0.00, 17000.00, 'cash'),
(18, NULL, '2025-12-03 09:05:35', 80000.00, 0.00, 0.00, 80000.00, 'cash'),
(19, NULL, '2025-12-03 10:32:14', 110000.00, 0.00, 0.00, 110000.00, 'cash'),
(20, NULL, '2025-12-03 10:33:13', 29000.00, 0.00, 0.00, 29000.00, 'cash'),
(21, NULL, '2025-12-03 10:34:11', 5000.00, 0.00, 0.00, 5000.00, 'qris'),
(22, NULL, '2025-12-03 11:27:14', 20000.00, 0.00, 0.00, 20000.00, 'cash'),
(23, NULL, '2025-12-03 11:27:29', 27000.00, 0.00, 0.00, 27000.00, 'qris'),
(24, NULL, '2025-12-03 11:29:55', 27000.00, 0.00, 0.00, 27000.00, 'qris'),
(25, NULL, '2025-12-03 11:30:09', 77000.00, 0.00, 0.00, 77000.00, 'cash'),
(26, 2, '2025-12-03 11:32:16', 29000.00, 0.00, 0.00, 29000.00, 'cash');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori_id` int(11) DEFAULT 1,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`produk_id`, `nama_produk`, `kategori_id`, `harga`, `stok`) VALUES
(1, 'Butterscotch', 1, 17000.00, 974),
(2, 'Americano', 1, 10000.00, 23),
(3, 'Pure Matcha', 1, 15000.00, 976),
(4, 'aqua', 1, 5000.00, 989),
(5, 'ayam', 1, 10000.00, 981),
(6, 'Ice cream', 1, 10000.00, 666),
(7, 'French Fries', 1, 12000.00, 994),
(8, 'Rice Bowl', 1, 23000.00, 451),
(9, 'Milk Shake', 1, 13000.00, 340);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `penjualan_id` (`penjualan_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indeks untuk tabel `hold_transaction`
--
ALTER TABLE `hold_transaction`
  ADD PRIMARY KEY (`hold_id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `hold_transaction`
--
ALTER TABLE `hold_transaction`
  MODIFY `hold_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `fk_detail_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`penjualan_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detail_produk` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`produk_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hold_transaction`
--
ALTER TABLE `hold_transaction`
  ADD CONSTRAINT `hold_transaction_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`pelanggan_id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_penjualan_pelanggan` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`pelanggan_id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
