-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2017 at 01:14 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uid` int(11) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nm_admin` varchar(50) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uid`, `foto`, `username`, `password`, `nm_admin`, `email_admin`, `no_hp`, `tanggal`) VALUES
(6, 'admin_1488450248.jpg', 'akbar', 'akbar', 'Muchamad Akbar Nurul Adzan', 'akbarshop835@gmail.com', '085742411013', '0000-00-00 00:00:00'),
(7, 'admin_1488450498.jpg', 'reza', 'reza', 'Nurreza Adi S', 'reza@gmail.com', '+62 896-9409', '0000-00-00 00:00:00'),
(8, 'admin_1488450609.jpg', 'harits', 'harits', 'Harits Nala Barun', 'harits@gmail.com', '+62 819-3539', '0000-00-00 00:00:00'),
(9, 'admin_1488450663.jpg', 'didik', 'didik', 'Didik Tri S Handika', 'didik@gmail.com', '+62 822-2011', '0000-00-00 00:00:00'),
(10, 'admin_1488450712.jpg', 'dicky', 'dicky', 'Dicky Nugroho', 'dicky@gmail.com', '+62 857-2704', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `buat_acara`
--

CREATE TABLE `buat_acara` (
  `id_acara` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_kategori` int(20) NOT NULL,
  `judul_acara` varchar(50) NOT NULL,
  `desk_acara` varchar(100) NOT NULL,
  `gmb_poster` varchar(50) NOT NULL,
  `id_bid` int(20) NOT NULL,
  `id_prov` int(20) NOT NULL,
  `id_kota` int(20) NOT NULL,
  `tgl_acara` date NOT NULL,
  `tgl_exp` date NOT NULL,
  `harga` varchar(30) NOT NULL,
  `kontak` varchar(20) NOT NULL,
  `no_rek` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buat_acara`
--

INSERT INTO `buat_acara` (`id_acara`, `id_user`, `id_kategori`, `judul_acara`, `desk_acara`, `gmb_poster`, `id_bid`, `id_prov`, `id_kota`, `tgl_acara`, `tgl_exp`, `harga`, `kontak`, `no_rek`, `alamat`, `tgl_update`) VALUES
(1, 1, 2, 'jsakdjlkasjdlsa', 'jaksjdklasjdlksajl', 'jjhdjshfjdsf.jpg', 3, 14, 1, '2017-03-17', '2017-03-20', '50000', '654654646', '3424324234324', 'fdgdffdgdfgfdgfdgfdg', '2017-03-17 05:28:57'),
(2, 2, 3, 'dfsfsdfsdfdsf', 'sdfdsfsdfsdfdsfds', 'sdfsdfdsfdfsf', 3, 11, 1, '2017-03-02', '2017-03-16', '2432432', '432423423423', '4324234234234', 'sdadgdgdgdagdgdgdg', '2017-03-17 03:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `master_bidang`
--

CREATE TABLE `master_bidang` (
  `id_bid` int(11) NOT NULL,
  `nm_bid` varchar(30) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bidang`
--

