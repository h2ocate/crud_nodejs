-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 02, 2022 at 06:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `permisos`
--

-- --------------------------------------------------------

--
-- Table structure for table `permiso`
--

CREATE TABLE `permiso` (
  `id` int(11) NOT NULL,
  `nombreEmpleado` varchar(30) NOT NULL,
  `apellidoEmpleado` varchar(30) NOT NULL,
  `tipopermiso` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permiso`
--

INSERT INTO `permiso` (`id`, `nombreEmpleado`, `apellidoEmpleado`, `tipopermiso`, `fecha`) VALUES
(1, 'Joseas', 'Martinez', 2, '2022-12-02'),
(2, 'Raul', 'Jimenez', 3, '2022-12-04'),
(3, 'Antoine', 'Griezzman', 1, '2022-12-05'),
(21, 'Josefa ', 'Josef', 1, '2022-12-30'),
(22, 'Martina ', 'Stussel ', 2, '2022-12-15'),
(23, 'Jose Ramon ', 'Serrulle ', 3, '2022-12-23'),
(24, 'Mason ', 'Mount ', 1, '2022-12-04'),
(25, 'Marcus ', 'Rashford ', 1, '2022-12-17'),
(26, 'Antoni ', 'Martial ', 1, '2022-12-23'),
(27, 'Marcos ', 'Reus', 2, '2022-12-10'),
(28, 'Jese ', 'Joy ', 3, '2022-12-07'),
(29, 'Martin ', 'Oddegard ', 2, '2022-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `tipopermiso`
--

CREATE TABLE `tipopermiso` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipopermiso`
--

INSERT INTO `tipopermiso` (`id`, `descripcion`) VALUES
(1, 'Diligencia'),
(2, 'Enfermedad'),
(3, 'Otros');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipopermiso` (`tipopermiso`);

--
-- Indexes for table `tipopermiso`
--
ALTER TABLE `tipopermiso`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tipopermiso`
--
ALTER TABLE `tipopermiso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `permiso_ibfk_1` FOREIGN KEY (`tipopermiso`) REFERENCES `tipopermiso` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
