-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 05:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_uts`
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
('MERK01', 'Apple');

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
('HAPE0001', 'Redmi Note 5 Galaxy', 'MERK01', 2000500, 100, 'Lengkap tidak bercela', 'hape0001.jpg', 5);

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
('ORD00001', 'HAPE0001', 'Paijo Budiman', 'Nganjuk, Jateng', '6285746352532', 2, 4001000, 'Pesanan Diterima', '2021-04-18 15:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `nama` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`nama`, `password`, `email`) VALUES
('John Doe', '123', 'johndoe@gmail.com'),
('Paijo Muhaimin', 'Lorem ipsum', 'paijo.mhm@gmail.com');

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
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`nama`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  ADD CONSTRAINT `tb_ponsel_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `tb_merk` (`id_merk`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_ponsel`) REFERENCES `tb_ponsel` (`id_ponsel`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
