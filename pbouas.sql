-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2023 pada 07.26
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbouas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(30) DEFAULT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(5) NOT NULL,
  `stok_min` int(5) NOT NULL,
  `diskon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `satuan`, `harga`, `harga_beli`, `stok`, `stok_min`, `diskon`) VALUES
('0012', 'Piston', 'Buah', 550000, 475000, 5, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `djual`
--

CREATE TABLE `djual` (
  `no_jual` varchar(10) NOT NULL,
  `kd_brg` char(6) NOT NULL,
  `harga_jual` float NOT NULL,
  `jml_jual` int(11) NOT NULL,
  `diskon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `djual`
--

INSERT INTO `djual` (`no_jual`, `kd_brg`, `harga_jual`, `jml_jual`, `diskon`) VALUES
('14', '0006', 15000, 2, 0),
('15', '0007', 13000, 5, 0),
('16', '0012', 550000, 4, 0),
('21', '0012', 550000, 2, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `no_jual` varchar(10) NOT NULL,
  `kd_kons` char(6) NOT NULL,
  `tgl_jual` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`no_jual`, `kd_kons`, `tgl_jual`) VALUES
('', 'REG001', '2023-06-19'),
('10', 'VIP001', '2023-06-20'),
('11', 'REG001', '2023-06-20'),
('12', 'REG001', '2023-06-20'),
('13', 'REG001', '2023-06-20'),
('14', 'REG001', '2023-06-20'),
('15', 'VIP001', '2023-06-26'),
('16', 'VIP001', '2023-07-04'),
('17', 'REG001', '2023-07-04'),
('18', 'REG001', '2023-07-04'),
('19', 'REG001', '2023-07-04'),
('2', 'REG001', '2023-06-19'),
('20', 'REG001', '2023-07-04'),
('21', 'VIP001', '2023-07-04'),
('3', 'VIP001', '2023-06-19'),
('4', 'REG001', '2023-06-19'),
('5', 'REG001', '2023-06-19'),
('6', 'VIP001', '2023-06-19'),
('7', 'REG001', '2023-06-19'),
('8', 'VIP001', '2023-06-20'),
('9', 'REG001', '2023-06-20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_kons` varchar(6) NOT NULL,
  `nm_kons` varchar(30) NOT NULL,
  `alm_kons` varchar(50) NOT NULL,
  `kota_kons` varchar(20) NOT NULL,
  `kd_pos` varchar(5) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `konsumen`
--

INSERT INTO `konsumen` (`kd_kons`, `nm_kons`, `alm_kons`, `kota_kons`, `kd_pos`, `phone`, `email`) VALUES
('REG001', 'Joko Susilo', 'Jalan Pelan Banyak Anak', 'Jombang', '1234', '0812345678', 'joko@gmail.com'),
('VIP001', 'R. Danny Oka', 'Jalan-jalan Yuk', 'Semarang', '5758', '0851234567', 'danny@dinus.ac.id');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`no_jual`);

--
-- Indeks untuk tabel `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kd_kons`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
