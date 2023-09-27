-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 01, 2023 at 05:57 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sport_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(24, 'Sunil Perera', 'Sunil@gypsies.sound', 338393932, 413837293, '67/7, Perera Villa, Jayasekara Avenue', 'Mount Lavinia', 'Ratmalana', 'Colombo', 'Active', '2018-05-02 10:48:37'),
(43, 'owen wiz', 'wizcode@gmail.com', 25471021, 1234566, '1934', '', 'kilifi', 'Colombo', 'Active', '2023-07-17 12:32:55'),
(45, 'Lance Baraka', 'barakal254@gmail.com', 254324523, 25434562, '4538', '6737', 'Kilifi', 'Kilifi', 'Active', '2023-07-26 08:26:35'),
(46, 'Oscar Kim', 'kimscar@yahoo.com', 254335468, 254865674, '54783', '654738', 'Kilifi', 'Watamu', 'Active', '2023-07-26 08:44:04'),
(47, 'Musa Karim', 'karim45@gmail.com', 25467344, 254346883, '547733', '4456', 'kilifi', 'Dabaso', 'Active', '2023-07-26 09:17:42'),
(48, 'Michael Owen', 'imike254@gmail.com', 57969, 875986, '1934', '9658796', 'kilifi', 'Kibarani', 'Active', '2023-07-29 07:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(34, '1', 'Football Jersey', 0, 52, 4500, '1689595412_futaJ.jpg', 'Active', 'Full jersey kit for the football players'),
(35, '2', 'Netball Jersey- Reversible Bibs', 0, 19, 6000, '1689595430_net.jpg', 'Active', 'Full jersey kit for Netball players'),
(36, '3', 'Basketball Jersey', 0, 20, 4700, '1689595452_bake.jpg', 'Active', 'Full jersey kit for the Basketball team'),
(37, '4', 'Volleyball Jersey', 0, 36, 5000, '1689597003_vola.jpg', 'Active', 'Full Jersey kit for the volleyball team'),
(38, '5', 'Rugby Jersey', 2, 40, 5200, '1689595493_rugby.jpg', 'Active', 'Full Rugby kit for the team'),
(39, '6', 'Hockey Jersey', 0, 46, 3000, '1689595531_hockey.jpg', 'Active', 'Full Hockey kit players'),
(40, '7', 'Hockey Goalkeeper Jersey', 1.5, 12, 4000, '1689595647_hj.jpg', 'Active', 'This is the full hockey goalkeeper kit '),
(41, '8', 'Football', 2.1, 19, 2000, '1689595664_fb.jpg', 'Active', 'Mikasa size 5 ball'),
(43, '10', 'Volleball', 1, 101, 1700, '1689595716_vb.jpg', 'Active', 'Mikasa Volleyball Ball'),
(45, '11', 'Netball', 1.5, 16, 1200, '1689595753_nb.jpg', 'Active', 'Leather Netball Ball'),
(49, '14', 'Hockey Ball', 1.5, 17, 500, '1689595895_Hb.jpg', 'Active', 'Safari White Hockey Ball'),
(51, '9', 'Basketball', 0, 5, 2000, '1689595691_Bsb.jpg', 'Active', 'Original Molten Basketball ball'),
(52, '12', 'Rugby Ball', 0, 5, 2300, '1689595778_rb.jpg', 'Active', 'Gilbert Rugby ball'),
(53, '13', 'Hockey sticks', 0, 12, 2600, '1689595876_hs.jpg', 'Active', 'Maharadja Hockey Sticks'),
(54, '15', 'First Aid Kit', 0, 4, 3000, '1689595965_FAK.jpg', 'Active', 'This is a medical kit with all the necessary tools incase of injuries during sports'),
(55, '16', 'Knee pad', 0, 4, 1500, '1689585862_R.jpg', 'Active', 'protective gear for knee'),
(56, '17', 'Whistle', 0, 24, 15, '1689596065_ws.jpg', 'Active', 'This are whistle for referees to be used during sports'),
(57, '18', 'Training Cones', 0, 24, 100, '1689596192_cones.jpg', 'Active', 'This are cones used by players during training and play making'),
(58, '19', 'Football Gloves', 0, 4, 1400, '1689596257_gs.jpg', 'Active', 'This are gloves that protect the goalkeeper\'s hands during games'),
(59, '20', 'Ring Nets', 0, 4, 2500, '1689596333_rn.jpg', 'Active', 'Basketball and Netball Rings with Nets'),
(60, '21', 'Volleyball Net', 0, 2, 1299, '1689596383_vn.jpg', 'Active', 'Sports grade Volleyball Nets'),
(61, '22', 'Badminton Rackets', 0, 2, 1699, '1689596452_br.jpg', 'Active', '2 pieces professional Badminton rackets'),
(62, '23', 'Badminton shuttle cock', 0, 1, 2500, '1689596541_bs.jpg', 'Active', 'Yonex yellow/blue stripe mavis badminton shuttle cock'),
(63, '24', 'Tennis Racket', 0, 10, 2500, '1689596640_tr.jpg', 'Active', 'Lawn Tennis Racket'),
(64, '25', 'Tennis Ball', 0, 2, 450, '1689596695_tb.jpg', 'Active', '3 pieces playing tennis balls'),
(65, '26', 'Tennis Table', 0, 1, 50000, '1689596871_dtb.jpg', 'Active', 'Double folding heavy duty table tennis'),
(66, '27', 'Table Tennis Set Blister Pack', 0, 2, 1650, '1689596959_stt.jpg', 'Active', '3nBalls Table tennis balls with 2 Sparo Bats');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(39, '1', '2018-05-24', 'Football Jersey', 1600, 10, 'Johnson and Johnsons Co.', 3),
(40, '2', '2018-05-18', 'Netball Jersey- Reversible Bibs', 2341, 2, 'Louise Vitton Bag', 4),
(41, '4', '2018-05-07', 'Volleyball Jersey', 1234, 3, 'Johnson and Johnsons Co.', 3),
(42, '1', '2018-05-24', 'Football Jersey', 345, 12, 'Louise Vitton Bag', 4),
(43, '5', '2018-05-03', 'Rugby Jersey', 35, 3, 'Johnson and Johnsons Co.', 3),
(44, '5', '2018-05-16', 'Rugby Jersey', 3000, 2, 'ABC Company', 1),
(45, '5', '2018-05-21', 'Rugby Jersey', 3000, 10, 'Sample Vendor 222', 2),
(46, '4', '2018-05-19', 'Volleyball Jersey', 1200, 4, 'Johnson and Johnsons Co.', 3),
(47, '2', '2018-05-10', 'Netball Jersey- Reversible Bibs', 2, 1, 'Sample Vendor 222', 2),
(48, '1', '2018-05-12', 'Football Jersey', 2, 9, 'ABC Company', 1),
(50, '14', '2018-05-15', 'Hockey Ball', 1000, 5, 'Louise Vitton Bag', 4),
(51, '11', '2018-05-11', 'Netball', 1121, 1, 'ABC Company', 1),
(52, '1', '2018-05-21', 'Football Jersey', 1235, 2, 'Sample Vendor 222', 2),
(53, '14', '2018-05-24', 'Hockey Ball', 0, 1, 'Sample Vendor 222', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `saleID` int(11) NOT NULL AUTO_INCREMENT,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`saleID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(1, '3', 4, 'Bill Gates', 'Basketball Jersey', '2018-05-24', 5, 2, 1300),
(2, '1', 39, 'Amal Silverton', 'Football Jersey', '2018-05-24', 0, 111, 1500),
(3, '4', 18, 'Asitha Silva', 'Volleyball Jersey', '2018-05-24', 2, 1, 3409),
(4, '5', 25, 'Theresa May', 'Rugby Jersey', '2018-05-24', 2, 1, 1200),
(5, '6', 24, 'Sunil Perera', 'Hockey Jersey', '2018-05-24', 0, 1, 3000),
(6, '7', 14, 'Steve Jobs', 'Hockey Goalkeeper Jersey', '2018-05-24', 1.5, 1, 1650),
(7, '3', 4, 'Bill Gates', 'Basketball Jersey', '2018-05-24', 0, 3, 1300),
(8, '8', 4, 'Bill Gates', 'Football', '2018-05-14', 2.1, 1, 2300),
(9, '6', 26, 'Sachin Tendulkar', 'Hockey Jersey', '2018-05-14', 0, 1, 3000),
(10, '5', 25, 'Theresa May', 'Rugby Jersey', '2018-05-14', 2, 9, 1200),
(11, '10', 26, 'Sachin Tendulkar', 'Volleball', '2018-04-05', 1, 7, 1000),
(12, '1', 14, 'Steve Jobs', 'Football Jersey', '2018-05-14', 0, 2, 1500),
(13, '3', 38, 'Nuwan Perara', 'Basketball Jersey', '2018-05-24', 0, 0, 1300),
(14, '10', 39, 'Amal Silverton', 'Volleball', '2018-05-17', 1, 1, 1000),
(15, '14', 38, 'Nuwan Perara', 'Hockey Ball', '2018-05-24', 1.5, 1, 1200),
(16, '1', 14, 'Steve Jobs', 'Football Jersey', '2018-05-24', 10, 1, 1500),
(17, '4', 14, 'Steve Jobs', 'Volleyball Jersey', '2018-05-18', 2, 1, 3409),
(18, '10', 43, 'owen wiz', 'Volleball', '2018-05-24', 0, 1, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`) VALUES
(7, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Active'),
(8, 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(1, 'ABC Company', '', 2343567, 0, '80, Ground Floor, ABC Shopping Complex', '46th Avenue', 'Kolpetty', 'Colombo', 'Active', '2018-05-05 05:48:44'),
(2, 'Sample Vendor 222', 'sample@volvo.com', 99828282, 283730183, '123, A Road, B avenue', 'Pitipana', 'Nugegoda', 'Mannar', 'Disabled', '2018-05-05 06:12:02'),
(3, 'Johnson and Johnsons Co.', '', 32323, 0, '34, Malwatta Road, Kottawa', 'Pannipitiya', 'Maharagama', 'Colombo', 'Active', '2018-05-05 06:28:33'),
(4, 'Louise Vitton Bag', 'vitton@vitton.usa.com', 323234938, 0, '45, Palmer Valley, 5th Crossing', 'Delaware', 'Palo Alto', 'Batticaloa', 'Active', '2018-05-05 06:29:41'),
(6, 'Test Vendor', 'test@vendor.com', 43434, 47569937, 'Test address', 'Test address 2', 'Test City', 'Trincomalee', 'Active', '2018-05-05 06:53:14'),
(7, 'Bags Co. Exporters Ltd.', '', 1111, 0, 'Sea Road, Bambalapitiya', '', '', 'Colombo', 'Active', '2018-05-15 10:36:54'),
(8, 'New Bags Exporters', '', 191938930, 0, '123, A Road, B avenue, ', 'Gilford Crescent', 'Colpetty', 'Colombo', 'Active', '2018-05-16 12:36:53'),
(9, 'A', 'a@gmail.com', 999995, 98866767, 'manila', 'Metro Manila', 'Manila City', 'Ampara', 'Active', '2020-07-30 11:40:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
