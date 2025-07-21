-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2025 at 01:04 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_1531`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_img` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `prod_code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prod_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prod_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `prod_img`, `prod_code`, `prod_name`, `prod_price`) VALUES
(1, '../img/spring-rolls.jpg', 'APP', 'Spring Rolls', 5.99),
(2, '../img/dumplings.jpg', 'APP', 'Dumplings', 6.99),
(3, '../img/edamame.jpg', 'APP', 'Edamame', 4.99),
(4, '../img/tempura.jpg', 'APP', 'Tempura', 7.99),
(5, '../img/satay.jpg', 'APP', 'Satay', 8.99),
(6, '../img/salad.jpg', 'APP', 'Cucumber Salad', 5.99),
(7, '../img/ramen.jpg', 'NOO', 'Ramen', 9.99),
(8, '../img/udon.jpg', 'NOO', 'Udon', 8.99),
(9, '../img/soba.jpg', 'NOO', 'Soba', 7.99),
(10, '../img/pad-thai.jpg', 'NOO', 'Pad Thai', 10.99),
(11, '../img/pho.jpg', 'NOO', 'Pho', 11.99),
(12, '../img/chow-mein.jpg', 'NOO', 'Chow Mein', 9.99),
(13, '../img/green-tea.jpg', 'BEV', 'Green Tea', 2.99),
(14, '../img/bubble-tea.jpg', 'BEV', 'Bubble Tea', 4.99),
(15, '../img/sake.jpg', 'BEV', 'Sake', 7.99),
(16, '../img/mojito.jpg', 'BEV', 'Mojito', 6.99),
(17, '../img/soda.jpg', 'BEV', 'Soda', 1.99),
(18, '../img/smoothie.jpg', 'BEV', 'Smoothie', 5.99);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
