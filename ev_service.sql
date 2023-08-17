-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 10:17 AM
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
-- Database: `ev_service`
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
(12, 'Coral', 1446.46, 'lisa1973m', '2022-08-23', 'admin', ''),
(13, 'Bwin', 513.6, 'reecehudsongambling@gmail.com', '2022-10-03', 'admin', 'dd'),
(14, 'Bwin', 506.24, 'reecehudsongambling@gmail.com', '2022-10-05', 'admin', 'dd'),
(15, 'Sportingindex', 9.5, 'GW463', '2022-10-25', 'admin', 'dfff'),
(16, 'TalkSportBet', 9.9, 'maccaz1986+tsb@gmail.com', '2022-12-14', 'admin', 'dfff'),
(17, 'Grosvenor', -1, 'moughrabya1', '2023-01-12', 'admin', ''),
(18, '32Red', 2.3, 'moughrabyangela', '2023-01-13', 'admin', ''),
(19, '32Red', 0.1, 'devscott87', '2023-01-17', 'admin', ''),
(20, 'Ladbrokes', 0, 'alan72gold@gmail.com', '2023-01-27', 'admin', ''),
(21, 'Partycasino', 54.69, 'nickmartin1985@gmail.com', '2023-02-09', 'admin', ''),
(22, 'Partycasino', 39.69, 'nickmartin1985@gmail.com', '2023-02-10', 'admin', ''),
(23, 'Leovegas', 17.6, 'liamdixon10@outlook.com', '2023-02-20', 'admin', ''),
(24, 'Leovegas', 0.7, 'scottdevenney@gmail.com', '2023-02-27', 'admin', 'dfff'),
(25, 'Partycasino', 0.07, 'scottdevenney87@gmail.com', '2023-02-27', 'admin', 'dfff'),
(26, '32Red', 422.44, 'craiglau62', '2023-02-27', 'admin', 'dfff'),
(27, 'Leovegas', 0.7, 'scottdevenney@gmail.com', '2023-02-28', 'admin', 'dfff'),
(28, 'Boyle Sports', 5, 'jeslinealex0', '2023-02-28', 'admin', 'dfff'),
(29, 'Boyle Sports', 254.2, 'amalgoesbetting', '2023-03-02', 'admin', 'dfff'),
(30, 'Boyle Sports', 254.2, 'amalgoesbetting', '2023-03-03', 'admin', 'dfff'),
(31, 'TalkSportBet', 193, 'hayleyrich80@yahoo.com', '2023-03-20', 'admin', '123');

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
(3132, NULL, '888sport', '10049931273', '', '', 'True', 0.2, 0, 'N/A', 'Doubles', 'sss', 'Will', '2022-01-17 16:41:59', '14:50 Fakenham Midnight Mary @ 4\r\n15:45 Chepstow True Thoughts @ 6.5\r\n', 'sss', 1),
(3133, NULL, '888sport', '10049949817', '', '', 'True', 0.2, 0, 'N/A', 'Doubles', 'sss', 'Will', '2022-01-17 22:59:15', '14:35 Chepstow West To The Bridge @ 3.5\r\n14:50 Fakenham Tiny Tantrum @ 2.38\r\n', 'sss', 1),
(3134, NULL, 'Ladbrokes', '2514967864', '', '', 'True', 0.2, 0, 'N/A', 'DOUBLE', 'sss', 'Will', '2022-01-26 09:10:28', '15:00 Lingfield Dirty Martini @ 2.87\r\n16:30 Kempton Charming Paradise @ 5\r\n', 'sss', 1),
(3135, NULL, 'BFSB', 'O/11350073/0004344', '', '', 'True', 0.28, 0, 'N/A', 'SINGLE', 'sss', 'Will', '2022-02-09 11:39:36', '18:00 Kempton Sicilian Vito @ 23\r\n', 'sss', 1),
(3136, NULL, 'BFSB', 'O/11350073/0004345', '', '', 'True', 0.28, 0, 'N/A', 'DOUBLE', 'sss', 'Will', '2022-02-09 11:42:04', '12:45 Fairyhouse Carrigeen Lotus @ 9\r\n15:15 Fairyhouse Igraine @ 3.13\r\n', 'sss', 1),
(3137, NULL, 'BFSB', 'O/11350073/0004346', '', '', 'True', 0.56, 0, 'N/A', 'TRIXIE', 'sss', 'Will', '2022-02-09 11:43:55', '14:00 Ludlow Blenkinsop @ 13\r\n13:15 Fairyhouse Exit To The West @ 6.5\r\n16:15 Fairyhouse Barncroft @ 7.5\r\n', 'sss', 1),
(3138, NULL, 'Coral', '1049684099', '', '', 'True', 0.2, 0, 'N/A', 'DOUBLE', 'sss', 'Will', '2022-02-09 15:02:12', '15:15 Fairyhouse Yenedon @ 10\r\n15:30 Ludlow Firth Of Gold @ 26\r\n', 'sss', 1),
(3139, NULL, 'Bet Victor', '146383816500', '', '', 'True', 0.2, 0, 'N/A', 'Double', 'philruffell', 'Will', '2022-02-10 07:59:33', '13:00 Doncaster Good Bye @ 3.75\r\n13:35 Doncaster Rewired @ 3.25\r\n', 'sss', 1),
(3140, NULL, 'Bet Victor', '146383930200', '', '', 'True', 0.14, 0, 'N/A', 'Patent (7 x 0.01)', 'philruffell', 'Will', '2022-02-10 07:59:33', '13:00 Doncaster Good Bye @ 3.75\r\n13:35 Doncaster Rewired @ 3.25\r\n14:10 Doncaster Ajay\'s Ways @ 4.5\r\n', 'sss', 1),
(3141, NULL, 'Bet Victor', '146388368200', '', '', 'True', 0.2, 0, 'N/A', 'Red Lion Lad', 'philruffell', 'Will', '2022-02-10 07:59:33', '13:17 Ffos Las Red Lion Lad @ 10\r\n', 'sss', 1),
(3142, NULL, 'Bet Victor', '146387185800', '', '', 'True', 0.22, 0, 'N/A', 'Treble', 'philruffell', 'Will', '2022-02-10 07:59:33', '13:35 Doncaster Rewired @ 3.25\r\n14:45 Doncaster Road Warrior @ 3.25\r\n15:20 Doncaster Geometrical @ 6\r\n', 'sss', 1),
(3143, NULL, 'Bet Victor', '146387231400', '', '', 'True', 0.26, 0, 'N/A', 'Hasty Parisian', 'philruffell', 'Will', '2022-02-10 07:59:33', '13:35 Doncaster Hasty Parisian @ 6.5\r\n', 'sss', 1),
(3144, NULL, 'Bet Victor', '146384080800', '', '', 'True', 0.2, 0, 'N/A', 'Peter\'s Portrait', 'philruffell', 'Will', '2022-02-10 07:59:33', '14:10 Doncaster Peter\'s Portrait @ 10\r\n', 'sss', 1),
(3145, NULL, 'Bet Victor', '146387130500', '', '', 'True', 0.22, 0, 'N/A', 'Double', 'philruffell', 'Will', '2022-02-10 07:59:33', '13:35 Doncaster Rewired @ 3.25\r\n15:20 Doncaster Geometrical @ 6\r\n', 'sss', 1),
(3146, NULL, 'Bet Victor', '146383617500', '', '', 'True', 0.1, 0, 'N/A', 'Road Warrior', 'philruffell', 'Will', '2022-02-10 07:59:33', '14:45 Doncaster Road Warrior @ 3.25\r\n', 'sss', 1),
(3147, NULL, 'Bet Victor', '146387388300', '', '', 'True', 0.2, 0, 'N/A', 'Progressive', 'philruffell', 'Will', '2022-02-10 07:59:33', '16:20 Doncaster Progressive @ 4.5\r\n', 'sss', 1),
(3148, NULL, 'Bet Victor', '146388460000', '', '', 'True', 3, 0, 'N/A', 'Lucky 15 (15 x 0.1)', 'philruffell', 'Will', '2022-02-10 08:13:15', '13:25 Huntingdon Tremwedge @ 8.5\r\n14:45 Doncaster Road Warrior @ 3.25\r\n15:20 Doncaster Geometrical @ 6\r\n15:50 Doncaster Terresita @ 5.5\r\n', 'sss', 1),
(3149, NULL, 'Bet Victor', '146388617200', '', '', 'True', 3, 0, 'N/A', 'Lucky 15 (15 x 0.1)', 'philruffell', 'Will', '2022-02-10 08:13:15', '14:27 Ffos Las Soldier Of Destiny @ 3.5\r\n15:45 Huntingdon Thunder Rock @ 2\r\n16:07 Ffos Las Crossing The Bar @ 7.5\r\n16:20 Doncaster Cup Of Coffee @ 6.5\r\n', 'sss', 1),
(3150, NULL, '888casino', '10054208935', '', '', 'True', 0.2, 0, 'N/A', 'Doubles', 'newmananna651@yahoo.com', 'admin', '2022-02-22 13:28:44', '16:50 Taunton Miss M @ 26\r\n13:35 Market Rasen Desaray Girl @ 2.375\r\n', '', 1),
(3151, NULL, 'Coral', '1057031170', '', '', 'True', 0.2, 0, 'N/A', 'SINGLE', 'newmananna651@yahoo.com', 'admin', '2022-02-27 08:50:48', '17:10 Hereford Ebonello @ 3.5\r\n', '', 1),
(3152, NULL, 'BFSB', 'O/8893982/0004187', '', '', 'True', 0.2, 0, 'N/A', 'DOUBLE-1', 'newmananna651@yahoo.com', 'admin', '2022-03-03 14:51:15', '15:16 Newcastle Society Red @ 2.75\r\n15:51 Clonmel Lily Of Dromard @ 6\r\n', '', 1),
(3153, NULL, 'Skybet', '5052894163', '2', '', 'True', 0.2, 0, 'N/A', 'Single', 'Christil', 'admin', '2022-04-04 08:16:38', '16.10 Kelso ‐ Paying 4 Places instead of 3 Saint Arvans @ 6\r\n', 'qqqq', 1),
(3154, NULL, 'Skybet', '5052894783', '2', '', 'True', 0.2, 0, 'N/A', 'Single', 'Christil', 'admin', '2022-04-04 08:18:22', '17.30 Windsor ‐ Paying 5 Places instead of 3 Hul Ah Bah Loo @ 29\r\n', 'qqqq', 1),
(3155, NULL, 'William Hill', '3690326653', '2', '', 'True', 0.2, 0, 'N/A', 'SINGLE', 'qqqq', 'admin', '2022-04-04 08:27:17', '16:00 Windsor Salvator Mundi @ 4.33333333333333\r\n', 'qqqq', 1),
(3156, NULL, 'Unibet', '5387589523593308671333162549248', '', '', 'True', 0.2, 0, 'N/A', 'Single EW', 'qqqq', 'admin', '2022-04-04 09:16:56', '17:30 Windsor Pavlodar @ 7\r\n', 'qqqq', 1),
(3157, NULL, 'Ladbrokes', '2562698152', '', '', 'True', 0.2, 0, 'N/A', 'SINGLE', 'qqqq', 'admin', '2022-04-04 11:39:14', '16:30 Windsor Natalie Rose @ 23\r\n', 'qqqq', 1),
(3158, NULL, 'Coral', '1074276290', '', '', 'True', 0.2, 0, 'N/A', 'SINGLE', 'qqqq', 'admin', '2022-04-04 11:40:57', '15:15 Redcar Delgrey Boy @ 15\r\n', 'qqqq', 1),
(3159, NULL, 'BFSB', 'O/12298427/0000001', '', '', 'True', 1, 0, 'N/A', 'SINGLE', 'qqqq', 'admin', '2022-04-04 14:35:22', '14:40 Redcar Antwasaprettypenny @ 29\r\n', 'qqqq', 1),
(3160, NULL, 'Bet Victor', '148842777100', '', '', 'True', 0.2, 0, 'N/A', 'Gamesters Icon', 'seanncer@gmail.com', 'admin', '2022-04-06 04:30:35', '14:05 Catterick Gamesters Icon @ 7\r\n', 'qqqq', 1),
(3161, NULL, '10bet', '637867957123377061', '', '', 'True', 0.2, 0, 'N/A', 'Single EW', 'ddd', 'admin', '2022-04-29 03:21:55', '19:10 Punchestown Camillas Choice @ 201\r\n', 'ddd', 1),
(3162, NULL, '10bet', '637867958029346813', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'ddd', 'admin', '2022-04-29 03:23:23', '18:35 Punchestown Billaway @ 2.1\r\n17:50 Cheltenham Moratorium @ 2.625\r\n', 'ddd', 1),
(3163, NULL, '10bet', '637867960512375028', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'ddd', 'admin', '2022-04-29 03:27:33', '14:50 Wolverhampton Just Albert @ 13\r\n19:55 Newcastle Main Target @ 5.5\r\n17:50 Cheltenham Moratorium @ 2.625\r\n', 'ddd', 1),
(3164, NULL, 'Sport Nation', '637871813584641245', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'dd', 'admin', '2022-05-03 14:29:28', '16:55 Ayr Oot Ma Way @ 4.33333333333333\r\n19:50 Sedgefield Ballycorr @ 2.375\r\n17:15 Sedgefield Getaway Jewel @ 8.5\r\n', '1', 1),
(3165, NULL, 'Sport Nation', '637871818601031608', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'dd', 'admin', '2022-05-03 14:37:45', '16:35 Lingfield Lilkian @ 5\r\n20:10 Wetherby Frog And Toad @ 2.625\r\n18:10 Wetherby Clodovea @ 12\r\n', '1', 1),
(3166, NULL, 'Sport Nation', '637871822929555783', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'dd', 'admin', '2022-05-03 14:45:02', '15:05 Fakenham Rathmacknee @ 2.2\r\n17:40 Wetherby Mountbatten @ 1.66\r\n14:50 Lingfield Medrara @ 15\r\n', '1', 1),
(3167, NULL, 'Sport Nation', '637871826956028523', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'dd', 'admin', '2022-05-03 14:51:49', '19:50 Sedgefield Wake Up Early @ 6.5\r\n15:05 Fakenham Rathmacknee @ 2.2\r\n15:40 Fakenham Watashock @ 2.875\r\n', '1', 1),
(3168, NULL, 'Sport Nation', '637871831083287416', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'dd', 'admin', '2022-05-03 14:58:35', '17:40 Wetherby Mountbatten @ 1.66\r\n18:05 Ayr Prospect House @ 21\r\n17:50 Sedgefield Not What It Seems @ 2.25\r\n', '1', 1),
(3169, NULL, 'Sport Nation', '637871835076267218', '', '', 'True', 0.8, 0, 'N/A', 'Trixie EW', 'dd', 'admin', '2022-05-03 15:05:11', '16:45 Fakenham Socialiser @ 6.5\r\n16:00 Lingfield Touchwood @ 2.25\r\n17:50 Sedgefield Not What It Seems @ 2.25\r\n', '1', 1),
(3170, NULL, 'Sport Nation', '637871837341131547', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'dd', 'admin', '2022-05-03 15:09:04', '18:05 Ayr Prospect House @ 23\r\n17:50 Sedgefield Not What It Seems @ 2.25\r\n', '1', 1),
(3171, NULL, 'Sport Nation', '637871845259982035', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'dd', 'admin', '2022-05-03 15:22:14', '18:10 Wetherby Clodovea @ 12\r\n17:40 Wetherby Mountbatten @ 1.66\r\n', '1', 1),
(3172, NULL, 'Sport Nation', '637871852155422269', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'dd', 'admin', '2022-05-03 15:33:41', '18:10 Wetherby Clodovea @ 12\r\n16:55 Ayr Hollymount @ 1.44444444444444\r\n', '1', 1),
(3173, NULL, '10bet', '637873163076793630', '', '', 'True', 0.18, 0, 'N/A', 'Doubles EW', 'ddd', 'admin', '2022-05-05 03:58:30', '15:10 Chester John Leeper @ 13\r\n13:50 Worcester O Connell Street @ 23\r\n', 'dddd', 1),
(3174, NULL, 'BFSB', 'O/11355297/0000186', '', '', 'True', 0.2, 0, 'N/A', 'SINGLE', 'nickmartin1985+10@gmail.com', 'admin', '2022-05-09 15:19:16', '19:40 Windsor Crystal Delight @ 1.57142857142857\r\n', 'dd', 1),
(3175, NULL, 'Oddsking', '6318494', '', '', 'True', 1, 0, 'N/A', 'Single', 'nickmartin1985+10@gmail.com', 'admin', '2022-05-10 03:52:06', '13:45 Chepstow Kiteflyer @ 1.2\r\n', 'dd', 1),
(3176, NULL, '888sport', '10066190684', 'India. Super League', '', 'False', 0, 0, 'LOST', 'Soccer', 'fff', 'admin', '2022-05-10 15:24:40', 'Gokulam FC vs Sreenidhi FC AH1(0)', 'ff', 1),
(3177, NULL, '888sport', '10066191330', 'Estonia. Meisterliga', '', 'False', 0.1, 0, 'LOST', 'Basketball', 'fff', 'admin', '2022-05-10 15:29:22', 'Parnu Sadam vs BC Kalev/Cramo TU(150)', 'ff', 1),
(3178, NULL, '888sport', '10066191380', 'Europe. BNXT League', '', 'False', 0.1, 0, 'N/A', 'Basketball', 'fff', 'admin', '2022-05-10 15:29:35', 'BAL Weert vs Zeeuw & Zeeuw Feyenoord TU(151.5)', 'ff', 1),
(3179, NULL, '888sport', '10066191437', 'Spain. Liga ACB', '', 'False', 0.1, 0.18, 'WON', 'Basketball', 'fff', 'admin', '2022-05-10 15:30:05', 'Urbas Fuenlabrada vs Rio Breogan AH1(-5.5)', 'ff', 1),
(3180, NULL, '888sport', '10066191766', 'USA. WNBA. Regular season', '', 'False', 0.1, 0.18, 'WON', 'Basketball [1st half]', 'fff', 'admin', '2022-05-10 15:33:22', 'Las Vegas Aces vs Washington Mystics TO(83)', 'ff', 1),
(3181, NULL, '888sport', '10066191775', 'Germany. Regionalliga', '', 'False', 0.1, 0, 'LOST', 'Soccer', 'fff', 'admin', '2022-05-10 15:33:31', 'FC Pipinsried vs TSV Aubstadt 2', 'ff', 1),
(3182, NULL, '888sport', '10066191801', 'USA. WNBA. Regular season', '', 'False', 0.1, 0.19, 'WON', 'Basketball [1st half]', 'fff', 'admin', '2022-05-10 15:33:45', 'Minnesota Lynx vs Indiana Fever TO(79)', 'ff', 1),
(3183, NULL, 'Unibet', '4651515572', 'Israel. Premier League', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:47:28', 'Maccabi Tel Aviv vs Hapoel Beer Sheva Under 2', 'ff', 1),
(3184, NULL, 'Unibet', '4651524484', 'Argentina. Primera B Nacional', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:47:33', 'CSYD Madryn vs Gimnasia y Esgrima Mendoza Gimnasia y Esgrima Mendoza 0.0', 'ff', 1),
(3185, NULL, 'Unibet', '4651533358', 'USA. MLB', '', 'False', 0.11, 0, 'N/A', 'Baseball', 'fff', 'admin', '2022-05-11 16:47:36', 'San Diego Padres vs Chicago Cubs Chicago Cubs', 'ff', 1),
(3186, NULL, 'Unibet', '4651524567', 'Argentina. Primera B Nacional', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:47:40', 'Nueva Chicago vs CA Atlanta CA Atlanta 0.0', 'ff', 1),
(3187, NULL, 'Unibet', '4651524611', 'USA. MLB', '', 'False', 0.11, 0, 'N/A', 'Baseball [1st half]', 'fff', 'admin', '2022-05-11 16:47:43', 'Los Angeles Angels vs Tampa Bay Rays Under 3.5', 'ff', 1),
(3188, NULL, 'Unibet', '4651540163', 'England. Championship', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:47:46', 'Sheffield United vs Nottingham Forest Sheffield United -1.0', 'ff', 1),
(3189, NULL, 'Unibet', '4651540207', 'Uruguay. Primera Division', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:47:50', 'Cerro Largo FC vs Deportivo Maldonado Deportivo Maldonado 0.0', 'ff', 1),
(3190, NULL, 'Unibet', '4651533547', 'Italy. Serie A2', '', 'False', 0.11, 0, 'N/A', 'Basketball', 'fff', 'admin', '2022-05-11 16:47:54', 'Unieuro Forlì vs Acqua S.Bernardo Cantù Unieuro Forlì +7.5', 'ff', 1),
(3191, NULL, 'Unibet', '4651540284', 'Norway. 1 Division', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:47:58', 'Mjøndalen vs KFUM KFUM 0.0', 'ff', 1),
(3192, NULL, 'Unibet', '4651555930', 'Brazil. Série A', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:48:01', 'Ceará-CE vs Flamengo-RJ Under 2', 'ff', 1),
(3193, NULL, 'Unibet', '4651547223', 'Austria. Erste Liga', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:48:05', 'Austria Wien II vs Rapid Wien II Over 3', 'ff', 1),
(3194, NULL, 'Unibet', '4651547258', 'Argentina. Primera B Nacional', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:48:08', 'Gimnasia de Jujuy vs Belgrano Belgrano -1.0', 'ff', 1),
(3195, NULL, 'Unibet', '4651533735', 'Norway. 1 Division', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:48:12', 'Stjørdals/Blink vs Ranheim Stjørdals/Blink 0.0', 'ff', 1),
(3196, NULL, 'Unibet', '4651540491', 'Argentina. Primera B Nacional', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-11 16:48:15', 'Sacachispas Fútbol Club vs Brown de Adrogué Brown de Adrogué -1.0', 'ff', 1),
(3197, NULL, 'BFSB', 'O/13192900/0000955', 'Brazil. Série A', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-12 04:04:11', 'atletico mg vs atletico go EH1(-2)', 'ff', 1),
(3198, NULL, 'BFSB', 'O/13192900/0000956', 'Brazil. Série A', '', 'False', 0.11, 0, 'N/A', 'Soccer', 'fff', 'admin', '2022-05-12 04:07:59', 'atletico mg vs atletico go EH1(-2)', 'ff', 1),
(3199, NULL, 'Paddy Power', '1527449580', 'North America. NBA', '', 'False', 0.11, 0, 'N/A', 'Basketball', 'fff', 'admin', '2022-05-12 04:40:01', 'philadelphia 76ers vs miami heat TU(50.5)', 'ff', 1),
(3200, NULL, 'Paddy Power', '1527449593', 'North America. NBA', '', 'False', 0.11, 0, 'N/A', 'Basketball', 'fff', 'admin', '2022-05-12 04:40:05', 'dallas mavericks vs phoenix suns TO(54.5)', 'ff', 1),
(3201, NULL, 'Paddy Power', '1528664167', '', '', 'True', 46.48, 0, 'N/A', 'PATENT', 'nickmartin1985+10@gmail.com', 'admin', '2022-05-13 09:57:37', '19:55 Hamilton Yukon Mission @ 7.5\r\n13:00 Newbury Mark Of Respect @ 8\r\n15:50 Newbury Swiss Mistress @ 12\r\n', 'dd', 1),
(3202, NULL, 'BFSB', 'O/11350073/0005021', '', '', 'True', 8.68, 0, 'N/A', 'PATENT-7', 'nickmartin1985+10@gmail.com', 'admin', '2022-05-13 14:46:24', '20:17 Kilbeggan John Mcclane @ 51\r\n15:25 Newmarket War Bonnet @ 151\r\n17:15 Aintree Colemanstown Lad @ 26\r\n', 'dd', 1),
(3203, NULL, 'Fitzdares', 'warrenmcquillan-2022-05-24-02-37', '2', '', 'True', 0.2, 0, 'N/A', 'Double', 'aaaa', 'admin', '2022-05-24 02:37:16', '15:50 Bath Bannergirl @ 26\r\n19:50 Gowran Park Arch Enemy @ 17\r\n', 'aaaaa', 1),
(3204, NULL, '10bet', '637894783992404732', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'EW Check', 'admin', '2022-05-30 04:33:19', '14:10 Cartmel Phoenix Strike @ 10\r\n16:40 Redcar Mac Ailey @ 13\r\n', '1', 1),
(3205, NULL, '10bet', '637894890930446894', '', '', 'False', 0.1, 0, 'N/A', 'Doubles EW', 'EW Check', 'admin', '2022-05-30 07:31:35', '14:00 Redcar Thornaby Beauty @ 26\r\n17:45 Ballinrobe Brogue Belle @ 41\r\n', '1', 1),
(3206, NULL, '888sport', '10068743305', '', '', 'True', 0.2, 0, 'N/A', 'Doubles', 'EW Check', 'admin', '2022-05-30 08:38:43', '15:55 Lingfield Ard Up @ 26\r\n18:50 Ballinrobe Trevena @ 7.5\r\n', '1', 1),
(3207, NULL, '888sport', '10068743581', '', '', 'True', 0.1, 0, 'N/A', 'Doubles', 'EW Check', 'admin', '2022-05-30 08:46:12', '19:10 Windsor Jewel In My Crown @ 11\r\n13:50 Lingfield Klip Klopp @ 8.5\r\n', '1', 1),
(3208, NULL, 'BFSB', 'O/11350073/0005326', '', '', 'True', 0.1, 0, 'N/A', 'DOUBLE-1', 'EW Check', 'admin', '2022-05-30 10:08:35', '17:25 Ayr Judgment Call @ 26\r\n15:55 Lingfield Million Reasons @ 15\r\n', '1', 1),
(3209, NULL, 'Betfred', 'EW Check-202205311111-2303/2308', '', '2303/2308', 'False', 0.5, 0, 'N/A', 'Double', 'EW Check', 'admin', '2022-05-31 11:11:21', '20:34 Yarmouth Night Glass @ 5\r\n13:20 Leicester Bolt Action @ 3.75\r\n', '1', 1),
(3210, NULL, 'Bet Victor', '151153653200', '', '', 'True', 8, 0, 'N/A', 'Plains Indian', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '16:35 Ballinrobe (Ireland) Plains Indian @ 3.25\r\n', '1', 1),
(3211, NULL, 'Bet Victor', '151154837000', '', '', 'True', 8, 0, 'N/A', 'Hebrides', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '16:10 Newbury Hebrides @ 4\r\n', '1', 1),
(3212, NULL, 'Bet Victor', '151160135300', '', '', 'True', 0.1, 0, 'N/A', 'Double', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '17:22 Thirsk Noor Bano @ 2.25\r\n18:52 Thirsk Whitwell @ 3.5\r\n', '1', 1),
(3213, NULL, 'Bet Victor', '151160151500', '', '', 'True', 0.2, 0, 'N/A', 'Double', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '17:22 Thirsk Noor Bano @ 2.25\r\n18:52 Thirsk Whitwell @ 3.5\r\n', '1', 1),
(3214, NULL, 'Bet Victor', '151160463700', '', '', 'True', 0.5, 0, 'N/A', 'Double', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '17:45 Tipperary (Ireland) Craic At Dawn @ 8.5\r\n17:52 Thirsk Gold Charm @ 4.5\r\n', '1', 1),
(3215, NULL, 'Bet Victor', '151160562600', '', '', 'True', 0.5, 0, 'N/A', 'Double', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '17:29 Yarmouth Stone Circle @ 9\r\n19:52 Thirsk Cuban Beat @ 2.1\r\n', '1', 1),
(3216, NULL, 'Bet Victor', '151154238400', '', '', 'True', 8, 0, 'N/A', 'Kapono', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '18:22 Thirsk Kapono @ 7.5\r\n', '1', 1),
(3217, NULL, 'Bet Victor', '151153940500', '', '', 'True', 8, 0, 'N/A', 'Vadsa Queen', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '19:35 Ballinrobe (Ireland) Vadsa Queen @ 1.72\r\n', '1', 1),
(3218, NULL, 'Bet Victor', '151154544400', '', '', 'True', 8, 0, 'N/A', 'Explorers Way', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 15:54:33', '20:20 Tipperary (Ireland) Explorers Way @ 3.5\r\n', '1', 1),
(3219, NULL, 'Bet Victor', '151160765300', '', '', 'False', 0.5, 0, 'N/A', 'Double', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 16:04:26', '16:20 Brighton De Vegas Kid @ 2.25\r\n18:45 Tipperary (Ireland) Jedi Power @ 15\r\n', '1', 1),
(3220, NULL, 'Bet Victor', '151160869600', '', '', 'False', 0.5, 0, 'N/A', 'Double', 'matthewdobson900@yahoo.com', 'admin', '2022-05-31 16:04:26', '16:35 Ballinrobe (Ireland) Hope Des Blins @ 6.5\r\n19:15 Tipperary (Ireland) Iva Batt @ 6.5\r\n', '1', 1),
(3221, NULL, 'Coral', '1098934266', '', '', 'False', 0.2, 0, 'N/A', 'DOUBLE', 'EW Check', 'admin', '2022-05-31 16:57:47', '18:15 Tipperary Lady Tilbury @ 3.25\r\n19:15 Tipperary Iva Batt @ 6.5\r\n', '1', 1),
(3222, NULL, 'Coral', '1098936769', '', '', 'False', 0.2, 0, 'N/A', 'DOUBLE', 'EW Check', 'admin', '2022-05-31 17:03:29', '18:52 Thirsk Thomas Cranmer @ 21\r\n20:34 Yarmouth Galileo Glass @ 5.5\r\n', '1', 1),
(3223, NULL, 'Coral', '1098938776', '', '', 'False', 0.2, 0, 'N/A', 'DOUBLE', 'EW Check', 'admin', '2022-05-31 17:08:07', '18:35 Ballinrobe Peregrine Run @ 21\r\n18:52 Thirsk Thomas Cranmer @ 21\r\n', '1', 1),
(3224, NULL, 'Coral', '1098947218', '', '', 'False', 0.1, 0, 'N/A', 'DOUBLE', 'EW Check', 'admin', '2022-05-31 17:28:17', '18:35 Ballinrobe The Dara Man @ 34\r\n20:20 Tipperary Shajak @ 3.75\r\n', '1', 1),
(3225, NULL, 'Ladbrokes', '2600289245', '', '', 'False', 0.1, 0, 'N/A', 'DOUBLE', 'EW Check', 'admin', '2022-06-01 16:14:29', '18:25 Kempton Follow Your Heart @ 7\r\n18:55 Kempton Audience @ 2\r\n', '1', 1),
(3226, NULL, 'Oddsking', '6330644', '', '', 'False', 0.5, 0, 'N/A', 'Double', 'kannelewis45@gmail.com', 'admin', '2022-06-02 05:54:44', '16:12 Redcar Emerald Lady @ 34\r\n17:45 Redcar Motarajel @ 6.5\r\n', '1', 1),
(3227, NULL, 'Paddy Power', '1550285232', '', '', 'False', 0.5, 0, 'N/A', 'DOUBLE', 'kannelewis45@gmail.com', 'admin', '2022-06-02 08:34:17', '16:12 Redcar Jazzy Princess @ 41\r\n20:30 Ffos Las Robbie Dazzler @ 26\r\n', '1', 1),
(3228, NULL, 'Skybet', '5175731152', '1', '', 'True', 0.2, 0, 'N/A', 'Double', 'davemuch', 'admin', '2022-06-02 10:01:26', '19.00 Ffos Las: Paying 4 Places instead of 3 Flames Of Passion @ 15\r\n16.20 Hamilton: Paying 4 Places instead of 3 Aikido @ 51\r\n', '1', 1),
(3229, NULL, 'Skybet', '5175724996', '2', '', 'True', 0.2, 0, 'N/A', 'Double', 'davemuch', 'admin', '2022-06-02 10:01:26', '13.00 Leicester Central City @ 2.1\r\n13.35 Leicester Nusa Dua @ 2.25\r\n', '1', 1),
(3230, NULL, 'Skybet', '5175724774', '1', '', 'True', 0.1, 0, 'N/A', 'Double', 'davemuch', 'admin', '2022-06-02 10:01:26', '13.00 Leicester Central City @ 2.1\r\n13.35 Leicester Nusa Dua @ 2.25\r\n', '1', 1),
(3231, NULL, 'Unibet', '5482070212065983310854581846016', '', '', 'False', 0.1, 0, 'N/A', 'Doubles EW', 'kannelewis45@gmail.com', 'admin', '2022-06-02 16:00:25', '16:02 Uttoxeter Mackie Dee @ 5\r\n20:20 Leopardstown Miss Vizeun @ 19\r\n', '1', 1),
(3232, NULL, 'William Hill', '3761929703', '1', '', 'True', 0.1, 0, 'N/A', 'DOUBLE', 'kannelewis45@gmail.com', 'admin', '2022-06-02 16:30:22', '20:40 Chelmsford City Croachill @ 17\r\n17:20 Ffos Las Pop The Champagne @ 4.33333333333333\r\n', '1', 1),
(3233, NULL, 'PariMatch', '152302875400', '', '', 'True', 0.2, 0, 'LOST', 'Double', 'dfd', 'admin', '2022-06-27 07:58:32', '15:00 Southwell Millies Mite @ 34\r\n13:00 Southwell Rann Of Kutch @ 17\r\n', '1', 1),
(3234, NULL, 'PariMatch', '152302907100', '', '', 'False', 0.1, 0.45, 'WON', 'SINGLE', 'dfd', 'admin', '2022-06-27 08:00:33', '19:45 Windsor Operating @ 4.5\r\n', '1', 1),
(3235, NULL, 'BFSB', 'O/11399006/0002395', '', '', 'True', 4, 0, 'N/A', 'TRIXIE-4', 'dfd', 'admin', '2022-06-27 15:35:19', '19:00 Musselburgh Lizzie Loch @ 31\r\n16:45 Pontefract True Mason @ 3.75\r\n20:30 Musselburgh Fanzone @ 26\r\n', '1', 1),
(3236, NULL, 'BFSB', 'O/11399006/0002396', '', '', 'True', 6.64, 0, 'N/A', 'TRIXIE-4', 'dfd', 'admin', '2022-06-27 15:37:59', '19:00 Musselburgh Lizzie Loch @ 31\r\n19:45 Windsor Majestic @ 71\r\n20:30 Musselburgh Fanzone @ 26\r\n', '1', 1),
(3237, NULL, 'BFSB', 'O/11399006/0002397', '', '', 'True', 1.8, 0, 'N/A', 'LUCKY_15-15', 'dfd', 'admin', '2022-06-27 15:40:36', '17:15 Windsor Dusky Prince @ 3\r\n16:45 Pontefract True Mason @ 3.75\r\n20:30 Musselburgh Fanzone @ 26\r\n19:00 Musselburgh Lizzie Loch @ 29\r\n', '1', 1),
(3238, NULL, 'BFSB', 'O/11399006/0002398', '', '', 'True', 0.3, 0, 'N/A', 'LUCKY_15-15', 'dfd', 'admin', '2022-06-27 15:44:29', '19:00 Musselburgh Lizzie Loch @ 29\r\n16:45 Pontefract Hulton Ranger @ 36\r\n15:45 Pontefract Grifter @ 4.2\r\n19:15 Windsor Zoom Zoom Babe @ 41\r\n', '1', 1),
(3239, NULL, 'Paddy Power', '1580699829', '', '', 'True', 4, 0, 'N/A', 'TRIXIE', 'dfd', 'admin', '2022-06-28 15:09:46', '19:20 Stratford Barely Famous @ 41\r\n16:25 Hamilton Glen Lomond @ 29\r\n18:00 Chepstow Diamond Cottage @ 7\r\n', '1', 1),
(3240, NULL, 'Paddy Power', '1580700948', '', '', 'True', 3.6, 0, 'N/A', 'TRIXIE', 'dfd', 'admin', '2022-06-28 15:11:06', '20:50 Stratford Blame The Farrier @ 41\r\n19:20 Stratford Barely Famous @ 41\r\n16:25 Hamilton Mokaman @ 4.75\r\n', '1', 1),
(3241, NULL, 'LiveScoreBet', '637926714792998184', '', '', 'True', 1.4, 0, 'N/A', 'Patent', 'dfd', 'admin', '2022-07-06 03:31:19', '20:30 Fairyhouse Even Flow @ 51\r\n19:35 Bath Kodiac Blue @ 9.5\r\n18:15 Kempton River Of Stars @ 3.5\r\n', '1', 1),
(3242, NULL, 'LiveScoreBet', '637926733851915940', '', '', 'True', 0.2, 0, 'N/A', '', 'dfd', 'admin', '2022-07-06 04:03:05', '18:25 Fairyhouse Jupiter Express @ 9\r\n15:40 Yarmouth Don Bekar @ 15\r\n19:50 Kempton Mumma Mac @ 11\r\n', '1', 1),
(3243, NULL, 'LiveScoreBet', '637926736469161682', '', '', 'True', 0.2, 0, 'N/A', '', 'dfd', 'admin', '2022-07-06 04:07:53', '18:15 Kempton River Of Stars @ 3.5\r\n19:35 Bath Kodiac Blue @ 9.5\r\n15:30 Lingfield Bakewell @ 101\r\n', '1', 1),
(3244, NULL, 'LiveScoreBet', '637926781381769632', '', '', 'False', 0.1, 0, 'N/A', 'Single', 'dfd', 'admin', '2022-07-06 05:22:22', '15:00 Lingfield Saaheq @ 26\r\n', '1', 1),
(3245, NULL, 'LiveScoreBet', '637926782287674173', '', '', 'False', 0.1, 0, 'N/A', 'Double', 'dfd', 'admin', '2022-07-06 05:23:48', '15:00 Lingfield Saaheq @ 26\r\n15:10 Yarmouth Khamsin Lady @ 12\r\n', '1', 1),
(3246, NULL, 'LiveScoreBet', '637926783982173027', '', '', 'True', 0.2, 0, 'N/A', 'Double', 'dfd', 'admin', '2022-07-06 05:26:39', '15:40 Yarmouth Don Bekar @ 15\r\n15:50 Catterick Sociologist @ 17\r\n', '1', 1),
(3247, NULL, '888sport', '10073352571', '', '', 'True', 0.2, 0, 'N/A', 'Doubles', 'dfd', 'admin', '2022-07-12 10:51:42', '16:20 Dundalk Capla Knight @ 12\r\n13:40 Beverley Highlight Reel @ 10\r\n', '1', 1),
(3248, NULL, 'Bet365', 'FS8264594741E', '', '21.00', 'True', 0.2, 0, 'N/A', 'DOUBLES', 'sorenoconnor145@gmail.com', 'admin', '2022-07-20 07:43:47', '5.30 Naas (Race 1) Paulliac  @ 3.00\r\n6.25 Leicester (Race 1) Bold And Loyal  @ 7.00\r\n', 'Bet365 Test', 1),
(3249, NULL, 'Bet365', 'LS8239664871E', '', '203.00', 'True', 0.2, 0, 'N/A', 'DOUBLES', 'sorenoconnor145@gmail.com', 'admin', '2022-07-20 07:47:02', '7.00 Naas (Race 4) Treasure Trove  @ 7.00\r\n3.20 Lingfield (Race 5) Firenze Rosa  @ 29.00\r\n', 'Bet365 Test', 1),
(3250, NULL, 'Bet365', 'PS8868569481E', '', '151956.00', 'True', 3, 0, 'N/A', 'L15', 'sorenoconnor145@gmail.com', 'admin', '2022-07-20 07:50:38', '3.05 Catterick (Race 4) One More Dream  @ 12.00\r\n8.00 Naas (Race 6) Miss Myers  @ 67.00\r\n7.45 Limerick (Race 6) Icee M B A  @ 21.00\r\n2.45 Lingfield (Race 4) Tango Tonight  @ 9.00\r\n', 'Bet365 Test', 1),
(3251, NULL, 'Betway', 'P5B6-PAAW-56UH-MD9Q', '2', '218.50', 'True', 0.2, 0, 'N/A', 'DOUBLE', 'sorenoconnor145@gmail.com', 'admin', '2022-07-20 08:01:55', '14:20 Southwell Hammy End @ 9.50\r\n20:40 Sandown Ray\'s The One @ 23.00\r\n', 'Bet365 Test', 1),
(3252, NULL, 'LiveScoreBet', '637941455691093401', '', '', 'True', 0.2, 0, 'N/A', 'Double', 'livescore', 'admin', '2022-07-23 04:59:27', '15:15 York Dark Moon Rising @ 21\r\n18:30 Salisbury Thank The Lord @ 26\r\n', 'livescore', 1),
(3253, NULL, 'Betstars', '1223306330000910002', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-18 15:33:45', '17:55 Fontwell Lusaka @ 2.8\r\n20:05 Killarney Cape Gentleman @ 1.91\r\n', 'Bet365 Test', 1),
(3254, NULL, 'Betstars', '1223306420001810002', '', '', 'True', 3, 0, 'N/A', 'Lucky15 EW', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-18 15:42:57', '20:05 Killarney Cape Gentleman @ 1.91\r\n19:55 Fontwell Millies Mite @ 29\r\n17:55 Fontwell Lusaka @ 2.8\r\n16:45 York Benacre @ 9.5\r\n', 'Bet365 Test', 1),
(3255, NULL, 'Betstars', '223306550002110001', '', '', 'False', 0.1, 0, 'LOST', 'Doubles EW', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-18 15:55:43', '16:45 York Manifested @ 8\r\n17:20 York Espressoo @ 23\r\n', 'Bet365 Test', 1),
(3256, NULL, 'Betstars', '223317120001110001', '', '', 'True', 0.2, 0, 'N/A', 'Doubles EW', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-19 09:32:46', '13:30 Carlisle Dazy Mazy @ 6\r\n17:45 Killarney Walking On Glass @ 9\r\n', 'Bet365 Test', 1),
(3257, NULL, 'BFSB', 'O/14342105/0000002', '', '', 'True', 0.6, 0, 'N/A', 'DOUBLE-1', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-27 03:51:08', '13:55 Curragh Shelton @ 4\r\n13:30 Beverley Brian The Snail @ 34\r\n', 'Bet365 Test', 1),
(3258, NULL, 'Virgin', '637974371498030384', '', '', 'True', 0.4, 0, 'N/A', 'Double', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-30 07:19:08', '15:30 Chepstow Painless Potter @ 7.5\r\n16:00 Chepstow Letter Of The Law @ 12\r\n', 'Bet365 Test', 1),
(3259, NULL, 'Virgin', '637974373494519358', '', '', 'False', 0.1, 0, 'N/A', 'Double', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-30 07:22:29', '19:40 Newton Abbot Karannelle @ 3.5\r\n13:20 Chepstow Manitou @ 1.5\r\n', 'Bet365 Test', 1),
(3260, NULL, 'Virgin', '637974376547973090', '', '', 'True', 3, 0, 'N/A', 'Lucky15', 'nickmartin1985+10@gmail.com', 'admin', '2022-08-30 07:27:34', '15:30 Chepstow Painless Potter @ 7.5\r\n17:15 Carlisle Latin Five @ 13\r\n16:00 Chepstow Letter Of The Law @ 12\r\n17:50 Carlisle Burtonwood @ 21\r\n', 'Bet365 Test', 1),
(3261, NULL, 'Bet Victor', '1YR7UKPHGJ', '', '', 'True', 1, 0, 'LOST', 'Double', 'dd', 'admin', '2022-10-04 17:55:19', '19:30 Southwell The Tron @ 9\r\n18:30 Southwell Legend Of Leros @ 41\r\n', 'dd', 1),
(3262, NULL, 'Bwin', '1YR7URYLWM', '2', '', 'True', 1, 0, 'LOST', 'SINGLE', 'dd', 'admin', '2022-10-04 18:00:06', '18:30 Southwell Legend Of Leros @ 41\r\n', 'dd', 1),
(3263, NULL, 'Bwin', '1YR7W3HUEC', '2', '', 'True', 0.5, 0, 'LOST', 'Treble', 'dd', 'admin', '2022-10-04 18:11:38', '20:30 Southwell Due A Rum @ 26\r\n18:30 Southwell Legend Of Leros @ 41\r\n19:30 Southwell The Tron @ 9\r\n', 'dd', 1),
(3264, NULL, 'Bwin', '1YR7W8TSZT', '14', '', 'True', 1.4000000000000001, 0.3, 'WON', 'Patent', 'dd', 'admin', '2022-10-04 18:16:55', '20:00 Southwell Tequilamockingbird @ 3.75\r\n19:30 Southwell The Tron @ 9\r\n20:30 Southwell Reset Button @ 19\r\n', 'dd', 1),
(3265, NULL, 'Bwin', '1YR7WH8WW3', '1', '', 'False', 0.5, 0, 'LOST', 'Double', 'dd', 'admin', '2022-10-04 18:25:47', '19:30 Southwell The Tron @ 9\r\n20:30 Southwell Officer On Parade @ 15\r\n', 'dd', 1),
(3266, NULL, 'LiveScoreBet', '638007536078196099', '', '', 'True', 22, 0, 'LOST', 'Yankee', 'dd', 'admin', '2022-10-07 16:33:30', '16:45 Newmarket Mubhijah @ 3.25\r\n20:15 Newcastle High Security @ 12\r\n18:45 Newcastle Moon Watch @ 9\r\n19:15 Newcastle Top Attraction @ 13\r\n', 'dd', 1),
(3267, NULL, 'LiveScoreBet', '638007939788392887', '', '', 'True', 22, 0, 'N/A', 'Yankee', 'dd', 'admin', '2022-10-08 03:46:18', '13:50 Newmarket Flying Honours @ 1.8\r\n18:00 Chelmsford City Wadacre Grace @ 9.5\r\n14:45 Fairyhouse Aarons Day @ 13\r\n14:00 Curragh Be Happy @ 2.875\r\n', 'dd', 1),
(3268, NULL, 'Bwin', '1YRL2J62FH', '2', '', 'True', 0.2, 0, 'N/A', 'Double', 'dd', 'admin', '2022-10-13 10:26:06', '15:20 Carlisle Old Jewry @ 15\r\n15:45 Curragh Persian Queen @ 13\r\n', 'dd', 1),
(3269, NULL, '888casino', '10085861409', '', '', 'True', 1, 0, 'N/A', 'Doubles', 'dfff', 'admin', '2022-10-24 03:59:58', '16:25 Ayr Diablo Loch @ 15\r\n16:05 Leicester Gordonstoun @ 2.5\r\n', 'dfff', 1),
(3270, NULL, 'Sporting Index', '8262464', '2', '', 'True', 0.6, 0, 'N/A', 'SINGLE', 'dfff', 'admin', '2022-10-26 14:38:20', '17:55 Kempton Glam Puss @ 7.5\r\n', 'dfff', 1),
(3271, NULL, 'Sporting Index', '8262480', '2', '', 'True', 0.6, 0, 'N/A', 'SINGLE', 'dfff', 'admin', '2022-10-26 14:40:46', '16:50 Kempton Seneca Chief @ 23\r\n', 'dfff', 1),
(3272, NULL, 'Sporting Index', '8262487', '1', '', 'False', 0.2, 0, 'N/A', 'DOUBLE', 'dfff', 'admin', '2022-10-26 14:42:34', '19:00 Kempton La Rav @ 9.5\r\n15:20 Nottingham So Smart @ 1.72727272727273\r\n', 'dfff', 1),
(3273, NULL, 'Sporting Index', '8262497', '2', '', 'True', 0.4, 0, 'N/A', 'DOUBLE', 'dfff', 'admin', '2022-10-26 14:44:02', '16:50 Kempton Seneca Chief @ 23\r\n16:00 Curragh Darraby @ 29\r\n', 'dfff', 1),
(3274, NULL, 'Sporting Index', '8262502', '22', '', 'True', 2.2, 0, 'N/A', 'YANKEE', 'dfff', 'admin', '2022-10-26 14:45:39', '14:50 Curragh River Rain @ 1.83333333333333\r\n19:00 Kempton Greg The Great @ 23\r\n16:30 Nottingham Oblong Song @ 6\r\n16:35 Curragh Bellick @ 29\r\n', 'dfff', 1),
(3275, NULL, 'Unibet', '5744825181157145855997268393984', '', '', 'True', 1, 0, 'N/A', 'Doubles EW', 'dfff', 'admin', '2022-11-14 11:39:58', '13:10 Plumpton Grozni @ 1.8\r\n18:30 Wolverhampton Pollinate @ 19\r\n', 'dfff', 1),
(3276, NULL, 'Betstars', '224601980000910002', '', '', 'True', 1, 0, 'N/A', 'Doubles EW', 'dfff', 'admin', '2022-11-16 13:58:47', '16:20 Kempton Ticket To Alaska @ 41\r\n17:20 Kempton Marmara Star @ 15\r\n', 'dfff', 1),
(3277, NULL, '888casino', '10090030827', '', '', 'True', 1, 0, 'N/A', 'Doubles', 'dfff', 'admin', '2022-11-23 14:12:34', '17:00 Dundalk Victory Star @ 15\r\n15:30 Dundalk Together Aclaim @ 17\r\n', 'dfff', 1),
(3278, NULL, 'LiveScoreBet', '638053917329378564', '', '', 'True', 1, 0, 'N/A', 'Double', 'dfff', 'admin', '2022-11-30 07:55:31', '14:37 Haydock Lookaway @ 3.75\r\n13:05 Haydock Theme Tune @ 3.75\r\n', 'dfff', 1),
(3279, NULL, 'BetUK', '5338560935', '', '', 'True', 1, 0, 'N/A', 'DOUBLE', 'newmananna651@yahoo.com', 'admin', '2022-12-27 08:32:28', '15:40 Kempton Kandoo Kid @ 7\r\\\n13:45 Leopardstown Ashroe Diamond @ 13\r\\\n', '', 1),
(3280, NULL, 'BetUK', '5338570094', '', '', 'True', 22, 0, 'N/A', 'YANKEE', 'newmananna651@yahoo.com', 'admin', '2022-12-27 08:35:21', '11:50 Wetherby Secret Secret @ 0\r\\\n15:35 Leopardstown Will Do @ 4\r\\\n14:15 Wetherby Start In Front @ 10\r\\\n15:40 Kempton Paros @ 29\r\\\n', '', 1),
(3281, NULL, 'PariMatch', '161784159400', '', '', 'True', 1, 0, 'N/A', 'Double', 'newmananna651@yahoo.com', 'admin', '2023-01-10 14:11:56', '19:00 Southwell Tothenines @ 11\r\n17:30 Southwell Six O Hearts @ 34\r\n', '', 1),
(3282, NULL, '32Red', '5387154078', '', '', 'True', 3, 0.2, 'WON', 'LUCKY_15', 'newmananna651@yahoo.com', 'admin', '2023-01-12 14:56:43', '15:55 Catterick Prairie Wolf @ 5\r\\\n19:30 Chelmsford City Lilikoi @ 19\r\\\n15:25 Catterick Bollin Neil @ 6\r\\\n15:35 Newcastle Wee Fat Mac @ 5\r\\\n', '', 1),
(3283, NULL, '32Red', '5387174890', '', '', 'True', 4.4, 0, 'LOST', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-12 15:10:22', '18:00 Chelmsford City Bridge Water @ 21\r\\\n15:25 Catterick Bollin Neil @ 6\r\\\n17:30 Chelmsford City Company Minx @ 11\r\\\n', '', 1),
(3284, NULL, 'Grosvenor', '5389363645', '', '', 'True', 0.24, 0, 'N/A', 'DOUBLE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 08:29:04', '13:20 Sedgefield Dr Shirocco @ 13\r\\\n19:15 Newcastle Nellie French @ 11\r\\\n', '', 1),
(3285, NULL, 'Grosvenor', '5389329367', '', '', 'True', 0.96, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 08:32:22', '14:20 Sedgefield Relkadam @ 23\r\\\n15:40 Lingfield Miss Elsa @ 34\r\\\n13:20 Sedgefield Hello Judge @ 8\r\\\n', '', 1),
(3286, NULL, 'Grosvenor', '5389340378', '', '', 'True', 0.96, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 08:44:39', '18:45 Newcastle Embla @ 7\r\\\n16:00 Huntingdon Corporal Jackjones @ 9\r\\\n16:15 Newcastle Timedtoperfection @ 15\r\\\n', '', 1),
(3287, NULL, 'Grosvenor', '5389340740', '', '', 'True', 0.96, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 08:47:24', '13:30 Huntingdon Police Academy @ 9\r\\\n12:40 Lingfield Macon Belle @ 51\r\\\n16:15 Newcastle Timedtoperfection @ 15\r\\\n', '', 1),
(3288, NULL, 'Grosvenor', '5389366734', '', '', 'True', 0.96, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 08:53:27', '15:40 Lingfield Thefastnthecurious @ 19\r\\\n17:30 Dundalk Mephisto @ 21\r\\\n15:20 Sedgefield Misty Mani @ 6\r\\\n', '', 1),
(3289, NULL, 'Grosvenor', '5389366941', '', '', 'True', 0.8, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 08:54:57', '15:40 Lingfield Thefastnthecurious @ 19\r\\\n12:40 Lingfield Pyrrhos @ 34\r\\\n17:30 Dundalk Mephisto @ 21\r\\\n', '', 1),
(3290, NULL, 'Grosvenor', '5389348641', '', '', 'True', 0.96, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-01-13 09:00:18', '15:40 Lingfield Thefastnthecurious @ 19\r\\\n12:40 Lingfield San Juan @ 8\r\\\n16:00 Huntingdon Corporal Jackjones @ 9\r\\\n', '', 1),
(3291, NULL, '32Red', '5457000626', '', '', 'True', 1, 0, 'LOST', 'DOUBLE', 'newmananna651@yahoo.com', 'admin', '2023-02-02 14:39:36', '14:40 Fakenham Chic Avenue @ 15\r\\\n15:50 Fakenham The Knot Is Tied @ 51\r\\\n', '', 1),
(3292, NULL, '32Red', '5457120188', '', '', 'True', 24, 0, 'N/A', 'TRIXIE', 'newmananna651@yahoo.com', 'admin', '2023-02-02 15:41:01', '18:00 Chelmsford City Mustaffiz @ 67\r\\\n16:00 Southwell Lucky Lucky Lucky @ 8\r\\\n15:50 Fakenham Country Kitten @ 26\r\\\n', '', 1),
(3293, NULL, 'PartyCasino', '1YXX1Y6R2M', '30', '', 'True', 15, 0, 'LOST', 'Lucky 15', 'newmananna651@yahoo.com', 'admin', '2023-02-09 14:22:41', '15:35 Huntingdon San Pedro De Senam @ 10\r\n18:10 Newcastle Tintin Potter @ 34\r\n16:25 Thurles Cast Iron @ 17\r\n16:10 Huntingdon Hunters Call @ 29\r\n', '', 1),
(3294, NULL, 'Grosvenor', '5519896290', '', '', 'True', 1, 0, 'N/A', 'DOUBLE', 'newmananna651@yahoo.com', 'admin', '2023-02-20 15:05:30', '16:45 Lingfield Delgany Monarch @ 6.5\r\\\n19:00 Newcastle Odd Socks Havana @ 3.75\r\\\n', '', 1),
(3295, NULL, 'Leovegas', '5519996171', '', '', 'True', 1, 0, 'N/A', 'DOUBLE', 'newmananna651@yahoo.com', 'admin', '2023-02-20 15:48:32', '15:50 Carlisle Marada @ 26\r\\\n18:30 Newcastle United Force @ 5\r\\\n', '', 1),
(3296, NULL, 'Boylesports', 'amalgoesbetting-03-02-14-21-1-1', '', '', 'True', 0.2, 0, 'LOST', 'Double', 'dfff', 'admin', '2023-03-02 14:21:56', '15:15 Clonmel Tipp For Mac @ 3\r\n16:55 Clonmel Leading The Way @ 19\r\n', 'dfff', 1),
(3297, NULL, 'Boylesports', 'amalgoesbetting-03-02-14-23-2-2', '', '', 'True', 0.2, 0, 'LOST', 'Double', 'dfff', 'admin', '2023-03-02 14:23:51', '17:25 Clonmel Silver Planeur @ 23\r\n16:10 Ludlow Welsh Charger @ 1.66666666666667\r\n', 'dfff', 1),
(3298, NULL, 'Boylesports', 'amalgoesbetting-03-02-14-29-3-3', '', '', 'True', 0.2, 0, 'LOST', 'Double', 'dfff', 'admin', '2023-03-02 14:29:10', '15:50 Clonmel Skinnider @ 23\r\n15:15 Clonmel Tipp For Mac @ 3\r\n', 'dfff', 1),
(3299, NULL, 'Boylesports', 'amalgoesbetting-03-02-14-30-4-4', '', '', 'True', 0.2, 0, 'LOST', 'Double', 'dfff', 'admin', '2023-03-02 14:30:58', '17:25 Clonmel Silver Planeur @ 23\r\n14:40 Clonmel Fox Le Bel @ 7.5\r\n', 'dfff', 1),
(3300, NULL, 'Skybet', '5706290264', '2', '', 'True', 1, 0, 'N/A', 'Double(s)', 'dfff', 'admin', '2023-03-04 04:32:47', '18:30 Wolverhampton Sparks Fly @ 9.5\r\n14:05 Doncaster Glory And Honour @ 9\r\n', 'dfff', 1),
(3301, NULL, 'Boylesports', 'jobsonlewis6-03-13-14-23-4-4', '', '', 'True', 1, 0, 'N/A', 'Double', '123', 'admin', '2023-03-13 14:23:23', '19:30 Wolverhampton Heath Rise @ 6.5\r\n14:30 Thurles The Gunner Yeats @ 1.72727272727273\r\n', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_schedule`
--

CREATE TABLE `tbl_group_schedule` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_group_schedule`
--

INSERT INTO `tbl_group_schedule` (`id`, `name`) VALUES
(1, 'template1'),
(8, 'template3'),
(10, 'template2');

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

--
-- Dumping data for table `tbl_horsedata`
--

INSERT INTO `tbl_horsedata` (`id`, `event`, `time`, `horse`, `create_date`) VALUES
(6605, 'Kempton', '19:30', 'Choisya', '2023-03-01 08:57:41'),
(6606, 'Kempton', '19:30', 'Just Bring It', '2023-03-01 08:57:41'),
(6607, 'Kempton', '19:30', 'Constitution', '2023-03-01 08:57:41'),
(6608, 'Kempton', '19:30', 'Tomahawk King', '2023-03-01 08:57:41'),
(6609, 'Kempton', '19:30', 'Ray Of Colours', '2023-03-01 08:57:41'),
(6610, 'Kempton', '19:30', 'Unnamed Favourite', '2023-03-01 08:57:41'),
(6611, 'Kempton', '19:30', 'Unnamed 2nd Favourite', '2023-03-01 08:57:41'),
(6612, 'Kempton', '18:00', 'Stately Home', '2023-03-01 08:57:42'),
(6613, 'Kempton', '18:00', 'Sense Of Worth', '2023-03-01 08:57:42'),
(6614, 'Kempton', '18:00', 'Tiger Beetle', '2023-03-01 08:57:42'),
(6615, 'Kempton', '18:00', 'Golden Sands', '2023-03-01 08:57:42'),
(6616, 'Kempton', '18:00', 'Taravara', '2023-03-01 08:57:42'),
(6617, 'Kempton', '18:00', 'Alibaba', '2023-03-01 08:57:42'),
(6618, 'Kempton', '18:00', 'Sisters In The Sky', '2023-03-01 08:57:42'),
(6619, 'Kempton', '18:00', 'Tickets', '2023-03-01 08:57:42'),
(6620, 'Kempton', '18:00', 'Roscioli', '2023-03-01 08:57:42'),
(6621, 'Kempton', '18:00', 'Wake Up Harry', '2023-03-01 08:57:42'),
(6622, 'Kempton', '18:00', 'Fat Gladiator', '2023-03-01 08:57:42'),
(6623, 'Kempton', '18:00', 'New Shepard', '2023-03-01 08:57:42'),
(6624, 'Kempton', '18:00', 'Locked N Loaded', '2023-03-01 08:57:42'),
(6625, 'Kempton', '18:00', 'Unnamed Favourite', '2023-03-01 08:57:42'),
(6626, 'Kempton', '18:00', 'Unnamed 2nd Favourite', '2023-03-01 08:57:42'),
(6627, 'Kempton', '18:30', 'Beauen Arrows', '2023-03-01 08:57:42'),
(6628, 'Kempton', '18:30', 'Sapperdean', '2023-03-01 08:57:42'),
(6629, 'Kempton', '18:30', 'Analytics', '2023-03-01 08:57:42'),
(6630, 'Kempton', '18:30', 'Ikkari', '2023-03-01 08:57:42'),
(6631, 'Kempton', '18:30', 'Dawn Mission', '2023-03-01 08:57:42'),
(6632, 'Kempton', '18:30', 'One Night Thunder', '2023-03-01 08:57:42'),
(6633, 'Kempton', '18:30', 'Portoro', '2023-03-01 08:57:42'),
(6634, 'Kempton', '18:30', 'Cloudy Breeze', '2023-03-01 08:57:42'),
(6635, 'Kempton', '18:30', 'My Song For You', '2023-03-01 08:57:42'),
(6636, 'Kempton', '18:30', 'Unnamed Favourite', '2023-03-01 08:57:42'),
(6637, 'Kempton', '18:30', 'Unnamed 2nd Favourite', '2023-03-01 08:57:42'),
(6638, 'Kempton', '17:30', 'Endofastorm', '2023-03-01 08:57:43'),
(6639, 'Kempton', '17:30', 'Ower Starlight', '2023-03-01 08:57:43'),
(6640, 'Kempton', '17:30', 'Reel Power', '2023-03-01 08:57:43'),
(6641, 'Kempton', '17:30', 'Dew You Believe', '2023-03-01 08:57:43'),
(6642, 'Kempton', '17:30', 'Pittsburg', '2023-03-01 08:57:43'),
(6643, 'Kempton', '17:30', 'Seattle King', '2023-03-01 08:57:43'),
(6644, 'Kempton', '17:30', 'Think Trigger', '2023-03-01 08:57:43'),
(6645, 'Kempton', '17:30', 'Hannahs Return', '2023-03-01 08:57:43'),
(6646, 'Kempton', '17:30', 'Eastern Star', '2023-03-01 08:57:43'),
(6647, 'Kempton', '17:30', 'Fast Flo', '2023-03-01 08:57:43'),
(6648, 'Kempton', '17:30', 'Purple Poppy', '2023-03-01 08:57:43'),
(6649, 'Kempton', '17:30', 'Unnamed Favourite', '2023-03-01 08:57:43'),
(6650, 'Kempton', '17:30', 'Unnamed 2nd Favourite', '2023-03-01 08:57:43'),
(6651, 'Musselburgh', '17:00', 'Ballymoy', '2023-03-01 08:57:43'),
(6652, 'Musselburgh', '17:00', 'Salvatore', '2023-03-01 08:57:43'),
(6653, 'Musselburgh', '17:00', 'Steely Addition', '2023-03-01 08:57:43'),
(6654, 'Musselburgh', '17:00', 'Cooking Fat', '2023-03-01 08:57:43'),
(6655, 'Musselburgh', '17:00', 'Shaughnessy', '2023-03-01 08:57:43'),
(6656, 'Musselburgh', '17:00', 'Unnamed Favourite', '2023-03-01 08:57:43'),
(6657, 'Musselburgh', '17:00', 'Unnamed 2nd Favourite', '2023-03-01 08:57:43'),
(6658, 'Wincanton', '14:10', 'Outlaw Peter', '2023-03-01 08:57:44'),
(6659, 'Wincanton', '14:10', 'Hardy Fella', '2023-03-01 08:57:44'),
(6660, 'Wincanton', '14:10', 'Jills Memory', '2023-03-01 08:57:44'),
(6661, 'Wincanton', '14:10', 'Wideeyedandlegless', '2023-03-01 08:57:44'),
(6662, 'Wincanton', '14:10', 'Key Instinct', '2023-03-01 08:57:44'),
(6663, 'Wincanton', '14:10', 'Somespring Special', '2023-03-01 08:57:44'),
(6664, 'Wincanton', '14:10', 'Unnamed Favourite', '2023-03-01 08:57:44'),
(6665, 'Wincanton', '14:10', 'Unnamed 2nd Favourite', '2023-03-01 08:57:44'),
(6666, 'Kempton', '16:55', 'Nat Love', '2023-03-01 08:57:44'),
(6667, 'Kempton', '16:55', 'Assembled', '2023-03-01 08:57:44'),
(6668, 'Kempton', '16:55', 'Daphne May', '2023-03-01 08:57:44'),
(6669, 'Kempton', '16:55', 'Won Love', '2023-03-01 08:57:44'),
(6670, 'Kempton', '16:55', 'Royal Debut', '2023-03-01 08:57:44'),
(6671, 'Kempton', '16:55', 'Island Of Skye', '2023-03-01 08:57:44'),
(6672, 'Kempton', '16:55', 'No Diggity', '2023-03-01 08:57:44'),
(6673, 'Kempton', '16:55', 'Fact Or Fable', '2023-03-01 08:57:44'),
(6674, 'Kempton', '16:55', 'Sapphires Moon', '2023-03-01 08:57:44'),
(6675, 'Kempton', '16:55', 'Unnamed Favourite', '2023-03-01 08:57:44'),
(6676, 'Kempton', '16:55', 'Unnamed 2nd Favourite', '2023-03-01 08:57:44'),
(6677, 'Wincanton', '15:45', 'Cap Du Mathan', '2023-03-01 08:57:45'),
(6678, 'Wincanton', '15:45', 'The Widdow Maker', '2023-03-01 08:57:45'),
(6679, 'Wincanton', '15:45', 'Shang Tang', '2023-03-01 08:57:45'),
(6680, 'Wincanton', '15:45', 'Any News', '2023-03-01 08:57:45'),
(6681, 'Wincanton', '15:45', 'Flagrant Delitiep', '2023-03-01 08:57:45'),
(6682, 'Wincanton', '15:45', 'Midnight Midge', '2023-03-01 08:57:45'),
(6683, 'Wincanton', '15:45', 'Harlem Soul', '2023-03-01 08:57:45'),
(6684, 'Wincanton', '15:45', 'Unnamed Favourite', '2023-03-01 08:57:45'),
(6685, 'Wincanton', '15:45', 'Unnamed 2nd Favourite', '2023-03-01 08:57:45'),
(6686, 'Wincanton', '15:10', 'Dindin', '2023-03-01 08:57:45'),
(6687, 'Wincanton', '15:10', 'Getabuck', '2023-03-01 08:57:45'),
(6688, 'Wincanton', '15:10', 'Le Coeur Net', '2023-03-01 08:57:45'),
(6689, 'Wincanton', '15:10', 'Call Me Freddie', '2023-03-01 08:57:45'),
(6690, 'Wincanton', '15:10', 'School For Scandal', '2023-03-01 08:57:45'),
(6691, 'Wincanton', '15:10', 'Broadoak', '2023-03-01 08:57:45'),
(6692, 'Wincanton', '15:10', 'Unnamed Favourite', '2023-03-01 08:57:45'),
(6693, 'Wincanton', '15:10', 'Unnamed 2nd Favourite', '2023-03-01 08:57:45'),
(6694, 'Wincanton', '16:45', 'Ivetwiggedit', '2023-03-01 08:57:45'),
(6695, 'Wincanton', '16:45', 'Konigin Isabella', '2023-03-01 08:57:45'),
(6696, 'Wincanton', '16:45', 'La Breille', '2023-03-01 08:57:45'),
(6697, 'Wincanton', '16:45', 'Sawpit Sienna', '2023-03-01 08:57:45'),
(6698, 'Wincanton', '16:45', 'Happy Returns', '2023-03-01 08:57:45'),
(6699, 'Wincanton', '16:45', 'Cirrus', '2023-03-01 08:57:45'),
(6700, 'Wincanton', '16:45', 'Time To Burn', '2023-03-01 08:57:45'),
(6701, 'Wincanton', '16:45', 'Tiger Print', '2023-03-01 08:57:45'),
(6702, 'Wincanton', '16:45', 'Unnamed Favourite', '2023-03-01 08:57:45'),
(6703, 'Wincanton', '16:45', 'Unnamed 2nd Favourite', '2023-03-01 08:57:45'),
(6704, 'Wincanton', '14:40', 'Toothless', '2023-03-01 08:57:46'),
(6705, 'Wincanton', '14:40', 'Charlie My Boy', '2023-03-01 08:57:46'),
(6706, 'Wincanton', '14:40', 'Sisterandbrother', '2023-03-01 08:57:46'),
(6707, 'Wincanton', '14:40', 'Atlantic Breeze', '2023-03-01 08:57:46'),
(6708, 'Wincanton', '14:40', 'Loudspeaker', '2023-03-01 08:57:46'),
(6709, 'Wincanton', '14:40', 'Marley Head', '2023-03-01 08:57:46'),
(6710, 'Wincanton', '14:40', 'Unnamed Favourite', '2023-03-01 08:57:46'),
(6711, 'Wincanton', '14:40', 'Unnamed 2nd Favourite', '2023-03-01 08:57:46'),
(6712, 'Musselburgh', '14:50', 'Victory Echo', '2023-03-01 08:57:46'),
(6713, 'Musselburgh', '14:50', 'Storm Tiger', '2023-03-01 08:57:46'),
(6714, 'Musselburgh', '14:50', 'Quiet Flow', '2023-03-01 08:57:46'),
(6715, 'Musselburgh', '14:50', 'Thunder In Milan', '2023-03-01 08:57:46'),
(6716, 'Musselburgh', '14:50', 'Detective', '2023-03-01 08:57:46'),
(6717, 'Musselburgh', '14:50', 'Divas Doyen', '2023-03-01 08:57:46'),
(6718, 'Musselburgh', '14:50', 'Unnamed Favourite', '2023-03-01 08:57:46'),
(6719, 'Musselburgh', '14:50', 'Unnamed 2nd Favourite', '2023-03-01 08:57:46'),
(6720, 'Musselburgh', '13:50', 'Apologise', '2023-03-01 08:57:47'),
(6721, 'Musselburgh', '13:50', 'Elogio', '2023-03-01 08:57:47'),
(6722, 'Musselburgh', '13:50', 'Morandi Second', '2023-03-01 08:57:47'),
(6723, 'Musselburgh', '13:50', 'Ve Day', '2023-03-01 08:57:47'),
(6724, 'Musselburgh', '13:50', 'Unnamed Favourite', '2023-03-01 08:57:47'),
(6725, 'Musselburgh', '13:50', 'Unnamed 2nd Favourite', '2023-03-01 08:57:47'),
(6726, 'Kempton', '20:00', 'Infinitive', '2023-03-01 08:57:47'),
(6727, 'Kempton', '20:00', 'Alternativa', '2023-03-01 08:57:47'),
(6728, 'Kempton', '20:00', 'Bluenose Belle', '2023-03-01 08:57:47'),
(6729, 'Kempton', '20:00', 'Thibouville', '2023-03-01 08:57:47'),
(6730, 'Kempton', '20:00', 'Ready To Shine', '2023-03-01 08:57:47'),
(6731, 'Kempton', '20:00', 'Golden Dove', '2023-03-01 08:57:47'),
(6732, 'Kempton', '20:00', 'Cinco Saltos', '2023-03-01 08:57:47'),
(6733, 'Kempton', '20:00', 'Torbellino', '2023-03-01 08:57:47'),
(6734, 'Kempton', '20:00', 'Chicago Gal', '2023-03-01 08:57:47'),
(6735, 'Kempton', '20:00', 'Unnamed Favourite', '2023-03-01 08:57:47'),
(6736, 'Kempton', '20:00', 'Unnamed 2nd Favourite', '2023-03-01 08:57:47'),
(6737, 'Wincanton', '16:15', 'Astigar', '2023-03-01 08:57:47'),
(6738, 'Wincanton', '16:15', 'Hititi', '2023-03-01 08:57:47'),
(6739, 'Wincanton', '16:15', 'Mikhailovich', '2023-03-01 08:57:47'),
(6740, 'Wincanton', '16:15', 'Sandalwood', '2023-03-01 08:57:47'),
(6741, 'Wincanton', '16:15', 'Rebel Intentions', '2023-03-01 08:57:47'),
(6742, 'Wincanton', '16:15', 'Noble Savage', '2023-03-01 08:57:47'),
(6743, 'Wincanton', '16:15', 'Just Go For It', '2023-03-01 08:57:47'),
(6744, 'Wincanton', '16:15', 'Unnamed Favourite', '2023-03-01 08:57:47'),
(6745, 'Wincanton', '16:15', 'Unnamed 2nd Favourite', '2023-03-01 08:57:47'),
(6746, 'Lingfield', '14:30', 'Beautiful Sunrise', '2023-03-01 08:57:48'),
(6747, 'Lingfield', '14:30', 'Expert Agent', '2023-03-01 08:57:48'),
(6748, 'Lingfield', '14:30', 'Two Desserts', '2023-03-01 08:57:48'),
(6749, 'Lingfield', '14:30', 'Daytona Lady', '2023-03-01 08:57:48'),
(6750, 'Lingfield', '14:30', 'Girlswannahavefun', '2023-03-01 08:57:48'),
(6751, 'Lingfield', '14:30', 'Muy Muy Guapo', '2023-03-01 08:57:48'),
(6752, 'Lingfield', '14:30', 'Talamanca', '2023-03-01 08:57:48'),
(6753, 'Lingfield', '14:30', 'Rossmore Nation', '2023-03-01 08:57:48'),
(6754, 'Lingfield', '14:30', 'Unnamed Favourite', '2023-03-01 08:57:48'),
(6755, 'Lingfield', '14:30', 'Unnamed 2nd Favourite', '2023-03-01 08:57:48'),
(6756, 'Lingfield', '15:35', 'Rogue Star', '2023-03-01 08:57:48'),
(6757, 'Lingfield', '15:35', 'Kangaroo', '2023-03-01 08:57:48'),
(6758, 'Lingfield', '15:35', 'My Mate Mike', '2023-03-01 08:57:48'),
(6759, 'Lingfield', '15:35', 'Naaser', '2023-03-01 08:57:48'),
(6760, 'Lingfield', '15:35', 'Craggy Range', '2023-03-01 08:57:48'),
(6761, 'Lingfield', '15:35', 'Ghost Lights', '2023-03-01 08:57:48'),
(6762, 'Lingfield', '15:35', 'Penny Be', '2023-03-01 08:57:48'),
(6763, 'Lingfield', '15:35', 'Athenes Kiss', '2023-03-01 08:57:48'),
(6764, 'Lingfield', '15:35', 'Bala Hatun', '2023-03-01 08:57:48'),
(6765, 'Lingfield', '15:35', 'Unnamed Favourite', '2023-03-01 08:57:48'),
(6766, 'Lingfield', '15:35', 'Unnamed 2nd Favourite', '2023-03-01 08:57:48'),
(6767, 'Wincanton', '17:20', 'Diligent', '2023-03-01 08:57:49'),
(6768, 'Wincanton', '17:20', 'Envoye Special', '2023-03-01 08:57:49'),
(6769, 'Wincanton', '17:20', 'Exit Poll', '2023-03-01 08:57:49'),
(6770, 'Wincanton', '17:20', 'Rewritetherules', '2023-03-01 08:57:49'),
(6771, 'Wincanton', '17:20', 'Zamparelli', '2023-03-01 08:57:49'),
(6772, 'Wincanton', '17:20', 'Demain Des LAube', '2023-03-01 08:57:49'),
(6773, 'Wincanton', '17:20', 'Kilronan Castle', '2023-03-01 08:57:49'),
(6774, 'Wincanton', '17:20', 'Magic Saint', '2023-03-01 08:57:49'),
(6775, 'Wincanton', '17:20', 'Unnamed Favourite', '2023-03-01 08:57:49'),
(6776, 'Wincanton', '17:20', 'Unnamed 2nd Favourite', '2023-03-01 08:57:49'),
(6777, 'Kempton', '20:30', 'Bankrupt', '2023-03-01 08:57:49'),
(6778, 'Kempton', '20:30', 'De Rocker', '2023-03-01 08:57:49'),
(6779, 'Kempton', '20:30', 'Elisheva', '2023-03-01 08:57:49'),
(6780, 'Kempton', '20:30', 'Janaat', '2023-03-01 08:57:49'),
(6781, 'Kempton', '20:30', 'Jumira Bridge', '2023-03-01 08:57:49'),
(6782, 'Kempton', '20:30', 'Lothian', '2023-03-01 08:57:49'),
(6783, 'Kempton', '20:30', 'May Remain', '2023-03-01 08:57:49'),
(6784, 'Kempton', '20:30', 'Musaytir', '2023-03-01 08:57:49'),
(6785, 'Kempton', '20:30', 'Paddy K', '2023-03-01 08:57:49'),
(6786, 'Kempton', '20:30', 'Reversion', '2023-03-01 08:57:49'),
(6787, 'Kempton', '20:30', 'Tommytwohoots', '2023-03-01 08:57:49'),
(6788, 'Kempton', '20:30', 'Unnamed Favourite', '2023-03-01 08:57:49'),
(6789, 'Kempton', '20:30', 'Unnamed 2nd Favourite', '2023-03-01 08:57:49'),
(6790, 'Lingfield', '16:35', 'Sausalito', '2023-03-01 08:57:49'),
(6791, 'Lingfield', '16:35', 'Afternoon Tea', '2023-03-01 08:57:49'),
(6792, 'Lingfield', '16:35', 'Ballet Blanc', '2023-03-01 08:57:49'),
(6793, 'Lingfield', '16:35', 'Blairlogie', '2023-03-01 08:57:49'),
(6794, 'Lingfield', '16:35', 'Harbour Project', '2023-03-01 08:57:49'),
(6795, 'Lingfield', '16:35', 'Maykir', '2023-03-01 08:57:49'),
(6796, 'Lingfield', '16:35', 'Unnamed Favourite', '2023-03-01 08:57:49'),
(6797, 'Lingfield', '16:35', 'Unnamed 2nd Favourite', '2023-03-01 08:57:49'),
(6798, 'Musselburgh', '16:25', 'Stormey', '2023-03-01 08:57:50'),
(6799, 'Musselburgh', '16:25', 'Concetto', '2023-03-01 08:57:50'),
(6800, 'Musselburgh', '16:25', 'Domandlouis', '2023-03-01 08:57:50'),
(6801, 'Musselburgh', '16:25', 'Croagh Patrick', '2023-03-01 08:57:50'),
(6802, 'Musselburgh', '16:25', 'Ferocious', '2023-03-01 08:57:50'),
(6803, 'Musselburgh', '16:25', 'Lastin Memories', '2023-03-01 08:57:50'),
(6804, 'Musselburgh', '16:25', 'Unnamed Favourite', '2023-03-01 08:57:50'),
(6805, 'Musselburgh', '16:25', 'Unnamed 2nd Favourite', '2023-03-01 08:57:50'),
(6806, 'Lingfield', '14:00', 'Portelet Bay', '2023-03-01 08:57:50'),
(6807, 'Lingfield', '14:00', 'Dreams Delivered', '2023-03-01 08:57:50'),
(6808, 'Lingfield', '14:00', 'Hes Our Star', '2023-03-01 08:57:50'),
(6809, 'Lingfield', '14:00', 'Memberry', '2023-03-01 08:57:50'),
(6810, 'Lingfield', '14:00', 'Kenstone', '2023-03-01 08:57:50'),
(6811, 'Lingfield', '14:00', 'Suzis Connoisseur', '2023-03-01 08:57:50'),
(6812, 'Lingfield', '14:00', 'Macon Belle', '2023-03-01 08:57:50'),
(6813, 'Lingfield', '14:00', 'Heers Sadie', '2023-03-01 08:57:50'),
(6814, 'Lingfield', '14:00', 'Unnamed Favourite', '2023-03-01 08:57:50'),
(6815, 'Lingfield', '14:00', 'Unnamed 2nd Favourite', '2023-03-01 08:57:50'),
(6816, 'Lingfield', '15:00', 'Beauzon', '2023-03-01 08:57:51'),
(6817, 'Lingfield', '15:00', 'Pablo Del Pueblo', '2023-03-01 08:57:51'),
(6818, 'Lingfield', '15:00', 'Lilkian', '2023-03-01 08:57:51'),
(6819, 'Lingfield', '15:00', 'Neptune Legend', '2023-03-01 08:57:51'),
(6820, 'Lingfield', '15:00', 'Nordic Glory', '2023-03-01 08:57:51'),
(6821, 'Lingfield', '15:00', 'Expert Opinion', '2023-03-01 08:57:51'),
(6822, 'Lingfield', '15:00', 'Big Bard', '2023-03-01 08:57:51'),
(6823, 'Lingfield', '15:00', 'Unnamed Favourite', '2023-03-01 08:57:51'),
(6824, 'Lingfield', '15:00', 'Unnamed 2nd Favourite', '2023-03-01 08:57:51'),
(6825, 'Musselburgh', '15:25', 'Sweet Magic', '2023-03-01 08:57:51'),
(6826, 'Musselburgh', '15:25', 'Lone Star', '2023-03-01 08:57:51'),
(6827, 'Musselburgh', '15:25', 'Gamesters Girl', '2023-03-01 08:57:51'),
(6828, 'Musselburgh', '15:25', 'Maura Jeanne', '2023-03-01 08:57:51'),
(6829, 'Musselburgh', '15:25', 'Spot On Soph', '2023-03-01 08:57:51'),
(6830, 'Musselburgh', '15:25', 'Misscarlett', '2023-03-01 08:57:51'),
(6831, 'Musselburgh', '15:25', 'Unnamed Favourite', '2023-03-01 08:57:51'),
(6832, 'Musselburgh', '15:25', 'Unnamed 2nd Favourite', '2023-03-01 08:57:51'),
(6833, 'Lingfield', '17:10', 'Global Wonder', '2023-03-01 08:57:52'),
(6834, 'Lingfield', '17:10', 'Easy Equation', '2023-03-01 08:57:52'),
(6835, 'Lingfield', '17:10', 'Huscari', '2023-03-01 08:57:52'),
(6836, 'Lingfield', '17:10', 'Gustav Holst', '2023-03-01 08:57:52'),
(6837, 'Lingfield', '17:10', 'Abstract', '2023-03-01 08:57:52'),
(6838, 'Lingfield', '17:10', 'Big Jimbo', '2023-03-01 08:57:52'),
(6839, 'Lingfield', '17:10', 'Henry The Fifth', '2023-03-01 08:57:52'),
(6840, 'Lingfield', '17:10', 'All About Alice', '2023-03-01 08:57:52'),
(6841, 'Lingfield', '17:10', 'Unnamed Favourite', '2023-03-01 08:57:52'),
(6842, 'Lingfield', '17:10', 'Unnamed 2nd Favourite', '2023-03-01 08:57:52'),
(6843, 'Lingfield', '16:05', 'Chloellie', '2023-03-01 08:57:52'),
(6844, 'Lingfield', '16:05', 'Closeness', '2023-03-01 08:57:52'),
(6845, 'Lingfield', '16:05', 'Hanoverian King', '2023-03-01 08:57:52'),
(6846, 'Lingfield', '16:05', 'Huntsmans Moon', '2023-03-01 08:57:52'),
(6847, 'Lingfield', '16:05', 'Lord Clenaghcastle', '2023-03-01 08:57:52'),
(6848, 'Lingfield', '16:05', 'Naadyaa', '2023-03-01 08:57:52'),
(6849, 'Lingfield', '16:05', 'Permata', '2023-03-01 08:57:52'),
(6850, 'Lingfield', '16:05', 'Rivas Rob Roy', '2023-03-01 08:57:52'),
(6851, 'Lingfield', '16:05', 'Shabs', '2023-03-01 08:57:52'),
(6852, 'Lingfield', '16:05', 'Angel Time', '2023-03-01 08:57:52'),
(6853, 'Lingfield', '16:05', 'Kentucky Bourbon', '2023-03-01 08:57:52'),
(6854, 'Lingfield', '16:05', 'Ricardo Ofworthing', '2023-03-01 08:57:52'),
(6855, 'Lingfield', '16:05', 'Unnamed Favourite', '2023-03-01 08:57:52'),
(6856, 'Lingfield', '16:05', 'Unnamed 2nd Favourite', '2023-03-01 08:57:52'),
(6857, 'Musselburgh', '14:20', 'Restandbethankful', '2023-03-01 08:57:52'),
(6858, 'Musselburgh', '14:20', 'Diamond State', '2023-03-01 08:57:52'),
(6859, 'Musselburgh', '14:20', 'Hold Onto The Line', '2023-03-01 08:57:52'),
(6860, 'Musselburgh', '14:20', 'Cartonne', '2023-03-01 08:57:52'),
(6861, 'Musselburgh', '14:20', 'Unnamed Favourite', '2023-03-01 08:57:52'),
(6862, 'Musselburgh', '14:20', 'Unnamed 2nd Favourite', '2023-03-01 08:57:52'),
(6863, 'Musselburgh', '15:55', 'Hidalgo De Lisle', '2023-03-01 08:57:53'),
(6864, 'Musselburgh', '15:55', 'Excelcius', '2023-03-01 08:57:53'),
(6865, 'Musselburgh', '15:55', 'Garde Des Champs', '2023-03-01 08:57:53'),
(6866, 'Musselburgh', '15:55', 'Cant Stop Now', '2023-03-01 08:57:53'),
(6867, 'Musselburgh', '15:55', 'Cuban Cigar', '2023-03-01 08:57:53'),
(6868, 'Musselburgh', '15:55', 'Flylikeaneagle', '2023-03-01 08:57:53'),
(6869, 'Musselburgh', '15:55', 'Unnamed Favourite', '2023-03-01 08:57:53'),
(6870, 'Musselburgh', '15:55', 'Unnamed 2nd Favourite', '2023-03-01 08:57:53'),
(6871, 'Kempton', '19:00', 'Windseeker', '2023-03-01 08:57:53'),
(6872, 'Kempton', '19:00', 'Billy Mill', '2023-03-01 08:57:53'),
(6873, 'Kempton', '19:00', 'Mohi', '2023-03-01 08:57:53'),
(6874, 'Kempton', '19:00', 'Tintoretto', '2023-03-01 08:57:53'),
(6875, 'Kempton', '19:00', 'Papa Stour', '2023-03-01 08:57:53'),
(6876, 'Kempton', '19:00', 'Follow Your Heart', '2023-03-01 08:57:53'),
(6877, 'Kempton', '19:00', 'Atheby', '2023-03-01 08:57:53'),
(6878, 'Kempton', '19:00', 'Brunel Charm', '2023-03-01 08:57:53'),
(6879, 'Kempton', '19:00', 'Ring Of Gold', '2023-03-01 08:57:53'),
(6880, 'Kempton', '19:00', 'Unnamed Favourite', '2023-03-01 08:57:53'),
(6881, 'Kempton', '19:00', 'Unnamed 2nd Favourite', '2023-03-01 08:57:53');

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
(68, 'U2FsdGVkX1/dT881BVm/gtDb+PrM+OLq7jpjtppn440=', '2022-01-17 13:43:13', 1, 1),
(69, 'U2FsdGVkX1+IC1rN1uVAPnkdJnlWH52pEIre71K4iw4=', '2022-01-17 13:43:14', 1, 1),
(70, 'U2FsdGVkX1/ZnxVTo00a904fxcwgyefFahqMxX1MqAw=', '2022-01-17 13:43:16', 1, 1),
(71, 'U2FsdGVkX1/0ihsqimydB0N/JYXUGtiPS29BOkoGgVE=', '2022-01-17 13:43:17', 1, 1),
(72, 'U2FsdGVkX18IXndY4Lbb06j5HQezs26yeM4YpKMl0W0=', '2022-01-17 13:43:18', 1, 1),
(73, 'U2FsdGVkX1/GOdLmrlikPh1CosAzcKpj71iVYCjFLzc=', '2022-01-17 13:43:19', 1, 1),
(74, 'U2FsdGVkX1/2viF/HgtRm+W00Omw3qFOaY39gxhWSCs=', '2022-05-05 03:24:15', 1, 1),
(75, 'U2FsdGVkX18SmfbjiFMUHX77gnuLbbd+ijtwXjJyKg8=', '2022-05-05 03:24:16', 1, 1),
(76, 'U2FsdGVkX18nvrAhsAZhypnAWytcxdv1ko6t0jnzTIw=', '2022-05-05 03:24:17', 1, 1),
(77, 'U2FsdGVkX1+XqifF6ggzCSVPP6fc1mD0byQHdkzrEIQ=', '2022-05-05 03:24:18', 1, 1),
(78, 'U2FsdGVkX1+z1/fioefzeyyPBLOnmQ3hIcHvsShu1q0=', '2022-07-19 04:39:48', 1, 1),
(79, 'U2FsdGVkX19taI0l6LHhOIssvl3h+8AG0bbp1o8EBQE=', '2022-07-23 04:49:42', 1, 1),
(80, 'U2FsdGVkX1/n9X+Uv+wgEszGf2OJalZDKG6whrneM1A=', '2022-07-23 04:49:43', 1, 1),
(81, 'U2FsdGVkX1/0Uwd2ULzlUfpC6Ztt3AQfczH9Geub+jo=', '2023-02-21 14:18:40', 1, 1),
(82, 'U2FsdGVkX1+ckNiuORTorn1xdbbvX/GfkwLRZQzPYJM=', '2023-02-21 14:18:41', 1, 0);

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
(340437, 73, '[2022.01.17 06:25:10] Socket Connected', '2022-01-17 15:25:10'),
(340438, 73, '[2022.01.17 06:30:47] Socket Connected', '2022-01-17 15:30:47'),
(340439, 73, '[2022.01.17 07:06:12] Socket Connected', '2022-01-17 16:06:12'),
(340440, 73, '[2022.01.17 07:14:08] Socket Connected', '2022-01-17 16:14:08'),
(340441, 73, '[2022.01.17 07:14:26] Bookie : 888casino, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-17 16:14:26'),
(340442, 73, '[2022.01.17 07:14:28] [Log] Horse Count : 22', '2022-01-17 16:14:28'),
(340443, 73, '[2022.01.17 07:14:28] [Log] Selected Horse Count : 10', '2022-01-17 16:14:28'),
(340444, 73, '[2022.01.17 07:14:40] [Log]Error(2) : ', '2022-01-17 16:14:40'),
(340445, 73, '[2022.01.17 07:14:40] [Log] Bet Fail!(3)', '2022-01-17 16:14:40'),
(340446, 73, '[2022.01.17 07:16:07] Socket Connected', '2022-01-17 16:16:08'),
(340447, 73, '[2022.01.17 07:18:20] [Log]Error(1) : Login Fail', '2022-01-17 16:18:20'),
(340448, 73, '[2022.01.17 07:18:36] Bookie : 888casino, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-17 16:18:36'),
(340449, 73, '[2022.01.17 07:18:38] [Log] Horse Count : 22', '2022-01-17 16:18:38'),
(340450, 73, '[2022.01.17 07:18:38] [Log] Selected Horse Count : 10', '2022-01-17 16:18:38'),
(340451, 73, '[2022.01.17 07:40:55] Socket Connected', '2022-01-17 16:40:55'),
(340452, 73, '[2022.01.17 07:41:39] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-17 16:41:39'),
(340453, 73, '[2022.01.17 07:41:41] [Log] Horse Count : 22', '2022-01-17 16:41:41'),
(340454, 73, '[2022.01.17 07:41:41] [Log] Selected Horse Count : 10', '2022-01-17 16:41:41'),
(340455, 73, '[2022.01.17 07:41:58] [Log]Bet Success!', '2022-01-17 16:41:58'),
(340456, 73, '[2022.01.17 07:41:59] [Log] Bookie : 888sport, Horse : Midnight Mary, EV : 86.17, Track : 14:50, Meet : Fakenham', '2022-01-17 16:41:59'),
(340457, 73, '[2022.01.17 07:41:59] [Log] Bookie : 888sport, Horse : True Thoughts, EV : 85.75, Track : 15:45, Meet : Chepstow', '2022-01-17 16:41:59'),
(340458, 73, '[2022.01.17 10:38:49] Socket Connected', '2022-01-17 19:38:49'),
(340459, 73, '[2022.01.17 10:39:23] [Log]Error(1) : Login Fail', '2022-01-17 19:39:23'),
(340460, 73, '[2022.01.17 10:39:30] [Log]Error(1) : Login Fail', '2022-01-17 19:39:30'),
(340461, 73, '[2022.01.17 10:39:36] [Log]Error(1) : Login Fail', '2022-01-17 19:39:36'),
(340462, 73, '[2022.01.17 10:39:43] [Log]Error(1) : Login Fail', '2022-01-17 19:39:43'),
(340463, 73, '[2022.01.17 10:39:49] [Log]Error(1) : Login Fail', '2022-01-17 19:39:49'),
(340464, 73, '[2022.01.17 10:39:56] [Log]Error(1) : Login Fail', '2022-01-17 19:39:56'),
(340465, 73, '[2022.01.17 10:40:03] [Log]Error(1) : Login Fail', '2022-01-17 19:40:03'),
(340466, 73, '[2022.01.17 10:40:09] [Log]Error(1) : Login Fail', '2022-01-17 19:40:09'),
(340467, 73, '[2022.01.17 10:40:23] Socket Connected', '2022-01-17 19:40:23'),
(340468, 73, '[2022.01.17 10:40:57] [Log]Error(1) : Login Fail', '2022-01-17 19:40:57'),
(340469, 73, '[2022.01.17 10:41:04] [Log]Error(1) : Login Fail', '2022-01-17 19:41:04'),
(340470, 73, '[2022.01.17 10:41:10] [Log]Error(1) : Login Fail', '2022-01-17 19:41:10'),
(340471, 73, '[2022.01.17 13:33:26] Socket Connected', '2022-01-17 22:33:26'),
(340472, 73, '[2022.01.17 13:34:10] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : , Stake : 0.1', '2022-01-17 22:34:10'),
(340473, 73, '[2022.01.17 13:34:12] [Log] Horse Count : 82', '2022-01-17 22:34:12'),
(340474, 73, '[2022.01.17 13:34:12] [Log] Selected Horse Count : 21', '2022-01-17 22:34:12'),
(340475, 73, '[2022.01.17 13:34:41] [Log]Error(2) : ', '2022-01-17 22:34:41'),
(340476, 73, '[2022.01.17 13:34:41] [Log] Bet Fail!(3)', '2022-01-17 22:34:41'),
(340477, 73, '[2022.01.17 13:35:44] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : , Stake : 0.1', '2022-01-17 22:35:44'),
(340478, 73, '[2022.01.17 13:35:46] [Log] Horse Count : 79', '2022-01-17 22:35:46'),
(340479, 73, '[2022.01.17 13:35:46] [Log] Selected Horse Count : 21', '2022-01-17 22:35:46'),
(340480, 73, '[2022.01.17 13:36:35] Socket Connected', '2022-01-17 22:36:35'),
(340481, 73, '[2022.01.17 13:36:35] [Log] Bet Fail!(3)', '2022-01-17 22:36:35'),
(340482, 73, '[2022.01.17 13:36:35] [Log]Error(2) : ', '2022-01-17 22:36:35'),
(340483, 73, '[2022.01.17 13:37:38] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : , Stake : 0.1', '2022-01-17 22:37:38'),
(340484, 73, '[2022.01.17 13:37:41] [Log] Horse Count : 78', '2022-01-17 22:37:41'),
(340485, 73, '[2022.01.17 13:37:41] [Log] Selected Horse Count : 21', '2022-01-17 22:37:41'),
(340486, 73, '[2022.01.17 13:47:25] Socket Connected', '2022-01-17 22:47:25'),
(340487, 73, '[2022.01.17 13:48:08] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : , Stake : 0.1', '2022-01-17 22:48:08'),
(340488, 73, '[2022.01.17 13:48:10] [Log] Horse Count : 75', '2022-01-17 22:48:10'),
(340489, 73, '[2022.01.17 13:48:10] [Log] Selected Horse Count : 20', '2022-01-17 22:48:10'),
(340490, 73, '[2022.01.17 13:48:36] [Log]Bet Success!', '2022-01-17 22:48:36'),
(340491, 73, '[2022.01.17 13:49:00] Socket Connected', '2022-01-17 22:49:00'),
(340492, 73, '[2022.01.17 13:49:42] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-17 22:49:42'),
(340493, 73, '[2022.01.17 13:49:44] [Log] Horse Count : 73', '2022-01-17 22:49:44'),
(340494, 73, '[2022.01.17 13:49:44] [Log] Selected Horse Count : 20', '2022-01-17 22:49:44'),
(340495, 73, '[2022.01.17 13:58:02] Socket Connected', '2022-01-17 22:58:02'),
(340496, 73, '[2022.01.17 13:58:44] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-17 22:58:44'),
(340497, 73, '[2022.01.17 13:58:46] [Log] Horse Count : 75', '2022-01-17 22:58:46'),
(340498, 73, '[2022.01.17 13:58:46] [Log] Selected Horse Count : 19', '2022-01-17 22:58:46'),
(340499, 73, '[2022.01.17 13:59:03] Socket Connected', '2022-01-17 22:59:03'),
(340500, 73, '[2022.01.17 13:59:14] [Log]Bet Success!', '2022-01-17 22:59:14'),
(340501, 73, '[2022.01.17 13:59:15] [Log] Bookie : 888sport, Horse : West To The Bridge, EV : 89.34, Track : 14:35, Meet : Chepstow', '2022-01-17 22:59:15'),
(340502, 73, '[2022.01.17 13:59:15] [Log] Bookie : 888sport, Horse : Tiny Tantrum, EV : 91.26, Track : 14:50, Meet : Fakenham', '2022-01-17 22:59:15'),
(340503, 73, '[2022.01.17 13:59:34] Socket Connected', '2022-01-17 22:59:34'),
(340504, 73, '[2022.01.17 14:00:16] Bookie : 888sport, EV(min) : 80, EV(max) : 250, Max Odds : 150, Min Odds : 1, Bet Type : , Stake : 0.1', '2022-01-17 23:00:16'),
(340505, 73, '[2022.01.17 14:00:18] [Log] Horse Count : 75', '2022-01-17 23:00:18'),
(340506, 73, '[2022.01.17 14:00:18] [Log] Selected Horse Count : 19', '2022-01-17 23:00:18'),
(340507, 73, '[2022.01.26 08:26:41] Socket Connected', '2022-01-26 08:26:41'),
(340508, 73, '[2022.01.26 08:29:30] Bookie : Ladbrokes, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-26 08:29:30'),
(340509, 73, '[2022.01.26 08:29:33] [Log] Horse Count : 46', '2022-01-26 08:29:33'),
(340510, 73, '[2022.01.26 08:29:33] [Log] Selected Horse Count : 22', '2022-01-26 08:29:33'),
(340511, 73, '[2022.01.26 08:33:11] Socket Connected', '2022-01-26 08:33:11'),
(340512, 73, '[2022.01.26 08:54:08] Socket Connected', '2022-01-26 08:54:08'),
(340513, 73, '[2022.01.26 09:08:16] Socket Connected', '2022-01-26 09:08:16'),
(340514, 73, '[2022.01.26 09:09:17] Bookie : Ladbrokes, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-01-26 09:09:17'),
(340515, 73, '[2022.01.26 09:09:19] [Log] Horse Count : 50', '2022-01-26 09:09:19'),
(340516, 73, '[2022.01.26 09:09:19] [Log] Selected Horse Count : 22', '2022-01-26 09:09:19'),
(340517, 73, '[2022.01.26 09:09:40] Socket Connected', '2022-01-26 09:09:40'),
(340518, 73, '[2022.01.26 09:10:25] [Log]Bet Success!', '2022-01-26 09:10:25'),
(340519, 73, '[2022.01.26 09:10:28] [Log] Bookie : Ladbrokes, Horse : Dirty Martini, EV : 94.29, Track : 15:00, Meet : Lingfield', '2022-01-26 09:10:28'),
(340520, 73, '[2022.01.26 09:10:28] [Log] Bookie : Ladbrokes, Horse : Charming Paradise, EV : 94.47, Track : 16:30, Meet : Kempton', '2022-01-26 09:10:28'),
(340521, 73, '[2022.02.09 11:37:08] Socket Connected', '2022-02-09 11:37:08'),
(340522, 73, '[2022.02.09 11:38:00] Socket Connected', '2022-02-09 11:38:00'),
(340523, 73, '[2022.02.09 11:38:50] Bookie : BFSB, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.14', '2022-02-09 11:38:50'),
(340524, 73, '[2022.02.09 11:38:55] [Log] Horse Count : 30', '2022-02-09 11:38:55'),
(340525, 73, '[2022.02.09 11:38:55] [Log] Selected Horse Count : 17', '2022-02-09 11:38:55'),
(340526, 73, '[2022.02.09 11:39:36] [Log] Bookie : BFSB, Horse : Sicilian Vito, EV : 101.92, Track : 18:00, Meet : Kempton', '2022-02-09 11:39:36'),
(340527, 73, '[2022.02.09 11:39:36] [Log]Bet Success!', '2022-02-09 11:39:36'),
(340528, 73, '[2022.02.09 11:40:38] Bookie : BFSB, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.14', '2022-02-09 11:40:38'),
(340529, 73, '[2022.02.09 11:40:40] [Log] Horse Count : 27', '2022-02-09 11:40:40'),
(340530, 73, '[2022.02.09 11:40:40] [Log] Selected Horse Count : 16', '2022-02-09 11:40:40'),
(340531, 73, '[2022.02.09 11:40:58] Socket Connected', '2022-02-09 11:40:58'),
(340532, 73, '[2022.02.09 11:41:39] Bookie : BFSB, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.14', '2022-02-09 11:41:39'),
(340533, 73, '[2022.02.09 11:41:41] [Log] Horse Count : 27', '2022-02-09 11:41:41'),
(340534, 73, '[2022.02.09 11:41:41] [Log] Selected Horse Count : 16', '2022-02-09 11:41:41'),
(340535, 73, '[2022.02.09 11:42:03] [Log]Bet Success!', '2022-02-09 11:42:03'),
(340536, 73, '[2022.02.09 11:42:04] [Log] Bookie : BFSB, Horse : Carrigeen Lotus, EV : 98.18, Track : 12:45, Meet : Fairyhouse', '2022-02-09 11:42:04'),
(340537, 73, '[2022.02.09 11:42:04] [Log] Bookie : BFSB, Horse : Igraine, EV : 92.94, Track : 15:15, Meet : Fairyhouse', '2022-02-09 11:42:04'),
(340538, 73, '[2022.02.09 11:42:55] Socket Connected', '2022-02-09 11:42:55'),
(340539, 73, '[2022.02.09 11:43:35] Bookie : BFSB, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Trixie EW, Stake : 0.14', '2022-02-09 11:43:35'),
(340540, 73, '[2022.02.09 11:43:37] [Log] Horse Count : 27', '2022-02-09 11:43:37'),
(340541, 73, '[2022.02.09 11:43:37] [Log] Selected Horse Count : 15', '2022-02-09 11:43:37'),
(340542, 73, '[2022.02.09 11:43:54] [Log]Bet Success!', '2022-02-09 11:43:54'),
(340543, 73, '[2022.02.09 11:43:55] [Log] Bookie : BFSB, Horse : Blenkinsop, EV : 97.14, Track : 14:00, Meet : Ludlow', '2022-02-09 11:43:55'),
(340544, 73, '[2022.02.09 11:43:55] [Log] Bookie : BFSB, Horse : Exit To The West, EV : 92.76, Track : 13:15, Meet : Fairyhouse', '2022-02-09 11:43:55'),
(340545, 73, '[2022.02.09 11:43:55] [Log] Bookie : BFSB, Horse : Barncroft, EV : 100.42, Track : 16:15, Meet : Fairyhouse', '2022-02-09 11:43:55'),
(340546, 73, '[2022.02.09 14:51:18] Socket Connected', '2022-02-09 14:51:18'),
(340547, 73, '[2022.02.09 14:52:03] Bookie : Coral, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-02-09 14:52:03'),
(340548, 73, '[2022.02.09 14:52:08] [Log] Horse Count : 23', '2022-02-09 14:52:08'),
(340549, 73, '[2022.02.09 14:52:08] [Log] Selected Horse Count : 10', '2022-02-09 14:52:08'),
(340550, 73, '[2022.02.09 15:00:51] Socket Connected', '2022-02-09 15:00:51'),
(340551, 73, '[2022.02.09 15:01:31] Bookie : Coral, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-02-09 15:01:31'),
(340552, 73, '[2022.02.09 15:01:35] [Log] Horse Count : 22', '2022-02-09 15:01:35'),
(340553, 73, '[2022.02.09 15:01:35] [Log] Selected Horse Count : 10', '2022-02-09 15:01:35'),
(340554, 73, '[2022.02.09 15:02:12] [Log]Bet Success!', '2022-02-09 15:02:12'),
(340555, 73, '[2022.02.09 15:02:12] [Log] Bookie : Coral, Horse : Yenedon, EV : 102.43, Track : 15:15, Meet : Fairyhouse', '2022-02-09 15:02:12'),
(340556, 73, '[2022.02.09 15:02:12] [Log] Bookie : Coral, Horse : Firth Of Gold, EV : 101.47, Track : 15:30, Meet : Ludlow', '2022-02-09 15:02:12'),
(340557, 73, '[2022.02.09 15:09:57] Socket Connected', '2022-02-09 15:09:57'),
(340558, 73, '[2022.02.09 15:10:37] Bookie : Coral, EV(min) : 95, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Trixie EW, Stake : 2.5', '2022-02-09 15:10:37'),
(340559, 73, '[2022.02.09 15:10:41] [Log] Horse Count : 12', '2022-02-09 15:10:41'),
(340560, 73, '[2022.02.09 15:10:41] [Log] Selected Horse Count : 7', '2022-02-09 15:10:41'),
(340561, 73, '[2022.02.09 15:11:45] Socket Connected', '2022-02-09 15:11:45'),
(340562, 73, '[2022.02.09 16:44:49] Socket Connected', '2022-02-09 16:44:49'),
(340563, 73, '[2022.02.09 16:45:34] Bookie : BFSB, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Trixie EW, Stake : 0.14', '2022-02-09 16:45:34'),
(340564, 73, '[2022.02.09 16:45:36] [Log] Horse Count : 8', '2022-02-09 16:45:36'),
(340565, 73, '[2022.02.09 16:45:36] [Log] Selected Horse Count : 5', '2022-02-09 16:45:36'),
(340566, 73, '[2022.02.09 16:45:48] [Log]Bet Success!', '2022-02-09 16:45:48'),
(340567, 73, '[2022.02.10 02:13:15] Socket Connected', '2022-02-10 02:13:15'),
(340568, 73, '[2022.02.10 02:14:11] Bookie : William Hill, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-02-10 02:14:11'),
(340569, 73, '[2022.02.10 02:14:12] [Log] Selected Horse Count : 4', '2022-02-10 02:14:12'),
(340570, 73, '[2022.02.10 02:14:12] [Log] Horse Count : 6', '2022-02-10 02:14:12'),
(340571, 73, '[2022.02.10 02:14:30] [Log]Bet Success!', '2022-02-10 02:14:30'),
(340572, 73, '[2022.02.10 02:14:30] [Log] Bookie : William Hill, Horse : Hasty Parisian, EV : 93.1, Track : 13:35, Meet : Doncaster', '2022-02-10 02:14:30'),
(340573, 73, '[2022.02.10 02:14:31] [Log] Bookie : William Hill, Horse : Geometrical, EV : 91.36, Track : 15:20, Meet : Doncaster', '2022-02-10 02:14:31'),
(340574, 73, '[2022.02.10 02:23:27] Socket Connected', '2022-02-10 02:23:27'),
(340575, 73, '[2022.02.10 02:24:37] Socket Connected', '2022-02-10 02:24:37'),
(340576, 73, '[2022.02.10 02:24:40] Bookie : William Hill, EV(min) : 90, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Doubles EW, Stake : 0.1', '2022-02-10 02:24:40'),
(340577, 73, '[2022.02.10 02:24:42] [Log] Horse Count : 6', '2022-02-10 02:24:42'),
(340578, 73, '[2022.02.10 02:24:42] [Log] Selected Horse Count : 4', '2022-02-10 02:24:42'),
(340579, 73, '[2022.02.10 02:25:19] [Log]Bet Success!', '2022-02-10 02:25:19'),
(340580, 73, '[2022.02.10 02:25:19] [Log] Bookie : William Hill, Horse : Geometrical, EV : 91.36, Track : 15:20, Meet : Doncaster', '2022-02-10 02:25:19'),
(340581, 73, '[2022.02.10 02:25:19] [Log] Bookie : William Hill, Horse : Hasty Parisian, EV : 93.1, Track : 13:35, Meet : Doncaster', '2022-02-10 02:25:19'),
(340582, 73, '[2022.02.10 02:30:13] Socket Connected', '2022-02-10 02:30:13'),
(340583, 73, '[2022.02.10 03:01:08] Socket Connected', '2022-02-10 03:01:08'),
(340584, 73, '[2022.02.10 03:01:31] Socket Connected', '2022-02-10 03:01:31'),
(340585, 73, '[2022.02.10 07:58:05] Socket Connected', '2022-02-10 07:58:05'),
(340586, 73, '[2022.02.10 07:59:04] Bookie : Bet Victor, EV(min) : 95, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.1', '2022-02-10 07:59:04'),
(340587, 73, '[2022.02.10 07:59:07] [Log] Horse Count : 3', '2022-02-10 07:59:07'),
(340588, 73, '[2022.02.10 07:59:07] [Log] Selected Horse Count : 3', '2022-02-10 07:59:07'),
(340589, 73, '[2022.02.10 07:59:20] [Log]Bet Success!', '2022-02-10 07:59:20'),
(340590, 73, '[2022.02.10 07:59:21] [Log] Bookie : Bet Victor, Horse : Red Lion Lad, EV : 106.01, Track : 13:17, Meet : Ffos Las', '2022-02-10 07:59:21'),
(340591, 73, '[2022.02.10 08:00:39] Socket Connected', '2022-02-10 08:00:39'),
(340592, 73, '[2022.02.10 08:01:55] [Log]Error(1) : Login Fail', '2022-02-10 08:01:55'),
(340593, 73, '[2022.02.10 08:02:21] Bookie : Bet Victor, EV(min) : 95, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:02:21'),
(340594, 73, '[2022.02.10 08:02:23] [Log] Horse Count : 2', '2022-02-10 08:02:23'),
(340595, 73, '[2022.02.10 08:02:23] [Log] Selected Horse Count : 2', '2022-02-10 08:02:23'),
(340596, 73, '[2022.02.10 08:02:25] Socket Connected', '2022-02-10 08:02:25'),
(340597, 73, '[2022.02.10 08:03:27] Socket Connected', '2022-02-10 08:03:27'),
(340598, 73, '[2022.02.10 08:04:19] Bookie : Bet Victor, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:04:19'),
(340599, 73, '[2022.02.10 08:04:22] [Log] Horse Count : 45', '2022-02-10 08:04:22'),
(340600, 73, '[2022.02.10 08:04:22] [Log] Selected Horse Count : 24', '2022-02-10 08:04:22'),
(340601, 73, '[2022.02.10 08:04:44] [Log]Bet Success!', '2022-02-10 08:04:44'),
(340602, 73, '[2022.02.10 08:04:45] [Log] Bookie : Bet Victor, Horse : Road Warrior, EV : 91.05, Track : 14:45, Meet : Doncaster', '2022-02-10 08:04:45'),
(340603, 73, '[2022.02.10 08:04:45] [Log] Bookie : Bet Victor, Horse : Terresita, EV : 91.12, Track : 15:50, Meet : Doncaster', '2022-02-10 08:04:45'),
(340604, 73, '[2022.02.10 08:04:45] [Log] Bookie : Bet Victor, Horse : Geometrical, EV : 91.36, Track : 15:20, Meet : Doncaster', '2022-02-10 08:04:45'),
(340605, 73, '[2022.02.10 08:04:45] [Log] Bookie : Bet Victor, Horse : Tremwedge, EV : 91.39, Track : 13:25, Meet : Huntingdon', '2022-02-10 08:04:45'),
(340606, 73, '[2022.02.10 08:05:21] Socket Connected', '2022-02-10 08:05:21'),
(340607, 73, '[2022.02.10 08:06:14] Bookie : Bet Victor, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:06:14'),
(340608, 73, '[2022.02.10 08:06:16] [Log] Horse Count : 43', '2022-02-10 08:06:16'),
(340609, 73, '[2022.02.10 08:06:39] Bookie : Bet Victor, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:06:39'),
(340610, 73, '[2022.02.10 08:06:41] [Log] Horse Count : 43', '2022-02-10 08:06:41'),
(340611, 73, '[2022.02.10 08:07:06] Bookie : Bet Victor, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:07:06'),
(340612, 73, '[2022.02.10 08:07:09] [Log] Horse Count : 41', '2022-02-10 08:07:09'),
(340613, 73, '[2022.02.10 08:08:45] Socket Connected', '2022-02-10 08:08:45'),
(340614, 73, '[2022.02.10 08:08:45] Bookie : Bet Victor, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:08:45'),
(340615, 73, '[2022.02.10 08:08:47] [Log] Horse Count : 43', '2022-02-10 08:08:47'),
(340616, 73, '[2022.02.10 08:11:05] Socket Connected', '2022-02-10 08:11:05'),
(340617, 73, '[2022.02.10 08:12:12] Bookie : Bet Victor, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Lucky15 EW, Stake : 0.1', '2022-02-10 08:12:12'),
(340618, 73, '[2022.02.10 08:12:14] [Log] Horse Count : 44', '2022-02-10 08:12:14'),
(340619, 73, '[2022.02.10 08:12:16] [Log] Selected Horse Count : 24', '2022-02-10 08:12:16'),
(340620, 73, '[2022.02.10 08:12:37] [Log]Bet Success!', '2022-02-10 08:12:37'),
(340621, 73, '[2022.02.10 08:12:39] [Log] Bookie : Bet Victor, Horse : Thunder Rock, EV : 87.89, Track : 15:45, Meet : Huntingdon', '2022-02-10 08:12:39'),
(340622, 73, '[2022.02.10 08:12:39] [Log] Bookie : Bet Victor, Horse : Soldier Of Destiny, EV : 89.82, Track : 14:27, Meet : Ffos Las', '2022-02-10 08:12:39'),
(340623, 73, '[2022.02.10 08:12:39] [Log] Bookie : Bet Victor, Horse : Crossing The Bar, EV : 91.01, Track : 16:07, Meet : Ffos Las', '2022-02-10 08:12:39'),
(340624, 73, '[2022.02.10 08:12:39] [Log] Bookie : Bet Victor, Horse : Cup Of Coffee, EV : 87.28, Track : 16:20, Meet : Doncaster', '2022-02-10 08:12:39'),
(340625, 74, '[2022.02.18 03:50:42] Socket Connected', '2022-02-18 03:50:42'),
(340626, 74, '[2022.02.18 03:51:24] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.1', '2022-02-18 03:51:24'),
(340627, 74, '[2022.02.18 03:51:25] [Log] Horse Count : 41', '2022-02-18 03:51:25'),
(340628, 74, '[2022.02.18 03:51:31] [Log] Selected Horse Count : 11', '2022-02-18 03:51:31'),
(340629, 74, '[2022.02.18 06:45:02] Socket Connected', '2022-02-18 06:45:02'),
(340630, 74, '[2022.02.18 06:45:41] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.1', '2022-02-18 06:45:41'),
(340631, 74, '[2022.02.18 06:45:43] [Log] Horse Count : 41', '2022-02-18 06:45:43'),
(340632, 74, '[2022.02.18 06:45:43] [Log] Selected Horse Count : 11', '2022-02-18 06:45:43'),
(340633, 74, '[2022.02.18 06:51:38] Socket Connected', '2022-02-18 06:51:38'),
(340634, 74, '[2022.02.18 06:52:17] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.1', '2022-02-18 06:52:17'),
(340635, 74, '[2022.02.18 06:52:18] [Log] Horse Count : 41', '2022-02-18 06:52:18'),
(340636, 74, '[2022.02.18 06:52:18] [Log] Selected Horse Count : 11', '2022-02-18 06:52:18'),
(340637, 74, '[2022.02.18 06:54:09] Socket Connected', '2022-02-18 06:54:09'),
(340638, 74, '[2022.02.18 06:54:47] Bookie : Bet365, EV(min) : 80, EV(max) : 250, Max Odds : 250, Min Odds : 1, Bet Type : Single EW, Stake : 0.1', '2022-02-18 06:54:47'),
(340639, 74, '[2022.02.18 06:54:49] [Log] Horse Count : 41', '2022-02-18 06:54:49'),
(340640, 74, '[2022.02.18 06:54:49] [Log] Selected Horse Count : 11', '2022-02-18 06:54:49'),
(340641, 74, '[2022.02.18 06:56:51] [Log]Bet Success!', '2022-02-18 06:56:51'),
(340642, 74, '[2022.02.18 06:56:51] [Log] Bookie : Bet365, Horse : Return Fire, EV : 97.2, Track : 13:00, Meet : Kelso', '2022-02-18 06:56:51');

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
(75, 'admin', 'U2FsdGVkX1/ZnxVTo00a904fxcwgyefFahqMxX1MqAw=', 1, 2, '', '90.18', 1, 'BFSB', 's_yr4BQusCO_esAtAAAJ', 'nickmartin1985+10@gmail.com', 'password99', 'dd', '14.1', '2022-05-13 14:46:24', ''),
(76, 'admin', 'U2FsdGVkX1/0ihsqimydB0N/JYXUGtiPS29BOkoGgVE=', 2, 2, '185.251.116.122', '49.82', 1, 'Bet Victor', '', 'qqqq', 'qqqqq', 'qqqq', '14.7', '2022-04-06 04:30:28', ''),
(77, 'admin', 'U2FsdGVkX18IXndY4Lbb06j5HQezs26yeM4YpKMl0W0=', 0, 2, '2.58.47.7', '5.24', 1, '10bet', '', 'ddd', 'ddd', 'ddd', '13.6', '2022-04-29 03:27:33', ''),
(78, 'admin', 'U2FsdGVkX1/GOdLmrlikPh1CosAzcKpj71iVYCjFLzc=', 0, 2, '2.58.47.7', '1545.4', 1, 'Sport Nation', '', 'dd', 'ddd', '1', '13.7', '2022-05-03 15:33:41', ''),
(79, 'admin', 'U2FsdGVkX1/2viF/HgtRm+W00Omw3qFOaY39gxhWSCs=', 0, 2, '185.108.128.54', '399.82', 1, '10bet', '', 'ddd', 'ddd', 'dddd', '2.0', '2022-05-05 03:58:30', ''),
(81, 'admin', 'U2FsdGVkX18nvrAhsAZhypnAWytcxdv1ko6t0jnzTIw=', 1, 2, '185.251.116.122', '59.82', 1, 'Fitzdares', 'DLn8wjArQBZa49jwAAAC', 'aaaa', 'aaa', 'aaaaa', '2.4', '2022-05-24 02:37:16', ''),
(82, 'admin', 'U2FsdGVkX1+XqifF6ggzCSVPP6fc1mD0byQHdkzrEIQ=', 1, 2, '5.226.137.4', '7.4', 1, 'William Hill', 'YbMsjv9j-TvfB0BKAAAj', 'kannelewis45@gmail.com', 'OddscheckerKelly!', '1', '14.8', '2022-06-02 16:30:22', ''),
(84, 'admin', 'U2FsdGVkX1/dT881BVm/gtDb+PrM+OLq7jpjtppn440=', 1, 2, '185.251.116.122', '2261.83', 1, 'Bet365', 'Di2hiczoKjR2EhqcAAAC', 'nickmartin1985+10@gmail.com', 'password99', '', '15.7', '2022-06-18 03:47:45', ''),
(85, 'admin', 'U2FsdGVkX18SmfbjiFMUHX77gnuLbbd+ijtwXjJyKg8=', 1, 1, '185.251.116.122', '592.64', 1, '888casino', '6hXT4Cci1oyX6r1mAAAM', 'dfd', 'dfad', '1', '3.5', '2022-07-12 10:51:42', ''),
(86, 'admin', 'U2FsdGVkX1+z1/fioefzeyyPBLOnmQ3hIcHvsShu1q0=', 1, 2, '185.251.116.122', '199.8', 1, 'Betway', 'RczI9lsTOa_LRcfqAAAZ', 'sorenoconnor145@gmail.com', 'BlueApple67!', 'Bet365 Test', '3.6', '2022-07-20 08:01:50', ''),
(87, 'admin', 'U2FsdGVkX19taI0l6LHhOIssvl3h+8AG0bbp1o8EBQE=', 1, 2, '185.108.128.54', '200', 1, 'Livescorebet', '81-hRsZKFH4isG3jAAAD', 'livescore', 'livescore', 'livescore', '3.8', '2022-07-23 04:59:27', ''),
(91, 'admin', 'U2FsdGVkX1/0Uwd2ULzlUfpC6Ztt3AQfczH9Geub+jo=', 1, 2, '146.185.26.150', '193', 1, 'TalkSportBet', 'BTKctRftu4j9Rh0rAAAA', '123', '123', '123', '6.3', '2023-03-13 14:23:23', ''),
(92, 'admin', 'U2FsdGVkX1+IC1rN1uVAPnkdJnlWH52pEIre71K4iw4=', 1, 2, '185.251.116.122', '419.01', 1, 'Leovegas', '2sqq0QhGXn2C0PA2AAAn', 's', 's', 's', '23.2', '2023-03-09 07:59:19', ''),
(93, 'admin', 'U2FsdGVkX1/n9X+Uv+wgEszGf2OJalZDKG6whrneM1A=', 1, 1, '185.251.116.122', '3761.91', 1, 'Coral', 'BisuBX3GGz7tYf9JAAAG', '123', '123', '1', '23.6', '2023-03-27 04:49:03', '');

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

--
-- Dumping data for table `tbl_manualhorse`
--

INSERT INTO `tbl_manualhorse` (`id`, `horse`, `meet`, `track`, `create_date`, `type`) VALUES
(1, 'Colinton', 'Catterick', '14:50', '2022-04-20 04:09:19', 0),
(2, 'War Defender', 'Catterick', '14:50', '2022-04-20 04:09:41', 0),
(4, 'Bearcardi', 'Catterick', '16:00', '2022-04-19 04:09:52', 0),
(6, 'Admiralty Place', 'Cork', '19:00', '2022-05-06 14:18:59', 1),
(7, 'Trueba', 'Cork', '20:00', '2022-05-06 14:19:07', 0),
(8, 'Pittsburg', 'Kempton', '17:30', '2023-03-01 09:04:29', 1);

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
('sss', 'ssss', 91, 250, 1, 250, 'William Hill', 0.1, 3, 3, 3, '02:09', '14:10', 0.1, 224, 1, 73, 1, 0, 0, 0),
('sss', 'ssss', 91, 250, 1, 250, 'Bet Victor', 0.1, 3, 2, 2, '07:56', '19:57', 0.1, 225, 1, 73, 0, 0, 0, 0),
('sss', 'ssss', 91, 250, 1, 250, 'Bet Victor', 0.1, 3, 2, 2, '07:56', '19:57', 0.1, 226, 1, 73, 5, 0, 0, 0),
('sss', 'ssss', 91, 250, 1, 250, 'Bet Victor', 0.1, 3, 3, 3, '08:02', '20:03', 0.1, 227, 1, 73, 5, 1, 0, 0),
('nickmartin1985+10@gmail.com', 'password99', 91, 0, 0, 0, 'Bet365', 0, 0, 0, 0, '01:26', '13:28', 0, 244, 1, 75, -1, 0, 2, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Skybet', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 245, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'BFSB', 0.5, 3, 3, 3, '07:46', '19:47', 0.1, 246, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'William Hill', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 247, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Boyle Sports', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 248, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Betfred', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 249, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Unibet', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 250, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Ladbrokes', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 251, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Bet Victor', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 252, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Paddy Power', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 253, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, 'Coral', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 254, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1.4, 250, '888sport', 0.1, 3, 3, 3, '07:46', '19:47', 0.1, 255, 1, 76, 0, 0, 1, 0),
('qqqq', 'qqqqq', 91, 250, 1, 250, 'Bet Victor', 0.1, 3, 3, 3, '03:26', '16:28', 0.1, 256, 1, 76, 0, 1, 0, 0),
('ddd', 'ddd', 96, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '01:15', '21:16', 0.1, 259, 1, 77, 0, 0, 1, 0),
('ddd', 'ddd', 91, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '07:15', '09:16', 0.1, 260, 1, 77, 1, 0, 1, 0),
('ddd', 'ddd', 91, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '02:15', '21:16', 0.1, 261, 1, 77, 2, 1, 1, 0),
('ddd', 'ddd', 91, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '07:15', '21:16', 0.1, 262, 1, 77, 3, 0, 1, 0),
('ddd', 'ddd', 91, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '07:15', '21:16', 0.1, 263, 1, 77, 4, 0, 1, 0),
('ddd', 'ddd', 91, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '02:15', '21:16', 0.1, 264, 1, 77, 5, 0, 1, 0),
('ddd', 'ddd', 91, 250, 1, 100, '10bet', 0.1, 3, 3, 3, '03:44', '15:46', 0.1, 265, 1, 77, 1, 0, 0, 0),
('ddd', 'ddd', 91, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '01:51', '19:52', 0.1, 266, 1, 77, 1, 0, 1, 0),
('dd', 'ddd', 96, 250, 1, 250, 'Sport Nation', 0.1, 3, 3, 100, '08:00', '21:59', 0.1, 267, 10, 78, 1, 1, 1, 0),
('dd', 'ddd', 91, 250, 1, 250, 'Sport Nation', 0.1, 3, 3, 5, '08:05', '22:09', 0.1, 268, 5, 78, 2, 0, 1, 0),
('ddd', 'ddd', 91, 250, 1, 100, '10bet', 0.09, 3, 3, 3, '03:24', '15:25', 0.1, 269, 1, 79, 1, 1, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 96, 250, 1, 250, 'Bet365', 0.1, 3, 3, 20, '02:43', '13:43', 0.1, 272, 4, 75, 5, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 91, 250, 1, 100, 'BFSB', 0.1, 3, 3, 3, '11:03', '23:04', 0.1, 273, 1, 75, 0, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 81, 100, 1, 250, 'Oddsking', 0.1, 3, 3, 3, '02:56', '05:57', 0.1, 275, 1, 75, 0, 0, 0, 0),
('nickmartin1985+10@gmail.com', 'password99', 81, 250, 1, 250, 'Oddsking', 0.1, 3, 3, 3, '02:39', '06:39', 0.1, 276, 1, 75, 0, 0, 0, 0),
('nickmartin1985+10@gmail.com', 'password99', 81, 250, 1, 250, 'Oddsking', 0.5, 3, 3, 3, '03:49', '06:50', 0.1, 277, 1, 75, 0, 0, 0, 0),
('nickmartin1985+10@gmail.com', 'password99', 100, 250, 1, 250, '888sport', 0.1, 3, 3, 3, '03:49', '18:50', 0.1, 279, 1, 75, 0, 0, 0, 0),
('fff', 'fff', 121, 250, 1, 250, '888sport', 0.1, 3, 3, 3, '16:01', '20:03', 0.1, 280, 1, 80, 0, 0, 0, 0),
('fff', 'fff', 100, 250, 1, 100, 'Coral', 0.11, 3, 3, 10, '16:27', '19:29', 0.1, 281, 1, 80, 1, 0, 3, 0),
('fff', 'fff', 100, 250, 1, 100, 'Ladbrokes', 0.11, 3, 3, 10, '16:27', '19:29', 0.1, 282, 1, 80, 1, 0, 3, 0),
('fff', 'fff', 100, 250, 1, 100, 'Unibet', 0.11, 3, 3, 10, '16:27', '19:29', 0.1, 283, 1, 80, 1, 0, 3, 0),
('fff', 'fff', 100, 250, 1, 100, 'BFSB', 0.11, 3, 3, 10, '02:27', '19:29', 0.1, 284, 1, 80, 1, 0, 3, 0),
('fff', 'fff', 100, 250, 1, 250, 'Paddy Power', 0.11, 3, 3, 10, '03:19', '16:19', 0.1, 285, 1, 80, 1, 0, 3, 0),
('fff', 'fff', 100, 250, 1, 250, 'Coral', 0.11, 3, 3, 10, '03:19', '16:19', 0.1, 286, 1, 80, 1, 0, 3, 0),
('fff', 'fff', 100, 250, 1, 250, 'Ladbrokes', 0.11, 3, 3, 10, '03:19', '16:19', 0.1, 287, 1, 80, 1, 1, 3, 0),
('nickmartin1985+10@gmail.com', 'password99', 99, 250, 1, 250, 'Paddy Power', 3.5, 3, 3, 30, '08:45', '21:45', 0.1, 288, 1, 75, 3, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 99, 250, 1, 250, 'BFSB', 3.5, 3, 3, 30, '08:45', '21:45', 0.1, 289, 1, 75, 3, 1, 1, 0),
('aaaa', 'aaa', 95, 250, 1, 250, 'Fitzdares', 0.1, 3, 3, 3, '10:13', '12:14', 0.1, 291, 1, 81, 5, 1, 1, 0),
('aaaa', 'aaa', 90, 250, 1, 250, 'Fitzdares', 0.1, 3, 3, 3, '14:12', '19:13', 0.1, 295, 7, 81, 1, 1, 0, 0),
('aaaa', 'aaa', 95, 250, 1, 250, 'Fitzdares', 0.1, 3, 3, 29, '02:31', '08:32', 0.1, 296, 1, 81, 1, 1, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 88, 250, 1, 250, 'Skybet', 0.1, 3, 3, 30, '16:46', '18:47', 0.1, 297, 1, 75, 1, 1, 1, 1),
('kannelewis45@gmail.com', 'OddscheckerKelly!', 98, 250, 1, 250, 'William Hill', 0.1, 3, 3, 3, '16:27', '21:29', 0.1, 320, 1, 82, 1, 1, 1, 1),
('ddd', 'ddd', 90, 250, 1, 250, '888casino', 0.1, 3, 3, 3, '03:49', '05:50', 0.1, 321, 1, 83, 1, 1, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 90, 250, 1, 250, 'Bet365', 0.1, 3, 3, 3, '03:42', '05:43', 0.1, 322, 1, 84, 0, 1, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Parimatch', 0.1, 3, 3, 3, '03:06', '15:07', 0.1, 324, 1, 85, 0, 0, 1, 1),
('dfd', 'dfad', 95, 250, 1, 250, 'BFSB', 0.5, 3, 3, 3, '15:31', '17:32', 0.1, 325, 1, 85, 2, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'BFSB', 2.5, 3, 3, 3, '15:31', '17:32', 0.1, 326, 1, 85, 2, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'BFSB', 0.5, 3, 3, 3, '15:31', '17:32', 0.1, 327, 1, 85, 5, 0, 1, 0),
('dfd', 'dfad', 90, 250, 1, 250, 'BFSB', 0.5, 3, 3, 3, '15:31', '17:32', 0.1, 328, 1, 85, 5, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Paddy Power', 0.5, 3, 3, 3, '15:07', '17:08', 0.1, 329, 1, 85, 2, 0, 1, 0),
('dfd', 'dfad', 90, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '04:00', '18:01', 0.1, 331, 1, 85, 1, 0, 1, 0),
('dfd', 'dfad', 90, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:45', '19:47', 0.1, 332, 1, 85, 1, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 344, 1, 85, 4, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 345, 1, 85, 5, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 346, 1, 85, 6, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 347, 1, 85, 1, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 348, 1, 85, 0, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 349, 1, 85, 0, 0, 1, 1),
('dfd', 'dfad', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '03:08', '19:10', 0.1, 350, 1, 85, 1, 0, 1, 1),
('dfd', 'dfad', 95, 250, 1, 250, '888casino', 0.1, 3, 3, 3, '06:58', '08:59', 0.1, 351, 1, 85, 1, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, '888casino', 0.1, 3, 3, 3, '09:57', '21:58', 0.1, 352, 1, 85, 1, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, '888sport', 0.1, 3, 3, 3, '09:57', '21:58', 0.1, 353, 1, 85, 1, 0, 1, 0),
('dfd', 'dfad', 95, 250, 1, 250, '888casino', 0.1, 3, 3, 3, '10:58', '13:59', 0.1, 354, 1, 85, 1, 0, 1, 1),
('dfd', 'dfad', 90, 250, 1, 250, 'Betway', 0.1, 3, 3, 3, '15:06', '21:07', 0.1, 355, 1, 85, 1, 1, 1, 0),
('sorenoconnor145@gmail.com', 'BlueApple67!', 0, 0, 0, 0, 'Bet365', 0, 0, 0, 0, '14:14', '18:16', 0, 358, 1, 86, -1, 0, 2, 0),
('sorenoconnor145@gmail.com', 'BlueApple67!', 95, 250, 1, 250, 'Bet365', 0.1, 3, 3, 3, '03:13', '15:14', 0.1, 359, 1, 86, 1, 0, 1, 0),
('sorenoconnor145@gmail.com', 'BlueApple67!', 98, 250, 1, 250, 'Bet365', 0.1, 3, 3, 3, '07:26', '13:27', 0.1, 360, 1, 86, 0, 0, 1, 0),
('sorenoconnor145@gmail.com', 'BlueApple67!', 98, 250, 1, 250, 'Bet365', 0.1, 3, 3, 3, '07:26', '13:27', 0.1, 361, 1, 86, 5, 0, 1, 0),
('sorenoconnor145@gmail.com', 'BlueApple67!', 90, 250, 1, 250, 'Betway', 0.1, 3, 3, 3, '07:55', '10:56', 0.1, 362, 1, 86, 1, 1, 1, 0),
('livescore', 'livescore', 95, 250, 1, 250, 'Livescorebet', 0.1, 3, 3, 3, '04:50', '05:51', 0.1, 363, 1, 87, 1, 1, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Paddy Power', 0, 0, 0, 0, '03:51', '08:52', 0, 370, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Betstars', 0, 0, 0, 0, '14:40', '20:41', 0, 372, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Betstars', 0, 0, 0, 0, '02:44', '05:45', 0, 373, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'Betstars', 0.1, 3, 3, 3, '17:10', '21:11', 0.1, 374, 1, 88, 1, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'Betstars', 0.1, 3, 3, 3, '04:10', '10:12', 0.1, 375, 1, 88, 1, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 99, 250, 1, 250, 'Betstars', 0.1, 3, 3, 3, '10:26', '16:28', 0.1, 376, 1, 88, 1, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'Betstars', 0.1, 3, 3, 3, '15:36', '18:37', 0.1, 377, 1, 88, 5, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'Betstars', 0.1, 3, 3, 3, '15:36', '18:37', 0.1, 378, 1, 88, 1, 0, 1, 1),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Betstars', 0, 0, 0, 0, '09:24', '11:25', 0, 379, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Coral', 0, 0, 0, 0, '08:40', '11:42', 0, 380, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Virgin', 0, 0, 0, 0, '16:42', '18:44', 0, 381, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'BFSB', 0.3, 3, 3, 3, '03:46', '04:47', 0.1, 382, 1, 88, 1, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 0, 0, 0, 0, 'Virgin', 0, 0, 0, 0, '02:51', '05:53', 0, 383, 1, 88, -1, 0, 2, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'Virgin', 0.1, 3, 3, 3, '07:19', '09:20', 0.1, 385, 1, 88, 1, 0, 1, 1),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, 'Virgin', 0.1, 3, 3, 3, '07:19', '09:20', 0.1, 386, 1, 88, 5, 0, 1, 0),
('nickmartin1985+10@gmail.com', 'password99', 95, 250, 1, 250, '10bet', 0.1, 3, 3, 3, '09:11', '10:12', 0.1, 387, 1, 88, 1, 1, 1, 0),
('dd', 'ddd', 100, 250, 1, 250, 'Bwin', 0.1, 3, 3, 3, '09:00', '13:00', 0.1, 394, 1, 89, 1, 1, 1, 0),
('dd', 'ddd', 0, 0, 0, 0, 'Bwin', 0, 0, 0, 0, '02:27', '05:28', 0, 395, 1, 89, -1, 0, 2, 0),
('dd', 'ddd', 80, 250, 1, 250, 'Bwin', 0.5, 3, 3, 3, '15:49', '21:51', 0.1, 402, 1, 89, 1, 0, 1, 1),
('dd', 'ddd', 99, 250, 1, 250, 'Livescorebet', 0.5, 3, 3, 3, '15:41', '17:42', 0.1, 406, 1, 89, 3, 1, 1, 0),
('dd', 'ddd', 100, 250, 1, 50, 'Sport Nation', 0.5, 3, 3, 3, '15:36', '17:37', 0.1, 409, 1, 89, 1, 1, 4, 0),
('dd', 'ddd', 100, 250, 1, 250, 'Bet Victor', 0.5, 3, 3, 3, '03:22', '03:45', 0.1, 411, 1, 89, 1, 1, 1, 0),
('dd', 'ddd', 100, 250, 1, 250, 'BFSB', 0.5, 3, 3, 3, '04:22', '04:45', 0.1, 412, 1, 89, 1, 1, 1, 0),
('dd', 'ddd', 100, 250, 1, 250, 'Skybet', 0.5, 3, 3, 10, '16:24', '17:24', 0.1, 413, 1, 89, 4, 1, 0, 0),
('dd', 'ddd', 100, 250, 1, 250, 'Skybet', 0.5, 3, 3, 10, '16:24', '17:24', 0.1, 414, 1, 89, 2, 1, 1, 0),
('dd', 'ddd', 102, 252, 2, 252, 'William Hill', 1.5, 4, 4, 15, '15:59', '17:59', 0.1, 415, 5, 89, 4, 1, 0, 0),
('dd', 'ddd', 100, 250, 1, 250, 'Paddy Power', 0.5, 3, 3, 10, '15:58', '17:58', 0.1, 416, 1, 89, 3, 1, 1, 0),
('dd', 'ddd', 0, 0, 0, 0, 'Bet365', 0, 0, 0, 0, '04:13', '05:13', 0.1, 417, 1, 89, -1, 1, 2, 0),
('dfff', 'dfff', 95, 250, 1, 150, 'TalkSportBet', 0.12, 3, 3, 3, '07:12', '10:13', 0.1, 481, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 95, 250, 1, 150, 'TalkSportBet', 0.1, 3, 3, 3, '07:12', '10:13', 0.1, 483, 1, 90, 5, 0, 1, 0),
('dfff', 'dfff', 95, 250, 1, 150, 'TalkSportBet', 0.1, 3, 3, 3, '07:12', '10:13', 0.1, 484, 1, 90, 2, 0, 1, 0),
('dfff', 'dfff', 95, 250, 1, 150, 'TalkSportBet', 0.1, 3, 3, 3, '07:12', '10:13', 0.1, 485, 1, 90, 4, 0, 1, 1),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, 'Parimatch', 0.5, 3, 3, 3, '13:28', '16:29', 0.1, 493, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, '32Red', 0.5, 3, 3, 3, '15:19', '19:20', 0.1, 494, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, 'Grosvenor', 0, 0, 0, 0, '03:14', '08:16', 0, 495, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, '32Red', 0.1, 3, 3, 3, '07:16', '19:17', 0.1, 497, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 90, 250, 1, 150, '32Red', 0.1, 3, 3, 3, '07:16', '19:17', 0.1, 500, 1, 74, 5, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 90, 250, 1, 150, '32Red', 3, 3, 3, 3, '07:16', '19:17', 0.1, 501, 1, 74, 2, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, '32Red', 0, 0, 0, 0, '03:36', '06:37', 0, 502, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, 'Grosvenor', 0.12, 3, 3, 3, '08:15', '10:16', 0.1, 503, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, 'Grosvenor', 0.12, 3, 3, 3, '08:15', '10:16', 0.1, 504, 1, 74, 2, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, 'Grosvenor', 0.12, 3, 3, 3, '08:15', '10:16', 0.1, 505, 1, 74, 5, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, '32Red', 0, 0, 0, 0, '03:44', '05:45', 0, 506, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, 'Grosvenor', 0, 0, 0, 0, '03:44', '05:45', 0, 507, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 90, 250, 1, 150, 'Grosvenor', 0.5, 3, 3, 3, '02:01', '06:02', 0.1, 508, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, '32Red', 0.5, 3, 3, 3, '02:10', '07:11', 0.1, 509, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, '32Red', 0.5, 3, 3, 3, '07:41', '10:42', 0.1, 511, 1, 74, 5, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, 'Ladbrokes', 0, 0, 0, 0, '01:40', '07:42', 0, 512, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 100, 2000, 1, 150, '32Red', 0.5, 3, 3, 3, '14:35', '17:36', 0.1, 513, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 2000, 1, 150, '32Red', 0.5, 3, 3, 3, '14:35', '17:36', 0.1, 514, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 2000, 1, 150, '32Red', 3, 3, 3, 3, '14:35', '17:36', 0.1, 515, 1, 74, 2, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 1500, 1, 150, 'Partycasino', 0.5, 3, 3, 3, '07:48', '09:49', 0.1, 518, 1, 74, 0, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 1500, 1, 150, 'Partycasino', 0.5, 3, 3, 3, '07:48', '09:49', 0.1, 519, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 1500, 1, 150, 'Partycasino', 0.5, 3, 3, 3, '07:48', '09:49', 0.1, 520, 1, 74, 2, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 1500, 1, 150, 'Partycasino', 0.5, 3, 3, 3, '07:48', '09:49', 0.1, 521, 1, 74, 5, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 1500, 1, 150, 'Partycasino', 0.5, 3, 3, 3, '13:48', '21:49', 0.1, 522, 1, 74, 5, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, 'Partycasino', 0, 0, 0, 0, '01:01', '03:02', 0, 523, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, 'Partycasino', 0.1, 3, 3, 3, '06:56', '08:58', 0.1, 524, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, 'Leovegas', 0, 0, 0, 0, '14:38', '17:39', 0, 525, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 0, 0, 0, 0, 'Leovegas', 0, 0, 0, 0, '02:27', '04:28', 0, 526, 1, 74, -1, 0, 2, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 250, 1, 150, 'Leovegas', 0.5, 3, 3, 3, '14:33', '16:34', 0.1, 527, 1, 74, 1, 0, 1, 0),
('newmananna651@yahoo.com', 'Leifur22!', 95, 500, 1, 150, '32Red', 0.1, 3, 3, 3, '08:35', '10:36', 0.1, 528, 1, 74, 1, 1, 1, 0),
('123', '123', 0, 0, 0, 0, 'Casumo', 0, 0, 0, 0, '14:18', '18:19', 0, 529, 1, 91, -1, 0, 2, 0),
('123', '123', 0, 0, 0, 0, 'Casumo', 0, 0, 0, 0, '02:41', '06:42', 0, 530, 1, 91, -1, 0, 2, 0),
('dfff', 'dfff', 95, 250, 1, 1000, 'Paddy Power', 0.5, 3, 3, 3, '10:46', '11:47', 0.1, 531, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Leovegas', 0, 0, 0, 0, '02:55', '05:56', 0, 532, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Partycasino', 0, 0, 0, 0, '02:55', '08:56', 0, 533, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 0, 0, 0, 0, '32Red', 0, 0, 0, 0, '02:55', '08:56', 0, 534, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 90, 250, 1, 150, 'Leovegas', 0.1, 3, 3, 3, '07:01', '08:02', 0.1, 535, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 95, 350, 1, 100, 'Leovegas', 0.5, 3, 3, 3, '13:27', '18:28', 0.1, 537, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Leovegas', 0, 0, 0, 0, '01:19', '06:20', 0, 538, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Leovegas', 0, 0, 0, 0, '01:19', '10:20', 0, 539, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Boyle Sports', 0, 0, 0, 0, '01:19', '10:20', 0, 540, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 95, 250, 1, 100, 'Boyle Sports', 0.1, 3, 3, 3, '14:16', '17:17', 0.1, 541, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 95, 250, 1, 100, 'Boyle Sports', 0.1, 3, 3, 3, '18:16', '21:17', 0.1, 542, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Boyle Sports', 0, 0, 0, 0, '14:33', '16:34', 0, 543, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Boyle Sports', 0, 0, 0, 0, '02:36', '06:37', 0, 544, 1, 90, -1, 0, 2, 0),
('dfff', 'dfff', 95, 250, 1, 100, 'Skybet', 0.5, 3, 3, 3, '03:19', '07:20', 0.1, 545, 1, 90, 1, 0, 1, 0),
('dfff', 'dfff', 0, 0, 0, 0, 'Boyle Sports', 0, 0, 0, 0, '06:42', '10:43', 0, 546, 1, 90, -1, 1, 2, 0),
('s', 's', 95, 250, 1, 100, 'Leovegas', 0.5, 3, 3, 3, '06:37', '08:38', 0.1, 547, 1, 92, 1, 0, 1, 0),
('s', 's', 0, 0, 0, 0, 'Leovegas', 0, 0, 0, 0, '08:55', '11:56', 0, 548, 1, 92, -1, 0, 2, 0),
('s', 's', 90, 250, 1, 250, 'Leovegas', 0.5, 3, 3, 3, '07:54', '09:55', 0.1, 551, 1, 92, 1, 1, 1, 0),
('123', '123', 101, 250, 4, 53, 'Boyle Sports', 0.5, 3, 3, 3, '10:10', '13:11', 0.1, 552, 1, 91, 6, 0, 1, 0),
('123', '123', 95, 250, 4, 53, 'Boyle Sports', 0.5, 3, 3, 3, '10:10', '13:11', 0.1, 553, 1, 91, 1, 0, 1, 0),
('123', '123', 95, 250, 1, 150, 'Boyle Sports', 0.5, 3, 3, 3, '13:29', '15:30', 0.1, 554, 1, 91, 1, 0, 1, 0),
('123', '123', 0, 0, 0, 0, 'TalkSportBet', 0, 0, 0, 0, '07:43', '10:44', 0, 555, 1, 91, -1, 1, 2, 0),
('123', '123', 90, 250, 1, 100, '32Red', 0.1, 3, 3, 3, '04:45', '09:46', 0.1, 557, 1, 93, 0, 0, 1, 1),
('123', '123', 90, 250, 1, 100, 'Betstars', 0.1, 3, 3, 3, '04:45', '09:46', 0.1, 558, 1, 93, 0, 0, 1, 1),
('123', '123', 90, 250, 1, 100, 'BetUK', 0.1, 3, 3, 3, '04:45', '09:46', 0.1, 559, 1, 93, 0, 0, 1, 1),
('123', '123', 90, 250, 1, 100, 'Partycasino', 0.1, 3, 3, 3, '04:45', '09:46', 0.1, 560, 1, 93, 0, 0, 1, 1),
('123', '123', 90, 250, 1, 100, 'Coral', 0.1, 3, 3, 3, '04:45', '09:46', 0.1, 561, 1, 93, 0, 1, 1, 1);

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

--
-- Dumping data for table `tbl_template`
--

INSERT INTO `tbl_template` (`id`, `ev`, `ev_max`, `min_odd`, `max_odd`, `stake`, `count_one_horse`, `count_special_race`, `bet_count`, `refresh_time`, `bet_type`, `tracker`, `ew`, `bookie`, `start_time`, `end_time`, `template_id`) VALUES
(12, 100, 250, 1, 250, 0.3, 3, 3, 30, 1, 1, 0, 0, 'Betway', '09:25', '11:25', 1),
(13, 100, 250, 1, 250, 0.3, 3, 3, 30, 1, 1, 0, 0, 'Oddsking', '09:25', '11:25', 1),
(16, 100, 250, 1, 250, 0.1, 3, 3, 15, 1, 1, 1, 0, 'BFSB', '03:54', '05:54', 10),
(17, 100, 250, 1, 250, 0.1, 3, 3, 15, 1, 1, 1, 0, 'Bet Victor', '03:54', '05:54', 10);

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
(1, 'admin', 'admin', 0, '2020-12-16 09:18:51', '2023-03-27 04:27:42'),
(19, 'Hounds', 'sam123!@', 1, '2021-02-11 08:34:09', '2021-02-24 09:38:15'),
(20, 'Will', 'sam123!@', 1, '2021-02-11 08:34:44', '2022-03-03 07:29:43');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_bet_history`
--
ALTER TABLE `tbl_bet_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3302;

--
-- AUTO_INCREMENT for table `tbl_group_schedule`
--
ALTER TABLE `tbl_group_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_horsedata`
--
ALTER TABLE `tbl_horsedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6882;

--
-- AUTO_INCREMENT for table `tbl_key`
--
ALTER TABLE `tbl_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340643;

--
-- AUTO_INCREMENT for table `tbl_machine`
--
ALTER TABLE `tbl_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'bot id', AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_manualhorse`
--
ALTER TABLE `tbl_manualhorse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

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
