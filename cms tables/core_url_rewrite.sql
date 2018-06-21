-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 02:05 AM
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
-- Table structure for table `core_url_rewrite`
--

CREATE TABLE `core_url_rewrite` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'Rewrite Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

--
-- Dumping data for table `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(5, 1, 'product/1', 'easynote-tk-laptop.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(8, 1, 'category/6', 'about-us.html', 'catalog/category/view/id/6', 1, 'RP', 'catalog/category/view/id/6', 6, NULL),
(65, 1, 'category/9', 'stock.html', 'catalog/category/view/id/9', 1, NULL, NULL, 9, NULL),
(73, 1, 'category/12', 'stock/computers.html', 'catalog/category/view/id/12', 1, NULL, NULL, 12, NULL),
(74, 1, 'category/13', 'stock/computer-parts.html', 'catalog/category/view/id/13', 1, NULL, NULL, 13, NULL),
(75, 1, 'category/14', 'stock/peripherals.html', 'catalog/category/view/id/14', 1, NULL, NULL, 14, NULL),
(76, 1, 'category/15', 'stock/software.html', 'catalog/category/view/id/15', 1, NULL, NULL, 15, NULL),
(77, 1, 'category/16', 'stock/computers/desktop.html', 'catalog/category/view/id/16', 1, NULL, NULL, 16, NULL),
(78, 1, 'category/17', 'stock/computers/laptops.html', 'catalog/category/view/id/17', 1, NULL, NULL, 17, NULL),
(79, 1, 'category/18', 'stock/computer-parts/cables.html', 'catalog/category/view/id/18', 1, NULL, NULL, 18, NULL),
(80, 1, 'category/19', 'stock/computer-parts/internals.html', 'catalog/category/view/id/19', 1, NULL, NULL, 19, NULL),
(81, 1, 'category/20', 'stock/peripherals/monitors.html', 'catalog/category/view/id/20', 1, NULL, NULL, 20, NULL),
(82, 1, 'category/21', 'stock/peripherals/keyboards.html', 'catalog/category/view/id/21', 1, NULL, NULL, 21, NULL),
(83, 1, 'category/22', 'stock/peripherals/external-storage.html', 'catalog/category/view/id/22', 1, NULL, NULL, 22, NULL),
(85, 1, '88970600_1528148581', 'store.html', 'stock.html', 0, 'RP', NULL, 9, NULL),
(87, 1, '92459300_1528148581', 'store/computers.html', 'stock/computers.html', 0, 'RP', NULL, 12, NULL),
(89, 1, '04780800_1528148582', 'store/computers/desktop.html', 'stock/computers/desktop.html', 0, 'RP', NULL, 16, NULL),
(91, 1, '05960000_1528148582', 'store/computers/laptops.html', 'stock/computers/laptops.html', 0, 'RP', NULL, 17, NULL),
(93, 1, '07066900_1528148582', 'store/computer-parts.html', 'stock/computer-parts.html', 0, 'RP', NULL, 13, NULL),
(95, 1, '07788900_1528148582', 'store/computer-parts/cables.html', 'stock/computer-parts/cables.html', 0, 'RP', NULL, 18, NULL),
(97, 1, '08499700_1528148582', 'store/computer-parts/internals.html', 'stock/computer-parts/internals.html', 0, 'RP', NULL, 19, NULL),
(99, 1, '09147000_1528148582', 'store/peripherals.html', 'stock/peripherals.html', 0, 'RP', NULL, 14, NULL),
(101, 1, '09803100_1528148582', 'store/peripherals/monitors.html', 'stock/peripherals/monitors.html', 0, 'RP', NULL, 20, NULL),
(103, 1, '10408400_1528148582', 'store/peripherals/keyboards.html', 'stock/peripherals/keyboards.html', 0, 'RP', NULL, 21, NULL),
(105, 1, '10965600_1528148582', 'store/peripherals/external-storage.html', 'stock/peripherals/external-storage.html', 0, 'RP', NULL, 22, NULL),
(107, 1, '11484300_1528148582', 'store/software.html', 'stock/software.html', 0, 'RP', NULL, 15, NULL),
(108, 1, 'category/23', 'stock/software/os.html', 'catalog/category/view/id/23', 1, NULL, NULL, 23, NULL),
(109, 1, 'category/24', 'stock/software/apps.html', 'catalog/category/view/id/24', 1, NULL, NULL, 24, NULL),
(110, 1, 'product/1/9', 'stock/easynote-tk-laptop.html', 'catalog/product/view/id/1/category/9', 1, NULL, NULL, 9, 1),
(111, 1, 'product/1/12', 'stock/computers/easynote-tk-laptop.html', 'catalog/product/view/id/1/category/12', 1, NULL, NULL, 12, 1),
(112, 1, 'product/1/17', 'stock/computers/laptops/easynote-tk-laptop.html', 'catalog/product/view/id/1/category/17', 1, NULL, NULL, 17, 1),
(114, 1, 'product/2/9', 'stock/dell-inspiron-desktop.html', 'catalog/product/view/id/2/category/9', 1, NULL, NULL, 9, 2),
(115, 1, 'product/2/12', 'stock/computers/dell-inspiron-desktop.html', 'catalog/product/view/id/2/category/12', 1, NULL, NULL, 12, 2),
(116, 1, 'product/2/16', 'stock/computers/desktop/dell-inspiron-desktop.html', 'catalog/product/view/id/2/category/16', 1, NULL, NULL, 16, 2),
(117, 1, 'product/2', 'dell-inspiron-desktop.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(118, 1, 'product/3/9', 'stock/4gb-ddr3-ram.html', 'catalog/product/view/id/3/category/9', 1, NULL, NULL, 9, 3),
(119, 1, 'product/3/13', 'stock/computer-parts/4gb-ddr3-ram.html', 'catalog/product/view/id/3/category/13', 1, NULL, NULL, 13, 3),
(120, 1, 'product/3/19', 'stock/computer-parts/internals/4gb-ddr3-ram.html', 'catalog/product/view/id/3/category/19', 1, NULL, NULL, 19, 3),
(121, 1, 'product/3', '4gb-ddr3-ram.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(122, 1, 'product/4/9', 'stock/internal-fan.html', 'catalog/product/view/id/4/category/9', 1, NULL, NULL, 9, 4),
(123, 1, 'product/4/13', 'stock/computer-parts/internal-fan.html', 'catalog/product/view/id/4/category/13', 1, NULL, NULL, 13, 4),
(124, 1, 'product/4/19', 'stock/computer-parts/internals/internal-fan.html', 'catalog/product/view/id/4/category/19', 1, NULL, NULL, 19, 4),
(125, 1, 'product/4', 'internal-fan.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(242, 1, 'product/5/9', 'stock/500gb-external-hard-drive.html', 'catalog/product/view/id/5/category/9', 1, NULL, NULL, 9, 5),
(243, 1, 'product/5/14', 'stock/peripherals/500gb-external-hard-drive.html', 'catalog/product/view/id/5/category/14', 1, NULL, NULL, 14, 5),
(244, 1, 'product/5/22', 'stock/peripherals/external-storage/500gb-external-hard-drive.html', 'catalog/product/view/id/5/category/22', 1, NULL, NULL, 22, 5),
(245, 1, 'product/5', '500gb-external-hard-drive.html', 'catalog/product/view/id/5', 1, NULL, NULL, NULL, 5),
(246, 1, 'product/6/9', 'stock/mac-keyboard.html', 'catalog/product/view/id/6/category/9', 1, NULL, NULL, 9, 6),
(247, 1, 'product/6/14', 'stock/peripherals/mac-keyboard.html', 'catalog/product/view/id/6/category/14', 1, NULL, NULL, 14, 6),
(248, 1, 'product/6/21', 'stock/peripherals/keyboards/mac-keyboard.html', 'catalog/product/view/id/6/category/21', 1, NULL, NULL, 21, 6),
(249, 1, 'product/6', 'mac-keyboard.html', 'catalog/product/view/id/6', 1, NULL, NULL, NULL, 6),
(250, 1, 'product/7/9', 'stock/12-4k-monitor.html', 'catalog/product/view/id/7/category/9', 1, NULL, NULL, 9, 7),
(251, 1, 'product/7/14', 'stock/peripherals/12-4k-monitor.html', 'catalog/product/view/id/7/category/14', 1, NULL, NULL, 14, 7),
(252, 1, 'product/7/20', 'stock/peripherals/monitors/12-4k-monitor.html', 'catalog/product/view/id/7/category/20', 1, NULL, NULL, 20, 7),
(253, 1, 'product/7', '12-4k-monitor.html', 'catalog/product/view/id/7', 1, NULL, NULL, NULL, 7),
(254, 1, 'product/8/9', 'stock/1m-usb-cable.html', 'catalog/product/view/id/8/category/9', 1, NULL, NULL, 9, 8),
(255, 1, 'product/8/13', 'stock/computer-parts/1m-usb-cable.html', 'catalog/product/view/id/8/category/13', 1, NULL, NULL, 13, 8),
(256, 1, 'product/8/18', 'stock/computer-parts/cables/1m-usb-cable.html', 'catalog/product/view/id/8/category/18', 1, NULL, NULL, 18, 8),
(257, 1, 'product/8', '1m-usb-cable.html', 'catalog/product/view/id/8', 1, NULL, NULL, NULL, 8),
(258, 1, 'product/9/9', 'stock/windows-10-installer-package.html', 'catalog/product/view/id/9/category/9', 1, NULL, NULL, 9, 9),
(259, 1, 'product/9/15', 'stock/software/windows-10-installer-package.html', 'catalog/product/view/id/9/category/15', 1, NULL, NULL, 15, 9),
(260, 1, 'product/9/23', 'stock/software/os/windows-10-installer-package.html', 'catalog/product/view/id/9/category/23', 1, NULL, NULL, 23, 9),
(261, 1, 'product/9', 'windows-10-installer-package.html', 'catalog/product/view/id/9', 1, NULL, NULL, NULL, 9),
(262, 1, 'category/25', 'home-page.html', 'catalog/category/view/id/25', 1, 'RP', 'catalog/category/view/id/25', 25, NULL),
(336, 1, 'homepage', 'catalog/category/view/id/25', '#', 0, 'RP', NULL, NULL, NULL),
(337, 1, 'aboutus', 'catalog/category/view/id/6', 'about-us', 0, 'RP', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD PRIMARY KEY (`url_rewrite_id`),
  ADD UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  ADD UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  ADD KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  ADD KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  ADD KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  ADD KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  ADD KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  MODIFY `url_rewrite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id', AUTO_INCREMENT=338;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
