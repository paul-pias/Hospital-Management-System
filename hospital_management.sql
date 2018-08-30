-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2018 at 12:47 AM
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
-- Table structure for table `appointment_booking`
--

CREATE TABLE `appointment_booking` (
  `patient_name` varchar(250) NOT NULL,
  `departments` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_booking`
--

INSERT INTO `appointment_booking` (`patient_name`, `departments`, `date`, `time`) VALUES
('Ayat Ullah', '', '0000-00-00', '00:00:08'),
('Ayat Ullah', '', '0000-00-00', '00:00:08'),
('Ayat Ullah', 'Cardiology', '0000-00-00', '00:00:08'),
('Ayat Ullah', 'Psychology', '0000-00-00', '00:00:12'),
('Md. Jahidul ', 'Neurology', '0000-00-00', '00:00:10'),
('jahid', 'Ophthalmology', '0000-00-00', '00:00:12'),
('pol', 'Psychology', '0000-00-00', '00:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `username`, `password`, `email`, `join_date`) VALUES
(1, 'Kazi Hasinur Rahman', 'Rahman', 'hasinur.rahman@gmail.com', '2018-08-28 19:27:37'),
(2, 'Dr. Zahid Hasan', 'Hasan', 'hasinur.rahman@gmail.com', '2018-08-28 20:41:57');

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
('Pias', 'Paul', 'Male', 6, 'Apollo', 'Dr. Nqh', 1776688358, 'Single', 'A Block', 'Dhaka', 85163078),
('Pias', 'Paul', 'Male', 7, '142054', 'Dr. Nqh', 1776688358, 'Single', 'A Block', 'Chittagong', 85163078),
('Pias', 'Paul', 'Male', 7, '142054', 'Dr. Nqh', 1776688358, 'Single', 'A Block', 'Chittagong', 85163078),
('Argentina', 'Rahamna', 'Female', 7, '1643', 'Dr. Nva', 1776688358, 'Married', 'B Block', 'Khustia', 85163078),
('Jahidul', 'Rahamna', 'Male', 7, '45', 'Dr. Nva', 1776688358, 'Single', 'fgh', 'Rajshahi', 8665);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `friendship_official` enum('0','1') NOT NULL,
  `date_made` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_one`, `user_two`, `friendship_official`, `date_made`) VALUES
(1, 1, 2, '1', '2018-08-28 17:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `mail_list`
--

CREATE TABLE `mail_list` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_list`
--

INSERT INTO `mail_list` (`name`, `email`, `message`) VALUES
('Pias Paul', 'paul.pias@northsouth.edu', 'This is a test message.');

-- --------------------------------------------------------

--
-- Table structure for table `patient_registration`
--

CREATE TABLE `patient_registration` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(250) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `mobile_number` varchar(30) NOT NULL,
  `day` int(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(20) NOT NULL,
  `street_address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `zipcode` int(30) NOT NULL,
  `country` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `test1` varchar(20) NOT NULL,
  `test2` varchar(20) NOT NULL,
  `test3` varchar(20) NOT NULL,
  `test4` varchar(20) NOT NULL,
  `test5` varchar(20) NOT NULL,
  `test6` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_registration`
--

INSERT INTO `patient_registration` (`patient_id`, `patient_name`, `password`, `gender`, `mobile_number`, `day`, `month`, `year`, `street_address`, `city`, `zipcode`, `country`, `email`, `test1`, `test2`, `test3`, `test4`, `test5`, `test6`) VALUES
(1, 'Ayat Ullah', 'dh1@jknkjn', 'Male', '0145556', 2, 'March', 2018, 'B Block', 'Dhaka', 1212, 'Bangladesh', 'haranonil@gmail.com', '', '', 'on', '', '', ''),
(2, 'Md. Jahidul ', 'hello', 'Male', '0123456789', 2, 'February', 1994, 'B Block', 'Dhaka', 1212, 'Bangladesh', 'paul.pias@northsouth.edu', 'on', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `random`
--

CREATE TABLE `random` (
  `id` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `ran_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `join_date`) VALUES
(1, 'ayat ullah', '$2y$10$PQkPZzws76nluv3BzFlfhuO6t4rlVX9UrHR0jL.w2f91JMuuJe6k2', 'ayat@gmail.com', '2018-08-01 22:55:43'),
(2, 'Pias Paul', '$2y$10$U6A6BdKCLJYNzk0M0EwhHe/i5sG10ungobRcQ9rTxJwgK6P7MmnKq', 'piasaneon619@gmail.com', '2018-08-28 17:05:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_registration`
--
ALTER TABLE `patient_registration`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `random`
--
ALTER TABLE `random`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_registration`
--
ALTER TABLE `patient_registration`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `random`
--
ALTER TABLE `random`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
