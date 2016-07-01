-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2016 at 10:38 AM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `petroquimica`
--

-- --------------------------------------------------------

--
-- Table structure for table `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idModulo` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  `alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `respuestas`
--

INSERT INTO `respuestas` (`id`, `idUsuario`, `idModulo`, `index`, `respuesta`, `alta`) VALUES
(1, 1, 1, 1, 1, '2014-04-25 16:14:28'),
(2, 1, 1, 2, 2, '2014-04-25 16:14:28'),
(3, 1, 1, 3, 2, '2014-04-25 16:14:28'),
(4, 1, 1, 4, 2, '2014-04-25 16:14:38'),
(5, 1, 1, 5, 2, '2014-04-25 16:14:38'),
(6, 1, 1, 6, 2, '2014-04-25 16:14:38'),
(7, 1, 1, 7, 1, '2014-04-25 16:14:46'),
(8, 1, 1, 8, 1, '2014-04-25 16:14:46'),
(9, 1, 1, 9, 2, '2014-04-25 16:14:46'),
(10, 1, 1, 10, 0, '2014-04-25 16:14:53'),
(11, 2, 1, 1, 1, '2014-04-25 16:14:28'),
(12, 2, 1, 2, 2, '2014-04-25 16:14:28'),
(13, 2, 1, 3, 0, '2014-04-25 16:14:28'),
(14, 2, 1, 4, 1, '2014-04-25 16:14:38'),
(15, 2, 1, 5, 2, '2014-04-25 16:14:38'),
(16, 2, 1, 6, 0, '2014-04-25 16:14:38'),
(17, 2, 1, 7, 1, '2014-04-25 16:14:46'),
(18, 2, 1, 8, 2, '2014-04-25 16:14:46'),
(19, 2, 1, 9, 0, '2014-04-25 16:14:46'),
(20, 2, 1, 10, 1, '2014-04-25 16:14:53'),
(21, 3, 1, 1, 1, '2016-07-01 12:42:03'),
(22, 3, 1, 2, 2, '2016-07-01 12:43:31'),
(23, 3, 1, 3, 2, '2016-07-01 12:43:42'),
(24, 3, 1, 4, 2, '2016-07-01 12:44:40'),
(25, 3, 1, 5, 2, '2016-07-01 12:44:40'),
(26, 3, 1, 6, 2, '2016-07-01 12:44:40'),
(27, 3, 1, 7, 1, '2016-07-01 12:44:40'),
(28, 3, 1, 8, 1, '2016-07-01 12:44:40'),
(29, 3, 1, 9, 2, '2016-07-01 12:44:40'),
(30, 3, 1, 10, 0, '2016-07-01 12:44:40'),
(32, 4, 1, 1, 1, '2016-07-01 12:46:48'),
(33, 4, 1, 2, 1, '2016-07-01 12:46:48'),
(34, 4, 1, 3, 1, '2016-07-01 12:46:48'),
(35, 4, 1, 4, 1, '2016-07-01 12:46:48'),
(36, 4, 1, 5, 1, '2016-07-01 12:46:48'),
(37, 4, 1, 6, 1, '2016-07-01 12:46:48'),
(38, 4, 1, 7, 1, '2016-07-01 12:46:48'),
(39, 4, 1, 8, 1, '2016-07-01 12:46:48'),
(40, 4, 1, 9, 1, '2016-07-01 12:46:48'),
(41, 4, 1, 10, 1, '2016-07-01 12:46:48');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
