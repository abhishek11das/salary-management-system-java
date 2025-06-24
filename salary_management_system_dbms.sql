-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 05:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salary management system dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowance`
--

CREATE TABLE `allowance` (
  `Overtime` varchar(20) DEFAULT NULL,
  `Medical` varchar(20) DEFAULT NULL,
  `Bonus` varchar(20) DEFAULT NULL,
  `Other` varchar(20) DEFAULT NULL,
  `Emp_id` varchar(20) DEFAULT NULL,
  `Salary` varchar(20) DEFAULT NULL,
  `Rate` varchar(20) NOT NULL,
  `Total_Allowance` varchar(20) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Created_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `emp_id` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`emp_id`, `date`, `status`) VALUES
('180305056', '21:14:34 / Jun 17, 2021', 'Logged in'),
('180305056', '21:14:43 / Jun 17, 2021', 'Logged Out'),
('180305056', '21:14:59 / Jun 17, 2021', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `code` varchar(20) NOT NULL,
  `salary` int(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`code`, `salary`, `division`, `designation`) VALUES
('#5600', 20000, 'User', 'Salary Operator'),
('#5601', 50000, 'Admin', 'CEO');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `First_Name` varchar(50) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Salary` varchar(20) NOT NULL,
  `Deduction_Amount` varchar(20) NOT NULL,
  `Deduction_Reason` varchar(100) NOT NULL,
  `Emp_id` varchar(20) NOT NULL,
  `Created_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff information`
--

CREATE TABLE `staff information` (
  `id` int(20) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Date_Of_Birth` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Present_Address` varchar(50) NOT NULL,
  `Permanent_Address` varchar(50) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Salary` int(20) NOT NULL,
  `Apartment` varchar(20) NOT NULL,
  `Post_Code` varchar(20) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Date_Hired` varchar(20) NOT NULL,
  `Job_Title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff information`
--

INSERT INTO `staff information` (`id`, `First_Name`, `Surname`, `Date_Of_Birth`, `Email`, `Contact`, `Gender`, `Present_Address`, `Permanent_Address`, `Department`, `Salary`, `Apartment`, `Post_Code`, `Designation`, `Status`, `Date_Hired`, `Job_Title`) VALUES
(180305056, 'MD Mojahid AL', 'Tarif', '01/01/2001', 'mojahidaltarif', '01717268128', 'Male', 'Dhaka', 'Dhaka', 'User', 20000, '57/A', '5281', 'Salary Operator', 'active', '01/01/2020', 'Salary Operator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` int(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `employee_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `division`, `employee_id`) VALUES
('mojahidaltarif', 1012006, 'User', '180305056');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff information`
--
ALTER TABLE `staff information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email_2` (`Email`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff information`
--
ALTER TABLE `staff information`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180305057;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
