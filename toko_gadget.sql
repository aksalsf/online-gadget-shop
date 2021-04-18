-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 05:28 PM
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
  `id_merk` int(6) NOT NULL,
  `nama` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ponsel`
--

CREATE TABLE `tb_ponsel` (
  `id_ponsel` int(8) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `id_merk` int(6) NOT NULL,
  `harga` int(8) NOT NULL,
  `berat` int(3) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` text NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `id_ponsel` int(8) NOT NULL,
  `nama_pembeli` varchar(128) NOT NULL,
  `alamat_pembeli` text NOT NULL,
  `wa_pembeli` char(13) NOT NULL,
  `kuantitas` int(2) NOT NULL,
  `total` int(12) NOT NULL,
  `status` varchar(24) NOT NULL COMMENT 'Pesanan Diterima\r\nMenunggu Pembayaran\r\nProses Pengiriman\r\nTransaksi Selesai',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_merk`
--
ALTER TABLE `tb_merk`
  MODIFY `id_merk` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  MODIFY `id_ponsel` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(8) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_merk`
--
ALTER TABLE `tb_merk`
  ADD CONSTRAINT `tb_merk_ibfk_1` FOREIGN KEY (`id_merk`) REFERENCES `tb_ponsel` (`id_merk`);

--
-- Constraints for table `tb_ponsel`
--
ALTER TABLE `tb_ponsel`
  ADD CONSTRAINT `tb_ponsel_ibfk_1` FOREIGN KEY (`id_ponsel`) REFERENCES `tb_transaksi` (`id_ponsel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
