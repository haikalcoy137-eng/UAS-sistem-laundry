-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2026 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: db_sistemlaundry
--
CREATE DATABASE IF NOT EXISTS db_sistemlaundry DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE db_sistemlaundry;

-- --------------------------------------------------------

--
-- Table structure for table detail_transaksi
--

CREATE TABLE detail_transaksi (
  id_detail int(11) NOT NULL,
  id_transaksi int(11) DEFAULT NULL,
  id_paket int(11) DEFAULT NULL,
  berat decimal(5,2) DEFAULT NULL,
  subtotal decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table paket_laundry
--

CREATE TABLE paket_laundry (
  id_paket int(11) NOT NULL,
  nama_paket varchar(100) NOT NULL,
  jenis varchar(50) DEFAULT NULL,
  harga_perkg decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table pegawai
--

CREATE TABLE pegawai (
  id_pegawai int(11) NOT NULL,
  nama_pegawai varchar(100) NOT NULL,
  jabatan varchar(50) DEFAULT NULL,
  no_hp varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table pelanggan
--

CREATE TABLE pelanggan (
  id_pelanggan int(11) NOT NULL,
  nama_pelanggan varchar(100) NOT NULL,
  alamat text DEFAULT NULL,
  no_hp varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table pembayaran
--

CREATE TABLE pembayaran (
  id_pembayaran int(11) NOT NULL,
  id_transaksi int(11) DEFAULT NULL,
  tanggal_bayar date DEFAULT NULL,
  total_bayar decimal(10,2) DEFAULT NULL,
  metode_bayar varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table transaksi
--

CREATE TABLE transaksi (
  id_transaksi int(11) NOT NULL,
  id_pelanggan int(11) DEFAULT NULL,
  id_pegawai int(11) DEFAULT NULL,
  tanggal_masuk date DEFAULT NULL,
  tanggal_selesai date DEFAULT NULL,
  status varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table detail_transaksi
--
ALTER TABLE detail_transaksi
  ADD PRIMARY KEY (id_detail),
  ADD KEY id_transaksi (id_transaksi),
  ADD KEY id_paket (id_paket);

--
-- Indexes for table paket_laundry
--
ALTER TABLE paket_laundry
  ADD PRIMARY KEY (id_paket);

--
-- Indexes for table pegawai
--
ALTER TABLE pegawai
  ADD PRIMARY KEY (id_pegawai);

--
-- Indexes for table pelanggan
--
ALTER TABLE pelanggan
  ADD PRIMARY KEY (id_pelanggan),
  ADD KEY idx_nama (nama_pelanggan);

--
-- Indexes for table pembayaran
--
ALTER TABLE pembayaran
  ADD PRIMARY KEY (id_pembayaran),
  ADD KEY id_transaksi (id_transaksi);

--
-- Indexes for table transaksi
--
ALTER TABLE transaksi
  ADD PRIMARY KEY (id_transaksi),
  ADD KEY id_pelanggan (id_pelanggan),
  ADD KEY id_pegawai (id_pegawai);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table detail_transaksi
--
ALTER TABLE detail_transaksi
  MODIFY id_detail int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table paket_laundry
--
ALTER TABLE paket_laundry
  MODIFY id_paket int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table pegawai
--
ALTER TABLE pegawai
  MODIFY id_pegawai int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table pelanggan
--
ALTER TABLE pelanggan
  MODIFY id_pelanggan int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table pembayaran
--
ALTER TABLE pembayaran
  MODIFY id_pembayaran int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table transaksi
--
ALTER TABLE transaksi
  MODIFY id_transaksi int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table detail_transaksi
--
ALTER TABLE detail_transaksi
  ADD CONSTRAINT detail_transaksi_ibfk_1 FOREIGN KEY (id_transaksi) REFERENCES transaksi (id_transaksi),
  ADD CONSTRAINT detail_transaksi_ibfk_2 FOREIGN KEY (id_paket) REFERENCES paket_laundry (id_paket);

--
-- Constraints for table pembayaran
--
ALTER TABLE pembayaran
  ADD CONSTRAINT pembayaran_ibfk_1 FOREIGN KEY (id_transaksi) REFERENCES transaksi (id_transaksi);

--
-- Constraints for table transaksi
--
ALTER TABLE transaksi
  ADD CONSTRAINT transaksi_ibfk_1 FOREIGN KEY (id_pelanggan) REFERENCES pelanggan (id_pelanggan),
  ADD CONSTRAINT transaksi_ibfk_2 FOREIGN KEY (id_pegawai) REFERENCES pegawai (id_pegawai);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
