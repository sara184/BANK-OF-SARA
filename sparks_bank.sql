-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 03:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Padam Rai', 'Akash Rai', 480, '2021-02-13 18:07:13'),
(2, 'Parkash Rai', 'Preet Rathi', 640, '2021-02-14 20:44:53'),
(7, 'Parkash Rai', 'Rabia Ali', 455, '2021-02-15 07:34:22'),
(0, 'Parkash Rai', 'Akash Rai', 489, '2022-02-20 12:41:24'),
(0, 'Devika Rastogi', 'Meher Verma', 555, '2022-02-21 17:07:53'),
(0, 'Devika Rastogi', 'John Alferd', 545, '2022-02-21 17:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Devika Rastogi', 'devikarastogi@gmail.com', 47855),
(2, 'Dev Singh', 'dev78689@gmail.com', 35000),
(3, 'John Alferd', 'johnal4564@gmail.com', 41236),
(4, 'Meher Verma', 'meher8900@gmail.com', 49145),
(5, 'Kamya Singh', 'kamyasingh765@gmail.com', 40050),
(6, 'Mohd Saif', 'ms7777@gmail.com', 30555),
(7, 'Aditi Mishra', 'aditimishra890@gmail.com', 49877),
(8, 'Mahi Vij', 'mahivj4532@gmail.com', 36825),
(9, 'Abhinav Gupta', 'ag676575@gmail.com', 30000),
(10, 'Rohan Rajput', 'rr7868998@gmail.com', 50096);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
