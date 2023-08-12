-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 09:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ultidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `memberid` int(10) NOT NULL,
  `custName` varchar(50) NOT NULL,
  `productID` int(10) NOT NULL,
  `productName` varchar(250) NOT NULL,
  `productPrice` decimal(4,2) NOT NULL,
  `quantity` int(3) NOT NULL,
  `size` char(2) NOT NULL,
  `productImage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `memberid`, `custName`, `productID`, `productName`, `productPrice`, `quantity`, `size`, `productImage`) VALUES
(11, 2, 'Alex', 1, 'Men\'s Oriental-Design Black Hoodie', '69.99', 2, 'M', '<img class=\'cart-item\' src=\'css/images/hoodie1-front.jpg\' alt=\'item1\'>'),
(12, 2, 'Alex', 1, 'Men\'s Oriental-Design Black Hoodie', '69.99', 2, 'M', '<img class=\'cart-item\' src=\'css/images/hoodie1-front.jpg\' alt=\'item1\'>'),
(13, 2, 'Alex', 1, 'Men\'s Oriental-Design Black Hoodie', '69.99', 2, 'L', '<img class=\'cart-item\' src=\'css/images/hoodie1-front.jpg\' alt=\'item1\'>'),
(28, 1, 'Alex', 15, 'Women\'s Crop Hoodie', '59.99', 1, 'XS', '<img class=\'cart-item\' src=\'css/images/hoodie8-front.jpg\' alt=\'item15\'>');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prodID` int(4) NOT NULL,
  `prodName` varchar(100) NOT NULL,
  `prodPrice` decimal(4,2) NOT NULL,
  `prodTag` varchar(300) NOT NULL,
  `prodImg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prodID`, `prodName`, `prodPrice`, `prodTag`, `prodImg`) VALUES
(1, 1, 'Men Oriental Design Black Hoodie', '69.99', '<a class=\'model-link\' href=\'menhoodie1.php\'><img class=\'new-item\' id=\'item1\' src=\'css/images/hoodie1-front.jpg\' alt=\'image01\'></a>', '<img class=\'new-item\' id=\'item1\' src=\'css/images/hoodie1-front.jpg\' alt=\'image01\'>'),
(2, 2, 'Men White Rose Gold Reflective Hoodie', '64.99', '<a class=\'model-link\' href=\'menhoodie2.php\'><img class=\'new-item\' id=\'item2\' src=\'css/images/hoodie2-front.jpg\' alt=\'image02\'></a>', '<img class=\'new-item\' id=\'item2\' src=\'css/images/hoodie2-front.jpg\' alt=\'image02\'>'),
(3, 3, 'Men River Flow Hoodie', '64.99', '<a class= \'model-link\' href=\'menhoodie3.php\'><img class=\'new-item\' id=\'item3\' src=\'css/images/hoodie3-front.jpg\' alt=\'image03\'></a>', '<img class=\'new-item\' id=\'item3\' src=\'css/images/hoodie3-front.jpg\' alt=\'image03\'>'),
(4, 4, 'Men Full Zip Hoodie', '69.99', '<a class=\'model-link\' href=\'menhoodie4.php\'><img class=\'new-item\' id=\'item4\' src=\'css/images/hoodie4-front.jpg\' alt=\'image04\'>', '<img class=\'new-item\' id=\'item4\' src=\'css/images/hoodie4-front.jpg\' alt=\'image04\'>'),
(5, 5, 'Men Black Glitchpop Sweater', '59.99', '<a class=\'model-link\' href=\'mensweater1.php\'><img class=\'new-item\' id=\'item5\' src=\'css/images/sweater1-front.jpg\' alt=\'image05\'>', '<img class=\'new-item\' id=\'item5\' src=\'css/images/sweater1-front.jpg\' alt=\'image05\'>'),
(6, 6, 'Men Grey Sweat Shorts', '24.99', '<a class=\'model-link\' href=\'menshorts1.php\'><img class=\'new-item\' id=\'item6\' src=\'css/images/shorts1-front.png\' alt=\'image06\'>', '<img class=\'new-item\' id=\'item6\' src=\'css/images/shorts1-front.jpg\' alt=\'image06\'>');

-- --------------------------------------------------------

--
-- Table structure for table `searchtest`
--

