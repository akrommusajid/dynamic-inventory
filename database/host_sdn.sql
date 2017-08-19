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
-- Table structure for table `host_sdn`
--

CREATE TABLE `host_sdn` (
  `host_id` int(11) NOT NULL,
  `host_name` varchar(255) NOT NULL,
  `ansible_ssh_host` varchar(255) NOT NULL,
  `ansible_ssh_user` varchar(255) NOT NULL,
  `ansible_ssh_pass` varchar(255) NOT NULL,
  `description` longtext,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `host_sdn`
--

INSERT INTO `host_sdn` (`host_id`, `host_name`, `ansible_ssh_host`, `ansible_ssh_user`, `ansible_ssh_pass`, `description`, `enabled`) VALUES
(7, 'Router-JKT', '192.168.9.10', 'cisco', 'cisco', '<p>\r\n	Router Jakarta</p>\r\n', 1),
(8, 'Router-SBY', '192.168.9.20', 'cisco', 'cisco', '<p>\r\n	Router Surabaya</p>\r\n', 1),
(9, 'Router-SMG', '192.168.9.30', 'cisco', 'cisco', '<p>\r\n	Router Semarang</p>\r\n', 1),
(10, 'Router-JMB', '192.168.9.40', 'cisco', 'cisco', '<p>\r\n	Router Jambi</p>\r\n', 1),
(11, 'Router-MDN', '192.168.9.50', 'cisco', 'cisco', '<p>\r\n	Router Medan</p>\r\n', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `host_sdn`
--
ALTER TABLE `host_sdn`
  ADD PRIMARY KEY (`host_id`),
  ADD UNIQUE KEY `host_host` (`host_name`),
  ADD UNIQUE KEY `host_hostname` (`ansible_ssh_host`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `host_sdn`
--
ALTER TABLE `host_sdn`
  MODIFY `host_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
