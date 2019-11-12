-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 03:41 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhs510`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `nim` int(22) NOT NULL,
  `no_hp_lama` varchar(22) NOT NULL,
  `no_hp_baru` varchar(22) NOT NULL,
  `tgl_diubah` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `nim`, `no_hp_lama`, `no_hp_baru`, `tgl_diubah`) VALUES
(2, 101, '857169232', '857169232', '2019-11-06 15:58:11.000000'),
(3, 102, '857654311', '857654311', '2019-11-06 15:58:20.000000'),
(4, 103, '897654321', '897654321', '2019-11-06 15:58:30.000000'),
(5, 104, '812345678', '812345678', '2019-11-06 15:58:39.000000'),
(6, 103, '0897654321', '0897654321', '2019-11-06 16:00:30.000000'),
(7, 104, '0812345678', '0812345678', '2019-11-12 09:21:01.000000'),
(8, 103, '0897654321', '0897654321', '2019-11-12 09:27:36.000000'),
(9, 104, '08999787', '0899978799', '2019-11-12 09:31:55.000000');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nim` int(22) NOT NULL,
  `nama_mhs` varchar(22) NOT NULL,
  `gender` varchar(22) NOT NULL,
  `alamat` varchar(22) NOT NULL,
  `no_hp` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim`, `nama_mhs`, `gender`, `alamat`, `no_hp`) VALUES
(101, 'Syahlan', 'Laki-Laki', 'Demak', '0857169232'),
(102, 'Edy', 'Laki-Laki', 'Jepara', '0857654311'),
(103, 'nissa', 'Perempuan', 'Jepara', '0897654321'),
(104, 'Cay', 'Perempuan', 'Pati', '0899978799');

--
-- Triggers `mhs`
--
DELIMITER $$
CREATE TRIGGER `update` BEFORE UPDATE ON `mhs` FOR EACH ROW INSERT INTO log
set nim = old.nim,
no_hp_lama = old.no_hp,
no_hp_baru = new.no_hp,
tgl_diubah = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_mhs`
-- (See below for the actual view)
--
CREATE TABLE `view_mhs` (
`nim` int(22)
,`nama_mhs` varchar(22)
,`gender` varchar(22)
,`alamat` varchar(22)
,`no_hp` varchar(22)
);

-- --------------------------------------------------------

--
-- Structure for view `view_mhs`
--
DROP TABLE IF EXISTS `view_mhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mhs`  AS  select `mhs`.`nim` AS `nim`,`mhs`.`nama_mhs` AS `nama_mhs`,`mhs`.`gender` AS `gender`,`mhs`.`alamat` AS `alamat`,`mhs`.`no_hp` AS `no_hp` from `mhs` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