CREATE TABLE `searchtest` (
  `id` int(11) NOT NULL,
  `proName` varchar(50) NOT NULL,
  `proType` varchar(20) NOT NULL,
  `proTag` varchar(400) NOT NULL,
  `proPrice` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchtest`
--

INSERT INTO `searchtest` (`id`, `proName`, `proType`, `proTag`, `proPrice`) VALUES
(1, 'Men Full Zip Hoodie', 'Hoodie', '<a class=\'model-link\' href=\'product.html\'><img class=\'new-item\' id=\'item2\' src=\'css/images/ulti-hoodie-front.jpg\' alt=\'image02\'></a>', '$69.89');

-- --------------------------------------------------------

--
-- Table structure for table `ultimember`
--

CREATE TABLE `ultimember` (
  `memberid` int(6) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `country` char(2) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` int(10) NOT NULL,
  `contact` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ultimember`
--

INSERT INTO `ultimember` (`memberid`, `fname`, `lname`, `email`, `pass`, `country`, `address1`, `address2`, `city`, `state`, `zip`, `contact`) VALUES
(1, 'Alex', 'Cheah', 'alexkcheah3@gmail.com', '$2y$10$m37VWE10PcADivszyAkQPu9Wn9ArY/LIVmGIa7SxqTcwNT9QRoku6', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(2, 'Alex', 'Cheah', 'alexkcheah4@gmail.com', '$2y$10$wb27tXek/ot4Lmf1ng2LVuRx6Kx2ZJQiJGQ5EY9hBaVpEAVZ9UhWq', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(3, 'Ng', 'Big Kok', 'ngbigkok@yahoo.com', '$2y$10$XBrhr6XGp9qDghQqGjs3OuHWxJoAeoBbjgr4moZxP1SKo1XHTotAG', 'AF', '233', 'Jalan big kok', 'Kok city', 'Kok state', 69420, 1234567),
(4, 'Alex', 'Cheah', 'alexkcheah5@gmail.com', '$2y$10$1Tcbrj/FCNQJi.35IoWBpO69VtIVTtXAhrzy9lhJ.1FXi0OP4Qv4u', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 2147483647),
(5, 'Alex', 'Cheah', 'alexkcheah@gmail.com', '$2y$10$iZGwpkCPc1EHOCj8zNiu1er81USDwwEsc1U6jEaUl8mjhVwZeHE5.', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(6, 'alex', 'cheah', 'cheahkarsheng@gmail.com', '$2y$10$AnVC0HrCyGThmHDGcUrQp.nXT5GA294aKko20j4kNdZ1TKk/0zzuK', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(7, 'Cheah', 'Kar Sheng', 'alexkcheah66@gmail.com', '$2y$10$MwiZIXbMAogzWkVGume.m.QvQAaBMnM9e0PZy4sErAK11Io6/L2je', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(8, 'Test', 'Test', 'test@gmail.com', '$2y$10$VwM7mlsJjW70/AT29qMd..s11ZNCynC1O2jW/7y7MVNWli/QB30su', 'ID', 'test', 'test', 'test', 'test', 70300, 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `conpassword` varchar(50) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `contact` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`id`, `firstname`, `lastname`, `email`, `password`, `conpassword`, `country`, `address1`, `address2`, `city`, `state`, `zip`, `contact`) VALUES
(1, 'Cheah', 'Kar Sheng', 'alexkcheah3@gmail.com', '1111', '1111', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(2, 'Alex', 'Cheah', 'alexkcheah3@gmail.com', '12345', '12345', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(3, 'Adam', 'Kar Sheng', 'alexkcheah4@gmail.com', '1234', '1234', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(4, 'ddddaA', 'Cheah', 'alexkcheah3@gmail.com', '1234', '1234', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(5, 'Alex', 'Cheah', 'alexkcheah3@gmail.com', 'WWWW', 'WWWW', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(6, 'Alex', 'Cheah', 'alexkcheah3@gmail.com', 'sss', 'sss', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(7, 'Alex', 'Cheah', 'alexkcheah3@gmail.com', 'sqsqs', 'sqsqs', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(8, 'dqwdqw', 'qwdqwd', 'alexkcheah3@gmail.com', 'wdwqd', 'qwdqwd', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773),
(9, 'qw', 'dqwdq', 'alexkcheah4@gmail.com', 'qdwq', 'qwdwqd', 'MY', '255', 'Jalan Arowana 9', 'Seremban', 'Negeri Sembilan', 70300, 1110172773);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchtest`
--
ALTER TABLE `searchtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ultimember`
--
ALTER TABLE `ultimember`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `searchtest`
--
ALTER TABLE `searchtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ultimember`
--
ALTER TABLE `ultimember`
  MODIFY `memberid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
