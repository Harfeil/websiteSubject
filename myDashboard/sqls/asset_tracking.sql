-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 02:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(50) NOT NULL,
  `admin_fname` varchar(50) NOT NULL,
  `admin_lname` varchar(50) NOT NULL,
  `admin_num` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_fname`, `admin_lname`, `admin_num`, `admin_email`) VALUES
(39, 'ggg', 'ggg', 'ggg', 'gg@gmai.com');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(50) NOT NULL,
  `asset_name` varchar(50) NOT NULL,
  `asset_type` varchar(50) NOT NULL,
  `asset_status` varchar(50) NOT NULL,
  `asset_quant` int(50) NOT NULL,
  `assign_lab` varchar(50) NOT NULL,
  `sup_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `asset_name`, `asset_type`, `asset_status`, `asset_quant`, `assign_lab`, `sup_id`) VALUES
(141, 'Mouse', 'External', 'New', 0, 'asd', 27),
(142, 'Keyboard', 'External', 'New', 0, 'laboratory1', 27);

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--

CREATE TABLE `laboratories` (
  `lab_id` int(20) NOT NULL,
  `lab_name` varchar(50) NOT NULL,
  `lab_date` varchar(50) NOT NULL,
  `admin_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laboratories`
--

INSERT INTO `laboratories` (`lab_id`, `lab_name`, `lab_date`, `admin_id`) VALUES
(402, 'lab1', '0033-12-23', 39),
(403, 'laboratory1', '0022-12-31', 39);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sup_id` int(50) NOT NULL,
  `sup_fname` varchar(50) NOT NULL,
  `sup_lname` varchar(50) NOT NULL,
  `contact_num` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sup_id`, `sup_fname`, `sup_lname`, `contact_num`, `email`, `address`) VALUES
(27, 'Harfeil', 'Salmeron', '092342342323', 'harfeilsalmeron1@gmail.com', 'asdasd'),
(28, 'Harfeil', 'Salmeron', '999999999999999999', 'harfeilsalmeron2@gmail.com', 'Abuno Kry-Ass Tungkop'),
(31, 'gggs', 'Salmeron', '09232323', 'harfeilsalmeron1@gmail.com', 'asdas'),
(33, 'gg', '', '', '', ''),
(36, 'll', '', '', '', ''),
(37, '33', '', '', '', ''),
(38, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_table`
--

CREATE TABLE `transaction_table` (
  `trans_id` int(50) NOT NULL,
  `asset_id` int(50) NOT NULL,
  `lab_id` int(50) NOT NULL,
  `sup_id` int(50) NOT NULL,
  `asset_stat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_table`
--

INSERT INTO `transaction_table` (`trans_id`, `asset_id`, `lab_id`, `sup_id`, `asset_stat`) VALUES
(22, 141, 402, 27, 'Broken'),
(23, 142, 403, 27, 'New'),
(24, 142, 403, 27, 'New'),
(25, 142, 403, 27, 'New'),
(26, 142, 403, 27, 'New'),
(27, 142, 403, 27, 'New');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `asset_id` (`asset_id`),
  ADD KEY `lab_id` (`lab_id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `lab_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaction_table`
--
ALTER TABLE `transaction_table`
  MODIFY `trans_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`sup_id`) REFERENCES `supplier` (`sup_id`);

--
-- Constraints for table `laboratories`
--
ALTER TABLE `laboratories`
  ADD CONSTRAINT `laboratories_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`);

--
-- Constraints for table `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD CONSTRAINT `transaction_table_ibfk_2` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`asset_id`),
  ADD CONSTRAINT `transaction_table_ibfk_3` FOREIGN KEY (`lab_id`) REFERENCES `laboratories` (`lab_id`),
  ADD CONSTRAINT `transaction_table_ibfk_4` FOREIGN KEY (`sup_id`) REFERENCES `supplier` (`sup_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
