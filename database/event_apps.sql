-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2017 at 06:35 PM
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
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nm_admin` varchar(50) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `tgl_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_bidang`
--

CREATE TABLE `master_bidang` (
  `id_bid` int(11) NOT NULL,
  `nm_bid` varchar(30) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_kat`
--

CREATE TABLE `master_kat` (
  `id_kat` int(11) NOT NULL,
  `nm_kat` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_kota`
--

CREATE TABLE `master_kota` (
  `id_kota` int(11) NOT NULL,
  `nm_kota` varchar(50) NOT NULL,
  `id_prov` int(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_prov`
--

CREATE TABLE `master_prov` (
  `id_prov` int(11) NOT NULL,
  `nm_prov` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `idp` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `metode_bayar` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_psn` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `isi` varchar(100) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `gmb_user` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buat_acara`
--
ALTER TABLE `buat_acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_bidang`
--
ALTER TABLE `master_bidang`
  MODIFY `id_bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_kat`
--
ALTER TABLE `master_kat`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_kota`
--
ALTER TABLE `master_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_prov`
--
ALTER TABLE `master_prov`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
