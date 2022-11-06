-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 20, 2022 at 05:03 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database1`
--
CREATE DATABASE IF NOT EXISTS `database1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database1`;

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
CREATE TABLE IF NOT EXISTS `table1` (
  `name` varchar(20) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `database2`
--
CREATE DATABASE IF NOT EXISTS `database2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database2`;

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

DROP TABLE IF EXISTS `table2`;
CREATE TABLE IF NOT EXISTS `table2` (
  `name` varchar(20) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `lab3`
--
CREATE DATABASE IF NOT EXISTS `lab3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab3`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `mobile`) VALUES
(1, 'yonas@gmail.com', 6546432),
(2, 'temsegen@gmail.com', 485565),
(3, 'rahel@gmail.com', 657645),
(4, 'meaza@gmail.com', 654354),
(5, 'eyob@gmail.com', 6535623);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(10) NOT NULL,
  `trainer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `trainer`) VALUES
(1, 'data base', 'yonas'),
(2, 'progrmaing', 'temsegen'),
(3, 'operating', 'rahel\n'),
(4, 'it', 'meaza'),
(5, 'web', 'eyob');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `order_num` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `age` int(11) DEFAULT NULL,
  `city` varchar(12) DEFAULT 'newyork',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`, `age`, `city`) VALUES
(1, 'betselot', 10, 'newyork'),
(2, 'josy', 10, 'newyork'),
(3, 'Robert', 15, 'newyork');

-- --------------------------------------------------------

--
-- Table structure for table `persons1`
--

DROP TABLE IF EXISTS `persons1`;
CREATE TABLE IF NOT EXISTS `persons1` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons1`
--

INSERT INTO `persons1` (`ID`, `Name`, `Age`) VALUES
(1, 'Robert', 15);

-- --------------------------------------------------------

--
-- Table structure for table `shirtbrand`
--

