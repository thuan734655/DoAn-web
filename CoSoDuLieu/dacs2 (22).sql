-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 01:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dacs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `idUser` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `infoDevice` text DEFAULT NULL,
  `last_active` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_update_last_active` tinyint(1) DEFAULT 1,
  `isActive` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`idUser`, `email`, `password`, `otp`, `infoDevice`, `last_active`, `is_update_last_active`, `isActive`) VALUES
(200, 'demoover81@gmail.com', '$2a$10$Rg.s9GhUpjSTEpBbKqvFtu1uPmTzhJS07LyIruooROLtOhtEoBwdm', 'NULL', 'c35bcea13b63a21689fcbbcb18308d96', '2024-11-14 17:57:48', 1, 1),
(210, 'phiha.23it@vku.udn.vn', '$2a$10$L.2uYKhSyEfCYenHmZ6rHOIOkU18Vba02ittP/yNzZ6EzjYJwgXbe', 'NULL', '277e006ace49933bb617e100dad8a34a', '2024-11-29 12:53:46', 1, 1),
(211, 'phiha.2113it@vku.udn.vn', '$2a$10$3h.fnmUbAbPq.Qh8Vx.1YOKMixBnLBkg4qA7GGDhAav/SuO.OZ6CC', 'NULL', '72576a0c1b091bd17bbd6150637cc93d', '2024-11-29 18:07:39', 1, 1),
(212, 'nn44611@gmail.com', '$2a$10$CAZHp/tgrc9WykH2ZSN9HO3XuxwC5diM0TJCtxUkvX/BPZPPIf6Zy', 'NULL', '277e006ace49933bb617e100dad8a34a', '2024-11-29 20:54:12', 1, 1),
(213, 'demoover8671@gmail.com', '$2a$10$fZO/dmQTMur0RumRzaN9hOMG7mlehvQ2n63mYFMRY6EGyoXntenC.', 'NULL', '277e006ace49933bb617e100dad8a34a', '2024-11-30 03:06:54', 1, 1),
(214, 'nanco432@gmail.com', '$2a$10$yPxzNRMxDLLi83OZwjKvm.racDdppDACkAiCZYIHiihAJS6MM.abK', 'NULL', 'e0410d51363e595ee75434e947157451', '2024-11-30 15:51:01', 1, 1),
(215, 'thaonguyenvsd@gmail.com', '$2a$10$bUYlwZJgZ2HK37MgdxI8TObiUgCIvJFER4/KyhMEcbL0lgU5JFzxK', 'NULL', 'd14bbd2adbd8acc1a2a9ef2d6c899e16', '2024-11-30 15:58:38', 1, 1),
(216, 'nn446111229@gmail.com', '$2a$10$c78Ufl24FaC24myFVDS9A.ZdLEVpmCgXtkEYzoTViRsBIocm8tylS', 'NULL', '72576a0c1b091bd17bbd6150637cc93d', '2024-11-30 16:52:04', 1, 1),
(217, 'nn446111230@gmail.com', '$2a$10$DUFAP8stU6u5Pj9LTMPXr.1xjsegYQyoS.PaClA/hjcqJjld6Rwvq', 'NULL', '72576a0c1b091bd17bbd6150637cc93d', '2024-11-30 18:06:23', 1, 1),
(220, 'nn4461119@gmail.com', '$2a$10$tKoPs5tAGnZT66ZIz9rXkeZgr928Ox7FD7SESqRrHnrW.dPmP1Tt.', 'NULL', 'c4b9637b7c6940749d800f7b4a390f0b', '2024-11-30 18:35:52', 1, 1),
(221, 'thaonguyenvsbsdd@gmail.com', '$2b$10$LmnMlhkZ0bLVziAaYnnRGOZpjzA5Hsgis.oVaNOfGYlibkZfLIxpa', 'NULL', 'e0410d51363e595ee75434e947157451', '2024-12-07 01:43:11', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `idUser` int(11) NOT NULL,
  `idFriend` int(11) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `isBlock` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`idUser`, `idFriend`, `relationship`, `isBlock`) VALUES
(200, 211, '', 0),
(200, 212, '', 0),
(200, 216, '', 0),
(200, 220, '', 0),
(211, 200, '', 0),
(212, 200, '', 0),
(212, 215, '', 0),
(214, 215, '', 0),
(215, 212, '', 0),
(215, 214, '', 0),
(215, 221, '', 0),
(216, 200, '', 0),
(220, 200, '', 0),
(221, 215, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `requester_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `status` enum('pending','accepted','declined','blocked') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `requester_id`, `receiver_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 200, 210, 'pending', '2024-11-29 17:58:18', '2024-11-29 17:58:18'),
(4, 211, 200, 'accepted', '2024-11-29 19:19:40', '2024-11-29 20:06:57'),
(6, 200, 212, 'accepted', '2024-11-29 21:14:49', '2024-11-30 03:07:24'),
(9, 214, 215, 'accepted', '2024-11-30 16:40:55', '2024-11-30 16:41:10'),
(10, 200, 214, 'pending', '2024-11-30 16:49:39', '2024-11-30 16:49:39'),
(11, 216, 200, 'accepted', '2024-11-30 16:52:44', '2024-11-30 16:53:08'),
(12, 220, 200, 'accepted', '2024-11-30 18:40:23', '2024-11-30 18:40:31'),
(67, 221, 215, 'accepted', '2024-12-08 19:40:48', '2024-12-08 19:42:46'),
(68, 215, 212, 'accepted', '2024-12-08 19:47:10', '2024-12-08 19:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `avatar` text NOT NULL DEFAULT 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined',
  `background` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `education` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `gender` enum('Male','Female','','') NOT NULL DEFAULT 'Male'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `fullName`, `nickname`, `birthday`, `avatar`, `background`, `location`, `introduction`, `education`, `create_at`, `gender`) VALUES
(200, 'ANH PHI', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', 'Gia Lai', 'Xin chào tất cả mọi người', 'Đại học công nghệ thôn tin', '2024-11-14 17:57:48', 'Male'),
(210, 'huyen hoang', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-29 12:53:46', 'Male'),
(211, 'vi ha', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-29 18:07:40', 'Male'),
(212, 'allalaa ha', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-29 20:54:12', 'Male'),
(213, 'lun ha', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-30 03:06:54', 'Male'),
(214, 'Vuong Ngoc Thuan', '', '2004-01-12', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-30 15:51:01', 'Male'),
(215, 'nguyen thao', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-30 15:58:38', 'Male'),
(216, 'anh lan', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-30 16:52:04', 'Male'),
(217, 'anh lan', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-30 18:06:23', 'Male'),
(220, 'huyen lan', '', '1999-05-18', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-11-30 18:35:52', 'Male'),
(221, 'ho hehe', '', '1980-01-01', 'https://api.dicebear.com/6.x/avataaars/svg?seed=undefined', '', '', '', '', '2024-12-07 01:43:11', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`idUser`,`idFriend`),
  ADD KEY `idFriend` (`idFriend`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requester_id` (`requester_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`idFriend`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`requester_id`) REFERENCES `user` (`idUser`) ON DELETE CASCADE,
  ADD CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`idUser`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
