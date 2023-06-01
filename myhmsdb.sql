-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 08:15 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1),
(1, 14, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'Tiwary', 450, '2023-05-27', '12:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointmenttb_view`
-- (See below for the actual view)
--
CREATE TABLE `appointmenttb_view` (
`ID` int(11)
,`appid` int(11)
,`apptime` time
);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('Kate', 'stephaniekate.ledesma@msugensan.edu.ph', '9957220171', 'fast transaction. ty!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abbis', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450),
('Kate', '', '', 'Neurology', 3000),
('Gabriel', '', '', 'Anesthesiology', 3000),
('Alexis', '', '', 'Surgery', 3000),
('Akeesha', '', '', 'Pharmacology', 4000);

--
-- Triggers `doctb`
--
DELIMITER $$
CREATE TRIGGER `docFeesUpdate` BEFORE INSERT ON `doctb` FOR EACH ROW BEGIN
    IF NEW.docFees < 3000 THEN
        SET NEW.docFees = 3000; -- Set minimum fee to 3000
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `doctb_view`
-- (See below for the actual view)
--
CREATE TABLE `doctb_view` (
`username` varchar(50)
,`spec` varchar(50)
,`docFees` int(5)
);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'lovesick', 'cold treatment', 'hugs & kiss'),
('Tiwary', 1, 14, 'Ram', 'Kumar', '2023-05-27', '12:00:00', 'miss', 'na kita', 'baby hindi ko na kaya');

-- --------------------------------------------------------

--
-- Stand-in structure for view `prestb_view`
-- (See below for the actual view)
--
CREATE TABLE `prestb_view` (
`doctor` varchar(50)
,`fname` varchar(50)
,`lname` varchar(50)
,`disease` varchar(250)
,`allergy` varchar(250)
,`prescription` varchar(1000)
);

-- --------------------------------------------------------

--
-- Structure for view `appointmenttb_view`
--
DROP TABLE IF EXISTS `appointmenttb_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointmenttb_view`  AS SELECT `appointmenttb`.`ID` AS `ID`, `appointmenttb`.`pid` AS `appid`, `appointmenttb`.`apptime` AS `apptime` FROM `appointmenttb` ;

-- --------------------------------------------------------

