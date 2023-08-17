-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 10:16 AM
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
-- Database: `ev_golf_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_balance`
--

CREATE TABLE `tbl_balance` (
  `id` int(11) NOT NULL,
  `bookie` varchar(50) NOT NULL,
  `balance` double NOT NULL,
  `username` varchar(100) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_balance`
--

INSERT INTO `tbl_balance` (`id`, `bookie`, `balance`, `username`, `create_date`, `nickname`, `description`) VALUES
(17, 'Coral', 298.2, 'stevekoshy23', '2023-02-27', 'admin', ''),
(18, 'Paddy Power', 398.8, 'Offside100', '2023-02-27', 'admin', ''),
(19, 'Betfred', 164.95, 'stevekoshy23', '2023-03-07', 'admin', '');

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
  `description` varchar(100) NOT NULL,
  `tracker` int(10) NOT NULL DEFAULT 1 COMMENT '// Tracker Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bet_history`
--

INSERT INTO `tbl_bet_history` (`id`, `botid`, `Bookie`, `betslipid`, `numberofline`, `oddsdecimal`, `eachway`, `stake`, `return`, `result`, `bettype`, `name`, `username`, `create_date`, `horseInfo`, `description`, `tracker`) VALUES
(3279, NULL, 'Coral', '1197655463', '', '', 'True', 1, 0, 'LOST', 'DOUBLE', 'Jesline', 'admin', '2023-02-22 15:26:47', '11:50 PGA Tour - The Honda Classic 2023 Brandon Wu @ 71\r\n01:30 DPWT - Hero Indian Open 2023 Gaganjeet Bhullar @ 151\r\n', 'Jesline', 1),
(3280, NULL, 'Coral', '1197656847', '', '', 'True', 0.8, 0, 'LOST', 'TRIXIE', 'Jesline', 'admin', '2023-02-22 15:30:58', '11:50 PGA Tour - The Honda Classic 2023 Brandon Wu @ 71\r\n01:30 DPWT - Hero Indian Open 2023 Gaganjeet Bhullar @ 151\r\n15:00 LIV Golf Invitational Mayakoba 2023 Ian Poulter @ 67\r\n', 'Jesline', 1),
(3281, NULL, 'Paddy Power', '1879204803', '', '', 'True', 0.2, 0, 'LOST', 'DOUBLE', 'Jesline', 'admin', '2023-02-23 14:40:04', '11:50 PGA Tour - The Honda Classic 2023 Anders Albertson @ 1001\r\n01:30 DPWT - Hero Indian Open 2023 Yuvraj Sandhu @ 1001\r\n', 'Jesline', 1),
(3282, NULL, 'Paddy Power', '1879206594', '', '', 'True', 0.8, 0, 'LOST', 'TRIXIE', 'Jesline', 'admin', '2023-02-23 14:41:29', '11:50 PGA Tour - The Honda Classic 2023 Anders Albertson @ 1001\r\n01:30 DPWT - Hero Indian Open 2023 Yuvraj Sandhu @ 1001\r\n18:15 LIV Golf Invitational Mayakoba 2023 Phil Mickelson @ 201\r\n', 'Jesline', 1),
(3283, NULL, 'Betfred', 'Jesline-202303010354-4/4', '', '4/4', 'True', 1, 0, 'N/A', 'Double', 'Jesline', 'admin', '2023-03-01 03:54:36', '11:10 PGA Tour - Puerto Rico Open 2023 Ryan Gerard @ 29\r\n12:00 PGA Tour - Arnold Palmer Invitational 2023 Tyrrell Hatton @ 34\r\n', 'Jesline', 1),
(3284, NULL, 'Skybet', '5702039108', '2', '', 'True', 0.2, 5.02, 'WON', 'Double(s)', 'Jesline', 'admin', '2023-03-01 15:45:53', '12:00 PGA Tour - Arnold Palmer Invitational 2023 Tyrrell Hatton @ 36\r\n11:10 PGA Tour - Puerto Rico Open 2023 Harry Hall @ 29\r\n', 'Jesline', 1),
(3285, NULL, 'William Hill', '4054998226', '2', '', 'True', 0.2, 0, 'LOST', 'DOUBLE', 'Jesline', 'admin', '2023-03-02 06:44:57', '12:00 PGA Tour - Arnold Palmer Invitational 2023 Tony Finau @ 23\r\n11:10 PGA Tour - Puerto Rico Open 2023 Augusto Nunez @ 46\r\n', 'Jesline', 1),
(3286, NULL, 'Bet365', 'GP7535996071E', '', '1058.00', 'True', 0.2, 0, 'N/A', 'DOUBLES', 'pibovex579@pamaweb.com', 'admin', '2023-03-02 07:57:51', 'Puerto Rico Open Augusto Nunez  @ 46.00\r\nArnold Palmer Invitational Tony Finau  @ 23.00\r\n', 'Bet365', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_schedule`
--

CREATE TABLE `tbl_group_schedule` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_horsedata`
--

CREATE TABLE `tbl_horsedata` (
  `id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `horse` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
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
(81, 'U2FsdGVkX1/3kIGRgfP6NQzSOxd3PK3vajQ9l5vv9Bs=', '2023-02-03 03:02:53', 1, 1),
(82, 'U2FsdGVkX1/kvZyHOgzXyGEbhgCNlPNhZbO8fMUTHlw=', '2023-02-03 03:02:54', 1, 1),
(83, 'U2FsdGVkX1/QPoOp0hagOL589WfybjL+Yxp3zdGc9+I=', '2023-02-03 03:02:55', 1, 0),
(84, 'U2FsdGVkX18BJHtWvPMIzOMZl+Jxz06xtW7+G2DTRog=', '2023-02-03 03:02:56', 1, 0),
(85, 'U2FsdGVkX18M5rQDicUymSVV2V55plbr5ubK5a4rd5s=', '2023-02-03 03:02:57', 1, 0);

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL COMMENT 'bot id',
  `username` varchar(255) DEFAULT NULL,
  `keygen` varchar(255) DEFAULT '',
  `status` int(5) NOT NULL DEFAULT 0 COMMENT '0 : disconnect, 1 : connect, 2 : login fail, 3 : balance small',
  `last_bet_status` int(5) NOT NULL DEFAULT 0 COMMENT ' 1 : fail, 2 : success',
  `ip` varchar(50) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `balance_update` int(5) DEFAULT 1,
  `bookie` varchar(255) DEFAULT NULL,
  `socketid` varchar(255) DEFAULT NULL,
  `odds_username` varchar(255) DEFAULT NULL,
  `odds_password` varchar(255) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '',
  `last_bet_time` datetime DEFAULT NULL,
  `error` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `username`, `keygen`, `status`, `last_bet_status`, `ip`, `balance`, `balance_update`, `bookie`, `socketid`, `odds_username`, `odds_password`, `description`, `version`, `last_bet_time`, `error`) VALUES
(91, 'admin', 'U2FsdGVkX1/3kIGRgfP6NQzSOxd3PK3vajQ9l5vv9Bs=', 1, 2, '217.168.16.63', '164.95', 1, 'Betfred', '4GCzrPmlYVbgw_qwAAAD', 'Jesline', 'skybet', 'Jesline', '1.0', '2023-03-02 06:44:57', ''),
(92, 'admin', 'U2FsdGVkX1/kvZyHOgzXyGEbhgCNlPNhZbO8fMUTHlw=', 1, 2, '217.168.16.63', '1623.25', 1, 'Bet365', '5JAQus1CbufwcTzwAAAA', 'pibovex579@pamaweb.com', 'Foxybingo1', 'Bet365', '1.0', '2023-03-02 07:57:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualhorse`
--

CREATE TABLE `tbl_manualhorse` (
  `id` int(11) NOT NULL,
  `horse` varchar(100) NOT NULL,
  `meet` varchar(100) NOT NULL,
  `track` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '0 : good, 1 : bad'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_onoff`
--

CREATE TABLE `tbl_onoff` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL DEFAULT 1 COMMENT '1 : On, 0 : Off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_onoff`
--

INSERT INTO `tbl_onoff` (`id`, `value`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_racinginvest`
--

CREATE TABLE `tbl_racinginvest` (
  `id` int(11) NOT NULL,
  `meet` varchar(50) NOT NULL,
  `track` varchar(50) NOT NULL,
  `horse` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `odd` varchar(10) NOT NULL,
  `bookie` varchar(50) NOT NULL,
  `stake` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_racinginvest`
--

INSERT INTO `tbl_racinginvest` (`id`, `meet`, `track`, `horse`, `create_date`, `odd`, `bookie`, `stake`) VALUES
(3296, 'Aintree', '16:30', 'Kinondo Kwetu\n', '2022-10-24 04:23:23', '2.793', 'BFSB', 2);

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
  `on_off` int(2) NOT NULL DEFAULT 1,
  `tracker` int(11) NOT NULL DEFAULT 0,
  `ew` int(11) NOT NULL DEFAULT 0 COMMENT ' 0: yes, 1 : no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedule`
--

INSERT INTO `tbl_schedule` (`odds_username`, `odds_password`, `ev`, `ev_max`, `min_odd`, `max_odd`, `bookie`, `stake`, `count_one_horse`, `count_special_race`, `bet_count`, `start_time`, `end_time`, `market_percent`, `id`, `refresh_time`, `botid`, `bet_type`, `on_off`, `tracker`, `ew`) VALUES
('Jesline', 'skybet', 100, 100000, 1, 10000, 'Livescorebet', 0.1, 3, 3, 3, '09:00', '11:01', 0.1, 500, 1, 91, 1, 0, 1, 0),
('Jesline', 'skybet', 100, 10000, 1, 10000, 'Betfred', 0.5, 3, 3, 3, '13:23', '15:24', 0.1, 501, 1, 91, 1, 0, 1, 0),
('Jesline', 'skybet', 0, 0, 0, 0, 'Coral', 0, 0, 0, 0, '02:46', '04:47', 0, 502, 1, 91, -1, 0, 2, 0),
('Jesline', 'skybet', 0, 0, 0, 0, 'Paddy Power', 0, 0, 0, 0, '02:46', '04:47', 0, 503, 1, 91, -1, 0, 2, 0),
('Jesline', 'skybet', 100, 100000, 1, 50, 'Betfred', 0.5, 3, 3, 3, '03:28', '08:29', 0.1, 505, 1, 91, 1, 0, 1, 0),
('Jesline', 'skybet', 95, 250000, 1, 50, 'Skybet', 0.1, 3, 3, 3, '15:34', '20:35', 0.1, 506, 1, 91, 1, 0, 1, 0),
('Jesline', 'skybet', 95, 100000, 1, 50, 'William Hill', 0.1, 3, 3, 3, '06:28', '10:29', 0.1, 508, 1, 91, 1, 0, 1, 0),
('pibovex579@pamaweb.com', 'Foxybingo1', 95, 250000, 1, 50, 'Bet365', 0.1, 3, 3, 3, '07:40', '10:42', 0.1, 510, 1, 92, 1, 1, 1, 0),
('Jesline', 'skybet', 0, 0, 0, 0, 'Betfred', 0, 0, 0, 0, '08:45', '10:47', 0, 511, 1, 91, -1, 1, 2, 0);

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
-- Table structure for table `tbl_template`
--

CREATE TABLE `tbl_template` (
  `id` int(11) NOT NULL,
  `ev` double NOT NULL,
  `ev_max` double NOT NULL,
  `min_odd` double NOT NULL,
  `max_odd` double NOT NULL,
  `stake` double NOT NULL,
  `count_one_horse` int(10) NOT NULL,
  `count_special_race` int(10) NOT NULL,
  `bet_count` int(10) NOT NULL,
  `refresh_time` int(30) NOT NULL,
  `bet_type` int(10) NOT NULL,
  `tracker` int(10) NOT NULL DEFAULT 0,
  `ew` int(11) NOT NULL DEFAULT 0,
  `bookie` varchar(50) NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `template_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'admin', 'admin', 0, '2020-12-16 09:18:51', '2023-03-07 08:35:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_balance`
--
ALTER TABLE `tbl_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_schedule`
--
ALTER TABLE `tbl_group_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_horsedata`
--
ALTER TABLE `tbl_horsedata`
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
-- Indexes for table `tbl_manualhorse`
--
ALTER TABLE `tbl_manualhorse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_onoff`
--
ALTER TABLE `tbl_onoff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_racinginvest`
--
ALTER TABLE `tbl_racinginvest`
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `tbl_template`
--
ALTER TABLE `tbl_template`
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
-- AUTO_INCREMENT for table `tbl_balance`
--
ALTER TABLE `tbl_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3287;

--
-- AUTO_INCREMENT for table `tbl_group_schedule`
--
ALTER TABLE `tbl_group_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_horsedata`
--
ALTER TABLE `tbl_horsedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6583;

--
-- AUTO_INCREMENT for table `tbl_key`
--
ALTER TABLE `tbl_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340643;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'bot id', AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tbl_manualhorse`
--
ALTER TABLE `tbl_manualhorse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_onoff`
--
ALTER TABLE `tbl_onoff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `tbl_template`
--
ALTER TABLE `tbl_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'User id ', AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