DROP TABLE IF EXISTS `shirtbrand`;
CREATE TABLE IF NOT EXISTS `shirtbrand` (
  `id` int(11) DEFAULT NULL,
  `brandname` varchar(44) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  UNIQUE KEY `brandname` (`brandname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shirtbrand`
--

INSERT INTO `shirtbrand` (`id`, `brandname`, `length`) VALUES
(1, 'pantaloons', 38),
(2, 'cantabil', 40),
(3, 'toyota', 22);

-- --------------------------------------------------------

--
-- Table structure for table `shirts`
--

DROP TABLE IF EXISTS `shirts`;
CREATE TABLE IF NOT EXISTS `shirts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) DEFAULT NULL,
  `size` enum('small','medium','large','x-large') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shirts`
--

INSERT INTO `shirts` (`id`, `name`, `size`) VALUES
(1, 'shirt', 'medium'),
(2, 'casul shirt', 'large');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Id` int(11) DEFAULT NULL,
  `LastName` text NOT NULL,
  `FirstName` text NOT NULL,
  `City` varchar(35) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `LastName`, `FirstName`, `City`) VALUES
(1, 'Hanks', 'Peter', 'New York');

-- --------------------------------------------------------

--
-- Stand-in structure for view `trainer`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `trainer`;
CREATE TABLE IF NOT EXISTS `trainer` (
`course_name` varchar(10)
,`trainer` varchar(10)
,`email` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `trainers`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `trainers`;
CREATE TABLE IF NOT EXISTS `trainers` (
`course_name` varchar(10)
,`trainer` varchar(10)
,`email` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `trainer`
--
DROP TABLE IF EXISTS `trainer`;

DROP VIEW IF EXISTS `trainer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trainer`  AS SELECT `c`.`course_name` AS `course_name`, `c`.`trainer` AS `trainer`, `t`.`email` AS `email` FROM (`course` `c` join `contact` `t`) WHERE (`c`.`id` = `t`.`id`) ;

-- --------------------------------------------------------

--
-- Structure for view `trainers`
--
DROP TABLE IF EXISTS `trainers`;

DROP VIEW IF EXISTS `trainers`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `trainers`  AS SELECT `c`.`course_name` AS `course_name`, `c`.`trainer` AS `trainer`, `t`.`email` AS `email` FROM (`course` `c` join `contact` `t`) WHERE ((`c`.`id` = `t`.`id`) AND (`t`.`id` >= 3)) ;
--
-- Database: `labex_1`
--
CREATE DATABASE IF NOT EXISTS `labex_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `labex_1`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Name` varchar(25) NOT NULL,
  `ID` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `ID`, `CGPA`, `age`) VALUES
('Abebe', 1234, 3.8, 20);

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

DROP TABLE IF EXISTS `student1`;
CREATE TABLE IF NOT EXISTS `student1` (
  `name` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) DEFAULT NULL,
  `CGPA` float NOT NULL,
  `age` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`name`, `id`, `gender`, `CGPA`, `age`) VALUES
('Abebe', 100, 'Male', 4, '20'),
('Kebede', 101, 'Male', 4, '21'),
('Betelhem', 102, 'Female', 4, '19');
--
-- Database: `labex_2`
--
CREATE DATABASE IF NOT EXISTS `labex_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `labex_2`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `name` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `labex_3`
--
CREATE DATABASE IF NOT EXISTS `labex_3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `labex_3`;

-- --------------------------------------------------------

--
-- Table structure for table `prodoct`
--

DROP TABLE IF EXISTS `prodoct`;
CREATE TABLE IF NOT EXISTS `prodoct` (
  `product_name` varchar(30) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `deliver_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodoct`
--

INSERT INTO `prodoct` (`product_name`, `product_id`, `shipper_id`, `deliver_id`) VALUES
('Laptop', 1, 100, 1),
('chair', 2, 101, 2);
--
-- Database: `lable_1`
--
CREATE DATABASE IF NOT EXISTS `lable_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lable_1`;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

DROP TABLE IF EXISTS `student1`;
CREATE TABLE IF NOT EXISTS `student1` (
  `name` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(10) DEFAULT NULL,
  `CGPA` float NOT NULL,
  `age` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`name`, `id`, `gender`, `CGPA`, `age`) VALUES
('Abebe', 100, 'Male', 4, '20'),
('Kebede', 101, 'Male', 4, '21'),
('Betelhem', 102, 'Female', 4, '19');

-- --------------------------------------------------------

--
-- Table structure for table `stu_grades`
--

DROP TABLE IF EXISTS `stu_grades`;
CREATE TABLE IF NOT EXISTS `stu_grades` (
  `ID` int(11) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_grades`
--

INSERT INTO `stu_grades` (`ID`, `grade`) VALUES
(1234, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `stu_reg`
--

DROP TABLE IF EXISTS `stu_reg`;
CREATE TABLE IF NOT EXISTS `stu_reg` (
  `name` varchar(25) NOT NULL,
  `ID` int(11) NOT NULL,
  `CGPA` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_reg`
--

INSERT INTO `stu_reg` (`name`, `ID`, `CGPA`) VALUES
('Betselot', 1235, 3.999);
--
-- Database: `trial`
--
CREATE DATABASE IF NOT EXISTS `trial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trial`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_Id` int(11) NOT NULL,
  `booking_date` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `Customer_Id` int(11) NOT NULL,
  `hotel_Id` int(11) NOT NULL,
  `room_No` int(25) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` tinyint(1) NOT NULL,
  `checkout` tinyint(1) NOT NULL,
  PRIMARY KEY (`booking_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trivago`
--

DROP TABLE IF EXISTS `trivago`;
CREATE TABLE IF NOT EXISTS `trivago` (
  `year` int(11) NOT NULL,
  `No_of_shareholder` int(11) NOT NULL,
  `anuual_profit` int(11) NOT NULL,
  `No_of_customer` int(11) NOT NULL,
  `No_of_employee` int(11) NOT NULL,
  `annual_cost` float NOT NULL,
  PRIMARY KEY (`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `trivago_hotel_management_company`
--
CREATE DATABASE IF NOT EXISTS `trivago_hotel_management_company` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trivago_hotel_management_company`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_Id` varchar(11) NOT NULL,
  `booking_date` date NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `Customer_Id` varchar(11) NOT NULL,
  `hotel_Id` varchar(11) NOT NULL,
  `room_type` enum('VIP','Business','Normal','') NOT NULL,
  `room_No` varchar(25) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  PRIMARY KEY (`booking_Id`),
  KEY `Customer_Id` (`Customer_Id`),
  KEY `hotel_Id` (`hotel_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_Id`, `booking_date`, `customer_name`, `Customer_Id`, `hotel_Id`, `room_type`, `room_No`, `checkin`, `checkout`) VALUES
('B000560', '2017-07-04', 'Joel Winston', 'C00001', 'Sh-0001', 'Business', 'B01F01001', '2022-07-19', '2022-07-19'),
('B000050', '2022-08-06', 'Abel Belay', 'C0002', 'Sh-0001', 'VIP', 'V01F08002', '2022-08-08', '2022-08-15'),
('B000042', '2017-10-17', 'Koket Abdi', 'C00003', 'Hi-0002', 'VIP', 'V02F08007', '2017-10-19', '2017-10-25'),
('B000102', '2018-02-20', 'Eden Moges', 'C00014', 'Ge-0004', 'Business', 'B03F04018', '2018-02-22', '2018-03-10'),
('B001230', '2019-03-10', 'Seada Umer', 'C00525', 'Sk-0005', 'Normal', 'N03F040022', '2019-03-11', '2019-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_name` varchar(30) NOT NULL,
  `Customer_Id` varchar(11) NOT NULL,
  `address` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `hotel_name` varchar(30) NOT NULL,
  `hotel_Id` varchar(11) NOT NULL,
  PRIMARY KEY (`Customer_Id`),
  KEY `hotel_Id` (`hotel_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_name`, `Customer_Id`, `address`, `email`, `phone_number`, `hotel_name`, `hotel_Id`) VALUES
('Joel Winston', 'C00001', 'New York, US', 'jowin187@gmail.com', '+1 789 987 034', 'Sheraton Addis', 'Sh-0001'),
('Koket Abdi', 'C00003', 'Ambo, Ethiopia', 'koabdidha11@gmail.com', '+251 910452122', 'Hilton', 'Hi-0002'),
('Seada Umer', 'C00525', 'Jimma, Ethiopia', 'seadum55@gmail.com', '+251 934567420', 'Ethiopian Skylight Hotel', 'Sk-0005'),
('Eden Moges', 'C00014', 'Addis Ababa, Ethiopia', 'edenmoges101@gmail.com', '+251 911207644', 'Getfam  Hotel', 'Ge-0004'),
('Abel Belay', 'C0002', 'Hawasa, Ethiopia', 'abelay731@gmail.com', '+251 22309076', 'Sheraton Addis', 'Sh-0001');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
CREATE TABLE IF NOT EXISTS `division` (
  `division_name` varchar(30) NOT NULL,
  `division_Id` varchar(10) NOT NULL,
  `office_number` int(11) NOT NULL,
  `division_head` varchar(30) NOT NULL,
  `No_of_employee` int(11) NOT NULL,
  PRIMARY KEY (`division_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_name`, `division_Id`, `office_number`, `division_head`, `No_of_employee`) VALUES
('Management', 'Mng01', 1, 'Lema Megersa(Dr)', 11),
('Software Development', 'SD02', 3, 'Tola Abanega', 345),
('Data Analysis', 'DA04', 4, 'Nahom Fitsum', 137),
('Technical Office', 'TeC06', 7, 'Afomia Birukneh', 84),
('Maintenance', 'MaT07', 10, 'Firanko Getnet', 284),
('Accounting', 'Acc02', 2, 'Tsehay Teshome', 30);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `employee_name` varchar(30) NOT NULL,
  `employee_Id` varchar(10) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `address` varchar(20) NOT NULL,
  `sallary` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`employee_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_name`, `employee_Id`, `dateOfBirth`, `phoneNumber`, `address`, `sallary`, `email`, `role`, `age`) VALUES
('Gerema Abu', 'Te041', '1984-04-19', '+251 945637822', 'Kirkos', 18000, 'geremabu63@gmail.com', 'Technician', 38),
('Abdurrahaman Muhamed', 'Da0035', '1990-02-03', '+251 92435421', 'Wallo sefer', 48500, 'abdumo32@gmail.com', 'Data analyst', 32),
('Monet Gemeda', 'Sd0027', '1994-05-02', '+251 923004576', 'Bole medhanelem', 47850, 'monetka13@gmail.com', 'Software developer', 28),
('Getaneh Berhanu', 'Ac007', '1980-04-23', '+251 912456231', 'Lemi Kura', 22650, 'getab103@gmail.com', 'Accountant', 42),
('Lema Megersa', 'Mn03', '1978-10-10', '+251 910233222', 'Gotera', 60520, 'lemamegersa11@gmail.com', 'Manager', 44);

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

DROP TABLE IF EXISTS `expenditure`;
CREATE TABLE IF NOT EXISTS `expenditure` (
  `amount_in_birr` float NOT NULL,
  `reason` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `expense_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`amount_in_birr`, `reason`, `date`, `expense_type`) VALUES
(10635, 'Maintainance', '2022-02-27', 'in cash'),
(23556.5, 'Purchase', '2022-04-08', 'Bank transfer'),
(7853210, 'Salary of employees', '2022-03-01', 'Bank transfer'),
(6354, 'Conference and training', '2022-01-03', 'In kind and in cash'),
(332015, 'New software Installation', '2022-07-15', 'Bank transfer'),
(1222700, 'Tax', '2021-10-12', 'Bank transfer');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `hotel_name` varchar(30) NOT NULL,
  `hotel_Id` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `No_of_rooms` int(11) NOT NULL,
  `rate_guide` varchar(11) NOT NULL,
  PRIMARY KEY (`hotel_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_name`, `hotel_Id`, `email`, `telephone`, `fax`, `address`, `No_of_rooms`, `rate_guide`) VALUES
('Sheraten Addis', 'Sh-0001', 'Sheratenaddis@gmial.com', ' 011 517 5689', '+251 11 517 1717', 'Taitu street Addis Ababa', 500, '361*'),
('Hilton Addis Ababa', 'Hi-0002', 'Hiltonaddisababa@gmial.com', ' 011 517 0000', '+251 11 695 6321', 'Menelik II Avenue', 466, '183*'),
('Capital Hotel and Spa', 'Ca-0003', 'Capitalhotelandspa@gmial.com', ' 011 123 5600', '+251 11 569 1123', 'Mickey Leland Street Addis Ababa', 400, '81*'),
('Getfam Hotel', 'Ge-0004', 'GetfamHotel@gmial.com', ' 011 123 9954', '+251 11 769 6128', 'Haile Gebreslassie Road Addis Ababa', 366, '56*'),
('Ethiopian Skylight Hotel', 'Sk-0005', 'EthiopianSkylightHotel@gmail.com', ' 011 681 8181', '+251 11 695 6321', 'Bole International Airpor, P.O.Box 1755', 506, '170*');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_Id` varchar(11) NOT NULL,
  `serevice_type` enum('VIP','Business','Normal','') NOT NULL,
  `booking_Id` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `amount_In_birr` float NOT NULL,
  PRIMARY KEY (`payment_Id`),
  KEY `booking_Id` (`booking_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_Id`, `serevice_type`, `booking_Id`, `date`, `amount_In_birr`) VALUES
('0001', 'Business', 'B000560', '2017-07-04', 40000),
('0002', 'VIP', 'B000050', '2022-08-06', 250000),
('0003', 'VIP', 'B000042', '2017-10-17', 25000),
('0004', 'Business', 'B000102', '0201-02-20', 50000),
('0005', 'Normal', 'B001230', '2019-03-10', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

DROP TABLE IF EXISTS `revenue`;
CREATE TABLE IF NOT EXISTS `revenue` (
  `commission_in_birr` float NOT NULL,
  `date` date NOT NULL,
  `Number_of_hotels` varchar(30) NOT NULL,
  `No_of_customer` int(11) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`commission_in_birr`, `date`, `Number_of_hotels`, `No_of_customer`) VALUES
(563965, '2022-06-04', '255', 4825),
(625025, '2022-06-05', '299', 5825),
(745321, '2022-06-06', '366', 6951),
(458369, '2022-06-07', '221', 3658),
(963202, '2022-06-08', '633', 9654);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `room_number` varchar(11) NOT NULL,
  `room_type` enum('1 bed room','2 beds room','3 beds room','living room') NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`room_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_number`, `room_type`, `description`, `status`) VALUES
('V01F02021', '2 beds room', '2 bed rooms with their own tv, bathroom and chairs', 'Booked'),
('B01F03030', '1 bed room', '1 bed room having bathroom, tv and pair of chair', 'Free'),
('N01F01023', 'living room', 'living room, 3 bed rooms with their own bathrooms, tv and chairs, kitchen', 'Booked'),
('B02F03002', '3 beds room', '3 bed rooms having their own bathroom, tv and chairs', 'Free'),
('N02F02020', '2 beds room', '2 bed rooms with their own tv, bathroom ad chairs', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `service_Id` int(11) NOT NULL,
  `service_type` varchar(25) NOT NULL,
  `hotel_name` varchar(30) NOT NULL,
  `hotel_Id` varchar(11) NOT NULL,
  `payment` float NOT NULL,
  PRIMARY KEY (`service_Id`),
  KEY `hotel_Id` (`hotel_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_Id`, `service_type`, `hotel_name`, `hotel_Id`, `payment`) VALUES
(1, 'swimming pool', 'Capital Hotel and Spa', 'Ca-0003', 1500),
(2, 'Gym', 'Sheraton Addis', 'Sh-0001', 2500),
(3, 'ceremony', 'Getfam', 'Ge-0004', 50000),
(4, 'Massage', 'Hilton Hotel', 'Hi-0002', 3200),
(5, 'Meeting Hall', 'Ethiopian Skylight Hotel', 'Sk-0005', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `share_holders`
--

DROP TABLE IF EXISTS `share_holders`;
CREATE TABLE IF NOT EXISTS `share_holders` (
  `name` varchar(30) NOT NULL,
  `shareholder_Id` varchar(11) NOT NULL,
  `share_amount_in_percent` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `bank_account` varchar(25) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`shareholder_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `share_holders`
--

INSERT INTO `share_holders` (`name`, `shareholder_Id`, `share_amount_in_percent`, `email`, `address`, `bank_account`, `phone_number`) VALUES
('Belayneh Kinde ', '36-B', 6.3, 'BelaynehKinde@gmail.com ', 'bole, Addis Ababa', '10000226165656', '0963124578'),
('Ermiyas Amelga', '49-A', 11.9, 'ErmiyasAmelga@gmail.com', 'Menelik Addis Ababa', '1000035654666', '0974123658'),
('Ayenew Nigatu', '03-C', 3.66, 'WerkuAytenew@gmail.com', 'Adama', '1000032648546', '0911256987'),
('Yosef Muluneh', '12-A', 21.46, 'YosefMuluneh@gmail.com', 'Piyasa, Addis Abeba', '100006049863', '0952463128'),
('Biniam Worku', 'D-55', 0.68, 'BiniamWorku@gmail.com', 'Hawasa', '10000676486315', '0988745632');

-- --------------------------------------------------------

--
-- Table structure for table `trivago`
--

DROP TABLE IF EXISTS `trivago`;
CREATE TABLE IF NOT EXISTS `trivago` (
  `year` year(4) NOT NULL,
  `No_of_shareholder` int(11) NOT NULL,
  `anuual_profit_In_birr` float NOT NULL,
  `No_of_customer` int(11) NOT NULL,
  `No_of_employee` int(11) NOT NULL,
  `annual_cost_in_birr` float NOT NULL,
  PRIMARY KEY (`year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trivago`
--

INSERT INTO `trivago` (`year`, `No_of_shareholder`, `anuual_profit_In_birr`, `No_of_customer`, `No_of_employee`, `annual_cost_in_birr`) VALUES
(2017, 36, 11025700, 634523, 150, 720456),
(2018, 67, 25256800, 726932, 371, 13257000),
(2019, 159, 42658700, 45268, 520, 15236600),
(2020, 200, 50269600, 1235968, 749, 20369500),
(2021, 230, 735479000, 4569874, 891, 31654800);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
