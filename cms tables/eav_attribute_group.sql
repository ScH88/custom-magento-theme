-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 02:06 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magento`
--

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Default Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0),
(18, 9, 'Gift Options', 7, 0),
(19, 9, 'Design', 6, 0),
(20, 9, 'Recurring Profile', 5, 0),
(21, 9, 'Images', 4, 0),
(22, 9, 'Meta Information', 3, 0),
(23, 9, 'Prices', 2, 0),
(24, 9, 'General', 1, 1),
(25, 10, 'Gift Options', 7, 0),
(26, 10, 'Design', 6, 0),
(27, 10, 'Recurring Profile', 5, 0),
(28, 10, 'Images', 4, 0),
(29, 10, 'Meta Information', 3, 0),
(30, 10, 'Prices', 2, 0),
(31, 10, 'General', 1, 1),
(32, 11, 'Gift Options', 7, 0),
(33, 11, 'Design', 6, 0),
(34, 11, 'Recurring Profile', 5, 0),
(35, 11, 'Images', 4, 0),
(36, 11, 'Meta Information', 3, 0),
(37, 11, 'Prices', 2, 0),
(38, 11, 'General', 1, 1),
(39, 12, 'Gift Options', 7, 0),
(40, 12, 'Design', 6, 0),
(41, 12, 'Recurring Profile', 5, 0),
(42, 12, 'Images', 4, 0),
(43, 12, 'Meta Information', 3, 0),
(44, 12, 'Prices', 2, 0),
(45, 12, 'General', 1, 1),
(46, 13, 'Gift Options', 7, 0),
(47, 13, 'Design', 6, 0),
(48, 13, 'Recurring Profile', 5, 0),
(49, 13, 'Images', 4, 0),
(50, 13, 'Meta Information', 3, 0),
(51, 13, 'Prices', 2, 0),
(52, 13, 'General', 1, 1),
(53, 14, 'Gift Options', 7, 0),
(54, 14, 'Design', 6, 0),
(55, 14, 'Recurring Profile', 5, 0),
(56, 14, 'Images', 4, 0),
(57, 14, 'Meta Information', 3, 0),
(58, 14, 'Prices', 2, 0),
(59, 14, 'General', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`),
  ADD UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  ADD KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id', AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
