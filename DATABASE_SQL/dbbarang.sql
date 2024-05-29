-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2024 pada 14.10
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbarang`
--

CREATE TABLE `tbarang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `deskripsi_barang` text NOT NULL,
  `harga_beli` float NOT NULL,
  `harga_jual` float NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `supplier_barang` varchar(100) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbarang`
--

INSERT INTO `tbarang` (`id_barang`, `kode_barang`, `nama_barang`, `kategori_barang`, `deskripsi_barang`, `harga_beli`, `harga_jual`, `stok_barang`, `supplier_barang`, `tanggal_masuk`) VALUES
(1, '001', 'Danilla tshirt', 'Baju', 'Lorem', 456, 500, 50, 'Gajah Jaya', '2024-05-22'),
(2, '002', 'Vans', 'Sepatu', 'Vans old 1998', 1.199, 1.6, 7, 'Gbtn Jakarta Utara', '2024-05-24'),
(3, '003', 'Hoddie Hello World', 'Hoddie', 'Warna Hitam & Putih', 399, 499, 19, 'Multi Ck', '2024-05-24'),
(4, '004', 'Bata', 'Sendal', 'Sendal Kulit Warna Coklat', 156, 218, 300, 'Bata KO', '2024-05-24'),
(5, '005', 'Palazzo', 'Tas Ransel', 'Lorem', 98, 130, 200, 'Khhs Jepara', '2024-05-24'),
(6, '006', 'Hefand', 'Tas ', 'Tas Slempang', 49, 98, 200, 'Hanbag Chacuo', '2024-05-24'),
(7, '007', 'Buffback', 'tas', 'Handbag Latto', 38, 79, 250, 'Puuch MH', '2024-05-24'),
(8, '008', 'Retro', 'Baju', 'Kaos Retro Pria', 76, 120, 50, 'Mc42 Fashion', '2024-05-24'),
(9, '009', 'Tshirt Horse', 'Baju', 'Lorem', 86, 149, 70, 'Anm Official Shop', '2024-05-24'),
(10, '010', 'Whyz.Ltd', 'Hoddie', 'Sweater Oversize Jaket', 189, 310, 30, 'L Society', '2024-05-24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbarang`
--
ALTER TABLE `tbarang`
  ADD PRIMARY KEY (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
