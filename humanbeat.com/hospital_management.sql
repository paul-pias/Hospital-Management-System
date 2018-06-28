-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 05:44 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `emergency_form`
--

CREATE TABLE `emergency_form` (
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `date` int(250) NOT NULL,
  `hpreference` varchar(250) NOT NULL,
  `phyname` varchar(250) NOT NULL,
  `phonenumber` int(250) NOT NULL,
  `relationship` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `homephone` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_form`
--

INSERT INTO `emergency_form` (`fname`, `lname`, `gender`, `date`, `hpreference`, `phyname`, `phonenumber`, `relationship`, `address`, `city`, `homephone`) VALUES
('Pias', 'Paul', 'Male', 6, 'Apollo', 'Dr. Nqh', 1776688358, 'Single', 'A Block', 'Dhaka', 85163078);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
