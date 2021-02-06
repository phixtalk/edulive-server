-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 05:00 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edulive`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `owner_id`, `caption`, `institution`, `department`, `createdAt`, `UpdatedAt`) VALUES
(12, 9, 'Java 8', 'Unn', 'Electrical Engineering', '2019-03-10 08:17:22', '2019-03-10 08:17:22'),
(13, 9, 'Php', 'Unn', 'Electrical Engineering', '2019-03-10 08:19:09', '2019-03-10 08:19:09'),
(14, 10, 'Python', 'Esut', 'Computer Science', '2019-03-10 08:20:37', '2019-03-10 08:20:37'),
(15, 10, 'Matlab', 'Esut', 'Computer Science', '2019-03-10 08:20:53', '2019-03-10 08:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `courses_announcements`
--

CREATE TABLE `courses_announcements` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_announcements`
--

INSERT INTO `courses_announcements` (`id`, `cid`, `name`, `text`, `timestamp`) VALUES
(12, 13, 'Title 2', 'Do your assignments', '2019-03-19 10:34:10'),
(13, 13, 'Title 3', 'Exams starts on monday', '2019-03-19 10:34:27'),
(14, 13, 'Title 3', 'Exam starts on monday', '2019-03-19 10:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `courses_files`
--

CREATE TABLE `courses_files` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `filedir` text,
  `filetype` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_files`
--

INSERT INTO `courses_files` (`id`, `cid`, `name`, `description`, `filedir`, `filetype`, `timestamp`) VALUES
(2, 13, 'File Title', NULL, 'assets/uploads/9c3b9e766ee883b637493261a2253a0fb22e9147e.jpg', 'jpg', '2019-03-20 13:17:25'),
(3, 13, 'New Assignment', 'This material is for your consumption alone, read very carefully', 'assets/uploads/9ac7c483efcaf7c6aab35dfc0f114ec5f566d2424.jpg', 'jpg', '2019-03-20 13:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `courses_polls`
--

CREATE TABLE `courses_polls` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `question` text,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `option_3` varchar(255) DEFAULT NULL,
  `option_4` varchar(255) DEFAULT NULL,
  `votes_1` smallint(6) DEFAULT NULL,
  `votes_2` smallint(6) DEFAULT NULL,
  `votes_3` smallint(6) DEFAULT NULL,
  `votes_4` smallint(6) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_polls`
--

INSERT INTO `courses_polls` (`id`, `cid`, `status`, `question`, `option_1`, `option_2`, `option_3`, `option_4`, `votes_1`, `votes_2`, `votes_3`, `votes_4`, `timestamp`) VALUES
(8, 13, NULL, 'Poll2', 'One', 'Two', 'Three', NULL, NULL, NULL, NULL, NULL, '2019-03-24 18:23:47'),
(13, 13, NULL, 'My Polls', 'True', 'False', 'Indifference', NULL, NULL, NULL, NULL, NULL, '2019-03-24 18:47:54'),
(14, 13, NULL, 'New Polls', 'Barack', 'Obama', 'Trump', NULL, NULL, NULL, NULL, NULL, '2019-03-24 18:48:11'),
(15, 13, NULL, 'What do you like', 'Cars', 'Bikes', 'Trains', NULL, NULL, NULL, NULL, NULL, '2019-03-25 06:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firebasetoken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `phone`, `email`, `password`, `firebasetoken`, `createdAt`, `updatedAt`) VALUES
(9, 'Christian', 'Ofoefule', '08036302551', 'ofoefule.c@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-02-21 08:04:43', '2019-02-21 08:04:43'),
(10, 'Chibuzo', 'Nnonyelum', '08033223311', 'chibuzo@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-09 21:00:18', '2019-03-09 21:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `users_courses`
--

CREATE TABLE `users_courses` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `date_joined` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_courses`
--

INSERT INTO `users_courses` (`id`, `uid`, `cid`, `approved`, `date_joined`) VALUES
(1, 9, 12, 1, '2019-03-10 08:17:22'),
(3, 10, 14, 1, '2019-03-10 08:20:37'),
(4, 10, 15, 1, '2019-03-10 08:20:53'),
(8, 9, 15, 0, '2019-03-19 07:53:38'),
(9, 9, 14, 0, '2019-03-19 09:36:14'),
(10, 9, 13, 1, '2019-03-24 00:00:00'),
(12, 10, 13, 1, '2019-03-26 09:50:54'),
(27, 10, 12, 0, '2019-03-29 09:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `users_news`
--

CREATE TABLE `users_news` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `message` text,
  `createdon` timestamp NULL DEFAULT NULL,
  `isRead` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_news`
--

INSERT INTO `users_news` (`id`, `uid`, `message`, `createdon`, `isRead`) VALUES
(2, 9, 'Nnonyelum Chibuzo just sent a request to join your course: Java 8.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-03-29 08:03:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_polls`
--

CREATE TABLE `users_polls` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `vote` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_polls`
--

INSERT INTO `users_polls` (`id`, `uid`, `pid`, `vote`, `timestamp`) VALUES
(1, 9, 15, 'Bikes', '2019-03-25 07:20:56'),
(2, 10, 15, 'Trains', '2019-03-26 08:53:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_announcements`
--
ALTER TABLE `courses_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_files`
--
ALTER TABLE `courses_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_polls`
--
ALTER TABLE `courses_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_courses`
--
ALTER TABLE `users_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_news`
--
ALTER TABLE `users_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_polls`
--
ALTER TABLE `users_polls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `courses_announcements`
--
ALTER TABLE `courses_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `courses_files`
--
ALTER TABLE `courses_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `courses_polls`
--
ALTER TABLE `courses_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users_courses`
--
ALTER TABLE `users_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users_news`
--
ALTER TABLE `users_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_polls`
--
ALTER TABLE `users_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
