-- phpMyAdmin SQL Dump
-- version 4.9.0.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-021.wc2:3306
-- Generation Time: Aug 24, 2020 at 01:30 AM
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
-- Table structure for table `msm_zone`
--

CREATE TABLE `msm_zone` (
  `zone_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `added_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `elect_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msm_zone`
--

INSERT INTO `msm_zone` (`zone_id`, `district_id`, `zone_name`, `added_date`, `status`, `elect_status`) VALUES
(1, 5, 'Feroke', '2015-09-13', 0, 0),
(2, 5, 'Beypur', '2015-09-13', 0, 0),
(3, 5, 'City South', '2015-09-13', 0, 0),
(4, 5, 'City North', '2015-09-13', 0, 0),
(5, 5, 'Elathur West', '2015-09-13', 0, 0),
(6, 5, 'Elathur East', '2015-09-13', 0, 0),
(7, 5, 'Koduvally west', '2015-09-13', 0, 0),
(8, 5, 'Koduvally East', '2015-09-13', 0, 0),
(9, 5, 'Thiruvambadi', '2015-09-13', 0, 0),
(10, 2, 'THALIPPARAMBA', '2015-09-13', 0, 0),
(11, 2, 'THALASSERI', '2015-09-13', 0, 0),
(12, 2, 'IRIKKUR', '2015-09-13', 0, 0),
(13, 2, 'KANNUR', '2015-09-13', 0, 0),
(14, 2, 'PANUR', '2015-09-13', 0, 0),
(15, 3, 'SULTHAN BATHERI', '2015-09-13', 0, 0),
(16, 3, 'KALPETTA', '2015-09-13', 0, 0),
(17, 4, 'VADAKARA', '2015-09-13', 0, 0),
(18, 4, 'BALUSSERI', '2015-09-13', 0, 0),
(19, 4, 'PERMBARA', '2015-09-13', 0, 0),
(20, 4, 'MEPPAYUR', '2015-09-13', 0, 0),
(21, 4, 'KOYILANDI', '2015-09-13', 0, 0),
(22, 4, 'KUTTYADI', '2015-09-13', 0, 0),
(23, 4, 'NADAPURAM', '2015-09-13', 0, 0),
(24, 6, 'EDAVANNA', '2015-09-13', 0, 0),
(25, 6, 'EDAKKARA', '2015-09-13', 0, 0),
(26, 6, 'NILAMBUR', '2015-09-13', 0, 0),
(27, 6, 'MALAPPURAM', '2015-09-13', 0, 0),
(28, 6, 'KONDOTTY', '2015-09-13', 0, 0),
(29, 6, 'MANKADA', '2015-09-13', 0, 0),
(30, 6, 'MANJERI', '2015-09-13', 0, 0),
(31, 6, 'WANDOOR', '2015-09-13', 0, 0),
(32, 6, 'AREEKODE', '2015-09-13', 0, 0),
(33, 7, 'TIRUR', '2015-09-13', 0, 0),
(34, 7, 'THANUR', '2015-09-13', 0, 0),
(35, 7, 'PONNANI', '2015-09-13', 0, 0),
(36, 7, 'PUTHANATHANI', '2015-09-13', 0, 0),
(37, 7, 'TIRURANGADI', '2015-09-13', 0, 0),
(38, 7, 'KUMARANELLUR', '2015-09-13', 0, 0),
(39, 7, 'CHENGARAMKULAM', '2015-09-13', 0, 0),
(40, 7, 'VALANCHERI', '2015-09-13', 0, 0),
(41, 7, 'KOTTAKKAL', '2015-09-13', 0, 0),
(42, 7, 'UNIVERSITY', '2015-09-13', 0, 0),
(43, 8, 'EDATHANATTUKARA', '2015-09-13', 0, 0),
(44, 8, 'PALAKKAD', '2015-09-13', 0, 0),
(45, 8, 'MANARKKAD', '2015-09-13', 0, 0),
(46, 8, 'OTTAPPALAM', '2015-09-13', 0, 0),
(47, 8, 'PATTAMBI', '2015-09-13', 0, 0),
(51, 11, 'IDUKKI', '2015-09-13', 0, 0),
(52, 11, '', '2015-09-13', 0, 0),
(53, 9, 'KODUNGALLUR', '2015-09-13', 0, 0),
(54, 9, 'THRISSUR', '2015-09-13', 0, 0),
(55, 9, 'CHAVAKKAD', '2015-09-13', 0, 0),
(56, 9, 'KAIPPAMANGALAM', '2015-09-13', 0, 0),
(57, 10, 'PARAVUR', '2015-09-13', 0, 0),
(58, 10, 'ERNAKULAM', '2015-09-13', 0, 0),
(59, 10, 'ALUVA', '2015-09-13', 0, 0),
(60, 10, 'MUVATTUPUZHA', '2015-09-13', 0, 0),
(61, 10, 'PALLURUTHI', '2015-09-13', 0, 0),
(62, 10, 'COCHIN', '2015-09-13', 0, 0),
(63, 10, 'PERUMBAVUR', '2015-09-13', 0, 0),
(64, 12, 'KAYAMKULAM', '2015-09-13', 0, 0),
(66, 12, 'CHERTHALA', '2015-09-13', 0, 0),
(67, 12, 'ARUR', '2015-09-13', 0, 0),
(68, 11, 'THODUPUZHA', '2015-09-13', 0, 0),
(69, 11, 'HIGH RANGE', '2015-09-13', 0, 0),
(70, 15, 'ANCHAL', '2015-09-13', 0, 0),
(71, 15, 'KOLLAM', '2015-09-13', 0, 0),
(73, 15, 'KARUNAGAPPALI', '2015-09-13', 0, 0),
(74, 13, 'KOATTAYAM', '2015-09-13', 0, 0),
(76, 12, 'ALAPPUZHA', '2015-09-13', 0, 0),
(77, 10, 'UKZ_2', '2015-09-13', 0, 0),
(78, 10, 'MOVATTUPUZHA', '2015-09-13', 0, 0),
(80, 1, 'KASARGODE', '2015-09-18', 0, 0),
(81, 16, 'THIRUVANTHAPURAM', '2015-09-18', 0, 0),
(83, 19, 'GUJARAT', '2015-11-01', 0, 0),
(84, 14, 'Demo_Zone', '2018-12-24', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msm_zone`
--
ALTER TABLE `msm_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msm_zone`
--
ALTER TABLE `msm_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
