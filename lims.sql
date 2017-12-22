-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2017 at 10:12 AM
-- Server version: 5.5.58-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lims`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`) VALUES
(1, 'Bsc.TE'),
(2, 'Bsc.CS,'),
(3, 'Bsc.CIT'),
(4, 'Bsc.ETE');

-- --------------------------------------------------------

--
-- Table structure for table `lab_exercise`
--

CREATE TABLE IF NOT EXISTS `lab_exercise` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `title` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lab_exercise`
--

INSERT INTO `lab_exercise` (`id`, `code`, `title`, `description`, `date`) VALUES
(1, 'IS243', 'KODE', '', '2017-09-28'),
(2, 'TE100', 'SIJUI', 'Utajua too.', '2017-10-02'),
(3, 'TE400', 'FYP', 'Final Year Project', '2017-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(15) NOT NULL,
  `componentID` int(15) NOT NULL,
  `quantity` int(2) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(15) NOT NULL,
  `componentID` int(10) NOT NULL,
  `quantity` int(2) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `code`) VALUES
(1, 'Analogue electronics', 'TE341'),
(2, 'Digital electronics', 'TE342');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `reg_no` varchar(15) NOT NULL,
  `courseID` int(10) NOT NULL,
  `subjectID` int(10) NOT NULL,
  `yearOfStudy` int(1) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` varchar(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `reg_no`, `courseID`, `subjectID`, `yearOfStudy`, `role`, `status`, `username`, `password`) VALUES
(1, 'mary abel', '2014-04-02692', 1, 2, 3, 'student', 'yes', 'maryabel', '1234'),
(2, 'rose urassa', '2014-04-02700', 2, 1, 3, 'student', 'yes', '', ''),
(3, 'devotha mlyuka', '2014-04-02710', 2, 2, 3, 'student', 'yes', '', ''),
(4, 'catherine dismas', '2014-04-02720', 1, 2, 3, 'student', 'yes', '', ''),
(5, 'mwapwani mnzava', '2014-04-02728', 2, 1, 2, 'student', 'yes', 'admin', 'admin'),
(6, 'madam teyana', '', 0, 0, 0, 'lab_technician', 'yes', 'madame', 'madame'),
(7, 'deogratius kwilasa', '', 0, 0, 0, 'lecturer', 'yes', 'kwilasa', 'kwilasa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
