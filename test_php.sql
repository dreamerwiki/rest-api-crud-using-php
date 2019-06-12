-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2019 at 06:04 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.1.29-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `pages` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author_id`, `pages`) VALUES
(1, 'Half Girlfriend', 2, 300),
(2, 'Cast away', 5, 800),
(3, 'History of sikhs', 4, 500),
(4, 'Consumer protection', 3, NULL),
(5, 'PHP Mysql', 4, 300),
(8, 'ABC', 5, 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sample`
--

CREATE TABLE `tbl_sample` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sample`
--

INSERT INTO `tbl_sample` (`id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Kavish', 'Bajaj', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `reportsTo` int(20) DEFAULT NULL,
  `salary` int(30) DEFAULT NULL,
  `skills` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `age`, `gender`, `password`, `reportsTo`, `salary`, `skills`) VALUES
(1, 'Kavish', 'abc@gmail.com', '28', 'male', 'password', 10, 15000, '[]'),
(2, 'Rahul', 'maria@gmail.com', '28', 'female', 'password', 12, 25000, '[]'),
(3, 'John Doe', 'abc@gmail.com', '28', 'male', 'password', 10, 35000, '[]'),
(4, 'Satnam', 'satnam@gmail.com', '28', 'male', 'password', 10, 23000, '[\"php\", \"python\", \"nodejs\"]'),
(5, 'Vikal', 'dara@gmail.com', '28', 'male', 'dara', 12, 30000, '[\"php\", \"python\", \"nodejs\"]'),
(6, 'Smith Black', 'smith@gmail.com', '27', 'male', 'password', 9, 28000, '[\"php\", \"python\"]'),
(7, 'Hemant Kumar', 'hemant@gmail.com', '28', 'male', 'abc', 9, 15000, '[]'),
(8, 'Sanjeev', 'sanjeev@gmail.com', '30', 'male', '123456', 10, 20000, '[]'),
(9, 'Mithlesh', 'mithlesh@gmail.com', '32', 'male', '123458', NULL, 50000, '[]'),
(10, 'Taran', 'taran@gmail.com', '34', 'female', '895656', NULL, 60000, '[]'),
(11, 'Gaurav', 'gaurav@gmail.com', '45', 'male', '5645456', 10, 90000, '[]'),
(12, 'Sheenam', 'sheenam@gmail.com', '30', 'female', '123456', NULL, 38000, '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USER_INDEX` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
