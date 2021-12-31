-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2021 at 08:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse311l`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fac_id` int(11) NOT NULL,
  `fac_name` varchar(255) NOT NULL,
  `fac_username` varchar(255) NOT NULL,
  `fac_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fac_id`, `fac_name`, `fac_username`, `fac_password`) VALUES
(1, 'umar faruk', 'umm890000', '123444'),
(2, '', 'umm', '$2y$10$958TQh8DuRcpFTbj/1d8QOehIZBV0GCXcpcHabgHhpliz7zInFzFK');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(255) NOT NULL,
  `project_id` int(10) NOT NULL,
  `project_link` varchar(255) NOT NULL,
  `user_id` int(15) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `course`, `project_id`, `project_link`, `user_id`, `marks`) VALUES
(10, 'Wack', 'cse', 11, 'github.com', 1, 90),
(12, 'Sapphire', 'EEE111', 13, 'notion.so', 2, 0),
(13, 'Soap', 'CSE231', 11, 'Typre.com', 3, 0),
(14, 'Elle', 'BIO103', 1233, 'github.com/elle', 4, 50),
(15, 'Poe', 'CSE173', 1233, 'github.com/poedamon', 5, 60),
(16, 'SDE', 'CSE311', 12, 'github.com', 6, 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'g_eazy2727', '$2y$10$3Fi7OFtcLTaFG1H1Jk1mNubsSci52.NJCoFThP2kqlT.dRQHC.urK', '2020-09-23 23:49:44'),
(2, 'loblob', '$2y$10$xFJZvPuV23XJJSQhCxPtVe6qoQQqPbYijkeQybQFobo7NK84UwYbW', '2020-09-25 20:31:03'),
(3, 'wacom', '$2y$10$WXGO3I8oj38izNkkGwEUgub1Lqxksx/crwRJL3M4/Rd2D0aktW3nu', '2020-09-28 21:27:44'),
(4, 'ytu', '$2y$10$kQzY/QN4du/410aj3uJXgugLZcJIzPHhGe.5RDPjlYHHd7gy5XJLG', '2020-10-01 21:51:48'),
(5, 'er', '$2y$10$EW9ewAZvi1BFnMBgZ7d/1OsSdBHxfSdfScNQ6nUVtxlKJtwfdKaWK', '2020-10-01 21:55:08'),
(7, '1234567890', '$2y$10$83JEIBzBoB6xscoTGgmA6.Vbb.BifeUMY4at8.ZelYXj8mCLNA6Hy', '2020-10-07 00:15:45'),
(8, 'abdur@gmail.com', '$2y$10$HYqc7XaY4SMx.3b/BihlHuEA/tFr8.3.pryWm9H8Y3H7iz0DB9TEO', '2020-12-12 00:15:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fac_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
