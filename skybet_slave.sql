-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 04:48 AM
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
-- Database: `skybet_slave`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bet_history`
--

CREATE TABLE `tbl_bet_history` (
  `id` int(11) NOT NULL,
  `sport` varchar(50) NOT NULL,
  `league` varchar(100) NOT NULL,
  `match` varchar(150) NOT NULL,
  `stake` double NOT NULL,
  `betid` varchar(50) NOT NULL DEFAULT '',
  `return_value` double NOT NULL,
  `username` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL,
  `bookie` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bet_history`
--

INSERT INTO `tbl_bet_history` (`id`, `sport`, `league`, `match`, `stake`, `betid`, `return_value`, `username`, `create_date`, `status`, `bookie`) VALUES
(1, 'Football', 'Portuguese Cup', 'Famalicao v Portimonense', 0.1, '', 0, 'L33bracken', '2021-12-21 07:05:29', 'Pending', 'skybet'),
(2, 'Football', 'EFL Trophy', 'Tranmere v Harrogate', 0.1, '4812724260', 0, 'L33bracken', '2021-12-21 07:08:44', 'LOST', 'skybet'),
(3, 'Football', 'Football Live', 'PU Bontang 0 v 6 Penajam Utama', 0.1, '4812734941', 0.16, 'L33bracken', '2021-12-21 07:51:30', 'WON', ''),
(4, 'Horse Racing', 'Southwell', '16.30 Southwell - Paying 4 Places instead of 3', 0.1, '4813998785', 0.1, 'L33bracken', '2021-12-22 06:47:24', 'WON', ''),
(5, 'Football', 'Italian Serie A', 'Roma v Sampdoria', 0.1, '4813998998', 0.1, 'L33bracken', '2021-12-22 06:47:53', 'WON', ''),
(6, 'Horse Racing', 'Southwell', '18.00 Southwell - Paying 5 Places instead of 3', 0.2, '4813999418', 0.2, 'L33bracken', '2021-12-22 06:49:38', 'WON', ''),
(7, 'Horse Racing', 'Southwell', '17.30 Southwell - Paying 4 Places instead of 3', 0.3, '4814003956', 0.3, 'L33bracken', '2021-12-22 07:06:53', 'WON', ''),
(8, 'Horse Racing', 'Ludlow', '12.15 Ludlow', 0.1, '4814005134', 0.16, 'L33bracken', '2021-12-22 07:11:19', 'WON', ''),
(9, 'Horse Racing', 'Wolverhampton', '14.30 Wolverhampton - Paying 4 Places instead of 3', 0.1, '4814422027', 0, 'L33bracken', '2021-12-22 13:50:34', 'Pending', ''),
(10, 'Horse Racing', 'Southwell', '18.00 Southwell - Paying 5 Places instead of 3', 0.1, '4814486854', 0, 'L33bracken', '2021-12-22 14:26:03', 'Pending', ''),
(11, 'Horse Racing', 'Southwell', '18.00 Southwell - Paying 5 Places instead of 3', 0.1, '4814490011', 0, 'L33bracken', '2021-12-22 14:27:19', 'Pending', ''),
(12, 'Horse Racing', 'Southwell', '19.00 Southwell', 0.1, '4814491333', 0, 'L33bracken', '2021-12-22 14:27:58', 'Pending', ''),
(13, 'Horse Racing', 'Southwell', '19.00 Southwell', 0.2, '4814492105', 0, 'L33bracken', '2021-12-22 14:28:21', 'Pending', ''),
(14, 'Football', 'Belgian Cup', 'KV Mechelen v KAS Eupen', 0.1, '4814496726', 0, 'L33bracken', '2021-12-22 14:30:16', 'Pending', ''),
(15, 'Football', 'Belgian Cup', 'KV Mechelen v KAS Eupen', 0.13, '4814498682', 0, 'L33bracken', '2021-12-22 14:31:19', 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_key`
--

CREATE TABLE `tbl_key` (
  `id` int(11) NOT NULL,
  `keygen` varchar(255) DEFAULT '',
  `create_date` datetime DEFAULT current_timestamp(),
  `status` int(10) DEFAULT 0 COMMENT ' 0 : visible false, 1 : visible true',
  `used` int(5) DEFAULT 0 COMMENT '0: unuse, 1 : use'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_key`
--

INSERT INTO `tbl_key` (`id`, `keygen`, `create_date`, `status`, `used`) VALUES
(1, 'U2FsdGVkX18Ad7VvAgvNTmXy+0GbHptQ4y2YI/AOYOo=', '2021-12-20 02:21:35', 1, 1),
(2, 'U2FsdGVkX19Vrlp0/InYLPw2HyelFxIU6rmRo+udCsM=', '2021-12-20 02:21:37', 1, 0),
(3, 'U2FsdGVkX1/AUbM92z8R+uwBaal9pjGOMwLGFaf5miI=', '2021-12-20 02:21:38', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leader`
--

CREATE TABLE `tbl_leader` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 0 COMMENT '0 : inactive, 1 : active',
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_leader`
--

INSERT INTO `tbl_leader` (`id`, `name`, `status`, `create_date`) VALUES
(1, 'Skybet_leader1', 1, '2021-12-20 03:12:38'),
(3, 'Skybet_leader2', 1, '2021-12-20 03:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `reader` varchar(50) NOT NULL,
  `keygen` varchar(255) NOT NULL,
  `status` int(5) NOT NULL COMMENT '0 : disconnect, 1 : connect	',
  `last_bet_status` int(5) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `balance_update` int(5) NOT NULL,
  `last_bet_time` datetime DEFAULT NULL,
  `socketid` varchar(255) NOT NULL,
  `ip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `username`, `password`, `reader`, `keygen`, `status`, `last_bet_status`, `balance`, `balance_update`, `last_bet_time`, `socketid`, `ip`) VALUES
(2, 'L33bracken', '081090', 'Skybet_leader2', 'U2FsdGVkX18Ad7VvAgvNTmXy+0GbHptQ4y2YI/AOYOo=', 1, 2, '1413.88', 1, '2021-12-22 14:31:19', 's3oTqjSJwyRRfSUeAAAQ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tip`
--

CREATE TABLE `tbl_tip` (
  `id` int(11) NOT NULL,
  `bs` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tip`
--

INSERT INTO `tbl_tip` (`id`, `bs`, `create_date`) VALUES
(1, '970231687', '2021-12-21 06:22:00'),
(2, '970150060', '2021-12-21 06:23:15'),
(3, '966831636', '2021-12-21 06:24:24'),
(4, '966831641', '2021-12-21 06:29:21'),
(5, '970303192', '2021-12-21 06:53:19'),
(6, '970303191', '2021-12-21 06:54:21'),
(7, '970303128', '2021-12-21 06:59:09'),
(8, '970230605', '2021-12-21 07:03:15'),
(9, '967246139', '2021-12-21 07:05:15'),
(10, '967246140', '2021-12-21 07:07:20'),
(11, '969608835', '2021-12-21 07:08:37'),
(12, '970330829', '2021-12-21 07:51:24'),
(13, '970118282', '2021-12-22 06:22:14'),
(14, '970118283', '2021-12-22 06:27:32'),
(15, '970118292', '2021-12-22 06:28:32'),
(16, '970118300', '2021-12-22 06:46:38'),
(17, '967181235', '2021-12-22 06:47:43'),
(18, '970118342', '2021-12-22 06:49:31'),
(19, '970118322', '2021-12-22 06:58:10'),
(20, '970118334', '2021-12-22 07:06:47'),
(21, '970118026', '2021-12-22 07:11:09'),
(22, '970118039', '2021-12-22 07:26:12'),
(23, '970118039|970118063', '2021-12-22 09:05:12'),
(24, '970118649', '2021-12-22 13:50:13'),
(25, '970118645|970118658', '2021-12-22 13:51:35'),
(26, '970118652|970118677', '2021-12-22 13:52:19'),
(27, '970118679|970118691', '2021-12-22 13:52:19'),
(28, '970118652|970118322', '2021-12-22 14:04:40'),
(29, '970118282|970118304', '2021-12-22 14:17:37'),
(30, '970118315|970118338', '2021-12-22 14:20:21'),
(31, '970118675|970118322', '2021-12-22 14:21:24'),
(32, '970118348|970118358', '2021-12-22 14:22:34'),
(33, '970118346|970118362', '2021-12-22 14:27:07'),
(34, '970118376', '2021-12-22 14:27:52'),
(35, '970118377|970118390', '2021-12-22 14:28:17'),
(36, '968473102', '2021-12-22 14:30:13'),
(37, '968473100|970755204', '2021-12-22 14:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL COMMENT 'User id ',
  `username` varchar(255) DEFAULT '' COMMENT 'User Name',
  `password` varchar(255) DEFAULT '' COMMENT 'User Password',
  `level` int(11) DEFAULT 1 COMMENT 'User Level 1 : admin, 0 : supre admin, 2 : Top admin',
  `create_date` datetime DEFAULT current_timestamp() COMMENT 'Account Create Date',
  `last_login` datetime DEFAULT NULL COMMENT 'Last Login date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`, `create_date`, `last_login`) VALUES
(1, 'admin', 'admin', 0, '2021-12-20 02:15:33', '2022-03-09 02:18:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_key`
--
ALTER TABLE `tbl_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leader`
--
ALTER TABLE `tbl_leader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tip`
--
ALTER TABLE `tbl_tip`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_key`
--
ALTER TABLE `tbl_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_leader`
--
ALTER TABLE `tbl_leader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tip`
--
ALTER TABLE `tbl_tip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'User id ', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
