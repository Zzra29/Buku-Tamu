-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2026 at 12:52 AM
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
-- Database: `app_bukutamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_tamu` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_tamu` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `bertemu` varchar(255) NOT NULL,
  `kepentingan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_tamu`, `tanggal`, `nama_tamu`, `alamat`, `no_hp`, `bertemu`, `kepentingan`, `gambar`) VALUES
('zt001', '2026-09-23', 'as', 'erss', 'r', 'ttt', 'fas', '6ab43cd4ae332.jpeg'),
('zt002', '2026-09-23', 'm', 'kk', 'o', 'oy', 'b', ''),
('zt003', '2026-09-23', 'sg', 'fsd', 'gsd', 'rr', 't', '6ab43bec91456.jpeg'),
('zt004', '2026-09-23', 'saffas', 'fsfs', '', '', '', '6ab43e352e749.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `user_role`) VALUES
('usr01', 'rwar', '$2y$10$RaGbC3BJdlr9ZY90G0XaV.fjm60LVlwQ/P5JsBpgaefKV8DBBQ4yS', 'admin'),
('usr02', 'zulfani', '$2y$10$7pbTG.lOGnQkAEHHfaW.fOkrdAtQfUDeiXTlf3C63su8udXDTKio6', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
