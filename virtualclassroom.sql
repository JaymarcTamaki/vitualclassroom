-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 07:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtualclassroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `courseCode`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(175, 'copy that!', 'ca101_a', 'lue_worley', 'liam_moore', '2021-06-21 20:23:50', 'no', 651),
(176, 'demo comment!', 'ca101_a', 'stephanie_carter', 'liam_moore', '2021-06-28 23:07:57', 'no', 654),
(177, 'this is a demo comment from a student', 'ca101_a', 'stephanie_carter', 'liam_moore', '2021-06-28 23:08:18', 'no', 653),
(179, 'updated*', '', 'liam_moore', '', '2021-06-28 23:11:38', 'no', 655),
(182, 'kindly download the file and you can use it for the assignment just upload it at the assignment section', 'math_g7_a', 'david_laud', 'jaymarc_lazaro', '2022-11-20 15:32:05', 'no', 672),
(183, 'opo', 'math_g7_a', 'jaymarc_lazaro', 'jaymarc_lazaro', '2022-11-20 15:40:13', 'no', 672),
(184, '100', 'math_g7_a', 'david_laud', 'david_laud', '2022-11-22 00:35:57', 'no', 665);

-- --------------------------------------------------------

--
-- Table structure for table `createclass`
--

CREATE TABLE `createclass` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `className` varchar(50) NOT NULL,
  `section` varchar(25) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `num_posts` int(11) NOT NULL,
  `student_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createclass`
--

