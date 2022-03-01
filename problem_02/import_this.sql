-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2022 at 03:29 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_sql_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `customer_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int NOT NULL,
  `customer_address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `contact_person` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `city_id`, `customer_address`, `contact_person`, `email`, `phone`, `is_active`) VALUES
(1, 'Drogerie Wien ', 1, 'Deckergasse 15A', 'Emil Steinbach', 'emil@drogeriewien.com', '094234234', 1),
(2, 'Cosmetics Store ', 4, 'Watling Street 347', 'Jeremy Corbyn', 'jeremy@c-store.org', '093923923', 1),
(3, 'Kosmetikstudio', 3, 'Rothenbaumchaussee 53', 'Willy Brandt', 'willy@kosmetikstudio.com', '0941562222', 0),
(4, 'Neue Kosmetik ', 1, 'Karlsplatz 2', NULL, 'info@neuekosmetik.com', '094109253', 1),
(5, 'Bio Kosmetik ', 2, 'Motzstraße 23', 'Clara Zetkin', 'clara@biokosmetik.org', '093825825', 1),
(6, 'K-Wien ', 1, 'Kärntner Straße 204', 'Maria Rauch-Kallat', 'maria@kwien.org', '093427002', 1),
(7, 'Natural Cosmetics ', 4, 'Clerkenwell Road 14B', 'Glenda Jackson', 'glena.j@natural-cosmetics.com', '093555123', 1),
(8, 'Kosmetik Plus ', 2, 'Unter den Linden 1', 'Angela Merkel', 'angela@k-plus.com', '094727727', 1),
(9, 'New Line Cosmetics', 4, 'Devonshire Street 92', 'Oliver Cromwell', 'oliver@nlc.org', '093202404', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `invoice_number` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `user_account_id` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_number`, `customer_id`, `user_account_id`, `total_price`) VALUES
(1, 'in_25181b07ba800c8d2fc967fe991807d9', 7, 4, 1436),
(2, '8fba0000fd456b27502b9f81e9d52481', 9, 2, 1000),
(3, '3b6638118246b6bcfd3dfcd9be487599', 3, 2, 360),
(4, 'dfe7f0a01a682196cac0120a9adbb550', 5, 2, 1675),
(5, '2a24cc2ad4440d698878a0a1a71f70fa', 6, 2, 9500),
(6, 'cbd304872ca6257716bcab8fc43204d7', 4, 2, 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
