-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 25, 2025 at 11:41 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_tech_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_mobile_number` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_email` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_dob` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`customer_mobile_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_mobile_number`, `customer_password`, `customer_name`, `customer_email`, `customer_address`, `customer_dob`) VALUES
('01712345678', 'pass', 'TANVIR AHMED', 'tanvir@gmail.com', 'Savar, Dhaka, Bangladesh', '2322-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_mobile_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_dob` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_address` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_joining_date` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `employee_salary` int NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_password`, `employee_mobile_number`, `employee_email`, `employee_name`, `employee_gender`, `employee_dob`, `employee_address`, `employee_role`, `employee_joining_date`, `employee_salary`) VALUES
('1111', 'pass', '01712345678', 'admin@gamil.com', 'Mr Admin', 'Male', '01/01/1990', 'Bashundara R/A ,Dhaka ,Bangladesh', 'Admin', '01/01/2025', 80000),
('2222', 'pass', '01712348678', 'example@email.com', 'Mr Manager', 'Male', '2015-02-02', 'Kuril,Dhaka', 'Manager', '2024-12-31', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `notice_content` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_content`) VALUES
('1212', 'this is a notice\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

DROP TABLE IF EXISTS `ordered`;
CREATE TABLE IF NOT EXISTS `ordered` (
  `order_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_mobile_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `total_cost` double(10,2) NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordered`
--

INSERT INTO `ordered` (`order_id`, `customer_mobile_number`, `total_cost`, `payment_method`, `order_status`) VALUES
('0002', '01788899814', 256.00, 'bkash', 'pending'),
('0003', '01788899814', 340.00, 'cash', 'pending'),
('0004', '01712345678', 990.00, 'cash', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `product_category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` double(10,2) DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  `product_location` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_category`, `product_name`, `product_price`, `product_quantity`, `product_location`) VALUES
('0001', 'Arduino ', 'Arduino Pro Micro', 500.00, 3, '../product_img/p38.png'),
('00010', 'Arduino ', 'Heat Sink Set', 50.00, 4, '../product_img/p50.png'),
('0002', 'Arduino ', 'GPS Module GY-GPSV3 NEO-8M with Ceramic Active Antenna', 450.00, 5, '../product_img/p39.png'),
('0003', 'Arduino ', 'TDS Sensor', 300.00, 4, '../product_img/p41.png'),
('0004', 'Arduino ', 'Bluetooth module', 300.00, 4, '../product_img/p42.png'),
('0005', 'Arduino ', 'DHT11 Temperature and Humidity Sensor', 250.00, 3, '../product_img/p43.png'),
('0006', 'Arduino ', 'GY-906 Infrared Temperature Sensor', 1300.00, 4, '../product_img/p45.png'),
('0007', 'Arduino ', 'Speed Detecting Sensor', 200.00, 3, '../product_img/p46.png'),
('0008', 'Arduino ', 'RF Transmitter Receiver Pair', 150.00, 3, '../product_img/p47.png'),
('0009', 'Arduino ', 'HC-SR04 Ultrasonic Sensor', 100.00, 4, '../product_img/p49.png'),
('0011', 'Arduino ', 'Raspberry Pi 4 Model B 4GB', 12960.00, 4, '../product_img/p51.png'),
('0012', 'Arduino ', 'Night Vision Camera for Raspberry Pi', 2930.00, 4, '../product_img/p52.jpeg'),
('0013', 'Arduino ', 'Acrylic Case for Raspberry Pi 4 Model B', 270.00, 4, '../product_img/p53.jpeg'),
('0014', 'Arduino ', 'WiFi Relay Module ESP8266 5V', 375.00, 5, '../product_img/p54.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
CREATE TABLE IF NOT EXISTS `sells` (
  `sell_id` int NOT NULL AUTO_INCREMENT,
  `customer_mobile_number` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `price` float NOT NULL,
  `time` datetime NOT NULL,
  `payment_method` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`sell_id`, `customer_mobile_number`, `price`, `time`, `payment_method`) VALUES
(1, '01788899814', 94, '2025-01-20 00:10:08', 'card'),
(2, '01788899814', 256, '2025-01-20 11:42:26', 'card'),
(3, '01788899814', 256, '2025-01-20 11:46:47', 'bkash'),
(4, '01788899814', 256, '2025-01-20 11:49:12', 'bkash'),
(5, '01788899814', 256, '2025-01-20 11:56:03', 'card'),
(6, '01788899814', 526, '2025-01-20 12:04:00', 'card'),
(7, '01788899814', 94, '2025-01-20 13:30:21', 'card'),
(8, '01788899814', 340, '2025-01-20 15:18:22', 'cash'),
(9, '1234567890', 100.5, '2025-01-01 10:00:00', 'Credit Card'),
(10, '9876543210', 200.75, '2025-01-02 11:15:00', 'Cash'),
(11, '5551234567', 50, '2025-01-03 14:30:00', 'Debit Card'),
(12, '6669876543', 125, '2025-01-05 12:45:00', 'Credit Card'),
(13, '7775432109', 75, '2025-01-06 16:00:00', 'Cash'),
(14, '8888765432', 150.25, '2025-01-07 09:20:00', 'Debit Card'),
(15, '9993456789', 99.99, '2025-01-09 18:10:00', 'Credit Card'),
(16, '1112223333', 220.1, '2025-01-11 13:25:00', 'Cash'),
(17, '4445556666', 180.8, '2025-01-13 17:50:00', 'Debit Card'),
(18, '3334445555', 300, '2025-01-15 08:30:00', 'Credit Card'),
(19, '2223334444', 90, '2025-02-01 15:40:00', 'Cash'),
(20, '5556667777', 60.5, '2025-02-02 10:55:00', 'Debit Card'),
(21, '6667778888', 50.25, '2025-02-03 11:00:00', 'Credit Card'),
(22, '7778889999', 125.75, '2025-02-05 13:15:00', 'Cash'),
(23, '8889990000', 80, '2025-02-06 16:30:00', 'Debit Card'),
(24, '9990001111', 175, '2025-02-07 09:45:00', 'Credit Card'),
(25, '0001112222', 99.99, '2025-02-08 14:00:00', 'Cash'),
(26, '1113334444', 240.4, '2025-02-10 18:20:00', 'Debit Card'),
(27, '5557779999', 130.3, '2025-02-12 10:10:00', 'Credit Card'),
(28, '4442223333', 200.2, '2025-02-14 12:35:00', 'Cash'),
(29, '3331114444', 95.9, '2025-03-01 16:25:00', 'Debit Card'),
(30, '2224445555', 110, '2025-03-02 13:50:00', 'Credit Card'),
(31, '5553336666', 125, '2025-03-03 09:40:00', 'Cash'),
(32, '6662227777', 185.75, '2025-03-04 14:20:00', 'Debit Card'),
(33, '7775558888', 50, '2025-03-05 11:00:00', 'Credit Card'),
(34, '8883332222', 210.6, '2025-03-06 17:30:00', 'Cash'),
(35, '9991114444', 180.2, '2025-03-07 09:50:00', 'Debit Card'),
(36, '0003335555', 120, '2025-03-08 12:00:00', 'Credit Card'),
(37, '1114446666', 200.5, '2025-03-09 10:15:00', 'Cash'),
(38, '5556668888', 85.75, '2025-04-01 14:40:00', 'Debit Card'),
(39, '4445557777', 150.3, '2025-04-03 15:55:00', 'Credit Card'),
(40, '3334446666', 270.4, '2025-04-05 11:10:00', 'Cash'),
(41, '2223335555', 95.5, '2025-04-07 09:30:00', 'Debit Card'),
(42, '5554446666', 220.6, '2025-04-09 18:00:00', 'Credit Card'),
(43, '6667779999', 135.25, '2025-04-11 10:30:00', 'Cash'),
(44, '7778880000', 175, '2025-04-13 13:40:00', 'Debit Card'),
(45, '8889992222', 120, '2025-04-14 14:15:00', 'Credit Card'),
(46, '9990003333', 185.75, '2025-04-16 17:00:00', 'Cash'),
(47, '0001114444', 230.9, '2025-04-18 10:00:00', 'Debit Card'),
(48, '1113337777', 95.99, '2025-05-01 11:20:00', 'Credit Card'),
(49, '5556669999', 70, '2025-05-02 16:10:00', 'Cash'),
(50, '4445558888', 100.1, '2025-05-03 13:00:00', 'Debit Card'),
(51, '3334447777', 160, '2025-05-04 17:30:00', 'Credit Card'),
(52, '2223334444', 95.5, '2025-05-06 10:30:00', 'Cash'),
(53, '5557778888', 210.3, '2025-05-08 15:00:00', 'Debit Card'),
(54, '6668880000', 125.2, '2025-05-10 14:00:00', 'Credit Card'),
(55, '7779991111', 300.5, '2025-05-12 13:30:00', 'Cash'),
(56, '8880002222', 180, '2025-05-14 11:50:00', 'Debit Card'),
(57, '9991113333', 220.3, '2025-05-16 17:20:00', 'Credit Card'),
(58, '0002224444', 125.75, '2025-06-01 09:00:00', 'Cash'),
(59, '1113336666', 140.4, '2025-06-03 12:30:00', 'Debit Card'),
(60, '5554448888', 185.75, '2025-06-05 16:40:00', 'Credit Card'),
(61, '6667771111', 95, '2025-06-07 14:50:00', 'Cash'),
(62, '7778882222', 130.5, '2025-06-09 11:15:00', 'Debit Card'),
(63, '8889993333', 250, '2025-06-11 10:25:00', 'Credit Card'),
(64, '9990004444', 200.1, '2025-06-13 13:10:00', 'Cash'),
(65, '0001112222', 185.5, '2025-06-15 12:00:00', 'Credit Card'),
(66, '1112223333', 175, '2025-06-17 14:30:00', 'Debit Card'),
(67, '2223334444', 210.75, '2025-06-19 16:00:00', 'Cash'),
(68, '3334445555', 99.99, '2025-06-21 10:45:00', 'Credit Card'),
(69, '4445556666', 80.25, '2025-06-23 13:20:00', 'Debit Card'),
(70, '01712345678', 990, '2025-01-25 17:29:14', 'cash');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
