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
-- Database: `gmedia_rawon`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id_about` int(11) NOT NULL,
  `judul_about` varchar(30) NOT NULL,
  `gambar_about` varchar(30) NOT NULL,
  `ket_about` varchar(1000) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id_about`, `judul_about`, `gambar_about`, `ket_about`, `tanggal`) VALUES
(1, 'About Us', 'img_1488862361.jpg', 'Rawon Surabaya Bu Marie dengan cita Rasa khas asli Surabaya, Menggunakan rempah-rempah dan bahan-bahan yang segar, sehingga menghasilkan cita rasa yang luar biasa.&nbsp;<br>Kunjungi kami di Jl. Ki Mangunsarkoro 15, Semarang. Bisa juga delivery order ', '2017-03-07 04:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `broadcast`
--

CREATE TABLE `broadcast` (
  `id_bc` int(11) NOT NULL,
  `id_promo` int(12) NOT NULL,
  `bc_ket` varchar(500) NOT NULL,
  `tgl_jadwal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `broadcast`
--

INSERT INTO `broadcast` (`id_bc`, `id_promo`, `bc_ket`, `tgl_jadwal`) VALUES
(7, 14, 'Ayo ayo buruan datang untuk menikmati , murahnya promo rawon surabaya', '2017-03-18'),
(10, 15, 'Ayo ayo buruan datang untuk menikmati , murahnya promo rawon surabaya', '2017-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `idc` int(11) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `facebook` varchar(30) NOT NULL,
  `instagram` varchar(30) NOT NULL,
  `web` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`idc`, `alamat`, `latitude`, `longitude`, `facebook`, `instagram`, `web`) VALUES
(1, 'Ventura Food Court  Jl. Ki Mangunsarkoro 15, Semarang', '-6.989553', '110.429289', 'RAWONHOLIC.SEMARANG', 'RAWONHOLIC.SEMARANG', 'rawonsurabaya.com');

-- --------------------------------------------------------

--
-- Table structure for table `favorit`
--

CREATE TABLE `favorit` (
  `idf` int(11) NOT NULL,
  `idm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorit`
--

INSERT INTO `favorit` (`idf`, `idm`) VALUES
(8, 48),
(9, 49);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `idg` int(11) NOT NULL,
  `nm_gambar` varchar(30) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`idg`, `nm_gambar`, `tanggal`) VALUES
(90, 'img_1488852346.jpg', '2017-03-07 02:05:47'),
(91, 'img_1488852357.jpg', '2017-03-07 02:05:57'),
(92, 'img_1488852371.jpg', '2017-03-07 02:06:11'),
(93, 'img_1488852380.jpg', '2017-03-07 02:06:20'),
(94, 'img_1488852388.jpg', '2017-03-07 02:06:28'),
(95, 'img_1488852397.jpg', '2017-03-07 02:06:37'),
(96, 'img_1488859734.png', '2017-03-07 04:08:55'),
(97, 'img_1488859740.png', '2017-03-07 04:09:01'),
(98, 'img_1488859746.png', '2017-03-07 04:09:06'),
(99, 'img_1488859753.png', '2017-03-07 04:09:13'),
(100, 'img_1488859758.png', '2017-03-07 04:09:18'),
(103, 'img_1488862361.jpg', '2017-03-07 04:52:41'),
(107, 'img_1489141338.jpg', '2017-03-10 10:22:19'),
(108, 'img_1489141349.jpg', '2017-03-10 10:22:30'),
(109, 'img_1489141358.jpg', '2017-03-10 10:22:38'),
(110, 'img_1489141372.jpg', '2017-03-10 10:22:53'),
(111, 'img_1489141387.jpg', '2017-03-10 10:23:07'),
(112, 'img_1489141394.jpg', '2017-03-10 10:23:15'),
(113, 'img_1489141402.jpg', '2017-03-10 10:23:23'),
(114, 'img_1489141410.jpg', '2017-03-10 10:23:30'),
(115, 'img_1489141425.jpg', '2017-03-10 10:23:46'),
(116, 'img_1489141446.jpg', '2017-03-10 10:24:06'),
(117, 'img_1489141457.jpg', '2017-03-10 10:24:18'),
(118, 'img_1489141467.jpg', '2017-03-10 10:24:27'),
(119, 'img_1489141474.jpg', '2017-03-10 10:24:34'),
(120, 'img_1489141499.jpg', '2017-03-10 10:25:00'),
(121, 'img_1489141525.jpg', '2017-03-10 10:25:25'),
(122, 'img_1489141531.jpg', '2017-03-10 10:25:31'),
(123, 'img_1489141537.jpg', '2017-03-10 10:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `gmb_menu`
--

CREATE TABLE `gmb_menu` (
  `id_gmb` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `gmb_menu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gmb_menu`
--

INSERT INTO `gmb_menu` (`id_gmb`, `idm`, `gmb_menu`) VALUES
(58, 49, 'img_1489141387.jpg'),
(59, 50, 'img_1489141525.jpg'),
(60, 51, 'img_1489141537.jpg'),
(63, 48, 'img_1489141402.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `gambar_info` varchar(30) NOT NULL,
  `ket_info` varchar(1000) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id_info`, `gambar_info`, `ket_info`, `tanggal`) VALUES
(1, 'img_1488852380.jpg', 'xzcxzcxzcxzc', '2017-03-09 09:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idk` int(11) NOT NULL,
  `nm_kategori` varchar(30) NOT NULL,
  `gmb_kategori` varchar(30) NOT NULL,
  `grup_kategori` varchar(30) NOT NULL,
  `harga_kategori` varchar(30) NOT NULL,
  `ket_kategori` varchar(1000) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_loc` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_loc`, `username`, `latitude`, `longitude`, `keterangan`, `tanggal`) VALUES
(1, 'akbar@gmail.com', '-9.998876765', '110.98928282', 'www.kelana.com/pictures/', '2017-03-17 08:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `manfaat`
--

CREATE TABLE `manfaat` (
  `id_m` int(11) NOT NULL,
  `judul_manfaat` varchar(30) NOT NULL,
  `gmb_manfaat` varchar(30) NOT NULL,
  `ket_manfaat` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manfaat`
--

INSERT INTO `manfaat` (`id_m`, `judul_manfaat`, `gmb_manfaat`, `ket_manfaat`) VALUES
(2, 'Jahe', 'img_1488859740.png', '<div>Jahe merupakan tanaman herba yang dipercaya masyarakat dapat mengatasi berbagai kondisi, mulai dari mual, batuk, nyeri otot hingga penanganan kanker. Jika ditinjau dari segi medis, jahe memiliki senyawa kimia yang dipercaya bisa menimbulkan efek positif di lambung dan usus. Tidak hanya itu, senyawa ini mungkin bisa meredam rasa mual dengan cara memberikan efek di otak dan sistem saraf.</div>'),
(3, 'Kluwak', 'img_1488859746.png', '<div>Kluwak memiliki banyak kandungan, diantaranya ion besi, Vitamin C, Betakaroten, Asam Hidnokarpat, dapat Mengatasi kolesterol tinggi. Mengobati rematik,b erguna untuk penyakit kulit (gatal – gatal), Bermanfaat sebagai bumbu masakan yang nikmat rasanya. Masakan seperti Rawon, sayur bronkos, dan sup konro merupakan contoh masakan lezat yang memanfaatkan kluwak sebagai bumbunya.</div>'),
(4, 'Telur Asin', 'img_1488859758.png', '<div>Telur asin dapat berperan sebagai sumber protein, mineral dan vitamin yang cukup tinggi. Kandungan protein di dalam telur asin dipercaya mengandung semua jenis asam amino yang dibutuhkan manusia untuk kesehatan. Bahkan menurut seorang doktor dari Tokyo University, telur asin memiliki kandungan kalsium berkali lipat hingga puluhan kali.</div>'),
(5, 'Tauge', 'img_1488859753.png', '<div>Manfaat tauge memang terdapat pada kandungan nutrisinya yang banyak digunakan olah tubuh. Penggunaan tauge dalam masakan ini menyumbangkan vitamin dan mineral yang baik untuk perkembangan tubuh. Pada tauge terdapat kandungan vitamin E, vitamin C dan protein yang cukup tinggi. Selain ketiga zat tersebut, tauge juga memiliki beberapa kandungan lain seperti vitamin K, dan asam folat yang sudah tentu baik untuk kesehatan.</div>'),
(6, 'Daging Sapi', 'img_1488859734.png', '<div>Khasiat daging sapi memang luar biasa bagi tubuh atau pun berdasarkan kandungan gizinya adalah membangun otot agar tumbuh lebih kencang dan kuat sumber energi yang besar, menjaga hidup sehat untuk segala umur, mencegah diabetes dan obesitas, mengatur berat badan, kesehatan kognitif (otak), menyembuhkan luka, menjaga sistem kekebalan tubuh, mencegah anemia, meningkatkan sel darah merah, meningkatkan kesehatan kulit, mencegah stroke dan serangan jantung.</div>');

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori`
--

CREATE TABLE `master_kategori` (
  `id_kat` int(11) NOT NULL,
  `nm_mskategori` varchar(30) NOT NULL,
  `grup_mskategori` varchar(30) NOT NULL,
  `gmb_mskategori` varchar(30) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kategori`
--

INSERT INTO `master_kategori` (`id_kat`, `nm_mskategori`, `grup_mskategori`, `gmb_mskategori`, `tanggal`) VALUES
(5, 'Rawon', 'Makanan', 'img_1489141402.jpg', '2017-03-10 10:26:06'),
(6, 'Soto', 'Makanan', 'img_1489141387.jpg', '2017-03-10 10:26:19'),
(7, 'Es', 'Minuman', 'img_1489141525.jpg', '2017-03-10 10:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `master_menu`
--

CREATE TABLE `master_menu` (
  `idm` int(11) NOT NULL,
  `nm_menu` varchar(30) NOT NULL,
  `harga_menu` varchar(30) NOT NULL,
  `ket_menu` varchar(1000) NOT NULL,
  `id_kat` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_menu`
--

INSERT INTO `master_menu` (`idm`, `nm_menu`, `harga_menu`, `ket_menu`, `id_kat`, `tanggal`) VALUES
(48, 'Rawon Daging', '15000', 'Enak tenan , bikin kenyang', 5, '2017-03-10 10:29:19'),
(49, 'Soto Lamongan', '30000', 'Seger banget sotonya', 6, '2017-03-10 10:29:44'),
(50, 'Es jeruk', '8000', 'Seger banget', 7, '2017-03-10 10:30:19'),
(51, 'Es teh', '8000', 'Seger tehnya', 7, '2017-03-10 10:30:46');

-- --------------------------------------------------------

--
-- Table structure for table `new_menu`
--

CREATE TABLE `new_menu` (
  `idn` int(11) NOT NULL,
  `idm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_menu`
--

INSERT INTO `new_menu` (`idn`, `idm`) VALUES
(6, 49);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_p` int(11) NOT NULL,
  `uid` int(30) NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `url_gambar` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `firebase_id` varchar(350) NOT NULL,
  `login_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_p`, `uid`, `nama_depan`, `nama_belakang`, `url_gambar`, `username`, `password`, `firebase_id`, `login_method`) VALUES
(5, 0, 'Maul', 'Akbar', 'www.kelana.com/pictures/', 'akbarviz', 'akbarviz', 'flnP4Jz3SrE:APA91bHWsUz5s9tVwuoxuwEW3yEY_c5l-IXFKsBIgnm3I47T47YP85dE9ioXPNYj4xI-GgmC448m9F4ye9lvzq0FbhdkRCi5E-r6IBINhW33eUE9pX0Wtrt231vBOP_UOqWkc1r9FCMi', 'facebook');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `idp` int(11) NOT NULL,
  `promo_judul` varchar(30) NOT NULL,
  `promo_gambar` varchar(30) NOT NULL,
  `promo_start` date NOT NULL,
  `promo_end` date NOT NULL,
  `keterangan` varchar(1000) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`idp`, `promo_judul`, `promo_gambar`, `promo_start`, `promo_end`, `keterangan`, `tanggal`) VALUES
(14, 'Nasi Campur madura', 'img_1488852346.jpg', '2017-03-01', '2017-03-31', 'Uenak', '2017-03-07 02:07:42'),
(15, 'Empal', 'img_1488852388.jpg', '2017-03-01', '2017-03-31', 'enak enak', '2017-03-07 06:13:58'),
(16, 'KTP', 'img_1488852357.jpg', '2017-03-01', '2017-03-31', 'Enyakkk', '2017-03-07 06:14:35'),
(17, 'Opening', 'img_1488852397.jpg', '2017-03-01', '2017-03-05', 'Enakkk', '2017-03-09 03:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `recomended`
--

CREATE TABLE `recomended` (
  `idr` int(11) NOT NULL,
  `idm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recomended`
--

INSERT INTO `recomended` (`idr`, `idm`) VALUES
(7, 48);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `broadcast`
--
ALTER TABLE `broadcast`
  ADD PRIMARY KEY (`id_bc`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`idc`);

--
-- Indexes for table `favorit`
--
ALTER TABLE `favorit`
  ADD PRIMARY KEY (`idf`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`idg`);

--
-- Indexes for table `gmb_menu`
--
ALTER TABLE `gmb_menu`
  ADD PRIMARY KEY (`id_gmb`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idk`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_loc`);

--
-- Indexes for table `manfaat`
--
ALTER TABLE `manfaat`
  ADD PRIMARY KEY (`id_m`);

--
-- Indexes for table `master_kategori`
--
ALTER TABLE `master_kategori`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `master_menu`
--
ALTER TABLE `master_menu`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `new_menu`
--
ALTER TABLE `new_menu`
  ADD PRIMARY KEY (`idn`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_p`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `recomended`
--
ALTER TABLE `recomended`
  ADD PRIMARY KEY (`idr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `broadcast`
--
ALTER TABLE `broadcast`
  MODIFY `id_bc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `favorit`
--
ALTER TABLE `favorit`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `idg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `gmb_menu`
--
ALTER TABLE `gmb_menu`
  MODIFY `id_gmb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_loc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `manfaat`
--
ALTER TABLE `manfaat`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `master_kategori`
--
ALTER TABLE `master_kategori`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `new_menu`
--
ALTER TABLE `new_menu`
  MODIFY `idn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `recomended`
--
ALTER TABLE `recomended`
  MODIFY `idr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
