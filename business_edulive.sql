-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2020 at 02:55 AM
-- Server version: 5.6.47
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_edulive`
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
(15, 10, 'Matlab', 'Esut', 'Computer Science', '2019-03-10 08:20:53', '2019-03-10 08:20:53'),
(16, 10, 'system analysis and design', 'Federal University of technology Owerri', 'information management technology', '2019-03-27 02:08:04', '2019-03-27 02:08:04'),
(17, 11, 'system programming using c++', 'futo', 'imt', '2019-03-27 02:21:50', '2019-03-27 02:21:50'),
(18, 9, 'Interview Courses', 'Unn', 'Electrical Engineering', '2019-03-30 14:48:18', '2019-03-30 14:48:18'),
(19, 10, 'henry nnonyelu', 'futo', 'imt', '2019-03-30 15:27:23', '2019-03-30 15:27:23'),
(20, 10, 'Okeke donela', 'futo', 'Imt', '2019-03-30 15:28:14', '2019-03-30 15:28:14'),
(21, 11, 'data structure and algorithm', 'Federal University of technology owerri', 'information technology', '2019-03-31 06:04:15', '2019-03-31 06:04:15'),
(22, 11, 'isreal owen', 'fed poly', 'cs', '2019-05-02 04:39:13', '2019-05-02 04:39:13'),
(23, 11, 'management information system', 'University of Nigeria nsukka', 'computer science', '2019-08-07 04:38:48', '2019-08-07 04:38:48'),
(24, 25, 'comisionado 1', 'Cyp', 'pedagogia', '2019-10-19 14:17:42', '2019-10-19 14:17:42'),
(25, 32, 'introduction to C++', 'Federal Polytechnic Nekede', 'computer science', '2020-01-27 07:59:39', '2020-01-27 07:59:39'),
(26, 32, 'introduction to Web Development', 'Federal Polytechnic Nekede', 'computer science', '2020-01-27 08:00:31', '2020-01-27 08:00:31'),
(27, 32, 'James rojo', 'Yale university', 'computing', '2020-01-27 08:34:04', '2020-01-27 08:34:04'),
(28, 46, 'Trpa@thuyphuong.vn', '123456', '097565400', '2020-02-11 10:26:24', '2020-02-11 10:26:24'),
(30, 88, 'https://edulive.net/learner/invitatic', '', '', '2020-02-22 09:15:26', '2020-02-22 09:15:26');

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
(14, 13, 'Title 3', 'Exam starts on monday', '2019-03-19 10:34:49'),
(15, 16, 'system analysis and design', 'if you\'re offering this course, you\'re expected to submit a term paper on the 29th of March 2019', '2019-03-27 01:11:10'),
(16, 17, 'system programming using c++', 'be part of this course as is part of your school work', '2019-03-27 01:26:15'),
(17, 21, 'data structure and algorithm', 'the lecture not contains an assignment. you are to do the task and submit it latest 12 April 2019. Upload the file and don\'t bring it to my office. thanks. Dr Nnonyelu Henry.U', '2019-03-31 04:11:49'),
(18, 23, 'mis announcement', 'you are to study the mis material,surmarise and submit on the 22nd of july', '2019-08-07 02:47:11'),
(19, 26, 'web deve announcement', 'You\'re to submit a term paper on the course web development', '2020-01-27 07:23:45');

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
(3, 13, 'New Assignment', 'This material is for your consumption alone, read very carefully', 'assets/uploads/9ac7c483efcaf7c6aab35dfc0f114ec5f566d2424.jpg', 'jpg', '2019-03-20 13:35:24'),
(4, 12, 'sample file', 'file to download', 'assets/uploads/90da7f392bb330e640e404749ef290139899f6d75.png', 'png', '2019-03-26 22:22:52'),
(5, 15, 'dddddshss', 'hshshsjekd', 'assets/uploads/108d7b075f65549766c8fa6ca8dd0a71afcf415563.jpg', 'jpg', '2019-03-30 13:49:32'),
(7, 18, 'IEEE file', '', 'assets/uploads/91467c4cc28c055ff4dd6b1e3b78c19517ad89c6f.', '', '2019-03-30 13:56:35'),
(8, 15, 'gghjjkkk from cjn', 'ffdssddd', 'assets/uploads/106179e4b9880d637c06d4af19ac7c82e8ffe6a3c3.pdf', 'pdf', '2019-03-30 14:14:08'),
(9, 15, 'word from can t', 'testing', 'assets/uploads/105201f098bd426e4e3c5ec21c74d08dbcd1baf838.docx', 'docx', '2019-03-30 14:15:02'),
(10, 20, 'introduction to programming using c', 'the lecture material', 'assets/uploads/1096fcdb095b215be40341f2cdc9d15fb361e483c9.docx', 'docx', '2019-03-30 15:10:48'),
(11, 21, 'data structure and algorithms', 'this is the study material', 'assets/uploads/116e04d087d53c2632b0342cf0968a06b48a5879be.docx', 'docx', '2019-03-31 04:08:03'),
(12, 23, 'mis', 'mis material', 'assets/uploads/113a17b8b06f4d4e700b6c10ba5072c299731c8850.pdf', 'pdf', '2019-08-07 02:49:26'),
(13, 26, 'web dev', 'material for web dev', 'assets/uploads/32e45623d6e72c1e50830171f1c7148a9207a5b862.pdf', 'pdf', '2020-01-27 07:40:25');

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
(15, 13, NULL, 'What do you like', 'Cars', 'Bikes', 'Trains', NULL, NULL, NULL, NULL, NULL, '2019-03-25 06:22:17'),
(16, 16, NULL, 'what is system analysis all about?', 'gathering of information necessary to build a system', 'gathering info necessary for logical analysis', 'no idea', NULL, NULL, NULL, NULL, NULL, '2019-03-27 01:10:04'),
(17, 17, NULL, 'what do you understand by preprocessor directives?', 'a call to a library file that should processed as part of current program', 'call to library files for processing other programs', 'they are not compulsorily required', NULL, NULL, NULL, NULL, NULL, '2019-03-27 01:25:17'),
(18, 20, NULL, 'thrr', 'ty', 'cv', 'nn', NULL, NULL, NULL, NULL, NULL, '2019-03-30 15:14:20'),
(19, 21, NULL, 'Data structure and algorithm is a simply a study of ', 'data and different structure it can be in and how to easy retrieve it', 'data and structure', 'different structure of data and how they can be algorithmised', NULL, NULL, NULL, NULL, NULL, '2019-03-31 04:10:06'),
(20, 23, NULL, 'what is mis', 'Makenzie information system', 'management info sys', 'management information system', NULL, NULL, NULL, NULL, NULL, '2019-08-07 02:46:15'),
(21, 18, NULL, 'Is too much coffee bad?', 'Yes', 'Not sure', 'No', NULL, NULL, NULL, NULL, NULL, '2019-11-21 10:34:40'),
(22, 26, NULL, 'developing applications that run via a web browser is a field of', 'web development', 'mobile app development', 'desktop application development', NULL, NULL, NULL, NULL, NULL, '2020-01-27 07:22:49');

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
(10, 'Chibuzo', 'Nnonyelum', '08033223311', 'chibuzo@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-09 21:00:18', '2019-03-09 21:00:18'),
(11, 'henry', 'nnonyelu', '08039572630', 'nnonyeluhenry@gmail.com', 'd2db0e42222e34ec4fc30205b7adbfdc3e27bdb7', '', '2019-03-27 02:18:50', '2019-03-27 02:18:50'),
(12, 'maria', 'gorretti', '080395724316', 'maria@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-31 05:56:00', '2019-03-31 05:56:00'),
(13, 'ubani', 'joseph', '0897648131', 'ubani@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-31 05:56:54', '2019-03-31 05:56:54'),
(14, 'ama', 'chukwu', '08029541379', 'ama@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-31 05:57:28', '2019-03-31 05:57:28'),
(15, 'akeem', 'ojekunle', '0898452137', 'akeem@gmail.com', '6e2127971626d4dda64542119d6dbf88c6bbbcc6', '', '2019-03-31 05:58:12', '2019-03-31 05:58:12'),
(16, 'jennifer', 'ikeme', '08036451914', 'jennifer@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-31 05:59:34', '2019-03-31 05:59:34'),
(17, 'enoch', 'blesing', '08049431587', 'enoch@gmail.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-31 06:00:04', '2019-03-31 06:00:04'),
(18, 'Chimdalu', 'Okide', '080365889745', 'c.okide@yahoo.com', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', '', '2019-03-31 15:54:09', '2019-03-31 15:54:09'),
(19, 'Rechael', 'Isaac', '08184000315', 'rechywest02@gmail.com', '6f16c298dcf61a32d73303b17362226d709333e1', '', '2019-04-21 09:01:07', '2019-04-21 09:01:07'),
(20, 'ILYOUNG', 'PARK', '01099786690', 'piy10vg@hanmail.net', '84c2603141287f01cec1cc77aa367e66c68eafc2', '', '2019-05-08 01:41:03', '2019-05-08 01:41:03'),
(21, 'Hong', 'Nguyen ', '0375876374', 'nguyenhongn899@gmail.com', '9552f0ffd7fb4a0cc74e04302dba5a2e2ca86d66', '', '2019-05-09 09:56:17', '2019-05-09 09:56:17'),
(22, 'nnanna', 'unaka', '08054616764', 'nnanna@gmail.com', '5706882cd064c090619aefc5a066bd1604c2936b', '', '2019-08-07 05:01:15', '2019-08-07 05:01:15'),
(23, 'Sindhu', 'Reddy', '9908886400', 'vanaja03@gmail.com', '32d3a428757546860d3550d71004b9ee68e46753', '', '2019-08-07 16:48:23', '2019-08-07 16:48:23'),
(24, 'Lisa', 'Tran', '0905042133', 'tranthithanhtuyen7989@yahoo.com', '2c7bc5665e3482c031f9a928038b301e068e6413', '', '2019-09-18 15:00:40', '2019-09-18 15:00:40'),
(25, 'Natalia', 'Rojo', '3812030302', 'nat_guantayrojo@hotmail.com', '2cd0b97aadcb902d62aa7f3207561f55188a33fb', '', '2019-10-19 14:15:41', '2019-10-19 14:15:41'),
(26, 'Omar', 'Awaideh', '+962796922639', 'omar.awaideh93@hotmail.com', '6f2d2de0bfd1d6cf582d978b866150eeb9e6282f', '', '2019-11-10 21:21:31', '2019-11-10 21:21:31'),
(27, 'jaja', 'opobo', '08059808860', 'jaja@gmail.com', 'c2f8c214e63f972dd661a180365b606337b76d12', '', '2019-11-11 13:41:20', '2019-11-11 13:41:20'),
(28, 'john', 'james', '0805494643', 'johnjames@gmail.com', '31f51faebeaafcb546721a7bd012db57b5434992', '', '2019-11-12 16:48:40', '2019-11-12 16:48:40'),
(29, 'Emeka', 'Agwamba', '08063381844', 'emmyjimy@hotmail.com', '1a98b365ad02c25e339ed74ceff0c3df4fd4e629', '', '2019-11-22 06:13:43', '2019-11-22 06:13:43'),
(30, 'vu', 'nguyen', '0914797868', 'kidpan41@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2019-12-29 09:54:10', '2019-12-29 09:54:10'),
(31, 'PAYEL', 'BHUIYAN', '01404235444', 'payelbhuiyanpayel@gmail.com', '461e495908f53559cecd5b3465d9b7c05d27b170', '', '2020-01-17 07:03:12', '2020-01-17 07:03:12'),
(32, 'opara', 'camillus', '08069572630', 'oparac@gmail.com', '0ae120dc3184c3c00b5c97eefc226598ff236e1c', '', '2020-01-27 07:58:13', '2020-01-27 07:58:13'),
(33, 'joy', 'iroegbu', '08546312976', 'joyiroegbu@gmail.com', '7a4449ce3da2abdcfe4a7a2e4a14335463f788b9', '', '2020-01-27 08:42:35', '2020-01-27 08:42:35'),
(34, 'Nguy?n Ng?c', 'Ph??ng Linh ', '0867985881', 'nguyen.halasuco@gmail.com', 'd4391a1bafd1e538351b445066bf980086e9916b', '', '2020-02-08 15:07:26', '2020-02-08 15:07:26'),
(35, 'trongnhan', 'trongnhan', '0904032013', 'trongnhan@gmail.com', '949b7a8a2485b20aed77d64e65cea67c9ba63242', '', '2020-02-09 15:01:05', '2020-02-09 15:01:05'),
(36, 'V? Khánh Chi', 'V? Khánh Chi', '0965277256', 'chivk@thducthang.vn', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-10 02:47:56', '2020-02-10 02:47:56'),
(37, 'Quang Trung', 'Tran', '0979964896', 'anhbac1985@gmail.com', '63e94f384cd2742811376b434bee347cfea83a4b', '', '2020-02-10 14:18:39', '2020-02-10 14:18:39'),
(38, 'nguyen phuong', 'thanh', '0902079504', 'phuongthanh543@yahoo.com', '670436c7c6c0d00e53a0661299719d672c2303a9', '', '2020-02-10 14:20:25', '2020-02-10 14:20:25'),
(39, 'Bách', 'Ph?m th?', '0966147690', 'phamthibach83@gmail.com', '32f4cef26796c22e971b3d9ff257b6500d7bbe4a', '', '2020-02-10 17:15:16', '2020-02-10 17:15:16'),
(40, 'Huy', 'PhamDuc', '0966088055', 'Thoadthv34@gmail.com', '9d4793e7196719a26a9b2a9bcea45df55a0af440', '', '2020-02-11 04:50:48', '2020-02-11 04:50:48'),
(41, 'NHU QUYNH', 'NGUYEN LE', '0936918397', 'anhdao2807@gmail.com', '60f6f16cec77a1cd7379c1a3f68ffc7949f0d6c5', '', '2020-02-11 08:09:51', '2020-02-11 08:09:51'),
(42, 'Ph??ng', 'Chi', '+841689633450', 'nguyenthithudmx282@gmail.com', '5e996629c8148b803f117ba0f1b9747d6af110e2', '', '2020-02-11 09:13:37', '2020-02-11 09:13:37'),
(43, 'Ph??ng', 'Chi', '0932246757', 'yuno.yunta@gmail.com', 'b9b93d974a702f74c6cf94a657bd1a97d277617e', '', '2020-02-11 09:19:28', '2020-02-11 09:19:28'),
(44, 'Chi', 'Ph??ng', '0932246757', 'lthu3368@gmail.com', '23c7f015d75c734a530136eb4dfe83e5a44e74ce', '', '2020-02-11 09:31:02', '2020-02-11 09:31:02'),
(45, 'Hang nguyen thuy', 'Nguyenthuy', '+84386735996', 'nguyenvd@thuyphuong.vn', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-11 10:03:49', '2020-02-11 10:03:49'),
(46, 'V?', 'Th?y', '0975656400', 'vuthithuy1978hn@gmail.com', '6fa23d2bffd285f67967f1ff76c98d0e9663b173', '', '2020-02-11 10:22:41', '2020-02-11 10:22:41'),
(47, 'Nguy?n ', 'Minh Ph??ng', '0354977999', 'hangtien79@gmail.com', 'ba78a72e89271ef15a27bf1c18ff3ed50e3fb248', '', '2020-02-11 11:00:22', '2020-02-11 11:00:22'),
(48, 'Nguyen Duc', 'Anh', '0904551688', 'cuongnc81@gmail.com', 'b47e59925bca6339c0ba2957be1d3a12f0c62979', '', '2020-02-11 11:43:36', '2020-02-11 11:43:36'),
(49, 'Diep', 'Nguyen', '0902261262', 'nguyenvietphuong0912@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-11 13:24:35', '2020-02-11 13:24:35'),
(50, 'Bao', 'Trung', '0989104475', 'macthituyen82@gmail.com', '8b77a3669d8acc586eb8e94669525697fe5c1f63', '', '2020-02-11 14:14:49', '2020-02-11 14:14:49'),
(51, 'Bông', 'Nguy?n minh', '0987499739', 'hoa2a4@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-11 14:24:58', '2020-02-11 14:24:58'),
(52, 'Thutrang', 'Le', '0387074362', 'thutrangnpc@gmail.com', '87d47bdd5d708b511ec8103bf232d7e778b5e84c', '', '2020-02-11 14:29:16', '2020-02-11 14:29:16'),
(53, 'Diem', 'Nguyen', '0353153134', 'tuandiem409@gmail.com', '6f689186a13f593b37ce1f3198ac9c6eefecb1a8', '', '2020-02-11 14:59:26', '2020-02-11 14:59:26'),
(54, 'Tú', '?ào C?m', '0976220561', 'nhien1010@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-11 15:24:29', '2020-02-11 15:24:29'),
(55, 'dan', 'le', '+84936009284', 'danhieu84@gmail.com', 'dd2e91f561f490e29d29616e99d7b10b2d429f67', '', '2020-02-12 04:06:41', '2020-02-12 04:06:41'),
(56, 'nguy?n', 'c?nh d??ng', '0907673999', 'thuytrang06121984@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '', '2020-02-12 04:49:47', '2020-02-12 04:49:47'),
(57, 'Duy', 'Anh', '0708316980', 'duya9888@gmail.com', '7f03d800fe82d7ad275144510d7f407e6c817b93', '', '2020-02-12 13:05:26', '2020-02-12 13:05:26'),
(58, 'le ti?n dat', '1234560977919284', '0977919284', 'datduc201315@gmail.com', 'fbedca4071720a9229acfd3d6c0be0d35ae4c63a', '', '2020-02-12 14:30:23', '2020-02-12 14:30:23'),
(59, 'Khanh Linh', 'Hoang Nguyen', '0914388459', 'nguyenhuyentrang1408@gmail.com', '3c879fa2137bd926636d3ff93ce90196aff7483a', '', '2020-02-12 15:44:38', '2020-02-12 15:44:38'),
(60, 'Khanh', 'Linh', '3214456321', 'tepthoi123@gmail.com', '7fb3cc1e9261743394cd7dc8c298fd5d339f70b6', '', '2020-02-12 15:48:50', '2020-02-12 15:48:50'),
(61, 'Bao', 'Nguyen', '0972391201', 'linh.lucifer31@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', '', '2020-02-13 05:11:31', '2020-02-13 05:11:31'),
(62, 'vu', 'ngoc', '0385708056', 'vubongnga@gmail.com', '3d3dffe6b915dce71b44a2dc4a98f3cfd41d3f03', '', '2020-02-13 08:24:12', '2020-02-13 08:24:12'),
(63, 'ph??ng', 'th?o', '0942993518', 'thaosky05@gmail.com', 'eaec15b562a0a0ff49b7f9729b93524854af5622', '', '2020-02-14 14:35:25', '2020-02-14 14:35:25'),
(64, 'Anh Thu', 'Nguyen', '0976754226', 'at170113@gmail.com', 'a1a71fb4c59b1114eb9e5364621e1ac4105a6cca', '', '2020-02-17 13:18:47', '2020-02-17 13:18:47'),
(65, 'Nguy?n ', 'Th?y', '0347799561', 'bthuy2099@gmail.com', '60032456a64259357dc2cc40bc5caa14ea077b9a', '', '2020-02-18 03:58:57', '2020-02-18 03:58:57'),
(66, 'Th?', 'Nguy?n Minh', '0973028456', 'nguyenminhthu2018a@gmail.com', '49224cbb8961faced56065bca492e895415a1c51', '', '2020-02-19 01:39:13', '2020-02-19 01:39:13'),
(67, 'thu huyen', 'nguyen', '0388979239', 'thuhuyennguyen2310@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-19 04:20:44', '2020-02-19 04:20:44'),
(68, 'hà my', 'hà my', '0372571832', 'mybui15042008@gmail.com', 'a8601d123b8e32f86f5aa3bdce4eaa5341f250f5', '', '2020-02-19 05:25:41', '2020-02-19 05:25:41'),
(69, 'Nguy?n ', 'Anh Huy', '0866875412', 'huy0962537660@thcsxuandinh.vn', '4272097d95f31829b5240a9b667cd988d32205ac', '', '2020-02-19 10:25:24', '2020-02-19 10:25:24'),
(70, 'lê trung', 'kien', '0384312734', 'kien.giang17@gmail.com', '8faf1b43de9483185246e27df85579ec852451ab', '', '2020-02-19 13:29:09', '2020-02-19 13:29:09'),
(71, 'Lê Trung ', 'Kiên', '0384312734', 'giangle15042004@gmail.com', 'e5974aa7cad2825b6da8eaa79f30dc7c90f9bb54', '', '2020-02-19 13:51:26', '2020-02-19 13:51:26'),
(72, 'lê trung', 'kiên', '0384312734', 'trung.kien17@gmail.com', '22adf258d922724aca3c46d5e0bd1ce320b9e864', '', '2020-02-19 13:58:01', '2020-02-19 13:58:01'),
(73, 'hoàng anh', 'd??ng', '0868437865', 'phuonganh290411@gmail.com \n', 'b03c3d087e072df83c652078693da09a5b410d9a', '', '2020-02-19 14:22:08', '2020-02-19 14:22:08'),
(74, 'Dinh', 'Hanh', '0931882688', 'dinhhonghanh26981@gmail.com', '4fddefbfca464d359443315d7ba43eac9a81bec0', '', '2020-02-20 02:46:45', '2020-02-20 02:46:45'),
(75, 'Kh?i', 'Nguy?n ?ình', '0705625491', 'nguyendinhkhai0510@gmail.com', '8e86f4060270d49fad99b898ff7df159f3935d03', '', '2020-02-20 04:58:31', '2020-02-20 04:58:31'),
(76, 'Anh', 'Lê Ph??ng', '0338270120', 'anhle10112004@gmail.com', '1c1d2654b9791572392d48fe974ec2d028c444a9', '', '2020-02-20 12:24:32', '2020-02-20 12:24:32'),
(77, 'cát', 'Ph??c', '0984238998', 'quangdac2@gmai.com', '0202684c20ac9b6926bd8231f4a7e16bf1ceef60', '', '2020-02-20 12:44:03', '2020-02-20 12:44:03'),
(78, 'tây', 'ti?p', '0356485504', 'taytiep20@gmail.com', 'c8e2b64e8e18ea201b62240407184271b2320cc0', '', '2020-02-20 13:11:35', '2020-02-20 13:11:35'),
(79, 'L?i Th? Quang', 'L?i Th? Quang', '0966656956', 'quang123@gmai.com.vn', '87acec17cd9dcd20a716cc2cf67417b71c8a7016', '', '2020-02-20 13:13:47', '2020-02-20 13:13:47'),
(80, 'L?i', 'Th? Quang', '0966656956', 'quang2008@gmai.com.vn', '840553a06434a95539300e3f1b690de8989eede7', '', '2020-02-20 13:16:33', '2020-02-20 13:16:33'),
(81, 'Hà', 'Tr?n', '0389766017', 'ha2711683@gmail.com', 'f366b7ccf89e97f75ad8f5200c9fd034b086986e', '', '2020-02-20 16:28:43', '2020-02-20 16:28:43'),
(82, 'Ph?m', 'Linh', '0869280879', 'huyenlinhphamthi@gmail', '014ecdd986ebdf15604982fb2f1b525dcc16dcd5', '', '2020-02-21 01:59:18', '2020-02-21 01:59:18'),
(83, 'V?', 'D.Anh', '0369312616', 'dothixuyen82tb@gmail.com', '9d18ccaeb666069e52ed560fcfe10e8bcf92132a', '', '2020-02-21 12:27:03', '2020-02-21 12:27:03'),
(84, 'H?i', 'Ninh', '0379932469', 'laiphamhaininh@gmail.com', '22175fc754297a824d6cd8660bf73d7701339eb0', '', '2020-02-21 13:57:57', '2020-02-21 13:57:57'),
(85, 'Nhung', 'Nhung', '0923289189', 'buithihuyennhung6@gmail.com', '66fbef21cd33b99c9045fd3c1262a0c63288780b', '', '2020-02-21 14:44:48', '2020-02-21 14:44:48'),
(86, 'Ly', 'Nguy?n', '0865354904', 'camly020306@gmail.com', 'dd13e21ce9eb4b356acc73b166b5bdcfd230bb24', '', '2020-02-21 15:17:37', '2020-02-21 15:17:37'),
(87, 'Tu? Anh', 'Lê', '0964544693', 'lengocthuy1981vthp@gmail..com', '9ce3c7484df8b6acd00b35095345d0589d0be111', '', '2020-02-22 03:02:24', '2020-02-22 03:02:24'),
(88, 'Tue Anh', 'Le', '0964544693', 'lengocthuy1981@gmail.com', 'ebe612fc703f9d7ebc7dbbba3d16426211614f20', '', '2020-02-22 03:23:57', '2020-02-22 03:23:57'),
(89, 'Duy', '.', '0983802809', 'xuanducxn81@gmai.com', '24d687ecf2bd879ed4c5c1898286a04d3b7bfa79', '', '2020-02-22 08:46:27', '2020-02-22 08:46:27'),
(90, 'Duy', '?', '0983802809', 'nuocchan5oi@gmail.com', '920ca63cf65de49308e6f04c203e4ccafbf87f43', '', '2020-02-22 09:31:07', '2020-02-22 09:31:07'),
(91, 'a?inh', 'a?inh', '0987416692', 'phamthuongdinh@gmail.com', 'e8d33b702fc8c7feb309dd1d08654781c9c26d9c', '', '2020-02-22 09:41:41', '2020-02-22 09:41:41'),
(92, 'Ph?m Thiên Y? ', 'Ý', '0347151683', 'linhchuthithuy@7gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-02-22 10:33:48', '2020-02-22 10:33:48'),
(93, 'nguyen ngoc thanh Tung', 'Thanhtung', '0977841029', 'thanhtunghp@gmail.com', '9723a26a4dc053dc779f9a3583dc281c49b5a882', '', '2020-02-22 10:38:12', '2020-02-22 10:38:12'),
(94, 'Bich Ngoc', 'Vu Bich Ngoc', '0339447998', 'ngocchuoi2901@gmail.com', '3bf00d7d421fb4917b59d52638b918b948b2c463', '', '2020-02-22 10:47:13', '2020-02-22 10:47:13'),
(95, 'Ngô', 'Hà Linh ', '0977092108', 'ngoquanghanh1975@gmail.com', '564aad2d12308b49dcdf2224761a649bf6cae82c', '', '2020-02-22 10:53:14', '2020-02-22 10:53:14'),
(96, 'Nguy?n ?ình', 'H?i Bình ', '0944455199', 'binhhv2008@gmail.com', '0cd5f9e70751afc237f11fc4abf3b0a77338cad1', '', '2020-02-22 11:01:35', '2020-02-22 11:01:35'),
(97, 'Thanh', 'Tùng', '0977841029', 'nguyenlananh8083@gmail.com', '5c30fdb9a2daeb8a1985825f21656f27ba6d9e73', '', '2020-02-22 12:24:44', '2020-02-22 12:24:44'),
(98, 'Thanh', 'Tùng', '0977841029', 'nguyenlananh@gmail.com', '214226f3c8405b37a6ee56c93285d5614baeed12', '', '2020-02-22 12:52:07', '2020-02-22 12:52:07'),
(99, 'phien ', 'tran ', '0904974041', 'tranphien78hp@gmail.com', '33f67082b280b0afda74c19475beebcd2d198b72', '', '2020-02-22 13:32:12', '2020-02-22 13:32:12'),
(100, 'Bùi', 'Phuiwng', '0788285218', 'thaophuong12205@gmail.com', 'd9e72c5e2c8a82762b2dc2693637b37c6823235a', '', '2020-02-22 15:23:19', '2020-02-22 15:23:19'),
(101, 'Bùi', 'Th?o', '0788285218', '9b20162019@gmail.com', '2927674ee8d891acfc05aa51f0dd188824fb0f75', '', '2020-02-22 15:31:50', '2020-02-22 15:31:50'),
(102, 'Nguy?n C?nh', 'Duy', '037980084', 'vuthuhang1831985@gmail.com', '6f2ebc07d1bc5630d0c7505d5588ff45181de72e', '', '2020-02-24 13:35:34', '2020-02-24 13:35:34'),
(103, 'n?', 'nam', '0374109388', 'nguyenha143971@gmail.com', 'f2a7f069a92733b54886992a4f9d833337dfcaf2', '', '2020-02-24 14:33:06', '2020-02-24 14:33:06'),
(104, 'Janerke ', 'Tungyshbaeva', '+77757719104', 'janerke.t91@gmail.com', '515b1ce0c7cab9f755e8b8037de71588673806d2', '', '2020-02-25 16:50:53', '2020-02-25 16:50:53'),
(105, 'Trang', 'Bùi Thu', '0975450856', 'huongle14484@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', '2020-03-01 14:26:09', '2020-03-01 14:26:09'),
(106, 'Duong', 'Nguyen The', '0985750110', 'nmdang10@gmail.com', 'aa5422777db406a04be9ea01afa5a37b896da964', '', '2020-03-19 05:07:37', '2020-03-19 05:07:37'),
(107, 'Arize', 'Abraham ', '07062573851', 'arizennonyelu@gmail.com', '95f092f533c71628a3676f9641c8599e110c3aed', '', '2020-03-22 09:27:54', '2020-03-22 09:27:54'),
(108, 'Thúy', 'Nguy?n', '0983986450', 'trionline2000@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', '', '2020-03-24 08:36:40', '2020-03-24 08:36:40'),
(109, 'tu?n anh', 'v?', '0365596639', 'vuducquy2019@gmail.com', '55e86c7a1cdc12e4b8c6a55f2286b6b6fbdbb701', '', '2020-04-20 14:10:18', '2020-04-20 14:10:18');

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
(13, 10, 16, 1, '2019-03-27 02:08:04'),
(14, 11, 16, 0, '2019-03-27 02:19:51'),
(15, 11, 17, 1, '2019-03-27 02:21:50'),
(16, 10, 17, 1, '2019-03-27 02:36:36'),
(21, 9, 16, 0, '2019-03-30 14:30:20'),
(22, 10, 12, 1, '2019-03-30 14:36:39'),
(23, 9, 18, 1, '2019-03-30 14:48:18'),
(24, 10, 19, 1, '2019-03-30 15:27:23'),
(25, 10, 20, 1, '2019-03-30 15:28:15'),
(26, 11, 21, 1, '2019-03-31 06:04:15'),
(27, 12, 21, 1, '2019-03-31 06:13:44'),
(28, 13, 21, 1, '2019-03-31 06:14:24'),
(29, 10, 21, 1, '2019-03-31 06:16:01'),
(30, 11, 22, 1, '2019-05-02 04:39:13'),
(31, 11, 23, 1, '2019-08-07 04:38:49'),
(32, 22, 23, 1, '2019-08-07 05:01:50'),
(33, 25, 24, 1, '2019-10-19 14:17:42'),
(34, 32, 25, 1, '2020-01-27 07:59:39'),
(35, 32, 26, 1, '2020-01-27 08:00:32'),
(36, 32, 24, 0, '2020-01-27 08:31:49'),
(37, 32, 17, 0, '2020-01-27 08:32:13'),
(38, 32, 27, 1, '2020-01-27 08:34:05'),
(39, 33, 26, 0, '2020-01-27 08:43:37'),
(40, 46, 28, 1, '2020-02-11 10:26:25'),
(42, 88, 30, 1, '2020-02-22 09:15:26'),
(43, 89, 30, 0, '2020-02-22 09:17:33'),
(44, 90, 28, 0, '2020-02-22 09:31:29'),
(45, 90, 30, 0, '2020-02-22 09:31:38');

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
(4, 10, 'Ofoefule Christian just sent a request to join your course: system analysis and design.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-03-30 13:30:20', 1),
(5, 9, 'Nnonyelum Chibuzo just sent a request to join your course: Java 8.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-03-30 13:36:40', 1),
(6, 10, 'Your request to join Java 8 has been approved.\nThank you.', '2019-03-30 13:44:02', 1),
(7, 11, 'gorretti maria just sent a request to join your course: data structure and algorithm.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-03-31 04:13:44', 1),
(8, 11, 'joseph ubani just sent a request to join your course: data structure and algorithm.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-03-31 04:14:24', 1),
(9, 11, 'Nnonyelum Chibuzo just sent a request to join your course: data structure and algorithm.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-03-31 04:16:01', 1),
(10, 10, 'Your request to join data structure and algorithm has been approved by the admin.\nThank you.', '2019-03-31 04:18:12', 0),
(11, 13, 'Your request to join data structure and algorithm has been approved by the admin.\nThank you.', '2019-03-31 04:18:23', 0),
(12, 12, 'Your request to join data structure and algorithm has been approved by the admin.\nThank you.', '2019-03-31 04:18:41', 1),
(13, 11, 'unaka nnanna just sent a request to join your course: management information system.\n Please respond to his request by accepting or declining it.\nThank you.', '2019-08-07 03:01:50', 1),
(14, 22, 'Your request to join management information system has been approved by the admin.\nThank you.', '2019-08-07 03:13:58', 0),
(15, 25, 'camillus opara just sent a request to join your course: comisionado 1.\n Please respond to his request by accepting or declining it.\nThank you.', '2020-01-27 07:31:50', 0),
(16, 11, 'camillus opara just sent a request to join your course: system programming using c++.\n Please respond to his request by accepting or declining it.\nThank you.', '2020-01-27 07:32:15', 0),
(17, 32, 'iroegbu joy just sent a request to join your course: introduction to Web Development.\n Please respond to his request by accepting or declining it.\nThank you.', '2020-01-27 07:43:37', 1),
(18, 88, '. Duy just sent a request to join your course: https://edulive.net/learner/invitatic.\n Please respond to his request by accepting or declining it.\nThank you.', '2020-02-22 08:17:33', 0),
(19, 46, '? Duy just sent a request to join your course: Trpa@thuyphuong.vn.\n Please respond to his request by accepting or declining it.\nThank you.', '2020-02-22 08:31:29', 0),
(20, 88, '? Duy just sent a request to join your course: https://edulive.net/learner/invitatic.\n Please respond to his request by accepting or declining it.\nThank you.', '2020-02-22 08:31:38', 0);

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
(2, 10, 15, 'Trains', '2019-03-26 08:53:38'),
(3, 10, 16, 'gathering info necessary for logical analysis', '2019-03-27 01:37:57'),
(4, 11, 17, 'a call to a library file that should processed as part of current program', '2019-03-27 01:47:14'),
(5, 10, 18, 'ty', '2019-03-30 15:14:46'),
(6, 12, 19, 'data and different structure it can be in and how to easy retrieve it', '2019-03-31 04:19:51'),
(7, 22, 20, 'management information system', '2019-08-07 03:17:38'),
(8, 9, 21, 'Yes', '2019-11-21 10:35:07');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `courses_announcements`
--
ALTER TABLE `courses_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `courses_files`
--
ALTER TABLE `courses_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses_polls`
--
ALTER TABLE `courses_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `users_courses`
--
ALTER TABLE `users_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users_news`
--
ALTER TABLE `users_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_polls`
--
ALTER TABLE `users_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
