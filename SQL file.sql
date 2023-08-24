-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 07:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminName` varchar(40) DEFAULT NULL,
  `AdminPassword` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminName`, `AdminPassword`) VALUES
('Sadat', 'sadat1234'),
('Pial', 'pial1234');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AreaID` tinyint(4) NOT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `LandArea` int(11) DEFAULT NULL,
  `FertilityRate` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AreaID`, `Division`, `LandArea`, `FertilityRate`) VALUES
(1, 'Dhaka', 4000, 60),
(2, 'Khulna', 16000, 80),
(3, 'Barishal', 9000, 75),
(4, 'Chittagong', 12000, 65),
(5, 'Rangpur', 14000, 78),
(6, 'Rajshahi', 13000, 90),
(7, 'Mymensingh', 11000, 72),
(8, 'Sylhet', 13000, 85);

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `CropId` smallint(6) NOT NULL,
  `CropName` varchar(25) DEFAULT NULL,
  `CropType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`CropId`, `CropName`, `CropType`) VALUES
(1, 'Wheat', 'Rabi Crop'),
(2, 'Maize', 'Kharif Crop'),
(3, 'Sugar Cane', 'Kharif Crop'),
(4, 'Soyabean', 'Kharif Crop'),
(5, 'Paddy', 'Kharif Crop'),
(6, 'Cotton', 'Kharif Crop'),
(7, 'Barley', 'Rabi Crop'),
(8, 'Mustard', 'Rabi Crop'),
(9, 'Cabbage', 'Rabi Crop'),
(10, 'Cauliflower', 'Rabi Crop'),
(11, 'Potato', 'Rabi Crop'),
(12, 'Lentil', 'Rabi Crop');

-- --------------------------------------------------------

--
-- Table structure for table `distribution_policy`
--

CREATE TABLE `distribution_policy` (
  `DistributionID` int(11) NOT NULL,
  `AreaID` smallint(6) DEFAULT NULL,
  `ExportedFromAreaInMillion` int(11) DEFAULT NULL,
  `ImportedForAreaInMillion` int(11) DEFAULT NULL,
  `CropID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distribution_policy`
--

INSERT INTO `distribution_policy` (`DistributionID`, `AreaID`, `ExportedFromAreaInMillion`, `ImportedForAreaInMillion`, `CropID`) VALUES
(1, 1, 0, 100000000, 5),
(2, 1, 0, 100, 6),
(3, 1, 100, 0, 8),
(4, 2, 0, 0, 5),
(5, 2, 10000, 0, 6),
(6, 2, 500000, 0, 8),
(7, 3, 0, 100, 5),
(8, 3, 100000, 0, 6),
(9, 3, 1000, 0, 8),
(10, 4, 0, 10000, 5),
(11, 4, 10000, 0, 6),
(12, 4, 400000, 0, 8),
(13, 5, 0, 10000, 5),
(14, 5, 10000, 0, 6),
(15, 5, 10000, 0, 8),
(16, 6, 0, 100, 5),
(17, 6, 7000, 0, 6),
(18, 6, 2000, 0, 8),
(19, 7, 0, 100, 5),
(20, 7, 400000, 0, 6),
(21, 7, 60000, 0, 8),
(22, 8, 0, 7000, 5),
(23, 8, 9000, 0, 6),
(24, 8, 30000, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` smallint(6) NOT NULL,
  `FacultyName` varchar(25) DEFAULT NULL,
  `CourseName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `FacultyName`, `CourseName`) VALUES
(1, 'Harun-ur-Rashid', 'Soil Science'),
(2, 'Sadat Parvej', 'Introduction to modern technol'),
(3, 'Mamunur Rashid', 'Plant Breeding'),
(4, 'Abdur Rahman', 'Horticulture'),
(5, 'Pial Islam', 'Animal Husbandry'),
(6, 'Al Shafin', 'Agricultural Economics');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `FarmarID` int(11) NOT NULL,
  `FarmarName` varchar(25) DEFAULT NULL,
  `FarmingExperienceInYear` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`FarmarID`, `FarmarName`, `FarmingExperienceInYear`) VALUES
(1, 'pial', 9),
(2, 'SadatParvej', 4),
(3, 'SadatParvej', 5),
(4, 'SadatParvej', 5),
(5, 'SadatParvej', 9),
(6, 'SadatParvej', 9);

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `FertilizerID` int(11) NOT NULL,
  `FertilizerName` varchar(30) NOT NULL,
  `FertilizerType` varchar(25) DEFAULT NULL,
  `AppliedOnCropID` smallint(6) NOT NULL,
  `FertilizerEfficacyRate` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`FertilizerID`, `FertilizerName`, `FertilizerType`, `AppliedOnCropID`, `FertilizerEfficacyRate`) VALUES
(1, 'Bio Fertilizer', 'NPK', 1, '70%'),
(2, 'Diammonium Phosohate', 'NPK', 2, '73%'),
(3, 'Nitrogen', 'Nitrogeneous', 3, '68%'),
(4, 'Phosohorous', 'Phosphorous', 4, '20%'),
(5, 'Urea', 'NPK', 5, '71%'),
(6, 'Compost', 'NPK', 6, '65%'),
(7, 'Nitrogen', 'NPK', 7, '73%'),
(8, 'Nitrogen', 'Nitrogenous', 8, '62%'),
(9, 'Organic Compost-Epsom Salt', 'Ca-Mg-S-Zn', 9, '78%'),
(10, 'Epsom Salt', 'Ca-Zn-S', 10, '76%'),
(11, 'Urea', 'NPK', 11, '73%'),
(12, 'Nitrogen', 'Nitrogenous', 12, '60%');

-- --------------------------------------------------------

--
-- Table structure for table `modern_farm`
--

CREATE TABLE `modern_farm` (
  `FarmID` smallint(10) NOT NULL,
  `FarmName` varchar(60) DEFAULT NULL,
  `FarmLocation` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modern_farm`
