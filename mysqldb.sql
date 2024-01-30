-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 01:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysqldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `first_name` varchar(250) NOT NULL DEFAULT '',
  `last_name` varchar(250) NOT NULL DEFAULT '',
  `position` varchar(250) NOT NULL DEFAULT '',
  `office` varchar(250) NOT NULL DEFAULT '',
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `age` int(8) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `extn` int(8) DEFAULT NULL,
  `status` varchar(150) NOT NULL DEFAULT 'Acitve'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `position`, `office`, `start_date`, `age`, `salary`, `extn`, `status`) VALUES
(1, 'Tiger', 'Nixon', 'System Architect', 'Edinburgh', '2011-04-24 18:30:00', 61, 320800, 5421, 'Acitve'),
(2, 'Garrett', 'Winters', 'Accountant', 'Tokyo', '2011-07-24 18:30:00', 63, 170750, 8422, 'Acitve'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'San Francisco', '2009-01-11 18:30:00', 66, 86000, 1562, 'Acitve'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'Edinburgh', '2012-03-28 18:30:00', 22, 433060, 6224, 'Acitve'),
(5, 'Airi', 'Satou', 'Accountant', 'Tokyo', '2008-11-27 18:30:00', 33, 162700, 5407, 'Acitve'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'New York', '2012-12-01 18:30:00', 61, 372000, 4804, 'Acitve'),
(7, 'Herrod', 'Chandler', 'Sales Assistant', 'San Francisco', '2012-08-05 18:30:00', 59, 137500, 9608, 'Acitve'),
(8, 'Rhona', 'Davidson', 'Integration Specialist', 'Tokyo', '2010-10-13 18:30:00', 55, 327900, 6200, 'Acitve'),
(9, 'Colleen', 'Hurst', 'Javascript Developer', 'San Francisco', '2009-09-14 18:30:00', 39, 205500, 2360, 'Acitve'),
(10, 'Sonya', 'Frost', 'Software Engineer', 'Edinburgh', '2008-12-12 18:30:00', 23, 103600, 1667, 'Acitve'),
(11, 'Jena', 'Gaines', 'Office Manager', 'London', '2008-12-18 18:30:00', 30, 90560, 3814, 'Acitve'),
(12, 'Quinn', 'Flynn', 'Support Lead', 'Edinburgh', '2013-03-02 18:30:00', 22, 342000, 9497, 'Acitve'),
(13, 'Charde', 'Marshall', 'Regional Director', 'San Francisco', '2008-10-15 18:30:00', 36, 470600, 6741, 'Acitve'),
(14, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'London', '2012-12-17 18:30:00', 43, 313500, 3597, 'Acitve'),
(15, 'Tatyana', 'Fitzpatrick', 'Regional Director', 'London', '2010-03-16 18:30:00', 19, 385750, 1965, 'Acitve'),
(16, 'Michael', 'Silva', 'Marketing Designer', 'London', '2012-11-26 18:30:00', 66, 198500, 1581, 'Acitve'),
(17, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'New York', '2010-06-08 18:30:00', 64, 725000, 3059, 'Acitve'),
(18, 'Gloria', 'Little', 'Systems Administrator', 'New York', '2009-04-09 18:30:00', 59, 237500, 1721, 'Acitve'),
(19, 'Bradley', 'Greer', 'Software Engineer', 'London', '2012-10-12 18:30:00', 41, 132000, 2558, 'Acitve'),
(20, 'Dai', 'Rios', 'Personnel Lead', 'Edinburgh', '2012-09-25 18:30:00', 35, 217500, 2290, 'Acitve'),
(21, 'Jenette', 'Caldwell', 'Development Lead', 'New York', '2011-09-02 18:30:00', 30, 345000, 1937, 'Acitve'),
(22, 'Yuri', 'Berry', 'Chief Marketing Officer (CMO)', 'New York', '2009-06-24 18:30:00', 40, 675000, 6154, 'Acitve'),
(23, 'Caesar', 'Vance', 'Pre-Sales Support', 'New York', '2011-12-11 18:30:00', 21, 106450, 8330, 'Acitve'),
(24, 'Doris', 'Wilder', 'Sales Assistant', 'Sidney', '2010-09-19 18:30:00', 23, 85600, 3023, 'Acitve'),
(25, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'London', '2009-10-08 18:30:00', 47, 1200000, 5797, 'Acitve');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `email`, `phone`) VALUES
(1, 't.nixon@datatables.net', '+001 253 698'),
(2, 'g.winters@datatables.net', '+001 253 698'),
(3, 'a.cox@datatables.net', '+001 253 698'),
(4, 'c.kelly@datatables.net', '+001 253 698'),
(5, 'a.satou@datatables.net', '+001 253 698'),
(6, 'b.williamson@datatables.net', '+001 253 698'),
(7, 'h.chandler@datatables.net', '+001 253 698'),
(8, 'r.davidson@datatables.net', '+001 253 698'),
(9, 'c.hurst@datatables.net', '+001 253 698'),
(10, 's.frost@datatables.net', '+001 253 698'),
(11, 'j.gaines@datatables.net', '+001 253 698'),
(12, 'q.flynn@datatables.net', '+001 253 698'),
(13, 'c.marshall@datatables.net', '+001 253 698'),
(14, 'h.kennedy@datatables.net', '+001 253 698'),
(15, 't.fitzpatrick@datatables.net', '+001 253 698'),
(16, 'm.silva@datatables.net', '+001 253 698'),
(17, 'p.byrd@datatables.net', '+001 253 698'),
(18, 'g.little@datatables.net', '+001 253 698'),
(19, 'b.greer@datatables.net', '+001 253 698'),
(20, 'd.rios@datatables.net', '+001 253 698'),
(21, 'j.caldwell@datatables.net', '+001 253 698'),
(22, 'y.berry@datatables.net', '+001 253 698'),
(23, 'c.vance@datatables.net', '+001 253 698'),
(24, 'd.wilder@datatables.net', '+001 253 698'),
(25, 'a.ramos@datatables.net', '+001 253 698');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
