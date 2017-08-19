-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2017 at 09:41 PM
-- Server version: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netdatanms`
--

-- --------------------------------------------------------

--
-- Table structure for table `hostgroups`
--

CREATE TABLE `hostgroups` (
  `hg_id` int(11) NOT NULL,
  `host_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostgroups`
--

INSERT INTO `hostgroups` (`hg_id`, `host_id`, `group_id`) VALUES
(7, 7, 5),
(8, 8, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hostgroups`
--
ALTER TABLE `hostgroups`
  ADD PRIMARY KEY (`hg_id`),
  ADD UNIQUE KEY `host_id` (`host_id`,`group_id`),
  ADD KEY `hostgroups_host_id` (`host_id`),
  ADD KEY `hostgroups_group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hostgroups`
--
ALTER TABLE `hostgroups`
  MODIFY `hg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hostgroups`
--
ALTER TABLE `hostgroups`
  ADD CONSTRAINT `hostgroups_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host_sdn` (`host_id`),
  ADD CONSTRAINT `hostgroups_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group_sdn` (`group_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
