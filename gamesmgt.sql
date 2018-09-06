-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 07:16 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gamesmgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
`brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT '0',
  `brand_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'Gap', 1, 2),
(2, 'Forever 21', 1, 2),
(3, 'Gap', 1, 2),
(4, 'Forever 21', 1, 2),
(5, 'Adidas', 1, 2),
(6, 'Gap', 1, 2),
(7, 'Forever 21', 1, 2),
(8, 'Adidas', 1, 2),
(9, 'Gap', 1, 2),
(10, 'Forever 21', 1, 2),
(11, 'Adidas', 1, 1),
(12, 'Wilson', 1, 1),
(13, 'Brand Forever', 2, 1),
(14, 'Forever young', 1, 2),
(15, 'Gilbert', 1, 1),
(16, 'Grays', 1, 2),
(17, 'Grays', 1, 2),
(18, 'Grays', 1, 1),
(19, 'Molten', 1, 1),
(20, 'Unknown', 1, 1),
(21, 'Artego', 1, 1),
(22, 'Adala Design', 1, 1),
(23, 'Bata', 2, 1),
(24, 'Nike', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT '0',
  `categories_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'Sports ', 1, 2),
(2, 'Casual', 1, 2),
(3, 'Casual', 1, 2),
(4, 'Sport', 1, 2),
(5, 'Casual', 1, 2),
(6, 'Sport wear', 1, 2),
(7, 'General Purpose', 1, 1),
(8, 'Sports ', 1, 1),
(9, 'Special Purpose', 1, 1),
(10, 'Awards', 2, 1),
(11, 'Recreational', 1, 1),
(12, 'Field', 2, 1),
(13, 'Football', 1, 1),
(14, 'Volleyball', 1, 1),
(15, 'Hand Ball', 1, 1),
(16, 'Tennis', 1, 1),
(17, 'Bandminton', 1, 1),
(18, 'Rugby', 1, 1),
(19, 'Sports', 1, 2),
(20, 'Swimming', 1, 1),
(21, 'Basket', 1, 1),
(22, 'Hockey', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `order_status`) VALUES
(1, '2016-07-15', 'John Doe', '9807867564', '2700.00', '351.00', '3051.00', '1000.00', '2051.00', '1000.00', '1051.00', 2, 2, 2),
(2, '2016-07-15', 'John Doe', '9808746573', '3400.00', '442.00', '3842.00', '500.00', '3342.00', '3342', '0', 2, 1, 2),
(3, '2016-07-16', 'John Doe', '9809876758', '3600.00', '468.00', '4068.00', '568.00', '3500.00', '3500', '0', 2, 1, 2),
(4, '2016-08-01', 'Indra', '19208130', '1200.00', '156.00', '1356.00', '1000.00', '356.00', '356', '0.00', 2, 1, 2),
(5, '2018-02-23', 'John Doe', '0712345678', '72000.00', '9360.00', '81360.00', '500.00', '80860.00', '80860', '0', 2, 3, 1),
(6, '2018-07-09', 'Yule Msee', '0792323547', '7000.00', '910.00', '7910.00', '3', '7907.00', '0', '7907.00', 2, 1, 1),
(7, '2018-07-09', 'Student', '0721212121', '40000.00', '5200.00', '45200.00', '0.0', '45200.00', '22600', '22600.00', 2, 1, 1),
(8, '2018-07-09', 'David', '012301231', '60000.00', '7800.00', '67800.00', '1000', '66800.00', '66800', '0.00', 3, 1, 1),
(9, '2018-08-02', 'Mary Akoth', 'S13/21400/15', '1000.00', '130.00', '1130.00', '0', '1130.00', '0', '1130.00', 2, 3, 1),
(10, '2018-09-02', 'Jacob Muturi', '0718999999', '500.00', '65.00', '565.00', '565', '0.00', '0', '0.00', 1, 2, 1),
(11, '2018-09-01', 'Bill Jean', '31252544', '2000.00', '260.00', '2260.00', '2260', '0.00', '0', '0.00', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE IF NOT EXISTS `order_item` (
`order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(1, 1, 1, '1', '1500', '1500.00', 2),
(2, 1, 2, '1', '1200', '1200.00', 2),
(3, 2, 3, '2', '1200', '2400.00', 2),
(4, 2, 4, '1', '1000', '1000.00', 2),
(5, 3, 5, '2', '1200', '2400.00', 2),
(6, 3, 6, '1', '1200', '1200.00', 2),
(7, 4, 5, '1', '1200', '1200.00', 2),
(18, 5, 7, '30', '1200', '36000.00', 1),
(19, 5, 8, '30', '1200', '36000.00', 1),
(20, 6, 11, '7', '2500', '2500.00', 1),
(21, 6, 9, '1', '2000', '2000.00', 1),
(22, 6, 11, '1', '2500', '2500.00', 1),
(26, 7, 9, '20', '2000', '40000.00', 1),
(27, 8, 10, '30', '2000', '60000.00', 1),
(28, 9, 16, '3', '1000', '1000.00', 1),
(29, 10, 12, '2', '500', '500.00', 1),
(30, 11, 10, '1', '2000', '2000.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(1, 'Half pant', '../assests/images/stock/2847957892502c7200.jpg', 1, 2, '19', '1500', 2, 2),
(2, 'T-Shirt', '../assests/images/stock/163965789252551575.jpg', 2, 2, '9', '1200', 2, 2),
(3, 'Half Pant', '../assests/images/stock/13274578927924974b.jpg', 5, 3, '18', '1200', 2, 2),
(4, 'T-Shirt', '../assests/images/stock/12299578927ace94c5.jpg', 6, 3, '29', '1000', 2, 2),
(5, 'Half Pant', '../assests/images/stock/24937578929c13532e.jpg', 8, 5, '17', '1200', 2, 2),
(6, 'Polo T-Shirt', '../assests/images/stock/10222578929f733dbf.jpg', 9, 5, '29', '1200', 2, 2),
(7, 'Green Shorts', '../assests/images/stock/64165b43d1b3762dd.jpg', 11, 7, '50', '1200', 1, 1),
(8, 'Green T-shirts', '../assests/images/stock/153695b43d2be80d4e.PNG', 11, 7, '50', '500', 1, 1),
(9, 'Soccer Ball', '../assests/images/stock/126365b47b9c4e5135.png', 11, 13, '80', '2000', 1, 1),
(10, 'Rugby Ball', '../assests/images/stock/322705b43d4b0a104d.jpg', 15, 18, '69', '2000', 1, 1),
(11, 'Basket Balls', '../assests/images/stock/319245b43d34f18a96.jpg', 12, 21, '22', '2500', 1, 1),
(12, 'Hockey Stick', '../assests/images/stock/222345b8d782d1f791.jpg', 11, 22, '28', '500', 1, 1),
(13, 'Hockey Ball', '../assests/images/stock/195605b8d79c3733ff.jpg', 18, 22, '30', '200', 1, 1),
(14, 'Hand Ball', '../assests/images/stock/39435b8d7abce2e84.jpg', 19, 9, '50', '650', 1, 1),
(15, 'Tennis Ball', '../assests/images/stock/84685b8d7d4687db5.jpg', 21, 16, '60', '100', 1, 1),
(16, 'Swimming', '../assests/images/stock/239975b8d8020dd26f.jpg', 22, 20, '197', '1000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `NationalID` int(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `NationalID`) VALUES
(19, 'StoreClerk', '434b169367fae2d606fc35631b028dfe', 'admin@gmail.com', 32165478);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
 ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
