-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 06:17 PM
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
(5, 'CG002', 'กะเพรา', 144, 'Screenshot 2023-03-26 145805.png'),
(12, 'CG001', 'กาหรี่่', 60, 'กะหรี่ปั๊บคุณเชอร์รี่-กินอะไรดีเชียงใหม่2.jpg'),
(14, 'CG002', 'กาหรี่่', 10, 'กะหรี่ปั๊บคุณเชอร์รี่-กินอะไรดีเชียงใหม่2.jpg');

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
('D00001', '2023-05-04 00:00:00', 30, 250),
('D00002', '2024-01-01 00:00:00', 30, 100),
('D00003', '2023-05-31 00:00:00', 50, 200),
('D01', '2023-05-02 00:00:00', 10, 60);

-- --------------------------------------------------------

--
-- Table structure for table `seat_reserve`
--

CREATE TABLE `seat_reserve` (
  `reserve_id` int(11) NOT NULL,
  `table_name` varchar(3) NOT NULL,
  `table_status` int(1) NOT NULL COMMENT '0=ว่าง,1=จอง',
  `seat_type_id` varchar(2) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat_reserve`
--

INSERT INTO `seat_reserve` (`reserve_id`, `table_name`, `table_status`, `seat_type_id`, `user_id`) VALUES
(1, 'A01', 0, 'SS', NULL),
(2, 'A02', 0, 'SS', NULL),
(3, 'A03', 0, 'SS', NULL),
(4, 'A04', 0, 'SS', NULL),
(5, 'A05', 0, 'SS', NULL),
(6, 'B01', 0, 'SM', NULL),
(7, 'B02', 0, 'SM', NULL),
(8, 'B03', 0, 'SM', NULL),
(9, 'B04', 0, 'SM', NULL),
(10, 'B05', 0, 'SM', NULL),
(11, 'C01', 1, 'SL', NULL),
(12, 'C02', 1, 'SL', NULL),
(13, 'C03', 1, 'SL', NULL),
(14, 'C04', 1, 'SL', NULL),
(15, 'C05', 0, 'SL', NULL),
(16, 'D01', 0, 'SS', NULL),
(17, 'D02', 0, 'SS', NULL),
(18, 'D03', 0, 'SM', NULL),
(19, 'D04', 0, 'SM', NULL),
(20, 'D05', 0, 'SL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seat_type`
--

CREATE TABLE `seat_type` (
  `seat_type_id` varchar(2) NOT NULL,
  `sizetable` varchar(10) NOT NULL,
  `sizevalue` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat_type`
--

INSERT INTO `seat_type` (`seat_type_id`, `sizetable`, `sizevalue`) VALUES
('SL', 'Large', 8),
('SM', 'Medium', 4),
('SS', 'Small', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff_address`
--

CREATE TABLE `staff_address` (
  `staff_address_id` int(8) NOT NULL,
  `staff_id` int(7) NOT NULL,
  `staff_address_line1` text NOT NULL,
  `staff_address_line2` text DEFAULT NULL,
  `staff_city` text NOT NULL,
  `staff_province` text NOT NULL,
  `staff_postal_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_address`
--

INSERT INTO `staff_address` (`staff_address_id`, `staff_id`, `staff_address_line1`, `staff_address_line2`, `staff_city`, `staff_province`, `staff_postal_code`) VALUES
(1, 1, '31/199', '', '-', 'Bangkok', '10140');

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
  `staff_email` varchar(30) NOT NULL,
  `staff_password` varchar(255) NOT NULL,
  `staff_gender` enum('M','F') NOT NULL,
  `vehicle_id` varchar(7) DEFAULT NULL,
  `position_id` varchar(5) NOT NULL,
  `staff_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_info`
--

INSERT INTO `staff_info` (`staff_id`, `staff_firstname`, `staff_lastname`, `staff_tel`, `staff_DOB`, `staff_email`, `staff_password`, `staff_gender`, `vehicle_id`, `position_id`, `staff_image`) VALUES
(1, 'MAN', 'Noppakorn', '0945128589', '2001-03-15', 'man.noppakorn@gmail.com', '248655', 'M', NULL, 'PST01', NULL),
(2, 'Teerut', 'Phonwijit', '0882952668', '2023-05-03', 'teerut@email.com', '123123', 'M', NULL, 'PST02', NULL),
(18, 'MAN', 'Noppakorn', '0818264902', '2023-05-03', 'man_noppakorn@hotmail.com', '159357', 'M', 'กก 444', 'PST03', NULL);

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
  `card_number` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_firstname`, `user_lastname`, `user_tel`, `user_DOB`, `user_gender`, `user_email`, `user_password`, `card_number`) VALUES
(3, 'Teerut', 'Phonwijit', '0882952668', '2023-05-03', 'M', 'tee008.ph@gmail.com', 'asdasd', '4566543756488097'),
(5, 'MAN', 'Noppakorn', '0945128589', '2023-05-09', 'M', 'man_noppakorn@hotmail.com', '123456', NULL),
(6, 'Noppakorn', 'Sorndech', '0818264902', '2023-05-10', 'M', 'man.noppakorn@gmail.com', '123456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_action`
--

CREATE TABLE `user_action` (
  `action_id` int(6) NOT NULL,
  `order_id` int(11) NOT NULL,
  `promotion_id` varchar(7) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `seat_type_id` (`seat_type_id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `order_id` (`order_id`,`user_id`),
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
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `seat_reserve`
--
ALTER TABLE `seat_reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staff_address`
--
ALTER TABLE `staff_address`
  MODIFY `staff_address_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
  MODIFY `staff_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  ADD CONSTRAINT `seat_reserve_ibfk_1` FOREIGN KEY (`seat_type_id`) REFERENCES `seat_type` (`seat_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seat_reserve_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
