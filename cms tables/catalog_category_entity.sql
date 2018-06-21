-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 02:02 AM
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
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2018-06-02 20:14:53', '2018-06-02 20:14:54', '1', 0, 0, 17),
(2, 3, 3, 1, '2018-06-02 20:15:01', '2018-06-11 21:29:21', '1/2', 1, 1, 16),
(6, 3, 3, 2, '2018-06-03 22:04:35', '2018-06-05 16:00:31', '1/2/6', 3, 2, 0),
(9, 3, 3, 2, '2018-06-04 20:21:30', '2018-06-04 20:43:00', '1/2/9', 2, 2, 13),
(12, 3, 3, 9, '2018-06-04 20:24:32', '2018-06-04 20:24:32', '1/2/9/12', 1, 3, 2),
(13, 3, 3, 9, '2018-06-04 20:26:18', '2018-06-04 20:26:28', '1/2/9/13', 2, 3, 2),
(14, 3, 3, 9, '2018-06-04 20:28:54', '2018-06-04 20:28:54', '1/2/9/14', 3, 3, 3),
(15, 3, 3, 9, '2018-06-04 20:30:25', '2018-06-04 20:30:25', '1/2/9/15', 4, 3, 2),
(16, 3, 3, 12, '2018-06-04 20:31:24', '2018-06-04 20:31:32', '1/2/9/12/16', 1, 4, 0),
(17, 3, 3, 12, '2018-06-04 20:33:09', '2018-06-04 20:33:09', '1/2/9/12/17', 2, 4, 0),
(18, 3, 3, 13, '2018-06-04 20:34:20', '2018-06-04 20:34:20', '1/2/9/13/18', 1, 4, 0),
(19, 3, 3, 13, '2018-06-04 20:36:41', '2018-06-04 20:36:41', '1/2/9/13/19', 2, 4, 0),
(20, 3, 3, 14, '2018-06-04 20:38:13', '2018-06-04 20:38:13', '1/2/9/14/20', 1, 4, 0),
(21, 3, 3, 14, '2018-06-04 20:39:58', '2018-06-04 20:39:58', '1/2/9/14/21', 2, 4, 0),
(22, 3, 3, 14, '2018-06-04 20:42:07', '2018-06-04 20:42:07', '1/2/9/14/22', 3, 4, 0),
(23, 3, 3, 15, '2018-06-04 20:45:15', '2018-06-04 20:45:15', '1/2/9/15/23', 1, 4, 0),
(24, 3, 3, 15, '2018-06-04 20:48:23', '2018-06-04 20:48:23', '1/2/9/15/24', 2, 4, 0),
(25, 3, 3, 2, '2018-06-05 16:07:53', '2018-06-05 16:33:41', '1/2/25', 1, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  ADD KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
