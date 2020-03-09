-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 10:02 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aiubian_node_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `profilePicture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `name`, `email`, `phone`, `address`, `username`, `profilePicture`) VALUES
(1, 'adminName', 'adminEmail', 'adminPhn', NULL, 'admin', ''),
(2, 'abc', 'nazibmahfuz60@gmail.com', '.135', 'dfvfd', 'nazib', ''),
(4, 'Shourov Islam', 'spislam15@gmail.com', '5645646', NULL, 'SpIslam', '1583689178614-mahbub.png'),
(5, 'Ali Hasan', 'alihasa247@gmail.com', '012588', 'rtyuiop', 'alihasan', '1583764464194-mito.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `aiubId` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `blocked` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `aiubId`, `username`, `password`, `email`, `department`, `type`, `blocked`) VALUES
(17, 'Nazib Mahfuz', '17-34418-1', 'nazib', '123', 'nazibmahfuz60@gmail.com', 'Faculty of Science and Technology', 'Student', ''),
(19, 'Hasib Ahmed', '17-34349-1', 'hasib', 'hasib', 'hasib3030@gmail.com', 'Faculty of Science and Technology', 'Student', ''),
(21, 'Tanvir Ahmed', '17-55558-1', 'tanvir', '123', 'tanvir25@gmail.com', 'Faculty of Science and Technology', 'Student', 'false'),
(22, 'Saifur Rahman', '17-33944-1', 'saifur', 'saifur', 'saifur.tanvir96@gmail.com', 'Faculty of Science and Technology', 'Student', 'true'),
(23, 'Alamin', '11-25859-1', 'alamin', 'alamin', 'alamin@aiub.edu', 'Faculty of Science and Technology', 'Faculty', 'false'),
(24, 'Towhid Taskin', '17-65985-1', 'Taskin', 'Taskin', 'towhid.aiub@gmail.com', 'Faculty of Engineering', 'Student', 'false'),
(25, 'Jahid Sobour', '11-56982-3', 'jahid', '123', 'sobour@gmail.com', 'Faculty of Science and Technology', 'Alumni', 'true'),
(26, 'Jala Uddin', '15-25899-1', 'jalal', 'jalal', 'jala@gmail.com', 'Faculty of Science and Technology', 'Alumni', 'false'),
(27, 'Zaheed Sabur', '14-2589-1', 'zaheed', 'zaheed', 'zaheed20@gmail.com', 'Faculty of Science and Technology', 'Alumni', 'false'),
(28, 'Ali Hasan', '000', 'alihasan', 'alihasan', 'alihasa247@gmail.com', '000', 'Admin', 'false'),
(29, 'Bal', '17-34425-1', 'bal', 'bal', 'bal@gmail.com', 'Faculty of Business Administrator', 'Student', ''),
(30, 'Tuhin', '14-2589-1', 'tuhin', 'tuhin', 'tuhin26@gmail.com', 'Faculty of Business Administrator', 'Student', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `seen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `sender`, `type`, `receiver`, `seen`) VALUES
(54, 'Tanvir', 'like', 'nazib', 'true'),
(55, 'nazib', 'like', 'nazib', 'true'),
(56, 'nazib', 'like', 'nazib', 'true'),
(57, 'nazib', 'like', 'nazib', 'true'),
(58, 'nazib', 'like', 'nazib', 'true'),
(59, 'nazib', 'like', 'nazib', 'true'),
(60, 'nazib', 'like', 'nazib', 'true'),
(61, 'nazib', 'like', 'nazib', 'true'),
(62, 'tanvir', 'like', 'saifur', 'true'),
(63, 'saifur', 'like', 'saifur', 'true'),
(64, 'saifur', 'like', 'saifur', 'true'),
(65, 'alamin', 'like', 'saifur', 'true'),
(66, 'alamin', 'like', 'saifur', 'true'),
(67, 'saifur', 'like', 'saifur', 'true'),
(68, 'alamin', 'like', 'alamin', 'true'),
(69, 'alamin', 'like', 'alamin', 'true'),
(70, 'alamin', 'like', 'alamin', 'true'),
(71, 'alamin', 'like', 'alamin', 'true'),
(72, 'alamin', 'like', 'saifur', 'false'),
(73, 'alamin', 'like', 'alamin', 'true'),
(74, 'alamin', 'like', 'alamin', 'true'),
(75, 'alamin', 'like', 'alamin', 'true'),
(76, 'alamin', 'like', 'alamin', 'true'),
(77, 'alamin', 'like', 'alamin', 'true'),
(78, 'alamin', 'like', 'alamin', 'true'),
(79, 'alamin', 'like', 'alamin', 'true'),
(80, 'alamin', 'like', 'alamin', 'true'),
(81, 'alamin', 'like', 'alamin', 'true'),
(82, 'alamin', 'like', 'alamin', 'true'),
(83, 'alamin', 'like', 'alamin', 'true'),
(84, 'alamin', 'like', 'alamin', 'true'),
(85, 'alamin', 'like', 'alamin', 'true'),
(86, 'alamin', 'like', 'alamin', 'true'),
(87, 'alamin', 'like', 'alamin', 'true'),
(88, 'alamin', 'like', 'alamin', 'true'),
(89, 'alamin', 'like', 'alamin', 'true'),
(90, 'alamin', 'like', 'alamin', 'true'),
(91, 'Taskin', 'like', 'Taskin', 'true'),
(92, 'Taskin', 'like', 'Taskin', 'true'),
(93, 'Taskin', 'like', 'Taskin', 'true'),
(94, 'Taskin', 'like', 'Taskin', 'true'),
(95, 'Taskin', 'like', 'Taskin', 'true'),
(96, 'Taskin', 'like', 'Taskin', 'true'),
(97, 'Taskin', 'like', 'Taskin', 'true'),
(98, 'Taskin', 'like', 'Taskin', 'true'),
(99, 'Taskin', 'like', 'Taskin', 'true'),
(100, 'Taskin', 'like', 'Taskin', 'true'),
(101, 'Taskin', 'like', 'Taskin', 'true'),
(102, 'Taskin', 'like', 'Taskin', 'true'),
(103, 'Taskin', 'like', 'Taskin', 'true'),
(104, 'Taskin', 'like', 'Taskin', 'true'),
(105, 'Taskin', 'like', 'Taskin', 'true'),
(106, 'Taskin', 'like', 'Taskin', 'true'),
(107, 'Taskin', 'like', 'Taskin', 'true'),
(108, 'Taskin', 'like', 'Taskin', 'true'),
(109, 'Taskin', 'like', 'Taskin', 'true'),
(110, 'Taskin', 'like', 'Taskin', 'true'),
(111, 'Taskin', 'like', 'Taskin', 'true'),
(112, 'Taskin', 'like', 'Taskin', 'true'),
(113, 'alamin', 'like', 'alamin', 'true'),
(114, 'alamin', 'like', 'jahid', 'true'),
(115, 'alamin', 'like', 'jahid', 'true'),
(116, 'alamin', 'like', 'jahid', 'true'),
(117, 'alamin', 'like', 'jahid', 'true'),
(118, 'jahid', 'like', 'jahid', 'true'),
(119, 'jahid', 'like', 'jahid', 'true'),
(120, 'jahid', 'like', 'jahid', 'true'),
(121, 'jahid', 'like', 'jahid', 'true'),
(122, 'jahid', 'like', 'jahid', 'true'),
(123, 'jalal', 'like', 'jahid', 'true'),
(124, 'jalal', 'like', 'jahid', 'true'),
(125, 'alamin', 'like', 'jahid', 'false'),
(126, 'alamin', 'like', 'jahid', 'false'),
(127, 'alamin', 'like', 'jahid', 'false'),
(128, 'alamin', 'like', 'jahid', 'false'),
(129, 'alamin', 'like', 'jahid', 'false'),
(130, 'nazib', 'like', 'nazib', 'true'),
(131, 'nazib', 'like', 'Taskin', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postId` int(11) NOT NULL,
  `postDate` varchar(50) NOT NULL,
  `text` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `video` varchar(250) NOT NULL,
  `postLike` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `type1` varchar(20) NOT NULL,
  `name1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postId`, `postDate`, `text`, `image`, `video`, `postLike`, `username`, `type1`, `name1`) VALUES
(2, '2020-03-05', 'sdfghjk.', 'alaminsir.png', 'null', '2', 'nazib', '', ''),
(3, '2020-03-05', 'xcsdfghfhyjn', 'bristy.png', 'null', '5', 'nazib', '', ''),
(4, '2020-03-05', 'dcvfdbvgfb', 'alaminsir.png', 'null', '0', 'nazib', '', ''),
(5, '2020-03-05', 'I am Tanvir,1st Post', 'alaminsir.png', 'null', '1', 'tanvir', '', ''),
(6, '2020-03-05', 'dewfrg', '1583423132312-01.jpg', 'null', '1', 'tanvir', '', ''),
(7, '2020-03-05', 'csdvfvfgdvbefvfv', '1583423187062-logo_01.png', 'null', '1', 'tanvir', '', ''),
(8, '2020-03-05', 'Gmail Logo', '1583432215149-gmail-logo-icon-7.png', 'null', '0', 'tanvir', '', ''),
(9, '2020-03-05', 'I am nazib Mahfyvbfdsjhbcsajbx', '1583432272095-candy.jpg', 'null', '0', 'tanvir', '', ''),
(11, '2020-03-06', 'Tanvir 1st post', '1583469308673-maxresdefault2.jpg', 'null', '0', 'tanvir', '', ''),
(12, '2020-03-06', 'jhsdbvcvjhdf', '1583471882383-1easuM.jpg', 'null', '2', 'tanvir', '', ''),
(13, '2020-03-06', 'Hi.I am Nazib Mahfuz. My department is Computer Science and Engineering. I love to spend my time to doing computer programming and making business valuable software..', '1583474045640-aside-definition-html-tech-purposes.jpg', 'null', '0', 'tanvir', '', ''),
(14, '2020-03-06', '', '1583474160265-95d79b150d98ddc03480f4dab4e1287b.jpg', 'null', '10', 'tanvir', '', ''),
(15, '2020-03-06', 'Hi.I am Nazib Mahfuz. My department is Computer Science and Engineering. I love to spend my time to doing computer programming and making business valuable software..', '1583474231857-download.pdf', 'null', '0', 'tanvir', '', ''),
(16, '2020-03-06', 'i love you////??????', '1583474623122-20200226_114558_2.jpg', 'null', '36', 'tanvir', '', ''),
(17, '2020-03-06', 'Hi.I am Nazib Mahfuz. My department is Computer Science and Engineering. I love to spend my time to doing computer programming and making business valuable software..', '1583474900864-hasib.png', 'null', '0', 'hasib', '', ''),
(18, '2020-03-06', '', '1583476042093-admin-settings-male.png', 'null', '8', 'hasib', '', ''),
(19, '2020-03-06', 'I am Nazib Mskjchvfdjkvbfdskjbnskldmncv;lksdmvs\r\nadsclkdnfvs\r\ndfvfdkjbvfs\r\nvdsfkjvbdsf;lv.\r\nsdfvlkjshdbvs\'df\r\nv;\r\nsdjvhjsdfvn\r\nsdflv', '1583476323885-clear-vision-glasses-3840x2160.jpg', 'null', '2', 'nazib', '', ''),
(20, '2020-03-06', 'EWRTYJUKHL;\'', '1583485496015-humex03_large.gif', 'null', '5', 'hasib', '', ''),
(21, '2020-03-06', 'My New Laptop', '1583489672226-images.jpg', 'null', '5', 'tanvir', '', ''),
(22, '2020-03-06', 'I am Tanvir. This is my first POst. I am a Red Coder. ', '1583490527131-coding-super-power.jpg', 'null', '27', 'saifur', '', ''),
(23, '2020-03-06', 'Saifur', '1583500395462-C_C++programming.jpg', 'null', '9', 'tanvir', '', ''),
(24, '2020-03-06', 'My Name is Nazib Mahfuz. I am a programmer. I write Code for fun.', '1583510761051-stock-photo-software-developer-programming-code-on-computer-abstract-computer-script-source-code-shallow-305590694.jpg', 'null', '38', 'nazib', '', ''),
(26, '2020-03-07', 'Type Testing -- >Student', '1583594883340-c-c-for-hackers-part-4-programming-vs-scripting.1280x600.jpg', 'null', '1', 'tanvir', '', ''),
(35, '2020-03-08', 'I love cricket...', '1583637867220-imafdgges.jfif', 'null', '5', 'Taskin', 'Student', '0'),
(36, '2020-03-08', 'Cricket is our pride...', '1583637898458-imahgges.jfif', 'null', '6', 'Taskin', 'Student', '0'),
(37, '2020-03-08', 'We will miss you, Mash-The Captain....', '1583637986448-indesdfsdx.jfif', 'null', '12', 'Taskin', 'Student', '0'),
(38, '2020-03-09', 'My first post..', '1583738221900-inde4x.jfif', 'null', '13', 'jahid', 'Alumni', '0'),
(40, '2020-03-09', 'Faculty Post', '1583763110261-creative-wallpaper-21087-21623-hd-wallpapers.jpg', 'null', '0', 'alamin', 'Faculty', '0'),
(41, '2020-03-09', 'dvffdvbdfg', '1583765321279-gp.png', 'null', '1', 'nazib', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `UserId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `aiub_id` varchar(15) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL,
  `linkedin` varchar(150) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `program` varchar(50) DEFAULT NULL,
  `semester` varchar(3) DEFAULT NULL,
  `thesisName` varchar(200) DEFAULT NULL,
  `skills` varchar(250) DEFAULT NULL,
  `github` varchar(200) DEFAULT NULL,
  `stackoverflow` varchar(200) DEFAULT NULL,
  `hackerrank` varchar(200) DEFAULT NULL,
  `portfolio` varchar(200) DEFAULT NULL,
  `workingPlace` varchar(150) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `workingDomain` varchar(250) DEFAULT NULL,
  `joiningDate` varchar(50) DEFAULT NULL,
  `publishedPaper` varchar(5) DEFAULT NULL,
  `thesisDomain` varchar(250) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `type` varchar(15) NOT NULL,
  `profilePicture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`UserId`, `name`, `email`, `aiub_id`, `phone`, `facebook`, `linkedin`, `department`, `program`, `semester`, `thesisName`, `skills`, `github`, `stackoverflow`, `hackerrank`, `portfolio`, `workingPlace`, `website`, `workingDomain`, `joiningDate`, `publishedPaper`, `thesisDomain`, `username`, `type`, `profilePicture`) VALUES
(8, 'Tanvir Ahmed', 'tanvir25@gmail.com', '17-55558-1', NULL, NULL, NULL, 'Faculty of Science and Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tanvir', 'Student', '1583488237744-AIUB_whole_logo.png'),
(9, 'Saifur Rahman', 'saifur.tanvir96@gmail.com', '', '01685284290', 'https://www.facebook.com/saifurrahman.tanvir/photos?lst=100008215757224%3A100007970285641%3A1583490353', 'https://www.facebook.com/saifurrahman.tanvir/photos?lst=100008215757224%3A100007970285641%3A1583490353', 'Faculty of Science and Technology', 'CSE', '10', '', 'Java, C#, php, Node js,Java, C#, php, Node js Java, C#, php, Node js Java, C#, php, Node js Java, C#, php, Node js Java, C#, php, Node js Java, C#, php, Node js Java, C#, php, Node jsJava, C#, php, Node js', 'https://www.linkedin.com/feed/', NULL, 'https://www.linkedin.com/feed/', 'https://mahfuznazib.github.io/', NULL, NULL, NULL, NULL, NULL, NULL, 'saifur', 'Student', '1583490417157-tavir.png'),
(10, 'Alamin', 'alamin@aiub.edu', '11-25859-1', '01589254878', 'https://www.facebook.com/', 'https://bd.linkedin.com/', 'Faculty of Science and Technology', NULL, NULL, NULL, 'Full Stack Developer', 'https://bd.linkedin.com/', NULL, NULL, '', NULL, NULL, 'Cyber Security ', '1st Feb 2017', NULL, NULL, 'alamin', 'Faculty', '1583742055864-alamin.png'),
(11, 'Towhid Taskin', 'towhid.aiub@gmail.com', '', '0154896321', 'https://www.facebook.com/', 'https://www.facebook.com/', 'Faculty of Engineering', 'CSE', '8', '5', 'Full Stack Developer', 'https://www.facebook.com/', NULL, 'https://www.facebook.com/', 'https://www.facebook.com/', NULL, NULL, NULL, NULL, NULL, NULL, 'Taskin', 'Student', '1583637269600-indeex.jfif'),
(12, 'Jahid Sobour', 'sobour@gmail.com', '11-56982-3', '6546451', 'https://www.facebook.com/', 'https://www.facebook.com/', 'Faculty of Science and Technology', NULL, NULL, NULL, '', 'https://www.facebook.com/', NULL, NULL, 'https://www.facebook.com/', NULL, NULL, '64512', '65465', NULL, NULL, 'jahid', 'Alumni', '1583738339599-inde5x.jfif'),
(13, 'Jala Uddin', 'jala@gmail.com', '15-25899-1', NULL, NULL, NULL, 'Faculty of Science and Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jalal', 'Alumni', '1583739239214-jala.png'),
(14, 'Zaheed Sabur', 'zaheed20@gmail.com', '14-2589-1', NULL, NULL, NULL, 'Faculty of Science and Technology', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zaheed', 'Alumni', '1583742329475-Screenshot_4.png'),
(16, 'Tuhin', 'tuhin26@gmail.com', '14-2589-1', NULL, NULL, NULL, 'Faculty of Business Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tuhin', 'Student', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
