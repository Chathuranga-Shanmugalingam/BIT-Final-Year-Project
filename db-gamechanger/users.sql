-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 09:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamechanger`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `to_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `to_date`) VALUES
(1, 'xc', '$2y$10$R8OKU8fumLb58MPPG1Pgdehr4v/xP/mQIbhjR0hOJvA', 'zxc@gmail.com', '2023-09-23 08:47:00'),
(2, 'dfsdf', '$2y$10$TG4RmOdPGR0.vo9Ddp0IAul1md0W/MvUeM9LfryoPeU', 'xdsdf@gmail.com', '2023-09-23 08:55:17'),
(3, 'dfsdfxc', '$2y$10$Tkt9ffqzN/k2aO059LGP2egMMf44vF4Rv5VdC7.eAgo', 'xdsxdf@gmail.com', '2023-09-23 22:08:26'),
(4, 'dfsdfxcd', '$2y$10$2HPr87.mDQHeKs2fcbaTVOrnlVXnjPGLCZH8bnCz3dm', 'xdsxdf@gmail.com', '2023-09-23 22:08:33'),
(5, 'fd', '$2y$10$4JGqGnVit.tVnzK5JQy7zemmjZh1CuSBiNnvqLx/t9W', 'xdsxdf@gmail.com', '2023-09-23 22:08:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
