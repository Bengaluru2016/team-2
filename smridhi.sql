-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2016 at 06:59 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smridhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmtadv`
--

CREATE TABLE IF NOT EXISTS `cmtadv` (
  `id` varchar(20) DEFAULT NULL,
  `pas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmtadv`
--

INSERT INTO `cmtadv` (`id`, `pas`) VALUES
('1', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE IF NOT EXISTS `health` (
  `id` varchar(20) DEFAULT NULL,
  `st` int(5) DEFAULT NULL,
  `md` int(5) DEFAULT NULL,
  `ed` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`id`, `st`, `md`, `ed`) VALUES
('1', 1, 2, 3),
('2', 2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE IF NOT EXISTS `mapping` (
  `id` int(11) DEFAULT NULL,
  `registration_id` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prcd`
--

CREATE TABLE IF NOT EXISTS `prcd` (
  `id` varchar(20) DEFAULT NULL,
  `pas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prcd`
--

INSERT INTO `prcd` (`id`, `pas`) VALUES
('11', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `prmg`
--

CREATE TABLE IF NOT EXISTS `prmg` (
  `id` varchar(20) DEFAULT NULL,
  `pas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prmg`
--

INSERT INTO `prmg` (`id`, `pas`) VALUES
('111', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `adhar_card_number` varchar(12) DEFAULT NULL,
  `location` text,
  `living_period` int(11) DEFAULT NULL,
  `school_before` char(1) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alt_contact_number` varchar(20) DEFAULT NULL,
  `registration_id` varchar(13) NOT NULL,
  `cat` int(5) DEFAULT '1',
  PRIMARY KEY (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first_name`, `last_name`, `dob`, `gender`, `father`, `father_occupation`, `mother`, `mother_occupation`, `language`, `income`, `adhar_card_number`, `location`, `living_period`, `school_before`, `contact_number`, `alt_contact_number`, `registration_id`, `cat`) VALUES
('sukeerth', 'cheruvu', '2016-06-15', 'm', 'Rama Mohan', 'abc', 'Anuradha', 'def', 'Telugu', 0, '789078907890', 'Hyderabad', 240, 'y', '100', '868656239', '5781c45d5842c', 1),
('Ram', 'manohar', '2016-07-06', 'm', 'xyz', 'busn', 'abc', 'hommk', 'hd', 200, '123412341234', 'Ddn', 2, 'n', '222222222222', '555555555555', '5781c45dbc4ba', 0),
('nm', 'klo', '2016-07-12', 'm', 'qwe', 'uio', 'qwe', 'kop', 'sdf', 24, '56', 'kop', 6, 'y', '23', '980', '5781c69de573a', 2),
('we', 'dvx', '2016-07-19', 'm', 'dwsaf', 'vx', 'erw', 'io', 'qwe', 890, '234', 'kop', 3, 'y', '233', '789', '5781c6a87a4ff', 1),
('dfv', 'dfvz', '2016-07-21', 'm', 'fzgzfv', 'dfz', 'fvfv', 'fcvz', 'fv', 456, '34', 'sf', 6, 'y', '345', '567', '5781cb94bd8ee', 0),
('Arpit', 'Agarwal', '2016-07-22', 'm', 'Avnish', 'Agarwal', 'varsha', 'agarwal', 'english', 2444, '1234', 'ddn', 9, 'y', '89090', '89079', '5781cc2edf008', 1);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `adhar_card_number` varchar(12) DEFAULT NULL,
  `location` text,
  `living_period` int(11) DEFAULT NULL,
  `school_before` char(1) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alt_contact_number` varchar(20) DEFAULT NULL,
  `flag` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`id`, `first_name`, `last_name`, `dob`, `gender`, `father`, `father_occupation`, `mother`, `mother_occupation`, `language`, `income`, `adhar_card_number`, `location`, `living_period`, `school_before`, `contact_number`, `alt_contact_number`, `flag`) VALUES
(1, 'Arpit', 'Agarwal', '2016-07-15', 'm', 'Avnish', 'Agarwal', 'Varsha ', 'Agarwal', 'Hindi', 2000, '123412341234', 'Dehradun', 23, 'n', '9999999999', '8888888888', '0'),
(8, 'Arpit', 'Agarwal', '2016-07-22', 'm', 'avnish', 'agarwal', 'varsha', 'agarwal', 'English', 1234, '890', 'ddn', 9, 'y', '123', '234', '0'),
(9, 'John', 'db', '2016-07-19', 'm', 'hhj', 'db', 'cvbv', 'db', 'sdf', 345, '456', 'klo', 9, 'n', '789', '678', '0'),
(10, 'rama', 'kl', '2016-07-16', 'm', 'wwe', 'db', 'ssd', 'db', 'rty', 23, '789', 'sdf', 9, 'n', '890', '234', '0'),
(11, 'johny', 'dr', '2016-07-12', 'm', 'bht', 'db', 'der', 'db', 'qwe', 678, '1234', 'jfdkv', 2, 'n', '900', '3443', '0');

-- --------------------------------------------------------

--
-- Table structure for table `survey_not_updated`
--

CREATE TABLE IF NOT EXISTS `survey_not_updated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `adhar_card_number` varchar(12) DEFAULT NULL,
  `location` text,
  `living_period` int(11) DEFAULT NULL,
  `school_before` char(1) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alt_contact_number` varchar(20) DEFAULT NULL,
  `flag` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
