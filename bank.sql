-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 08:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `s.no` int(3) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`s.no`, `name`, `email`, `phone`, `msg`) VALUES
(1, 'Shivani', 'shivani@gmail.com', '987654321', 'hello i am shivani '),
(2, 'shivu', 'shivani@gmail.com', '987654321', 'this website is good'),
(3, 'manu', 'manu@gmail.com', '222222222', 'hi improve'),
(4, 'priyanshi', 'priya23@gmail.com', '5679321566', 'hey this is priyanshi'),
(5, 'manish', 'manish@gmail.com', '9264488821', 'hey');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Raj Verma', 'Naman Vyas', 7000, '2023-05-14 12:54:01'),
(2, 'Namami Shah', 'Juhi Jain', 500, '2023-05-14 12:54:31'),
(3, 'Deepika Gupta', 'Dipti Sharma', 700, '2023-05-14 12:55:17'),
(4, 'Preeti Chopra', 'Namisha Jain', 555, '2023-05-14 12:55:47'),
(5, 'Deepika Gupta', 'Kusum Nagar', 5000, '2023-05-14 12:56:09'),
(6, 'Namisha Jain', 'Naman Vyas', 1000, '2023-05-14 12:56:32'),
(7, 'Diksha Kumari', 'Juhi Jain', 3000, '2023-05-14 12:58:25'),
(8, 'Juhi Jain', 'Namisha Jain', 2000, '2023-05-14 12:58:48'),
(9, 'Juhi Jain', 'Namisha Jain', 2000, '2023-05-14 12:59:12'),
(10, 'Kusum Nagar', 'Deepika Gupta', 4400, '2023-05-14 12:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Naman Vyas', 'namanvyas@gmail.com', 8000),
(2, 'Raj Verma', 'vermaraj15@gmail.com', 69000),
(3, 'Namami Shah', 'namamishah@gmail.com', 39400),
(4, 'Diksha Kumari', 'dikshakumari2@gmail.com', 11000),
(5, 'Kusum Nagar', 'kusumnag34@gmail.com', 40600),
(6, 'Preeti Chopra', 'choprapreet@gmail.com', 19435),
(7, 'Deepika Gupta', 'deepika1298@gmail.com', 48709),
(8, 'Juhi Jain', 'jainjuhi99@gmail.com', 39600),
(9, 'Namisha Jain', 'namisha88@gmail.com', 33555),
(10, 'Dipti Sharma', 'dipti34@gmail.com', 50701);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `s.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
