-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:33 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_gadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_merk`
--

CREATE TABLE `tb_merk` (
  `id_merk` char(6) NOT NULL,
  `nama` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_merk`
--

INSERT INTO `tb_merk` (`id_merk`, `nama`) VALUES
('APPL05', 'Apple 7 Plus'),
('OPPO02', 'Oppo Reno 3'),
('REDM04', 'Redmi Note 8'),
('SAM01', 'Samsung Gx A71'),
('VIVO03', 'Vivo Y30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ponsel`
--

CREATE TABLE `tb_ponsel` (
  `id_ponsel` char(8) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `id_merk` char(6) NOT NULL,
  `harga` int(8) NOT NULL,
  `berat` int(3) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` text NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ponsel`
--

INSERT INTO `tb_ponsel` (`id_ponsel`, `nama`, `id_merk`, `harga`, `berat`, `spesifikasi`, `gambar`, `stok`) VALUES
('YYAPP005', 'Apple iPhone 7 Plus 128 GB, Rose Gold\r\n', 'APPL05', 6500000, 188, 'Ukuran layar: 5.5 inci, 1920 x 1080 pixels, LED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nMemori: RAM 3 GB, ROM 128 GB\r\nSistem operasi: iOS 10\r\nCPU: Apple A10 Fusion, Quad-core 2.34 GHz (2x Hurricane + 2x Zephyr)\r\nGPU: PowerVR Series7XT Plus\r\nKamera: Dual 12 MP, wide-angle & telefoto (28mm, f/1.8, OIS & 56mm, f/2.8), phase detection autofocus, 2x optical zoom, quad-LED (dual tone) flash, depan 7 MP, f/2.2, 32mm, 1080p@30fps, 720p@240fps, face detection, HDR, panorama\r\nSIM: Single SIM (Nano-SIM)\r\nBaterai: Non-removable Li-Ion 2900 mAh mAh (11.1 Wh)\r\nGaransi Resmi', '', 5),
('YYOPP002', 'OPPO Reno3 8/128GB - Sky White', 'OPPO02', 3250000, 170, 'Ukuran Layar: 6.4 inci Waterdrop screen FHD+, 1080 x 2400 pixels, AMOLED capacitive touchscreen, 16M colors\r\nMemori: RAM 8 GB, ROM 128 GB\r\nSistem Operasi: Android 10.0; ColorOS 7\r\nCPU: Mediatek MT6779 Helio P90 (12 nm), Octa-core (2x2.2 GHz Cortex-A75 & 6x2.0 GHz Cortex-A55)\r\nGPU: PowerVR GM9446\r\nKamera: Quad 48 MP, f/1.8, 26mm (wide), 1/2.0\", 0.8µm, PDAF. 13 MP, f/2.4, 52mm (telephoto), 2x optical zoom, PDAF. 8 MP, f/2.2, 13mm (ultrawide), 1/3.2\", 1.4µm. 2 MP B/W, f/2.4, 1/5.0\", 1.75µm. Depan 44 MP, f/2.4, 26mm (wide), 1/2.65\", 0.7µm\r\nSIM: Hybrid Dual SIM (Nano-SIM, dual stand-by)\r\nBaterai: Non-removable Li-Po 4000 mAh\r\nDimensi: 160.2 x 73.3 x 8 mm\r\nGaransi Resmi', '', 80),
('YYRED004', 'Xiaomi Redmi Note 8 (4GB/64GB) - Black', 'REDM04', 2250000, 190, 'Ukuran layar: 6.3 inci, 1080 x 2340 pixels, IPS LCD capacitive touchscreen, 16M colors\r\nMemori: RAM 4 GB, ROM 64 GB, MicroSD up to 256 GB\r\nSistem operasi: Android 9.0 (Pie); MIUI 10\r\nCPU: Qualcomm Snapdragon 665 (11 nm) Octa-core\r\nGPU: Adreno 610\r\nKamera: Quad 48 MP, f/1.8; 8 MP, f/2.2; 2 MP, f/2.4 & 2 MP, f/2.4, depan 13 MP, f/2.0\r\nSIM: Dual SIM (Nano-SIM)\r\nBaterai: Non-removable Li-Po 4000 mAh\r\nGaransi Resmi', '', 100),
('YYSAM001', 'Samsung Galaxy A71 (8GB/128GB) - Black', 'SAM01', 5399000, 179, 'Ukuran layar: 6.7 inci, 1080 x 2400 pixels, Super AMOLED capacitive touchscreen, 16M colors\r\nMemori: RAM 8 GB, ROMs 128 GB, MicroSD up to 1 TB\r\nSistem operasi: Android 10.0; One UI 2\r\nCPU: Qualcomm SDM730 Snapdragon 730 (8 nm) Octa-core (2x2.2 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)\r\nGPU: Adreno 618\r\nKamera: Quad 64 MP, f/1.8; 12 MP, f/2.2; 5 MP, f/2.4; 5 MP, f/2.2, Depan 32 MP, f/2.2\r\nSIM: Dual SIM (Nano-SIM)\r\nBaterai: Non-removable Li-Po 4500 mAh\r\nGaransi Resmi', '', 10),
('YYVIV003', 'Vivo Y30 4/ 128GB - Emerald Black', 'VIVO03', 2700000, 197, 'Ukuran layar: 6.47 inci, 720 x 1560 pixels, IPS LCD capacitive touchscreen, 16M colors\r\nMemori: RAM 4 GB, ROM 128 GB\r\nSistem operasi: Android 10, Funtouch 10.0\r\nCPU: Mediatek MT6765 Helio P35 (12nm) Octa-core\r\nGPU: PowerVR GE8320\r\nKamera: Quad 13 MP, f/2.2; 8 MP, f/2.2; 2 MP, f/2.4 & 2 MP, f/2.4, depan 8 MP\r\nSIM: Dual SIM (Nano-SIM)\r\nBaterai: Non-removable Li-Po 5000 mAh\r\nGaransi Resmi', '', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` char(8) NOT NULL,
  `id_ponsel` char(8) NOT NULL,
  `nama_pembeli` varchar(128) NOT NULL,
  `alamat_pembeli` text NOT NULL,
  `wa_pembeli` char(13) NOT NULL,
  `kuantitas` int(2) NOT NULL,
  `total` int(12) NOT NULL,
  `status` varchar(24) NOT NULL COMMENT 'Pesanan Diterima\r\nMenunggu Pembayaran\r\nProses Pengiriman\r\nTransaksi Selesai',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_ponsel`, `nama_pembeli`, `alamat_pembeli`, `wa_pembeli`, `kuantitas`, `total`, `status`, `timestamp`) VALUES
('beli0001', 'YYSAM001', 'Adhani Rahma Putri', 'Jl. Lumbung Hidup No 69 Ngegong 63125 Madiun Jawa Timur', '0812234556723', 1, 5399000, 'Transaksi Selesai', '2021-04-14 12:48:42'),
('beli0002', 'YYAPP005', 'Almiraluthfi Pratiwi', 'Jl Kenangan No 15 Kayuagung 30611 Palembang Sumatra Selatan', '085328650922', 2, 13000000, 'Proses Pengiriman', '2021-04-14 12:52:21'),
('beli0003', 'YYSAM001', 'Deneira Fabulan Muanas', 'Jl Munggut Asri No 30 63181 Wungu Perumahan Mojopurno Madiun Jawa Timur', '089539367782', 3, 16197000, 'Menunggu Pembayaran', '2021-04-14 12:54:52'),
('beli0004', 'YYRED004', 'Aldan Maulana Fajri', 'Jl Nanas No 12 64394 Nganjuk Jawa Timur', '082245852908', 1, 2250000, 'Pesanan Diterima', '2021-04-14 12:56:47'),
('beli0005', 'YYVIV003', 'Aksal Syah Falah', 'Jl Basuki Rahmat No 26 Jakarta Jawa Barat', '085377896542', 1, 270000, 'Pesanan Diterima', '2021-04-14 12:58:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_merk`
--
ALTER TABLE `tb_merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  ADD PRIMARY KEY (`id_ponsel`) USING BTREE,
  ADD KEY `id_merk` (`id_merk`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE,
  ADD KEY `id_ponsel` (`id_ponsel`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  ADD CONSTRAINT `tb_ponsel_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `tb_merk` (`id_merk`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_ponsel`) REFERENCES `tb_ponsel` (`id_ponsel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
