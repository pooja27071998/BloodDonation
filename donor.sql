-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2018 at 04:39 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id7406017_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `weight` int(10) NOT NULL,
  `ques` varchar(30) NOT NULL,
  `contact` int(10) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`name`, `email`, `password`, `c_password`, `age`, `blood_group`, `weight`, `ques`, `contact`, `address`) VALUES
('Rishi', 'rishkat@gm.com', '1234567', '1234567', 23, 'A+', 40, 'Once in 3 months', 1857468912, 'jnhkjfgjh'),
('Rishi', 'rishkat@gm.com', '987654', '987654', 23, 'A+', 40, 'Once in 3 months', 1857468912, 'jnhkjfgjh'),
('Irfat', 'irfatkapde@gmail.com', '123456', '123456', 20, 'A+', 40, 'Once in 3 months', 1234567890, 'jklhgjh'),
('Pooja', 'pooja@gmail.com', '1234567', '1234567', 23, 'AB+', 12, 'Once in 6 months', 1857468912, 'Nerul');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
