-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2019 at 01:46 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `researchID` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`researchID`, `r_id`, `s_id`, `description`) VALUES
(101, 1, 11, 'Soil and rock collected from maryville'),
(102, 2, 0, 'Coollected from South Dakota'),
(103, 0, 22, 'Collected from california');

-- --------------------------------------------------------

--
-- Table structure for table `rock`
--

CREATE TABLE `rock` (
  `rockID` int(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rock`
--

INSERT INTO `rock` (`rockID`, `name`, `location`) VALUES
(1, 'Gravel', 'Maryville'),
(1, 'Gravel', 'Maryville'),
(2, 'Metamorphic', 'South Dakota');

-- --------------------------------------------------------

--
-- Table structure for table `soil`
--

CREATE TABLE `soil` (
  `soilID` int(11) NOT NULL,
  `rock_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soil`
--

INSERT INTO `soil` (`soilID`, `rock_id`, `name`, `location`) VALUES
(11, 1, 'Sand', 'Maryville'),
(22, 0, 'Clay', 'California'),
(33, 0, 'xyz', 'Nepal');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