--

INSERT INTO `modern_farm` (`FarmID`, `FarmName`, `FarmLocation`) VALUES
(1, 'Modern Agro Farm & Nutrition,Maona', 'https://goo.gl/maps/yVXsG3HNX7sSSZg67'),
(2, 'Dutch Dairy Ltd Bangladesh,Unnamed Road,Lohajang', '23.480070260518108, 90.29560060326519');

-- --------------------------------------------------------

--
-- Table structure for table `registered_students_for_courses`
--

CREATE TABLE `registered_students_for_courses` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(25) DEFAULT NULL,
  `ExperienceAsFarmerInYear` int(11) DEFAULT NULL,
  `RegisteredCourseName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registered_students_for_courses`
--

INSERT INTO `registered_students_for_courses` (`StudentID`, `StudentName`, `ExperienceAsFarmerInYear`, `RegisteredCourseName`) VALUES
(1, 'sadat', 5, 'plant breeding'),
(2, 'sadat', 5, 'plant breeding'),
(3, 'SadatParvej', 4, 'Plant Breeding'),
(4, 'pial', 7, 'Plant Breeding'),
(5, 'pial', 9, 'Agricultural Economics'),
(6, 'SadatParvej', 1, 'Soil Science'),
(7, 'SadatParvej', 4, 'Plant Breeding'),
(8, 'SadatParvej', 5, 'Plant Breeding'),
(9, 'SadatParvej', 5, 'Plant Breeding'),
(10, 'SadatParvej', 9, 'Plant Breeding'),
(11, 'SadatParvej', 9, 'Plant Breeding');

