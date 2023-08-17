-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 04:47 AM
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
-- Database: `ev_spainsh_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bet_history`
--

CREATE TABLE `tbl_bet_history` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `horseInfo` varchar(1024) NOT NULL,
  `stake` double NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_machine`
--

CREATE TABLE `tbl_machine` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(5) NOT NULL DEFAULT 0,
  `last_bet_status` int(5) NOT NULL DEFAULT 0,
  `min_odd` double NOT NULL,
  `max_odd` double NOT NULL,
  `min_ev` double NOT NULL,
  `max_ev` double NOT NULL,
  `stake` double NOT NULL,
  `count_one_horse` int(10) NOT NULL,
  `count_speial_race` int(10) NOT NULL,
  `refresh_time` int(30) NOT NULL,
  `on_off` int(2) NOT NULL DEFAULT 1,
  `balance` double NOT NULL DEFAULT 0,
  `socketid` varchar(100) DEFAULT NULL,
  `ewOdd` double NOT NULL DEFAULT 0,
  `ewStake` double NOT NULL DEFAULT 0,
  `ewStatus` int(2) NOT NULL DEFAULT 0,
  `proxy` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_machine`
--

INSERT INTO `tbl_machine` (`id`, `username`, `password`, `status`, `last_bet_status`, `min_odd`, `max_odd`, `min_ev`, `max_ev`, `stake`, `count_one_horse`, `count_speial_race`, `refresh_time`, `on_off`, `balance`, `socketid`, `ewOdd`, `ewStake`, `ewStatus`, `proxy`) VALUES
(2, 'macarso', 'Carso111', 1, 0, 1, 150, 95, 250, 0.5, 1, 6, 30, 1, 0, 'SUpWqyIC7ZvUy5N0AAAB', 0, 0, 0, '127.0.0.1:4444'),
(3, 'asdf', 'asdf', 0, 0, 3, 30, 90, 100, 1, 3, 30, 30, 1, 0, NULL, 11, 11, 1, ''),
(4, 'asdf', 'asdf', 0, 0, 5, 50, 20, 30, 0.1, 3, 3, 30, 1, 0, NULL, 5, 0.04, 1, '127.0.0.1:4333');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tip`
--

CREATE TABLE `tbl_tip` (
  `league` varchar(50) NOT NULL,
  `runner` varchar(50) NOT NULL,
  `bs` varchar(500) NOT NULL,
  `time` varchar(50) NOT NULL,
  `runnerId` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `odd` double NOT NULL,
  `value` double NOT NULL,
  `directLink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tip`
--

INSERT INTO `tbl_tip` (`league`, `runner`, `bs`, `time`, `runnerId`, `date`, `odd`, `value`, `directLink`) VALUES
('Dundalk', 'Chaos Control', 'pt=N#o=9/10#f=111287837#fp=291954628#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287837-291954628x1x2#||', '17:30', '291954628', '2021-11-26 17:30:00', 1.9, 92.17, '#AC#B2#C101#D20211126#E20783909#F111287837#P17#'),
('Dundalk', 'Cisne', 'pt=N#o=7/2#f=111287839#fp=291954976#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287839-291954976x1x2#||', '18:00', '291954976', '2021-11-26 18:00:00', 4.5, 92.69, '#AC#B2#C101#D20211126#E20783909#F111287839#P17#'),
('Dundalk', 'Je Tai Porte', 'pt=N#o=137/100#f=111287839#fp=291954985#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287839-291954985x1x2#||', '18:00', '291954985', '2021-11-26 18:00:00', 2.37, 95.23, '#AC#B2#C101#D20211126#E20783909#F111287839#P17#'),
('Dundalk', 'Brostaigh', 'pt=N#o=7/25#f=111287840#fp=291955398#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287840-291955398x1x2#||', '18:30', '291955398', '2021-11-26 18:30:00', 1.28, 97.83, '#AC#B2#C101#D20211126#E20783909#F111287840#P17#'),
('Dundalk', 'Rose Of Malta', 'pt=N#o=25/1#f=111287840#fp=291955404#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287840-291955404x1x2#||', '18:30', '291955404', '2021-11-26 18:30:00', 26, 134.38, '#AC#B2#C101#D20211126#E20783909#F111287840#P17#'),
('Dundalk', 'Scipios Defense', 'pt=N#o=12/1#f=111287840#fp=291955405#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287840-291955405x1x2#||', '18:30', '291955405', '2021-11-26 18:30:00', 13, 95.95, '#AC#B2#C101#D20211126#E20783909#F111287840#P17#'),
('Dundalk', 'Aikido', 'pt=N#o=12/1#f=111287841#fp=291955516#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287841-291955516x1x2#||', '19:00', '291955516', '2021-11-26 19:00:00', 13, 112.22, '#AC#B2#C101#D20211126#E20783909#F111287841#P17#'),
('Dundalk', 'Belgoprince', 'pt=N#o=5/1#f=111287854#fp=291956127#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287854-291956127x1x2#||', '19:30', '291956127', '2021-11-26 19:30:00', 6, 94.84, '#AC#B2#C101#D20211126#E20783909#F111287854#P17#'),
('Dundalk', 'Bold Approach', 'pt=N#o=6/1#f=111287854#fp=291956128#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287854-291956128x1x2#||', '19:30', '291956128', '2021-11-26 19:30:00', 7, 90.1, '#AC#B2#C101#D20211126#E20783909#F111287854#P17#'),
('Dundalk', 'Bradesco', 'pt=N#o=81/50#f=111287854#fp=291956129#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287854-291956129x1x2#||', '19:30', '291956129', '2021-11-26 19:30:00', 2.62, 96.91, '#AC#B2#C101#D20211126#E20783909#F111287854#P17#'),
('Chelmsford City', 'Army General', 'pt=N#o=9/1#f=111287954#fp=291971412#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287954-291971412x1x2#||', '17:15', '291971412', '2021-11-26 17:15:00', 10, 93.9, '#AC#B2#C101#D20211126#E20783910#F111287954#P17#'),
('Chelmsford City', 'Western Writer', 'pt=N#o=5/1#f=111287954#fp=291971423#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287954-291971423x1x2#||', '17:15', '291971423', '2021-11-26 17:15:00', 6, 92.63, '#AC#B2#C101#D20211126#E20783910#F111287954#P17#'),
('Chelmsford City', 'Lake Sand', 'pt=N#o=3/1#f=111287955#fp=291971814#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287955-291971814x1x2#||', '17:45', '291971814', '2021-11-26 17:45:00', 4, 93.42, '#AC#B2#C101#D20211126#E20783910#F111287955#P17#'),
('Chelmsford City', 'Beggarman', 'pt=N#o=3/2#f=111287957#fp=291972344#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287957-291972344x1x2#||', '18:15', '291972344', '2021-11-26 18:15:00', 2.5, 91.13, '#AC#B2#C101#D20211126#E20783910#F111287957#P17#'),
('Chelmsford City', 'Case Of The Ex', 'pt=N#o=16/1#f=111287958#fp=291972838#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287958-291972838x1x2#||', '18:45', '291972838', '2021-11-26 18:45:00', 17, 93.21, '#AC#B2#C101#D20211126#E20783910#F111287958#P17#'),
('Chelmsford City', 'Gdaay', 'pt=N#o=10/1#f=111287958#fp=291972843#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287958-291972843x1x2#||', '18:45', '291972843', '2021-11-26 18:45:00', 11, 95.77, '#AC#B2#C101#D20211126#E20783910#F111287958#P17#'),
('Chelmsford City', 'Bayston Hill', 'pt=N#o=12/1#f=111287967#fp=291973649#so=#c=2#sa=SA_STR#mt=13#oto=1#|TP=BS111287967-291973649x1x2#||', '19:15', '291973649', '2021-11-26 19:15:00', 13, 98.15, '#AC#B2#C101#D20211126#E20783910#F111287967#P17#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `last_login`, `level`) VALUES
(1, 'admin', 'admin', '2021-10-18 09:48:37', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
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
  ADD UNIQUE KEY `runnerId` (`runnerId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