INSERT INTO `createclass` (`id`, `username`, `className`, `section`, `subject`, `courseCode`, `date`, `num_posts`, `student_array`) VALUES
(108, 'david_laud', 'math_g7', 'A', 'MATH', 'math_g7_a', '2022-11-15', 0, ' ,jaymarc_lazaro ,'),
(109, 'magat_magatma', 'english_g10', 'B', 'ENGLISH', 'english_g10_b', '2022-11-15', 0, 'jaymarc_lazaro ,'),
(111, 'david_laud', 'Filipino_8', 'D', 'Filipino', 'filipino_8_d', '2022-11-15', 0, ''),
(115, 'david_laud', 'TLE_10', 'D', 'TLE', 'tle_10_d', '2022-11-15', 0, ' , , , ,jaymarc_lazaro ,'),
(116, 'david_laud', 'FILIPINO_8', 'Z', 'FILIPINO', 'filipino_8_z', '2022-11-20', 0, 'jc_vergara ,audrey_velasco ,'),
(117, 'david_laud', 'AP', 'A', 'AralingPanlipunan', 'ap_a', '2022-11-21', 0, 'jaymarc_lazaro ,jc_vergara ,audrey_velasco ,audrey_velasco ,');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `act1` int(11) NOT NULL,
  `act2` int(11) NOT NULL,
  `act3` int(11) NOT NULL,
  `quiz1` int(11) NOT NULL,
  `quiz2` int(11) NOT NULL,
  `quiz3` int(11) NOT NULL,
  `as1` int(11) NOT NULL,
  `as2` int(11) NOT NULL,
  `as3` int(11) NOT NULL,
  `ave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `username`, `act1`, `act2`, `act3`, `quiz1`, `quiz2`, `quiz3`, `as1`, `as2`, `as3`, `ave`) VALUES
(1, 'audrey_velasco', 100, 100, 100, 40, 40, 40, 50, 50, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `joinclass`
--

CREATE TABLE `joinclass` (
  `user_id_fk` int(11) NOT NULL,
  `class_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joinclass`
--

INSERT INTO `joinclass` (`user_id_fk`, `class_id_fk`) VALUES
(1, 108),
(1, 110),
(1, 112),
(1, 115),
(1, 117),
(4, 116),
(4, 117),
(5, 112),
(5, 116),
(5, 117),
(64, 0),
(65, 0),
(65, 104),
(65, 105),
(65, 106),
(66, 104),
(66, 105),
(66, 106),
(67, 104),
(67, 107),
(68, 104),
(68, 106),
(69, 104),
(69, 105),
(69, 106),
(70, 0),
(71, 0),
(71, 104),
(71, 108),
(71, 109);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opended` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opended`, `viewed`) VALUES
(42, 'liam_moore', 'lue_worley', 'Lue Worley commented on your post', 'post.php?id=651', '2021-06-21 22:23:50', 'no', 'no'),
(43, 'liam_moore', 'stephanie_carter', 'Stephanie Carter commented on your post', 'post.php?id=654', '2021-06-28 23:07:57', 'no', 'no'),
(44, 'liam_moore', 'stephanie_carter', 'Stephanie Carter commented on your post', 'post.php?id=653', '2021-06-28 23:08:18', 'no', 'no'),
(45, 'liam_moore', 'stephanie_carter', 'Stephanie Carter posted on your class room', 'post.php?id=', '2021-06-28 23:08:44', 'no', 'no'),
(46, 'stephanie_carter', 'liam_moore', 'Liam Moore commented on your post', 'post.php?id=655', '2021-06-28 23:11:26', 'no', 'no'),
(47, '', 'liam_moore', 'Liam Moore commented on your post', 'post.php?id=655', '2021-06-28 23:11:38', 'no', 'no'),
(48, '', 'liam_moore', 'Liam Moore commented on your class room post', 'post.php?id=655', '2021-06-28 23:11:38', 'no', 'no'),
(49, 'liam_moore', 'stephanie_carter', 'Stephanie Carter posted on your class room', 'post.php?id=', '2021-06-28 23:12:24', 'no', 'no'),
(50, 'liam_moore', 'ben_shaw', 'Ben Shaw posted on your class room', 'post.php?id=', '2021-06-28 23:14:52', 'no', 'no'),
(51, 'liam_moore', 'stephanie_carter', 'Stephanie Carter posted on your class room', 'post.php?id=', '2021-06-28 23:15:14', 'no', 'no'),
(52, 'liam_moore', 'luz_haynes', 'Luz Haynes posted on your class room', 'post.php?id=', '2021-06-28 23:16:47', 'no', 'no'),
(53, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-15 17:16:50', 'no', 'no'),
(54, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-15 17:16:56', 'no', 'no'),
(55, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-15 17:16:56', 'no', 'no'),
(56, 'jaymarc_lazaro', 'david_laud', 'David Laud commented on your post', 'post.php?id=662', '2022-11-15 17:17:32', 'no', 'no'),
(57, 'magat_magatma', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-15 17:23:08', 'no', 'no'),
(58, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro commented on your post', 'post.php?id=668', '2022-11-15 23:13:11', 'no', 'no'),
(59, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-15 23:14:40', 'no', 'no'),
(60, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-15 23:51:01', 'no', 'no'),
(61, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-20 15:31:00', 'no', 'no'),
(62, 'jaymarc_lazaro', 'david_laud', 'David Laud commented on your post', 'post.php?id=672', '2022-11-20 15:32:05', 'no', 'no'),
(63, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-20 15:32:48', 'no', 'no'),
(64, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro commented on your class room post', 'post.php?id=672', '2022-11-20 15:40:13', 'no', 'no'),
(65, 'david_laud', 'jaymarc_lazaro', 'Jaymarc Lazaro posted on your class room', 'post.php?id=', '2022-11-22 12:37:55', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `edited` varchar(3) NOT NULL,
  `files` varchar(500) DEFAULT NULL,
  `fileDestination` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `courseCode`, `user_to`, `date_added`, `user_closed`, `edited`, `files`, `fileDestination`) VALUES
(651, 'this is to announce you that your online classes will start from 22nd June. please be on time :)', 'liam_moore', 'ca101_a', 'none', '2021-06-20 18:18:50', 'no', 'no', 'none', 'none'),
(652, 'Sample Questions', 'liam_moore', 'ca101_a', 'none', '2021-06-25 21:03:58', 'no', 'no', ' 60d9e4ded24d12.08285662.pdf', 'uploads/sample. 60d9e4ded24d12.08285662.pdf'),
(653, 'this is a demo post for the students!', 'liam_moore', 'ca101_a', 'none', '2021-06-28 23:04:33', 'no', 'no', 'none', 'none'),
(654, 'Coursework 01, Due: August 03 Please download the attachment below!', 'liam_moore', 'ca101_a', 'none', '2021-06-28 23:05:34', 'no', 'no', ' 60da015e796f09.87969671.pdf', 'uploads/samplecw. 60da015e796f09.87969671.pdf'),
(656, 'demo post', 'stephanie_carter', 'ca6978_b', 'liam_moore', '2021-06-28 23:12:24', 'no', 'no', 'none', 'none'),
(657, 'dummy post from student account1', 'ben_shaw', 'ca101_a', 'liam_moore', '2021-06-28 23:14:52', 'no', 'no', 'none', 'none'),
(658, 'dummy post from student account2', 'stephanie_carter', 'ca101_a', 'liam_moore', '2021-06-28 23:15:14', 'no', 'no', 'none', 'none'),
(659, 'working format has been provided below:', 'luz_haynes', 'ca101_a', 'liam_moore', '2021-06-28 23:16:47', 'no', 'no', ' 60da03ff308b19.66538301.pdf', 'uploads/fmsamplecw. 60da03ff308b19.66538301.pdf'),
(664, '', 'david_laud', 'math_g7_a', 'none', '2022-11-15 19:26:41', 'no', 'no', ' 637393919a8cd4.41447730.docx', 'uploads/SE101-Documentation (1). 637393919a8cd4.41447730.docx'),
(665, '', 'david_laud', 'math_g7_a', 'none', '2022-11-15 19:29:52', 'no', 'no', ' 63739450ea6148.10425278.docx', 'uploads/LAB_MIDTERM_EXAM. 63739450ea6148.10425278.docx'),
(670, 'hi po', 'jaymarc_lazaro', 'tle_10_d', 'david_laud', '2022-11-15 23:51:01', 'no', 'no', 'none', 'none'),
(671, 'opo', 'david_laud', 'filipino_8_z', 'none', '2022-11-20 15:20:42', 'no', 'no', ' 6379f169ee4a66.09600513.docx', 'uploads/ASSIGNMENT_NO_1_-_Gregorio_Joey. 6379f169ee4a66.09600513.docx'),
(672, 'Good morning po Sir David ask ko lang po about sa assignment 1', 'jaymarc_lazaro', 'math_g7_a', 'david_laud', '2022-11-20 15:31:00', 'no', 'no', 'none', 'none'),
(673, 'Assignment 1', 'jaymarc_lazaro', 'math_g7_a', 'david_laud', '2022-11-20 15:32:48', 'no', 'no', ' 6379f440eb4047.69617942.docx', 'uploads/Lazaro, Jaymarc D. - Activity No. 2. 6379f440eb4047.69617942.docx'),
(674, '', 'jaymarc_lazaro', 'tle_10_d', 'david_laud', '2022-11-22 12:37:55', 'no', 'no', ' 637c6e43319a34.56997946.docx', 'uploads/SE101-Documentation (1). 637c6e43319a34.56997946.docx'),
(677, 'opo', 'david_laud', 'tle_10_d', 'none', '2022-11-22 12:40:16', 'no', 'no', 'none', 'none'),
(682, '', 'david_laud', 'tle_10_d', 'none', '2022-11-22 12:44:38', 'no', 'no', ' 637c6fd68d28e3.67148079.docx', 'uploads/LAB_MIDTERM_EXAM. 637c6fd68d28e3.67148079.docx'),
(684, '', 'david_laud', 'tle_10_d', 'none', '2022-11-22 12:45:05', 'no', 'no', ' 637c6ff1a1a8c1.27220270.png', 'uploads/Final Desktop Broc en Roll smaller. 637c6ff1a1a8c1.27220270.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profilePic` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `phoneNumber` int(50) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `privilage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `profilePic`, `signup_date`, `user_closed`, `num_posts`, `phoneNumber`, `bio`, `privilage`) VALUES
(1, 'Jaymarc', 'Lazaro', 'jaymarc_lazaro', 'jaymarc.lazaro1@gmail.com', '202cb962ac59075b964b07152d234b70', 'assets/images/profilePics/deafultPP.png', '2022-11-15', 'no', 0, 0, '', 'Student'),
(2, 'David', 'Laud', 'david_laud', 'davidallen@gmail.com', '202cb962ac59075b964b07152d234b70', 'assets/images/profilePics/david_laudb0323020bdd79cef8aa0003716408982n.jpeg', '2022-11-15', 'no', 0, 2147483647, 'haha', 'Teacher'),
(3, 'Magat', 'Magatma', 'magat_magatma', 'magatmagatma@gmail.com', '202cb962ac59075b964b07152d234b70', 'assets/images/profilePics/deafultPP.png', '2022-11-15', 'no', 0, 0, '', 'Teacher'),
(4, 'Jc', 'Vergara', 'jc_vergara', 'jesus@gmail.com', '202cb962ac59075b964b07152d234b70', 'assets/images/profilePics/deafultPP.png', '2022-11-15', 'no', 0, 0, '', 'Student'),
(5, 'audrey', 'velasco', 'audrey_velasco', 'odeng@gmail.com', '202cb962ac59075b964b07152d234b70', 'assets/images/profilePics/audrey_velasco72c2a32425dcbfb65bd1caf9d32e3599n.jpeg', '2022-11-16', 'No', 0, 0, '', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createclass`
--
ALTER TABLE `createclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinclass`
--
ALTER TABLE `joinclass`
  ADD PRIMARY KEY (`user_id_fk`,`class_id_fk`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `class_id_fk` (`class_id_fk`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `createclass`
--
ALTER TABLE `createclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
