-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 04:44 AM
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
-- Database: `ev_football_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bet_history`
--

CREATE TABLE `tbl_bet_history` (
  `id` int(11) NOT NULL,
  `botid` int(11) DEFAULT NULL,
  `Bookie` varchar(255) DEFAULT NULL,
  `betslipid` varchar(255) DEFAULT NULL,
  `numberofline` varchar(255) DEFAULT '',
  `oddsdecimal` varchar(255) DEFAULT NULL,
  `eachway` varchar(255) DEFAULT NULL,
  `stake` double DEFAULT NULL,
  `return` double DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `bettype` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `horseInfo` varchar(1024) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(61, 'U2FsdGVkX19XYrQlBhVGXc0YZc3zjB7Ulx6sWThApqE=', '2021-08-09 22:26:31', 1, 1),
(62, 'U2FsdGVkX1+Pjx7MtU212/pFNiAwuk/Nx3BBdO6A09U=', '2021-08-09 22:26:33', 1, 0),
(63, 'U2FsdGVkX18D41LKalzZTpp4SJYg2iTTREZJxnROLw0=', '2021-08-09 22:26:34', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id` int(11) NOT NULL,
  `botid` int(11) DEFAULT NULL,
  `log` varchar(500) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `botid`, `log`, `time`) VALUES
(339720, 66, '[2021.08.09 22:33:50] Socket Connected', '2021-08-09 22:33:50'),
(339721, 66, '[2021.08.09 22:34:44] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-09 22:34:44'),
(339722, 66, '[2021.08.09 22:35:48] Socket Connected', '2021-08-09 22:35:48'),
(339723, 66, '[2021.08.09 22:36:24] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-09 22:36:24'),
(339724, 66, '[2021.08.09 22:36:28] [Log] Selected Team Count : 0', '2021-08-09 22:36:28'),
(339725, 66, '[2021.08.09 22:37:01] Socket Connected', '2021-08-09 22:37:01'),
(339726, 66, '[2021.08.09 22:37:47] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-09 22:37:47'),
(339727, 66, '[2021.08.09 22:43:36] Socket Connected', '2021-08-09 22:43:36'),
(339728, 66, '[2021.08.09 22:44:16] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-09 22:44:16'),
(339729, 66, '[2021.08.09 22:44:41] [Log] Selected Team Count : 5', '2021-08-09 22:44:41'),
(339730, 66, '[2021.08.09 22:44:43] [Log] Selected Horse Count : 5', '2021-08-09 22:44:43'),
(339731, 66, '[2021.08.09 22:46:13] Socket Connected', '2021-08-09 22:46:13'),
(339732, 66, '[2021.08.09 22:46:56] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-09 22:46:56'),
(339733, 66, '[2021.08.09 22:47:04] [Log] Selected Team Count : 6', '2021-08-09 22:47:04'),
(339734, 66, '[2021.08.09 22:47:06] [Log] Selected Horse Count : 6', '2021-08-09 22:47:06'),
(339735, 66, '[2021.08.09 22:48:10] [Log]Error(2) : ', '2021-08-09 22:48:10'),
(339736, 66, '[2021.08.09 22:48:10] [Log] Bet Fail!(3)', '2021-08-09 22:48:10'),
(339737, 66, '[2021.08.09 22:49:08] Socket Connected', '2021-08-09 22:49:08'),
(339738, 66, '[2021.08.09 22:49:55] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-09 22:49:55'),
(339739, 66, '[2021.08.09 22:50:07] [Log] Selected Team Count : 7', '2021-08-09 22:50:07'),
(339740, 66, '[2021.08.09 22:50:10] [Log] Selected Horse Count : 7', '2021-08-09 22:50:10'),
(339741, 66, '[2021.08.10 00:01:28] Socket Connected', '2021-08-10 00:01:28'),
(339742, 66, '[2021.08.10 00:03:53] Socket Connected', '2021-08-10 00:03:53'),
(339743, 66, '[2021.08.10 00:06:43] Socket Connected', '2021-08-10 00:06:43'),
(339744, 66, '[2021.08.10 00:08:04] Socket Connected', '2021-08-10 00:08:04'),
(339745, 66, '[2021.08.10 00:12:10] Socket Connected', '2021-08-10 00:12:10'),
(339746, 66, '[2021.08.10 00:14:17] Socket Connected', '2021-08-10 00:14:17'),
(339747, 66, '[2021.08.10 05:32:45] Socket Connected', '2021-08-10 05:32:45'),
(339748, 66, '[2021.08.10 05:33:33] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-10 05:33:33'),
(339749, 66, '[2021.08.10 05:33:42] [Log] Selected Team Count : 12', '2021-08-10 05:33:42'),
(339750, 66, '[2021.08.10 05:33:43] [Log] Selected Horse Count : 12', '2021-08-10 05:33:43'),
(339751, 66, '[2021.08.10 06:11:29] Socket Connected', '2021-08-10 06:11:29'),
(339752, 66, '[2021.08.10 06:59:17] Socket Connected', '2021-08-10 06:59:17'),
(339753, 66, '[2021.08.10 07:00:06] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-10 07:00:06'),
(339754, 66, '[2021.08.10 07:00:13] [Log] Selected Team Count : 8', '2021-08-10 07:00:13'),
(339755, 66, '[2021.08.10 07:00:15] [Log] Selected Horse Count : 8', '2021-08-10 07:00:15'),
(339756, 66, '[2021.08.10 07:03:01] Socket Connected', '2021-08-10 07:03:01'),
(339757, 66, '[2021.08.10 07:04:30] Socket Connected', '2021-08-10 07:04:30'),
(339758, 66, '[2021.08.10 07:05:12] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-10 07:05:12'),
(339759, 66, '[2021.08.10 07:05:15] [Log] Selected Team Count : 9', '2021-08-10 07:05:15'),
(339760, 66, '[2021.08.10 07:05:15] [Log] Selected Horse Count : 9', '2021-08-10 07:05:15'),
(339761, 66, '[2021.08.10 07:11:31] Socket Connected', '2021-08-10 07:11:31'),
(339762, 66, '[2021.08.10 07:13:52] Socket Connected', '2021-08-10 07:13:52'),
(339763, 66, '[2021.08.10 07:16:14] Socket Connected', '2021-08-10 07:16:14'),
(339764, 66, '[2021.08.10 07:18:33] Socket Connected', '2021-08-10 07:18:33'),
(339765, 66, '[2021.08.10 07:25:20] Socket Connected', '2021-08-10 07:25:20'),
(339766, 66, '[2021.08.10 07:26:23] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-10 07:26:23'),
(339767, 66, '[2021.08.10 07:26:33] [Log] Selected Team Count : 6', '2021-08-10 07:26:33'),
(339768, 66, '[2021.08.10 07:26:33] [Log] Selected Horse Count : 6', '2021-08-10 07:26:33'),
(339769, 66, '[2021.08.10 07:27:48] Socket Connected', '2021-08-10 07:27:48'),
(339770, 66, '[2021.08.10 07:28:35] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2021-08-10 07:28:35'),
(339771, 66, '[2021.08.10 07:28:39] [Log] Selected Team Count : 7', '2021-08-10 07:28:39'),
(339772, 66, '[2021.08.10 07:28:39] [Log] Selected Horse Count : 7', '2021-08-10 07:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL COMMENT 'bot id',
  `username` varchar(255) DEFAULT NULL,
  `keygen` varchar(255) DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 0 COMMENT '0 : disconnect, 1 : connect',
  `last_bet_status` int(5) NOT NULL DEFAULT 0 COMMENT ' 1 : fail, 2 : success',
  `ip` varchar(50) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `balance_update` int(5) DEFAULT 1,
  `bookie` varchar(255) DEFAULT NULL,
  `socketid` varchar(255) DEFAULT NULL,
  `odds_username` varchar(255) DEFAULT NULL,
  `odds_password` varchar(255) DEFAULT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `username`, `keygen`, `status`, `last_bet_status`, `ip`, `balance`, `balance_update`, `bookie`, `socketid`, `odds_username`, `odds_password`, `description`) VALUES
(66, 'admin', 'U2FsdGVkX19XYrQlBhVGXc0YZc3zjB7Ulx6sWThApqE=', 1, 1, '5.226.137.4', '1076.99', 1, 'Bet365', 'Ag-damEsAwq_VUfNAAAK', 'sammybrown32@outlook.com', 'Colorred811!', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `odds_username` varchar(255) DEFAULT NULL,
  `odds_password` varchar(255) DEFAULT NULL,
  `ev` double(250,0) DEFAULT NULL,
  `ev_max` double(250,0) DEFAULT 250,
  `min_odd` double DEFAULT NULL,
  `max_odd` double DEFAULT NULL,
  `bookie` varchar(255) DEFAULT NULL,
  `stake` double DEFAULT NULL,
  `count_one_horse` int(10) DEFAULT NULL,
  `count_special_race` int(10) DEFAULT NULL,
  `bet_count` int(10) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT '',
  `end_time` varchar(50) DEFAULT '',
  `market_percent` double DEFAULT NULL,
  `id` int(250) NOT NULL,
  `refresh_time` int(30) DEFAULT NULL,
  `botid` int(30) DEFAULT NULL,
  `bet_type` int(10) DEFAULT NULL,
  `on_off` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`odds_username`, `odds_password`, `ev`, `ev_max`, `min_odd`, `max_odd`, `bookie`, `stake`, `count_one_horse`, `count_special_race`, `bet_count`, `start_time`, `end_time`, `market_percent`, `id`, `refresh_time`, `botid`, `bet_type`, `on_off`) VALUES
('sammybrown32@outlook.com', 'Colorred811!', 80, 250, 1, 150, 'Bet365', 0.1, 3, 1, 10, '00:01', '23:28', 0.1, 168, 1, 66, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `version` varchar(255) NOT NULL
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
(1, 'admin', 'admin', 0, '2020-12-16 09:18:51', '2021-08-10 07:07:24'),
(17, 'sam123', 'sam123!@#', 0, '2020-12-18 13:27:19', '2021-02-24 11:31:10');

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
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3106;

--
-- AUTO_INCREMENT for table `tbl_key`
--
ALTER TABLE `tbl_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339773;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'bot id', AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'User id ', AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
