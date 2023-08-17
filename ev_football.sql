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
-- Database: `ev_football`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_league`
--

CREATE TABLE `tbl_league` (
  `id` int(11) NOT NULL,
  `league` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_league`
--

INSERT INTO `tbl_league` (`id`, `league`) VALUES
(1, 'England Premier League'),
(2, 'England Championship'),
(3, 'England League 1'),
(4, 'England League 2'),
(5, 'England FA Cup'),
(6, 'England EFL Trophy'),
(7, 'Scottish Premiership'),
(8, 'Spain Primera Liga'),
(9, 'Germany Bundesliga I'),
(10, 'Italy Serie A'),
(11, 'France Ligue 1'),
(12, 'UEFA Champions League'),
(13, 'UEFA Europa League'),
(14, 'Euro 2020'),
(15, 'Copa America');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_match`
--

CREATE TABLE `tbl_match` (
  `id` int(11) NOT NULL,
  `teamname` varchar(100) NOT NULL,
  `bookieodd` varchar(1024) NOT NULL,
  `layprice` varchar(50) NOT NULL,
  `leaguetype` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `marketid` varchar(100) NOT NULL,
  `eventname` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_match`
--

INSERT INTO `tbl_match` (`id`, `teamname`, `bookieodd`, `layprice`, `leaguetype`, `date`, `marketid`, `eventname`) VALUES
(32778483, 'Liverpool', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.33\",\"Stake\":\"-0.59\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.3\",\"Stake\":\"-2.83\",\"Color\":\"#013b29\"}]', '1.37', 1, '2021-10-16 12:30:00', '1.188260566', 'Watford v Liverpool'),
(32778484, 'Watford', '[{\"BookieName\":\"Bet365\",\"Odds\":\"8\",\"Stake\":\"-13.27\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"9\",\"Stake\":\"-2.43\",\"Color\":\"#013b29\"}]', '11', 1, '2021-10-16 12:30:00', '1.188260566', 'Watford v Liverpool'),
(32778485, 'Aston Villa', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-16 15:00:00', '', ''),
(32778486, 'Wolverhampton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.6\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-16 15:00:00', '', ''),
(32778487, 'Man Utd', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Stake\":\"-7.05\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-4.61\",\"Color\":\"#013b29\"}]', '2.12', 1, '2021-10-16 15:00:00', '1.188260274', 'Leicester v Man Utd'),
(32778488, 'Leicester', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Stake\":\"1.50\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.6\",\"Stake\":\"-2.56\",\"Color\":\"#013b29\"}]', '3.95', 1, '2021-10-16 15:00:00', '1.188260274', 'Leicester v Man Utd'),
(32778489, 'Man City', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.11\",\"Stake\":\"-2.37\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.11\",\"Stake\":\"-2.37\",\"Color\":\"#013b29\"}]', '1.16', 1, '2021-10-16 15:00:00', '1.188260858', 'Man City v Burnley'),
(32778490, 'Burnley', '[{\"BookieName\":\"Bet365\",\"Odds\":\"17\",\"Stake\":\"-7.29\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"20\",\"Stake\":\"9.07\",\"Color\":\"#013b29\"}]', '27', 1, '2021-10-16 15:00:00', '1.188260858', 'Man City v Burnley'),
(32778491, 'Brighton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Stake\":\"-6.20\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-3.73\",\"Color\":\"#013b29\"}]', '2.1', 1, '2021-10-16 15:00:00', '1.188260712', 'Norwich v Brighton'),
(32778492, 'Norwich', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4\",\"Stake\":\"2.24\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.8\",\"Stake\":\"-2.87\",\"Color\":\"#013b29\"}]', '4.2', 1, '2021-10-16 15:00:00', '1.188260712', 'Norwich v Brighton'),
(32778493, 'Southampton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.37\",\"Stake\":\"-6.08\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Stake\":\"-0.93\",\"Color\":\"#013b29\"}]', '2.64', 1, '2021-10-16 15:00:00', '1.188260128', 'Southampton v Leeds'),
(32778494, 'Leeds', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.8\",\"Stake\":\"0.79\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Stake\":\"-1.01\",\"Color\":\"#013b29\"}]', '2.92', 1, '2021-10-16 15:00:00', '1.188260128', 'Southampton v Leeds'),
(32778495, 'Chelsea', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.44\",\"Stake\":\"-3.36\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.44\",\"Stake\":\"-3.36\",\"Color\":\"#013b29\"}]', '1.53', 1, '2021-10-16 17:30:00', '1.188261150', 'Brentford v Chelsea'),
(32778496, 'Brentford', '[{\"BookieName\":\"Bet365\",\"Odds\":\"7.5\",\"Stake\":\"2.41\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.5\",\"Stake\":\"2.41\",\"Color\":\"#013b29\"}]', '8.4', 1, '2021-10-16 17:30:00', '1.188261150', 'Brentford v Chelsea'),
(32778497, 'Everton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.4\",\"Stake\":\"-6.91\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Stake\":\"-3.03\",\"Color\":\"#013b29\"}]', '2.7', 1, '2021-10-17 14:00:00', '1.188261296', 'Everton v West Ham'),
(32778498, 'West Ham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.8\",\"Stake\":\"1.45\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.7\",\"Stake\":\"-2.17\",\"Color\":\"#013b29\"}]', '2.9', 1, '2021-10-17 14:00:00', '1.188261296', 'Everton v West Ham'),
(32778499, 'Tottenham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.95\",\"Stake\":\"-4.61\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Stake\":\"-2.16\",\"Color\":\"#013b29\"}]', '2.12', 1, '2021-10-17 16:30:00', '1.188260420', 'Newcastle v Tottenham'),
(32778500, 'Newcastle', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.6\",\"Stake\":\"-2.56\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.6\",\"Stake\":\"-2.56\",\"Color\":\"#013b29\"}]', '3.95', 1, '2021-10-17 16:30:00', '1.188260420', 'Newcastle v Tottenham'),
(32778501, 'Arsenal', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.5\",\"Stake\":\"-5.35\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Stake\":\"-0.93\",\"Color\":\"#013b29\"}]', '1.63', 1, '2021-10-18 20:00:00', '1.188261442', 'Arsenal v Crystal Palace'),
(32778502, 'Crystal Palace', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Stake\":\"4.23\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6\",\"Stake\":\"-3.79\",\"Color\":\"#013b29\"}]', '7', 1, '2021-10-18 20:00:00', '1.188261442', 'Arsenal v Crystal Palace'),
(32778575, 'Sporting', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.25\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.25\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-19 17:45:00', '1.188395977', 'Besiktas v Sporting Lisbon'),
(32778576, 'Besiktas', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.25\",\"Stake\":\"-2.76\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.1\",\"Stake\":\"-7.25\",\"Color\":\"#013b29\"}]', '3.55', 12, '2021-10-19 17:45:00', '1.188395977', 'Besiktas v Sporting Lisbon'),
(32778577, 'Man City', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.3\",\"Stake\":\"-2.83\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.29\",\"Stake\":\"-3.58\",\"Color\":\"#013b29\"}]', '1.37', 12, '2021-10-19 17:45:00', '1.188396694', 'Club Brugge v Man City'),
(32778578, 'Club Brugge', '[{\"BookieName\":\"Bet365\",\"Odds\":\"9\",\"Stake\":\"-5.99\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"10\",\"Stake\":\"4.46\",\"Color\":\"#013b29\"}]', '11.5', 12, '2021-10-19 17:45:00', '1.188396694', 'Club Brugge v Man City'),
(32778579, 'Ajax', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.3\",\"Stake\":\"-2.48\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.25\",\"Stake\":\"-4.60\",\"Color\":\"#013b29\"}]', '2.46', 12, '2021-10-19 20:00:00', '1.188397537', 'Ajax v Dortmund'),
(32778580, 'Dortmund', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.9\",\"Stake\":\"-1.38\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.88\",\"Stake\":\"-2.06\",\"Color\":\"#013b29\"}]', '3.1', 12, '2021-10-19 20:00:00', '1.188397537', 'Ajax v Dortmund'),
(32778581, 'Liverpool', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.2\",\"Stake\":\"-5.24\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.25\",\"Stake\":\"-3.09\",\"Color\":\"#013b29\"}]', '2.42', 12, '2021-10-19 20:00:00', '1.188398254', 'Atletico Madrid v Liverpool'),
(32778582, 'Atletico Madrid', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.1\",\"Stake\":\"-2.04\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.1\",\"Stake\":\"-2.04\",\"Color\":\"#013b29\"}]', '3.35', 12, '2021-10-19 20:00:00', '1.188398254', 'Atletico Madrid v Liverpool'),
(32778583, 'AC Milan', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-19 20:00:00', '', ''),
(32778584, 'FC Porto', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-19 20:00:00', '', ''),
(32778585, 'Inter', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.14\",\"Stake\":\"-5.32\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.14\",\"Stake\":\"-5.32\",\"Color\":\"#013b29\"}]', '1.23', 12, '2021-10-19 20:00:00', '1.188396293', 'Inter v Sheriff Tiraspol'),
(32778586, 'Sheriff Tiraspol', '[{\"BookieName\":\"Bet365\",\"Odds\":\"15\",\"Stake\":\"-8.53\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"16\",\"Stake\":\"-2.43\",\"Color\":\"#013b29\"}]', '23', 12, '2021-10-19 20:00:00', '1.188396293', 'Inter v Sheriff Tiraspol'),
(32778587, 'Paris St-G', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.36\",\"Stake\":\"-3.83\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.36\",\"Stake\":\"-3.83\",\"Color\":\"#013b29\"}]', '1.45', 12, '2021-10-19 20:00:00', '1.188398740', 'Paris St-G v RB Leipzig'),
(32778588, 'RB Leipzig', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Stake\":\"-13.04\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.5\",\"Stake\":\"0.33\",\"Color\":\"#013b29\"}]', '8.6', 12, '2021-10-19 20:00:00', '1.188398740', 'Paris St-G v RB Leipzig'),
(32778589, 'Real Madrid', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.57\",\"Stake\":\"1.49\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.53\",\"Stake\":\"-1.10\",\"Color\":\"#013b29\"}]', '1.59', 12, '2021-10-19 20:00:00', '1.188397136', 'Shakhtar v Real Madrid'),
(32778590, 'Shakhtar', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Stake\":\"-13.99\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Stake\":\"-21.81\",\"Color\":\"#013b29\"}]', '7.2', 12, '2021-10-19 20:00:00', '1.188397136', 'Shakhtar v Real Madrid'),
(32778591, 'Barcelona', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.22\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.22\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 17:45:00', '', ''),
(32778592, 'Dynamo Kiev', '[{\"BookieName\":\"Bet365\",\"Odds\":\"11\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"11\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 17:45:00', '', ''),
(32778593, 'FC Salzburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 17:45:00', '', ''),
(32778594, 'Wolfsburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.9\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 17:45:00', '', ''),
(32778595, 'Bayern Munich', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.4\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778596, 'Benfica', '[{\"BookieName\":\"Bet365\",\"Odds\":\"7.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778597, 'Chelsea', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.11\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.1\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778598, 'Malmo FF', '[{\"BookieName\":\"Bet365\",\"Odds\":\"19\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"26\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778599, 'Sevilla', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778600, 'Lille', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.6\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.6\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778601, 'Man Utd', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.72\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778602, 'Atalanta', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778603, 'Villarreal', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778604, 'Young Boys', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778605, 'Juventus', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32778606, 'Zenit St Petersburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 12, '2021-10-20 20:00:00', '', ''),
(32779357, 'Real Sociedad', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.40\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.36\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-16 20:00:00', '', ''),
(32779358, 'Real Mallorca', '[{\"BookieName\":\"Bet365\",\"Odds\":\"9.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-16 20:00:00', '', ''),
(32779359, 'Rayo Vallecano', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.70\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 13:00:00', '', ''),
(32779360, 'Elche CF', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 13:00:00', '', ''),
(32779361, 'Sevilla', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.38\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.30\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 15:15:00', '', ''),
(32779362, 'Celta Vigo', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 15:15:00', '', ''),
(32779363, 'Levante', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.55\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.60\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 17:30:00', '', ''),
(32779364, 'Getafe', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.88\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 17:30:00', '', ''),
(32779365, 'Villarreal', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 17:30:00', '', ''),
(32779366, 'Osasuna', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.20\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 17:30:00', '', ''),
(32779367, 'Barcelona', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 20:00:00', '', ''),
(32779368, 'Valencia', '[{\"BookieName\":\"Bet365\",\"Odds\":\"7.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-17 20:00:00', '', ''),
(32779369, 'Betis', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.25\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-18 18:00:00', '', ''),
(32779370, 'Deportivo Alaves', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-18 18:00:00', '', ''),
(32779371, 'Espanyol', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.65\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-18 20:00:00', '', ''),
(32779372, 'Cadiz', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-18 20:00:00', '', ''),
(32779391, 'TSG Hoffenheim', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-15 19:30:00', '', ''),
(32779392, 'Cologne', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.25\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-15 19:30:00', '', ''),
(32779393, 'Borussia Dortmund', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.36\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.33\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-16 14:30:00', '', ''),
(32779394, 'Mainz', '[{\"BookieName\":\"Bet365\",\"Odds\":\"8.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-16 14:30:00', '', ''),
(32779395, 'Eintracht Frankfurt', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.70\",\"Stake\":\"-4.13\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Stake\":\"-5.82\",\"Color\":\"#013b29\"}]', '1.83', 9, '2021-10-16 14:30:00', '1.188259545', 'Eintracht Frankfurt v Hertha Berlin'),
(32779396, 'Hertha Berlin', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.50\",\"Stake\":\"-10.31\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.50\",\"Stake\":\"-10.31\",\"Color\":\"#013b29\"}]', '5.5', 9, '2021-10-16 14:30:00', '1.188259545', 'Eintracht Frankfurt v Hertha Berlin'),
(32779397, 'Greuther Furth', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.20\",\"Stake\":\"-10.88\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.20\",\"Stake\":\"-10.88\",\"Color\":\"#013b29\"}]', '2.58', 9, '2021-10-16 14:30:00', '1.188259143', 'Greuther Furth v Bochum'),
(32779398, 'Bochum', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.00\",\"Stake\":\"-10.24\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-10.24\",\"Color\":\"#013b29\"}]', '3.55', 9, '2021-10-16 14:30:00', '1.188259143', 'Greuther Furth v Bochum'),
(32779399, 'RB Leipzig', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.70\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-16 14:30:00', '', ''),
(32779400, 'SC Freiburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-16 14:30:00', '', ''),
(32779401, 'Union Berlin', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.70\",\"Stake\":\"-9.56\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.70\",\"Stake\":\"-9.56\",\"Color\":\"#013b29\"}]', '3.15', 9, '2021-10-16 14:30:00', '1.188259411', 'Union Berlin v Wolfsburg'),
(32779402, 'Wolfsburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.55\",\"Stake\":\"-8.21\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.60\",\"Stake\":\"-6.41\",\"Color\":\"#013b29\"}]', '2.92', 9, '2021-10-16 14:30:00', '1.188259411', 'Union Berlin v Wolfsburg'),
(32779403, 'Borussia Mgladbach', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.67\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-16 17:30:00', '', ''),
(32779404, 'VfB Stuttgart', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-16 17:30:00', '', ''),
(32779405, 'Bayern Munich', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-17 14:30:00', '', ''),
(32779406, 'Bayer Leverkusen', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-17 14:30:00', '', ''),
(32779407, 'Augsburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.25\",\"Stake\":\"-6.06\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.30\",\"Stake\":\"-3.97\",\"Color\":\"#013b29\"}]', '2.5', 9, '2021-10-17 16:30:00', '1.188259947', 'Augsburg v Arminia Bielefeld'),
(32779408, 'Arminia Bielefeld', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.20\",\"Stake\":\"-9.07\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.20\",\"Stake\":\"-9.07\",\"Color\":\"#013b29\"}]', '3.75', 9, '2021-10-17 16:30:00', '1.188259947', 'Augsburg v Arminia Bielefeld'),
(32779429, 'Spezia', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-16 14:00:00', '', ''),
(32779430, 'Salernitana', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-16 14:00:00', '', ''),
(32779431, 'Inter Milan', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.20\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.20\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-16 17:00:00', '', ''),
(32779432, 'Lazio', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.25\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-16 17:00:00', '', ''),
(32779433, 'AC Milan', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.44\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-16 19:45:00', '', ''),
(32779434, 'Verona', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-16 19:45:00', '', ''),
(32779435, 'Cagliari', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.90\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.70\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 11:30:00', '', ''),
(32779436, 'Sampdoria', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.45\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 11:30:00', '', ''),
(32779437, 'Atalanta', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.60\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 14:00:00', '', ''),
(32779438, 'Empoli', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.25\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 14:00:00', '', ''),
(32779439, 'Sassuolo', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 14:00:00', '', ''),
(32779440, 'Genoa', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.30\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.20\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 14:00:00', '', ''),
(32779441, 'Udinese', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.38\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 14:00:00', '', ''),
(32779442, 'Bologna', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.90\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.70\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 14:00:00', '', ''),
(32779443, 'Napoli', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.30\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 17:00:00', '', ''),
(32779444, 'Torino', '[{\"BookieName\":\"Bet365\",\"Odds\":\"8.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"8.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 17:00:00', '', ''),
(32779445, 'Juventus', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 19:45:00', '', ''),
(32779446, 'Roma', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.20\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-17 19:45:00', '', ''),
(32779447, 'Fiorentina', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.91\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-18 19:45:00', '', ''),
(32779448, 'Venezia', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-18 19:45:00', '', ''),
(33156073, 'Leicester', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-13.60\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.75\",\"Stake\":\"-13.60\",\"Color\":\"#013b29\"}]', '2.1', 13, '2021-10-20 15:30:00', '1.188490411', 'Spartak Moscow v Leicester'),
(33156074, 'Spartak Moscow', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-0.34\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.33\",\"Stake\":\"-9.15\",\"Color\":\"#013b29\"}]', '5.2', 13, '2021-10-20 15:30:00', '1.188490411', 'Spartak Moscow v Leicester'),
(33156075, 'Fenerbahce', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-2.34\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.67\",\"Stake\":\"-6.81\",\"Color\":\"#013b29\"}]', '1.85', 13, '2021-10-21 17:45:00', '1.188490813', 'Fenerbahce v Antwerp'),
(33156076, 'Antwerp', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.5\",\"Stake\":\"-23.94\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.5\",\"Stake\":\"-23.94\",\"Color\":\"#013b29\"}]', '6.6', 13, '2021-10-21 17:45:00', '1.188490813', 'Fenerbahce v Antwerp'),
(33156077, 'Rangers', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.57\",\"Stake\":\"-3.80\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.53\",\"Stake\":\"-6.25\",\"Color\":\"#013b29\"}]', '1.68', 13, '2021-10-21 20:00:00', '1.188491619', 'Rangers v Brondby'),
(33156078, 'Brondby', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6\",\"Stake\":\"-6.17\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Stake\":\"-13.99\",\"Color\":\"#013b29\"}]', '7.2', 13, '2021-10-21 20:00:00', '1.188491619', 'Rangers v Brondby'),
(33156079, 'Lyon', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Stake\":\"-8.71\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.87\",\"Stake\":\"-10.15\",\"Color\":\"#013b29\"}]', '2.16', 13, '2021-10-21 20:00:00', '1.188491889', 'Sparta Prague v Lyon'),
(33156080, 'Sparta Prague', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.9\",\"Stake\":\"-10.20\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.8\",\"Stake\":\"-12.50\",\"Color\":\"#013b29\"}]', '4.7', 13, '2021-10-21 20:00:00', '1.188491889', 'Sparta Prague v Lyon'),
(33156925, 'Lazio', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 17:45:00', '', ''),
(33156926, 'Marseille', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 17:45:00', '', ''),
(33156927, 'Braga', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 17:45:00', '', ''),
(33156928, 'Ludogorets Razgrad', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.6\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 17:45:00', '', ''),
(33156929, 'Midtjylland', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 17:45:00', '', ''),
(33156930, 'Red Star Belgrade', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.4\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 17:45:00', '', ''),
(33156931, 'Betis', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.37\",\"Stake\":\"-9.98\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Stake\":\"-9.60\",\"Color\":\"#013b29\"}]', '2.76', 13, '2021-10-21 17:45:00', '1.188490545', 'Betis v Leverkusen'),
(33156932, 'Leverkusen', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Stake\":\"1.98\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.7\",\"Stake\":\"-4.06\",\"Color\":\"#013b29\"}]', '2.96', 13, '2021-10-21 17:45:00', '1.188490545', 'Betis v Leverkusen'),
(33163349, 'Celtic', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.61\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-19 15:30:00', '', ''),
(33163350, 'Ferencvarosi TC', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-19 15:30:00', '', ''),
(33163351, 'Dinamo Zagreb', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.2\",\"Stake\":\"-8.15\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.2\",\"Stake\":\"-8.15\",\"Color\":\"#013b29\"}]', '2.5', 13, '2021-10-21 17:45:00', '1.188491753', 'Rapid Vienna v Dinamo Zagreb'),
(33163352, 'Rapid Vienna', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.2\",\"Stake\":\"-9.07\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Stake\":\"-14.75\",\"Color\":\"#013b29\"}]', '3.75', 13, '2021-10-21 17:45:00', '1.188491753', 'Rapid Vienna v Dinamo Zagreb'),
(33163353, 'Eintracht Frankfurt', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-9.00\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Stake\":\"-6.40\",\"Color\":\"#013b29\"}]', '1.99', 13, '2021-10-21 20:00:00', '1.188490679', 'Eintracht Frankfurt v Olympiakos'),
(33163354, 'Olympiakos', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"1.45\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Stake\":\"-14.57\",\"Color\":\"#013b29\"}]', '5.1', 13, '2021-10-21 20:00:00', '1.188490679', 'Eintracht Frankfurt v Olympiakos'),
(33163355, 'Lokomotiv', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.4\",\"Stake\":\"-12.47\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.45\",\"Stake\":\"-10.64\",\"Color\":\"#013b29\"}]', '2.88', 13, '2021-10-21 20:00:00', '1.188490947', 'Lokomotiv v Galatasaray'),
(33163356, 'Galatasaray', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3\",\"Stake\":\"-7.79\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-13.94\",\"Color\":\"#013b29\"}]', '3.45', 13, '2021-10-21 20:00:00', '1.188490947', 'Lokomotiv v Galatasaray'),
(33163357, 'Napoli', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.16\",\"Stake\":\"-2.10\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.14\",\"Stake\":\"-3.79\",\"Color\":\"#013b29\"}]', '1.21', 13, '2021-10-21 20:00:00', '1.188491351', 'Napoli v Legia Warsaw'),
(33163358, 'Legia Warsaw', '[{\"BookieName\":\"Bet365\",\"Odds\":\"13\",\"Stake\":\"-36.63\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"15\",\"Stake\":\"-26.88\",\"Color\":\"#013b29\"}]', '32', 13, '2021-10-21 20:00:00', '1.188491351', 'Napoli v Legia Warsaw'),
(33163359, 'PSV', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Stake\":\"-14.29\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.2\",\"Stake\":\"-10.21\",\"Color\":\"#013b29\"}]', '2.56', 13, '2021-10-21 20:00:00', '1.188491485', 'PSV v Monaco'),
(33163360, 'Monaco', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.4\",\"Stake\":\"-5.74\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Stake\":\"-16.83\",\"Color\":\"#013b29\"}]', '3.85', 13, '2021-10-21 20:00:00', '1.188491485', 'PSV v Monaco'),
(33163361, 'Sociedad', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.55\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 20:00:00', '', ''),
(33163362, 'SK Sturm Graz', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 13, '2021-10-21 20:00:00', '', ''),
(33163363, 'West Ham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.33\",\"Stake\":\"-4.67\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.33\",\"Stake\":\"-4.67\",\"Color\":\"#013b29\"}]', '1.43', 13, '2021-10-21 20:00:00', '1.188492238', 'West Ham v Genk'),
(33163364, 'Genk', '[{\"BookieName\":\"Bet365\",\"Odds\":\"8.5\",\"Stake\":\"-11.21\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.5\",\"Stake\":\"-21.66\",\"Color\":\"#013b29\"}]', '11.5', 13, '2021-10-21 20:00:00', '1.188492238', 'West Ham v Genk'),
(33279021, 'Ipswich', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.72\",\"Stake\":\"-5.98\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.7\",\"Stake\":\"-7.08\",\"Color\":\"#013b29\"}]', '1.89', 3, '2021-10-09 15:00:00', '1.188560898', 'Ipswich v Shrewsbury'),
(33279022, 'Shrewsbury', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-8.35\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.75\",\"Stake\":\"-8.35\",\"Color\":\"#013b29\"}]', '5.7', 3, '2021-10-09 15:00:00', '1.188560898', 'Ipswich v Shrewsbury'),
(33279023, 'Plymouth', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-5.90\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Stake\":\"-8.09\",\"Color\":\"#013b29\"}]', '2.38', 3, '2021-10-09 15:00:00', '1.188560262', 'Plymouth v Burton Albion'),
(33279024, 'Burton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.3\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.1\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 3, '2021-10-09 15:00:00', '1.188560262', 'Plymouth v Burton Albion'),
(33279025, 'Sheff Wed', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-10.92\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.15\",\"Stake\":\"-10.92\",\"Color\":\"#013b29\"}]', '2.52', 3, '2021-10-09 15:00:00', '1.188560472', 'Sheff Wed v Bolton'),
(33279026, 'Bolton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.5\",\"Stake\":\"-2.97\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.1\",\"Stake\":\"-14.06\",\"Color\":\"#013b29\"}]', '3.85', 3, '2021-10-09 15:00:00', '1.188560472', 'Sheff Wed v Bolton'),
(33279027, 'Wycombe', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.57\",\"Stake\":\"-5.97\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.53\",\"Stake\":\"-8.37\",\"Color\":\"#013b29\"}]', '1.72', 3, '2021-10-09 15:00:00', '1.188560577', 'Wycombe v Gillingham'),
(33279028, 'Gillingham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.75\",\"Stake\":\"-5.38\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Stake\":\"-17.72\",\"Color\":\"#013b29\"}]', '6.8', 3, '2021-10-09 15:00:00', '1.188560577', 'Wycombe v Gillingham'),
(33280051, 'Morecambe', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.2\",\"Stake\":\"-17.01\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.2\",\"Stake\":\"-17.01\",\"Color\":\"#013b29\"}]', '2.78', 3, '2021-10-09 15:00:00', '1.188560367', 'Morecambe v Cambridge Utd'),
(33280052, 'Cambridge Utd', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.2\",\"Stake\":\"-19.98\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.1\",\"Stake\":\"-22.48\",\"Color\":\"#013b29\"}]', '4.3', 3, '2021-10-09 15:00:00', '1.188560367', 'Morecambe v Cambridge Utd'),
(33281091, 'Tranmere', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-14.41\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.15\",\"Stake\":\"-10.24\",\"Color\":\"#013b29\"}]', '2.5', 4, '2021-10-08 19:45:00', '1.188597412', 'Tranmere v Colchester'),
(33281092, 'Colchester', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.8\",\"Stake\":\"-8.91\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.5\",\"Stake\":\"-16.10\",\"Color\":\"#013b29\"}]', '4.5', 4, '2021-10-08 19:45:00', '1.188597412', 'Tranmere v Colchester'),
(33282141, 'Forest Green', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 12:00:00', '', ''),
(33282142, 'Swindon', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 12:00:00', '', ''),
(33282143, 'Leyton Orient', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282144, 'Barrow', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.55\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.6\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282145, 'Bristol Rovers', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.6\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282146, 'Carlisle', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.7\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282147, 'Harrogate Town', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.55\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282148, 'Scunthorpe', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282149, 'Northampton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.1\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282150, 'Hartlepool', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.37\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282151, 'Mansfield', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.73\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282152, 'Oldham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282153, 'Bradford', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282154, 'Newport County', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282155, 'Rochdale', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.85\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.85\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282156, 'Crawley Town', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.2\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282157, 'Exeter', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.7\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.63\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282158, 'Stevenage', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.7\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.63\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282159, 'Sutton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33282160, 'Port Vale', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.87\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.9\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33283061, 'Salford City', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33283062, 'Walsall', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 4, '2021-10-09 15:00:00', '', ''),
(33446751, 'West Brom', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.53\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-15 20:00:00', '', ''),
(33446752, 'Birmingham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-15 20:00:00', '', ''),
(33446753, 'Fulham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.57\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.53\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 12:30:00', '', ''),
(33446754, 'QPR', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 12:30:00', '', ''),
(33447205, 'Bournemouth', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447206, 'Bristol City', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447207, 'Huddersfield', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447208, 'Hull', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.6\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447209, 'Millwall', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.3\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447210, 'Luton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.1\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447435, 'Blackburn', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.37\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447436, 'Coventry', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447437, 'Middlesbrough', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.73\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447438, 'Peterborough', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447439, 'Nottm Forest', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447440, 'Blackpool', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447441, 'Preston', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.85\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447442, 'Derby', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447443, 'Reading', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447444, 'Barnsley', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447445, 'Sheff Utd', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.1\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', ''),
(33447446, 'Stoke', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.4\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-16 15:00:00', '', '');
INSERT INTO `tbl_match` (`id`, `teamname`, `bookieodd`, `layprice`, `leaguetype`, `date`, `marketid`, `eventname`) VALUES
(33447447, 'Swansea', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.3\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-17 12:00:00', '', ''),
(33447448, 'Cardiff', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.1\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.88\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 2, '2021-10-17 12:00:00', '', ''),
(33563783, 'PSG', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.29\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.20\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 11, '2021-10-15 20:00:00', '', ''),
(33563784, 'Angers', '[{\"BookieName\":\"Bet365\",\"Odds\":\"8.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"10.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 11, '2021-10-15 20:00:00', '', ''),
(33563785, 'Lille', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 11, '2021-10-16 16:00:00', '', ''),
(33563786, 'Clermont Foot', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.30\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 11, '2021-10-16 16:00:00', '', ''),
(33563787, 'Lyon', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.10\",\"Stake\":\"-8.82\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.10\",\"Stake\":\"-8.82\",\"Color\":\"#013b29\"}]', '2.4', 11, '2021-10-16 20:00:00', '1.188261952', 'Lyon v Monaco'),
(33563788, 'Monaco', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.40\",\"Stake\":\"3.09\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-9.04\",\"Color\":\"#013b29\"}]', '3.5', 11, '2021-10-16 20:00:00', '1.188261952', 'Lyon v Monaco'),
(33563789, 'Nice', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Stake\":\"-7.09\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Stake\":\"-7.09\",\"Color\":\"#013b29\"}]', '2.04', 11, '2021-10-17 12:00:00', '1.188262204', 'ESTAC Troyes v Nice'),
(33563790, 'Troyes', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 11, '2021-10-17 12:00:00', '1.188262204', 'ESTAC Troyes v Nice'),
(33563791, 'Nantes', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.55\",\"Stake\":\"-7.61\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.50\",\"Stake\":\"-9.42\",\"Color\":\"#013b29\"}]', '2.9', 11, '2021-10-17 14:00:00', '1.188262603', 'Bordeaux v Nantes'),
(33563792, 'Bordeaux', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.70\",\"Stake\":\"-8.18\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.70\",\"Stake\":\"-8.18\",\"Color\":\"#013b29\"}]', '3.1', 11, '2021-10-17 14:00:00', '1.188262603', 'Bordeaux v Nantes'),
(33563793, 'Brest', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.15\",\"Stake\":\"-6.65\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.15\",\"Stake\":\"-6.65\",\"Color\":\"#013b29\"}]', '2.4', 11, '2021-10-17 14:00:00', '1.188262729', 'Brest v Reims'),
(33563794, 'Reims', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.60\",\"Stake\":\"6.30\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.30\",\"Stake\":\"-2.56\",\"Color\":\"#013b29\"}]', '3.6', 11, '2021-10-17 14:00:00', '1.188262729', 'Brest v Reims'),
(33563795, 'Rennes', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.91\",\"Stake\":\"-7.41\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.91\",\"Stake\":\"-7.41\",\"Color\":\"#013b29\"}]', '2.14', 11, '2021-10-17 14:00:00', '1.188262475', 'Metz v Rennes'),
(33563796, 'Metz', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.00\",\"Stake\":\"-11.37\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.80\",\"Stake\":\"-15.80\",\"Color\":\"#013b29\"}]', '4.9', 11, '2021-10-17 14:00:00', '1.188262475', 'Metz v Rennes'),
(33563797, 'Strasbourg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.00\",\"Stake\":\"-8.00\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-10.30\",\"Color\":\"#013b29\"}]', '2.26', 11, '2021-10-17 14:00:00', '1.188262330', 'Strasbourg v St Etienne'),
(33563798, 'St Etienne', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.80\",\"Stake\":\"-2.87\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.60\",\"Stake\":\"-7.99\",\"Color\":\"#013b29\"}]', '4.2', 11, '2021-10-17 14:00:00', '1.188262330', 'Strasbourg v St Etienne'),
(33563799, 'Lens', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.20\",\"Stake\":\"-4.48\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.15\",\"Stake\":\"-6.65\",\"Color\":\"#013b29\"}]', '2.4', 11, '2021-10-17 16:00:00', '1.188262855', 'Montpellier v Lens'),
(33563800, 'Montpellier', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.40\",\"Stake\":\"-0.90\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.00\",\"Stake\":\"-12.56\",\"Color\":\"#013b29\"}]', '3.65', 11, '2021-10-17 16:00:00', '1.188262855', 'Montpellier v Lens'),
(33563801, 'Marseille', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.45\",\"Stake\":\"-5.11\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.40\",\"Stake\":\"-8.38\",\"Color\":\"#013b29\"}]', '1.57', 11, '2021-10-17 19:45:00', '1.188263066', 'Marseille v Lorient'),
(33563802, 'Lorient', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.50\",\"Stake\":\"-22.30\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6.00\",\"Stake\":\"-28.28\",\"Color\":\"#013b29\"}]', '9.8', 11, '2021-10-17 19:45:00', '1.188263066', 'Marseille v Lorient'),
(33681063, 'Arsenal', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.9\",\"Stake\":\"-11.85\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.9\",\"Stake\":\"-11.85\",\"Color\":\"#013b29\"}]', '2.24', 1, '2021-10-22 20:00:00', '1.188644541', 'Arsenal v Aston Villa'),
(33681064, 'Aston Villa', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4\",\"Stake\":\"-7.89\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.75\",\"Stake\":\"-13.65\",\"Color\":\"#013b29\"}]', '4.7', 1, '2021-10-22 20:00:00', '1.188644541', 'Arsenal v Aston Villa'),
(33681065, 'Chelsea', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.16\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.11\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 12:30:00', '', ''),
(33681066, 'Norwich', '[{\"BookieName\":\"Bet365\",\"Odds\":\"15\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"20\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 12:30:00', '', ''),
(33681067, 'Crystal Palace', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681068, 'Newcastle', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.7\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681069, 'Everton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.61\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681070, 'Watford', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681287, 'Leeds', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.1\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.15\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681288, 'Wolverhampton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.2\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.1\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681289, 'Southampton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.95\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681290, 'Burnley', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.7\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 15:00:00', '', ''),
(33681291, 'Man City', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.44\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 17:30:00', '', ''),
(33681292, 'Brighton', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-23 17:30:00', '', ''),
(33681293, 'Leicester', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.5\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-24 14:00:00', '', ''),
(33681294, 'Brentford', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.9\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-24 14:00:00', '', ''),
(33681295, 'West Ham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.4\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.3\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-24 14:00:00', '', ''),
(33681296, 'Tottenham', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-24 14:00:00', '', ''),
(33681297, 'Man Utd', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.4\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.63\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-24 16:30:00', '', ''),
(33681298, 'Liverpool', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.8\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.45\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 1, '2021-10-24 16:30:00', '', ''),
(33690019, 'Mainz', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.70\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-22 19:30:00', '', ''),
(33690020, 'Augsburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.20\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-22 19:30:00', '', ''),
(33690021, 'Borussia Dortmund', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.36\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.36\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690022, 'Arminia Bielefeld', '[{\"BookieName\":\"Bet365\",\"Odds\":\"8.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"8.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690023, 'Bayern Munich', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.17\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.14\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690024, 'TSG Hoffenheim', '[{\"BookieName\":\"Bet365\",\"Odds\":\"13.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"13.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690025, 'RB Leipzig', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.13\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690026, 'Greuther Furth', '[{\"BookieName\":\"Bet365\",\"Odds\":\"21.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"20.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690027, 'Wolfsburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.91\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.91\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690028, 'SC Freiburg', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.60\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 14:30:00', '', ''),
(33690029, 'Borussia Mgladbach', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 17:30:00', '', ''),
(33690030, 'Hertha Berlin', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.30\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-23 17:30:00', '', ''),
(33690031, 'Bayer Leverkusen', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-24 14:30:00', '', ''),
(33690032, 'Cologne', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-24 14:30:00', '', ''),
(33690033, 'VfB Stuttgart', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-24 16:30:00', '', ''),
(33690034, 'Union Berlin', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-24 16:30:00', '', ''),
(33690035, 'Eintracht Frankfurt', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.95\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.95\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-24 18:30:00', '', ''),
(33690036, 'Bochum', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 9, '2021-10-24 18:30:00', '', ''),
(33690037, 'Torino', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.73\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-22 17:30:00', '', ''),
(33690038, 'Genoa', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-22 17:30:00', '', ''),
(33690039, 'Sampdoria', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.65\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.65\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-22 19:45:00', '', ''),
(33690040, 'Spezia', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-22 19:45:00', '', ''),
(33690041, 'Empoli', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.30\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-23 14:00:00', '', ''),
(33690042, 'Salernitana', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.20\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-23 14:00:00', '', ''),
(33690043, 'Sassuolo', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.44\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.44\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-23 17:00:00', '', ''),
(33690044, 'Venezia', '[{\"BookieName\":\"Bet365\",\"Odds\":\"5.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-23 17:00:00', '', ''),
(33690045, 'AC Milan', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.85\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-23 19:45:00', '', ''),
(33690046, 'Bologna', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.60\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-23 19:45:00', '', ''),
(33690047, 'Atalanta', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.36\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 11:30:00', '', ''),
(33690048, 'Udinese', '[{\"BookieName\":\"Bet365\",\"Odds\":\"10.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"7.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 11:30:00', '', ''),
(33690049, 'Fiorentina', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.65\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.62\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 14:00:00', '', ''),
(33690050, 'Cagliari', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 14:00:00', '', ''),
(33690051, 'Lazio', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.05\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 14:00:00', '', ''),
(33690052, 'Verona', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 14:00:00', '', ''),
(33690053, 'Napoli', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.30\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.30\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 17:00:00', '', ''),
(33690054, 'Roma', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 17:00:00', '', ''),
(33690055, 'Inter Milan', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.10\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 19:45:00', '', ''),
(33690056, 'Juventus', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.25\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.20\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 10, '2021-10-24 19:45:00', '', ''),
(33697141, 'Osasuna', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.83\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.85\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-22 20:00:00', '', ''),
(33697142, 'Granada', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-22 20:00:00', '', ''),
(33697143, 'Barcelona', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.90\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 15:15:00', '', ''),
(33697144, 'Real Madrid', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.38\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 15:15:00', '', ''),
(33697145, 'Betis', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.83\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 17:30:00', '', ''),
(33697146, 'Rayo Vallecano', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.33\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 17:30:00', '', ''),
(33698261, 'Valencia', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.91\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.87\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 13:00:00', '', ''),
(33698262, 'Real Mallorca', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"3.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 13:00:00', '', ''),
(33698263, 'Athletic Bilbao', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.60\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 20:00:00', '', ''),
(33698264, 'Villarreal', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.90\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 20:00:00', '', ''),
(33698265, 'Elche CF', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.60\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.63\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 13:00:00', '', ''),
(33698266, 'Espanyol', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.88\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 13:00:00', '', ''),
(33698267, 'Getafe', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.60\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-25 20:00:00', '', ''),
(33698268, 'Celta Vigo', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.88\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.90\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-25 20:00:00', '', ''),
(33698549, 'Atletico Madrid', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 20:00:00', '', ''),
(33698550, 'Real Sociedad', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-24 20:00:00', '', ''),
(33700869, 'Cadiz', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.55\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 15:15:00', '', ''),
(33700870, 'Deportivo Alaves', '[{\"BookieName\":\"Bet365\",\"Odds\":\"3.10\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.88\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 15:15:00', '', ''),
(33708459, 'Sevilla', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.44\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 17:30:00', '', ''),
(33708460, 'Levante', '[{\"BookieName\":\"Bet365\",\"Odds\":\"7.00\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 8, '2021-10-23 17:30:00', '', ''),
(33813695, 'Hibernian', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.75\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813696, 'Dundee Utd', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.75\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813697, 'Celtic', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.53\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.57\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813698, 'Motherwell', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"5.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813699, 'Rangers', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813700, 'Hearts', '[{\"BookieName\":\"Bet365\",\"Odds\":\"6.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"6.00\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813701, 'St Mirren', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.40\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813702, 'Ross County', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.88\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.90\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813703, 'St Johnstone', '[{\"BookieName\":\"Bet365\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"1.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813704, 'Livingston', '[{\"BookieName\":\"Bet365\",\"Odds\":\"4.50\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"4.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 15:00:00', '', ''),
(33813705, 'Aberdeen', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.45\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.50\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 18:00:00', '', ''),
(33813706, 'Dundee', '[{\"BookieName\":\"Bet365\",\"Odds\":\"2.80\",\"Stake\":\"-1\",\"Color\":\"#027b5b\"},{\"BookieName\":\"Paddy Power\",\"Odds\":\"2.80\",\"Stake\":\"-1\",\"Color\":\"#013b29\"}]', '', 7, '2021-10-16 18:00:00', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_league`
--
ALTER TABLE `tbl_league`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_match`
--
ALTER TABLE `tbl_match`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teamname` (`teamname`,`leaguetype`,`date`),
  ADD UNIQUE KEY `teamname_2` (`teamname`,`leaguetype`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_match`
--
ALTER TABLE `tbl_match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33813708;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
