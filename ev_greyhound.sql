-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 04:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ev_greyhound`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bet_history`
--

CREATE TABLE `tbl_bet_history` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `bookie` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `dogname` varchar(100) NOT NULL,
  `event` varchar(100) NOT NULL,
  `track` varchar(100) NOT NULL,
  `stake` double NOT NULL,
  `odd` double NOT NULL,
  `betId` varchar(100) NOT NULL,
  `return_value` double NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bet_history`
--

INSERT INTO `tbl_bet_history` (`id`, `username`, `bookie`, `description`, `dogname`, `event`, `track`, `stake`, `odd`, `betId`, `return_value`, `status`, `create_date`, `name`) VALUES
(1, 'admin', '32Red', '32Red Test', 'Perfect Freeze', 'Albion Park', '09:54', 0.2, 23, '4146167573', 0, 'LOST', '2021-11-15 03:21:51', 'Deeperai93'),
(2, 'admin', '32Red', '32Red Test', 'Perfect Freeze', 'Albion Park', '09:54', 0.2, 23, '4146158225', 0, 'LOST', '2021-11-15 03:24:25', 'Deeperai93'),
(3, 'admin', '32Red', '32Red Test', 'Sassy Gossip', 'Albion Park', '09:54', 0.2, 101, '4146130564', 0, 'LOST', '2021-11-15 03:24:25', 'Deeperai93'),
(4, 'admin', '32Red', '32Red Test', 'Bella Rocks', 'Angle Park', '07:33', 0.2, 26, '4146148401', 0, 'LOST', '2021-11-15 03:24:25', 'Deeperai93'),
(5, 'admin', '32Red', '32Red Test', 'Sell More Houses', 'Angle Park', '09:03', 0.2, 21, '4146148416', 0, 'LOST', '2021-11-15 03:24:29', 'Deeperai93'),
(6, 'admin', '32Red', '32Red Test', 'Panama Jack', 'Maitland', '08:05', 0.2, 41, '4146148465', 0, 'LOST', '2021-11-15 03:24:29', 'Deeperai93'),
(7, 'admin', '32Red', '32Red Test', 'Raudonikis', 'Maitland', '08:05', 0.2, 41, '4146148474', 0.6, 'WON', '2021-11-15 03:24:29', 'Deeperai93'),
(8, 'admin', '32Red', '32Red Test', 'Oh So Orson', 'Maitland', '07:43', 0.2, 61, '4146158315', 1.1, 'WON', '2021-11-15 03:24:29', 'Deeperai93'),
(9, 'admin', '32Red', '32Red Test', 'Cuddles For Mum', 'Maitland', '07:43', 0.2, 51, '4146138653', 0, 'LOST', '2021-11-15 03:24:29', 'Deeperai93'),
(10, 'admin', '32Red', '32Red Test', 'Charlie Brother', 'Angle Park', '09:03', 0.2, 21, '4146138622', 0.6, 'WON', '2021-11-15 03:24:29', 'Deeperai93'),
(11, 'koko', 'Mr Green', 'Mr Green Test', 'Perfect Freeze', 'Albion Park', '09:54', 0.4, 23, '4146187753', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(12, 'koko', 'Mr Green', 'Mr Green Test', 'Sassy Gossip', 'Albion Park', '09:54', 0.4, 101, '4146187799', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(13, 'koko', 'Mr Green', 'Mr Green Test', 'Charlie Brother', 'Angle Park', '09:03', 0.4, 21, '4146207325', 1.2, 'WON', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(14, 'koko', 'Mr Green', 'Mr Green Test', 'Bella Rocks', 'Angle Park', '07:33', 0.4, 26, '4146179896', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(15, 'koko', 'Mr Green', 'Mr Green Test', 'Sell More Houses', 'Angle Park', '09:03', 0.4, 21, '4146207314', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(16, 'koko', 'Mr Green', 'Mr Green Test', 'Oh So Orson', 'Maitland', '07:43', 0.4, 61, '4146197715', 2.2, 'WON', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(17, 'koko', 'Mr Green', 'Mr Green Test', 'Panama Jack', 'Maitland', '08:05', 0.4, 41, '4146179946', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(18, 'koko', 'Mr Green', 'Mr Green Test', 'Cuddles For Mum', 'Maitland', '07:43', 0.4, 51, '4146217215', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(19, 'koko', 'Mr Green', 'Mr Green Test', 'Raudonikis', 'Maitland', '08:05', 0.4, 41, '4146179953', 1.2, 'WON', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(20, 'koko', 'Mr Green', 'Mr Green Test', 'Back Off Bro', 'Maitland', '08:05', 0.4, 26, '4146217244', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com'),
(21, 'koko', 'Mr Green', 'Mr Green Test', 'Black Mirror', 'Maitland', '08:05', 0.4, 41, '4146207371', 0, 'LOST', '2021-11-15 05:04:50', 'deeperai93@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doglist`
--

CREATE TABLE `tbl_doglist` (
  `event` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL,
  `race` varchar(100) NOT NULL,
  `dog` varchar(100) NOT NULL,
  `odd` double NOT NULL,
  `runnerid` varchar(100) NOT NULL,
  `race_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_key`
--

CREATE TABLE `tbl_key` (
  `id` int(11) NOT NULL,
  `keygen` varchar(100) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(5) NOT NULL DEFAULT 0,
  `used` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_key`
--

INSERT INTO `tbl_key` (`id`, `keygen`, `create_date`, `status`, `used`) VALUES
(1, 'U2FsdGVkX18n3zWMq42sfDLaH5mvAW5KqSlCfQkI2tE=', '2021-11-11 04:00:03', 1, 1),
(2, 'U2FsdGVkX1+t17++9QGa5ySH8V5Hd2rf6NYOla4Qxsk=', '2021-11-11 07:13:56', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `keygen` varchar(100) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 0,
  `balance` varchar(10) DEFAULT NULL,
  `bookie` varchar(20) NOT NULL,
  `socketid` varchar(100) DEFAULT NULL,
  `bookie_username` varchar(100) NOT NULL,
  `bookie_password` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `stake` varchar(10) NOT NULL,
  `ip` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `username`, `keygen`, `status`, `balance`, `bookie`, `socketid`, `bookie_username`, `bookie_password`, `description`, `stake`, `ip`) VALUES
(1, 'admin', 'U2FsdGVkX18n3zWMq42sfDLaH5mvAW5KqSlCfQkI2tE=', 1, '968', '32red', 'tT_K_drHmajXnMBSAAAE', 'Deeperai93', 'Shallow45', '32Red Test', '0.1', '185.251.116.122'),
(2, 'koko', 'U2FsdGVkX1+t17++9QGa5ySH8V5Hd2rf6NYOla4Qxsk=', 1, '19.85', 'Mr Green', 'VBPCndV5BR2W1xrNAAAC', 'deeperai93@gmail.com', 'Shallow45', 'Mr Green Test', '0.2', '185.251.116.122');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `version`) VALUES
(1, '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `create_date`, `last_login`, `level`) VALUES
(1, 'admin', 'admin', '2021-11-11 03:28:59', '2021-12-01 08:53:28', 0),
(2, 'koko', 'koko', '2021-11-11 04:00:28', '2021-11-11 07:31:49', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_doglist`
--
ALTER TABLE `tbl_doglist`
  ADD UNIQUE KEY `runnerid` (`runnerid`);

--
-- Indexes for table `tbl_key`
--
ALTER TABLE `tbl_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_key`
--
ALTER TABLE `tbl_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
