-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 16, 2023 at 04:12 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genie_stock_picks`
--

-- --------------------------------------------------------

--
-- Table structure for table `stock_picks`
--

CREATE TABLE `stock_picks` (
  `ticker` varchar(10) NOT NULL,
  `result` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_picks`
--

INSERT INTO `stock_picks` (`ticker`, `result`, `date`) VALUES
('$ticker', '1', '2023-08-15 04:12:15'),
('reee', 'FALSE', '2023-08-15 04:25:33'),
('reee', 'FALSE', '2023-08-15 23:43:27'),
('reee', 'FALSE', '2023-08-15 23:43:30'),
('reee', 'FALSE', '2023-08-16 01:32:28'),
('reee', 'FALSE', '2023-08-16 01:33:28'),
('reee', 'FALSE', '2023-08-16 01:33:37'),
('fsa', 'FALSE', '2023-08-16 01:50:29'),
('fsa', 'FALSE', '2023-08-16 01:51:02'),
('fsa', 'FALSE', '2023-08-16 01:51:45'),
('fsa', 'FALSE', '2023-08-16 01:52:01'),
('fsa', 'FALSE', '2023-08-16 01:52:10'),
('fsa', 'FALSE', '2023-08-16 01:52:35'),
('fsa', 'FALSE', '2023-08-16 01:52:45'),
('fsa', 'FALSE', '2023-08-16 01:53:25'),
('fsa', 'FALSE', '2023-08-16 01:53:48'),
('fsa', 'FALSE', '2023-08-16 01:54:21'),
('fsa', 'FALSE', '2023-08-16 01:55:34'),
('fsa', 'FALSE', '2023-08-16 01:56:34'),
('fsa', 'FALSE', '2023-08-16 01:56:46'),
('fsa', 'FALSE', '2023-08-16 01:57:05'),
('fsa', 'FALSE', '2023-08-16 01:57:16'),
('fsa', 'FALSE', '2023-08-16 01:57:48'),
('fsa', 'FALSE', '2023-08-16 01:58:23'),
('fsa', 'FALSE', '2023-08-16 01:59:11'),
('fsa', 'FALSE', '2023-08-16 01:59:22'),
('fsa', 'FALSE', '2023-08-16 01:59:34'),
('fsa', 'FALSE', '2023-08-16 01:59:49'),
('fsa', 'FALSE', '2023-08-16 01:59:55'),
('fsa', 'FALSE', '2023-08-16 02:00:05'),
('fsa', 'FALSE', '2023-08-16 02:00:30'),
('fsa', 'FALSE', '2023-08-16 02:00:37'),
('fsa', 'FALSE', '2023-08-16 02:00:45'),
('fsa', 'FALSE', '2023-08-16 02:01:00'),
('fsa', 'FALSE', '2023-08-16 02:01:11'),
('fsa', 'FALSE', '2023-08-16 02:01:23'),
('memes', 'FALSE', '2023-08-16 02:01:33'),
('memes', 'FALSE', '2023-08-16 02:02:48'),
('memes', 'FALSE', '2023-08-16 02:03:17'),
('memes', 'FALSE', '2023-08-16 02:05:25'),
('memes', 'FALSE', '2023-08-16 02:06:18'),
('memes', 'FALSE', '2023-08-16 02:06:31'),
('memes', 'FALSE', '2023-08-16 02:07:42'),
('memes', 'FALSE', '2023-08-16 02:07:52'),
('memes', 'FALSE', '2023-08-16 02:08:17'),
('doge', 'FALSE', '2023-08-16 02:08:22'),
('doge', 'FALSE', '2023-08-16 02:08:59'),
('doge', 'FALSE', '2023-08-16 02:09:08'),
('doge', 'FALSE', '2023-08-16 02:09:23'),
('doge', 'FALSE', '2023-08-16 02:09:51'),
('genie', 'TRUE', '2023-08-16 02:10:01'),
('genie', 'TRUE', '2023-08-16 02:10:20'),
('genie', 'TRUE', '2023-08-16 02:10:54'),
('genie', 'TRUE', '2023-08-16 02:11:28'),
('genie', 'TRUE', '2023-08-16 02:11:37'),
('genie', 'TRUE', '2023-08-16 02:14:25'),
('genie', 'TRUE', '2023-08-16 02:15:02'),
('genie', 'TRUE', '2023-08-16 02:17:04'),
('genie', 'TRUE', '2023-08-16 02:17:06'),
('genie', 'TRUE', '2023-08-16 02:48:52'),
('reee', 'FALSE', '2023-08-16 02:52:35'),
('reee', 'FALSE', '2023-08-16 02:54:42'),
('reee', 'FALSE', '2023-08-16 02:55:23'),
('genie', 'TRUE', '2023-08-16 02:55:26'),
('gads', 'FALSE', '2023-08-16 15:23:11'),
('gads', 'FALSE', '2023-08-16 15:23:23'),
('gads', 'FALSE', '2023-08-16 15:23:25'),
('gads', 'FALSE', '2023-08-16 15:23:26'),
('gads', 'FALSE', '2023-08-16 15:23:45'),
('gads', 'FALSE', '2023-08-16 15:24:14'),
('gads', 'FALSE', '2023-08-16 15:24:19'),
('gads', 'FALSE', '2023-08-16 15:24:21'),
('gads', 'FALSE', '2023-08-16 15:24:25'),
('gads', 'FALSE', '2023-08-16 15:24:28'),
('gads', 'FALSE', '2023-08-16 15:24:45'),
('gads', 'FALSE', '2023-08-16 15:25:25'),
('gads', 'FALSE', '2023-08-16 15:25:49'),
('gads', 'FALSE', '2023-08-16 15:25:54'),
('gads', 'FALSE', '2023-08-16 15:25:57'),
('gads', 'FALSE', '2023-08-16 15:26:17'),
('gads', 'FALSE', '2023-08-16 15:26:32'),
('gads', 'FALSE', '2023-08-16 15:26:39'),
('genie', 'TRUE', '2023-08-16 15:26:48'),
('genie', 'TRUE', '2023-08-16 15:28:22'),
('genie', 'TRUE', '2023-08-16 15:28:48'),
('genie', 'TRUE', '2023-08-16 15:28:50'),
('BITCOIN', 'FALSE', '2023-08-16 15:52:48'),
('genie coin', 'FALSE', '2023-08-16 15:53:11'),
('genie coin', 'FALSE', '2023-08-16 15:53:23'),
('MSFT', 'FALSE', '2023-08-16 16:01:55'),
('fsa', 'FALSE', '2023-08-16 16:02:13'),
('BOO', 'FALSE', '2023-08-16 16:02:23'),
('BOO1', 'FALSE', '2023-08-16 16:02:28'),
('BOO12', 'FALSE', '2023-08-16 16:02:32'),
('BOO123', 'FALSE', '2023-08-16 16:02:38'),
('genie coin', 'FALSE', '2023-08-16 16:03:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
