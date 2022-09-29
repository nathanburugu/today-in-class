-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 02:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company 1`
--

-- --------------------------------------------------------

--
-- Table structure for table `astrodream`
--

CREATE TABLE `astrodream` (
  `staffNo` int(11) NOT NULL,
  `jinaYaKwanza` varchar(255) DEFAULT NULL,
  `jinaYaPili` varchar(255) DEFAULT NULL,
  `Jinsia` varchar(255) DEFAULT NULL,
  `kiti` varchar(255) DEFAULT NULL,
  `mshahara` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `astrodream`
--

INSERT INTO `astrodream` (`staffNo`, `jinaYaKwanza`, `jinaYaPili`, `Jinsia`, `kiti`, `mshahara`) VALUES
(1, 'NATHAN', 'Burugu', 'Male', 'Cheif excecutive Officer', 1000000),
(2, 'Natalie', 'Beth', 'female', ' Officer', 10000),
(3, 'John', 'Booy', 'Male', 'Developer', 200000),
(4, 'Njeri', 'Cate', 'female', ' Senior Developer', 100000),
(1, 'NATHAN', 'Botyoy', 'Male', ' Junior Developer', 20000),
(2, 'Christine', 'Bilha', 'female', ' Agent', 10000),
(1, 'NATHAN', 'Gates', 'Male', 'UI/UX Designer', 50000);

--
-- Triggers `astrodream`
--
DELIMITER $$
CREATE TRIGGER `tr_Insert_astrodream` BEFORE INSERT ON `astrodream` FOR EACH ROW SET
NEW.jinaYaKwanza = UPPER(NEW.jinaYaKwanza)
$$
DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
