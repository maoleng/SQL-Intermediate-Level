-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2022 at 01:12 PM
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
-- Database: `_sql_03`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `line_total_pric` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`id`, `invoice_id`, `product_id`, `quantity`, `price`, `line_total_pric`) VALUES
(1, 1, 5, 20, 65, 1300),
(2, 1, 7, 2, 68, 136),
(3, 2, 5, 10, 100, 1000),
(4, 3, 10, 2, 180, 360),
(5, 4, 1, 5, 65, 325),
(6, 4, 2, 10, 95, 950),
(7, 4, 5, 4, 100, 400),
(8, 5, 10, 100, 95, 9500),
(9, 6, 4, 6, 25, 150);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `sku` int NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_description` varchar(250) NOT NULL,
  `current_price` int NOT NULL,
  `quantity_in_stock` int NOT NULL,
  `is_active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `product_name`, `product_description`, `current_price`, `quantity_in_stock`, `is_active`) VALUES
(1, 330120, 'Game Of Thrones - URBAN DECAY', 'Game Of Thrones Eyeshadow Palette', 65, 122, 1),
(2, 330121, 'Advanced Night Repair - ESTÉE LAUDER', 'Advanced Night Repair Synchronized Recovery Complex II', 98, 51, 1),
(3, 330122, 'Rose Deep Hydration - FRESH', 'Rose Deep Hydration Facial Toner', 45, 34, 1),
(4, 330123, 'Pore-Perfecting Moisturizer - TATCHA', 'Pore-Perfecting Moisturizer & Cleanser Duo', 25, 393, 1),
(5, 330124, 'Capture Youth - DIOR', 'Capture Youth Serum Collection', 95, 74, 1),
(6, 330125, 'Slice of Glow - GLOW RECIPE', 'Slice of Glow Set', 45, 40, 1),
(7, 330126, 'Healthy Skin - KIEHL S SINCE 1851', 'Healthy Skin Squad', 68, 154, 1),
(8, 330127, 'Power Pair! - IT COSMETICS IT', 's Your Skincare Power Pair! Best-Selling Moisturizer & Eye Cream Duo', 80, 0, 0),
(9, 330128, 'Dewy Skin Mist - TATCHA', 'Limited Edition Dewy Skin Mist Mini', 20, 281, 1),
(10, 330129, 'Silk Pillowcase - SLIP', 'Silk Pillowcase Duo + Scrunchies Kit', 170, 11, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `invoice_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
