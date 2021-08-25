-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 07:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friends_zone`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(1, 3, 1, 'yes', 'sabbir_hossain_283776', '2020-12-22 16:32:04'),
(7, 3, 1, 'yah', 'sabbir_hossain_283776', '2020-12-24 15:44:21'),
(8, 3, 1, 'yah', 'sabbir_hossain_283776', '2020-12-24 15:44:28'),
(9, 3, 1, 'yah', 'sabbir_hossain_283776', '2020-12-24 15:44:39'),
(10, 5, 3, 'nice!', 'redowan_hossain_703644', '2021-01-04 17:15:47'),
(11, 9, 3, 'nice.', 'redowan_hossain_703644', '2021-01-28 15:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(3, 1, '				It,s Good Time......', '', '2020-12-18 06:16:06'),
(5, 3, 'Hello Everyone!!!', '', '2021-01-04 17:14:25'),
(6, 2, 'Me, Black!!', '', '2021-01-06 16:20:05'),
(7, 3, 'No', 'Tulips.jpg.56', '2021-01-16 16:29:03'),
(8, 3, 'hgfhfhfhfhf', '', '2021-01-16 16:29:38'),
(9, 3, 'Koala !!!', 'Koala.jpg.76', '2021-01-16 16:30:03'),
(10, 1, 'hello	', '', '2021-01-28 15:07:29'),
(11, 1, 'flower', 'Desert.jpg.95', '2021-01-28 15:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(1, 'Sabbir', 'Hossain', 'sabbir_hossain_283776', 'Welcome Friends Zone.', 'Single', '789456123', 'sabbir.bu.cse@gmail.com', 'Bangladesh', 'Male', '2020-11-01', '117893473_2029823720482578_6813864459916998960_n.jpg.99', 'Desert.jpg.12', '2020-11-11 12:19:44', 'verified', 'yes', 'iwanttorecover'),
(2, 'sabbir', 'hossain', 'sabbir_hossain_218224', 'Welcome Friends Zone.This is my default status!', '...', '789456123', 'sabbir01.bu.cse@gmail.com', 'Bangladesh', 'Male', '2020-11-01', 'black.png', 'default_cover.jpg', '2020-11-11 12:21:20', 'verified', 'yes', 'Iwantto recover.'),
(3, 'Redowan', 'Hossain', 'redowan_hossain_703644', 'Welcome Friends Zone.This is my default status!', '...', '789456123', 'redowan.bu.cse@gmail.com', 'Bangladesh', 'Male', '2020-12-08', 'Lighthouse.jpg.90', 'Penguins.jpg.99', '2020-12-08 17:10:51', 'verified', 'yes', 'Iwantto recover.'),
(4, 'Alom', 'Hossain', 'alom_hossain_392891', 'Welcome Friends Zone.This is my default status!', '...', '123456789', 'alom.bu.cse@gmail.com', 'Bangladesh', 'Male', '2021-01-28', 'black.png', 'default_cover.jpg', '2021-01-28 15:10:01', 'verified', 'yes', 'sabbir');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 2, 1, 'hello!!!', '2021-01-09 16:40:16', 'no'),
(2, 3, 1, 'hi', '2021-01-11 16:04:08', 'no'),
(3, 3, 1, 'hi', '2021-01-11 16:04:11', 'no'),
(4, 3, 1, 'hello', '2021-01-11 16:50:02', 'no'),
(5, 3, 2, 'hi', '2021-01-11 16:53:42', 'no'),
(6, 3, 2, 'hello', '2021-01-11 16:53:59', 'no'),
(7, 3, 2, 'you good!!!!!!!!', '2021-01-11 16:54:57', 'no'),
(8, 1, 2, 'good boy', '2021-01-11 16:56:07', 'no'),
(9, 3, 2, 'origin', '2021-01-11 16:57:48', 'no'),
(10, 2, 3, 'hi', '2021-01-11 17:00:45', 'no'),
(11, 1, 3, 'hhhhhhhhhhh', '2021-01-11 17:04:26', 'no'),
(12, 3, 3, 'hi', '2021-01-28 15:12:36', 'no'),
(13, 3, 3, 'hi', '2021-01-28 15:12:56', 'no'),
(14, 1, 3, 'good morning', '2021-02-14 06:10:00', 'no'),
(15, 1, 1, 'hi', '2021-02-14 06:15:05', 'no'),
(16, 1, 1, 'hi', '2021-02-14 06:15:06', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
