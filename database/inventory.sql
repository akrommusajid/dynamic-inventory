-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2017 at 01:30 PM
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
-- Structure for view `inventory`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`netdatanms`@`localhost` SQL SECURITY DEFINER VIEW `inventory`  AS  select `group_sdn`.`group_name` AS `group`,`host_sdn`.`host_name` AS `host`,`host_sdn`.`ansible_ssh_host` AS `hostname`,`host_sdn`.`ansible_ssh_user` AS `username`,`host_sdn`.`ansible_ssh_pass` AS `password` from (`group_sdn` left join (`host_sdn` left join `hostgroups` on((`host_sdn`.`host_id` = `hostgroups`.`host_id`))) on((`hostgroups`.`group_id` = `group_sdn`.`group_id`))) where ((`host_sdn`.`enabled` = 1) and (`group_sdn`.`group_enabled` = 1)) order by `host_sdn`.`ansible_ssh_host` ;

--
-- VIEW  `inventory`
-- Data: None
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
