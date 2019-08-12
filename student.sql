-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2019 at 09:48 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `username`, `email`, `password`) VALUES
(25, 'example', 'example@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(26, 'mandy', 'mandy@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(18, 'nick123', 'nick123@gmail.com', '83834854b0d6493f259c6cbd5755e206'),
(27, 'prince', 'prince@123.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(21, 'prince', 'prince@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(20, 'shankar', 'shankar123@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(23, 'test', 'ex@123.com', 'e10adc3949ba59abbe56e057f20f883e'),
(12, 'test1', 'test@example.com', '733d7be2196ff70efaf6913fc8bdcabf'),
(13, 'test2', 'test2@123.com', '6a9edcb7b63821802aa44d35d531c9fc'),
(22, 'test5', 'test5@gmail.com', '75ad0b72e67f5e4255b9e8e78b3c949f'),
(24, 'testing', 'ex@123.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`username`,`email`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
