-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2018 at 11:47 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms17`
--

-- --------------------------------------------------------

--
-- Table structure for table `nimekiri`
--

CREATE TABLE `nimekiri` (
  `id` int(3) NOT NULL,
  `Eesnimi` varchar(30) NOT NULL,
  `Perenimi` varchar(30) NOT NULL,
  `id_code` char(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nimekiri`
--

INSERT INTO `nimekiri` (`id`, `Eesnimi`, `Perenimi`, `id_code`, `time`) VALUES
(10, 'Aldar', 'P„rnoja', '54878965124', '2018-09-11 10:43:21'),
(12, 'Aldar', 'P„rnoja', '15986487512', '2018-09-11 11:01:49'),
(13, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-11 12:54:18'),
(14, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-11 12:54:43'),
(16, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 09:58:49'),
(17, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 10:09:11'),
(18, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 10:35:12'),
(19, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 10:52:36'),
(20, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 11:02:20'),
(21, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 11:03:34'),
(22, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 11:03:37'),
(23, 'Endel', 'EesvÃ¤rav', '12345678912', '2018-09-18 12:36:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nimekiri`
--
ALTER TABLE `nimekiri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nimekiri`
--
ALTER TABLE `nimekiri`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