INSERT INTO `master_bidang` (`id_bid`, `nm_bid`, `tanggal`) VALUES
(3, 'Teknik Informatika', '2017-03-01 04:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `master_kat`
--

CREATE TABLE `master_kat` (
  `id_kat` int(11) NOT NULL,
  `nm_kat` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kat`
--

INSERT INTO `master_kat` (`id_kat`, `nm_kat`, `tanggal`) VALUES
(2, 'Seminar Internasional', '2017-03-01 04:25:17'),
(3, 'Seminar Nasional', '0000-00-00 00:00:00'),
(4, 'WorkShop', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `master_kota`
--

CREATE TABLE `master_kota` (
  `id_kota` int(11) NOT NULL,
  `nm_kota` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kota`
--

INSERT INTO `master_kota` (`id_kota`, `nm_kota`, `tanggal`) VALUES
(1, 'Semarang', '2017-03-13 09:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `master_prov`
--

CREATE TABLE `master_prov` (
  `id_prov` int(11) NOT NULL,
  `nm_prov` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_prov`
--

INSERT INTO `master_prov` (`id_prov`, `nm_prov`, `tanggal`) VALUES
(1, 'Aceh', '2017-03-01 07:45:52'),
(2, 'Sumatera Utara', '0000-00-00 00:00:00'),
(3, 'Sumatera Barat', '0000-00-00 00:00:00'),
(4, 'Riau', '0000-00-00 00:00:00'),
(5, 'Kepulauan Riau', '0000-00-00 00:00:00'),
(6, 'Kepulauan Bangka-Belitung', '0000-00-00 00:00:00'),
(7, 'Jambi', '0000-00-00 00:00:00'),
(8, 'Bengkulu', '0000-00-00 00:00:00'),
(9, 'Sumatera Selatan', '0000-00-00 00:00:00'),
(11, 'Banten', '0000-00-00 00:00:00'),
(12, 'DKI Jakarta', '0000-00-00 00:00:00'),
(13, 'Jawa Barat', '0000-00-00 00:00:00'),
(14, 'Jawa Tengah', '0000-00-00 00:00:00'),
(15, 'Daerah Istimewa Yogyakarta  ', '0000-00-00 00:00:00'),
(16, 'Jawa Timur', '0000-00-00 00:00:00'),
(17, 'Bali', '0000-00-00 00:00:00'),
(18, 'Nusa Tenggara Barat', '0000-00-00 00:00:00'),
(19, 'Nusa Tenggara Timur', '0000-00-00 00:00:00'),
(20, 'Kalimantan Barat', '0000-00-00 00:00:00'),
(21, 'Kalimantan Tengah', '0000-00-00 00:00:00'),
(22, 'Kalimantan Selatan', '0000-00-00 00:00:00'),
(23, 'Kalimantan Timur', '0000-00-00 00:00:00'),
(24, 'Kalimantan Utara', '0000-00-00 00:00:00'),
(25, 'Gorontalo', '0000-00-00 00:00:00'),
(26, 'Sulawesi Selatan', '0000-00-00 00:00:00'),
(27, 'Sulawesi Tenggara', '0000-00-00 00:00:00'),
(28, 'Sulawesi Tengah', '0000-00-00 00:00:00'),
(29, 'Sulawesi Utara', '0000-00-00 00:00:00'),
(30, 'Sulawesi Barat', '0000-00-00 00:00:00'),
(31, 'Maluku', '0000-00-00 00:00:00'),
(32, 'Maluku Utara', '0000-00-00 00:00:00'),
(33, 'Papua Barat', '0000-00-00 00:00:00'),
(34, 'Papua', '0000-00-00 00:00:00'),
(35, 'jatengvdwe', '2017-03-03 13:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `idp` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_acara` int(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `metode_bayar` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_psn` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `isi` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_client`
--

CREATE TABLE `user_client` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `gmb_user` varchar(50) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_client`
--

INSERT INTO `user_client` (`id_user`, `email_user`, `password`, `nm_user`, `gmb_user`, `no_hp`, `tanggal`) VALUES
(2, 'akbar@gmail.com', 'akbar', 'akbarzen', 'akbar.jpg', 345454353, '2017-03-16 15:01:25'),
(3, 'akbar', 'keren', 'akbar', 'gambarku.jpg', 0, '2017-03-18 00:04:17'),
(4, 'akbarr', 'akbar', 'akbar', 'gambarku.jpg', 987654321, '2017-03-17 23:51:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `buat_acara`
--
ALTER TABLE `buat_acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indexes for table `master_bidang`
--
ALTER TABLE `master_bidang`
  ADD PRIMARY KEY (`id_bid`);

--
-- Indexes for table `master_kat`
--
ALTER TABLE `master_kat`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `master_kota`
--
ALTER TABLE `master_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `master_prov`
--
ALTER TABLE `master_prov`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_psn`);

--
-- Indexes for table `user_client`
--
ALTER TABLE `user_client`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `buat_acara`
--
ALTER TABLE `buat_acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_bidang`
--
ALTER TABLE `master_bidang`
  MODIFY `id_bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `master_kat`
--
ALTER TABLE `master_kat`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_kota`
--
ALTER TABLE `master_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `master_prov`
--
ALTER TABLE `master_prov`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_psn` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_client`
--
ALTER TABLE `user_client`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
