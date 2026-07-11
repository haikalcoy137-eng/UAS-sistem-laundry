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

--
-- Dumping data for table detail_transaksi
--

INSERT INTO detail_transaksi (id_detail, id_transaksi, id_paket, berat, subtotal) VALUES
(1, 1, 2, 4.00, 36000.00),
(2, 2, 3, 2.00, 30000.00),
(3, 3, 1, 5.00, 35000.00);

--
-- Dumping data for table paket_laundry
--

INSERT INTO paket_laundry (id_paket, nama_paket, jenis, harga_perkg) VALUES
(1, 'Cuci Kering', 'Reguler', 7000.00),
(2, 'Cuci Setrika', 'Reguler', 9000.00),
(3, 'Express', 'Express', 15000.00);

--
-- Dumping data for table pegawai
--

INSERT INTO pegawai (id_pegawai, nama_pegawai, jabatan, no_hp) VALUES
(1, 'Rina', 'Kasir', '082111111111'),
(2, 'Fajar', 'Admin', '082222222222'),
(3, 'Sinta', 'Operator', '082333333333');

--
-- Dumping data for table pelanggan
--

INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, alamat, no_hp) VALUES
(1, 'Andi', 'Masamba', '081234567890'),
(2, 'Budi', 'Bone-Bone', '081234567891'),
(3, 'Citra', 'Baliase', '081234567892'),
(4, 'Dina', 'Sabbang', '081234567893'),
(5, 'Eka', 'Palopo', '081234567894'),
(6, 'Rahmat', 'Masamba', '081299999999');

--
-- Dumping data for table pembayaran
--

INSERT INTO pembayaran (id_pembayaran, id_transaksi, tanggal_bayar, total_bayar, metode_bayar) VALUES
(1, 1, '2026-07-11', 36000.00, 'Cash'),
(2, 2, '2026-07-10', 30000.00, 'QRIS'),
(3, 3, '2026-07-10', 35000.00, 'Transfer');

--
-- Dumping data for table transaksi
--

INSERT INTO transaksi (id_transaksi, id_pelanggan, id_pegawai, tanggal_masuk, tanggal_selesai, status) VALUES
(1, 1, 1, '2026-07-10', '2026-07-11', 'Selesai'),
(2, 2, 2, '2026-07-10', '2026-07-12', 'Proses'),
(3, 3, 1, '2026-07-09', '2026-07-10', 'Selesai');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