--
-- Triggers `registered_students_for_courses`
--
DELIMITER $$
CREATE TRIGGER `farmerEntry` AFTER INSERT ON `registered_students_for_courses` FOR EACH ROW BEGIN
        IF (new.ExperienceAsFarmerInYear>2) THEN
        INSERT INTO farmer(FarmarName,FarmingExperienceInYear)
        VALUES(new.StudentName,new.ExperienceAsFarmerInYear);

        end IF;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `ResearcherId` int(11) NOT NULL,
  `ResearcherName` varchar(25) DEFAULT NULL,
  `ResearchTopic` varchar(25) DEFAULT NULL,
  `MotherVariety` varchar(50) NOT NULL,
  `InventedVariety` varchar(100) DEFAULT NULL,
  `YearofRelease` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`ResearcherId`, `ResearcherName`, `ResearchTopic`, `MotherVariety`, `InventedVariety`, `YearofRelease`) VALUES
(1, 'National Seed Board', 'Rice', 'IR8', 'Iratom-24', 1975),
(2, 'National Seed Board', 'Rice', 'IR8', 'Iratom-38', 1975),
(3, 'National Seed Board', 'Rice', 'Nizersail', 'Binasail', 1987),
(4, 'National Seed Board', 'Jute', 'ID-154', 'Atompat-38', 1988),
(5, 'Bangladesh Jute Research ', 'Jute', 'Tossa jute', 'Snow White', 2010),
(6, 'Bangladesh Jute Research ', 'Jute', 'Local White Jute', 'Crack the genome of white jute', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `training_course`
--

CREATE TABLE `training_course` (
  `CourseId` tinyint(10) DEFAULT NULL,
  `CourseName` varchar(50) DEFAULT NULL,
  `CourseDuration` char(4) DEFAULT NULL,
  `CourseCost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_course`
--

INSERT INTO `training_course` (`CourseId`, `CourseName`, `CourseDuration`, `CourseCost`) VALUES
(1, 'Introduction to modern technology for agriculture', '60H', 1000),
(2, 'Plant Breeding', '45H', 1600),
(3, 'Soil Science', '40H', 900),
(4, 'Horticulture', '55H', 1400),
(5, 'Animal Husbandry', '30H', 1100),
(6, 'Agricultural Economics', '50H', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(25) DEFAULT NULL,
  `UserEmail` varchar(30) DEFAULT NULL,
  `UserPassword` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `UserName`, `UserEmail`, `UserPassword`) VALUES
(1, 'SadatParvej', 'spprottoy@gmail.com', 'llll'),
(2, 'pial', 'pial@gmail.com', 'aaaa'),
(3, 'piall', 'pilu@gmail.com', 'ssss'),
(4, 'abul', 'abul@gmail.com', '1234'),
(5, 'imon', 'imon@gmail.com', 'abcd'),
(6, 'abrar', 'abrar@gmail.com', 'abrar'),
(7, 'fb', 'mrunpredictable077@gmail.com', 'sadatp'),
(8, 'fb', 'sadatprottoy@gmail.com', 'qqqq');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `Division` varchar(20) DEFAULT NULL,
  `Weather` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AreaID`);

--
-- Indexes for table `crop`
--
ALTER TABLE `crop`
  ADD PRIMARY KEY (`CropId`);

--
-- Indexes for table `distribution_policy`
--
ALTER TABLE `distribution_policy`
  ADD PRIMARY KEY (`DistributionID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`FarmarID`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`FertilizerID`);

--
-- Indexes for table `modern_farm`
--
ALTER TABLE `modern_farm`
  ADD PRIMARY KEY (`FarmID`);

--
-- Indexes for table `registered_students_for_courses`
--
ALTER TABLE `registered_students_for_courses`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`ResearcherId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AreaID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `crop`
--
ALTER TABLE `crop`
  MODIFY `CropId` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `distribution_policy`
--
ALTER TABLE `distribution_policy`
  MODIFY `DistributionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `FarmarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registered_students_for_courses`
--
ALTER TABLE `registered_students_for_courses`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
