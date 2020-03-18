-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2020 at 09:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BD_crawlers`
--

-- --------------------------------------------------------

--
-- Table structure for table `Ligas_inicio`
--

CREATE TABLE `Ligas_inicio` (
  `IDLiga` varchar(32) NOT NULL,
  `Peso_inicial` float NOT NULL,
  `IDMedio` int(10) NOT NULL,
  `Hora_visita` datetime NOT NULL,
  `Dia_update` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Ligas_inicio`
--

INSERT INTO `Ligas_inicio` (`IDLiga`, `Peso_inicial`, `IDMedio`, `Hora_visita`, `Dia_update`) VALUES
('3f2fd2c9e25d60fb0fa5d593b802b7a8', 1, 1, '2020-03-18 14:05:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Ligas_nuevas`
--

CREATE TABLE `Ligas_nuevas` (
  `IDLiga` varchar(32) NOT NULL,
  `Liga` varchar(200) NOT NULL,
  `IDMedio` int(10) NOT NULL,
  `Peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Ligas_nuevas`
--

INSERT INTO `Ligas_nuevas` (`IDLiga`, `Liga`, `IDMedio`, `Peso`) VALUES
('3f2fd2c9e25d60fb0fa5d593b802b7a8', 'https://www.elfinanciero.com.mx/nacional/sube-a-15-el-numero-de-casos-confirmados-de-coronavirus-en-mexico', 1, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `Ultima_Asignacion`
--

CREATE TABLE `Ultima_Asignacion` (
  `IDEquipo` varchar(20) NOT NULL,
  `Ultimo_servicio` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Ultima_Asignacion`
--

INSERT INTO `Ultima_Asignacion` (`IDEquipo`, `Ultimo_servicio`) VALUES
('0218127412438A', '2020-03-17 09:28:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Ligas_inicio`
--
ALTER TABLE `Ligas_inicio`
  ADD PRIMARY KEY (`IDLiga`);

--
-- Indexes for table `Ligas_nuevas`
--
ALTER TABLE `Ligas_nuevas`
  ADD PRIMARY KEY (`IDLiga`);

--
-- Indexes for table `Ultima_Asignacion`
--
ALTER TABLE `Ultima_Asignacion`
  ADD PRIMARY KEY (`IDEquipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
