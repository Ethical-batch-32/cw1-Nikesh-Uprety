-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 07:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile_image`
--

CREATE TABLE `profile_image` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile_image`
--

INSERT INTO `profile_image` (`id`, `name`, `image_name`, `created_at`) VALUES
(33, 'Sonu Nayak', 'sonu.jpg', '2022-12-27 04:35:21'),
(34, 'Anish Bhattarai', 'anish.jpg', '2022-12-27 04:39:25'),
(38, 'Nikesh Uprety', 'smallphoto.jpg', '2023-01-01 09:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_bio`
--

CREATE TABLE `user_bio` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `u.id` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_bio`
--

INSERT INTO `user_bio` (`id`, `name`, `bio`, `u.id`, `created_at`) VALUES
(27, 'Sonu Nayak', 'This is sonu.', 0, '2022-12-27 04:35:28'),
(29, 'Anish Bhattarai', 'anish', 0, '2022-12-27 05:16:59'),
(31, 'Nikesh Uprety', 'Hello my name is Nikesh uprety.', 0, '2022-12-27 19:42:30'),
(32, 'Nikesh Uprety', 'Hello this is a new bio.', 0, '2023-01-03 17:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `Id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`Id`, `name`, `title`, `content`, `images`, `created_at`, `uid`) VALUES
(38, 'Nikesh Uprety', 'Welcome to our blogging site! ', 'Welcome to our blogging site! Here, you\'ll find a community of writers and readers sharing their thoughts, ideas, and experiences through the power of the written word. Whether you\'re looking for personal musings, informative articles, or creative storyte', '3.jpg', '2022-12-30 17:04:38', 1),
(49, 'Nikesh Uprety', 'Welcome to our blogging site!', 'Welcome to our blogging site! Here, you\'ll find a community of writers and readers sharing their thoughts, ideas, and experiences through the power of the written word. Whether you\'re looking for personal musings, informative articles, or creative storyte', 'hyyy.jpg', '2022-12-30 17:04:44', 0),
(50, 'Sonu Nayak', 'Welcome to our blogging site! ', 'Welcome to our blogging site! Here, you\'ll find a community of writers and readers sharing their thoughts, ideas, and experiences through the power of the written word. Whether you\'re looking for personal musings, informative articles, or creative storyte', 'IMG_20221031_114825.jpg', '2022-12-30 17:04:51', 0),
(53, 'Nikesh Uprety', 'Hello this from the ipad ', 'Welcome to our blogging site! Here, you\'ll find a community of writers and readers sharing their thoughts, ideas, and experiences through the power of the written word. Whether you\'re looking for personal musings, informative articles, or creative storyte', '183F6952-6473-4FBD-A223-CAD463DCB901.jpeg', '2022-12-30 17:01:48', 0),
(56, 'Nikesh Uprety', 'THIS IS A NEW POST.', 'Welcome to our blogging site! Here, you\'ll find a community of writers and readers sharing their thoughts, ideas, and experiences through the power of the written word. Whether you\'re looking for personal musings, informative articles, or creative storyte', 'pemba.jpg', '2022-12-30 17:05:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `Id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`Id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Nikesh Uprety', 'upretynikesh123@gmail.com', '1234', 'user'),
(2, 'Pemba Sherpa', 'pemba@gmail.com', 'pemba', 'user'),
(3, 'Sonu Nayak', 'sonu@gmail.com', 'sonu', 'user'),
(4, 'Rahul Shah', 'rahul@gmail.com', 'rahul', 'user'),
(5, 'Nischal Raut', 'nishcal@gmail.com', 'nischal', 'user'),
(7, 'Anish Bhattarai', 'anish@gmail.com', 'anish', 'user'),
(8, 'niku', 'nikku@gmail.com', '1d5dc2e65f46ac1093552f1db336a984', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile_image`
--
ALTER TABLE `profile_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bio`
--
ALTER TABLE `user_bio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u.id` (`u.id`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile_image`
--
ALTER TABLE `profile_image`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_bio`
--
ALTER TABLE `user_bio`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
