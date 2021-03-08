-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 02:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse311 labtask1`
--

-- --------------------------------------------------------

--
-- Table structure for table `depts`
--

CREATE TABLE `depts` (
  `Department_id` int(4) NOT NULL,
  `Department_Name` varchar(30) NOT NULL,
  `Manager_id` int(6) DEFAULT NULL,
  `Location_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depts`
--

INSERT INTO `depts` (`Department_id`, `Department_Name`, `Manager_id`, `Location_id`) VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800);

-- --------------------------------------------------------

--
-- Table structure for table `emps`
--

CREATE TABLE `emps` (
  `Employee_Id` int(8) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Hire_Date` date NOT NULL,
  `Job_Id` varchar(10) NOT NULL,
  `Salary` float(8,2) DEFAULT NULL,
  `Commission_pct` float(2,2) DEFAULT NULL,
  `Manager_id` int(6) DEFAULT NULL,
  `Department_Id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emps`
--

INSERT INTO `emps` (`Employee_Id`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Hire_Date`, `Job_Id`, `Salary`, `Commission_pct`, `Manager_id`, `Department_Id`) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '0000-00-00', 'AD_PRESS', 24000.00, NULL, NULL, 90),
(101, 'Neena', 'Kochar', 'NKOCHAR', '515.123.4568', '0000-00-00', 'AD_VP', 17000.00, NULL, 100, 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `depts`
--
ALTER TABLE `depts`
  ADD PRIMARY KEY (`Department_id`);

--
-- Indexes for table `emps`
--
ALTER TABLE `emps`
  ADD PRIMARY KEY (`Employee_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
