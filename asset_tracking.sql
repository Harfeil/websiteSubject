-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 10:10 AM
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
  `admin_email` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL,
  `admin_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_fname`, `admin_lname`, `admin_num`, `admin_email`, `admin_pass`, `admin_role`) VALUES
(39, 'harfeil', 'ggg', 'ggg', 'gg@gmai.com', '', ''),
(43, 'Christians', 'Tabelon', '0924612321323', 'christian@gmail.com', '', ''),
(44, 'Jefferson', 'Taña', '09234234234', 'tana@gmail.com', '', ''),
(45, 'Justine', 'Labora', '092342342342', 'labora@gmail.com', '', ''),
(64, 'Jeremy', 'Carazo', '0924612321323', 'jeremy@gmail.com', '', ''),
(66, '', '', '', '', '', ''),
(67, 'asd', 'asd', 'asd', 'asd', 'asd', ''),
(68, '', '', '', '', '', ''),
(69, '', '', '', '', '', ''),
(70, 'numberInput', 'numberInput', 'numberInput', 'numberInput', 'numberInput', ''),
(71, 'Harfeil', 'Harfeil', 'Harfeil', 'Harfeil', 'Harfeil', ''),
(72, 'Jim', 'Jim', 'Jim', 'Jim', 'Jim', ''),
(73, 'jd', 'jd', 'jd', 'jd', 'jd', ''),
(74, 'fff', 'fff', 'fff', 'fff', 'fff', ''),
(75, 'Jan', 'Jan', 'Jan', 'Jan', 'Jan', ''),
(76, 'Kan', 'Kan', 'Jan', 'Jan', 'Jan', ''),
(77, 'Kans', 'Kans', 'Jan', 'Jan', 'Jan', ''),
(79, 'Janjan', 'Janjan', 'Janjan', 'Janjan', '$2y$10$cpai.8yPfqzhuZMTvJrXwOHdAOjyKi8R4OhsEJEmHEb', ''),
(80, 'Jimmy', 'Jimmy', 'Jimmy', 'Jimmy', '$2y$10$Mt75d9S6b6Y/cqEI.7f00uvhrLZUx9xT3ZQAavEr2/B', 'Admin'),
(81, 'Janny', 'Janny', 'Janny', 'Janny', '$2y$10$he4qYYkLpA8gid2VWOSxtejSJlXGwxo1HBx62PYGVwf', 'Instructor'),
(83, 'Janrey', 'Janrey', 'Janrey', 'Janrey', '$2y$10$O917sUa4O9GQa8urYVydruvIsh5W2tHBgsE8cp7eOB0', 'Admin'),
(84, 'Lani', 'Lani', 'Lani', 'Lani', '$2y$10$uUPRUj0mwKAyTao2izV5nuDjWklBd00H0r4vTaZxxwO', 'Instructor'),
(85, 'Hary', 'Hary', 'Hary', 'Hary', 'Hary', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(50) NOT NULL,
  `asset_brand` varchar(50) NOT NULL,
  `asset_type` varchar(50) NOT NULL,
  `asset_status` varchar(50) NOT NULL,
  `asset_desc` varchar(50) NOT NULL,
  `asset_quant` int(50) NOT NULL,
  `sup_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `asset_brand`, `asset_type`, `asset_status`, `asset_desc`, `asset_quant`, `sup_id`) VALUES
(306, 'Razer', 'Desktop Computer', 'New', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 8, 58),
(308, 'Inovo', 'Laptop', 'New', 'asd', 7, 58),
(309, 'Razer', 'Monitor', 'New', 'asdasd', 4, 58),
(310, 'Acer', 'Speakers', 'Broken', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 2, 58),
(311, 'Java', 'Desktop Computer', 'New', '', 0, 58),
(312, '', 'Scanner', 'New', '', 0, 58),
(313, '', 'Scanner', 'New', '', 0, 58),
(314, '', 'Router', 'New', '', 0, 58),
(315, '', 'Router', 'New', '', 0, 58),
(316, '', 'Router', 'New', '', 0, 58),
(317, '', 'Network Switch', 'New', '', 0, 58),
(318, '', 'Network Switch', 'New', '', 0, 58),
(319, '', 'Network Switch', 'New', '', 0, 58),
(320, '', 'Headset', 'New', '', 0, 58),
(321, '', 'Headset', 'New', '', 0, 58),
(322, '', 'Headset', 'New', '', 0, 58),
(323, '', 'Headset', 'New', '', 0, 58),
(324, '', 'Microphone', 'New', '', 0, 58),
(325, '', 'Microphone', 'New', '', 0, 58),
(326, '', 'Camera', 'New', '', 0, 58),
(327, '', 'Camera', 'New', '', 0, 58),
(328, '', 'Printer', 'New', '', 0, 58),
(329, '', 'Printer', 'New', '', 0, 58),
(330, 'Razer', 'Desktop Computer', 'New', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, 58),
(331, 'asddd', 'Desktop Computer', 'New', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 4, 58),
(332, 'asddd', 'Projector', 'New', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 6, 58);

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
(403, 'laboratory123', '0022-12-31', 44),
(404, '4th Floor Laboratorys', '2024-12-20', 39),
(414, 'asdd', '0003-12-31', 39),
(419, 'Indigo Building', '0033-12-23', 39);

-- --------------------------------------------------------

--
-- Table structure for table `request_asset`
--

CREATE TABLE `request_asset` (
  `req_id` int(50) NOT NULL,
  `req_name` varchar(50) NOT NULL,
  `req_status` varchar(50) NOT NULL,
  `quantity_asset` int(50) NOT NULL,
  `lab_id` int(50) NOT NULL,
  `req_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_asset`
--

INSERT INTO `request_asset` (`req_id`, `req_name`, `req_status`, `quantity_asset`, `lab_id`, `req_date`) VALUES
(165, 'asd', 'Processing', 1, 402, 'Jan-29-2024'),
(166, 'asd', 'Pending', 1, 404, 'Jan-29-2024'),
(170, 'asdf', 'Processing', 3, 419, 'Jan-30-2024'),
(171, 'Projector', 'Pending', 6, 404, 'Jan-31-2024'),
(172, 'Projector', 'Pending', 6, 404, 'Jan-31-2024'),
(173, 'asd', 'Pending', 1, 402, 'Jan-31-2024');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sup_id` int(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `sup_fname` varchar(50) NOT NULL,
  `sup_lname` varchar(50) NOT NULL,
  `contact_num` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sup_id`, `company_name`, `sup_fname`, `sup_lname`, `contact_num`, `email`, `address`) VALUES
(58, 'asdds', 'asdd', 'asd', '09432.213417', 'asd@gmail.com', 'Abuno Kry-Ass Tungkop'),
(59, 'asdds', 'asdd', 'asd', '9894132130', 'JIMs@gmail.com', 'Abuno Kry-Ass Tungkop'),
(65, 'Janrey', 'Janrey', 'Janrey', '097495132321', 'Janrey@gmail.com', 'Abuno Kry-Ass Tungkop');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_table`
--

CREATE TABLE `transaction_table` (
  `trans_id` int(50) NOT NULL,
  `asset_id` int(50) NOT NULL,
  `lab_id` int(50) NOT NULL,
  `sup_id` int(50) NOT NULL,
  `asset_stat` varchar(50) NOT NULL,
  `trans_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_table`
--

INSERT INTO `transaction_table` (`trans_id`, `asset_id`, `lab_id`, `sup_id`, `asset_stat`, `trans_date`) VALUES
(175, 306, 402, 58, 'New', 'Jan-29-2024'),
(176, 306, 402, 58, 'New', 'Jan-29-2024'),
(177, 306, 402, 58, 'New', 'Jan-29-2024'),
(178, 306, 402, 58, 'New', 'Jan-29-2024'),
(179, 306, 402, 58, 'New', 'Jan-29-2024'),
(180, 306, 402, 58, 'New', 'Jan-29-2024'),
(181, 306, 402, 58, 'New', 'Jan-29-2024'),
(182, 306, 402, 58, 'New', 'Jan-29-2024'),
(183, 306, 402, 58, 'New', 'Jan-29-2024'),
(184, 306, 402, 58, 'New', 'Jan-29-2024'),
(185, 306, 402, 58, 'New', 'Jan-29-2024'),
(186, 306, 402, 58, 'New', 'Jan-29-2024'),
(187, 306, 402, 58, 'New', 'Jan-29-2024'),
(188, 306, 402, 58, 'New', 'Jan-29-2024'),
(189, 306, 402, 58, 'New', 'Jan-29-2024'),
(190, 306, 402, 58, 'New', 'Jan-29-2024'),
(191, 308, 404, 58, 'Broken', 'Jan-29-2024'),
(192, 308, 404, 58, 'Maintenance', 'Jan-29-2024'),
(193, 308, 404, 58, 'Maintenance', 'Jan-29-2024'),
(194, 308, 404, 58, 'New', 'Jan-29-2024'),
(195, 308, 404, 58, 'New', 'Jan-29-2024'),
(196, 308, 404, 58, 'New', 'Jan-29-2024'),
(197, 308, 404, 58, 'New', 'Jan-29-2024'),
(198, 332, 404, 58, 'New', 'Jan-31-2024'),
(199, 332, 404, 58, 'New', 'Jan-31-2024'),
(200, 332, 404, 58, 'New', 'Jan-31-2024'),
(201, 332, 404, 58, 'New', 'Jan-31-2024'),
(202, 332, 404, 58, 'New', 'Jan-31-2024'),
(203, 332, 404, 58, 'New', 'Jan-31-2024'),
(204, 310, 403, 58, 'Broken', 'Jan-31-2024'),
(205, 310, 403, 58, 'Broken', 'Jan-31-2024');

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
-- Indexes for table `request_asset`
--
ALTER TABLE `request_asset`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `lab_id` (`lab_id`);

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
  MODIFY `admin_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `laboratories`
--
ALTER TABLE `laboratories`
  MODIFY `lab_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `request_asset`
--
ALTER TABLE `request_asset`
  MODIFY `req_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `transaction_table`
--
ALTER TABLE `transaction_table`
  MODIFY `trans_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

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
-- Constraints for table `request_asset`
--
ALTER TABLE `request_asset`
  ADD CONSTRAINT `request_asset_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `laboratories` (`lab_id`);

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
