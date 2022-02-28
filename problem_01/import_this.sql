-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2022 at 05:28 AM
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
-- Database: `_sql_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `user_account_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `contact_type_id` int NOT NULL,
  `contact_output_id` int NOT NULL,
  `additional_comment` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `initiated_by_customer` int NOT NULL,
  `initiated_by_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_account_id`, `customer_id`, `contact_type_id`, `contact_output_id`, `additional_comment`, `initiated_by_customer`, `initiated_by_user`) VALUES
(1, 4, 7, 1, 4, 'customer agreed to our offer', 0, 1),
(2, 1, 2, 1, 1, 'dont want our products', 0, 1),
(3, 2, 9, 1, 4, 'interested in our offer', 0, 1),
(4, 3, 1, 1, 2, 'call him tomorrow ', 0, 1),
(5, 1, 6, 1, 4, 'purchased our products ', 0, 1),
(6, 4, 3, 1, 4, 'customer agreed to our offer ', 0, 1),
(7, 3, 5, 1, 4, 'loves our products ', 0, 1),
(8, 4, 4, 1, 4, 'customer agreed to our offer ', 0, 1),
(9, 3, 8, 1, 3, 'call him next month ', 0, 1),
(10, 4, 7, 2, 2, 'call him next month ', 0, 1),
(11, 3, 9, 3, 3, 'visit him next week ', 0, 1),
(12, 3, 8, 3, 3, 'oke oke', 1, 1),
(13, 4, 7, 3, 4, 'oke oke', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int NOT NULL,
  `customer_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int NOT NULL,
  `customer_address` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `contact_person` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `city_id`, `customer_address`, `contact_person`, `email`, `phone`, `is_active`) VALUES
(1, 'Drogerie Wien', 1, 'Deckergasse 15A', 'Emil Steinbach', 'emil@drogeriewien.com', '094234234', 1),
(2, 'Cosmetics Store', 4, 'Watling Street 347', 'Jeremy Corbyn', 'jeremy@c-store.org', '093923923', 1),
(3, 'Kosmetikstudio', 3, 'Rothenbaumchaussee 53', 'Willy Brandt', 'willy@kosmetikstudio.com', '0941562222', 0),
(4, 'Neue Kosmetik', 1, 'Karlsplatz 2', NULL, 'info@neuekosmetik.com', '094109253', 1),
(5, 'Bi Kosmetik', 2, 'Motzstraße 23', 'Clara Zetkin', 'clara@biokosmetik.org', '093825825', 1),
(6, 'K-Wien', 1, 'Kärntner Straße 204', 'Maria Rauch-Kallat', 'maria@kwien.org', '093427002', 1),
(7, 'Natural Cosmetics', 4, 'Clerkenwell Road 14B', 'Glenda Jackson', 'glena.j@natural-cosmetics.com', '093555123', 1),
(8, 'Kosmetik Plus', 2, 'Unter den Linden', '1 Angela Merkel', 'angela@k-plus.com', '094727727', 1),
(9, 'New Line Cosmetics', 4, 'Devonshire Street 92', 'Oliver Cromwell', 'oliver@nlc.org', '093202404', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `id` int NOT NULL,
  `first_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`id`, `first_name`, `last_name`, `user_name`, `password`, `email`, `phone`, `is_active`) VALUES
(1, 'Jürgen', 'Klopp', 'jklopp', 'd0406ee29d848474a1897058df4634ad', 'jklopp@gmail.com', '0933336777', 1),
(2, 'José', 'Mourinho', 'jmourinho', '64bd7f38bef780050096bfb872084ac7', 'jmourinho@gmail.com', '093825125', 1),
(3, 'Josep', 'Guardiola', 'jpuardiola', '98a87d2631b766915c9d1bf584c3fd7b', 'jpuardiola@gmail.com', NULL, 1),
(4, 'Alex', 'Ferguson', 'aferguson', 'bda97a3a31b44206e6bc3d5f40f6023e', 'aferguson@gmail.com', '093925645', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_account_id` (`user_account_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
