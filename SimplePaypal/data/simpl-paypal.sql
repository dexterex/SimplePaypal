-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2013 at 11:25 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.23-1+sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii_paypal_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment_transaction`
--

CREATE TABLE IF NOT EXISTS `payment_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mc_gross` varchar(256) DEFAULT NULL,
  `payment_status` varchar(256) DEFAULT NULL,
  `payer_email` varchar(256) DEFAULT NULL,
  `verify_sign` varchar(256) DEFAULT NULL,
  `txn_id` varchar(256) DEFAULT NULL,
  `payment_type` varchar(256) DEFAULT NULL,
  `receiver_email` varchar(256) DEFAULT NULL,
  `txn_type` varchar(256) DEFAULT NULL,
  `item_name` varchar(256) DEFAULT NULL,
  `ipn_track_id` varchar(256) DEFAULT NULL,
  `created_at` varchar(128) DEFAULT NULL,
  `updated_at` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_setting`
--

CREATE TABLE IF NOT EXISTS `paypal_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_email` varchar(128) DEFAULT NULL,
  `sandbox` enum('0','1') DEFAULT '1',
  `return_url` varchar(256) DEFAULT NULL,
  `cancel_url` varchar(256) DEFAULT NULL,
  `notify_url` varchar(256) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `updated_at` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
