-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2021 at 06:28 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mom_house_barber`
--

-- --------------------------------------------------------

--
-- Table structure for table `barber`
--

CREATE TABLE `barber` (
  `B_ID` varchar(6) NOT NULL,
  `B_Name` varchar(50) NOT NULL,
  `B_Lname` varchar(50) NOT NULL,
  `B_Nickname` varchar(20) NOT NULL,
  `B_Sex` varchar(4) NOT NULL,
  `B_Phone` varchar(10) NOT NULL,
  `B_Address` varchar(100) NOT NULL,
  `B_Skill` varchar(50) NOT NULL,
  `B_Percent` int(11) NOT NULL,
  `B_Salary` int(11) NOT NULL,
  `B_Total` int(11) NOT NULL,
  `B_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barber`
--

INSERT INTO `barber` (`B_ID`, `B_Name`, `B_Lname`, `B_Nickname`, `B_Sex`, `B_Phone`, `B_Address`, `B_Skill`, `B_Percent`, `B_Salary`, `B_Total`, `B_Img`) VALUES
('7', 'วรวัฒน์', 'รัตนโนสถ', 'เอิร์ท', 'ชาย', '095-589697', 'ฟหกหฟฟหกฟฟหก', '', 0, 0, 0, ''),
('8', 'พิชญุตย์', 'อินทารัตน์', 'ริว', 'ชาย', '0871630903', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BK_ID` varchar(6) NOT NULL,
  `C_ID` varchar(6) NOT NULL,
  `B_ID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `BK_Date` date NOT NULL,
  `BK_Time` varchar(5) NOT NULL,
  `BK_Status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_ID` varchar(6) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `C_Name` varchar(50) NOT NULL,
  `C_Lname` varchar(50) NOT NULL,
  `C_Nickname` varchar(25) NOT NULL,
  `C_Sex` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `C_Phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `C_Facebook` varchar(50) NOT NULL,
  `C_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_ID`, `Username`, `C_Name`, `C_Lname`, `C_Nickname`, `C_Sex`, `C_Phone`, `C_Facebook`, `C_Img`) VALUES
('C00001', 'weekends053', 'วรวุฒิ', 'บุญศรี', '', 'ชาย', '0955896970', 'ZBewk', 'img_user_placeholder.jpg'),
('C00003', 'earth1', 'วรวัฒน์', 'รัตนโนสถ', '', 'ชาย', '0871630903', 'Worrawat Rattanosot', 'img_user_placeholder.jpg'),
('C00004', 'theNoch', 'ธนายุทธ', 'สามสังข์', 'โนช', 'ชาย', '0651134910', 'Thanayut Samsang', 'img_user_placeholder.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hair_style`
--

CREATE TABLE `hair_style` (
  `H_ID` varchar(5) NOT NULL,
  `H_Name` varchar(50) NOT NULL,
  `H_Detail1` varchar(255) DEFAULT NULL,
  `H_Detail2` varchar(255) NOT NULL,
  `H_Detail3` varchar(255) NOT NULL,
  `H_Img1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `H_Img2` varchar(255) NOT NULL,
  `H_Img3` varchar(255) NOT NULL,
  `H_Img4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hair_style`
--

INSERT INTO `hair_style` (`H_ID`, `H_Name`, `H_Detail1`, `H_Detail2`, `H_Detail3`, `H_Img1`, `H_Img2`, `H_Img3`, `H_Img4`) VALUES
('H-01', 'ผมทรงทวิสต์เอาท์ Twist-out', 'ทรงผมสุดคูล สำหรับชาวฮิปฮอป', 'สาวกฮิปฮอปต้องคุ้นตากับผมทรงนี้แน่นอน สำหรับทรงผมชายทรงทวิสต์เอาท์ Twist-out ที่บอกเลยว่าสุดคูล!ทรงนี้จะไว้ผมที่ความยาวระดับปานกลาง', 'โดยจะหยิบเอาผมช่อเล็กมาบิดหรือปั่นเป็นเกลียว คล้ายกับเดรดร็อกแต่จะไม่แน่นและมีขนาดสั้นกว่า นอกจากนี้แล้ว ยังเพิ่มลูกเล่นด้วยการไถไล่เฟดด้านข้าง', 'HairStyle1_1.jpg', 'HairStyle1_2.jpg', 'HairStyle1_3.jpg', 'HairStyle1_4.jpg'),
('H-02', 'ผมทรงอันเดอร์คัท Undercut', 'ทรงผมสุดคูล สำหหรับชาวฮิปฮอป', 'สาวกฮิปฮอปต้องคุ้นตากับผมทรงนี้แน่นอน สำหรับทรงผมชายทรงทวิสต์เอาท์ Twist-out ที่บอกเลยว่าสุดคูล!ทรงนี้จะไว้ผมที่ความยาวระดับปานกลาง', 'โดยจะหยิบเอาผมช่อเล็กมาบิดหรือปั่นเป็นเกลียว คล้ายกับเดรดร็อกแต่จะไม่แน่นและมีขนาดสั้นกว่า นอกจากนี้แล้ว ยังเพิ่มลูกเล่นด้วยการไถไล่เฟดด้านข้าง', 'HairStyle1_1.jpg', 'HairStyle1_2.jpg', 'HairStyle1_3.jpg', 'HairStyle1_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `S_ID` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`, `S_ID`) VALUES
('admin_noch', '111111', '1'),
('barber', '111111', '2'),
('earth1', '111111', '3'),
('theNoch', '111111', '3'),
('weekends053', '123456', '3');

-- --------------------------------------------------------

--
-- Table structure for table `offwork`
--

CREATE TABLE `offwork` (
  `B_ID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `starting_Date` date NOT NULL,
  `ending_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `B_ID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Detail` varchar(50) NOT NULL,
  `PFLO_Img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `S_ID` varchar(1) NOT NULL,
  `S_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`S_ID`, `S_Name`) VALUES
('1', 'ADMIN'),
('2', 'BARBER'),
('3', 'CUSTOMER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barber`
--
ALTER TABLE `barber`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BK_ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `B_ID` (`B_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `hair_style`
--
ALTER TABLE `hair_style`
  ADD PRIMARY KEY (`H_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `offwork`
--
ALTER TABLE `offwork`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`S_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`B_ID`) REFERENCES `barber` (`B_ID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `login` (`Username`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `login` (`Username`);

--
-- Constraints for table `offwork`
--
ALTER TABLE `offwork`
  ADD CONSTRAINT `offwork_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `barber` (`B_ID`);

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `barber` (`B_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
