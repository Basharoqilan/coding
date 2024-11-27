-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2024 at 01:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orange_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `is_out_of_stock` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `name`, `img_url`, `rate`, `brand`, `price`, `is_out_of_stock`) VALUES
(1, 'Samsung Galaxy Note 20 Ultra', 'p15.jpg', 5, 'Samsung', 'JOD 759.00', 1),
(2, 'INFINIX Zero 8', 'p3.png', 2, 'Infinix', 'JOD 205.00', 1),
(3, 'Apple iPhone 12 Pro', 'p4.png', 0, 'Apple', 'JOD 973.00', 1),
(4, 'ITEL A48', 'p6.png', 4, 'iTel', 'JOD 66.00', 0),
(5, 'Samsung Galaxy S21 Ultra', 'p7.png', 0, 'Samsung', 'JOD 799.00', 0),
(6, 'Galaxy A52', 'p10.png', 5, 'Samsung', 'JOD 267.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(21, 'bashar mahmoud musa oqilan', 'basharoqilan2@gmail.com', '$2y$10$zVuiW3NxuTx7waeAUN5qE.Y3H/ArPLHbnpDpSzz76qArNGlSihE9m'),
(22, 'ammar mahmoud musa oqila', 'ammar@gmail.com', '$2y$10$H4rN8vu.aOKkCHQl0l5RjuSwyouIxoe0WnLdz8kj2B3jpZTR4gDb2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
