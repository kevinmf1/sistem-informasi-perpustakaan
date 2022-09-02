-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(15, '1000', 'Aktif', '2022-06-23'),
(16, '1500', 'Tidak Aktif', '2022-06-23'),
(17, '2000', 'Tidak Aktif', '2022-06-23'),
(18, '2500', 'Tidak Aktif', '2022-06-23'),
(19, '3000', 'Tidak Aktif', '2022-06-23'),
(20, '3500', 'Tidak Aktif', '2022-06-23'),
(21, '4000', 'Tidak Aktif', '2022-06-23'),
(22, '4500', 'Tidak Aktif', '2022-06-23'),
(23, '5000', 'Tidak Aktif', '2022-06-23'),
(24, '5500', 'Tidak Aktif', '2022-06-23'),
(25, '6000', 'Tidak Aktif', '2022-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(8, 'BK008', 2, 1, '0', '132-123-234-231', '0', 'CARA MUDAH BELAJAR PEMROGRAMAN C++', 'INFORMATIKA BANDUNG', 'BUDI RAHARJO ', '2012', '<table class=\"table table-bordered\" style=\"background-color: rgb(255, 255, 255); width: 653px; color: rgb(51, 51, 51);\"><tbody><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Tipe Buku</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Kertas</td></tr><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Bahasa</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Indonesia</td></tr></tbody></table>', 23, '2019-11-23 11:49:57'),
(9, 'BK009', 4, 3, '0', '192-133-231', '0', 'Malin Kundang', 'Gresindo', 'Maulana Yusuf', '2015', '', 10, '2021-12-09 18:57:20'),
(10, 'BK0010', 2, 3, '0', '192-123-1233', '0', 'Kuasai Python dalam 7 Hari!', 'Gresindo', 'Andi Malik', '2020', '<p>Buku yang bisa anda pelajari untuk belajar bahasa Pemrograman Python dalam 7 hari.</p>', 15, '2021-12-14 13:35:13'),
(11, 'BK0011', 20, 14, '0', '1933-221-331', '0', 'Apa itu sedih?', 'Abc', 'Xyz', '2018', '<p>Not for sale</p><p><br></p>', 10, '2022-06-23 23:26:56'),
(12, 'BK0012', 25, 14, '0', '1933-13-313', '0', 'God of AI', 'Abc', 'Mr Robots', '2017', '', 2, '2022-06-23 23:27:38'),
(13, 'BK0013', 23, 14, '0', '1931-331-331', '0', 'Cara Menjadi Anak Twitter', 'Abc', 'Xyz', '2020', '', 10, '2022-06-23 23:30:30'),
(14, 'BK0014', 4, 14, '0', '1933-41-313', '0', 'Sedih? Jangan!', 'Abc', 'Mr Auu', '2011', '', 13, '2022-06-23 23:31:47'),
(15, 'BK0015', 26, 14, '0', '1913-4491-333', '0', 'Trik Cepat Mythic!', 'Abc', 'Xyz', '2021', '', 8, '2022-06-23 23:32:35'),
(16, 'BK0016', 26, 14, '0', '993-13-133', '0', 'Kiat anti galau!', 'Abc', 'Mr Rivv', '2019', '', 13, '2022-06-23 23:33:13'),
(17, 'BK0017', 22, 14, '0', '3993-1134-311', '0', 'Demi Tuhan Aku Ateis', 'Abc', 'Mr Aenjeaye', '2010', '', 15, '2022-06-23 23:34:38'),
(18, 'BK0018', 22, 14, '0', '4494-333-1334', '0', 'Tuhan Mengapa Aku LGBT', 'Abc', 'Mr Rivv', '2017', '', 13, '2022-06-23 23:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(3, 'PJ001', '0', 0, '2020-05-20'),
(6, 'PJ0012', '0', 0, '2021-12-09'),
(7, 'PJ0011', '0', 3, '2021-12-13'),
(8, 'PJ0018', '6000', 2, '2021-12-16'),
(9, 'PJ0013', '18818000', 9409, '2022-06-23'),
(10, 'PJ0026', '28224000', 9408, '2022-06-23'),
(11, 'PJ0015', '28221000', 9407, '2022-06-24'),
(12, 'PJ0019', '9407000', 9407, '2022-06-24'),
(13, 'PJ0020', '37636000', 9409, '2022-06-24'),
(14, 'PJ0033', '0', 0, '2022-06-24'),
(15, 'PJ0034', '0', 0, '2022-06-24'),
(16, 'PJ0050', '0', 0, '2022-06-24'),
(17, 'PJ0051', '0', 0, '2022-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Pemrograman'),
(3, 'Romantis'),
(4, 'Cerita Rakyat'),
(19, 'Pemrograman Android'),
(20, 'Pemrograman Web'),
(21, 'Fiksi Ilmiah'),
(22, 'Religi'),
(23, 'Cerita Pendek'),
(24, 'Fabel'),
(25, 'Kecerdasan Buatan'),
(26, 'Cinta Sedih');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(1, 'AG001', 'devis', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Devis', 'Solo', '2000-05-10', 'Laki-Laki', 'Yogyakarta', '081234567890', 'devis@gmail.com', '2019-11-20', 'user_1630303496.png'),
(2, 'AG002', 'andien', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Andien', 'Pati', '2002-06-22', 'Perempuan', 'Pati', '082123456789', 'Andienindrayani@gmail.com', '2021-08-30', 'user_1630303816.png'),
(5, 'AG003', 'kevin', '9d5e3ecdeb4cdb7acfd63075ae046672', 'Petugas', 'Kevin Malik Fajar', 'Banyumas', '2003-03-05', 'Laki-Laki', 'Banyumas', '081422939923', 'kevin@gmail.com', '2021-12-09', 'user_1639051118.jpg'),
(6, 'AG006', 'maulana', 'aff4b352312d5569903d88e0e68d3fbb', 'Anggota', 'Maulana Yusuf', 'Bangkalan', '2021-12-07', 'Laki-Laki', 'Bangkalan', '083131232321', 'maulana@gmail.com', '2021-12-09', 'user_1639051452.png'),
(7, 'AG007', 'harjaya', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Harjaya Sihombing', 'Mojokerto', '2002-06-04', 'Laki-Laki', 'Ds. Gajah No. 635, Palu 84943, NTB ', '083311341124', 'bancar20@widiastuti.web.id', '2022-06-23', 'user_1655985488.jpg'),
(8, 'AG008', 'harsanto', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Harsanto Wibowo (Male)', 'Bali', '2002-11-13', 'Laki-Laki', 'Jln. Ujung No. 854, Batu 96986, Bali \r\n', '0841211214453', 'halimah.harimurti@rahmawati.co.id', '2022-06-23', 'user_1656000284.jpg'),
(9, 'AG009', 'bagiya', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Bagiya Setiawan', 'Daerah Istimewa Yogyakarta', '2001-01-19', 'Laki-Laki', 'Jln. Imam No. 904, Metro 35027, DIY \r\n', '089655131121', 'sihombing.salsabila@yahoo.co.id', '2022-06-23', 'user_1656000746.jpg'),
(10, 'AG0010', 'maida', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Maida Rahmawati', 'Medan', '2002-06-18', 'Perempuan', 'Ki. Lembong No. 294, Medan 77326', '087812241131', 'titi49@zulaika.mil.id', '2022-06-23', 'user_1656000833.jpg'),
(11, 'AG0011', 'mutia1', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Mutia Purnawati', 'Sumatera Selatan', '2000-06-13', 'Perempuan', 'Ds. Lada No. 297, Padangpanjang 90496\r\n', '089644138831', 'harja.firmansyah@yahoo.com', '2022-06-23', 'user_1656001161.jpg'),
(12, 'AG0012', 'laras', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Laras Yolanda', 'Gorontalo', '1998-10-21', 'Perempuan', 'Kpg. Pacuan Kuda No. 205, Pangkal Pinang 23934, Gorontalo', '088311313345', 'gawati68@melani.desa.id', '2022-06-23', 'user_1656001252.jpg'),
(13, 'AG0013', 'nisa3', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Farhunnisa Handayani', 'Bima', '1999-11-12', 'Perempuan', 'Gg. Banceng Pondok No. 493, Bima 35999, JaTeng \r\n', '085611318832', 'eanggriawan@gmail.co.id', '2022-06-23', 'user_1656001412.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(8, 'PJ001', 'AG002', 'BK008', 'Di Kembalikan', '2020-05-19', 1, '2020-05-20', '2020-05-20'),
(11, 'PJ0011', 'AG002', 'BK008', 'Di Kembalikan', '2021-12-09', 1, '2021-12-10', '2021-12-13'),
(12, 'PJ0012', 'AG006', 'BK009', 'Di Kembalikan', '2021-12-09', 1, '2021-12-10', '2021-12-09'),
(13, 'PJ0013', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-13', 1, '2021-12-14', '2022-06-23'),
(14, 'PJ0013', 'AG002', 'BK008', 'Di Kembalikan', '2021-12-13', 1, '2021-12-14', '2022-06-23'),
(15, 'PJ0015', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-13', 4, '2021-12-17', '2022-06-24'),
(16, 'PJ0015', 'AG002', 'BK008', 'Di Kembalikan', '2021-12-13', 4, '2021-12-17', '2022-06-24'),
(17, 'PJ0015', 'AG002', 'BK008', 'Di Kembalikan', '2021-12-13', 4, '2021-12-17', '2022-06-24'),
(18, 'PJ0018', 'AG006', 'BK009', 'Di Kembalikan', '2021-12-13', 1, '2021-12-14', '2021-12-16'),
(19, 'PJ0019', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-16', 1, '2021-12-17', '2022-06-24'),
(22, 'PJ0020', 'AG002', 'BK008', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-24'),
(23, 'PJ0020', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-24'),
(24, 'PJ0020', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-24'),
(25, 'PJ0020', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-24'),
(30, 'PJ0026', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-23'),
(31, 'PJ0026', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-23'),
(32, 'PJ0026', 'AG002', 'BK009', 'Di Kembalikan', '2021-12-14', 1, '2021-12-15', '2022-06-23'),
(33, 'PJ0033', 'AG002', 'BK0017', 'Di Kembalikan', '2022-06-23', 3, '2022-06-26', '2022-06-24'),
(34, 'PJ0034', 'AG002', 'BK0017', 'Di Kembalikan', '2022-06-23', 5, '2022-06-28', '2022-06-24'),
(35, 'PJ0034', 'AG002', 'BK0018', 'Di Kembalikan', '2022-06-23', 5, '2022-06-28', '2022-06-24'),
(36, 'PJ0036', 'AG006', 'BK0015', 'Dipinjam', '2022-06-24', 7, '2022-07-01', '0'),
(37, 'PJ0037', 'AG008', 'BK0016', 'Dipinjam', '2022-06-24', 3, '2022-06-27', '0'),
(38, 'PJ0038', 'AG008', 'BK0016', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(39, 'PJ0038', 'AG008', 'BK0010', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(40, 'PJ0040', 'AG009', 'BK0016', 'Dipinjam', '2022-06-24', 6, '2022-06-30', '0'),
(41, 'PJ0040', 'AG009', 'BK0010', 'Dipinjam', '2022-06-24', 6, '2022-06-30', '0'),
(42, 'PJ0040', 'AG009', 'BK009', 'Dipinjam', '2022-06-24', 6, '2022-06-30', '0'),
(43, 'PJ0043', 'AG0010', 'BK0014', 'Dipinjam', '2022-06-24', 4, '2022-06-28', '0'),
(44, 'PJ0044', 'AG0013', 'BK0018', 'Dipinjam', '2022-06-24', 2, '2022-06-26', '0'),
(45, 'PJ0045', 'AG0013', 'BK0012', 'Dipinjam', '2022-06-24', 4, '2022-06-28', '0'),
(46, 'PJ0046', 'AG0011', 'BK0013', 'Dipinjam', '2022-06-24', 8, '2022-07-02', '0'),
(47, 'PJ0047', 'AG009', 'BK0015', 'Dipinjam', '2022-06-24', 4, '2022-06-28', '0'),
(48, 'PJ0048', 'AG0012', 'BK0011', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(49, 'PJ0049', 'AG0011', 'BK0014', 'Dipinjam', '2022-06-24', 7, '2022-07-01', '0'),
(50, 'PJ0050', 'AG002', 'BK0018', 'Di Kembalikan', '2022-06-24', 5, '2022-06-29', '2022-06-24'),
(51, 'PJ0051', 'AG002', 'BK0017', 'Di Kembalikan', '2022-06-24', 7, '2022-07-01', '2022-06-24'),
(52, 'PJ0052', 'AG002', 'BK0017', 'Dipinjam', '2022-06-24', 8, '2022-07-02', '0'),
(53, 'PJ0052', 'AG002', 'BK0018', 'Dipinjam', '2022-06-24', 8, '2022-07-02', '0'),
(54, 'PJ0054', 'AG002', 'BK0016', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(55, 'PJ0055', 'AG002', 'BK0015', 'Dipinjam', '2022-06-24', 6, '2022-06-30', '0'),
(56, 'PJ0056', 'AG002', 'BK0014', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(57, 'PJ0057', 'AG002', 'BK0013', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(58, 'PJ0058', 'AG002', 'BK0012', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(59, 'PJ0059', 'AG002', 'BK0011', 'Dipinjam', '2022-06-24', 6, '2022-06-30', '0'),
(60, 'PJ0060', 'AG002', 'BK0010', 'Dipinjam', '2022-06-24', 6, '2022-06-30', '0'),
(61, 'PJ0061', 'AG002', 'BK009', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(62, 'PJ0062', 'AG002', 'BK008', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0'),
(63, 'PJ0063', 'AG002', 'BK0017', 'Dipinjam', '2022-06-24', 5, '2022-06-29', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 11'),
(3, 'Rak Buku 10'),
(6, 'Rak Buku 9'),
(7, 'Rak Buku 8'),
(8, 'Rak Buku 7'),
(9, 'Rak Buku 6'),
(10, 'Rak Buku 5'),
(11, 'Rak Buku 4'),
(12, 'Rak Buku 3'),
(13, 'Rak Buku 2'),
(14, 'Rak Buku 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
