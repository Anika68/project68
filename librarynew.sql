-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 04:54 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarynew`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Password` int(11) NOT NULL,
  `Sec_Q` varchar(200) NOT NULL,
  `Answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('Anika Tabusshum', 'Anika', 1234, 'What is your nick name?', 'Anika'),
('Zeba ', 'Morsheda', 1234, 'What is your nick name?', 'zeba');

-- --------------------------------------------------------

--
-- Table structure for table `i`
--

CREATE TABLE `i` (
  `Book_ID` int(11) NOT NULL,
  `BookName` varchar(200) NOT NULL,
  `Writter` varchar(200) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `Roll` int(11) NOT NULL,
  `Sname` varchar(200) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Sem` varchar(20) NOT NULL,
  `Date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `i`
--

INSERT INTO `i` (`Book_ID`, `BookName`, `Writter`, `Edition`, `Pages`, `Roll`, `Sname`, `Dept`, `Year`, `Sem`, `Date`) VALUES
(24, 'Introduction to Java Programming', 'Y.Daniel Liang', 8, 1500, 1603079, 'Protiva Ahamed', 'CSE', '2nd', 'odd', 'Aug 11, 2018'),
(476, 'Programing with C', 'Byron Gottfried', 2, 600, 1603101, 'Shreshtha Shayantica Maitra', 'CSE', '2nd', 'odd', 'Aug 16, 2018'),
(24, 'Introduction to Java Programming', 'Y.Daniel Liang', 8, 1500, 1603068, 'Anika ', 'CSE', '2nd', 'odd', 'Sep 8, 2018');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Book_ID` int(11) NOT NULL,
  `BookName` varchar(200) NOT NULL,
  `Writter` varchar(200) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `Roll` int(11) NOT NULL,
  `Sname` varchar(200) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Sem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newbook`
--

CREATE TABLE `newbook` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Writter` varchar(200) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newbook`
--

INSERT INTO `newbook` (`Book_ID`, `Name`, `Writter`, `Edition`, `Pages`) VALUES
(24, 'Introduction to Java Programming', 'Y.Daniel Liang', 8, 1500),
(476, 'Programing with C', 'Byron Gottfried', 2, 600),
(640, 'Manegerial Accounting', 'Garrison', 1, 500),
(756, 'Numerical Methods', 'SS Shrastry', 3, 600);

-- --------------------------------------------------------

--
-- Table structure for table `newstudent`
--

CREATE TABLE `newstudent` (
  `Roll_No` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Sem` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newstudent`
--

INSERT INTO `newstudent` (`Roll_No`, `Name`, `Dept`, `Year`, `Sem`) VALUES
(1603066, 'Nur E Anika Anan', 'CSE ', '2nd', 'even'),
(1603068, 'Anika ', 'CSE', '2nd', 'odd'),
(1603079, 'Protiva Ahamed', 'CSE', '2nd', 'odd'),
(1603101, 'Shreshtha Shayantica Maitra', 'CSE', '2nd', 'odd');

-- --------------------------------------------------------

--
-- Table structure for table `return_b`
--

CREATE TABLE `return_b` (
  `Roll` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Dept` varchar(20) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Sem` varchar(20) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Bname` varchar(200) NOT NULL,
  `Writter` varchar(200) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Pages` int(11) NOT NULL,
  `DOI` varchar(20) NOT NULL,
  `DOR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_b`
--

INSERT INTO `return_b` (`Roll`, `Name`, `Dept`, `Year`, `Sem`, `Book_ID`, `Bname`, `Writter`, `Edition`, `Pages`, `DOI`, `DOR`) VALUES
(1603068, 'Anika ', 'CSE', '2nd', 'odd', 640, 'Manegerial Accounting', 'Garrison', 1, 500, 'Aug 7, 2018', 'Aug 10, 2018'),
(1603068, 'Anika ', 'CSE', '2nd', 'odd', 640, 'Manegerial Accounting', 'Garrison', 1, 500, 'Aug 7, 2018', 'Aug 10, 2018'),
(1603068, 'Anika ', 'CSE', '2nd', 'odd', 24, 'Introduction to Java Programming', 'Y.Daniel Liang', 8, 1500, 'Aug 11, 2018', 'Aug 12, 2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `newbook`
--
ALTER TABLE `newbook`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `newstudent`
--
ALTER TABLE `newstudent`
  ADD PRIMARY KEY (`Roll_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
