-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 04:18 PM
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
-- Database: `arherelee`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `order_id` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `order_type_id` varchar(5) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_id` varchar(4) NOT NULL,
  `staff_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`order_id`, `total_price`, `order_type_id`, `order_date`, `payment_id`, `staff_id`) VALUES
(1, 500, 'OT001', '2023-05-11 11:28:57', 'PAY1', 13);

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `card_type_id` varchar(3) NOT NULL,
  `card_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`card_type_id`, `card_type`) VALUES
('CRE', 'CREDIT CARD'),
('DEB', 'DEBIT CRAD');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` varchar(5) NOT NULL,
  `category_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
('CG001', 'Fast food'),
('CG002', 'Thai food'),
('CG003', 'Chinese food\n'),
('CG004', 'Dessert'),
('CG005', 'Drink');

-- --------------------------------------------------------

--
-- Table structure for table `order_amount`
--

CREATE TABLE `order_amount` (
  `order_id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `order_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_type`
--

CREATE TABLE `order_type` (
  `order_type_id` varchar(5) NOT NULL,
  `order_type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_type`
--

INSERT INTO `order_type` (`order_type_id`, `order_type_name`) VALUES
('OT001', 'ONLINE'),
('OT002', 'ONSITE');

-- --------------------------------------------------------

--
-- Table structure for table `payment_card`
--

CREATE TABLE `payment_card` (
  `card_number` varchar(16) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `expire_month` date NOT NULL,
  `card_type_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_card`
--

INSERT INTO `payment_card` (`card_number`, `cvv`, `expire_month`, `card_type_id`) VALUES
('4566543756488097', '123', '2023-05-31', 'CRE'),
('4756182739162876', '321', '2023-05-31', 'CRE');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` varchar(4) NOT NULL,
  `payment_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_id`, `payment_type`) VALUES
('PAY1', 'CARD'),
('PAY2', 'CASH ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `category_id` varchar(5) NOT NULL,
  `product_name` text NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `price`, `image`) VALUES
(3, 'CG005', 'water', 12, 'Screenshot 2023-03-26 135810.png'),
(4, 'CG001', 'กะเพรา', 22, 'Screenshot 2023-03-24 205452.png'),
(5, 'CG002', 'กะเพรา', 144, 'Screenshot 2023-03-26 145805.png');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` varchar(7) NOT NULL,
  `expire_date` datetime NOT NULL,
  `discount` double NOT NULL,
  `minimum_cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `expire_date`, `discount`, `minimum_cost`) VALUES
('D00001', '2023-05-04 00:00:00', 30, 250);

-- --------------------------------------------------------

--
-- Table structure for table `seat_reserve`
--

CREATE TABLE `seat_reserve` (
  `reserve_id` int(11) NOT NULL,
  `seat_id` int(4) NOT NULL,
  `seat_type_id` varchar(2) NOT NULL,
  `reserve_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat_reserve`
--

INSERT INTO `seat_reserve` (`reserve_id`, `seat_id`, `seat_type_id`, `reserve_time`) VALUES
(3, 1, 'SM', '2023-05-27 13:37:42'),
(4, 2, 'SL', '2023-05-27 13:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `seat_type`
--

CREATE TABLE `seat_type` (
  `seat_type_id` varchar(2) NOT NULL,
  `seat_type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat_type`
--

INSERT INTO `seat_type` (`seat_type_id`, `seat_type_name`) VALUES
('SL', 'Large'),
('SM', 'Medium'),
('SS', 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `staff_address`
--

CREATE TABLE `staff_address` (
  `staff_address_id` int(8) NOT NULL,
  `staff_id` int(7) NOT NULL,
  `staff_address_line1` text NOT NULL,
  `staff_address_line2` text NOT NULL,
  `staff_city` text NOT NULL,
  `staff_province` text NOT NULL,
  `staff_postal_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE `staff_info` (
  `staff_id` int(7) NOT NULL,
  `staff_firstname` varchar(20) NOT NULL,
  `staff_lastname` varchar(20) NOT NULL,
  `staff_tel` varchar(10) NOT NULL,
  `staff_DOB` date NOT NULL,
  `staff_gender` enum('M','F') NOT NULL,
  `vehicle_id` varchar(7) DEFAULT NULL,
  `position_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`staff_id`, `staff_firstname`, `staff_lastname`, `staff_tel`, `staff_DOB`, `staff_gender`, `vehicle_id`, `position_id`) VALUES
(13, 'A', 'B', '0983452176', '2023-05-17', 'F', NULL, 'PST02');

-- --------------------------------------------------------

--
-- Table structure for table `staff_position`
--

CREATE TABLE `staff_position` (
  `position_id` varchar(5) NOT NULL,
  `position_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_position`
--

INSERT INTO `staff_position` (`position_id`, `position_name`) VALUES
('PST01', 'Manager'),
('PST02', 'Staff'),
('PST03', 'Rider');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `user_tel` varchar(10) NOT NULL,
  `user_DOB` date NOT NULL,
  `user_gender` enum('M','F') NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_password` varchar(15) NOT NULL,
  `user_point` int(11) NOT NULL,
  `card_number` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_firstname`, `user_lastname`, `user_tel`, `user_DOB`, `user_gender`, `user_email`, `user_password`, `user_point`, `card_number`) VALUES
(3, 'Teerut', 'Phonwijit', '0882952668', '2023-05-03', 'M', 'tee008.ph@gmail.com', 'asdasd', 250, '4566543756488097');

-- --------------------------------------------------------

--
-- Table structure for table `user_action`
--

CREATE TABLE `user_action` (
  `action_id` int(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reserve_id` int(11) DEFAULT NULL,
  `promotion_id` varchar(7) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_action`
--

INSERT INTO `user_action` (`action_id`, `order_id`, `reserve_id`, `promotion_id`, `user_id`) VALUES
(1, 1, 4, 'D00001', 3),
(2, 1, 4, 'D00001', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_address_line1` text NOT NULL,
  `user_address_line2` text NOT NULL,
  `user_city` text NOT NULL,
  `user_province` text NOT NULL,
  `user_postal_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_type_id` (`order_type_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`card_type_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `order_amount`
--
ALTER TABLE `order_amount`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_type`
--
ALTER TABLE `order_type`
  ADD PRIMARY KEY (`order_type_id`);

--
-- Indexes for table `payment_card`
--
ALTER TABLE `payment_card`
  ADD PRIMARY KEY (`card_number`),
  ADD KEY `card_type_id` (`card_type_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`);

--
-- Indexes for table `seat_reserve`
--
ALTER TABLE `seat_reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `seat_type_id` (`seat_type_id`);

--
-- Indexes for table `seat_type`
--
ALTER TABLE `seat_type`
  ADD PRIMARY KEY (`seat_type_id`);

--
-- Indexes for table `staff_address`
--
ALTER TABLE `staff_address`
  ADD PRIMARY KEY (`staff_address_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `vehicle_id` (`vehicle_id`,`position_id`),
  ADD KEY `positon_id` (`position_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `staff_position`
--
ALTER TABLE `staff_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `card_number` (`card_number`);

--
-- Indexes for table `user_action`
--
ALTER TABLE `user_action`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `order_id` (`order_id`,`reserve_id`,`user_id`),
  ADD KEY `reserve_id` (`reserve_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `promotion_id` (`promotion_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seat_reserve`
--
ALTER TABLE `seat_reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_address`
--
ALTER TABLE `staff_address`
  MODIFY `staff_address_id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
  MODIFY `staff_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_action`
--
ALTER TABLE `user_action`
  MODIFY `action_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`order_type_id`) REFERENCES `order_type` (`order_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment_method` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billing_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_amount`
--
ALTER TABLE `order_amount`
  ADD CONSTRAINT `order_amount_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `billing` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_amount_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_card`
--
ALTER TABLE `payment_card`
  ADD CONSTRAINT `payment_card_ibfk_1` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`card_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat_reserve`
--
ALTER TABLE `seat_reserve`
  ADD CONSTRAINT `seat_reserve_ibfk_1` FOREIGN KEY (`seat_type_id`) REFERENCES `seat_type` (`seat_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_address`
--
ALTER TABLE `staff_address`
  ADD CONSTRAINT `staff_address_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff_info` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_info`
--
ALTER TABLE `staff_info`
  ADD CONSTRAINT `staff_info_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `staff_position` (`position_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`card_number`) REFERENCES `payment_card` (`card_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_action`
--
ALTER TABLE `user_action`
  ADD CONSTRAINT `user_action_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `billing` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_action_ibfk_2` FOREIGN KEY (`reserve_id`) REFERENCES `seat_reserve` (`reserve_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_action_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_action_ibfk_4` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`promotion_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
