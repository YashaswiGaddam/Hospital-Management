-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2024 at 02:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` varchar(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, '$130', '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 0, 0, '2024-04-14 18:53:57'),
(2, 'ENT', 1, 2, '$100', '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 0, '2024-04-14 18:53:53'),
(3, 'ENT', 1, 1, '$130', '2024-04-10', '9:45 AM', '2024-04-13 04:16:24', 0, 0, '2024-04-14 18:54:02'),
(4, 'ENT', 1, 1, '$100', '2024-04-24', '12:00 PM', '2024-04-14 18:27:47', 0, 1, '2024-04-14 18:31:27'),
(5, 'Endocrinologists', 2, 1, '$120', '2024-04-18', '11:00 AM', '2024-04-14 18:28:20', 1, 0, '2024-04-14 18:33:36'),
(6, 'Endocrinologists', 2, 1, '$120', '2024-04-23', '6:00 AM', '2024-04-14 18:30:19', 0, 0, '2024-04-14 18:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `availability` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`, `availability`) VALUES
(1, 'ENT', 'Dr. Anuj kumar', 'A 123 XYZ Apartment Raj Nagar Ext Ghaziabad', '$175', 142536250, 'anujk123@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2024-04-27 09:18:51', 1),
(2, 'Endocrinologists', 'Dr. Charu Dua', 'X 1212 ABC Apartment Laxmi Nagar New Delhi ', '$125', 1231231230, 'charudua12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-04 01:06:41', '2024-04-15 13:22:14', 0),
(3, 'Orthopedics', 'Dr. John Smith', '123 Main Street, Cityville', '$150', 5551234567, 'john.smith@gmail.com', 'a948326d81e37b96fac162cbb75dc2b2', '2024-04-15 13:16:43', '2024-04-15 13:33:03', 0),
(4, 'Internal Medicine', 'Dr. Emily Jones', '456 Elm Avenue, Townsville', '$120', 5559876543, 'emily.jones@gmail.com', '2572bd153ca1754a2b74535dd59dcf12', '2024-04-15 13:17:51', '2024-04-15 13:33:05', 0),
(5, 'Obstetrics and Gynecology', 'Dr. Sarah Patel', '789 Oak Road, Villageton', '$180', 5553217890, 'sarah.patel@gmail.com', '6e8cedafc2f8fbb171137b59b739a76e', '2024-04-15 13:19:00', '2024-04-15 13:33:11', 0),
(6, 'Dermatology', 'Dr. Michael Lee', '101 Pine Lane, Hamletsville', '$130', 5554567890, 'michael.lee@gmail.com', 'fdc5c590822eb14b0eec44bcc4607c29', '2024-04-15 13:20:15', '2024-04-15 13:33:14', 0),
(7, 'Pediatrics', 'Dr. Maria Garcia', '202 Maple Drive, Suburbia', '$100', 5552345678, 'maria.garcia@gmail.com', '36f244f6284c067c7b1ce64bfacb411b', '2024-04-15 13:21:11', '2024-04-15 13:33:16', 0),
(8, 'Radiology', 'Dr. Kevin Wilson', '333 Cedar Drive, Villageville', '$170', 6789012345, 'kevin.wilson@gmail.com', '12cb3e04638135743685ec50b8dd1478', '2024-04-15 13:23:47', '2024-04-15 13:33:19', 0),
(9, 'General Surgery', 'Dr. Andrew Taylor', '444 Birch Street, Townsberg', '$190', 7890123456, 'andrew.taylor@gmail.com', '63689074475135aa94bc31c6652a37a6', '2024-04-15 13:24:43', '2024-04-15 13:33:22', 0),
(10, 'Ophthalmology', 'Dr. Jennifer White', '555 Oakwood Avenue, Cityburg', '$160', 8901234567, 'jennifer.white@gmail.com', 'ecc312b6b7dc2924f074bd66f51230d9', '2024-04-15 13:25:45', '2024-04-15 13:33:24', 0),
(11, 'Anesthesia', 'Dr. David Lee', '666 Pine Lane, Villagetown', '$210', 9012345678, 'david.lee@gmail.com', '41acb0d0d2a38e77f132fbcf6d83bdc3', '2024-04-15 13:26:41', '2024-04-15 13:33:26', 0),
(12, 'Pathology', 'Dr. Amanda Moore', '777 Elm Street, Hamletville', '$140', 123456789, 'amanda.moore@gmail.com', '9d34173474ac7a9dd1bfe08423d7a84d', '2024-04-15 13:27:33', '2024-04-15 13:33:29', 0),
(13, 'Dental Care', 'Dr. Matthew Evans', '999 Cedar Road, Villageville', '$150', 2345678901, 'matthew.evans@gmail.com', '40d49b6ec226033d7365af8083bb7111', '2024-04-15 13:28:49', '2024-04-15 13:33:31', 0),
(14, 'Dermatologists', 'Dr. Sophia Turner', '111 Birch Lane, Cityville', '$190', 3456789012, 'sophia.turner@gmail.com', 'd3724a1b57a905b7e7bcf20409865d42', '2024-04-15 13:31:58', '2024-04-15 13:33:34', 0),
(15, 'Neurologists', 'Dr. Olivia Adams', '333 Elm Avenue, Villagetown', '$200', 5678901234, 'olivia.adams@gmail.com', '9e6d55deb75efca263958b4918433f70', '2024-04-15 13:32:54', '2024-04-15 13:33:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'gfdgdf', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
(21, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1),
(27, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-12 18:31:44', '13-04-2024 12:17:06 AM', 1),
(28, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-13 10:57:38', '13-04-2024 06:18:35 PM', 1),
(29, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-13 12:49:26', '13-04-2024 06:20:45 PM', 1),
(30, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-13 13:12:20', NULL, 1),
(31, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-14 18:32:17', '15-04-2024 12:02:48 AM', 1),
(32, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-14 18:33:10', '15-04-2024 12:05:13 AM', 1),
(33, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-15 12:58:32', '15-04-2024 06:30:37 PM', 1),
(34, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-15 13:00:45', '15-04-2024 06:31:27 PM', 1),
(35, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 08:02:15', '27-04-2024 01:32:42 PM', 1),
(36, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 08:17:07', NULL, 1),
(37, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 08:37:49', NULL, 0),
(38, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 08:37:58', NULL, 0),
(39, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 08:38:15', '27-04-2024 02:17:03 PM', 1),
(40, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 08:47:19', '27-04-2024 02:39:13 PM', 1),
(41, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 18:36:39', '28-04-2024 11:50:28 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
(2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 18:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi india', 35, 'NA', '2022-11-06 13:18:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1),
(5, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-04-12 17:45:47', NULL, 0),
(6, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-04-12 17:45:53', NULL, 0),
(7, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-12 17:51:59', '13-04-2024 12:01:22 AM', 1),
(8, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-13 04:05:10', '13-04-2024 04:27:17 PM', 1),
(9, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-13 12:51:06', '13-04-2024 06:33:12 PM', 1),
(10, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-14 18:14:12', NULL, 1),
(11, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-14 18:22:49', '15-04-2024 12:01:57 AM', 1),
(12, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-14 18:35:25', '15-04-2024 12:06:33 AM', 1),
(13, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2024-04-14 19:02:42', NULL, 0),
(14, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-14 19:04:55', NULL, 1),
(15, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-15 12:58:05', NULL, 0),
(16, NULL, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2024-04-15 12:58:12', NULL, 0),
(17, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-15 13:01:55', '15-04-2024 06:34:12 PM', 1),
(18, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 09:09:34', NULL, 0),
(19, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2024-04-27 09:09:41', '27-04-2024 11:59:00 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male', 'johndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', NULL),
(2, 'Amit kumar', 'new Delhi india', 'New Delhi', 'male', 'amitk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 13:15:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
