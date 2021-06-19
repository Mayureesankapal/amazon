-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 01:19 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshoptodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `listtype` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL DEFAULT 'sj',
  `regdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `listtype`, `user`, `regdate`) VALUES
(1, 'Apple', 'fruit list', '28', '2021-05-13 14:55:30'),
(2, 'Orange', 'fruit list', '28', '2021-05-13 14:58:44'),
(3, 'Banana', 'fruit list', '28', '2021-05-13 15:00:48'),
(4, 'Apple pie', 'fruit list', '28', '2021-05-13 15:00:48'),
(5, 'Ajdkf', 'fruit list', '28', '2021-05-13 15:00:48'),
(6, 'Mapple', 'fruit list', '28', '2021-05-13 15:00:48'),
(10, 'bala', 'Colour List', '28', '2021-05-13 15:12:37'),
(11, 'kala', 'Wish List', '28', '2021-05-13 15:13:55'),
(22, 'adfdafsfe', 'Energy', '28', '2021-05-13 18:38:43'),
(24, 'Apple', 'Smartphone', '28', '2021-05-13 18:40:10'),
(25, 'Orange', 'Colour List', '28', '2021-05-13 19:45:02'),
(26, 'Samsung', 'Smartphone', '28', '2021-05-13 20:07:47'),
(27, 'Micromax', 'Smartphone', '28', '2021-05-13 20:10:36'),
(28, 'Energy 2', 'Energy', '28', '2021-05-13 20:14:12'),
(30, 'Energy 3', 'Energy', '28', '2021-05-13 20:20:44'),
(31, 'Energy 4', 'Energy', '28', '2021-05-13 20:21:15'),
(32, 'Jio', 'Smartphone', '28', '2021-05-13 20:21:37'),
(33, 'Wishlist 2', 'Wish List', '28', '2021-05-13 20:25:47'),
(35, 'Remote 2', 'Remote', '28', '2021-05-13 20:27:31'),
(36, 'Remote 3', 'Remote', '28', '2021-05-13 20:27:40'),
(37, 'Wishlist 3', 'Wish List', '28', '2021-05-13 20:56:10'),
(38, 'electro 1', 'Electronics', '28', '2021-05-13 20:58:18'),
(41, 'gadget 1', 'Gadget', '31', '2021-05-13 21:16:04'),
(42, 'Gadget 1', 'Gadget', '31', '2021-05-13 21:19:20'),
(43, 'Phone 1', 'Smartphone', '31', '2021-05-13 21:19:34'),
(45, 'Laptop', 'My New Collection', '28', '2021-05-16 16:13:33'),
(46, 'Smartphone', 'My New Collection', '28', '2021-05-16 16:13:41'),
(48, 'Laptop HP 007', 'MY WishLIst', '33', '2021-05-16 16:23:07'),
(49, 'Smartphone', 'MY WishLIst', '33', '2021-05-16 16:23:34'),
(51, 'Mango', 'Fruit List', '33', '2021-05-16 16:24:02'),
(52, 'Orange', 'Fruit List', '33', '2021-05-16 16:24:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
