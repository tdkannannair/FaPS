-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2019 at 07:26 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faps`
--

-- --------------------------------------------------------

--
-- Table structure for table `agri_office`
--

CREATE TABLE `agri_office` (
  `agri_id` int(11) NOT NULL,
  `o_name` varchar(22) NOT NULL,
  `agri_officer` varchar(22) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agri_office`
--

INSERT INTO `agri_office` (`agri_id`, `o_name`, `agri_officer`, `contact`, `email`) VALUES
(19, 'HENAL', 'PJ', '65747474', 'HENEL@GMAIL.COM'),
(20, '1222HENAL', 'PJ', '65747474', 'HENEL@GMAIL.COM'),
(21, 'PJHENAL', 'PJ', '65747474', 'HENEL@GMAIL.COM'),
(22, 'nnjinlu', 'hunknu', 'nuinunubn', 'hjtgyrvvh'),
(31, 'changed', '', '', ''),
(32, 'changed', 'undefined', '', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `bargain`
--

CREATE TABLE `bargain` (
  `id` int(12) NOT NULL,
  `product_id` int(50) NOT NULL,
  `user` varchar(150) NOT NULL,
  `rate` int(50) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bargain`
--

INSERT INTO `bargain` (`id`, `product_id`, `user`, `rate`, `date`) VALUES
(25, 19, 'bibin@gmail.com', 778, '19/05/18'),
(26, 19, 'tdkannannair@gmail.com', 777, '19/05/18'),
(27, 20, 'tdkannannair@gmail.com', 28, '19/05/18');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`cat_id`, `cat_name`) VALUES
(1, 'friuts'),
(2, 'nuts'),
(3, 'vegitables'),
(4, 'leafes'),
(5, 'root vegitables'),
(6, 'spices'),
(7, 'graines');

-- --------------------------------------------------------

--
-- Table structure for table `dist_pach`
--

CREATE TABLE `dist_pach` (
  `id` int(11) NOT NULL,
  `panch_id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dist_pach`
--

INSERT INTO `dist_pach` (`id`, `panch_id`, `name`) VALUES
(1, 656566, 'kottayam');

-- --------------------------------------------------------

--
-- Table structure for table `farm`
--

CREATE TABLE `farm` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(11) NOT NULL,
  `pic` varchar(130) NOT NULL,
  `farm_certificate` varchar(133) NOT NULL,
  `ownership` varchar(133) NOT NULL,
  `lantitude` varchar(33) NOT NULL,
  `longitude` varchar(33) NOT NULL,
  `panch_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farm`
--

INSERT INTO `farm` (`id`, `email`, `name`, `date`, `pic`, `farm_certificate`, `ownership`, `lantitude`, `longitude`, `panch_id`) VALUES
(0, 'tdkannannair@mca.ajce.in', 'eldohome', '19/05/17', '1558107318cotton-farming.jpg', '1558107318abcde1.jpg', 'img.png', '9.5279703', '76.8221377', 'Kadukutty Grama Panchayat ');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `detail` varchar(150) NOT NULL,
  `discription` varchar(400) NOT NULL,
  `sender` int(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `detail`, `discription`, `sender`, `date`) VALUES
(1, 'bad products ', 'the products are not relevant', 3, '12/2/2108'),
(2, 'bad products ', 'the products are not relevant', 3, '2/5/2019'),
(3, 'bad products ', 'the products are not relevant', 2, '5/7/2019');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `reg_id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `type` enum('admin','farmer','shopkeeper','officer') NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`reg_id`, `email`, `type`, `password`, `status`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', 1),
(2, 'tdkannannair@mca.ajce.in', 'farmer', 'eldho', 1),
(3, 'tdkannannair@gmail.com', 'shopkeeper', 'tdktdk', 1),
(4, 'bibin@gmail.com', 'shopkeeper', 'bibin', 0),
(5, 'KadukuttyGrama@gmail.com', 'officer', 'Georgesam', 1),
(6, 'alappuzhaoff@gmail.com', 'officer', 'raju v', 1),
(7, 'office@gmail.com', 'officer', 'office', 1),
(8, 'farmer@gmail.com', 'farmer', 'farmer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `sender` varchar(110) NOT NULL,
  `receiver` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `content`, `date`, `sender`, `receiver`, `status`, `type`) VALUES
(1, 'fedcscdc', '22/3/2019', '112', '101', 1, 'farmer'),
(2, 'wddfghj', '55/3/2323', '1101', '101', 1, 'farmer'),
(4, 'dwdewdwedwewrw', '22/66/9696', '1101', '101', 1, 'farmer'),
(6, 'ndckhdcjk dsjkc ', '42/58/3669', '1101', '101', 1, 'office'),
(7, 'wwwwwww', '19/05/10', '8', '0', 1, 'admin'),
(8, 'zsdfvb', '19/05/10', '8', '0', 0, 'admin'),
(9, 'tttttttttttttttttttttttt', '19/05/10', '8', '0', 0, 'admin'),
(10, 'fffffffffff', '19/05/10', '8', 'shopekeeper', 1, 'admin'),
(11, 'fffffffffff', '19/05/10', '8', 'shopekeeper', 0, 'admin'),
(12, '', '19/05/16', '8', 'select', 0, 'admin'),
(13, 'your productmalgova mangoof category1was been deleted by the admin', '19/05/17', 'farmer', 'r', 0, 'admin'),
(14, 'your productmalgova mangoof category1was been deleted by the admin', '19/05/17', 'farmer', 'tdkannannair@gmail.com', 0, 'farmer'),
(15, 'your productkollam cashewof category2was been deleted by the admin', '19/05/17', 'farmer', 'r', 0, 'admin'),
(16, 'your productkollam cashewof category2was been deleted by the admin', '19/05/17', 'farmer', 'tdkannannair@gmail.com', 0, 'farmer'),
(17, ' the  product pineappleof type  was been added by the farmertdkannannair@mca.ajce.in', '19/05/18', 'farmer', 'tdkannannair@gmail.com', 0, 'farmer'),
(18, ' the  product pineappleof type  was been added by the farmertdkannannair@mca.ajce.in', '19/05/18', 'farmer', 'bibin@gmail.com', 0, 'farmer');

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `o_id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `panch_name` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `email` varchar(130) NOT NULL,
  `Latitude` varchar(110) NOT NULL,
  `Longitude` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`o_id`, `name`, `panch_name`, `district`, `contact`, `email`, `Latitude`, `Longitude`) VALUES
(1, 'George sam', 'Kadukutty Grama Panchayat ', 'thrisur', '7865456666', 'KadukuttyGrama@gmail.com', '10.255084', '76.329449'),
(6, '	raju v', '	Alappuzha District Panchayat', 'alappuzha', '6767676767 ', 'alappuzhaoff@gmail.com', '9.502699', '76.341867'),
(5, 'joseph mathew', 'Adimaly Grama Panchayat', 'idukki', '6767676767 ', 'AdimalyGramaPanchayat@gmail.com', '10.015562', '76.952626');

-- --------------------------------------------------------

--
-- Table structure for table `panchayath_office`
--

CREATE TABLE `panchayath_office` (
  `p_id` int(11) NOT NULL,
  `panchid` int(11) NOT NULL,
  `panch_name` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `email` varchar(130) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `panchayath_office`
--

INSERT INTO `panchayath_office` (`p_id`, `panchid`, `panch_name`, `district`, `contact`, `email`) VALUES
(3, 65626, 'eravikulam', 'ktm', '2154785245', 'eravikulam @gmail.com'),
(2, 123, 'kuthattukulam', 'ekm', '1212451242', 'dsdd@mca.com'),
(4, 65628, 'varikala', 'vytila', '5869547812', 'varikala@gmail.com'),
(5, 665454, 'kunkili', 'kollam', '2514251236', 'kukli@gmail.com'),
(6, 133, 'kotayam', 'kerela', '9888765433', 'dcSDDSC@GMAI.COM'),
(7, 133, 'kotayam', 'kerela', '9888765433', 'dcSDDSC@GMAI.COM'),
(8, 133, 'kotayam', 'kerela', '9888765433', 'dcSDDSC@GMAI.COM'),
(9, 133, 'kotayam', 'kerela', '9888765433', 'dcSDDSC@GMAI.COM'),
(10, 133, 'kotayam', 'kerela', '9888765433', 'dcSDDSC@GMAI.COM'),
(11, 133, 'kotayam', 'kerela', '9888765433', 'dcSDDSC@GMAI.COM'),
(12, 0, 'ergtergrer', 'ergerergerg', '86554333', 'ggfdvgsd@gmail.com'),
(13, 0, 'wwwww', 'wwwwww', 'wwwwww', 'wwwww'),
(14, 0, 'hfghg', 'ghahfgh', 'ghhgh', 'fghgfhfgh'),
(15, 0, '', 'utyutyuu', '', ''),
(16, 0, '', '', '', ''),
(17, 2147483647, '23e23e23', '3242314234', '', ''),
(18, 4, '4rgdvcx', '4erdfsvcx', 'r4wesdcx', 'ergdfvxc'),
(19, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(20, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(21, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(22, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(23, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(24, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(25, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(26, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(27, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(28, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(29, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'rgtfrtgf'),
(30, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(31, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(32, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(33, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(34, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(35, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(36, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin'),
(37, 5, 'trgfbcv c', 'trgfcvx', 'fdvcgtrgf', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `rate` int(50) NOT NULL,
  `pic` varchar(150) NOT NULL,
  `sales` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `edate` varchar(11) NOT NULL,
  `email` varchar(110) NOT NULL,
  `pic2` varchar(210) NOT NULL,
  `pic3` varchar(200) NOT NULL,
  `catagory` varchar(110) NOT NULL,
  `subcatagory` varchar(110) NOT NULL,
  `published` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `quantity`, `rate`, `pic`, `sales`, `date`, `edate`, `email`, `pic2`, `pic3`, `catagory`, `subcatagory`, `published`) VALUES
(20, 'pineapple', 70, 30, '7298pineapwwple.jpg', 0, '2019-05-19', '2019-05-21', 'tdkannannair@mca.ajce.in', '3526pineaaple .jpg', '2702pineaaple .jpg', '1', '9', '19/05/18'),
(19, 'kollam cashew', 30, 800, '7594cashw.jfif', 1, '2019-05-20', '2019-05-24', 'tdkannannair@mca.ajce.in', '4310maxresdefault.jpg', '8523cashew.jpg', '2', '4', '19/05/17'),
(18, 'malgova mango', 70, 67, '8471images.jfif', 0, '2019-05-18', '2019-05-24', 'tdkannannair@mca.ajce.in', '8174MD-1486399317374.jpg', '7380GUEST_2a6eed58-0050-498c-874f-b7c0b95d7139.jfif', '1', '1', '19/05/17');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `Pt_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `pic` int(11) NOT NULL,
  `color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registeration`
--

CREATE TABLE `registeration` (
  `reg_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `place` varchar(55) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeration`
--

INSERT INTO `registeration` (`reg_id`, `name`, `adress`, `email`, `place`, `gender`, `contact`) VALUES
(1, 'eldho', 'vazhathopil h.o,planramkara p.o,kollam', 'tdkannannair@mca.ajce.in', 'KOLLAM', 'male', '8547695832'),
(2, 'tdk', 'puthaparambil h.o,electra p.o,kottayam', 'tdkannannair@gmail.com', 'KOTTAYAM', 'male', '9876543256'),
(3, 'bibin', 'puthaparambilkullal h.o,thirumbadip.o,thrisure', 'bibin@gmail.com', 'thrissur', 'male', '7869543890');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `farm_id` varchar(110) NOT NULL,
  `p_id` int(110) NOT NULL,
  `date` varchar(110) NOT NULL,
  `shop_id` varchar(110) NOT NULL,
  `quantity` int(50) NOT NULL,
  `espect_rate` int(21) NOT NULL,
  `sold` int(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `farm_id`, `p_id`, `date`, `shop_id`, `quantity`, `espect_rate`, `sold`) VALUES
(1, 'tdkannannair@mca.ajce.in', 19, '19/05/18', 'bibin@gmail.com ', 30, 800, 778);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `product_type` int(11) NOT NULL,
  `date` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(11) NOT NULL,
  `pic` varchar(130) NOT NULL,
  `shop_certificate` varchar(133) NOT NULL,
  `ownership` varchar(133) NOT NULL,
  `lantitude` varchar(33) NOT NULL,
  `longitude` varchar(33) NOT NULL,
  `agri` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `email`, `name`, `date`, `pic`, `shop_certificate`, `ownership`, `lantitude`, `longitude`, `agri`) VALUES
(1, '11223', 'sachin', '22-5-2018', 'w1213144.jpg', 'cedrasfahusva.jpg', 'grugrhgeihqweg.jpg', '158248865975', '1452157894896', '656566'),
(2, 'mathew2@gmail.com', 'mahtewsshop', '19/05/16', '1558013500MP165M.jpg', '1558013500abcde1.jpg', '1558013500af-ownership-certificat', '9.531668600000001', '76.8201864', '	Alappuzha District Panchayat'),
(0, 'bibin@gmail.com', 'bibin', '19/05/17', '1558109381385-image.jpg', 'b.jpg', 'a.png', '9.5279676', '76.8221247', 'Kadukutty Grama Panchayat ');

-- --------------------------------------------------------

--
-- Table structure for table `subcatagory`
--

CREATE TABLE `subcatagory` (
  `id` int(11) NOT NULL,
  `cat_id` int(30) NOT NULL,
  `subcat_name` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcatagory`
--

INSERT INTO `subcatagory` (`id`, `cat_id`, `subcat_name`) VALUES
(1, 1, 'mango'),
(2, 1, 'grapes'),
(3, 1, 'orrange'),
(4, 2, 'cashew'),
(5, 3, 'carrot'),
(6, 3, 'tomato'),
(9, 1, 'pinapple'),
(10, 1, 'apple');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agri_office`
--
ALTER TABLE `agri_office`
  ADD PRIMARY KEY (`agri_id`);

--
-- Indexes for table `bargain`
--
ALTER TABLE `bargain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `dist_pach`
--
ALTER TABLE `dist_pach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farm`
--
ALTER TABLE `farm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `panchayath_office`
--
ALTER TABLE `panchayath_office`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`Pt_id`);

--
-- Indexes for table `registeration`
--
ALTER TABLE `registeration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcatagory`
--
ALTER TABLE `subcatagory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agri_office`
--
ALTER TABLE `agri_office`
  MODIFY `agri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `bargain`
--
ALTER TABLE `bargain`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dist_pach`
--
ALTER TABLE `dist_pach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `panchayath_office`
--
ALTER TABLE `panchayath_office`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `registeration`
--
ALTER TABLE `registeration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcatagory`
--
ALTER TABLE `subcatagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
