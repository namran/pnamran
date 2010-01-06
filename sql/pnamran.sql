-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2010 at 01:27 AM
-- Server version: 5.0.87
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pnamran_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `image_name` text NOT NULL,
  `page_name` text NOT NULL,
  `image_id` int(11) NOT NULL,
  `img` longblob,
  KEY `image_id` (`image_id`),
  FULLTEXT KEY `image_name` (`image_name`),
  FULLTEXT KEY `page_name` (`page_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `last_updated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  KEY `id` (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `description`, `detail`, `last_updated`) VALUES
(1, 'home.html', 'This is a home', '<center>\r\n<p>\r\nWelcome to Project at namran.net.\r\n\r\n<i>\r\<br> this going to be interesting...\r\n</i>\r\n<br>\r\n<b>still on "Manual updating," hit F5! </b>\r\n<br>\r\n<p>\r\n\r\n<img src="/i/invitation_front1.jpg">\r\n</center></html>', '2010-01-06 20:33:05');


