-- phpMyAdmin SQL Dump
-- version 4.9.0.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-021.wc2:3306
-- Generation Time: Aug 24, 2020 at 01:29 AM
-- Server version: 10.1.41-MariaDB-0+deb10u2
-- PHP Version: 7.3.18-1+0~20200515.59+debian10~1.gbp12fa4f

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `974534_msmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `msm_district`
--

CREATE TABLE `msm_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(500) NOT NULL,
  `added_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `elect_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msm_district`
--

INSERT INTO `msm_district` (`district_id`, `district_name`, `added_date`, `status`, `elect_status`) VALUES
(1, 'KASARGODE', '2015-09-12', 0, 0),
(2, 'KANNUR', '2015-09-12', 0, 0),
(3, 'WAYANAD', '2015-09-12', 0, 0),
(4, 'KOZHIKODE NORTH', '2015-09-12', 0, 0),
(5, 'KOZHIKODE SOUTH', '2015-09-12', 0, 0),
(6, 'MALAPPURAM EAST', '2015-09-12', 0, 0),
(7, 'MALAPPURAM WEST', '2015-09-12', 0, 0),
(8, 'PALAKKAD', '2015-09-12', 0, 0),
(9, 'THRISSUR', '2015-09-12', 0, 0),
(10, 'ERNAKULAM', '2015-09-12', 0, 0),
(11, 'IDUKKI', '2015-09-12', 0, 0),
(12, 'ALAPPUZHA', '2015-09-12', 0, 0),
(13, 'KOTTAYAM', '2015-09-12', 0, 0),
(14, 'PATHANAMTHITTA', '2015-09-12', 0, 0),
(15, 'KOLLAM', '2015-09-12', 0, 0),
(16, 'THIRUVANANTHAPURAM', '2015-09-12', 0, 0),
(17, 'KARNATAKA', '2015-09-14', 0, 0),
(18, 'TAMILNADU', '2015-09-14', 0, 0),
(19, 'OTHER STATES', '2015-09-14', 0, 0),
(21, 'OUT OF COUNTRY', '2015-09-24', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msm_district`
--
ALTER TABLE `msm_district`
  ADD PRIMARY KEY (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msm_district`
--
ALTER TABLE `msm_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
