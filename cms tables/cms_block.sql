-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 01:55 AM
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
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href=\"{{store direct_url=\"about-us\"}}\">About Us</a></li>\r\n<li><a href=\"{{store direct_url=\"customer-service\"}}\">Customer Service</a></li>\r\n<li class=\"last privacy\"><a href=\"{{store direct_url=\"privacy-policy-cookie-restriction-mode\"}}\">Privacy Policy</a></li>\r\n</ul>', '2018-06-02 20:14:45', '2018-06-03 12:41:20', 1),
(2, 'Footer Links Company', 'footer_links_company', '<div class=\"links\">\r\n<div class=\"block-title\"><strong><span>Company</span></strong></div>\r\n<ul>\r\n<li><a href=\"{{store url=\"\"}}about-us/\">About Us</a></li>\r\n<li><a href=\"{{store url=\"\"}}contacts/\">Contact Us</a></li>\r\n<li><a href=\"{{store url=\"\"}}customer-service/\">Customer Service</a></li>\r\n<li><a href=\"{{store url=\"\"}}privacy-policy-cookie-restriction-mode/\">Privacy Policy</a></li>\r\n</ul>\r\n</div>', '2018-06-02 20:14:48', '2018-06-03 12:42:15', 1),
(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href=\"{{store direct_url=\"privacy-policy-cookie-restriction-mode\"}}\">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2018-06-02 20:14:51', '2018-06-02 20:14:51', 1),
(4, 'About Comp Trader', 'about_us', '<p><span style=\"font-size: 15px; color: #fff; font-family: arial; font-style:normal;\">Comp Trader is a fairly new company that was set up by a recent university graduate to make his services available to the public. We studied computer hardware and software for so long, we feel we are ready to set up a business providing a multitude of services. As a new business, we are also concerned with how we interact with our customers, so we work closely with our customers so that they are satisfied with us.</span></p>', '2018-06-03 22:06:11', '2018-06-15 20:32:56', 1),
(5, 'Home', 'home', '<div style=\"font-size: 15px; color: #fff; font-family: arial; font-style: normal;\">\r\n<p>Here at Comp Trader, we sell computers, parts and peripherals at affordable prices. All our wares are cleaned and kept safely for full functionality. If we happen to sell you a faulty product, or you wish to return, feel free to contact us.</p>\r\n<p>We also offer a range of services besides that. We can repair/assemble computers and build websites.</p>\r\n</div>', '2018-06-05 16:06:37', '2018-06-15 20:36:16', 1),
(6, 'Banner', 'head-banner', '<div style=\"max-width: 1260px; text-align: center; margin-left:auto; margin-right:auto;\"><a href=\"http://127.0.0.1:8080/magento/index.php/\"> <img alt=\"banner\" class=\"banner-img\" src=\"http://127.0.0.1:8080/magento/media/wysiwyg/WebsiteHeader.jpg\" style=\"width: 100%; height: 100%;\" /> </a></div>', '2018-06-05 17:25:47', '2018-06-14 20:35:54', 1),
(7, 'Footer', 'footer', '<div class=\"footer-container\">\r\n<div class=\"footer\">\r\n<div class=\"row\">\r\n<div class=\"col-md-2\"></div>\r\n<div class=\"col-md-6\">\r\n<div class=\"links\">\r\n<div class=\"block-title\"><strong><span>SITE MAP</span></strong></div>\r\n<ul>\r\n<li><a href=\"http://127.0.0.1:8080/magento/index.php/\">Home</a></li>\r\n<li><a href=\"http://127.0.0.1:8080/magento/index.php/about-us\">About Us</a></li>\r\n<li><a href=\"http://127.0.0.1:8080/magento/index.php/stock.html\">Stock</a></li>\r\n<li><a href=\"http://127.0.0.1:8080/magento/index.php/contacts\">Contact Us</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<address class=\"copyright\">Comp Trader &copy;2018. All Rights Reserved.</address></div>\r\n</div>', '2018-06-18 13:41:37', '2018-06-18 16:46:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
