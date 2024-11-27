-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 02:37 PM
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
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(3, 'Accessories'),
(4, 'Mac'),
(1, 'Phones'),
(2, 'Tablets');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `stock`, `category_id`, `image`) VALUES
(30, 'Apple iPhone 11', 'Latest model of iPhone with A13 Bionic chip', 699.00, 10, 1, 'mobiles/Apple iPhone 11.jpg'),
(31, 'Apple iPhone 12', 'Newest model of iPhone with A14 Bionic chip', 799.00, 15, 1, 'mobiles/Apple iPhone 12.jpg'),
(32, 'iPhone 11 Pro Max', 'Pro model of iPhone with triple camera system', 999.00, 5, 1, 'mobiles/iPhone 11 Pro Max (NON-PTA).webp'),
(33, 'iPhone 11 Pro', 'Advanced model of iPhone with A13 Bionic chip', 899.00, 8, 1, 'mobiles/iPhone 11 Pro.jpg'),
(34, 'iPhone 12 mini', 'Compact model of iPhone with A14 Bionic chip', 699.00, 12, 1, 'mobiles/iPhone 12 mini.jpg'),
(35, 'iPhone 12 Pro Max', 'Pro Max model of iPhone with A14 Bionic chip', 1099.00, 6, 1, 'mobiles/iPhone 12 Pro Max.jpg'),
(36, 'iPhone 12 Pro', 'Pro model of iPhone with A14 Bionic chip', 999.00, 10, 1, 'mobiles/iPhone 12 Pro.jpg'),
(37, 'iPhone 13 mini', 'Compact model of iPhone with A15 Bionic chip', 749.00, 7, 1, 'mobiles/iPhone 13 mini.jpg'),
(38, 'iPhone 13 Pro Max', 'Pro Max model of iPhone with A15 Bionic chip', 1099.00, 6, 1, 'mobiles/iPhone 13 Pro Max.jpg'),
(39, 'iPhone 13 Pro', 'Pro model of iPhone with A15 Bionic chip', 999.00, 9, 1, 'mobiles/iPhone 13 Pro.jpg'),
(40, 'iPhone 14 Plus', 'Plus model of iPhone with A16 Bionic chip', 899.00, 11, 1, 'mobiles/iPhone 14 Plus.jpg'),
(41, 'iPhone 14 Pro Max', 'Pro Max model of iPhone with A16 Bionic chip', 1199.00, 4, 1, 'mobiles/iPhone 14 Pro Max.jpg'),
(42, 'iPhone 14 Pro', 'Pro model of iPhone with A16 Bionic chip', 1099.00, 8, 1, 'mobiles/iPhone 14 Pro.jpg'),
(43, 'iPhone 14', 'Newest model of iPhone with A16 Bionic chip', 799.00, 15, 1, 'mobiles/iPhone 14.jpg'),
(44, 'iPhone 15 Plus', 'Plus model of iPhone with A17 Bionic chip', 999.00, 5, 1, 'mobiles/iPhone 15 Plus.jpg'),
(45, 'iPhone 15 Pro Max', 'Pro Max model of iPhone with A17 Bionic chip', 1299.00, 3, 1, 'mobiles/iPhone 15 Pro Max.jpg'),
(46, 'iPhone 15 Pro', 'Pro model of iPhone with A17 Bionic chip', 1199.00, 7, 1, 'mobiles/iPhone 15 Pro.jpg'),
(47, 'iPhone 15', 'Newest model of iPhone with A17 Bionic chip', 899.00, 10, 1, 'mobiles/iPhone 15.jpg'),
(48, 'iPhone SE 3', 'Affordable model of iPhone with A13 Bionic chip', 399.00, 20, 1, 'mobiles/iPhone SE 3.jpg'),
(49, 'iPhone SE', 'Affordable model of iPhone with A9 chip', 299.00, 25, 1, 'mobiles/iPhone SE.jpg'),
(50, 'iPhone XR', 'Previous model of iPhone with A12 Bionic chip', 499.00, 12, 1, 'mobiles/iPhone XR.png'),
(51, 'Apple iPad 1st', 'First generation of Apple iPad', 299.00, 8, 2, 'tablets/Apple iPad 1st.jpg'),
(52, 'Apple iPad 3', 'Third generation of Apple iPad', 399.00, 6, 2, 'tablets/Apple iPad 3.jpg'),
(53, 'iPad 2', 'Second generation of Apple iPad', 349.00, 7, 2, 'tablets/iPad 2.jpg'),
(54, 'iPad Air (5th generation)', 'Fifth generation of iPad Air', 599.00, 10, 2, 'tablets/iPad Air (5th generation).png'),
(55, 'iPad air 2', 'Second generation of iPad Air', 499.00, 5, 2, 'tablets/iPad air 2.jpg'),
(56, 'iPad air', 'First generation of iPad Air', 449.00, 8, 2, 'tablets/iPad air.jpg'),
(57, 'iPad mini 3', 'Third generation of iPad mini', 399.00, 12, 2, 'tablets/iPad mini 3.jpg'),
(58, 'iPad mini 4', 'Fourth generation of iPad mini', 449.00, 6, 2, 'tablets/iPad mini 4.jpg'),
(59, 'iPad mini', 'First generation of iPad mini', 349.00, 7, 2, 'tablets/iPad mini.jpg'),
(60, 'iPad Pro (9.7-inch)', 'iPad Pro with 9.7-inch display', 599.00, 5, 2, 'tablets/iPad Pro (9.7-inch).jpg'),
(61, 'AirPods Max', 'High-fidelity wireless headphones', 549.00, 10, 3, 'Accessories/AirPods Max.jpg'),
(62, 'AirPods Pro', 'Active noise cancellation for immersive sound', 249.00, 15, 3, 'Accessories/AirPods Pro.jpg'),
(63, 'AirPods', 'Wireless headphones with high-quality sound', 199.00, 20, 3, 'Accessories/AirPods.jpg'),
(64, 'AirTag', 'Track your items with this small device', 29.00, 50, 3, 'Accessories/AirTag.png'),
(65, 'Earpods Lightning Connector', 'Wired earphones with lightning connector', 29.00, 100, 3, 'Accessories/Earpods Lightning Connector.jpg'),
(66, 'HomePod Mini', 'Smart speaker with high-fidelity sound', 99.00, 30, 3, 'Accessories/HomePod Mini.jpg'),
(67, 'Leather Backcover for iPhone', 'Premium leather backcover for iPhone', 49.00, 25, 3, 'Accessories/Leather Backcover for iPhone.jpg'),
(68, 'Lightning 3.5mm Headphone Jack Adaptor', 'Adaptor for Lightning to 3.5mm jack', 9.00, 50, 3, 'Accessories/Lightning 3.5mm Headphone Jack Adaptor.jpg'),
(69, 'MagSafe Battery Pack', 'Portable battery pack for iPhone', 99.00, 20, 3, 'Accessories/MagSafe Battery Pack.jpg'),
(70, 'MagSafe Charger', 'Wireless charger for iPhone', 39.00, 40, 3, 'Accessories/MagSafe Charger.jpg'),
(71, 'Pencil (1st generation)', 'First generation Apple Pencil', 99.00, 30, 3, 'Accessories/Pencil (1st generation).jpg'),
(72, 'Pencil (2st generation)', 'Second generation Apple Pencil', 129.00, 25, 3, 'Accessories/Pencil (2st generation).jpg'),
(73, 'Silicone Case For iPhone', 'Durable silicone case for iPhone', 29.00, 50, 3, 'Accessories/Silicone Case For iPhone.jpg'),
(74, 'Smart Keyboard for iPad', 'Keyboard cover for iPad', 169.00, 20, 3, 'Accessories/Smart Keyboard for iPad.jpg'),
(75, 'TV 4K', 'High-definition Apple TV 4K', 179.00, 15, 3, 'Accessories/TV 4K.jpg'),
(76, 'TV HD', 'High-definition Apple TV', 149.00, 20, 3, 'Accessories/TV HD.jpg'),
(77, 'USB-C-to-Lightning Charging Cable', 'Charging cable for Apple devices', 19.00, 100, 3, 'Accessories/USB-C-to-Lightning Charging Cable.jpg'),
(78, 'Watch SE', 'Affordable Apple Watch with essential features', 279.00, 30, 3, 'Accessories/Watch SE.jpg'),
(79, 'Watch Series 9', 'Latest model of Apple Watch with advanced features', 399.00, 20, 3, 'Accessories/Watch Series 9.jpg'),
(80, 'Watch Ultra', 'High-end Apple Watch with premium features', 699.00, 10, 3, 'Accessories/Watch Ultra.jpg'),
(81, 'iMac 24-inch (M1, 2021) yellow', '24-inch iMac with M1 chip (2021) in yellow', 1299.00, 20, 4, 'mac/iMac 24-inch (M1, 2021) yellow.jpg'),
(82, 'iMac 24-inch (M1, 2021) red', '24-inch iMac with M1 chip (2021) in red', 1299.00, 20, 4, 'mac/iMac 24-inch (M1, 2021)red.jpg'),
(83, 'Mac 24 inch', '24-inch Mac', 999.00, 15, 4, 'mac/Mac 24 inch.jpg'),
(84, 'Mac Mini (M1, 2020)', 'Mac Mini with M1 chip (2020)', 699.00, 25, 4, 'mac/Mac Mini (M1, 2020).jpg'),
(85, 'Mac Mini (M2, 2023)', 'Mac Mini with M2 chip (2023)', 799.00, 30, 4, 'mac/Mac Mini (M2, 2023).jpg'),
(86, 'Mac Pro (Apple Silicon, 2023)', 'Mac Pro with Apple Silicon (2023)', 5999.00, 10, 4, 'mac/Mac Pro (Apple Silicon, 2023).jpg'),
(87, 'Mac Studio (M1 Max, 2022)', 'Mac Studio with M1 Max chip (2022)', 1999.00, 20, 4, 'mac/Mac Studio (M1 Max, 2022).jpg'),
(88, 'MacBook Air (M2, 2022)', 'MacBook Air with M2 chip (2022)', 1199.00, 50, 4, 'mac/MacBook Air (M2, 2022).jpg'),
(89, 'MacBook Pro 14-inch (M2 Pro, 2023)', 'MacBook Pro 14-inch with M2 Pro chip (2023)', 1999.00, 30, 4, 'mac/MacBook Pro 14-inch (M2 Pro, 2023).jpg'),
(90, 'MacBook Pro 16-inch (M1 Pro, 2021)', 'MacBook Pro 16-inch with M1 Pro chip (2021)', 2499.00, 25, 4, 'mac/MacBook Pro 16-inch (M1 Pro, 2021).png');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