--
-- Structure for view `doctb_view`
--
DROP TABLE IF EXISTS `doctb_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `doctb_view`  AS SELECT `doctb`.`username` AS `username`, `doctb`.`spec` AS `spec`, `doctb`.`docFees` AS `docFees` FROM `doctb`;

-- --------------------------------------------------------

--
-- Structure for view `prestb_view`
--
DROP TABLE IF EXISTS `prestb_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prestb_view`  AS SELECT `prestb`.`doctor` AS `doctor`, `prestb`.`fname` AS `fname`, `prestb`.`lname` AS `lname`, `prestb`.`disease` AS `disease`, `prestb`.`allergy` AS `allergy`, `prestb`.`prescription` AS `prescription` FROM `prestb`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `pid` (`pid`,`docFees`,`userStatus`,`doctorStatus`),
  ADD KEY `docFees` (`docFees`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD KEY `docFees` (`docFees`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `prestb`
--
ALTER TABLE `prestb`
  ADD KEY `pid` (`pid`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD CONSTRAINT `appointmenttb_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `appointmenttb_ibfk_2` FOREIGN KEY (`docFees`) REFERENCES `doctb` (`docFees`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prestb`
--
ALTER TABLE `prestb`
  ADD CONSTRAINT `prestb_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `prestb_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `appointmenttb` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- Create users and assign passwords

CREATE USER 'doctor'@'localhost' IDENTIFIED BY 'doctor123';
CREATE USER 'patient'@'localhost' IDENTIFIED BY 'patient123';
CREATE USER 'receptionist'@'localhost' IDENTIFIED BY 'receptionist123';
CREATE USER 'kate'@'localhost' IDENTIFIED BY 'jessikat45';

CREATE ROLE kate1;
CREATE ROLE receptionist1;
CREATE ROLE doctor1;
CREATE ROLE patient1;

GRANT kate TO 'kate1'@'localhost';
GRANT receptionist TO 'receptionist1'@'localhost';
GRANT doctor TO 'doctor1'@'localhost';
GRANT patient TO 'patient1'@'localhost';

-- Grant privileges to user kate
GRANT ALL PRIVILEGES ON *.* TO 'kate'@'localhost' WITH GRANT OPTION;

GRANT SELECT, INSERT, UPDATE, DELETE ON myhmsdb.* TO 'receptionist1'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON myhmsdb.* TO 'doctor1'@'localhost';
REVOKE SELECT, INSERT, UPDATE, DELETE ON myhmsdb.admintb FROM 'doctor1'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON myhmsdb.* TO 'patient1'@'localhost';
REVOKE SELECT, INSERT, UPDATE, DELETE ON myhmsdb.admintb FROM 'patient1'@'localhost';

---------------------------

-- Grant privileges to user receptionist on admintb table
GRANT INSERT, SELECT, UPDATE ON myhmsdb.admintb TO 'receptionist'@'localhost';

-- Grant privileges to user receptionist on contact table
GRANT INSERT, SELECT, UPDATE ON myhmsdb.contact TO 'receptionist'@'localhost';

-- Grant privileges to user doctor on contact table
GRANT INSERT, SELECT ON myhmsdb.contact TO 'doctor'@'localhost';

-- Grant privileges to user patient on contact table
GRANT INSERT, SELECT ON myhmsdb.contact TO 'patient'@'localhost';

-- Grant privileges to user receptionist on doctb table
GRANT SELECT, INSERT, UPDATE, DELETE ON myhmsdb.doctb TO 'receptionist'@'localhost';

-- Grant privileges to user doctor on doctb table
GRANT SELECT, INSERT ON myhmsdb.doctb TO 'doctor'@'localhost';

-- Grant privileges to user patient on doctb table
GRANT SELECT ON myhmsdb.doctb TO 'patient'@'localhost';

-- Grant privileges to user receptionist on appointmenttb table
GRANT SELECT ON myhmsdb.appointmenttb TO 'receptionist'@'localhost';

-- Grant privileges to user doctor on appointmenttb table
GRANT SELECT, INSERT, UPDATE, DELETE ON myhmsdb.appointmenttb TO 'doctor'@'localhost';

-- Grant privileges to user patient on appointmenttb table
GRANT SELECT, INSERT, UPDATE, DELETE ON myhmsdb.appointmenttb TO 'patient'@'localhost';

-- Grant privileges to user receptionist on patreg table
GRANT SELECT ON myhmsdb.patreg TO 'receptionist'@'localhost';

-- Grant privileges to user doctor on patreg table
GRANT SELECT ON myhmsdb.patreg TO 'doctor'@'localhost';

-- Grant privileges to user patient on patreg table
GRANT SELECT, INSERT ON myhmsdb.patreg TO 'patient'@'localhost';

-- Grant privileges to user receptionist on prestb table
GRANT SELECT ON myhmsdb.prestb TO 'receptionist'@'localhost';

-- Grant privileges to user doctor on prestb table
GRANT SELECT, UPDATE ON myhmsdb.prestb TO 'doctor'@'localhost';

------------------

DELIMITER //
CREATE PROCEDURE GetPatientCount()
BEGIN
    DECLARE count INT;
    SELECT COUNT(*) INTO count FROM patreg;
    SELECT count;
END //
DELIMITER ;

CALL GetPatientCount();

-------------------------

DELIMITER //

CREATE TRIGGER docFeesUpdate
BEFORE INSERT ON doctb
FOR EACH ROW
BEGIN
    IF NEW.docFees < 3000 THEN
        SET NEW.docFees = 3000; -- Set minimum fee to 3000
    END IF;
END //

DELIMITER ;

SELECT * FROM doctb;

--------------------
