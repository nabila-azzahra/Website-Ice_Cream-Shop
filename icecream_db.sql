-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 10:26 AM
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
-- Database: `icecream_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(50) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `price`, `qty`) VALUES
(52, '1', '35', 75000, '1'),
(58, '10', '37', 30000, '1'),
(75, '12', '36', 95000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` int(2) NOT NULL,
  `dates` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progres',
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `id`, `name`, `number`, `email`, `address`, `method`, `product_id`, `price`, `qty`, `dates`, `status`, `payment_status`, `user_id`) VALUES
(6, '682c081621eb9', 'avq', '0895622207', 'sari@gmail.com', 'Sidoarjo, Jawa Timur', 'cash on delivery', '36', 95000, 1, '2025-05-20', 'pending', 'pending', 0),
(7, '683023711e11e', 'aveyy', '0895622207', 'g@gmail.com', 'home: Sidoarjo, Jawa Timur', 'cash on delivery', '42', 75000, 1, '2025-05-23', 'pending', 'pending', 30000),
(8, '683023e2b9016', 'aveyy', '8956222074', 'g@gmail.com', 'home: Sidoarjo, Jawa Timur', 'cash on delivery', '36', 95000, 1, '2025-05-23', 'pending', 'pending', 30000),
(9, '683023e2b9a93', 'aveyy', '8956222074', 'g@gmail.com', 'home: Sidoarjo, Jawa Timur', 'cash on delivery', '35', 75000, 1, '2025-05-23', 'pending', 'pending', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stock` int(100) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `image`, `stock`, `product_detail`, `status`) VALUES
(35, '18', 'daifuku mochi rainbow', 75000, 'product1.jpg', 50, '', 'active'),
(36, '18', 'oreo ice cream', 95000, 'product2.jpg', 78, '', 'active'),
(37, '18', 'chocolate ice cream', 30000, 'product4.jpg', 40, '', 'active'),
(39, '18', 'Ice cream moose track', 55000, 'product3.jpg', 50, '', 'active'),
(40, '18', 'mini strawberry tarts', 35000, 'product6.jpg', 20, '', 'active'),
(42, '18', 'dessert brownies la mode', 75000, 'product7.jpg', 80, '', 'active'),
(43, '18', 'cookies', 55000, 'bg5.jpeg', 80, '', 'active'),
(45, '18', 'chocolate mint ice cream', 30000, 'product0.jpg', 90, '', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `password`, `image`) VALUES
(18, 'karin', 'karin@gmail.com', '9b73dc0a1f1cb3c7143ff4e1b2388d2c264c9309', '683020697e4b6.jpeg'),
(20, 'muyo', 'muyo@gmail.com', 'd6f264b4e4e067782f2a3f9cde3156c983daea87', 'mvXA2Orv7LPMl9cV0LUH.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
(12, 'avq', 'sari@gmail.com', '1c12fa511d52194a5681ee8be41a1e398d85f290', 'WRlWYW4937Z5aRu6RXIb.jpeg'),
(13, 'anjay', 'say@gmail.com', '640d87e741e6aa4c669a82a4cd304787960513ab', '1NuofNCfRIg6g4Zi8uHb.jpeg'),
(14, 'avq', 'a@gmail.com', 'f29bc91bbdab169fc0c0a326965953d11c7dff83', 'ycFm9iTWhhGMm9Y6g3x0.jpeg'),
(15, 'fela', 'l@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', 'YL09hvRduTFhkFff2JcU.jpeg'),
(30000, 'aveyy', 'g@gmail.com', '4cd66dfabbd964f8c6c4414b07cdb45dae692e19', 'c65RzA0ebWgg5EpPt6w6.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30001;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
