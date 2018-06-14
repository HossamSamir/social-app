-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2018 at 07:31 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `normalchat`
--

CREATE TABLE `normalchat` (
  `chat_id` int(255) NOT NULL,
  `user1_id` int(255) NOT NULL,
  `user2_id` int(255) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `normalchatreply`
--

CREATE TABLE `normalchatreply` (
  `n_chat_reply_id` int(255) NOT NULL,
  `chat_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `randomchat`
--

CREATE TABLE `randomchat` (
  `r_chat_online_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `randomchatconversation`
--

CREATE TABLE `randomchatconversation` (
  `r_chat_id` int(255) NOT NULL,
  `user1_id` int(255) NOT NULL,
  `user2_id` int(255) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `randomchatreply`
--

CREATE TABLE `randomchatreply` (
  `c_reply_id` int(255) NOT NULL,
  `r_chat_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roommessages`
--

CREATE TABLE `roommessages` (
  `room_messages_id` int(255) NOT NULL,
  `room_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roomusers`
--

CREATE TABLE `roomusers` (
  `room_users_id` int(255) NOT NULL,
  `room_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `age` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `normalchat`
--
ALTER TABLE `normalchat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `normalchatreply`
--
ALTER TABLE `normalchatreply`
  ADD PRIMARY KEY (`n_chat_reply_id`);

--
-- Indexes for table `randomchat`
--
ALTER TABLE `randomchat`
  ADD PRIMARY KEY (`r_chat_online_id`),
  ADD KEY `id` (`user_id`);

--
-- Indexes for table `randomchatconversation`
--
ALTER TABLE `randomchatconversation`
  ADD PRIMARY KEY (`r_chat_id`);

--
-- Indexes for table `randomchatreply`
--
ALTER TABLE `randomchatreply`
  ADD PRIMARY KEY (`c_reply_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `roommessages`
--
ALTER TABLE `roommessages`
  ADD PRIMARY KEY (`room_messages_id`);

--
-- Indexes for table `roomusers`
--
ALTER TABLE `roomusers`
  ADD PRIMARY KEY (`room_users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `normalchat`
--
ALTER TABLE `normalchat`
  MODIFY `chat_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `normalchatreply`
--
ALTER TABLE `normalchatreply`
  MODIFY `n_chat_reply_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `randomchat`
--
ALTER TABLE `randomchat`
  MODIFY `r_chat_online_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `randomchatconversation`
--
ALTER TABLE `randomchatconversation`
  MODIFY `r_chat_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `randomchatreply`
--
ALTER TABLE `randomchatreply`
  MODIFY `c_reply_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roommessages`
--
ALTER TABLE `roommessages`
  MODIFY `room_messages_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roomusers`
--
ALTER TABLE `roomusers`
  MODIFY `room_users_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
