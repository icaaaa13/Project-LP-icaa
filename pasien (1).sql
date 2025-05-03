-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2025 pada 17.46
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
-- Database: `dbpuskesmas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tmp_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `kode`, `nama`, `tmp_lahir`, `tgl_lahir`, `gender`, `kelurahan`, `email`) VALUES
(1, '90', 'Nur Indah', 'Jakarta', '2006-05-13', 'P', 'Sangia', 'indah123@gmail.com'),
(3, '900', 'Al hijir', 'Tanggerang', '2004-01-26', 'L', 'Srengseng sawah', 'alhijir23@gmail.com'),
(5, '50', 'Putri aprillia', 'bekasi', '2004-04-13', 'P', 'Bojong jaya', 'aprilliput13@gmail.com'),
(6, '65', 'Aqbil qintar', 'Bogor', '1999-06-21', 'L', 'cimanggis', 'aqbill231@gmail.com'),
(10, '5300', 'Cinta melati', 'Bima', '2002-01-19', 'P', 'Lenteng agung', 'cintmlt12@gmail.com'),
(15, '123545', 'Alifa fazilatun nisa', 'kupang', '2006-01-31', 'P', 'Beji', 'alifzltn13@gmail.com'),
(20, '445', 'aditya sanjaya', 'Gorontalo', '2007-08-28', 'L', 'baubau', 'adtyasnjy@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
