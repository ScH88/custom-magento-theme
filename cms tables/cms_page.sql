-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 01:54 AM
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
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'three_columns', 'Page keywords', 'Page description', 'no-route', NULL, '<div class=\"page-title\">\r\n<h1>Whoops, our bad...</h1>\r\n</div>\r\n<dl><dt>The page you requested was not found, and we have a fine guess why.</dt><dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul>\r\n</dd></dl><dl><dt>What can you do?</dt><dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd><dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li>\r\n</ul>\r\n</dd></dl>', '2018-06-02 20:14:46', '2018-06-11 16:28:49', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'three_columns', NULL, NULL, 'home', NULL, '<div class=\"page-title\">\r\n<h2>Welcome To Comp Trader!</h2>\r\n</div>\r\n<p>Here at Comp Trader, we sell computers, parts and peripherals at affordable prices. All our wares are cleaned and kept safely for full functionality. If we happen to sell you a faulty product, or you wish to return, feel free to contact us.</p>\r\n<p>We also offer a range of services besides that. We can repair/assemble computers and build websites.</p>', '2018-06-02 20:14:46', '2018-06-11 16:26:57', 1, 0, '<!--<reference name=\"content\">\r\n        <block type=\"catalog/product_new\" name=\"home.catalog.product.new\" alias=\"product_new\" template=\"catalog/product/new.phtml\" after=\"cms_page\">\r\n            <action method=\"addPriceBlockType\">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type=\"reports/product_viewed\" name=\"home.reports.product.viewed\" alias=\"product_viewed\" template=\"reports/home_product_viewed.phtml\" after=\"product_new\">\r\n            <action method=\"addPriceBlockType\">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type=\"reports/product_compared\" name=\"home.reports.product.compared\" template=\"reports/home_product_compared.phtml\" after=\"product_viewed\">\r\n            <action method=\"addPriceBlockType\">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name=\"right\">\r\n        <action method=\"unsetChild\"><alias>right.reports.product.viewed</alias></action>\r\n        <action method=\"unsetChild\"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Comp Trader', 'three_columns', NULL, NULL, 'about-us', NULL, '<div class=\"page-title\">\r\n<h2 dir=\"rtl\" style=\"text-align: center;\">About Comp Trader</h2>\r\n</div>\r\n<p><span style=\"font-size: small; font-family: arial, helvetica, sans-serif;\">{{widget type=\"cms/widget_block\" template=\"cms/widget/static_block/default.phtml\" block_id=\"4\"}}</span></p>', '2018-06-02 20:14:47', '2018-06-15 20:15:44', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class=\"page-title\">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class=\"disc\">\r\n<li><a href=\"#answer1\">Shipping &amp; Delivery</a></li>\r\n<li><a href=\"#answer2\">Privacy &amp; Security</a></li>\r\n<li><a href=\"#answer3\">Returns &amp; Replacements</a></li>\r\n<li><a href=\"#answer4\">Ordering</a></li>\r\n<li><a href=\"#answer5\">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href=\"#answer6\">Viewing Orders</a></li>\r\n<li><a href=\"#answer7\">Updating Account Information</a></li>\r\n</ul>\r\n<dl><dt id=\"answer1\">Shipping &amp; Delivery</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id=\"answer2\">Privacy &amp; Security</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id=\"answer3\">Returns &amp; Replacements</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id=\"answer4\">Ordering</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id=\"answer5\">Payment, Pricing &amp; Promotions</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id=\"answer6\">Viewing Orders</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id=\"answer7\">Updating Account Information</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd></dl>', '2018-06-02 20:14:47', '2018-06-11 16:28:38', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'three_columns', NULL, NULL, 'enable-cookies', NULL, '<div class=\"std\">\r\n<ul class=\"messages\">\r\n<li class=\"notice-msg\">\r\n<ul>\r\n<li>Please enable cookies in your web browser to continue.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<div class=\"page-title\">\r\n<h1><a name=\"top\"></a>What are Cookies?</h1>\r\n</div>\r\n<p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n<h2 class=\"subtitle\">Enabling Cookies</h2>\r\n<ul class=\"disc\">\r\n<li><a href=\"#ie7\">Internet Explorer 7.x</a></li>\r\n<li><a href=\"#ie6\">Internet Explorer 6.x</a></li>\r\n<li><a href=\"#firefox\">Mozilla/Firefox</a></li>\r\n<li><a href=\"#opera\">Opera 7.x</a></li>\r\n</ul>\r\n<h3><a name=\"ie7\"></a>Internet Explorer 7.x</h3>\r\n<ol>\r\n<li>\r\n<p>Start Internet Explorer</p>\r\n</li>\r\n<li>\r\n<p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie7-1.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Click the <strong>Privacy</strong> tab</p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie7-2.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Click the <strong>Advanced</strong> button</p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie7-3.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie7-4.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Click <strong>OK</strong></p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie7-5.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Click <strong>OK</strong></p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie7-6.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Restart Internet Explore</p>\r\n</li>\r\n</ol>\r\n<p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\r\n<h3><a name=\"ie6\"></a>Internet Explorer 6.x</h3>\r\n<ol>\r\n<li>\r\n<p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie6-1.gif\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Click on the <strong>Privacy</strong> tab</p>\r\n</li>\r\n<li>\r\n<p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/ie6-2.gif\"}}\" /></p>\r\n</li>\r\n</ol>\r\n<p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\r\n<h3><a name=\"firefox\"></a>Mozilla/Firefox</h3>\r\n<ol>\r\n<li>\r\n<p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n</li>\r\n<li>\r\n<p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n</li>\r\n<li>\r\n<p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/firefox.png\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>Expand the <strong>Cookies</strong> section</p>\r\n</li>\r\n<li>\r\n<p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n</li>\r\n<li>\r\n<p>Save changes by clicking <strong>Ok</strong>.</p>\r\n</li>\r\n</ol>\r\n<p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\r\n<h3><a name=\"opera\"></a>Opera 7.x</h3>\r\n<ol>\r\n<li>\r\n<p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n</li>\r\n<li>\r\n<p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n</li>\r\n<li>\r\n<p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n<p><img alt=\"\" src=\"{{skin url=\"images/cookies/opera.png\"}}\" /></p>\r\n</li>\r\n<li>\r\n<p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the \"<strong>Normal cookies</strong>\" drop-down</p>\r\n</li>\r\n<li>\r\n<p>Save changes by clicking <strong>Ok</strong></p>\r\n</li>\r\n</ol>\r\n<p class=\"a-top\"><a href=\"#top\">Back to Top</a></p>\r\n</div>', '2018-06-02 20:14:47', '2018-06-11 16:29:15', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'three_columns', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style=\"color: #ff0000; font-weight: bold; font-size: 13px;\">Please replace this text with you Privacy Policy. Please add any additional cookies your website uses below (e.g., Google Analytics)</p>\r\n<p>This privacy policy sets out how {{config path=\"general/store_information/name\"}} uses and protects any information that you give {{config path=\"general/store_information/name\"}} when you use this website. {{config path=\"general/store_information/name\"}} is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement. {{config path=\"general/store_information/name\"}} may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes.</p>\r\n<h2>What we collect</h2>\r\n<p>We may collect the following information:</p>\r\n<ul>\r\n<li>name</li>\r\n<li>contact information including email address</li>\r\n<li>demographic information such as postcode, preferences and interests</li>\r\n<li>other information relevant to customer surveys and/or offers</li>\r\n</ul>\r\n<p>For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.</p>\r\n<h2>What we do with the information we gather</h2>\r\n<p>We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:</p>\r\n<ul>\r\n<li>Internal record keeping.</li>\r\n<li>We may use the information to improve our products and services.</li>\r\n<li>We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\r\n<li>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail. We may use the information to customise the website according to your interests.</li>\r\n</ul>\r\n<h2>Security</h2>\r\n<p>We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</p>\r\n<h2>How we use cookies</h2>\r\n<p>A cookie is a small file which asks permission to be placed on your computer\'s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</p>\r\n<p>We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</p>\r\n<p>Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us. You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</p>\r\n<h2>Links to other websites</h2>\r\n<p>Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</p>\r\n<h2>Controlling your personal information</h2>\r\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\r\n<ul>\r\n<li>whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes</li>\r\n<li>if you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at {{config path=\"trans_email/ident_general/email\"}}</li>\r\n</ul>\r\n<p>We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</p>\r\n<p>You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to {{config path=\"general/store_information/address\"}}.</p>\r\n<p>If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.</p>\r\n<h2><a name=\"list\"></a>List of cookies we collect</h2>\r\n<p>The table below lists the cookies we collect and what information they store.</p>\r\n<table class=\"data-table\">\r\n<thead>\r\n<tr><th>COOKIE name</th><th>COOKIE Description</th></tr>\r\n</thead>\r\n<tbody>\r\n<tr><th>CART</th>\r\n<td>The association with your shopping cart.</td>\r\n</tr>\r\n<tr><th>CATEGORY_INFO</th>\r\n<td>Stores the category info on the page, that allows to display pages more quickly.</td>\r\n</tr>\r\n<tr><th>COMPARE</th>\r\n<td>The items that you have in the Compare Products list.</td>\r\n</tr>\r\n<tr><th>CURRENCY</th>\r\n<td>Your preferred currency</td>\r\n</tr>\r\n<tr><th>CUSTOMER</th>\r\n<td>An encrypted version of your customer id with the store.</td>\r\n</tr>\r\n<tr><th>CUSTOMER_AUTH</th>\r\n<td>An indicator if you are currently logged into the store.</td>\r\n</tr>\r\n<tr><th>CUSTOMER_INFO</th>\r\n<td>An encrypted version of the customer group you belong to.</td>\r\n</tr>\r\n<tr><th>CUSTOMER_SEGMENT_IDS</th>\r\n<td>Stores the Customer Segment ID</td>\r\n</tr>\r\n<tr><th>EXTERNAL_NO_CACHE</th>\r\n<td>A flag, which indicates whether caching is disabled or not.</td>\r\n</tr>\r\n<tr><th>FRONTEND</th>\r\n<td>You sesssion ID on the server.</td>\r\n</tr>\r\n<tr><th>GUEST-VIEW</th>\r\n<td>Allows guests to edit their orders.</td>\r\n</tr>\r\n<tr><th>LAST_CATEGORY</th>\r\n<td>The last category you visited.</td>\r\n</tr>\r\n<tr><th>LAST_PRODUCT</th>\r\n<td>The most recent product you have viewed.</td>\r\n</tr>\r\n<tr><th>NEWMESSAGE</th>\r\n<td>Indicates whether a new message has been received.</td>\r\n</tr>\r\n<tr><th>NO_CACHE</th>\r\n<td>Indicates whether it is allowed to use cache.</td>\r\n</tr>\r\n<tr><th>PERSISTENT_SHOPPING_CART</th>\r\n<td>A link to information about your cart and viewing history if you have asked the site.</td>\r\n</tr>\r\n<tr><th>POLL</th>\r\n<td>The ID of any polls you have recently voted in.</td>\r\n</tr>\r\n<tr><th>POLLN</th>\r\n<td>Information on what polls you have voted on.</td>\r\n</tr>\r\n<tr><th>RECENTLYCOMPARED</th>\r\n<td>The items that you have recently compared.</td>\r\n</tr>\r\n<tr><th>STF</th>\r\n<td>Information on products you have emailed to friends.</td>\r\n</tr>\r\n<tr><th>STORE</th>\r\n<td>The store view or language you have selected.</td>\r\n</tr>\r\n<tr><th>USER_ALLOWED_SAVE_COOKIE</th>\r\n<td>Indicates whether a customer allowed to use cookies.</td>\r\n</tr>\r\n<tr><th>VIEWED_PRODUCT_IDS</th>\r\n<td>The products that you have recently viewed.</td>\r\n</tr>\r\n<tr><th>WISHLIST</th>\r\n<td>An encrypted list of products added to your Wishlist.</td>\r\n</tr>\r\n<tr><th>WISHLIST_CNT</th>\r\n<td>The number of items in your Wishlist.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '2018-06-02 20:14:49', '2018-06-11 16:29:59', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;