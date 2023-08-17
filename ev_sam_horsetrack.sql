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
-- Database: `ev_sam_horsetrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_betslip`
--

CREATE TABLE `tbl_betslip` (
  `id` int(11) NOT NULL,
  `horseInfo` varchar(1024) NOT NULL,
  `betType` varchar(100) NOT NULL,
  `betNumber` varchar(50) NOT NULL,
  `betStake` varchar(50) NOT NULL,
  `betStatus` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `username` varchar(100) NOT NULL,
  `bookie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_betslip`
--

INSERT INTO `tbl_betslip` (`id`, `horseInfo`, `betType`, `betNumber`, `betStake`, `betStatus`, `create_date`, `username`, `bookie`) VALUES
(27, 'Kempton 19:15 City Tour @9\r\nKempton 19:15 Crimson King @7\r\n', 'Double', 'X2', '0.1', 1, '2021-03-08 01:15:50', 'koko', 'Paddy Power'),
(28, 'Doncaster 16:35 Jenkins @11\r\nKempton 18:45 Reeceltic @23\r\nDoncaster 17:05 Sulbrick @11\r\n', 'Trixie', 'X4', '0.1', 1, '2021-03-08 01:24:26', 'koko', 'SkyBet'),
(29, 'Kempton 17:45 Apatite @34\r\nKempton 19:15 Long Call @34\r\n', 'Double', 'X2', '0.1', 1, '2021-03-08 01:24:34', 'koko', 'Bet365');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ev`
--

CREATE TABLE `tbl_ev` (
  `league` varchar(255) NOT NULL,
  `runner` varchar(255) NOT NULL,
  `value` varchar(4096) NOT NULL,
  `time` varchar(255) NOT NULL,
  `last_value` double NOT NULL DEFAULT 0,
  `marketid` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `sessionId` varchar(20) NOT NULL,
  `placeNum` varchar(10) NOT NULL,
  `2place` double NOT NULL DEFAULT 0,
  `3place` double NOT NULL DEFAULT 0,
  `4place` double NOT NULL DEFAULT 0,
  `5place` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ev`
--

INSERT INTO `tbl_ev` (`league`, `runner`, `value`, `time`, `last_value`, `marketid`, `date`, `sessionId`, `placeNum`, `2place`, `3place`, `4place`, `5place`) VALUES
('Doncaster', 'A Large One Please', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '27156452', '[]', 0, 0, 0, 0),
('Doncaster', 'Absainte', '[{\"BookieList\":[],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '11065463', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Aces N Kings', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.44\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '27977652', '[\"3\"]', 0, 1.51, 0, 0),
('Doncaster', 'Activial', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '8073993', '[\"3\"]', 0, 5.1, 0, 0),
('Kempton', 'Al Suil Eile', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '21078455', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Album', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '8156058', '[]', 0, 0, 0, 0),
('Kempton', 'Alchemystique', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '36836534', '[\"3\"]', 0, 12.5, 0, 0),
('Southwell', 'Allerthorpe', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"51\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '26712761', '[\"3\"]', 0, 95, 0, 0),
('Kempton', 'Always Fearless', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '24813879', '[\"3\"]', 0, 6.4, 0, 0),
('Doncaster', 'Ami Desbois', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.91\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '9328150', '[\"3\"]', 0, 2.02, 0, 0),
('Kempton', 'Apatite', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"34\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"19\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"19\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '36218199', '[\"2\"]', 12, 0, 0, 0),
('Ludlow', 'Arthurs Gift', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '9277225', '[\"2\"]', 2.72, 0, 0, 0),
('Doncaster', 'Ashfield Paddy', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '26354107', '[]', 0, 0, 0, 0),
('Kempton', 'Babajan', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '31428754', '[\"2\"]', 2.84, 0, 0, 0),
('Ludlow', 'Ballycross', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"1.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '1377834', '[\"2\"]', 1.82, 0, 0, 0),
('Kempton', 'Bard Of Brittany', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"34\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"34\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '16318811', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Bartat', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"10\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '23571973', '[\"3\"]', 0, 9.8, 0, 0),
('Southwell', 'Bealach', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '24611990', '[\"3\"]', 0, 2.3, 0, 0),
('Doncaster', 'Beau Bay', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.88\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '8395297', '[\"3\"]', 0, 3.4, 0, 0),
('Southwell', 'Beaufort', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '1201576', '[\"3\"]', 0, 11.5, 0, 0),
('Ludlow', 'Bells Of Peterboro', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '23270585', '[]', 0, 0, 0, 0),
('Doncaster', 'Big Bresil', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '27596828', '[]', 0, 0, 0, 0),
('Kempton', 'Big Brown', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"7.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '2929923', '[\"3\"]', 0, 7.8, 0, 0),
('Doncaster', 'Big Casino', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"11\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '6835823', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Blow Your Horn', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '27449517', '[\"3\"]', 0, 2.98, 0, 0),
('Kempton', 'Bombastic', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '13361584', '[\"3\"]', 0, 7.4, 0, 0),
('Kempton', 'Born To Destroy', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '24232299', '[]', 0, 0, 0, 0),
('Kempton', 'Born To Finish', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.72\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '10231907', '[\"3\"]', 0, 1.81, 0, 0),
('Southwell', 'Brandy Station', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '12844614', '[\"3\"]', 0, 3.15, 0, 0),
('Kempton', 'Broughton Sunpearl', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '26965656', '[\"3\"]', 0, 2.44, 0, 0),
('Ludlow', 'Butlers Brief', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '26684162', '[]', 0, 0, 0, 0),
('Ludlow', 'Byzantium Lad', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '38592955', '[]', 0, 0, 0, 0),
('Kempton', 'Capotes Dream', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '31101900', '[]', 0, 0, 0, 0),
('Doncaster', 'Captain Cattistock', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '15786320', '[\"3\"]', 0, 1.6, 0, 0),
('Ludlow', 'Carpool', '[]', '15:05', 0, '', '2021-02-24 15:05:00', '24799049', '[]', 0, 0, 0, 0),
('Doncaster', 'Chosen Shant', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '38480108', '[\"3\"]', 0, 5.9, 0, 0),
('Kempton', 'City Tour', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '20730420', '[\"3\"]', 0, 7, 0, 0),
('Doncaster', 'Conceroe', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.72\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '36218117', '[\"3\"]', 0, 2.1, 0, 0),
('Ludlow', 'Connard', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '21339446', '[]', 0, 0, 0, 0),
('Southwell', 'Cool Spirit', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '13228221', '[\"3\"]', 0, 4.5, 0, 0),
('Kempton', 'Coverham', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"6\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '11085676', '[\"3\"]', 0, 6, 0, 0),
('Kempton', 'Crimson King', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '1065462', '[\"3\"]', 0, 5.6, 0, 0),
('Kempton', 'Cuban Cigar', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '30152384', '[\"2\"]', 3.05, 0, 0, 0),
('Ludlow', 'Danse Idol', '[]', '15:05', 0, '', '2021-02-24 15:05:00', '16753698', '[]', 0, 0, 0, 0),
('Kempton', 'Dark Phoenix', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.37\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '26468560', '[\"3\"]', 0, 2.58, 0, 0),
('Ludlow', 'Deniliquin', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '20680734', '[\"3\"]', 0, 5.5, 0, 0),
('Kempton', 'Desert Boots', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '16:40', 0, '1.179665648', '2021-02-24 16:40:00', '36364330', '[\"2\"]', 2.58, 0, 0, 0),
('Kempton', 'Didtheyleaveuoutto', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.29\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '16198159', '[\"3\"]', 0, 1.43, 0, 0),
('Ludlow', 'Dieu Vivant', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '13109011', '[\"2\"]', 5.5, 0, 0, 0),
('Doncaster', 'Different Gravey', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '9033706', '[\"3\"]', 0, 3, 0, 0),
('Southwell', 'Drew Breeze', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '24575812', '[\"3\"]', 0, 2.14, 0, 0),
('Kempton', 'Drury Lane', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"15\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '180164', '[\"3\"]', 0, 13.5, 0, 0),
('Ludlow', 'Eddiemaurice', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '7407540', '[\"3\"]', 0, 3.1, 0, 0),
('Kempton', 'Egrecio', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '20712439', '[]', 0, 0, 0, 0),
('Kempton', 'Elusive Treat', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '16:40', 0, '1.179665648', '2021-02-24 16:40:00', '36413399', '[\"2\"]', 2.44, 0, 0, 0),
('Kempton', 'Espresso Freddo', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '11180317', '[\"3\"]', 0, 3.5, 0, 0),
('Kempton', 'Evasive Power', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '18889963', '[\"3\"]', 0, 3.1, 0, 0),
('Ludlow', 'Ey Up Rocky', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '15014280', '[\"3\"]', 0, 4.2, 0, 0),
('Doncaster', 'Fagan', '[{\"BookieList\":[],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '8669158', '[\"3\"]', 0, 0, 0, 0),
('Doncaster', 'Flying Angel', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '10414720', '[\"3\"]', 0, 2.34, 0, 0),
('Kempton', 'Fortune And Glory', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"10\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '13957624', '[\"3\"]', 0, 10.5, 0, 0),
('Doncaster', 'Freethinker', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '10059653', '[]', 0, 0, 0, 0),
('Doncaster', 'French Paradoxe', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '27632005', '[]', 0, 0, 0, 0),
('Ludlow', 'Frenchy Du Large', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '21835893', '[]', 0, 0, 0, 0),
('Ludlow', 'Full Glass', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"23\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"34\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '12684000', '[\"2\"]', 60, 0, 0, 0),
('Ludlow', 'Gerolamo Cardano', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"4.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '26830868', '[\"3\"]', 0, 4.7, 0, 0),
('Doncaster', 'Get Prepared', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '37694786', '[]', 0, 0, 0, 0),
('Kempton', 'Glenn Coco', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '10482209', '[\"3\"]', 0, 3.85, 0, 0),
('Kempton', 'Gooner Boy', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.07\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.04\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '38469884', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Grey Galleon', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '11421187', '[]', 0, 0, 0, 0),
('Doncaster', 'Guitar Pete', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '7281871', '[\"3\"]', 0, 2.34, 0, 0),
('Southwell', 'Gulland Rock', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:50', 0, '1.179664530', '2021-02-24 15:50:00', '7430131', '[\"2\"]', 2.88, 0, 0, 0),
('Kempton', 'Hamaron', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"10\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '24592649', '[\"3\"]', 0, 11.5, 0, 0),
('Southwell', 'Hell Of A Year', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:50', 0, '1.179664530', '2021-02-24 15:50:00', '36364331', '[\"2\"]', 2.7, 0, 0, 0),
('Kempton', 'Herculean', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '4858830', '[\"3\"]', 0, 2.84, 0, 0),
('Southwell', 'Heron', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '2533273', '[\"3\"]', 0, 2.28, 0, 0),
('Kempton', 'Hint Of Stars', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.36\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.29\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '24720795', '[\"3\"]', 0, 1.47, 0, 0),
('Ludlow', 'Holly James', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '24132585', '[]', 0, 0, 0, 0),
('Kempton', 'Honours', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '6206438', '[\"3\"]', 0, 5.6, 0, 0),
('Doncaster', 'Hors Guard', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"12\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"11\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"10\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '38592948', '[\"3\"]', 0, 11, 0, 0),
('Kempton', 'Htilominlo', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"9.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"15\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '21758066', '[\"3\"]', 0, 16.5, 0, 0),
('Ludlow', 'Hurricane Dylan', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '10983378', '[]', 0, 0, 0, 0),
('Kempton', 'Ilhabela Fact', '[]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '13116704', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Illustrator', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '212685', '[\"2\"]', 3.1, 0, 0, 0),
('Kempton', 'In The Red', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '847179', '[\"3\"]', 0, 4, 0, 0),
('Kempton', 'Inaam', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '9789089', '[\"3\"]', 0, 2.3, 0, 0),
('Ludlow', 'Ingeborg Zilling', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '38592956', '[]', 0, 0, 0, 0),
('Kempton', 'Irreverent', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '20507395', '[\"3\"]', 0, 3.75, 0, 0),
('Southwell', 'Its A Sin', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:50', 0, '1.179664530', '2021-02-24 15:50:00', '22169145', '[\"2\"]', 5.1, 0, 0, 0),
('Kempton', 'Jackstar', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '18214063', '[]', 0, 0, 0, 0),
('Doncaster', 'Jenkins', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"11\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '10991083', '[\"3\"]', 0, 7.4, 0, 0),
('Doncaster', 'Jerejak', '[{\"BookieList\":[],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '37597984', '[\"3\"]', 0, 0, 0, 0),
('Doncaster', 'Jeremy Pass', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '26913168', '[]', 0, 0, 0, 0),
('Kempton', 'Jersey Gift', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.37\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '38410542', '[\"3\"]', 0, 3.4, 0, 0),
('Doncaster', 'Joe Farrell', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.73\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '8993384', '[\"3\"]', 0, 2.04, 0, 0),
('Kempton', 'Jumira Bridge', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '11374285', '[]', 0, 0, 0, 0),
('Kempton', 'Kendergarten Kop', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"7\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '14871074', '[\"3\"]', 0, 7, 0, 0),
('Southwell', 'Kyllukey', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '9466457', '[\"3\"]', 0, 4.8, 0, 0),
('Doncaster', 'Law Of Gold', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.66\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '24449302', '[\"3\"]', 0, 1.82, 0, 0),
('Doncaster', 'Le Grand Lion', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.91\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.72\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '37694791', '[\"3\"]', 0, 2.06, 0, 0),
('Ludlow', 'Liberty Bella', '[]', '15:05', 0, '', '2021-02-24 15:05:00', '14833900', '[]', 0, 0, 0, 0),
('Ludlow', 'Lisheen Castle', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '14389156', '[\"3\"]', 0, 2.78, 0, 0),
('Southwell', 'Loco Dempsey', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"6\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:50', 0, '1.179664530', '2021-02-24 15:50:00', '25253319', '[\"2\"]', 0, 0, 0, 0),
('Kempton', 'Long Call', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"34\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"19\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '10304518', '[\"3\"]', 0, 20, 0, 0),
('Southwell', 'Loose Chippings', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.44\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:50', 0, '1.179664530', '2021-02-24 15:50:00', '12179077', '[\"2\"]', 1.47, 0, 0, 0),
('Ludlow', 'Lust For Glory', '[]', '15:05', 0, '', '2021-02-24 15:05:00', '17226419', '[]', 0, 0, 0, 0),
('Kempton', 'Lydford', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.18\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.12\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '36159693', '[\"3\"]', 0, 1.21, 0, 0),
('Kempton', 'Martineo', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '17500134', '[\"3\"]', 0, 4.2, 0, 0),
('Kempton', 'Maurice Dancer', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '25105917', '[\"3\"]', 0, 8.2, 0, 0),
('Doncaster', 'Mauritian Bolt', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '36336686', '[]', 0, 0, 0, 0),
('Ludlow', 'Minella Royale', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '37413702', '[]', 0, 0, 0, 0),
('Ludlow', 'Minim Mouse', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '38322929', '[]', 0, 0, 0, 0),
('Kempton', 'Miss Thoughtful', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '25679568', '[]', 0, 0, 0, 0),
('Southwell', 'Misscarlett', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '14030136', '[\"3\"]', 0, 5.8, 0, 0),
('Doncaster', 'Monbeg Gold', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '8940715', '[\"3\"]', 0, 8, 0, 0),
('Kempton', 'Montaqem', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"19\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"15\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '36140408', '[\"3\"]', 0, 20, 0, 0),
('Kempton', 'Morani Kali', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '38200467', '[\"3\"]', 0, 13.5, 0, 0),
('Southwell', 'Moveonup', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.88\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '18976983', '[\"3\"]', 0, 3.4, 0, 0),
('Doncaster', 'Mr Clarkson', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '11208903', '[]', 0, 0, 0, 0),
('Ludlow', 'Mr Mcguiness', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '8683495', '[]', 0, 0, 0, 0),
('Doncaster', 'Mr Scrumpy', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '18301273', '[]', 0, 0, 0, 0),
('Doncaster', 'Mustmeetalady', '[{\"BookieList\":[],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '9408872', '[\"3\"]', 0, 0, 0, 0),
('Kempton', 'Mutahamisa', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '28642598', '[\"2\"]', 2.38, 0, 0, 0),
('Kempton', 'Nezar', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '7413472', '[\"3\"]', 0, 3.3, 0, 0),
('Kempton', 'Night Narcissus', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.72\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '16:40', 0, '1.179665648', '2021-02-24 16:40:00', '36127698', '[\"2\"]', 2, 0, 0, 0),
('Southwell', 'Niven', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.53\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '10170404', '[\"3\"]', 0, 1.95, 0, 0),
('Ludlow', 'Nordic Combined', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '11180358', '[\"3\"]', 0, 2.18, 0, 0),
('Kempton', 'Nortonthorpe Boy', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '16:40', 0, '1.179665648', '2021-02-24 16:40:00', '28618301', '[\"2\"]', 2, 0, 0, 0),
('Kempton', 'Note Bleu', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '27172000', '[\"3\"]', 0, 2.94, 0, 0),
('Kempton', 'Obtuse', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '16:40', 0, '1.179665648', '2021-02-24 16:40:00', '10664859', '[\"2\"]', 4.9, 0, 0, 0),
('Ludlow', 'Olympic Honour', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '20473724', '[\"3\"]', 0, 3.05, 0, 0),
('Ludlow', 'Onchan', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '27377012', '[]', 0, 0, 0, 0),
('Ludlow', 'Organdi', '[]', '15:05', 0, '', '2021-02-24 15:05:00', '18824918', '[]', 0, 0, 0, 0),
('Kempton', 'Party Island', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.62\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '25855586', '[\"3\"]', 0, 2.9, 0, 0),
('Doncaster', 'Patroclus', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '10387785', '[]', 0, 0, 0, 0),
('Kempton', 'Paxos', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '10253606', '[\"3\"]', 0, 3.15, 0, 0),
('Southwell', 'Peerless Percy', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.66\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '25879246', '[\"3\"]', 0, 1.77, 0, 0),
('Southwell', 'Pepper Street', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"12\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '15125436', '[\"3\"]', 0, 13, 0, 0),
('Kempton', 'Perfect Focus', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '6898492', '[\"3\"]', 0, 2.34, 0, 0),
('Doncaster', 'Phil De Pail', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '37597986', '[\"3\"]', 0, 3.3, 0, 0),
('Kempton', 'Pholas', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.44\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.44\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '20:15', 0, '1.179665722', '2021-02-24 20:15:00', '35387934', '[\"3\"]', 0, 1.49, 0, 0),
('Doncaster', 'Portstorm', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '23030556', '[]', 0, 0, 0, 0),
('Kempton', 'Princes Des Sables', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '19148726', '[]', 0, 0, 0, 0),
('Doncaster', 'Quiet Flow', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '27009338', '[\"3\"]', 0, 2.34, 0, 0),
('Ludlow', 'Ranieri', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '37525448', '[]', 0, 0, 0, 0),
('Southwell', 'Red Allure', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.61\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.57\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '20210773', '[\"3\"]', 0, 1.72, 0, 0),
('Kempton', 'Red Evelyn', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"11\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '37364562', '[\"2\"]', 7.2, 0, 0, 0),
('Doncaster', 'Red Infantry', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '10562716', '[\"3\"]', 0, 3.2, 0, 0),
('Kempton', 'Red Jasper', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '24519097', '[\"3\"]', 0, 4.2, 0, 0),
('Southwell', 'Red Stripes', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.72\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.73\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '8556771', '[\"3\"]', 0, 1.89, 0, 0),
('Kempton', 'Reeceltic', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"23\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"15\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '21632644', '[\"3\"]', 0, 15.5, 0, 0),
('Doncaster', 'Riggs', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '4158360', '[]', 0, 0, 0, 0);
INSERT INTO `tbl_ev` (`league`, `runner`, `value`, `time`, `last_value`, `marketid`, `date`, `sessionId`, `placeNum`, `2place`, `3place`, `4place`, `5place`) VALUES
('Ludlow', 'Robinshill', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '10414716', '[\"3\"]', 0, 1.91, 0, 0),
('Ludlow', 'Rockhamtom', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '36655920', '[]', 0, 0, 0, 0),
('Doncaster', 'Rockys Treasure', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '12146459', '[\"3\"]', 0, 1.99, 0, 0),
('Doncaster', 'Saint Patric', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"4.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '38251372', '[\"3\"]', 0, 4.5, 0, 0),
('Kempton', 'Salam Ya Faisal', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '29742108', '[\"3\"]', 0, 7.2, 0, 0),
('Doncaster', 'Sambremont', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"29\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '7225427', '[\"3\"]', 0, 0, 0, 0),
('Ludlow', 'Samsons Reach', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '12179004', '[]', 0, 0, 0, 0),
('Southwell', 'San Juan', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.12\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.06\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '6378932', '[\"3\"]', 0, 1.25, 0, 0),
('Ludlow', 'Seymour Sox', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '21929372', '[]', 0, 0, 0, 0),
('Doncaster', 'Shah An Shah', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '23848422', '[]', 0, 0, 0, 0),
('Southwell', 'Silken Moonlight', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"26\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"19\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '13161338', '[\"3\"]', 0, 34, 0, 0),
('Doncaster', 'Silsol', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.57\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.72\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '6618650', '[\"3\"]', 0, 1.84, 0, 0),
('Kempton', 'Six Strings', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"17\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '11324581', '[\"3\"]', 0, 12, 0, 0),
('Doncaster', 'Skytastic', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.4\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.29\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '13295842', '[\"3\"]', 0, 1.44, 0, 0),
('Doncaster', 'Son Of The Somme', '[]', '14:55', 0, '', '2021-02-24 14:55:00', '37886497', '[]', 0, 0, 0, 0),
('Ludlow', 'Star of Rory', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:45', 0, '1.179663905', '2021-02-24 16:45:00', '13877786', '[\"3\"]', 0, 2.04, 0, 0),
('Doncaster', 'Stratton Oakmont', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"6.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '13507775', '[\"3\"]', 0, 5.7, 0, 0),
('Ludlow', 'Subcontinent', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"3.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.87\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '8840941', '[\"2\"]', 3, 0, 0, 0),
('Doncaster', 'Sulbrick', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"9.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"11\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '17:05', 0, '1.179662350', '2021-02-24 17:05:00', '38592947', '[\"3\"]', 0, 9, 0, 0),
('Doncaster', 'Sultans Pride', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '11633708', '[]', 0, 0, 0, 0),
('Ludlow', 'Sumkindofking', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"7\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '12048454', '[\"2\"]', 7.4, 0, 0, 0),
('Ludlow', 'Summer Name', '[]', '14:30', 0, '1.179663885', '2021-02-24 14:30:00', '10991084', '[\"3\"]', 0, 0, 0, 0),
('Doncaster', 'Supakalanistic', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '12925639', '[]', 0, 0, 0, 0),
('Kempton', 'Super Julius', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '11137751', '[]', 0, 0, 0, 0),
('Ludlow', 'Takeabid', '[]', '16:15', 0, '', '2021-02-24 16:15:00', '38592957', '[]', 0, 0, 0, 0),
('Southwell', 'Tan', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"8\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:15', 0, '1.179664525', '2021-02-24 15:15:00', '12855125', '[\"3\"]', 0, 10, 0, 0),
('Kempton', 'Test Ride', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"29\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"29\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '10088001', '[\"3\"]', 0, 19, 0, 0),
('Southwell', 'The Resdev Way', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '14:40', 0, '1.179664520', '2021-02-24 14:40:00', '9579846', '[\"3\"]', 0, 3.85, 0, 0),
('Doncaster', 'Theligny', '[]', '16:05', 0, '', '2021-02-24 16:05:00', '9052305', '[]', 0, 0, 0, 0),
('Ludlow', 'Tip Top Cat', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '27382022', '[]', 0, 0, 0, 0),
('Kempton', 'Tommy Rock', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '25577493', '[\"3\"]', 0, 2.44, 0, 0),
('Kempton', 'Top Fox', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.33\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"1.22\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:45', 0, '1.179665707', '2021-02-24 18:45:00', '13582934', '[\"3\"]', 0, 1.34, 0, 0),
('Doncaster', 'Top Honcho', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"34\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"51\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '38592945', '[\"3\"]', 0, 140, 0, 0),
('Kempton', 'Trixie Waterbury', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:45', 0, '1.179665717', '2021-02-24 19:45:00', '28652763', '[\"3\"]', 0, 1.98, 0, 0),
('Kempton', 'Turanga Leela', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '11238539', '[]', 0, 0, 0, 0),
('Kempton', 'Twpsyn', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"15\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"21\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '21952973', '[\"3\"]', 0, 13.5, 0, 0),
('Kempton', 'Uzincso', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '18:15', 0, '1.179665700', '2021-02-24 18:15:00', '25036886', '[\"3\"]', 0, 2.08, 0, 0),
('Kempton', 'Vina Bay', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.25\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.1\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '17:45', 0, '1.179665676', '2021-02-24 17:45:00', '36836883', '[\"2\"]', 2.14, 0, 0, 0),
('Ludlow', 'Virginia Chick', '[]', '14:30', 0, '', '2021-02-24 14:30:00', '12363646', '[]', 0, 0, 0, 0),
('Ludlow', 'Volcano', '[{\"BookieList\":[{\"BookieName\":\"SkyBet\",\"Odds\":\"1.91\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:40', 0, '1.179663895', '2021-02-24 15:40:00', '9974980', '[\"2\"]', 1.99, 0, 0, 0),
('Doncaster', 'West Approach', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.88\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '15:30', 0, '1.179662335', '2021-02-24 15:30:00', '9150590', '[\"3\"]', 0, 3, 0, 0),
('Ludlow', 'Wildkatze', '[]', '15:05', 0, '', '2021-02-24 15:05:00', '27006816', '[]', 0, 0, 0, 0),
('Kempton', 'Winnetka', '[]', '17:15', 0, '', '2021-02-24 17:15:00', '24623780', '[]', 0, 0, 0, 0),
('Southwell', 'Woke', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"2.88\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":2}]', '15:50', 0, '1.179664530', '2021-02-24 15:50:00', '24599180', '[\"2\"]', 3.25, 0, 0, 0),
('Doncaster', 'Wykham', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"7\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"11\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '16:35', 0, '1.179662345', '2021-02-24 16:35:00', '38592946', '[\"3\"]', 0, 9, 0, 0),
('Kempton', 'Zuba', '[{\"BookieList\":[{\"BookieName\":\"Bet365\",\"Odds\":\"8.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#027b5b\"},{\"BookieName\":\"SkyBet\",\"Odds\":\"9.5\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#20326a\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Place\":\"\",\"Term\":\"\",\"Color\":\"#21dc6d\"}],\"NumOfWin\":3}]', '19:15', 0, '1.179665712', '2021-02-24 19:15:00', '20838057', '[\"3\"]', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `level`, `create_date`, `last_login`) VALUES
(1, 'admin', 'admin', 0, '2021-03-01 07:01:03', '2021-03-08 03:57:22'),
(2, 'koko', 'koko', 1, '2021-03-01 09:02:54', '2021-03-09 06:50:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_betslip`
--
ALTER TABLE `tbl_betslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ev`
--
ALTER TABLE `tbl_ev`
  ADD UNIQUE KEY `runner` (`runner`,`sessionId`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_betslip`
--
ALTER TABLE `tbl_betslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
