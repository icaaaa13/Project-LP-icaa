-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2025 pada 18.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

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
-- Struktur dari tabel `paramedik`
--

CREATE TABLE `paramedik` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kategori` enum('Dokteer','Perawat','Bidan') DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `unitkerja_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `paramedik`
--

INSERT INTO `paramedik` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telpon`, `alamat`, `unitkerja_id`) VALUES
(1, 'icaaa', 'P', 'Jakarta', '2006-05-13', 'Dokteer', '07267672543', 'Depok Margonda Jln.Stm mandiri, Musholah Nurul Ikhlas', 1),
(2, 'Cahyo', 'L', 'Palembang', '2013-03-19', 'Perawat', '5371874901', 'Muara enim jln.bunga putih no 14', 2),
(3, 'Puttri', 'P', 'Tanggerang', '2000-04-13', 'Bidan', '2356774985', 'Tanggerang jln. Melati no 45', 3),
(4, 'Muhamad', 'L', 'Bima', '2006-05-31', 'Dokteer', '2316789543', 'Bima jln lapangan putih no 29', 4),
(7, 'Istiqomah', 'P', 'Bali', '2004-01-26', 'Bidan', '123445670', 'Jln.Melati no 50', 6),
(8, 'Ikhwan', 'L', 'Bandung', '2001-08-12', 'Dokteer', '987654321', 'Jln.Maha agung no 08', 9),
(9, 'Alif', 'L', 'Bogor', '2005-02-05', 'Dokteer', '99006543214', 'jln margocity no 46', 10),
(10, 'Caca', 'P', 'Bekasi', '2005-07-25', 'Perawat', '000111425677', 'jln. lapangan putih no 60', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unitkerja_id` (`unitkerja_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `paramedik`
--
ALTER TABLE `paramedik`
  ADD CONSTRAINT `paramedik_ibfk_1` FOREIGN KEY (`unitkerja_id`) REFERENCES `unit_kerja` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
