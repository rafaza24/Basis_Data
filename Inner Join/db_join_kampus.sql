-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 10:46 PM
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
-- Database: `db_join_kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `Nip` char(5) NOT NULL,
  `Nm_dosen` varchar(35) NOT NULL,
  `Thn_masuk` year(4) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`Nip`, `Nm_dosen`, `Thn_masuk`, `Alamat`) VALUES
('01011', 'Budi Santoso', '2003', 'Tangerang'),
('01012', 'Rio Hermawan', '2009', 'Jakarta'),
('01013', 'Tio Sandewa', '2005', 'Jakarta'),
('01014', 'Agus Supardi', '2011', 'Bogor'),
('01015', 'Nurlaela Sari', '2014', 'Depok');

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `Id` int(3) NOT NULL,
  `Nip` char(5) NOT NULL,
  `Kd_mtkul` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mengajar`
--

INSERT INTO `mengajar` (`Id`, `Nip`, `Kd_mtkul`) VALUES
(1, '01011', '101'),
(2, '01011', '303'),
(3, '01012', '202'),
(4, '01012', '404'),
(5, '01012', '303'),
(6, '01013', '505'),
(7, '01013', '101'),
(8, '01014', '404'),
(9, '01015', '202'),
(10, '01015', '303');

-- --------------------------------------------------------

--
-- Table structure for table `mt_kuliah`
--

CREATE TABLE `mt_kuliah` (
  `Kd_mtkul` char(3) NOT NULL,
  `Nm_mtkul` varchar(35) NOT NULL,
  `Sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mt_kuliah`
--

INSERT INTO `mt_kuliah` (`Kd_mtkul`, `Nm_mtkul`, `Sks`) VALUES
('101', 'Algoritma', 4),
('202', 'PTIK', 3),
('303', 'SIM', 4),
('404', 'E-Commerce', 2),
('505', 'Agama', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`Nip`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mt_kuliah`
--
ALTER TABLE `mt_kuliah`
  ADD PRIMARY KEY (`Kd_mtkul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
